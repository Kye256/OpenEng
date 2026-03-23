---
name: "soil-classification"
description: "Use when classifying soils from borehole logs, test pit records, or lab results using USCS or AASHTO systems. Requires data from Skill #7 (Site Investigation Planning). Outputs feed into Skill #10 (Subgrade Characterization) and pavement design."
---

# Soil Classification

> **Skill ID:** 8
> **Domain:** Geotechnical Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK

## Purpose

Classify soils from borehole log data, test pit records, and laboratory test results using standard classification systems (USCS, AASHTO). This skill translates raw geotechnical data into engineering descriptions and classification categories that feed into subgrade characterisation (Skill #10) and pavement design.

## When to Use This Skill

- **Use when:** Borehole logs, test pit records, or laboratory test data are available and soils need to be classified for engineering purposes. After Skill #7 (Site Investigation Planning) has been executed and data collected.
- **Do not use when:** Only DCP data is available (DCP provides CBR estimates but not classification data -- use Skill #9 for DCP interpretation). Not for rock classification.
- **Prerequisite skills:** Skill #7 (Site Investigation Planning) provides the data. Benefits from lab test results interpreted by Skill #9 (Material Testing Interpretation).

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Soil classification** assigns soils to groups based on measurable physical properties. The two primary systems used in road engineering are:

**Unified Soil Classification System (USCS):**
- Classifies soils by grain size distribution and plasticity.
- Primary groups: Gravels (G), Sands (S), Silts (M), Clays (C), Organic (O), Peat (Pt).
- Suffixes: W (well-graded), P (poorly-graded), L (low plasticity), H (high plasticity).
- Group symbols: GW, GP, GM, GC, SW, SP, SM, SC, ML, CL, OL, MH, CH, OH, Pt.
- Boundary: Coarse-grained soils have > 50% retained on the No. 200 sieve (0.075 mm). Fine-grained soils have >= 50% passing the No. 200 sieve.
- Plasticity: The A-line on the Casagrande plasticity chart separates clays (above) from silts (below). The equation is: PI = 0.73 * (LL - 20).
- Used primarily for general geotechnical engineering and reporting.

**AASHTO Soil Classification System:**
- Developed specifically for highway and road construction.
- Groups: A-1 (stone fragments, gravel, sand), A-2 (silty/clayey gravel and sand), A-3 (fine sand), A-4 to A-7 (silty and clayey soils).
- Subgroups: A-1-a, A-1-b, A-2-4, A-2-5, A-2-6, A-2-7, A-4, A-5, A-6, A-7-5, A-7-6.
- **Group Index (GI):** A numerical value that rates the quality of a soil as a subgrade material. GI = 0 (excellent) to 20+ (very poor).
- **GI formula:** GI = (F-35)[0.2 + 0.005(LL-40)] + 0.01(F-15)(PI-10)
  - Where F = percentage passing No. 200 sieve, LL = Liquid Limit, PI = Plasticity Index.
  - If any term is negative, set it to zero. If GI calculates negative, report as 0.
- Used for road subgrade classification in most African countries (including Uganda via MoWT).

**Visual-manual classification:**
- Field identification of soils from appearance, texture, colour, and behaviour when handled.
- Colour: Red/brown (laterite/iron-rich), dark grey/black (organic or expansive clay), white/light (chalk, calcium carbonate).
- Texture: Gritty (sand), smooth (silt), sticky/plastic (clay).
- Dilatancy test: Water appears on surface when shaken (silt) vs no response (clay).
- Dry strength: Crumbles easily (silt) vs hard to break (clay).
- Plasticity: Thread can be rolled to 3 mm (clay) vs crumbles before 3 mm (silt).

**Borehole log interpretation:**
- Stratum descriptions: Identify soil types at different depths.
- SPT N-values: Indicate density (granular) or consistency (cohesive).
- Water table: Depth below ground level, seasonal variation.
- Sample quality: Disturbed (classification only) vs undisturbed (strength/deformation testing).

### 1.2 Universal Formulas

**Group Index (GI) -- AASHTO:**

```
GI = (F - 35) * [0.2 + 0.005 * (LL - 40)] + 0.01 * (F - 15) * (PI - 10)
```

Where:
- F = % passing No. 200 sieve (0.075 mm)
- LL = Liquid Limit (%)
- PI = Plasticity Index (%)
- Each bracketed term: if negative, use zero
- If GI < 0, report as 0
- Typical range: 0 (excellent subgrade) to 20+ (very poor subgrade)

**Plasticity Index:**

```
PI = LL - PL
```

Where:
- LL = Liquid Limit (%)
- PL = Plastic Limit (%)
- PI = Plasticity Index (%)

**Activity of clay:**

```
Activity = PI / (% clay fraction, i.e. % < 0.002 mm)
```

Where Activity > 1.25 suggests expansive clay potential.

### 1.3 Figures & Diagrams

**Casagrande Plasticity Chart:** A plot of PI (y-axis) vs LL (x-axis) with the A-line (PI = 0.73*(LL-20)) separating clays (above) from silts (below), and the LL=50 line separating low-plasticity (L) from high-plasticity (H) soils. The U-line (PI = 0.9*(LL-8)) is the upper bound. The agent should understand that a soil plotting above the A-line and left of LL=50 is CL (low-plasticity clay), while one below the A-line and right of LL=50 is MH (high-plasticity silt).

**AASHTO Classification Chart:** A tabular decision tree: first check % passing No. 200 sieve (<= 35% = A-1 to A-3 range, > 35% = A-4 to A-7 range), then apply grading and plasticity criteria to determine the specific group. Within each group, calculate GI for subgrade rating.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Determine which classification system to use
  |-- Road/pavement design in Africa -> AASHTO (primary), USCS (supplementary)
  |-- Road/pavement design in UK -> BS 5930/BS EN ISO 14688 (primary)
  |-- General geotechnical -> USCS (primary)
  +-- If client specifies -> Use specified system

Step 3: Collect input data
  |-- From borehole logs: stratum descriptions, depths, SPT N-values
  |-- From lab tests: Atterberg limits (LL, PL, PI), grading analysis
  |-- From visual inspection: colour, texture, consistency
  +-- If lab data unavailable -> Visual-manual classification with flag

Step 4: Classify using grading data
  |-- Determine % passing each sieve size (37.5, 19, 9.5, 4.75, 2.0, 0.425, 0.075 mm)
  |-- Determine coarse-grained vs fine-grained (50% boundary on No. 200 sieve)
  |-- For AASHTO: Check against group criteria tables
  +-- For USCS: Determine primary group (G, S, M, C)

Step 5: Classify using plasticity data
  |-- Plot LL vs PI on Casagrande chart (USCS)
  |-- Apply AASHTO group criteria for plasticity
  |-- Calculate Group Index for AASHTO
  +-- Identify potential expansive soils (high PI, high Activity)

Step 6: Assign classification
  |-- AASHTO: Group (e.g., A-2-6) + GI (e.g., GI = 4)
  |-- USCS: Group symbol (e.g., CL)
  |-- Description: Engineering description (e.g., "Stiff reddish-brown lateritic clay")
  +-- Flag any classification uncertainties

Step 7: Build soil profile
  |-- Tabulate: Depth | Stratum | AASHTO | USCS | LL | PL | PI | GI
  |-- Identify layer boundaries and lateral variation
  +-- Assess suitability as subgrade material

Step 8: Run validation (Section 4 + country module Section M.5)

Step 9: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Classification is a starting point, not an end point.** The classification tells you the general type of soil, but engineering properties (strength, compressibility, permeability) vary within each classification group. Always supplement classification with test data.

**AASHTO and USCS can give different impressions.** A soil classified as A-2-6 (AASHTO) sounds reasonable for a subgrade, but the same soil classified as CL (USCS) may raise concerns about plasticity. Both systems provide useful information -- report both where possible.

**Laterite does not fit neatly into standard classification systems.** Lateritic soils are iron-rich tropical soils with unusual properties -- they can have high fines content but still perform well as subgrade/subbase because the fines are ceite-bonded aggregations, not free clay particles. Standard classification based on grading after compaction (which breaks down aggregations) may underestimate in-situ performance.

**Visual classification has value but has limitations.** A good field description by an experienced engineer is worth more than a poor lab test. But visual classification cannot determine Atterberg limits, grading, or CBR. Always recommend lab testing for design-critical classifications.

### 2.3 Common Errors

1. **Using grading from uncompacted sample for AASHTO classification.** AASHTO grading should be determined on the post-compaction grading, especially for lateritic soils where aggregations break down during compaction.
2. **Miscalculating Group Index.** Forgetting to set negative terms to zero, or reporting GI to unnecessary precision. GI should be reported as a whole number.
3. **Confusing USCS and AASHTO criteria.** The two systems use different sieve sizes and different plasticity criteria. Do not mix.
4. **Ignoring the A-7-5 vs A-7-6 distinction.** A-7-5 (LL - 30 >= PI) and A-7-6 (LL - 30 < PI) have very different engineering behaviours. A-7-6 is expansive and much more problematic as a subgrade.
5. **Not reporting classification with depth.** Soil classification changes with depth. A soil profile must show classification at each stratum, not just a single classification for the entire borehole.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Classification system | AASHTO | Road project in Africa | ASSUMED: AASHTO classification (standard for road design in Africa) | AASHTO is the standard for road subgrade classification in most African countries |
| Grading method | Wet sieving | Not specified | ASSUMED: Wet sieving per standard procedure | Dry sieving may over-estimate coarse fraction in clayey soils |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** When classification is ambiguous (borderline between groups), assign the poorer group.
4. **Flag for investigation:** Every assumed value includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Liquid Limit (LL) | 10 | 120 | % | Warn if outside range -- check test procedure |
| Plastic Limit (PL) | 5 | 80 | % | Warn if outside range -- check test procedure |
| Plasticity Index (PI) | 0 | 80 | % | Reject if negative (PL > LL indicates error) |
| % passing No. 200 sieve | 0 | 100 | % | Must be 0-100% |
| Group Index (GI) | 0 | 40 | -- | Warn if > 20 (very poor subgrade -- verify) |

### 4.2 Consistency Checks

- **PI = LL - PL:** Verify arithmetic consistency. PI must equal LL minus PL.
- **Grading monotonic:** Cumulative % passing must decrease with increasing sieve size (or remain constant). Non-monotonic data indicates testing error.
- **USCS vs AASHTO consistency:** Check that the two classifications are compatible (e.g., USCS = CL should correspond to AASHTO A-6 or A-7, not A-1).
- **Visual vs lab:** If visual classification differs significantly from lab classification, flag for review.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. |
| No lab data available | Classification based on visual description only | SENIOR REVIEW -- No laboratory data. Classification is preliminary. Recommend Atterberg limits and grading tests. |
| Expansive soil indicators | PI > 30, Activity > 1.25, A-7-6 classification | SENIOR REVIEW -- Potentially expansive soil at [depth]. Recommend swell test and specialist geotechnical advice. |
| Organic soil encountered | May be unsuitable as subgrade | SENIOR REVIEW -- Organic soil at [depth]. Not suitable as subgrade. Recommend removal and replacement. |
| Classification conflicts between samples | Significant variability within a section | SENIOR REVIEW -- High variability in soil classification within section. Additional sampling recommended. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Borehole log data | structured text | -- | Yes | Skill #7 / User | Stratum descriptions, depths, SPT N-values |
| Lab test data | table | -- | No | User / Lab | Atterberg limits (LL, PL, PI), grading analysis |
| Sample depth | number | m | No | User / Lab | Depth from which sample was taken |
| Visual description | text | -- | No | User / Field | Field description of soil |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Soil classification USCS | category | -- | Geotechnical reporting | USCS group symbol (e.g., CL, SM) |
| Soil classification AASHTO | category | -- | Skill #10, pavement design | AASHTO group (e.g., A-2-6) with Group Index |
| Soil profile | table | -- | Skill #10, User | Depth vs classification, properties |
| Engineering description | text | -- | User, design reports | Full engineering soil description |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda country module | Markdown |
| `modules/uk.md` | UK country module | Markdown |

---

## 7. Procedure

### Step 1: Gather Input Data
Collect borehole logs, test pit records, and laboratory test results. Note what data is available vs missing.

### Step 2: Load Country Module
Identify jurisdiction and load the corresponding module.

### Step 3: Visual Classification
Review stratum descriptions and field notes. Apply visual-manual classification methods for initial assessment.

### Step 4: Laboratory Classification
Using Atterberg limits and grading data, classify each sample using the appropriate system(s).

### Step 5: Build Soil Profile
Tabulate classification with depth. Identify layer boundaries, lateral variation, and any anomalies.

### Step 6: Assess Engineering Significance
Note soils that may be problematic (expansive, organic, collapsible) and those suitable for specific pavement layers.

### Step 7: Run Validation
Execute universal checks (Section 4) and country-specific checks (Module Section M.5).

### Step 8: Check Escalation Triggers
Scan universal triggers (Section 5) and country-specific triggers (Module Section M.6).

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
SOIL CLASSIFICATION -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Classification system used]
Date: [YYYY-MM-DD]
============================================================

INPUTS
------
Data source:            [Borehole/test pit reference]
Tests available:        [List: Atterberg limits, grading, visual only]
Classification system:  [AASHTO / USCS / both]

SOIL PROFILE
------------
[Table: Depth (m) | Stratum Description | AASHTO | GI | USCS | LL | PL | PI]

ENGINEERING DESCRIPTION
-----------------------
[Summary of soil conditions along alignment or at investigation point]

SUBGRADE SUITABILITY
--------------------
[Assessment of suitability for each stratum as subgrade material]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with warning flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

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

- **Not covered:** Rock classification (RQD, RMR, Q-system). Soil classification for dam or building foundations. Detailed mineralogical analysis.
- **Simplifications:** Standard classification systems are used; lateritic soils may not be fully captured by AASHTO/USCS alone. Activity calculations require clay fraction data which may not always be available.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, Rwanda, South Africa, Ghana, Nigeria

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
