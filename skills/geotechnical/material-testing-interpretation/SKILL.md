---
name: "material-testing-interpretation"
description: "Use when interpreting CBR, Atterberg limits, compaction, grading, or DCP test results to assess material suitability for pavement layers and subgrade. Requires test data from Skill #7 (Site Investigation) and classification from Skill #8 (Soil Classification). Outputs feed into Skill #10 (Subgrade Characterization)."
---

# Material Testing Interpretation

> **Skill ID:** 9
> **Domain:** Geotechnical Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK

## Purpose

Interpret laboratory and field test results -- CBR, Atterberg limits, compaction, grading analysis, and DCP -- to assess material suitability for pavement layers and subgrade. This skill translates raw test numbers into engineering conclusions that feed directly into subgrade characterisation (Skill #10) and pavement design.

## When to Use This Skill

- **Use when:** Laboratory test results or DCP data are available and need to be interpreted for pavement design purposes. After Skill #7 (Site Investigation) has been executed and samples tested.
- **Do not use when:** No test data is available (use Skill #7 to plan investigation first). Not for structural foundation design testing.
- **Prerequisite skills:** Skill #7 (Site Investigation Planning) provides the test programme. Skill #8 (Soil Classification) provides material classification context.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**California Bearing Ratio (CBR):**
- Measures the resistance of a soil to penetration under controlled conditions.
- Expressed as a percentage of the resistance of a standard crushed stone.
- **Soaked CBR:** Sample compacted at OMC to specified density, then soaked in water for 4 days before testing. Represents worst-case (wet season) conditions. Standard for pavement design.
- **Unsoaked CBR:** Sample tested at moulding moisture content without soaking. Represents current/dry conditions. Used where saturation is not expected.
- **In-situ CBR:** Measured in the field using DCP or plate bearing test. Represents current conditions.
- Typical values: Soft clay 1-3%, Stiff clay 3-7%, Sandy clay 5-15%, Sand 10-25%, Gravel 20-80%, Crushed stone 80-150+%.
- The CBR test is empirical. It was developed in California in the 1930s and remains the standard for pavement design worldwide despite its limitations.

**Atterberg Limits:**
- **Liquid Limit (LL):** Moisture content at which soil transitions from plastic to liquid state. Determined by cone penetrometer or Casagrande cup.
- **Plastic Limit (PL):** Moisture content at which soil transitions from semi-solid to plastic state. Determined by rolling a soil thread to 3 mm diameter.
- **Plasticity Index (PI):** PI = LL - PL. Measures the range of moisture content over which the soil is plastic.
- **Linear Shrinkage (LS):** Percentage reduction in length of a soil bar when dried from LL. Correlates with PI (approximately LS = PI/2.4 for many soils).
- Engineering significance: PI indicates clay content and activity. High PI means high swell potential, low CBR when wet, and difficult workability. For pavement materials, PI limits are specified per layer (e.g., PI < 6 for base, PI < 12 for subbase in MoWT).

**Compaction:**
- **Standard Proctor (AASHTO T-99):** 2.5 kg hammer, 305 mm drop, 3 layers. Produces a compaction curve showing relationship between dry density and moisture content.
- **Modified Proctor (AASHTO T-180):** 4.5 kg hammer, 457 mm drop, 5 layers. Higher compaction energy, produces higher MDD and lower OMC.
- **Maximum Dry Density (MDD):** Peak of the compaction curve. The target field density.
- **Optimum Moisture Content (OMC):** Moisture content at MDD. The target moisture for field compaction.
- CBR is specified at a given compaction level (e.g., 100% Proctor MDD, 98% Modified AASHTO MDD).

**Grading Analysis (Sieve Analysis):**
- Determines the particle size distribution of a soil.
- Key parameters: % passing each sieve size, coefficient of uniformity (Cu = D60/D10), coefficient of curvature (Cc = D30^2/(D10*D60)).
- Well-graded soils (Cu > 6 for sand, > 4 for gravel; Cc between 1-3) compact better and have higher CBR than poorly-graded soils.
- For pavement materials, grading envelopes are specified (upper and lower bounds on % passing each sieve size).

**DCP Interpretation:**
- Penetration rate (mm/blow) correlates with CBR using apparatus-specific correlations.
- DCP profile (depth vs cumulative blows) shows layer boundaries as changes in gradient.
- Used for: subgrade profiling, layer thickness verification, construction quality control.
- Limitations: Not suitable in highly gravelly soils (penetration refused) or below the water table (unreliable results).

### 1.2 Universal Formulas

**DCP-CBR correlation (TRL):**
```
log10(CBR) = 2.48 - 1.057 * log10(DN)
```
Where DN = penetration rate in mm/blow.

**Approximate CBR from selected DN values:**

| DN (mm/blow) | Approximate CBR (%) |
|-------------|-------------------|
| 2 | 150 |
| 5 | 45 |
| 10 | 18 |
| 20 | 8 |
| 50 | 2.5 |
| 100 | 1 |

**Design moisture content for dry conditions (MoWT Equation 3):**
```
Design moisture content (%) = 0.67 * OMC (%) + 0.8
```
Where OMC is from the AASHTO T-99 (Proctor) compaction test.

### 1.3 Figures & Diagrams

**Compaction curve:** A plot of dry density (y-axis) vs moisture content (x-axis). The curve has a single peak (MDD at OMC). The agent should understand that compacting wet of OMC gives lower density and potentially lower CBR, and that compacting dry of OMC also gives lower density but the soil may be more rigid.

**CBR-penetration curve:** A plot of load (or stress) vs penetration. The CBR is calculated from the load at 2.5 mm penetration (and checked at 5.0 mm penetration). If the 5.0 mm value gives a higher CBR, this is reported (indicative of surface irregularities in the sample).

**DCP profile:** A plot of cumulative blows (x-axis) vs depth (y-axis), plotted with depth increasing downward. Steep gradient = low resistance = weak material. Shallow gradient = high resistance = strong material.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module

Step 2: Collect all test results for the section
  |-- CBR results (soaked and/or unsoaked, at specified density)
  |-- Atterberg limits (LL, PL, PI, LS)
  |-- Compaction results (MDD, OMC, test method)
  |-- Grading analysis (% passing each sieve)
  |-- DCP data (if available)

Step 3: Validate test results
  |-- Check CBR values are physically reasonable (0-200% typical range)
  |-- Check PI = LL - PL (arithmetic consistency)
  |-- Check grading is monotonically decreasing with increasing sieve size
  |-- Check compaction curve has a clear peak (if multiple points)
  +-- Flag any anomalous or inconsistent results

Step 4: Interpret CBR results
  |-- Identify soaked vs unsoaked, test density, moulding moisture
  |-- Compare CBR to specification limits (country module)
  |   |-- Base: CBR >= 80% (soaked, 98% MDD) for granular base
  |   |-- Subbase: CBR >= 30% (soaked, 95% MDD) for granular subbase
  |   |-- Capping: CBR >= 15% (soaked, 93% MDD)
  |   +-- Subgrade: Classify per Table 3.1 (S1-S6)
  +-- Note any anomalies (e.g., CBR decreases at higher density -- possible degradation)

Step 5: Interpret Atterberg limits
  |-- Check PI against specification limits (base PI < 6, subbase PI < 12)
  |-- Assess swell potential (PI > 30 -> flag expansive)
  |-- Compare with soil classification from Skill #8
  +-- Assess workability implications

Step 6: Interpret compaction results
  |-- Identify MDD and OMC
  |-- Assess achievability of specified density in the field
  |-- Compare with natural moisture content (if known)
  +-- Flag if MDD is unusually low or high for the soil type

Step 7: Interpret grading results
  |-- Check against grading envelope specifications (country module)
  |-- Calculate Cu and Cc if needed
  |-- Assess if material meets requirements for intended layer
  +-- Recommend blending or processing if outside specifications

Step 8: Assess overall material suitability
  |-- For each sample: suitable for which layer(s)?
  |-- Rank materials by quality
  |-- Identify materials needing treatment (stabilisation, blending)
  +-- Identify materials unsuitable for any pavement layer

Step 9: Run validation (Section 4 + country module Section M.5)
Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**CBR is the primary design parameter for pavement design.** While other tests provide important supplementary information, the CBR value is what drives pavement thickness through the design catalogue. Interpret CBR results carefully and conservatively.

**Soaked CBR is almost always more appropriate than unsoaked.** Even in dry regions, there is a risk of moisture ingress during the road's life. Using unsoaked CBR in design is unconservative unless dry conditions can be guaranteed (rainfall < 250 mm/year, high water table ruled out).

**Compaction density matters as much as CBR value.** A material with CBR = 40% at 100% MDD may have CBR = 15% at 93% MDD. Always note the test density when reporting CBR, and assess whether the specified density is achievable in the field.

**Anomalous results should be investigated, not ignored.** If one CBR result is much higher or lower than others from the same section, investigate before including or excluding it. Possible causes: different soil type (misidentified uniform section), testing error, moisture variation, sample disturbance.

**Material degradation under compaction** is a real phenomenon with lateritic gravels and soft rocks. If CBR decreases when the sample is compacted at higher energy, the material may be breaking down. Test at the specified compaction level and note the concern.

### 2.3 Common Errors

1. **Comparing soaked and unsoaked CBR values as equivalent.** They are not. Always clarify which type was used.
2. **Ignoring test density.** CBR at 95% MDD is not the same as CBR at 100% MDD.
3. **Accepting single CBR result as representative.** Minimum 6 results per uniform section for statistical classification.
4. **Not checking PI against layer specifications.** A material with adequate CBR but excessive PI will fail in service due to moisture sensitivity.
5. **Applying DCP-CBR correlation to wrong apparatus.** Different DCP configurations require different correlations.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| CBR test condition | Soaked (4-day) | Not specified | ASSUMED: Soaked CBR (conservative for design) | Standard for pavement design |
| Compaction standard | Modified AASHTO (T-180) | Not specified | ASSUMED: Modified AASHTO compaction -- verify test method | Standard for pavement materials in most African countries |
| CBR test density | 100% Proctor MDD | Not specified | ASSUMED: 100% Proctor MDD per MoWT Table 3.2 | MoWT standard for subgrade CBR classification |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output.
3. **Conservative direction:** When in doubt, use the lower CBR value and the more stringent specification limit.
4. **Flag for investigation:** Every assumed value includes a recommendation for verification.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| CBR (soaked) | 0.5 | 200 | % | Warn if < 1% (very weak) or > 150% (re-check test) |
| Liquid Limit (LL) | 10 | 120 | % | Warn if outside range |
| Plastic Limit (PL) | 5 | 80 | % | Warn if outside range |
| Plasticity Index (PI) | 0 | 80 | % | Reject if negative |
| MDD (Mod. AASHTO) | 1400 | 2400 | kg/m3 | Warn if outside range |
| OMC | 3 | 35 | % | Warn if > 25% (very clayey soil) |
| DCP penetration rate | 1 | 200 | mm/blow | Warn if > 100 (very weak, CBR < 1%) |

### 4.2 Consistency Checks

- **PI = LL - PL:** Must be arithmetically consistent.
- **CBR vs PI relationship:** High CBR (> 30%) with high PI (> 20) is unusual -- flag for review.
- **CBR vs soil type:** CBR > 80% from a clay (PI > 15) is very unusual -- check test procedure.
- **MDD consistency:** MDD from Modified AASHTO should be higher than from Standard Proctor for the same material.
- **Grading monotonically decreasing:** Cumulative % passing must not increase with increasing sieve size.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific specifications | SENIOR REVIEW -- No country module for [jurisdiction]. |
| CBR < 2% for subgrade | Below minimum for most pavement design catalogues | SENIOR REVIEW -- Subgrade CBR < 2%. Subgrade improvement required (lime treatment, removal, geofabric). See MoWT Section 5.5. |
| High CBR but high PI (CBR > 30%, PI > 20) | Inconsistent results -- possible testing error or unusual material | SENIOR REVIEW -- CBR and PI appear inconsistent. Verify test procedures and sample identification. |
| Material degradation under compaction | CBR decreases at higher compaction energy | SENIOR REVIEW -- Possible material degradation. CBR at higher density is lower than at lower density. Investigate aggregate breakdown. |
| Insufficient test results for statistical classification | Fewer than 6 CBR results per section | SENIOR REVIEW -- Only [X] CBR results for section. Minimum 6 required for reliable classification. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Continue working** where possible.
- **Country module escalations** merged with universal escalations in output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Lab test results | table | -- | Yes | User / Lab | CBR, Atterberg limits, compaction, grading |
| Sample location | text | -- | No | User | Chainage, depth, test pit/borehole reference |
| Sample depth | number | m | No | User | Depth from which sample was taken |
| Test method | text | -- | No | User / Lab | BS, AASHTO, etc. |
| DCP data | table | -- | No | Skill #7 / User | Depth vs cumulative blows |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| CBR values | table | % | Skill #10 | Interpreted CBR values per sample/section |
| Atterberg limits | table | % | Skill #10, Skill #8 | LL, PL, PI, LS per sample |
| Compaction results | table | kg/m3, % | Earthworks design | MDD, OMC per sample |
| Grading analysis | table | % passing | Skill #10, material specifications | Particle size distribution |
| Material suitability assessment | text | -- | Skill #10, pavement design, User | Suitability for each pavement layer |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda country module | Markdown |
| `modules/uk.md` | UK country module | Markdown |

---

## 7. Procedure

### Step 1: Gather Test Results
Collect all laboratory and field test results for the project. Organise by sample location and depth.

### Step 2: Load Country Module
Identify jurisdiction and load specifications.

### Step 3: Validate Results
Run range checks and consistency checks. Flag anomalies.

### Step 4: Interpret Each Test Type
Interpret CBR, Atterberg limits, compaction, grading, and DCP results individually.

### Step 5: Assess Material Suitability
Compare results against specification requirements for each pavement layer.

### Step 6: Compile Summary
Tabulate results and suitability assessments. Identify materials needing treatment.

### Step 7: Run Validation and Escalation Checks
Execute Section 4 and 5 checks plus country module checks.

### Step 8: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
MATERIAL TESTING INTERPRETATION -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Test and specification standard]
Date: [YYYY-MM-DD]
============================================================

INPUTS
------
[Table: Sample ID | Location | Depth | Tests Available]

TEST RESULTS SUMMARY
--------------------
[Table: Sample ID | CBR (%) | LL | PL | PI | LS | MDD | OMC | Notes]

MATERIAL SUITABILITY
--------------------
[Table: Sample ID | Base | Subbase | Capping | Subgrade Class | Notes]

GRADING ANALYSIS
----------------
[Table or reference to grading curves]

DCP INTERPRETATION (if applicable)
----------------------------------
[Table: Location | Depth | DN (mm/blow) | Estimated CBR (%) | Layer]

ANOMALIES & CONCERNS
--------------------
[List any unusual results or inconsistencies]

ASSUMPTIONS & DEFAULTS
----------------------
[Warning flags]

VALIDATION
----------
[Checks]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standards cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
============================================================
```

---

## 9. Worked Examples

See country modules for country-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Triaxial testing interpretation. Consolidation testing. Chemical testing (sulphates, pH). Rock testing (UCS, Point Load). Resilient modulus testing.
- **Simplifications:** DCP-CBR correlation is empirical and apparatus-specific. CBR is an empirical test with known limitations. Material suitability is assessed against nominal specifications; site-specific conditions may warrant relaxation or tightening.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, Rwanda, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
