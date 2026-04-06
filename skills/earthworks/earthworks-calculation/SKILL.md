---
name: "earthworks-calculation"
description: "Use when calculating cut and fill volumes from road cross-sections. Requires cross-section geometry from Skill #17 (Cross-Section Design) and vertical alignment from Skill #15. Outputs feed into Skill #27 (Mass Haul) for optimization and Skill #50 (Engineer's Estimate) for costing."
---

# Earthworks Calculation

> **Skill ID:** 26
> **Domain:** Earthworks
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Compute cut and fill areas from road cross-sections, then calculate earthworks volumes between stations using the average end area method or prismoidal formula. This skill translates the difference between existing ground levels and design formation levels into volumetric quantities, applies shrinkage and bulking factors, and determines the net earthworks balance for a road project -- identifying whether borrow material is needed or surplus spoil will be generated.

## When to Use This Skill

- **Use when:** Cross-section data is available (design formation levels and existing ground profiles) and earthworks volumes are needed for mass haul planning, cost estimation, or construction quantity take-off.
- **Do not use when:** Only longitudinal profile data is available without cross-sections. Not for structural excavation (foundations, bridge piers) -- those are separate quantity items.
- **Prerequisite skills:** Skill #17 (Cross-Section Design) -- provides standard cross-section dimensions, side slopes, and formation width. Skill #15 (Vertical Alignment) -- defines the design formation level at each station. Skill #12 (Survey Data for Design) -- provides existing ground cross-section profiles.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Cross-section elements for earthworks:**
- **Existing ground profile:** The natural ground surface surveyed at each station, typically at 20-50m intervals along the alignment.
- **Design formation level:** The finished road surface level (or subgrade level) defined by the vertical alignment (Skill #15).
- **Cut area:** The area between the existing ground and the design level where the existing ground is above the design level -- material to be excavated.
- **Fill area:** The area between the existing ground and the design level where the existing ground is below the design level -- material to be placed and compacted.
- **Side slopes:** Cut slopes (typically 1V:1H to 1V:2H depending on material) and fill slopes (typically 1V:1.5H to 1V:2H) define the earthworks boundaries beyond the formation width. See Skill #17 for standard values.
- **Bench widths:** On high cuts or fills, benches (horizontal steps) may be required for stability. Benches increase the total earthworks volume.

**Volume calculation methods:**

**Average End Area Method:**
The most common method for routine earthworks calculation. The volume between two adjacent cross-sections is:

```
V = (A1 + A2) / 2 x L
```

Where:
- V = volume between stations (m3)
- A1 = area at station 1 (m2)
- A2 = area at station 2 (m2)
- L = distance between stations (m)

This method slightly overestimates volumes when cross-section areas are changing rapidly but is acceptable for most road design purposes, especially when stations are regularly spaced at 20-25m intervals.

**Prismoidal Formula:**
A more accurate method, especially for irregular or rapidly changing sections:

```
V = L/6 x (A1 + 4Am + A2)
```

Where:
- Am = cross-section area at the midpoint between the two stations
- Other variables as above

The prismoidal formula gives exact results for prismoidal solids (sections that change linearly in all dimensions between stations).

**Prismoidal Correction:**
When the midpoint section (Am) is not available, a prismoidal correction can be applied to the average end area result:

```
C = L/12 x (w1 - w2) x (h1 - h2)
```

Where:
- C = prismoidal correction (subtract from average end area volume)
- w1, w2 = widths of the earthworks sections at stations 1 and 2
- h1, h2 = centre-line depths of cut or fill at stations 1 and 2

**Shrinkage factor:**
When soil is excavated (cut) and placed as compacted fill, the volume decreases because compaction reduces void space. The shrinkage factor accounts for this:

```
Fill volume required (compacted) x Shrinkage factor = Cut volume needed (in-situ)
```

Typical shrinkage factors: 1.1 to 1.3 depending on soil type. A factor of 1.2 means that 1.2 m3 of in-situ cut material is needed to produce 1.0 m3 of compacted fill.

**Bulking factor:**
When soil is excavated, it expands (loosens) and occupies a greater volume than in-situ. The bulking factor is relevant for haulage volume estimation:

```
Loose volume = In-situ volume x Bulking factor
```

Typical bulking factors: 1.2 to 1.4. A factor of 1.3 means 1.0 m3 in-situ becomes 1.3 m3 loose (for truck capacity planning).

**Net earthworks balance:**
- Total adjusted fill = Total fill volume (compacted) x Shrinkage factor
- Net balance = Total cut volume (in-situ) - Total adjusted fill
- If net balance > 0: project has surplus cut -- material must be spoiled or used elsewhere
- If net balance < 0: project has a deficit -- borrow material is needed
- If net balance is approximately 0 (within ~10%): project is "balanced"

### 1.2 Universal Formulas

**Average end area volume:**
```
V = (A1 + A2) / 2 x L
```
Variables: A1, A2 in m2; L in m; V in m3.
Valid for: All regular cross-section intervals. Most accurate when A1 and A2 are similar.

**Prismoidal volume:**
```
V = L/6 x (A1 + 4Am + A2)
```
Variables: A1, Am, A2 in m2; L in m; V in m3.
Valid for: Any cross-section pair. Requires midpoint cross-section data.

**Prismoidal correction:**
```
C = L/12 x (w1 - w2) x (h1 - h2)
```
Variables: w1, w2 in m; h1, h2 in m; L in m; C in m3.
Apply: Subtract C from average end area volume to approximate prismoidal volume.

**Shrinkage-adjusted fill:**
```
Adjusted fill = Compacted fill volume x Shrinkage factor
```

**Net earthworks balance:**
```
Net = Total cut (in-situ) - Total fill (shrinkage-adjusted)
```

### 1.3 Figures & Diagrams

**Typical cross-section for earthworks:** At any station, the cross-section shows the existing ground profile (surveyed) and the design formation level (from Skill #15/17). Where existing ground is above formation level, the enclosed area is "cut." Where formation level is above existing ground, the enclosed area is "fill." Mixed sections (part cut, part fill) are common on side-hill terrain -- the cut and fill areas are computed separately.

**Mass diagram input:** Station-by-station volumes (cut positive, fill negative) computed by this skill feed directly into the mass haul diagram (Skill #27). The cumulative sum of these volumes produces the mass ordinate curve.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  +-- Cross-section data at regular intervals (from Skill #12, Skill #17)
  +-- Formation levels (from Skill #15)
  +-- Side slope specifications (from Skill #17 country module)
  +-- Load country module for shrinkage/bulking factors

Step 2: Select calculation method
  +-- Regularly spaced stations, moderate variation --> Average end area
  +-- Irregular spacing or rapidly changing sections --> Prismoidal formula
  +-- Preliminary estimate (no midpoint data) --> Average end area with prismoidal correction

Step 3: Calculate areas at each station
  +-- Separate cut area and fill area
  +-- Mixed sections: compute both independently
  +-- Record station, chainage, cut area (m2), fill area (m2)

Step 4: Calculate volumes between stations
  +-- Apply selected method (average end area or prismoidal)
  +-- Record segment volumes for cut and fill separately

Step 5: Sum total volumes
  +-- Total cut volume (in-situ, m3)
  +-- Total fill volume (compacted, m3)

Step 6: Apply shrinkage factor to fill
  --> See country module, Section M.2 for soil-specific factors
  +-- Adjusted fill = Fill volume x Shrinkage factor

Step 7: Compute net earthworks balance
  +-- Net = Total cut - Adjusted fill
  +-- Classify: balanced (|net| < 10% of total), borrow needed (net < 0), spoil generated (net > 0)

Step 8: Flag borrow or spoil requirements
  +-- If borrow needed --> Flag for Skill #28 (Material Suitability) assessment of borrow source
  +-- If spoil generated --> Note spoil disposal requirement

Step 9: Output station-by-station volumes for Skill #27 (Mass Haul)
```

### 2.2 Professional Judgment (Universal)

**Use average end area for most practical purposes.** The prismoidal method gives marginally more accurate results but requires midpoint cross-section data that is often not available. For road design at 20-25m cross-section intervals, the average end area method is standard practice and produces results within 2-5% of prismoidal volumes.

**Always apply shrinkage factors.** Omitting shrinkage is one of the most common errors in earthworks estimation. A project that appears balanced on geometric volumes alone may require significant borrow when shrinkage is applied. Typical shrinkage of 1.15-1.30 means 15-30% more cut is needed than the geometric fill volume.

**Cross-section interval matters.** Closer spacing gives more accurate volumes. Use 20m intervals in areas of rapidly changing terrain (transitions from cut to fill, curved alignment). Use 50m intervals only in flat, uniform terrain.

**Flag cut-fill imbalance early.** If the net earthworks balance shows more than 10% surplus or deficit relative to total quantities, this significantly affects project cost and should be reported to the design team for possible vertical alignment adjustment.

### 2.3 Common Errors

1. **Forgetting to apply shrinkage factor to fill volumes.** This consistently underestimates the actual material needed and leads to unexpected borrow requirements during construction.
2. **Confusing in-situ volume with compacted volume with loose volume.** In-situ is the volume in the ground before excavation. Compacted is the volume after placement and compaction (fill). Loose is the volume during haulage. Each is different.
3. **Using excessively wide cross-section spacing.** Spacing > 50m in undulating terrain can introduce significant volume errors (overestimate by 10-20%).
4. **Not separating cut and fill on mixed sections.** On side-hill sections, both cut and fill occur at the same station. They must be computed and tracked separately.
5. **Applying bulking factor instead of shrinkage factor to fill.** Bulking applies to haulage volume estimation (truck loads), not to earthworks balance calculation.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Calculation method | Average end area | Not specified | No flag (standard method) | Most common and acceptable for road design |
| Cross-section interval | 25 m | Not specified | ASSUMED: 25m cross-section interval | Typical for detailed road design |
| Shrinkage factor | 1.20 | Soil type not specified | ASSUMED: Shrinkage factor 1.20 (general fill). Verify with soil data from Skill #8. | Mid-range value; actual depends on soil type |
| Bulking factor | 1.30 | Not specified | ASSUMED: Bulking factor 1.30 (general excavation). For haulage volume only. | Mid-range value for mixed soils |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state shrinkage factor explicitly** in output. Never silently assume.
3. **Conservative direction:** Use higher shrinkage factor when in doubt (requires more cut to fill, safer estimate).
4. **Flag for investigation:** Shrinkage factors should be verified with actual soil test data from Skill #8 and Skill #9.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Cut area (per station) | 0 | 500 | m2 | Warn if > 200 (large cut); reject if > 500 |
| Fill area (per station) | 0 | 500 | m2 | Warn if > 200 (large fill); reject if > 500 |
| Cross-section interval | 10 | 100 | m | Warn if > 50 (accuracy concern); reject if > 100 |
| Shrinkage factor | 1.00 | 1.50 | -- | Warn if > 1.35 (unusual); reject if > 1.50 |
| Bulking factor | 1.05 | 1.60 | -- | Warn if > 1.45 (unusual); reject if > 1.60 |
| Volume per segment | 0 | 25,000 | m3 | Warn if > 10,000 (very large segment volume) |

### 4.2 Consistency Checks

- **Cut and fill areas vs formation level:** If formation level is above existing ground, the section must show fill (not cut). Reverse indicates data error.
- **Volume vs area magnitude:** Volume should be approximately (average area) x interval. If volume deviates by more than 20% from this estimate, check calculation.
- **Running total direction:** If cumulative cut suddenly reverses without a corresponding terrain change, check for data entry errors.
- **Shrinkage-adjusted fill vs cut:** After applying shrinkage, the adjusted fill should be larger than the geometric fill. If it is smaller, the shrinkage factor is being applied incorrectly (inverted).

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks. Earthworks volume calculation methods are universal; country-specific aspects are primarily shrinkage factors and side slope specifications.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Cut-fill imbalance > 10% of total volume | Cost and logistics impact | SENIOR REVIEW -- Net earthworks imbalance [X] m3 ([Y]% of total). Consider vertical alignment adjustment to improve balance. |
| Borrow volume > 20% of total fill | Significant external material needed | SENIOR REVIEW -- Borrow requirement of [X] m3. Assess borrow pit sources (Skill #28 for material suitability). |
| Single station cut area > 200 m2 | Very deep cut -- stability concern | SENIOR REVIEW -- Cut area [X] m2 at station [Y]. Check slope stability and consider benching. |
| Shrinkage factor assumed (not from test data) | Volume estimate uncertainty | NOTE -- Shrinkage factor [X] is assumed. Verify with geotechnical test data from Skill #8/9. |
| Cross-section interval > 50 m | Volume accuracy concern | NOTE -- Cross-section interval [X]m may reduce accuracy in variable terrain. Consider additional sections. |
| No country module available | Cannot apply country-specific factors | SENIOR REVIEW -- No country module for [jurisdiction]. Using universal shrinkage factor 1.20. |

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
| Cross-section data | list of profiles | m2 | Yes | Skill #12, Skill #17 | Cut area and fill area at each station |
| Formation levels | list of numbers | m | Yes | Skill #15 | Design formation level at each station |
| Station chainages | list of numbers | m | Yes | Skill #15 | Chainage of each cross-section |
| Side slopes (cut) | ratio | H:V | No | Skill #17 | Cut slope ratios for area calculation |
| Side slopes (fill) | ratio | H:V | No | Skill #17 | Fill slope ratios for area calculation |
| Formation width | number | m | No | Skill #17 | Width of road formation at each station |
| Soil type | text | -- | No | Skill #8 | For shrinkage factor selection |
| Shrinkage factor | number | -- | No | Skill #9 | If determined from soil testing |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Station-by-station cut volumes | list of numbers | m3 | Skill #27 (Mass Haul) | Cut volume at each station interval |
| Station-by-station fill volumes | list of numbers | m3 | Skill #27 (Mass Haul) | Fill volume (before shrinkage) at each station interval |
| Total cut volume | number | m3 | Skill #50 (Engineer's Estimate) | Sum of all cut volumes |
| Total fill volume (compacted) | number | m3 | Skill #50 (Engineer's Estimate) | Sum of all fill volumes before shrinkage |
| Total fill volume (shrinkage-adjusted) | number | m3 | Skill #50 (Engineer's Estimate) | Fill volume including shrinkage factor |
| Net earthworks balance | number | m3 | Skill #27, User | Cut minus adjusted fill (positive = surplus, negative = borrow needed) |
| Borrow volume required | number | m3 | Skill #27, Skill #28 | Volume of external material needed (if net balance is negative) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific shrinkage factors and soil context | Markdown |
| `modules/uk.md` | UK-specific earthworks classification and context | Markdown |
| `modules/kenya.md` | Kenya RDM 3.3 Ch5 earthworks and Standard Specification context | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with universal shrinkage factor of 1.20.

### Step 2: Confirm Design Inputs
Receive cross-section data (cut and fill areas at each station), station chainages, and formation levels from Skills #12, #15, and #17. Confirm shrinkage factor from Skill #8/9 or country module.

### Step 3: Select Calculation Method
Choose average end area (default) or prismoidal formula based on data availability and required accuracy. For routine design, average end area is standard.

### Step 4: Calculate Cut and Fill Areas at Each Station
If raw cross-section profiles are provided (not pre-computed areas), calculate the cut area and fill area at each station from the difference between existing ground and design formation level.

### Step 5: Calculate Volumes Between Stations
Apply the selected method to compute volumes between each pair of adjacent stations. Track cut volumes and fill volumes separately.

### Step 6: Sum Total Volumes
Add all segment cut volumes to get total cut. Add all segment fill volumes to get total fill (compacted).

### Step 7: Apply Shrinkage Factor
Multiply total fill volume by the shrinkage factor to get the shrinkage-adjusted fill volume.

### Step 8: Compute Net Earthworks Balance
Net = Total cut - Shrinkage-adjusted fill. Classify the project as balanced, borrow-needed, or spoil-generating.

### Step 9: Run Validation
All universal + country-specific checks from Section 4 and the country module.

### Step 10: Produce Output
Format per Section 8. Include station-by-station volumes for Skill #27 input.

---

## 8. Output Format

```
============================================================
EARTHWORKS CALCULATION -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard or "Universal methods"]
Date: [YYYY-MM-DD]
============================================================

DESIGN PARAMETERS
-----------------
Calculation method:          [Average end area / Prismoidal]
Cross-section interval:      [X] m
Shrinkage factor:            [X] ([source: soil test / assumed])
Bulking factor:              [X] (for haulage estimation only)
Number of stations:          [N]
Alignment length:            [X] m

STATION-BY-STATION VOLUMES
--------------------------
Station   Chainage  Cut Area  Fill Area  Cut Vol   Fill Vol
          (m)       (m2)      (m2)       (m3)      (m3)
--------  --------  --------  ---------  --------  --------
1         0+000     [A_c]     [A_f]      --        --
2         0+025     [A_c]     [A_f]      [V_c]     [V_f]
...

EARTHWORKS SUMMARY
------------------
Total cut volume (in-situ):          [X] m3
Total fill volume (compacted):       [X] m3
Shrinkage-adjusted fill:             [X] m3
Net earthworks balance:              [X] m3
Status:                              [Balanced / Borrow needed / Surplus spoil]
Borrow volume required:              [X] m3 (if applicable)
Spoil volume for disposal:           [X] m3 (if applicable)

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
PRELIMINARY ESTIMATE -- FOR PROFESSIONAL REVIEW
This output is a volume estimate based on cross-section data.
Field verification and detailed design review required.
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7
- **Kenya:** modules/kenya.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Cross-section area computation from raw survey points (assumes areas are pre-computed or simple geometry). Rock excavation vs common excavation classification. Topsoil stripping volumes. Subgrade improvement/replacement volumes (Skill #28 determines suitability, but replacement quantity calculation is project-specific).
- **Simplifications:** Uses two primary methods (average end area and prismoidal). Does not implement grid methods or digital terrain model (DTM) based volume computation used in modern CAD software. Shrinkage factors are applied uniformly -- in practice, different soil layers may have different factors.
- **Country modules available:** Uganda, UK, Kenya
- **Country modules needed:** Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with average end area and prismoidal methods, shrinkage/bulking factors, Uganda and UK modules |
