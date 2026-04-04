---
name: "material-suitability"
description: "Use when assessing whether cut material can be reused as fill, selecting borrow pit material, or determining spoil disposal needs. Requires soil classification from Skill #8 and material testing from Skill #9. Links to Skill #24 (Pavement Material Specifications) for layer-specific requirements and Skill #26 (Earthworks Calculation) for volume context."
---

# Material Suitability

> **Skill ID:** 28
> **Domain:** Earthworks
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Assess the suitability of available materials (from cut excavation or borrow pits) for use as fill, selected fill, improved subgrade, sub-base, or base in road construction. This skill bridges the gap between geotechnical test results (from Skills #8-10) and engineering requirements (from Skill #24), applying a systematic decision process to determine whether material can be used as-is, requires treatment, or must be spoiled and replaced.

## When to Use This Skill

- **Use when:** Cut material is available and its suitability for reuse as fill or pavement layers needs to be assessed. When borrow pit material needs to be evaluated against specifications. When material from Skill #26 earthworks is flagged as potentially unsuitable.
- **Do not use when:** Only pavement layer specifications are needed without material assessment (use Skill #24). Not for detailed geotechnical laboratory test interpretation (use Skill #9). Not for subgrade characterisation (use Skill #10).
- **Prerequisite skills:** Skill #8 (Soil Classification) -- provides soil type and classification. Skill #9 (Material Testing Interpretation) -- provides CBR, PI, LL, grading, MDD, OMC results. Skill #10 (Subgrade Characterization) -- provides design CBR for subgrade. Skill #24 (Pavement Material Specifications) -- provides specification requirements for each layer.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Material classification for earthworks use:**
Road construction uses materials for several purposes, each with progressively higher quality requirements:

| Use | Minimum Typical CBR | Key Requirements | Purpose |
|-----|---------------------|------------------|---------|
| General fill | >= 5% (soaked) | Low swelling, compactable | Embankment body below formation |
| Selected fill / capping | >= 15% (soaked) | PI <= 25, compactable | Top of embankment / improved subgrade |
| Sub-base (G30) | >= 30% (soaked) | Grading and PI limits | Structural pavement layer |
| Sub-base (G45) | >= 45% (soaked) | Grading and PI limits | Higher-quality sub-base |
| Base (G80) | >= 80% (soaked) | Strict grading, PI <= 6 | Main structural layer |

**Key test parameters for suitability assessment:**
- **CBR (soaked):** California Bearing Ratio after 4-day soaking -- the primary strength indicator. Soaked CBR represents worst-case field conditions.
- **Plasticity Index (PI):** Difference between Liquid Limit and Plastic Limit. High PI indicates moisture-sensitive clay minerals. Lower PI is preferred for structural layers.
- **Liquid Limit (LL):** Maximum moisture content at which the soil behaves as a plastic material. High LL (> 50) indicates significant volume change potential.
- **Linear Shrinkage (LS):** Percentage reduction in length of a soil bar when dried. LS > 8% indicates high shrinkage potential -- problematic for fill.
- **Grading:** Particle size distribution. Well-graded materials (continuous range of sizes) compact better and have higher bearing capacity than uniformly or gap-graded materials.
- **Maximum Dry Density (MDD):** The maximum density achievable at optimum moisture content. Higher MDD generally indicates better load-bearing capacity.
- **Optimum Moisture Content (OMC):** The moisture content at which maximum density is achieved during compaction.
- **Swell potential:** Volume change when exposed to water. High swell (> 2%) indicates expansive clay minerals -- material is unsuitable for fill.

**Moisture sensitivity:**
Some soils, particularly expansive clays (black cotton soil, montmorillonite-rich clays), are unsuitable for fill regardless of their dry CBR because they swell significantly when wetted. A material with CBR 30% when dry may have CBR < 5% when soaked. The soaked CBR is the relevant value for suitability assessment.

**Shrinkage and bulking factors as function of soil type:**
Material suitability affects the shrinkage factors used in Skill #26:
- Well-graded granular materials: shrinkage factor 1.05-1.15 (compact easily)
- Laterite/murram: shrinkage factor 1.15-1.25 (variable compaction)
- Cohesive clays: shrinkage factor 1.20-1.35 (significant volume change)
- Sandy soils: shrinkage factor 1.05-1.15 (low shrinkage but may lack cohesion)

**Borrow pit requirements:**
When cut material is unsuitable for fill, external material from borrow pits is needed:
- Volume estimation: sufficient volume for the deficit identified by Skill #26
- Testing requirements: same tests as for cut material (CBR, PI, LL, grading)
- Haul distance economics: closer is cheaper but material must meet specs
- Environmental restoration: borrow pits must be restored after use

**Spoil disposal:**
Material that is unsuitable for any use must be disposed of:
- Environmental requirements: spoil areas must be selected to avoid watercourses and sensitive habitats
- Stability: spoil tips must be stable (not prone to landslides)
- Distance from alignment: spoil areas should be close to reduce haulage costs

### 1.2 Universal Formulas

No universal formulas -- material suitability is a comparison of test results against specification requirements. The assessment is a decision tree, not a calculation.

### 1.3 Figures & Diagrams

**Material suitability decision tree:** The assessment follows a top-down approach: (1) What layer is the material intended for? (2) What are the specification requirements for that layer? (3) What do the test results show? (4) Does the material meet the specification? (5) If not, can it be used for a lower-grade purpose? (6) If unsuitable for any purpose, it must be spoiled.

**Grading envelope compliance:** A grading curve (particle size distribution) is plotted against the specification envelope. If the grading falls within the upper and lower bounds, the material passes the grading requirement. If it falls outside, the material fails and may need processing (crushing, screening, blending).

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Identify material source and intended use
  +-- Source: cut excavation, borrow pit, or existing stockpile
  +-- Intended use: general fill, selected fill, sub-base, base
  +-- Load country module for specification requirements

Step 2: Review test results from Skill #9
  +-- CBR (soaked) -- primary strength indicator
  +-- PI and LL -- plasticity limits
  +-- Grading -- particle size distribution
  +-- MDD and OMC -- compaction characteristics
  +-- Swell potential -- volume change risk
  +-- LS (linear shrinkage) -- shrinkage risk

Step 3: Compare against specification requirements
  --> See country module, Section M.2 for specification tables
  +-- For intended layer, check each parameter:
      +-- CBR >= minimum for layer?
      +-- PI <= maximum for layer?
      +-- LL <= maximum for layer?
      +-- Grading within envelope?
      +-- Swell <= maximum?

Step 4: Determine suitability
  +-- ALL parameters met --> Suitable as-is for intended use
  +-- CBR met but PI/grading marginal --> Suitable with conditions
  +-- CBR not met but close --> Consider treatment (Step 5)
  +-- CBR significantly below requirement --> Not suitable for intended use
  +-- High swell or expansive behaviour --> UNSUITABLE regardless of CBR

Step 5: If unsuitable for intended use, assess alternatives
  +-- Can material be treated? (lime stabilization, cement treatment, blending)
      --> See country module, Section M.3 for treatment options
  +-- Can material be used for a lower-grade purpose?
      +-- Not suitable for base (G80) --> Check sub-base (G30)?
      +-- Not suitable for sub-base --> Check selected fill (G15)?
      +-- Not suitable for selected fill --> Check general fill?
      +-- Not suitable for any use --> Designate as spoil

Step 6: Document assessment
  +-- Material source, intended use, test results
  +-- Suitability determination with justification
  +-- Treatment recommendations (if applicable)
  +-- Alternative use recommendations (if applicable)
  +-- Flag for Skill #26 if borrow is needed
  +-- Flag for Skill #27 if borrow location affects mass haul

Step 7: Run validation (Section 4 + country module Section M.5)

Step 8: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Soaked CBR is the critical parameter.** Dry CBR can be misleadingly high. Always use soaked CBR for suitability assessment. Materials with high dry CBR but low soaked CBR are moisture-sensitive and unreliable.

**PI and LL are warning indicators.** A material with adequate CBR but very high PI (> 25) or LL (> 50) may still be problematic because it is moisture-sensitive. In wet climates, such materials may soften over time even if they initially pass CBR tests.

**Consider the full depth of fill.** Material suitability should be assessed for the specific layer. Lower-quality material can be used in the body of a fill (general fill), while higher-quality material is required at the top (selected fill, capping). This allows economical use of available materials.

**Treatment is often more economical than borrow.** Lime or cement treatment of marginal materials can upgrade them to meet specifications. Compare the cost of: (a) treatment (lime/cement + mixing), (b) borrow (excavation + haulage + placement), (c) blend (mixing two materials to meet specifications).

**Expansive soils require removal, not just treatment.** While lime stabilization can reduce swelling, expansive soils in the subgrade or fill can cause long-term problems. Complete removal and replacement is often the most reliable solution.

### 2.3 Common Errors

1. **Using dry CBR instead of soaked CBR.** Dry CBR significantly overestimates the field performance of moisture-sensitive soils.
2. **Ignoring PI when CBR is adequate.** A material with CBR 40% but PI 35 may pass the CBR requirement but fail in the long term due to moisture sensitivity.
3. **Applying base specifications to fill material.** Fill material requirements are much less stringent than base or sub-base. Material rejected for base use may be perfectly suitable as fill.
4. **Not testing borrow material before committing.** Borrow pits must be tested to the same standards as cut material. Assuming borrow material quality without testing can lead to expensive failures.
5. **Not considering seasonal variation in test results.** Material tested in the dry season may have higher CBR than the same material in the wet season. Design should be based on worst-case (wet season) conditions.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| CBR test condition | Soaked (4-day) | Not specified | ASSUMED: Soaked CBR used for suitability assessment | Standard for design purposes |
| Compaction standard (fill) | Standard Proctor | Not specified | ASSUMED: Standard Proctor for fill compaction. Verify specification. | Conservative for general fill |
| Compaction standard (base) | Modified AASHTO | Not specified | ASSUMED: Modified AASHTO for base/sub-base. Verify specification. | Standard for structural layers |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always use soaked CBR** for suitability assessment unless the country module specifies otherwise for dry regions.
3. **Conservative direction:** When in doubt, assign material to a lower-grade use (safer, avoids premature failure).

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| CBR (soaked) | 0 | 100 | % | Warn if > 80 (verify test); reject if > 100 |
| PI | 0 | 80 | % | Warn if > 40 (very high plasticity) |
| LL | 0 | 100 | % | Warn if > 60 (high plasticity) |
| Swell | 0 | 20 | % | Warn if > 2 (expansive); reject if > 10 |
| MDD | 1,200 | 2,400 | kg/m3 | Warn if outside range |
| OMC | 2 | 35 | % | Warn if outside typical range |

### 4.2 Consistency Checks

- **PI vs LL consistency:** PI should be less than LL. If PI > LL, data error.
- **CBR vs PI relationship:** High CBR (> 30%) with very high PI (> 30%) is unusual -- verify test data.
- **Swell vs PI correlation:** High swell (> 2%) should correspond with high PI (> 25%). If high swell with low PI, verify test data.
- **MDD vs soil type:** Granular soils typically have higher MDD than clays. Check consistency.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Expansive soil (swell > 2%, PI > 35) | Volume change risk in fill | SENIOR REVIEW -- Expansive soil identified (PI [X]%, swell [Y]%). Unsuitable for fill. Remove and replace, or consider lime stabilization with specialist advice. |
| CBR < 2% (all layers) | Very weak material | SENIOR REVIEW -- CBR [X]% is below minimum for any use (including general fill). Material must be spoiled. Assess disposal location. |
| No test data available | Cannot assess suitability | SENIOR REVIEW -- No material test data available. Cannot determine suitability. Require CBR, PI, LL, and grading tests before proceeding. |
| Borrow material fails specification | External source unsuitable | SENIOR REVIEW -- Borrow pit material at [location] does not meet [layer] specification. CBR [X]% vs required [Y]%. Investigate alternative sources. |
| Treatment recommended | Cost and quality implications | NOTE -- Material suitable with [treatment type] treatment. Verify treatment cost vs borrow cost. Specialist trial section recommended. |
| No country module available | Cannot apply country-specific specs | SENIOR REVIEW -- No country module for [jurisdiction]. Using generic requirements. Verify specifications with local standards. |

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
| Soil classification | text | -- | Yes | Skill #8 | USCS/AASHTO classification of the material |
| CBR (soaked) | number | % | Yes | Skill #9 | Soaked California Bearing Ratio |
| Plasticity Index (PI) | number | % | Yes | Skill #9 | PI = LL - PL |
| Liquid Limit (LL) | number | % | Yes | Skill #9 | Liquid Limit |
| Linear Shrinkage (LS) | number | % | No | Skill #9 | Linear shrinkage |
| Grading data | distribution | % passing | No | Skill #9 | Particle size distribution |
| MDD | number | kg/m3 | No | Skill #9 | Maximum Dry Density |
| OMC | number | % | No | Skill #9 | Optimum Moisture Content |
| Swell | number | % | No | Skill #9 | Swell under soaking |
| Intended use | text | -- | Yes | User | Fill, selected fill, sub-base, base |
| Material source | text | -- | No | User | Cut, borrow pit, stockpile |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Suitability determination | text | -- | User, Skill #26, Skill #27 | Suitable / Suitable with treatment / Unsuitable |
| Recommended use | text | -- | User | Highest layer the material is suitable for |
| Treatment recommendation | text | -- | User | Lime, cement, blending if applicable |
| Shrinkage factor | number | -- | Skill #26 | Based on material type and quality |
| Borrow flag | boolean | -- | Skill #27 | Whether borrow is needed to replace unsuitable material |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT Table 5.1 specs and soil guidance | Markdown |
| `modules/uk.md` | UK SHW Series 600 classification | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`.

### Step 2: Confirm Material Data
Receive soil classification, test results (CBR, PI, LL, grading, MDD, OMC, swell), intended use, and material source from Skills #8 and #9.

### Step 3: Identify Specification Requirements
From the country module (referencing Skill #24 for detailed specs), determine the minimum requirements for the intended use layer.

### Step 4: Compare Test Results Against Specifications
Systematically check each parameter against the specification. Record pass/fail for each.

### Step 5: Determine Suitability
Apply the decision tree from Section 2.1. Determine if material is suitable as-is, suitable with treatment, or unsuitable.

### Step 6: Assess Alternatives
If unsuitable for intended use, check suitability for lower-grade uses. If unsuitable for any use, designate as spoil.

### Step 7: Recommend Treatment (if applicable)
If treatment could make material suitable, specify the treatment type and conditions.

### Step 8: Run Validation
All universal + country-specific checks from Section 4 and the country module.

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
MATERIAL SUITABILITY ASSESSMENT -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

MATERIAL SOURCE
---------------
Source:              [Cut at station X / Borrow pit at location / Stockpile]
Soil classification: [USCS/AASHTO classification from Skill #8]
Intended use:        [General fill / Selected fill / Sub-base / Base]

TEST RESULTS
------------
CBR (soaked):        [X]%
Plasticity Index:    [X]%
Liquid Limit:        [X]%
Linear Shrinkage:    [X]%
Swell:               [X]%
MDD:                 [X] kg/m3
OMC:                 [X]%
Grading:             [within/outside envelope]

SPECIFICATION REQUIREMENTS ([standard])
---------------------------------------
Layer: [intended use]
Parameter        Required       Actual         Status
---------        --------       ------         ------
CBR (soaked)     >= [X]%        [Y]%           [PASS/FAIL]
PI               <= [X]%        [Y]%           [PASS/FAIL]
LL               <= [X]%        [Y]%           [PASS/FAIL]
Grading          [envelope]     [result]       [PASS/FAIL]
Swell            <= [X]%        [Y]%           [PASS/FAIL]

SUITABILITY DETERMINATION
-------------------------
Intended use: [layer]          [SUITABLE / SUITABLE WITH TREATMENT / UNSUITABLE]

Alternative uses assessed:
- [Lower layer 1]:             [SUITABLE / UNSUITABLE]
- [Lower layer 2]:             [SUITABLE / UNSUITABLE]

Recommended use:               [highest suitable layer]

TREATMENT RECOMMENDATION
------------------------
[Treatment details if applicable, or "No treatment needed"]

EARTHWORKS IMPLICATIONS
-----------------------
Shrinkage factor for this material: [X]
Borrow needed:                      [Yes/No]
Estimated borrow volume:            [X m3 if applicable]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Universal checks -- PASS or FAIL]
[Country-specific checks -- PASS or FAIL]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY ASSESSMENT -- FOR PROFESSIONAL REVIEW
This output is a material suitability screening.
Professional review required before final material acceptance.
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed stabilization design (lime content, cement content, curing requirements). Borrow pit volume estimation and geotechnical investigation design. Contaminated land assessment. Recycled material assessment. Geosynthetic reinforcement design for weak subgrades.
- **Simplifications:** Uses a single test result per material source -- in practice, multiple samples should be tested and statistically analysed. Does not address spatial variability within a borrow pit. Treatment recommendations are general -- specific mix design requires specialist input.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with material suitability decision tree, MoWT Table 5.1 reference, Uganda soil guidance. |
