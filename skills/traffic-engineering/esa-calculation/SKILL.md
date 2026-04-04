---
name: "esa-calculation"
description: "Use when converting traffic data into cumulative design ESAs/ESALs for pavement design. Requires AADT from Skill #2, heavy vehicle percentage from Skill #3, damage factors from Skill #4, and growth rate from Skill #6. Outputs cumulative ESAs and traffic class — the primary input for pavement design (Skills #21-23)."
---

# ESA/ESAL Calculation

> **Skill ID:** 5
> **Domain:** Traffic Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Convert traffic data into cumulative design traffic loading expressed in Equivalent Standard Axles (ESAs) or Equivalent Single Axle Loads (ESALs) for pavement design. This skill takes AADT, heavy vehicle percentage, vehicle damage factors, and growth projections to calculate the total number of standard axle repetitions the pavement must withstand over its design life. The output -- cumulative design ESAs and traffic class -- is the primary input for pavement structural design (Skills #21-23).

## When to Use This Skill

- **Use when:** Traffic data (AADT, vehicle classification, damage factors) has been assembled and needs to be converted into a single design traffic loading value for pavement design.
- **Do not use when:** Only planning-level traffic estimates are needed (use Skill #6 for forecasting only). Also not needed if the cumulative ESAs have already been determined.
- **Prerequisite skills:** Skill #2 (Traffic Data Processing) provides AADT. Skill #3 (Vehicle Classification) provides heavy vehicle percentage. Skill #4 (Axle Load Surveys) provides vehicle damage factors. Skill #6 (Traffic Forecasting) provides growth rate. However, this skill can process inputs provided directly by the user.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Equivalent Standard Axle (ESA):**

The ESA is the fundamental unit of pavement loading. It converts the diverse range of vehicle axle loads into a single equivalent measure of pavement damage. One ESA represents one application of the standard axle load (8160 kg / 80 kN for TRL/MoWT, or 18,000 lb / 80 kN for AASHTO). All traffic is expressed as the number of ESAs it is equivalent to.

**Equivalent Single Axle Load (ESAL):**

The AASHTO term for the same concept as ESA. While the methodology differs slightly (AASHTO uses structural number and terminal serviceability in its equivalency factor calculation), the fundamental principle is the same: express all traffic as equivalent passes of the standard axle. For TRL/MoWT-based design (used in Uganda), the term ESA is used. For AASHTO-based design, ESAL is used.

**Standard Axle:**

| Standard | Standard Axle | Notes |
|----------|--------------|-------|
| TRL / MoWT | 8160 kg (80 kN) | Dual-tyre single axle |
| AASHTO | 18,000 lb (80 kN / 8.2 tonnes) | Dual-tyre single axle |

The standard axle is essentially the same load (80 kN) but expressed in different units by different standards.

**Cumulative Design Traffic:**

The total ESAs accumulated in the design lane over the design period. This accounts for:
- Daily traffic volume and heavy vehicle proportion
- Vehicle damage factors (ESAs per heavy vehicle)
- Growth over the design period (compound growth)
- Directional and lane distribution

**Traffic Class:**

Many pavement design catalogues group cumulative ESAs into traffic classes. For example, MoWT uses classes T1 through T8, where T1 is < 0.3 million ESAs and T8 is 17-30 million ESAs. The traffic class determines which page of the design catalogue to use.

### 1.2 Universal Formulas

**Daily ESAs in the design direction:**
```
Daily_ESA = AADT x HV% x D x VDF / 100
```

Where:
- AADT = Annual Average Daily Traffic (both directions)
- HV% = Heavy vehicle percentage
- D = Directional factor (typically 0.5 for balanced, up to 0.7 for directional)
- VDF = Average vehicle damage factor (ESA per heavy vehicle)

**Cumulative design traffic (compound growth):**
```
DT = T x 365 x [(1 + r/100)^p - 1] / (r/100)
```

Where:
- DT = cumulative design traffic (ESAs) for one direction
- T = average daily traffic in a vehicle category in the first year (one direction)
- r = average assumed growth rate (percent per annum)
- p = design period (years)

This is the MoWT Equation 1 formulation. Note: T is the average daily value for the first year, which is the value at opening to traffic, not the count-year value.

### 1.3 Figures & Diagrams

**ESA Calculation Flowchart:** The process flows from AADT (top) through vehicle classification, damage factor application, directional/lane distribution, and compound growth projection to arrive at cumulative design ESAs (bottom). Each step introduces a multiplication factor that transforms the raw traffic count into the design loading.

**Traffic Class Lookup:** A horizontal bar chart showing traffic classes T1-T8 on a logarithmic ESA scale. The calculated cumulative ESAs are plotted on this scale to determine the traffic class, which then determines the pavement structure from the design catalogue.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Assemble traffic inputs
  |- AADT (from Skill #2 or User) -> Required
  |- Heavy vehicle % (from Skill #3 or User) -> Required
  |- Vehicle damage factors (from Skill #4 or country module defaults) -> Required
  |- Growth rate (from Skill #6 or User) -> Required (assume if not available)
  |- Design period (from User or Skill #13) -> Required (default 15-20 years)
  |- Road width / type (from User) -> Needed for lane/directional factors
  \- If any input missing -> Apply country module defaults; flag each assumption

Step 3: Determine methodology
  |- MoWT/TRL method -> Use Equation 1 with ESA and damage exponents from Table 2.2
  |- AASHTO method -> Use ESAL with load equivalency from AASHTO tables
  |- WIM-based method -> Daily ESAs from WIM data, project with Equation 1
  \- Country module determines which method applies

Step 4: Calculate daily ESAs
  |- Method (a) -- Vehicle class approach:
     For each vehicle class:
       Daily_ESA_class = (daily_count_class x VDF_class) in design direction
     Daily_ESA_total = Sum of all classes
  |- Method (b) -- Aggregate approach:
     Daily_ESA = AADT/2 x HV% x VDF_average (one direction)
  \- Method (c) -- WIM approach:
     Daily_ESA from WIM data directly (already in ESAs per direction)

Step 5: Apply directional and lane distribution factors
  |- See country module Table 2.4 for MoWT
  |- Factor depends on road width and type
  \- Adjust ESAs to design lane loading

Step 6: Project over design period
  |- Apply compound growth formula (Equation 1)
  |- If multiple growth periods -> Calculate each period separately and sum
  |- Cumulative ESAs = T x 365 x [(1+r/100)^p - 1] / (r/100)
  \- T = daily ESAs in design direction from Step 4/5

Step 7: Assign traffic class
  |- Look up cumulative ESAs in country module traffic class table
  |- If near a boundary -> Flag for sensitivity analysis
  \- Report the traffic class for catalogue lookup

Step 8: Run validation (Section 4 + country module Section M.5)

Step 9: Check escalation triggers (Section 5 + country module Section M.6)

Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**The growth rate has enormous impact on cumulative ESAs.** A 1% change in growth rate can change the cumulative ESAs by 15-25% over a 20-year design period. Always run sensitivity analysis on the growth rate (low/medium/high scenarios).

**Vehicle damage factors dominate the calculation.** For a given traffic volume, doubling the VDF doubles the design traffic. Site-specific damage factors from Skill #4 are far more reliable than regional defaults. If no survey data exists, flag this prominently.

**Design lane vs total road loading.** The design traffic loading applies to the most heavily loaded lane, not the total road. On a narrow two-lane road, both directions may overlap on the same wheel paths. On a wide dual carriageway, traffic concentrates in the slow lane.

**First-year traffic, not count-year traffic.** The growth formula uses traffic at time of opening to traffic, not at the time of counting. If there is a 3-year gap between counting and opening, the count-year AADT must be grown forward by 3 years.

### 2.3 Common Errors

1. **Confusing total ESAs with design-lane ESAs.** The design is based on ESAs in the design lane, which accounts for directional and lane distribution. Using total ESAs without the distribution factor over-designs.
2. **Using growth rate as a decimal when formula expects percentage, or vice versa.** Check whether the formula uses r (as percentage, e.g., 5) or r (as decimal, e.g., 0.05). MoWT Equation 1 uses r/100.
3. **Not accounting for construction period.** If the road takes 3 years to build, the design period starts at opening, but the base AADT must be the projected AADT at opening, not the survey AADT.
4. **Applying a single average VDF when directional VDFs differ significantly.** If loaded trucks go one way and empty trucks return, the design direction ESAs could be 3-5x the average.
5. **Not checking the traffic class boundary.** If cumulative ESAs are close to a class boundary (e.g., 5.8 million ESAs near the T5/T6 boundary at 6 million), a small change in assumptions changes the pavement structure. Flag for sensitivity analysis.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Design period | 15-20 years | Not specified | -- ASSUMED: Design period = [15/20] years. Confirm with client or country standard. | MoWT Table 2.1 guidance |
| Growth rate | 4% | Not specified | -- ASSUMED: Growth rate = 4% per annum. This significantly affects design traffic. Verify with traffic forecasting (Skill #6). | Conservative mid-range estimate |
| Directional split | 50/50 | Not specified | -- ASSUMED: 50/50 directional split. Verify with survey data. | Balanced assumption |
| VDF (no survey) | Country module default | No Skill #4 data | -- ASSUMED: Default VDF from country module. Site-specific axle load survey recommended. | Country-specific default |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Use higher ESA estimates (leads to thicker pavement, more conservative).
4. **Flag for investigation:** Growth rate and VDF assumptions should always be flagged prominently as they dominate the calculation.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Cumulative ESAs | 10,000 | 50,000,000 | ESA | Warn if > 30M (exceeds MoWT catalogue range); warn if < 100,000 (very light, consider gravel road) |
| Growth rate | 0 | 15 | % | Warn if > 10% (unusually high sustained growth) |
| Design period | 5 | 30 | years | Warn if outside 10-20 (non-standard period) |
| Heavy vehicle % | 1 | 80 | % | Warn if > 50% (verify -- unusual for most roads) |
| VDF average | 0.5 | 15 | ESA/HV | Warn if > 10 (extremely heavily loaded fleet) |

### 4.2 Consistency Checks

- **ESA magnitude vs road class:** Trunk roads should typically be T4-T7 (1.5-17M ESAs). District roads should typically be T1-T3 (<1.5M ESAs). Flag mismatches.
- **Growth rate vs traffic level:** Very high growth rates on already high-volume roads lead to unrealistic future volumes. Check that design-year AADT is physically reasonable.
- **Cross-check with Skill #6:** If Skill #6 provides growth rate, verify consistency with the rate used here.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific tables | SENIOR REVIEW -- No country module. Using generic ESA methodology. |
| Default VDFs used (no survey) | Design based on assumed damage factors | SENIOR REVIEW -- No axle load survey data. Default VDFs assumed. Recommend survey for detailed design. |
| ESAs near traffic class boundary | Small change affects pavement structure | NOTE -- Cumulative ESAs ([X] million) are near the T[X]/T[X+1] boundary. Sensitivity analysis recommended. |
| ESAs > 30 million | Exceeds MoWT catalogue range | SENIOR REVIEW -- Design traffic exceeds 30 million ESAs. MoWT catalogue structures may not be adequate. Consider mechanistic analysis. |
| Growth rate assumed | No traffic forecast available | NOTE -- Growth rate of [X]% assumed. This has major impact on design. Verify with traffic forecasting analysis (Skill #6). |

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
| AADT | number | vpd | Yes | Skill #2 | Annual Average Daily Traffic (both directions) |
| Heavy vehicle percentage | number | % | Yes | Skill #3 | Proportion of heavy vehicles |
| Vehicle damage factors | table | ESA/vehicle by class | Yes | Skill #4 (or defaults) | Average VDF for each vehicle class |
| Growth rate | number | % per annum | Yes | Skill #6 or User | Annual traffic growth rate |
| Design period | number | years | Yes | Skill #13 or User | Pavement design life |
| Road width / type | number/category | m | Yes | User | Paved width for Table 2.4 factors |
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Directional split | number | % | No | Skill #2 | Proportion in design direction |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Cumulative design ESAs | number | ESA | Skills #21, #22, #23 (pavement design) | Total ESAs in design lane over design period |
| Traffic class | category | T1-T8 (MoWT) | Skills #21, #22, #23 (pavement design) | Design catalogue traffic class |
| Design traffic loading | number | ESA/lane | Skills #21, #22, #23 (pavement design) | ESAs in the design lane after directional/lane factors |
| Daily ESAs per direction | number | ESA/day | User | Daily ESAs in the design direction |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda ESA calculation methodology and MoWT tables | Markdown |
| `modules/uk.md` | UK msa calculation methodology | Markdown |
| `tables/uganda_load_equivalency_factors.json` | MoWT Table 2.3 load equivalency factors | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load the corresponding module for formulas, tables, and traffic classes.

### Step 2: Assemble Inputs
Gather AADT, heavy vehicle %, VDFs, growth rate, design period, and road width. Flag any missing inputs with defaults.

### Step 3: Calculate Daily ESAs
Apply VDFs to daily heavy vehicle counts to get daily ESAs in the design direction.

### Step 4: Apply Directional and Lane Factors
Use country module Table 2.4 to adjust ESAs for design lane loading based on road width and type.

### Step 5: Project Over Design Period
Apply compound growth formula (Equation 1) to calculate cumulative ESAs.

### Step 6: Assign Traffic Class
Look up cumulative ESAs in country module traffic class table (Table 2.5).

### Step 7: Validate and Check Escalation
Run universal and country-specific checks. Flag boundary cases.

### Step 8: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
ESA/ESAL CALCULATION -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard -- from country module]
Date: [YYYY-MM-DD]
============================================================

INPUTS
------
AADT (both directions):           [X] vpd (source: [Skill #2 / User])
Heavy Vehicle %:                  [X]% (source: [Skill #3 / User])
Vehicle Damage Factor (avg):      [X] ESA/HV (source: [Skill #4 / default])
Growth Rate:                      [X]% per annum (source: [Skill #6 / User])
Design Period:                    [X] years (source: [User])
Paved Road Width:                 [X] m
Road Type:                        [Single carriageway / Dual carriageway]

CALCULATION
-----------
Step 1: Daily heavy vehicles (one direction)
  = AADT x HV% x directional factor
  = [X] x [X]% x [X] = [X] HV/day

Step 2: Daily ESAs (one direction)
  = Daily HV x VDF
  = [X] x [X] = [X] ESA/day

Step 3: Design traffic loading factor (Table 2.4)
  Road width [X]m -> Factor: [description]
  Design ESAs/day = [X]

Step 4: Cumulative ESAs (Equation 1)
  DT = T x 365 x [(1+r/100)^p - 1] / (r/100)
  DT = [X] x 365 x [(1+[X]/100)^[X] - 1] / ([X]/100)
  DT = [X] million ESAs

RESULT
------
Cumulative Design ESAs:           [X] million ESAs
Traffic Class (Table 2.5):        T[X] ([range] million ESAs)

SENSITIVITY ANALYSIS
--------------------
| Growth Rate | Cumulative ESAs | Traffic Class |
|-------------|----------------|---------------|
| [r-2]%      | [X] million    | T[X]          |
| [r]%        | [X] million    | T[X]          |
| [r+2]%      | [X] million    | T[X]          |

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

ESCALATION FLAGS
----------------
[Any flags or "None"]

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

- **Not covered:** AASHTO mechanistic-empirical (MEPDG) traffic analysis. Axle load spectra-based analysis (beyond simple VDF approach). Seasonal loading variation effects.
- **Simplifications:** Growth rate is assumed constant over design period (no multi-period growth modelling in the basic procedure). Lane distribution uses table lookup rather than site-specific measurement.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia, Rwanda, South Africa, Nigeria, Ghana

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
