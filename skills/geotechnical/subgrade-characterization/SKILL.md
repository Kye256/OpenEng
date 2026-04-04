---
name: "subgrade-characterization"
description: "Use when determining design subgrade strength (design CBR) and subgrade class from multiple test results using statistical percentile approach. Requires interpreted CBR from Skill #9 and soil types from Skill #8. Outputs are the critical input for pavement design (Skills #21-23)."
---

# Subgrade Characterization

> **Skill ID:** 10
> **Domain:** Geotechnical Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Determine the design subgrade strength (design CBR) and subgrade class for a road section from multiple test results, using the statistical percentile approach. This skill is the terminus of the geotechnical pipeline -- its outputs (design CBR and subgrade class) are THE critical inputs for pavement design (Skills #21-23). Getting this right determines whether the pavement is adequately designed; getting it wrong leads to premature failure or unnecessary cost.

## When to Use This Skill

- **Use when:** CBR test results (from Skill #9) and soil classification data (from Skill #8) are available for a road section and a design CBR must be determined for pavement design.
- **Do not use when:** No CBR data exists (use Skill #7 to plan investigation first, then Skill #9 to interpret results). Not for construction quality control (use Skill #9 for interpreting QC test results).
- **Prerequisite skills:** Skill #9 (Material Testing Interpretation) for interpreted CBR values. Skill #8 (Soil Classification) for soil type context. Both feed into this skill.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Design CBR** is the representative CBR value used for pavement thickness design. It must reflect the probable lowest representative CBR likely to occur during the road's design life, considering:
- Variability of soil conditions along the road section
- Moisture conditions (wet season vs dry season)
- Density achieved during construction
- Statistical distribution of test results

**Uniform sections:** Before determining design CBR, the road alignment must be divided into uniform sections -- lengths where the subgrade conditions are reasonably consistent. Section boundaries are identified from geological mapping, DCP profiles, soil classification, and CBR results. Different uniform sections will have different design CBRs and potentially different pavement structures.

**Percentile method:** The design CBR is selected as a low percentile of the test results for a section. The exact percentile depends on the number of tests and the acceptable risk. Common approaches:
- **10th percentile rule (MoWT / TRL RN31):** Use the 10th percentile value, meaning only 10% of test results are expected to be lower than the design value. This provides 90% confidence that the actual CBR exceeds the design value.
- **Statistical method:** For larger datasets, calculate the mean and standard deviation, then use: Design CBR = Mean - 1.28 * Standard Deviation (for 10th percentile, assuming normal distribution).

**Moisture sensitivity:** The CBR of a soil changes with moisture content. Design CBR must represent the worst realistic moisture condition during the road's life. This is influenced by:
- Climate (rainfall, wet/dry seasons)
- Water table depth
- Drainage provision
- Pavement impermeability
- Country-specific guidance on soaked vs unsoaked testing

**Subgrade improvement:** When the design CBR is too low for economical pavement design, options include:
- **Mechanical stabilisation:** Blending with better material
- **Chemical stabilisation:** Lime or cement treatment
- **Removal and replacement:** Excavate weak material, replace with selected fill
- **Geotextile separation:** Prevent intermixing of weak subgrade with fill
- **Increased capping thickness:** Provide a thicker selected fill / capping layer

**Relationship to pavement thickness:** Lower design CBR means thicker pavement layers, which means higher construction cost. The relationship is not linear -- the difference in pavement thickness between CBR 2% and CBR 5% is much greater than between CBR 15% and CBR 30%.

### 1.2 Universal Formulas

**Design CBR from percentile (statistical method):**

```
Design CBR = Mean CBR - k * Standard Deviation
```

Where:
- k = 1.28 for 10th percentile (90% reliability)
- k = 1.64 for 5th percentile (95% reliability)
- This assumes a normal distribution of CBR values

**Design moisture content for dry conditions (MoWT Equation 3):**

```
Design moisture content (%) = 0.67 * OMC (%) + 0.8
```

Where OMC is from the AASHTO T-99 (Proctor) compaction test. Used when dry subgrade conditions are expected.

### 1.3 Figures & Diagrams

**CBR cumulative distribution curve:** A plot with CBR (x-axis) and cumulative percentage of samples with CBR less than the plotted value (y-axis). The design CBR is read at the 10th percentile (y = 10%). The curve shape indicates variability: a steep curve means consistent subgrade; a flat curve means highly variable conditions.

**Subgrade class boundaries on the distribution curve:** Vertical lines at S1/S2/S3/S4/S5/S6 boundaries (CBR = 2, 5, 8, 15, 30) overlaid on the cumulative distribution curve show which class the design CBR falls into.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Collect all CBR results for the road
  |-- From Skill #9: lab CBR values (soaked/unsoaked) per sample
  |-- From Skill #9: DCP-estimated CBR values (if calibrated)
  |-- From Skill #8: soil classification per sample
  +-- Note test conditions: compaction standard, soaking, density

Step 3: Divide into uniform sections
  |-- Use soil classification to identify changes in soil type
  |-- Use DCP profiles to identify changes in strength
  |-- Use geological information and terrain
  +-- Each section should have >= 6 CBR results (MoWT minimum)

Step 4: For each uniform section, determine design CBR
  |-- Check for outliers (values > 2 standard deviations from mean)
  |   |-- Investigate outliers before excluding
  |   +-- Document any exclusions
  |-- If >= 10 results: Use statistical method or cumulative distribution
  |   +-- Design CBR = 10th percentile
  |-- If 6-9 results: Plot cumulative distribution, read 10th percentile
  |   +-- Or use the 2nd lowest value as an approximation
  |-- If < 6 results: Flag insufficient data
  |   +-- Use the lowest value conservatively
  |   +-- See country module for guidance
  +-- Round to nearest whole number

Step 5: Assign subgrade class
  -> See country module, Section M.2 for class boundaries
  |-- Match design CBR to subgrade class (e.g., S1-S6 per MoWT)
  +-- Note: Use design CBR, not individual test values

Step 6: Assess moisture sensitivity
  |-- Compare soaked vs unsoaked CBR if both available
  |-- Determine wet or dry design condition
  |   -> See country module, Section M.2 for guidance
  |-- Assign moisture condition for pavement catalogue selection
  +-- Flag if significant moisture sensitivity (soaked/unsoaked ratio < 0.5)

Step 7: Determine if subgrade improvement is needed
  |-- Design CBR < 2% -> improvement essential (most standards)
  |-- Design CBR < 5% -> consider improvement for economy
  |-- Very variable subgrade -> consider equalisation layer
  +-- See country module for improvement options

Step 8: Check minimum investigation depth
  -> See country module for depth requirements per subgrade class
  |-- Confirm investigation depth exceeds pavement + minimum subgrade depth
  +-- Flag if insufficient depth

Step 9: Run validation and escalation checks
  -> Section 4 + country module Section M.5

Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**The design CBR is a design parameter, not a measured quantity.** It is derived from measured CBR values through a process of statistical interpretation and engineering judgment. Two engineers may legitimately derive slightly different design CBRs from the same data, depending on their assessment of risk.

**The 10th percentile is a guideline, not a rigid rule.** For critical projects (high-traffic trunk roads), consider using a lower percentile (5th). For low-traffic rural roads, the 10th percentile is adequate. The key principle is that the design value should represent the weakest realistic condition, not the weakest possible condition.

**Uniform section delineation is critical.** Combining results from two genuinely different soil types into one section will produce a misleading design CBR. Conversely, splitting a uniform section into too many sub-sections wastes data and may result in under-designed sections.

**Do not over-interpret sparse data.** With fewer than 6 results, statistical methods are unreliable. Use the lowest value and flag for additional testing. The cost of a few more CBR tests is trivial compared to the cost of pavement failure.

**Moisture condition selection significantly affects design.** The difference between soaked and unsoaked CBR can be a factor of 2-5. Selecting the wrong moisture condition is one of the most consequential decisions in subgrade characterization.

### 2.3 Common Errors

1. **Using mean CBR as design CBR.** The mean is not conservative enough -- 50% of the subgrade will be weaker than the mean. The 10th percentile is standard practice.
2. **Combining results from different soil types into one section.** This masks variability and produces an unreliable design CBR.
3. **Using too few tests for statistical classification.** Fewer than 6 results per uniform section is unreliable. The MoWT manual specifically requires a minimum of 6.
4. **Ignoring moisture condition.** Using unsoaked CBR for design in a wet region will produce an unconservatively thin pavement.
5. **Selecting subgrade class at boundary values.** If the design CBR falls exactly on a class boundary (e.g., CBR = 5%), use the lower class (S3 rather than S4) unless there is strong justification for the higher class.
6. **Not checking investigation depth.** If the investigation did not reach the minimum depth for the subgrade class, there may be weaker material below that would govern the design.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Percentile for design CBR | 10th percentile | Not specified | ASSUMED: 10th percentile (90% reliability) per MoWT/TRL guidance | Standard for road pavement design |
| Moisture condition | Soaked (wet season) | Not specified | ASSUMED: Soaked CBR for design (conservative) -- verify wet/dry condition | Conservative for most tropical locations |
| Minimum samples per section | 6 | Not specified | ASSUMED: Minimum 6 samples per uniform section per MoWT Table 3.2 note | Required for statistical reliability |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** When design CBR falls near a class boundary, select the lower subgrade class. When moisture condition is uncertain, use soaked CBR.
4. **Flag for investigation:** Every assumed value includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Design CBR | 0.5 | 100 | % | Reject if < 0.5 (error). Warn if > 50 (unusually high subgrade). |
| Number of CBR tests per section | 1 | 100 | count | Warn if < 6 (statistically unreliable). |
| Section length | 0.1 | 50 | km | Warn if > 10 km for a single uniform section (unlikely to be truly uniform). |
| Investigation depth | 0.25 | 3 | m | Warn if < minimum for subgrade class (see country module). |

### 4.2 Consistency Checks

- **Design CBR vs individual results:** Design CBR should be <= the 2nd lowest individual CBR value (approximately). If it is higher, the statistical method may be wrong.
- **Subgrade class vs CBR range:** All or nearly all individual CBR values should fall within the subgrade class range or higher. If more than 20% fall below, consider a lower class.
- **Section boundaries vs soil classification:** Uniform section boundaries should align with changes in soil classification from Skill #8.
- **Moisture condition vs climate:** Soaked CBR should be used in regions with annual rainfall > 250 mm or high water table.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. |
| Design CBR < 2% | Below minimum for most pavement design catalogues | SENIOR REVIEW -- Design CBR < 2%. Subgrade improvement essential. Options: lime treatment, removal and replacement, geofabric, pioneer layer. |
| Fewer than 6 CBR results per section | Statistically unreliable design CBR | SENIOR REVIEW -- Only [N] CBR results for section [X]. Minimum 6 required. Recommend additional testing. Using lowest value conservatively. |
| High CBR variability (CV > 50%) | Uniform section may not be truly uniform | SENIOR REVIEW -- CBR coefficient of variation [X]% exceeds 50%. Section may contain multiple soil types. Consider re-delineating sections. |
| Design CBR at class boundary | Ambiguous classification | SENIOR REVIEW -- Design CBR = [X]%, exactly at S[Y]/S[Z] boundary. Conservative classification S[Y] recommended. Confirm with additional testing. |
| Investigation depth insufficient | May miss weak underlying material | SENIOR REVIEW -- Investigation depth [X] mm is less than minimum [Y] mm for subgrade class S[Z]. Deeper investigation recommended. |

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
| CBR values | table | % | Yes | Skill #9 | Interpreted CBR values per sample with test conditions |
| Soil classification | table | category | No | Skill #8 | AASHTO or USCS classification per sample |
| Moisture condition | text | -- | No | User | Wet season / Dry season / Uncertain |
| Road section length | number | km | No | User | Length of road for section delineation |
| DCP profile data | table | mm/blow vs chainage | No | Skill #9 | For section delineation support |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Design CBR | number | % | Skill #21, Skill #22, Skill #23 | Design subgrade CBR per section |
| Subgrade class | category | S1-S6 (MoWT) or equivalent | Skill #21, Skill #22, Skill #23 | Subgrade class for pavement design catalogue |
| Moisture sensitivity assessment | text | -- | Pavement design, User | Assessment of moisture risk |
| Subgrade improvement recommendation | text | -- | User | Recommendation if improvement needed |
| Uniform section boundaries | table | chainage | Pavement design | Start/end of each uniform section |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda country module (MoWT tables) | Markdown |
| `modules/uk.md` | UK country module (DMRB foundation classes) | Markdown |

---

## 7. Procedure

### Step 1: Gather CBR and Classification Data
Collect all CBR results (from Skill #9), soil classification (from Skill #8), DCP profiles, and project information (road length, climate, moisture condition).

### Step 2: Load Country Module
Identify jurisdiction and load subgrade classification tables.

### Step 3: Delineate Uniform Sections
Use soil classification, DCP profiles, and geological information to divide the road into uniform sections. Each section should have at least 6 CBR results.

### Step 4: Determine Design CBR per Section
Apply the percentile method from the country module. For each section:
- Check for outliers, plot cumulative distribution
- Determine 10th percentile CBR
- Round to nearest whole number

### Step 5: Assign Subgrade Class
Match design CBR to subgrade class using the country module's classification table.

### Step 6: Assess Moisture Condition
Determine whether wet or dry design conditions apply (country module guidance). Confirm CBR test conditions match the design condition.

### Step 7: Evaluate Subgrade Improvement Needs
If design CBR < minimum for pavement catalogue, identify improvement options.

### Step 8: Check Investigation Depth
Verify that investigation depth meets minimum requirements for the assigned subgrade class.

### Step 9: Run Validation and Escalation
Execute Section 4 and 5 checks plus country module checks.

### Step 10: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
SUBGRADE CHARACTERIZATION -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Subgrade classification standard]
Date: [YYYY-MM-DD]
============================================================

PROJECT CONTEXT
---------------
Road Name:              [name]
Total Length:            [X] km
Climate:                [wet/dry/seasonal]
Moisture Condition:     [wet / dry -- with justification]
CBR Test Method:        [soaked/unsoaked, compaction standard]

UNIFORM SECTIONS
----------------
[Table: Section | Start Ch. | End Ch. | Length (km) | Soil Type | No. CBR Tests]

DESIGN CBR PER SECTION
----------------------
[Table: Section | CBR Values | Mean | Std Dev | 10th %ile | Design CBR | Subgrade Class]

SUBGRADE CLASSIFICATION SUMMARY
-------------------------------
[Table: Section | Design CBR (%) | Subgrade Class | Min Depth (mm) | Investigation Depth (mm) | Depth OK?]

MOISTURE SENSITIVITY
--------------------
[Assessment of moisture effects, soaked vs unsoaked comparison if available]

SUBGRADE IMPROVEMENT
--------------------
[Recommendations for sections requiring improvement, or "None required"]

ASSUMPTIONS & DEFAULTS
----------------------
[Warning flags]

VALIDATION
----------
[Checks -- PASS or FAIL]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

See country modules for country-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Resilient modulus determination for mechanistic-empirical design. Dynamic subgrade response analysis. Subgrade improvement design (quantities, mix design for stabilisation).
- **Simplifications:** Assumes normal distribution for statistical method. 10th percentile rule is approximate. Uniform section delineation involves judgment.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, Rwanda, South Africa, Ghana, Nigeria

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
