---
name: "road-condition-assessment"
description: "Use when assessing road pavement condition from survey data. Processes IRI (roughness), VCI (visual condition), and visual distress surveys to produce condition ratings and maintenance intervention triggers. Outputs feed into Skill #57 (Maintenance Planning) for treatment selection and Skill #59 (Prioritization Methods) for network-level ranking. Compose with Skill #25 (Pavement Rehabilitation) for overlay design based on condition data."
---

# Road Condition Assessment

> **Skill ID:** 56
> **Domain:** Asset Management
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Enable systematic road condition assessment using the International Roughness Index (IRI), Visual Condition Index (VCI), and visual distress surveys. This skill processes survey data -- whether from instrumented roughness profilers or manual walk-through inspections -- to produce condition ratings that drive maintenance decisions. The condition rating output is the primary input to the asset management chain: condition assessment (#56) feeds maintenance planning (#57), which feeds prioritization (#59).

## When to Use This Skill

- **Use when:** Assessing road pavement condition from survey data (visual distress records, IRI profiler output, or both). Producing condition ratings for maintenance planning. Network-level condition reporting. Classifying road sections by condition category.
- **Do not use when:** Designing pavement rehabilitation overlays (use Skill #25 -- this skill provides optional input to #25). Inspecting bridge structures (use Skill #41 -- separate inspection methodology). Performing deflection testing analysis (specialist structural evaluation).
- **Prerequisite skills:** None -- this is the entry point for the asset management chain. Skill #13 (Design Standards Selection) provides road class context if available.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**International Roughness Index (IRI):**
IRI is the standard roughness measure, expressed in m/km. It quantifies the accumulated vertical displacement experienced by a standard quarter-car model travelling at 80 km/h over a measured road profile. Lower IRI = smoother road. IRI is measured by laser profilers (Class 1), inertial profilers (Class 2), or response-type instruments calibrated against a reference (Class 3). IRI applies to both paved and gravel roads but with different threshold scales -- gravel roads are inherently rougher and use higher threshold values.

**Visual Condition Index (VCI):**
VCI is a percentage-based composite score (0-100) derived from visual distress surveys. Higher VCI = better condition. The surveyor records each distress type, its severity (Low/Medium/High), and its extent (percentage of sample area affected). Each distress-severity-extent combination produces a deduct value from a lookup table. VCI = 100 minus the sum of deduct values. VCI is the primary condition measure in East African road management practice where instrumented surveys are not always available.

**Pavement Condition Index (PCI):**
PCI follows ASTM D6433 methodology. Scale 0-100 (100 = perfect). Similar concept to VCI but with different distress catalogues and deduct value curves. PCI is the US/international standard; VCI is more common in East African practice. This skill uses VCI as the primary visual condition measure but the methodology is compatible with PCI where agencies use it.

**Visual Survey Methodology:**
Visual condition surveys use either walk-through or drive-through approaches. The surveyor inspects sample segments (typically 100m per km for network-level surveys, continuous for project-level) and records:
- **Distress type:** From the standard distress catalogue (cracking, deformation, surface defects)
- **Severity:** Low (L), Medium (M), or High (H) per defined criteria for each distress type
- **Extent:** Percentage of sample area affected (0-100%)
- **Equipment:** Survey forms, measuring wheel, straight-edge ruler (for rutting), camera. No specialist instruments required for visual surveys.

**Distress Types (Paved Roads):**

| Category | Distress Type | Description |
|----------|--------------|-------------|
| Cracking | Alligator/fatigue cracking | Interconnected crack pattern in wheel paths -- indicates structural failure |
| Cracking | Longitudinal cracking | Cracks parallel to road centreline -- may be reflective, construction joint, or structural |
| Cracking | Transverse cracking | Cracks perpendicular to centreline -- typically thermal or reflective |
| Deformation | Rutting | Permanent depression in wheel paths -- measured in mm depth |
| Deformation | Shoving/corrugation | Ripples or waves in surface -- common at intersections and steep grades |
| Surface defects | Ravelling | Loss of aggregate from surface -- progressive surface deterioration |
| Surface defects | Bleeding | Excess binder on surface -- slippery when wet |
| Surface defects | Potholes | Bowl-shaped holes in surface -- advanced stage of other distresses |
| Surface defects | Patching | Previous repairs -- indicates historical distress locations |

**Distress Types (Gravel Roads):**

| Category | Distress Type | Description |
|----------|--------------|-------------|
| Surface | Corrugation | Regular transverse ridges (washboarding) -- speed-dependent |
| Surface | Potholes | Bowl-shaped depressions -- from traffic and drainage |
| Surface | Erosion | Loss of surface material from water flow -- channels or sheet erosion |
| Shape | Gravel loss | Reduction in wearing course thickness over time |
| Shape | Loose material | Excessive loose gravel on surface |
| Drainage | Inadequate crossfall | Water ponding on surface -- poor shape maintenance |

**Instrumented Survey:**
- **Roughness profiler:** Laser or inertial profiler measures longitudinal profile and calculates IRI. Response-type devices (bump integrators) provide roughness values that must be calibrated to IRI using correlation equations.
- **Deflection:** Falling Weight Deflectometer (FWD) or Benkelman beam measures structural response. Not a condition index but informs rehabilitation decisions (feeds Skill #25).
- **Availability:** In Uganda, laser profilers are available for UNRA trunk road surveys. District roads often rely on visual surveys and response-type roughness devices only.

### 1.2 Universal Formulas

**VCI Calculation:**
```
VCI = 100 - Sum(Deduct_i)

Where:
  Deduct_i = f(distress_type_i, severity_i, extent_i)
  Deduct values are from lookup tables (see tables/vci_rating_scale.json)
  VCI is capped at 0 (minimum) and 100 (maximum)
```

**Overall Condition Rating:**
```
When both IRI and VCI are available:
  - Classify IRI into condition category (from tables/iri_thresholds.json)
  - Classify VCI into condition category:
      VCI >= 80: Good
      VCI 60-79: Fair
      VCI 40-59: Poor
      VCI < 40: Very Poor
  - Overall condition = WORSE of (IRI category, VCI category)
  - Rationale: conservative approach -- if roughness is Good but surface distress is Poor, the road is Poor

When only IRI available:
  - Overall condition = IRI category

When only VCI available:
  - Overall condition = VCI category
  - Flag: "IRI data not available -- condition based on visual survey only"
```

**Intervention Trigger Mapping:**
```
Good condition      --> Routine maintenance
Fair condition      --> Routine maintenance (may approach periodic trigger)
Poor condition      --> Periodic maintenance triggered
Very Poor condition --> Rehabilitation triggered
```

### 1.3 Figures & Diagrams

No figures required. The decision logic in Section 2.1 and the threshold tables in the JSON files encode the critical relationships. Distress type identification relies on textual descriptions and severity criteria rather than image recognition.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine survey data available
  |-- IRI data from profiler/response-type device --> Step 2 (IRI classification)
  |-- Visual distress survey data --> Step 3 (VCI calculation)
  +-- Both IRI and visual data --> Steps 2 AND 3, then Step 4 (combine)

Step 2: Classify IRI
  --> Load country module for IRI thresholds
  --> Identify road surface type (paved vs gravel -- different thresholds)
  --> Look up IRI value against thresholds (tables/iri_thresholds.json)
  --> Assign IRI condition category (Good/Fair/Poor/Very Poor)

Step 3: Calculate VCI
  --> For each distress recorded in survey data:
      (a) Identify distress type from standard catalogue
      (b) Confirm severity rating (L/M/H)
      (c) Confirm extent (% area)
      (d) Look up deduct value (tables/vci_rating_scale.json)
  --> Sum all deduct values
  --> VCI = 100 - Sum(deducts), capped at 0 minimum
  --> Assign VCI condition category

Step 4: Combine into overall condition
  --> If both IRI and VCI available: take the WORSE category
  --> If only one available: use that category with flag noting data gap
  --> Map condition category to intervention trigger

Step 5: Produce condition assessment output
  --> Condition rating per section
  --> Distress summary (types, severities, extents)
  --> Intervention trigger (routine/periodic/rehabilitation)
  --> Data quality flags (missing IRI, response-type not calibrated, etc.)
```

### 2.2 Professional Judgment (Universal)

**When IRI and VCI disagree, use the worse rating.** A road can be smooth (good IRI) but have severe surface distress (poor VCI) -- this means structural failure is developing but has not yet affected ride quality. Conversely, a rough road (poor IRI) with no visible cracking may have subgrade issues. The conservative approach captures both failure modes.

**Network-level vs project-level surveys differ in sampling intensity.** Network-level surveys sample 100m per km (10% coverage) to screen conditions across the entire network. Project-level surveys cover 100% of the road length for detailed rehabilitation design. Do not use network-level data for project-level rehabilitation design without noting the sampling limitation.

**Response-type roughness devices must be calibrated to IRI.** Bump integrators and similar devices produce roughness counts that are device-specific. Without calibration against a profiler on a reference section, these counts cannot be compared between devices or against IRI thresholds. Always ask whether the device has been calibrated.

**Seasonal timing affects results.** Gravel road condition changes significantly with seasons -- corrugation and potholes worsen in dry season (more traffic damage), while wet season brings erosion. Survey timing should be noted and considered when interpreting results.

### 2.3 Common Errors

1. **Using paved road IRI thresholds for gravel roads.** Gravel roads are inherently rougher. An IRI of 8 m/km is "Fair" for gravel but "Very Poor" for paved. Always check the surface type before applying thresholds.
2. **Recording severity without extent.** Severity alone (e.g., "high severity cracking") is insufficient for VCI calculation. Both severity and extent (% area) are required for deduct value lookup.
3. **Confusing PCI (ASTM, US) with VCI (East African practice).** Different distress catalogues and deduct value tables. Do not mix PCI deduct values with VCI methodology.
4. **Mixing response-type roughness with IRI without calibration.** A response-type roughness count (e.g., 150 counts/km) is NOT the same as IRI = 150 m/km. Calibration is required.
5. **Averaging condition across dissimilar sections.** A 10km road with 5km in Good condition and 5km in Very Poor condition is not "Fair" overall. Report condition per homogeneous section -- the Very Poor sections need rehabilitation regardless of the Good sections.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Survey type | Visual survey | Not specified | ASSUMED: Visual survey only (no IRI data). Condition based on VCI. | Visual survey is minimum standard |
| Road surface type | Paved | Not specified | ASSUMED: Paved road. If gravel, different IRI thresholds apply. | Paved is more common for national roads |
| Sample length | 100m per km | Network-level survey | ASSUMED: 100m sample segments per km (network-level). For project-level, use continuous survey. | Standard UNRA network survey practice |
| Severity scale | 3-level (L/M/H) | Always | Standard 3-level severity scale. | Universal practice |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state the survey type and data availability** explicitly in output. Never silently assume IRI data exists.
3. **Conservative direction:** When IRI and VCI disagree, use the worse rating.
4. **Flag data gaps:** Always note which condition parameters are missing and how this affects confidence.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| IRI | 0 | 30 | m/km | IRI > 20 m/km is extreme -- verify measurement. IRI < 0 is impossible. |
| VCI | 0 | 100 | % | VCI outside 0-100 range indicates calculation error. |
| Distress extent | 0 | 100 | % | Extent > 100% is impossible. |
| Rut depth | 0 | 100 | mm | Rut > 50mm is extreme -- verify measurement. |

### 4.2 Consistency Checks

- **IRI vs VCI agreement:** If IRI indicates Good but VCI indicates Very Poor (or vice versa), flag the discrepancy. Both ratings may be correct (different failure modes) but the discrepancy should be noted for investigation.
- **Distress vs surface type:** Alligator cracking on gravel roads is not standard -- verify distress identification. Corrugation on paved roads is unusual unless at intersections.
- **Survey date vs season:** Note whether the survey was conducted in wet or dry season and flag seasonal effects on gravel road condition.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific thresholds | SENIOR REVIEW -- No country module for [jurisdiction]. Using representative IRI thresholds. Verify applicability. |
| IRI > 16 m/km (paved) | Extreme roughness | SENIOR REVIEW -- IRI exceeds typical scale for paved roads. Verify measurement and consider whether road is serviceable. |
| VCI < 20 | Severely distressed | SENIOR REVIEW -- VCI below 20 indicates extreme distress. Rehabilitation likely required. Structural investigation recommended. |
| Survey data incomplete | Missing distress types or measurements | NOTE -- Survey data missing [parameter]. Condition rating may understate actual condition. |
| Response-type device not calibrated | IRI values unreliable | SENIOR REVIEW -- Roughness data from uncalibrated response-type device. IRI classification may be inaccurate. Calibration required. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| survey_data | object | -- | Yes | User/survey | Visual distress records (type, severity, extent) and/or IRI profiler output |
| road_surface_type | text | -- | Yes | User | Paved or gravel -- determines IRI threshold set |
| road_class | text | -- | Optional | Skill #13 | Road classification for context (national, district, etc.) |
| survey_type | text | -- | Recommended | User | Visual only, instrumented, or both |
| survey_date | date | -- | Recommended | User | For seasonal context |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| condition_rating | text | -- | Skill #57, Skill #59 | Good/Fair/Poor/Very Poor |
| IRI_value | number | m/km | Skill #57, Skill #25 | IRI measurement (if available) |
| VCI_score | number | 0-100 | Skill #57, Skill #25 | Visual Condition Index (if visual survey) |
| distress_summary | list | -- | Skill #57, Skill #25 | List of distress types with severity and extent |
| intervention_trigger | text | -- | Skill #57, Skill #59 | routine/periodic/rehabilitation |

**Output Consumer Notes:**
- **Skill #57 (Maintenance Planning):** Receives condition_rating and intervention_trigger to select appropriate maintenance treatment.
- **Skill #59 (Prioritization Methods):** Receives condition_rating for prioritization ranking across road sections.
- **Skill #25 (Pavement Rehabilitation):** Receives condition data as OPTIONAL input for rehabilitation design. Skill #25 is fully functional without Skill #56 -- it includes a simplified condition assessment in Section 2.1. Skill #56 provides more detailed condition data when available.
- **Skill #41 (Bridge Inspection & Condition):** Is fully independent of Skill #56. Skill #41 has its own inspection methodology. Both skills operate in the same domain (asset management) but address different infrastructure types (roads vs bridges).

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific IRI thresholds, VCI methodology, UNRA survey procedures | Markdown |
| `tables/iri_thresholds.json` | IRI condition categories for paved and gravel roads | JSON |
| `tables/vci_rating_scale.json` | VCI distress types, severity levels, deduct values | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the Uganda module for UNRA/MoWT projects. Load IRI thresholds and VCI deduct value tables.

### Step 2: Identify Available Data
Determine what survey data is available: visual distress records, IRI profiler data, or both. Note the survey type and date. If response-type roughness data is provided, check calibration status.

### Step 3: Process IRI Data (if available)
Read IRI values from profiler output. Identify road surface type (paved/gravel). Look up condition category from `tables/iri_thresholds.json`. If response-type data, apply calibration equation or flag as uncalibrated.

### Step 4: Calculate VCI (if visual survey available)
For each recorded distress: identify type, confirm severity (L/M/H), confirm extent (% area). Look up deduct value from `tables/vci_rating_scale.json`. Sum deduct values. Calculate VCI = 100 - Sum(deducts). Assign VCI condition category.

### Step 5: Determine Overall Condition Rating
If both IRI and VCI available: take the worse category (conservative approach). If only one available: use that category with data gap flag. Document the basis for the rating.

### Step 6: Map to Intervention Trigger
Map condition category to intervention trigger: Good/Fair = routine maintenance, Poor = periodic maintenance, Very Poor = rehabilitation. See country module for specific trigger levels.

### Step 7: Run Validation
Apply all checks from Section 4 (range checks, consistency checks). Apply country-specific checks from module Section M.5. Flag any anomalies.

### Step 8: Produce Output
Format per Section 8. Include condition rating, distress summary, intervention trigger, data quality flags, and any escalation flags.

---

## 8. Output Format

```
============================================================
ROAD CONDITION ASSESSMENT -- [Road Name / Section ID]
Country/Jurisdiction: [country]
Standard: [Survey methodology reference -- from country module]
Date: [YYYY-MM-DD]
============================================================

SURVEY DATA
-----------
Survey type: [Visual only / Instrumented / Both]
Survey date: [date]
Road surface: [Paved / Gravel]
Road class: [National / District / etc.]
Section length: [km]
Sample method: [100m/km network / continuous project-level]

IRI ASSESSMENT (if available)
-----------------------------
IRI value: [X.X m/km]
IRI condition: [Good / Fair / Poor / Very Poor]
Threshold reference: [from iri_thresholds.json]

VCI ASSESSMENT (if visual survey)
---------------------------------
Distress summary:
  [Distress type] | Severity: [L/M/H] | Extent: [X%] | Deduct: [X]
  [...]
Total deducts: [X]
VCI score: [X]
VCI condition: [Good / Fair / Poor / Very Poor]

OVERALL CONDITION
-----------------
Rating: [Good / Fair / Poor / Very Poor]
Basis: [IRI only / VCI only / Worse of IRI and VCI]
Intervention trigger: [Routine / Periodic / Rehabilitation]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Range checks and consistency checks -- PASS or FAIL]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[Standard and section references -- from country module]

============================================================
CONDITION ASSESSMENT -- FOR PROFESSIONAL REVIEW
This output is based on the survey data provided.
Professional review required before programming maintenance.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Deflection data analysis (FWD/Benkelman beam interpretation for structural capacity -- specialist evaluation). Automated distress detection from images. Pavement management system (PMS) database integration. Life-cycle cost modelling.
- **Simplifications:** VCI deduct values are representative rather than agency-calibrated. IRI thresholds are based on general East African practice -- individual agencies may use slightly different breakpoints. Response-type device calibration equations are not provided (agency-specific).
- **Country modules available:** Uganda
- **Country modules needed:** Kenya (KeNHA), Tanzania (TANROADS), Ethiopia (ERA)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with IRI/VCI methodology, 3-level severity, distress catalogue for paved and gravel roads, conservative rating approach. |
