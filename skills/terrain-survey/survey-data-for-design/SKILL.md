---
name: "survey-data-for-design"
description: "Use when assessing topographic survey data adequacy for road design, interpreting cross-sections and profiles, or specifying additional survey requirements. Benefits from Skill #11 (Terrain Classification) for context. Outputs feed into Skill #14 (Horizontal Alignment), Skill #15 (Vertical Alignment), and Skill #26 (Earthworks)."
---

# Survey Data for Design

> **Skill ID:** 12
> **Domain:** Terrain & Survey
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Interpret and assess topographic survey data for road design purposes -- evaluating survey adequacy, identifying data gaps, interpreting cross-sections and longitudinal profiles, and specifying additional survey requirements. This skill bridges the gap between raw survey data (from surveyors) and the geometric design process (Skills #14, #15, #26).

## When to Use This Skill

- **Use when:** Survey data has been received for a road project and needs to be assessed for adequacy and interpreted for design. Also when specifying survey requirements for a new project at a given design stage.
- **Do not use when:** The question is about terrain classification (use Skill #11) or about the geometric design itself (use Skills #14, #15, #17).
- **Prerequisite skills:** Skill #11 (Terrain Classification) is helpful for context but not required. This skill can be applied independently.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Survey data types for road design:**

- **Topographic survey (plan):** Horizontal positions of features (road edges, buildings, utilities, drainage, vegetation, fences) relative to a coordinate system. Provides the plan view for horizontal alignment design.
- **Cross-section survey:** Ground levels measured perpendicular to the centreline at regular chainage intervals. Typically extends 20-50 m either side of centreline depending on the design class and terrain. Cross-sections are essential for earthworks calculation and cross-section design.
- **Longitudinal profile (ground profile):** Ground levels along the centreline at regular intervals. Provides the vertical profile for vertical alignment design.
- **DTM/DEM (Digital Terrain Model / Digital Elevation Model):** A mathematical representation of the ground surface as a grid or triangulated irregular network (TIN). Enables extraction of cross-sections and profiles at any location, contour generation, and earthworks calculation. DTMs are the preferred data format for modern road design software.
- **Feature survey (detail survey):** Location and description of all features within the survey corridor -- buildings, utilities (overhead and underground), trees, boundary markers, drainage structures, existing pavement edges and levels.

**Survey methods:**

- **Total station:** Electronic distance and angle measurement. High accuracy (typically +/- 5mm + 2ppm). Standard method for detail survey and cross-sections. Requires line of sight to target.
- **GPS/GNSS:** Satellite positioning. RTK (Real-Time Kinematic) gives centimetre-level accuracy suitable for design survey. Static GPS gives millimetre accuracy for control networks. Does not require line of sight between stations but needs satellite visibility (problematic under dense canopy or in deep valleys).
- **Photogrammetry:** Aerial photography with stereo processing to extract ground levels and features. Cost-effective for large areas. Accuracy depends on flying height and ground control. Limited by vegetation cover -- cannot "see through" trees.
- **LiDAR (Light Detection and Ranging):** Airborne or terrestrial laser scanning. Produces dense point clouds. Can penetrate vegetation canopy to reach ground surface. High accuracy and rapid coverage. Increasingly used for road design surveys.
- **Drone/UAV survey:** Low-altitude photogrammetry or LiDAR from unmanned aerial vehicles. Cost-effective for short corridors (5-20 km). Accuracy comparable to traditional methods with good ground control.

**Key survey parameters:**

- **Centreline definition:** The reference line along which chainages are measured. For existing roads, typically the road centreline; for new roads, a preliminary alignment.
- **Chainage system:** Distance measured along the centreline from a defined origin (km 0+000). Cross-sections are referenced to chainage.
- **Benchmarks:** Fixed reference points with known elevation (height above datum). Used to control vertical accuracy of the survey. Should be established at regular intervals (typically max 700 m apart) and at all major structures.
- **Coordinate system and datum:** The reference framework for horizontal and vertical positions. Must be consistent across all survey data for a project.

**Survey requirements by project stage:**

| Stage | Survey Type | Cross-Section Interval | Width | Accuracy |
|-------|------------|----------------------|-------|----------|
| Feasibility | Reconnaissance + contour maps | -- | -- | Approximate |
| Preliminary design | Ground survey or photogrammetry | 50-100 m | 20-30 m each side | +/- 50 mm vertical |
| Detailed design | Full topographic survey with DTM | 20-25 m (straight), 10 m (curves) | 30-50 m each side | +/- 25 mm vertical |

### 1.2 Universal Formulas

**Cross-section area calculation (average end area method):**

```
Volume = (A1 + A2) / 2 x L
```

Where:
- A1, A2 = cross-sectional areas at adjacent chainages (m2)
- L = distance between cross-sections (m)
- Volume = earthworks volume between sections (m3)

This formula is used by Skill #26 (Earthworks) but the survey data quality (cross-section interval and width) directly determines the accuracy of this calculation. Closer cross-section intervals produce more accurate earthworks estimates.

**Benchmark levelling check:**

```
Misclosure = Sum of rises - Sum of falls - (Final BM elevation - Starting BM elevation)
Allowable misclosure = k x sqrt(n)
```

Where:
- k = constant (typically 12 mm for third-order levelling)
- n = number of instrument setups or distance in km

### 1.3 Figures & Diagrams

**Typical cross-section plot:** Shows the ground profile perpendicular to the centreline at a given chainage. Features plotted include: natural ground level (existing terrain), existing road surface (if upgrade project), existing drainage features (ditches, culverts), buildings and utility locations. The horizontal axis shows offset from centreline (left and right), and the vertical axis shows elevation. The proposed road cross-section (carriageway, shoulders, side slopes, drains) is typically overlaid on this plot during design.

**Longitudinal profile:** Shows ground level along the centreline plotted against chainage. The horizontal axis is chainage (distance along route) and the vertical axis is elevation. The proposed vertical alignment (grade line) is overlaid during design. Critical features (bridges, junctions, rivers) are marked at their chainages.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module from modules/
  -> If no module exists, flag and use closest available

Step 2: Determine project stage
  |- Feasibility -> reconnaissance-level data needed
  |- Preliminary design -> ground survey at 50-100 m intervals
  |- Detailed design -> full topographic survey at 20-25 m intervals
  \- If not specified -> Ask user or default to preliminary

Step 3: Assess available survey data
  |- What survey method was used? (total station, GPS, photogrammetry, LiDAR)
  |- What coordinate system and datum?
  |- What is the cross-section interval?
  |- What is the survey corridor width?
  |- Are benchmarks established?
  |- What features were surveyed?
  \- Is the data provided as raw coordinates, CAD, or DTM?

Step 4: Evaluate survey adequacy
  |- Compare available data against requirements for the project stage
  |    (see Section 1.1 table and country module Section M.2)
  |- Check: Is cross-section interval adequate?
  |- Check: Is corridor width sufficient for the design class?
  |- Check: Are benchmarks established at required intervals?
  |- Check: Are all features within the corridor surveyed?
  |- Check: Is datum/coordinate system consistent and documented?
  \- Check: Are critical locations adequately surveyed?
       (bridges, junctions, river crossings, steep terrain)

Step 5: Identify data gaps
  |- List any missing data that would be needed for the project stage
  |- Prioritize: critical gaps (prevent design) vs. desirable gaps (limit accuracy)
  \- Specify additional survey requirements if needed

Step 6: Interpret survey data for design
  |- From cross-sections: identify existing features, ground slopes, drainage
  |- From longitudinal profile: identify high/low points, gradient changes
  |- From DTM: assess terrain, identify constraints, preliminary earthworks
  |- From feature survey: identify utilities, buildings, environmental constraints
  \- From terrain class (Skill #11): contextualize survey data interpretation

Step 7: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Survey data quality affects design quality.** An excellent design based on poor survey data is worse than a competent design based on good survey data. The engineer should always assess data quality before proceeding with design and flag any concerns.

**Cross-section interval is the single most important adequacy parameter.** For earthworks calculation, the interval directly affects volume accuracy. For vertical alignment design, missing cross-sections at key features (bridges, streams, ridges) can lead to costly redesign.

**Additional survey is almost always needed at structures.** Bridge sites, culvert locations, junction areas, and river crossings need closer cross-section intervals (5-10 m) and wider corridors than standard sections. If these are missing, flag as a critical gap.

**Datum consistency is a common source of errors.** When survey data comes from multiple sources or campaigns, verify that the same coordinate system and vertical datum are used. Datum mismatches can cause level differences of metres -- which is catastrophic for design.

**Vegetation affects survey method selection.** In heavily vegetated areas (common in tropical countries), aerial methods (photogrammetry, drone) may not reach the ground surface. Ground survey or LiDAR (which can penetrate canopy) may be necessary.

### 2.3 Common Errors

1. **Proceeding to detailed design with preliminary-level survey data.** Survey at 100 m intervals is inadequate for detailed design -- it misses critical features between cross-sections.
2. **Not checking datum consistency.** Combining GPS survey data (WGS 84) with total station data (local datum) without transformation produces level errors.
3. **Insufficient corridor width.** Survey extending only 10 m from centreline is inadequate if the design requires 20 m side slopes in mountainous terrain.
4. **Missing survey at critical locations.** No cross-sections at a bridge site means the bridge design cannot proceed and the vertical alignment through the structure cannot be finalized.
5. **Assuming DTM accuracy equals survey accuracy.** A DTM interpolates between measured points -- accuracy between points depends on terrain regularity and point density.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Project stage | Preliminary design | Not specified | ASSUMED: Preliminary design stage (confirm with client -- survey requirements differ by stage) | Most common stage when survey assessment is needed |
| Cross-section interval (preliminary) | 50 m | Not specified | ASSUMED: 50 m cross-section interval for preliminary design | Mid-range value; verify against country module |
| Survey corridor width | 30 m each side | Not specified | ASSUMED: 30 m survey corridor width each side of centreline (verify against design class and terrain) | Adequate for most design classes in moderate terrain |

### Default Behaviour Rules

1. **Country module defaults take precedence** over these universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** When survey requirements are uncertain, specify wider corridor and closer intervals (more data is always better than less).
4. **Flag for investigation:** Every assumed parameter includes a recommendation for confirming with the project brief or client.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Cross-section interval (detailed) | 5 | 50 | m | Warn if > 25 m for detailed design |
| Cross-section interval (preliminary) | 25 | 200 | m | Warn if > 100 m for preliminary design |
| Survey corridor width | 10 | 100 | m | Warn if < 20 m each side (may be insufficient for cut/fill slopes) |
| Benchmark interval | 50 | 1000 | m | Warn if > 700 m (per MoWT Section 3.1.4) |

### 4.2 Consistency Checks

- **Datum consistency:** Verify all survey data uses the same coordinate system and vertical datum. Flag if multiple datums detected.
- **Level closure:** If benchmark levelling data is available, check misclosure is within allowable limits.
- **Feature completeness:** Cross-check the feature list against typical requirements for the design class (e.g., if road design class requires NMT provision, were footpath widths surveyed?).
- **Cross-section coverage:** Verify cross-sections cover the full required width, particularly in cut/fill areas where side slopes extend beyond the standard corridor.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.4 (if present) in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific survey requirements | SENIOR REVIEW -- No country module for [jurisdiction]. Using universal survey requirements. Verify against local standards. |
| Survey data inadequate for project stage | Design cannot proceed reliably | SENIOR REVIEW -- Survey data is [preliminary/reconnaissance] level but project is at [detailed design] stage. Additional survey required before proceeding. |
| Datum mismatch detected | Level errors will cascade through design | SENIOR REVIEW -- Survey data uses inconsistent datums. Coordinate transformation required before use in design. |
| No survey at bridge/structure locations | Structure design blocked | SENIOR REVIEW -- No survey data at bridge/culvert locations. Additional survey required at [list locations]. |
| Survey corridor too narrow | Cut/fill slopes may extend beyond surveyed area | NOTE -- Survey corridor width [X] m may be insufficient for design class [Y] in [terrain] terrain. Verify corridor extends beyond expected side slopes. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible.
- **Country module escalations** are merged with universal escalations in output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Road name/project | text | -- | Yes | User | Project identification |
| Project stage | category | -- | Yes | User | Feasibility / Preliminary / Detailed design |
| Survey data | various | -- | No | User / Surveyor | Raw survey data in any format (coordinates, CAD, DTM) |
| Existing mapping | text | -- | No | User | Reference to available contour maps, orthophotos, etc. |
| Terrain class | category | -- | No | Skill #11 | Flat / Rolling / Mountainous / Escarpment -- affects survey requirements |
| Design class | category | -- | No | Skill #13 | Determines required corridor width and survey detail |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| interpreted_survey_data | structured text | -- | Skills #14, #15 | Summary of survey data available for design |
| cross_section_data | specification | -- | Skills #17, #26 | Cross-section data assessment and interpretation |
| ground_profile | specification | -- | Skill #15 | Longitudinal profile data and interpretation |
| survey_adequacy_assessment | text | -- | User | Assessment of whether survey is adequate for the project stage |
| additional_survey_requirements | text | -- | User | Specification of additional survey work needed |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT survey requirements | Markdown |
| `modules/uk.md` | UK DMRB survey guidance | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with universal requirements.

### Step 2: Confirm Project Stage
Determine the project stage (feasibility, preliminary, detailed design). This governs the survey requirements.

### Step 3: Review Available Survey Data
Catalogue the available survey data: method, extent, coordinate system, datum, cross-section interval, corridor width, feature coverage, benchmarks.

### Step 4: Assess Survey Adequacy
Compare the available data against requirements for the project stage and design class. Use the country module's survey specifications (Section M.2) where available, or universal requirements (Section 1.1).

### Step 5: Identify Data Gaps
List missing data, categorised as critical (blocks design) or desirable (limits accuracy). Specify additional survey requirements.

### Step 6: Interpret Survey Data
Extract key design information from the survey data: terrain character, existing features, constraints, drainage patterns, utility locations.

### Step 7: Run Validation
Execute universal checks (Section 4) and country-specific checks (module Section M.5, if present).

### Step 8: Check Escalation Triggers
Scan universal triggers (Section 5) and country-specific triggers (module Section M.6, if present).

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
SURVEY DATA ASSESSMENT -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard and edition -- from country module]
Date: [YYYY-MM-DD]
============================================================

PROJECT CONTEXT
---------------
Road Name:              [name]
Country:                [country]
Project Stage:          [Feasibility / Preliminary / Detailed]
Route Length:           [X] km
Terrain Class:          [from Skill #11 or stated]

AVAILABLE SURVEY DATA
---------------------
Survey Method:          [total station / GPS / photogrammetry / LiDAR / etc.]
Coordinate System:      [system name]
Vertical Datum:         [datum name]
Survey Date:            [date or period]
Centreline Definition:  [existing road / preliminary alignment / etc.]
Cross-Section Interval: [X] m
Corridor Width:         [X] m each side
Benchmarks:             [number, interval]
Features Surveyed:      [list]

SURVEY ADEQUACY ASSESSMENT
--------------------------
Overall Assessment:     [Adequate / Partially adequate / Inadequate] for [stage]

| Requirement | Required | Available | Status |
|-------------|----------|-----------|--------|
| Cross-section interval | [X] m | [Y] m | PASS/FAIL |
| Corridor width | [X] m | [Y] m | PASS/FAIL |
| Benchmarks | max [X] m apart | [Y] m apart | PASS/FAIL |
| Feature survey | [list] | [list] | PASS/FAIL |
| Datum consistency | Consistent | [status] | PASS/FAIL |

DATA GAPS & ADDITIONAL REQUIREMENTS
------------------------------------
Critical Gaps (block design):
- [gap description and required action]

Desirable Gaps (limit accuracy):
- [gap description and recommended action]

SURVEY DATA INTERPRETATION
--------------------------
[Key observations from the survey data relevant to design]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any SENIOR REVIEW items, or "None"]

REFERENCES
----------
[Standard clauses cited -- from country module]

============================================================
PRELIMINARY ASSESSMENT -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review required.
============================================================
```

---

## 9. Worked Examples

See country modules for country-specific worked examples:
- **Uganda:** modules/uganda.md
- **UK:** modules/uk.md

---

## 10. Limitations & Future Work

- **Not covered:** Survey methodology and field procedures (this skill interprets data, not collects it). Hydrographic survey for bridge crossings. Underground utility detection (GPR). Cadastral/land boundary survey.
- **Simplifications:** Survey adequacy assessment is based on general requirements; specific project requirements from the ToR may be more stringent. Accuracy requirements are generic -- specific accuracy specifications should be from the project brief.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, Rwanda, South Africa, Nigeria, Ghana

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft |
