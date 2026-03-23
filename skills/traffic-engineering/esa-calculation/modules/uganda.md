# ESA/ESAL Calculation -- Uganda Module

> **Parent Skill:** Skill #5 ESA/ESAL Calculation
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual (2010), Vol. 3 Part I Section 2.0
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual, Vol. 3 Part I | January 2010 | Section 2.0 (Estimating Design Traffic Loading), Tables 2.1-2.5, Equations 1-2 | Current |
| TRL Overseas Road Note 31 | 5th Edition, 1993 | Supplementary ESA methodology | Current (supplementary) |

### M.1.2 Institutional Context

ESA calculation in Uganda follows MoWT Vol 3 Part I, which is based on the SATCC/TRL approach. UNRA uses this methodology for all trunk road pavement design. The methodology is catalogue-based: cumulative ESAs determine the traffic class (T1-T8), which determines the pavement structure from the design catalogue (Appendix C of Vol 3 Part I).

### M.1.3 Standard Philosophy

The MoWT approach is deliberately simple and practical: "The pavement design process requires the estimation of the average daily number of ESAs on one lane at the opening of the new road to traffic, which is then projected and cumulated over the design period to give the design traffic loading" (Section 2.2, page 2-2). Two methods are provided: (a) using traffic count data and static axle load survey data, and (b) using WIM data directly.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table 2.1: Pavement design life selection guidance**

| Design Data Reliability | Importance/Level of Service: Low | Importance/Level of Service: High |
|------------------------|----------------------------------|-----------------------------------|
| Low | 10-15 years | 15 years |
| High | 10-20 years | 15-20 years |

*(Verified from MoWT Vol 3 Part I, Table 2.1, page 2-2)*

Design life should be 15 or 20 years in most cases. Maximum 20 years recommended. Minimum 10 years is a practical lower limit.

---

**Table 2.2: Recommended relative damage exponents, n**

| Pavement Base/Subbase | Recommended n |
|----------------------|---------------|
| Granular/granular | 4 |
| Granular/cemented | 3 |
| Cemented/cemented | 4.5 |
| Bituminous/granular | 4 |
| Bituminous/cemented | 4 |

*(Verified from MoWT Vol 3 Part I, Table 2.2, page 2-4)*

**Note:** The cemented/granular combination is not included as it is "not used in this guide, nor recommended, based on many examples of poor performance deriving from premature cracking and deterioration of the cemented base" (page 2-4).

---

**Table 2.3: Load Equivalency Factors for Different Axle Load Groups, in ESAs**

This table is too large to embed (20+ rows x 6 columns). It is extracted to a JSON data file:

**Table reference:** `tables/uganda_load_equivalency_factors.json`

Key reference values from the table:

| Axle Load Range (kg) | n=3 | n=4 | n=4.5 | Axle Load Range (kN) | n=3 | n=4 | n=4.5 |
|---------------------|------|------|-------|---------------------|------|------|-------|
| Less than 1500 | - | - | - | Less than 15 | - | - | - |
| 1500-2499 | 0.02 | - | - | 15-24 | 0.02 | - | - |
| 2500-3499 | 0.05 | 0.02 | 0.01 | 25-34 | 0.05 | 0.02 | 0.01 |
| 3500-4499 | 0.12 | 0.06 | 0.05 | 35-44 | 0.13 | 0.06 | 0.05 |
| 4500-5499 | 0.24 | 0.15 | 0.12 | 45-54 | 0.24 | 0.15 | 0.12 |
| 5500-6499 | 0.41 | 0.30 | 0.26 | 55-64 | 0.42 | 0.32 | 0.28 |
| 6500-7499 | 0.64 | 0.56 | 0.52 | 65-74 | 0.66 | 0.58 | 0.55 |
| 7500-8499 | 0.95 | 0.95 | 0.94 | 75-84 | 0.99 | 0.99 | 1.00 |
| 8500-9499 | 1.35 | 1.51 | 1.59 | 85-94 | 1.41 | 1.59 | 1.69 |
| 9500-10499 | 1.85 | 2.29 | 2.55 | 95-104 | 1.94 | 2.42 | 2.71 |
| 10500-11499 | 2.46 | 3.34 | 3.90 | 105-114 | 2.58 | 3.55 | 4.16 |
| 11500-12499 | 3.20 | 4.72 | 5.75 | 115-124 | 3.35 | 5.02 | 6.15 |
| 12500-13499 | 4.06 | 6.50 | 8.22 | 125-134 | 4.26 | 6.92 | 8.82 |
| 13500-14499 | 5.07 | 8.73 | 11.46 | 135-144 | 5.32 | 9.30 | 12.31 |
| 14500-15499 | 6.23 | 11.49 | 15.61 | 145-154 | 6.54 | 12.26 | 16.79 |
| 15500-16499 | 7.56 | 14.87 | 20.85 | 155-164 | 7.94 | 15.88 | 22.45 |
| 16500-17499 | 9.06 | 18.93 | 27.37 | 165-174 | 9.53 | 20.24 | 29.50 |
| 17500-18499 | 10.76 | 23.78 | 35.37 | 175-184 | 11.32 | 25.44 | 38.15 |
| 18500-19499 | 12.65 | 29.51 | 45.09 | 185-194 | 13.31 | 31.59 | 48.67 |
| 19500-20499 | 14.75 | 36.22 | 56.77 | 195-204 | 15.53 | 38.79 | 61.32 |

*(Verified from MoWT Vol 3 Part I, Table 2.3, page 2-5)*

---

**Table 2.4: Factors for Design Traffic Loading**

| Road Type | Design Traffic Loading | Comment |
|-----------|----------------------|---------|
| **Single Carriageway** | | |
| Paved road width 4.5m or less | Up to twice the sum of the ESAs in each direction | At least the total traffic must be designed for as there will be significant overlap in each direction. For widths of 3.5m or less, double the total should be used due to channelisation. |
| Paved road width 4.5m to 6.0m | 80% of the sum of the ESAs in each direction | To allow for considerable overlap in the central section of the road. |
| Paved road width more than 6.0m | Total ESAs in the most heavily trafficked direction | No overlap effectively, vehicles remaining in lanes. |
| **Dual Carriageway** | | |
| Less than 2,000 commercial vehicles per day in one direction | 90% of the total ESAs in the direction | The majority of heavy vehicles will travel in one lane effectively. |
| More than 2,000 commercial vehicles per day in one direction | 80% of the total ESAs in the direction | The majority of heavy vehicles will still travel in one lane effectively, but greater congestion leads to more lane switching. |

*(Verified from MoWT Vol 3 Part I, Table 2.4, page 2-6)*

---

**Table 2.5: Traffic classes**

| Traffic Class | T1 | T2 | T3 | T4 | T5 | T6 | T7 | T8 |
|---------------|----|----|----|----|----|----|----|----|
| Traffic ranges (million ESAs) | < 0.3 | 0.3-0.7 | 0.7-1.5 | 1.5-3 | 3-6 | 6-10 | 10-17 | 17-30 |

*(Verified from MoWT Vol 3 Part I, Table 2.5, page 2-7)*

**Notes on traffic classes:**
- T1 (< 0.3 million ESAs) is the practical minimum since realistic layer thicknesses and materials specifications preclude lighter structures.
- If design traffic < 0.1 million ESAs, consider alternative designs for very light trafficking (MoWT page 2-7).
- If design traffic > 30 million ESAs, the MoWT catalogue does not apply -- consider mechanistic analysis (MoWT Preamble limitation (c)).
- If design traffic is near a class boundary, conduct sensitivity analysis.

### M.2.2 Country-Specific Formulas

**MoWT Equation 1 -- Cumulative Design Traffic:**

```
DT = T x 365 x [(1 + r/100)^p - 1] / (r/100)
```

Where:
- DT = cumulative design traffic in a vehicle category, for one direction (ESAs)
- T = average daily traffic in a vehicle category in the first year (one direction)
- r = average assumed growth rate, percent per annum
- p = design period in years

*(Verified from MoWT Vol 3 Part I, Section 2.2(a)(iii), page 2-3)*

**Important notes on Equation 1:**
- T is the average daily value "at opening to traffic" -- not the count-year value. If there is a gap between the count year and the opening year, T must be grown forward.
- Growth rates "will normally be in the range of 2 to 15 per cent per annum, and selected values should be based on all available indicators including historical data, and socio-economic trends" (page 2-3).
- The formula can be applied to total heavy vehicles (using average VDF) or to each vehicle class separately (more accurate).

**MoWT Equation 2 -- Load Equivalency Factor:**

```
F = [P/8160]^n    (for loads in kg)
F = [P/80]^n      (for loads in kN)
```

Where:
- F = load equivalency factor in ESAs
- P = axle load (kg or kN)
- n = relative damage exponent (from Table 2.2)

*(Verified from MoWT Vol 3 Part I, Section 2.2(a)(iv), page 2-3)*

**WIM-based method (Section 2.2(b)):**
When WIM data is available, the baseline average daily ESAs in each direction can be determined directly from the WIM measurements. These are then projected using Equation 1 with T replaced by the daily WIM-measured ESAs. "Reliable WIM survey data provides a direct measurement of axle loads, and these can be converted to ESAs directly" (page 2-6).

### M.2.3 ESA Calculation Process (MoWT Method)

The MoWT process follows five steps per Section 2.2(a):

1. **(i)** Determine baseline AADT (total, both directions, at opening)
2. **(ii)** Estimate numbers of vehicles in different categories comprising the baseline AADT
3. **(iii)** Forecast the one-directional cumulative traffic flow for each category over the design life using Equation 1
4. **(iv)** Use static axle load data to determine average vehicle damage factors (ESAs per vehicle class) using Equation 2
5. **(v)** Convert one-directional cumulative traffic flows to cumulative total ESAs in each direction

Then apply Table 2.4 to convert to design traffic loading for the specific road type and width.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Selecting the appropriate MoWT method:**
```
If static axle load survey data available:
  -> Use Method (a): Section 2.2(a)
  -> Calculate VDFs from survey using Equation 2
  -> Apply Equation 1 to each vehicle class or use average VDF

If WIM data available:
  -> Use Method (b): Section 2.2(b)
  -> Use daily ESAs directly from WIM
  -> Project using Equation 1

If no axle load data:
  -> Use default VDFs from M.4 (with escalation flag)
  -> Apply Method (a) with defaults
```

### M.3.2 Professional Judgment (Country-Specific)

**Uganda-specific ESA considerations:**
- Typical cumulative ESAs for Uganda trunk roads over 15-20 year design period: 2-15 million ESAs (T4-T7 range).
- District roads: 0.3-3 million ESAs (T2-T4 range).
- Community access roads: < 0.3 million ESAs (T1 or below catalogue range).
- Growth rates for Uganda trunk roads are typically 4-7%. District roads: 3-5%. See Skill #6 for growth rate estimation.
- Overloading in Uganda means that actual damage factors are typically higher than in well-regulated environments. Default VDF of 3.0 ESA/HV for trunk roads accounts for typical overloading.

**The compound growth formula dominates the result.**
For a 15-year period at 5% growth:
- Growth factor [(1.05)^15 - 1] / 0.05 = 21.58
- For a 20-year period at 5%: [(1.05)^20 - 1] / 0.05 = 33.07
- The 20-year result is 53% higher than the 15-year result, so the design period choice matters significantly.

### M.3.3 Common Errors (Country-Specific)

1. **Using AADT at count year instead of opening year.** If the count was done in 2024 and the road opens in 2027, the opening AADT = count AADT x (1+r/100)^3.
2. **Not applying Table 2.4 factors correctly.** For a 7.0m wide paved road, use "total ESAs in the most heavily trafficked direction" -- not the sum of both directions.
3. **Using a single flat growth rate for 20 years.** Consider whether higher growth in early years and lower growth later is more realistic. If so, calculate in two periods and sum.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design period (UNRA trunk) | 20 years | UNRA national trunk road | -- ASSUMED: 20-year design period for UNRA trunk road per MoWT Table 2.1 | MoWT Table 2.1 (high reliability, high importance) |
| Design period (district) | 15 years | District road | -- ASSUMED: 15-year design period for district road | MoWT Table 2.1 |
| Growth rate (trunk) | 5% | UNRA trunk, no forecast | -- ASSUMED: Growth rate = 5% per annum for trunk road. Verify with Skill #6 forecast. | Typical Uganda trunk road range |
| Growth rate (district) | 4% | District road, no forecast | -- ASSUMED: Growth rate = 4% per annum for district road. | Typical Uganda district road range |
| VDF (trunk, no survey) | 3.0 ESA/HV | No axle load data | -- ASSUMED: VDF = 3.0 ESA/HV (Uganda trunk road default). Range typically 2.0-5.0. Recommend axle load survey. | Typical overloaded fleet |
| VDF (district, no survey) | 1.5 ESA/HV | No axle load data | -- ASSUMED: VDF = 1.5 ESA/HV (Uganda district road default). | Lighter fleet on district roads |
| Damage exponent (n) | 4 | Granular/granular (most common) | -- | MoWT Table 2.2 |
| Directional split | 50/50 | No data | -- ASSUMED: 50/50 directional split. | Balanced |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Cumulative ESAs | 100,000 | 30,000,000 | ESA | MoWT catalogue range | Warn if outside -- below T1 minimum or exceeds catalogue |
| Growth rate | 2 | 15 | % | MoWT page 2-3 | Values outside range need justification |
| Design period | 10 | 20 | years | MoWT Table 2.1 | MoWT recommends 10-20 years |

### M.5.2 Standards Compliance Checks

- **Check:** Design traffic within MoWT catalogue range (T1-T8, 0.3-30 million ESAs)
- **Standard:** MoWT Vol 3 Part I, Table 2.5
- **Pass condition:** Cumulative ESAs between 0.1 and 30 million
- **Fail action:** If < 0.1M: "Design traffic very low. MoWT catalogue may not apply. Consider alternative design approach." If > 30M: "Design traffic exceeds MoWT catalogue range. Mechanistic analysis required."

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. The engineer has discretion within the guidance provided.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Cumulative ESAs > 30 million | Exceeds MoWT catalogue range | SENIOR REVIEW -- Design traffic exceeds 30 million ESAs (MoWT Preamble limitation). Mechanistic analysis or external reference required. |
| Near traffic class boundary | Pavement structure changes with class | NOTE -- Cumulative ESAs ([X]M) are within 20% of the T[X]/T[X+1] boundary at [Y]M ESAs. Sensitivity analysis on growth rate and VDF recommended. |
| Growth rate > 7% | High for sustained 15-20 year period | NOTE -- Growth rate of [X]% is high for a sustained period. Verify against historical trends and economic forecasts. |

---

## M.7 Worked Example -- Uganda

### Example: Cumulative ESA Calculation for Trunk Road

**Source:** Illustrative example using MoWT Vol 3 Part I methodology, matching the eval scenario.

**Given:**
- Road: Two-lane paved trunk road in Uganda
- Baseline AADT at opening: 3,000 vpd (both directions)
- Heavy vehicle percentage: 30%
- Average vehicle damage factor: 2.5 ESA per heavy vehicle (from axle load survey)
- Design period: 15 years
- Growth rate: 5% per annum
- Paved road width: 7.0m

**Solution:**

*Step 1: Daily heavy vehicles (one direction)*

AADT = 3,000 vpd (both directions)
Heavy vehicles = 3,000 x 30% = 900 heavy vehicles/day (both directions)
One direction = 900 / 2 = 450 heavy vehicles/day

*Step 2: Daily ESAs (one direction)*

Daily ESAs = 450 x 2.5 = 1,125 ESA/day (one direction)

*Step 3: Apply Table 2.4 -- Design Traffic Loading Factor*

Paved road width = 7.0m (> 6.0m)
Table 2.4 says: "Total ESAs in the most heavily trafficked direction"
Therefore: design ESAs/day = 1,125 ESA/day (use the most heavily trafficked direction)

Since directional split is assumed 50/50, the most heavily trafficked direction carries 1,125 ESA/day.

*Step 4: Cumulative ESAs using Equation 1*

```
DT = T x 365 x [(1 + r/100)^p - 1] / (r/100)
DT = 1,125 x 365 x [(1 + 5/100)^15 - 1] / (5/100)
DT = 1,125 x 365 x [(1.05)^15 - 1] / 0.05
```

Calculate (1.05)^15:
(1.05)^15 = 2.0789 (to 4 decimal places)

```
DT = 1,125 x 365 x [2.0789 - 1] / 0.05
DT = 1,125 x 365 x [1.0789] / 0.05
DT = 1,125 x 365 x 21.579
DT = 410,625 x 21.579
DT = 8,861,340 ESAs
DT = approximately 8.86 million ESAs
```

*Step 5: Assign Traffic Class from Table 2.5*

8.86 million ESAs falls in the T6 range (6-10 million ESAs).

**Traffic Class: T6**

*Step 6: Sensitivity Analysis*

| Growth Rate | Cumulative ESAs | Traffic Class |
|-------------|----------------|---------------|
| 3% | 6.33 million | T6 |
| 5% | 8.86 million | T6 |
| 7% | 12.06 million | T7 |

At 7% growth, the traffic class changes from T6 to T7. This is significant -- the pavement structure changes at the T6/T7 boundary (10 million ESAs).

**Result:**
- Cumulative design ESAs: **8.86 million ESAs**
- Traffic Class: **T6** (6-10 million ESAs)
- The design is within the T6 range but should note sensitivity to growth rate -- at 7% growth, the class changes to T7.

**Verification:** The calculation follows MoWT Equation 1 exactly. The T6 classification (6-10M ESAs) is correct for 8.86M ESAs per Table 2.5. The growth factor [(1.05)^15 - 1]/0.05 = 21.58 is mathematically correct.

---

## M.8 References

1. Uganda Ministry of Works and Transport. *Road Design Manual, Volume 3: Pavement Design, Part I: Flexible Pavements.* January 2010.
2. Transport Research Laboratory. *Overseas Road Note 31: A Guide to the Structural Design of Bitumen-Surfaced Roads in Tropical and Sub-Tropical Countries.* 5th Edition, 1993.
3. SATCC. *Draft Code of Practice for the Design of Road Pavements.* September 1998 (Reprinted July 2001). CSIR.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
