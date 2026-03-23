# Hydrology for Road Drainage -- Uganda Module

> **Parent Skill:** #29 Hydrology for Road Drainage
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 2: Drainage Design (January 2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 2: Drainage Design | January 2010 | Section 3 (design flow considerations), Section 4 (estimation of design flow for ungauged catchments), Appendices 4.1-4.5 | Current |

### M.1.2 Institutional Context

MoWT Vol 2 is the national drainage design standard for all roads in Uganda. It is used by UNRA, district engineers, and design consultants. The manual was developed with reference to TRRL Laboratory Reports 623 and 706, and incorporates East African hydrological data.

### M.1.3 Standard Philosophy

MoWT Vol 2 provides a design manual approach with worked examples and design tables. The engineer selects the appropriate method based on catchment size and data availability. The Rational Method is the primary tool for small catchments (< 80 hectares per Section 4.4.2). The SCS Curve Number method and TRRL East African Flood Model are presented for larger catchments. IDF parameters are derived from TRRL Laboratory Report 623 using East African rainfall stations.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table 3.2: Design Average Recurrence Intervals (Verified from MoWT Vol 2 p12)**

| Structure Type | PIa, PIb | PIII Gravel A | PIII, Gravel B | Gravel C |
|----------------|----------|---------------|----------------|----------|
| Gutters and Inlets | 10/5 | 2 | 2 | -- |
| Side Ditches | 10 | 10 | 5 | 5 |
| Ford/Low-Water Bridge | -- | -- | -- | 5 |
| Culvert, pipe, Span < 2m | 25 | 10 | 5 | 5 |
| Culvert, 2m < span < 6m | 50 | 25 | 10 | 10 |
| Short Span Bridges 6m < span < 15m | 50 | 50 | 25 | 25 |
| Medium Span Bridges 15m < span < 50m | 100 | 50 | 50 | 50 |
| Long Span Bridges spans > 50m | 100 | 100 | 100 | 100 |
| Check/Review Flood | 200 | 200 | 100 | 100 |

*PIa = Paved Ia, PIb = Paved Ib, PII = Paved II, PIII = Paved III*

Note: Span is the total clear-opening length. A double 1.2m pipe = 2.4m span (culvert, 2m < span < 6m category).

**Table 4.8: Multipliers for Higher Recurrence Interval (Verified from MoWT Vol 2 p34)**

| Recurrence interval (years) | Multiplier |
|-----------------------------|------------|
| 2-10 | 1.0 |
| 25 | 1.1 |
| 50 | 1.2 |
| 100 | 1.25 |

**Runoff Coefficients:** --> `tables/uganda_runoff_coefficients.json`

Contains runoff coefficients from MoWT Vol 2 Tables 4.7(a) and 4.7(b) for urban and rural areas respectively.

**IDF Parameters:** --> `tables/uganda_idf_parameters.json`

Contains IDF curve constants (a, c) from MoWT Vol 2 Tables 4.5 and 4.6 for East African stations at 2-year, 5-year, and 10-year return periods. Standard b = 0.33 hours for all Group I stations.

**Table 4.4: Standard Minimum Times of Concentration (Verified from MoWT Vol 2 p18)**

| Location | Standard Tc (minutes) |
|----------|----------------------|
| Road inlet pits | 5 |
| Small areas less than 0.4 hectare | 10 |

### M.2.2 Country-Specific Formulas

**Rational Method (MoWT Vol 2, Eqn 4.10):**

```
Q = C * I * A / 360
```

Where Q is in m3/s, C is dimensionless, I is in mm/hr, A is in hectares. The factor 1/360 = 0.00278 handles unit conversion.

**Equivalently: Q = 0.00278 * C * I * A**

**Modified Rational Method (MoWT Vol 2, Eqn 4.11):**

```
Q = Cs * C * I * A / 360
```

Where Cs is the peak reduction factor for catchments > 80 hectares, calculated as Cs = 2*tc / (2*tc + td), where tc is the time of concentration and td is the time of flow in the drain.

Recommended when catchment area exceeds 80 hectares, up to 120 hectares.

**IDF Equation (MoWT Vol 2, Eqn 4.1):**

```
i = a / (b + td)^c
```

Where b = 0.33 hours for East African Group I stations. Constants a and c are station-specific and return-period-specific (from Tables 4.5 and 4.6).

**Converting Daily Rainfall to Short Duration (MoWT Vol 2, Eqn 4.4):**

```
R_T = (T/24) * ((24 + b) / (b + T))^c * R_D
```

Where R_T is rainfall in time T hours, R_D is the daily total rainfall (mm), b = 0.33 hrs.

**Areal Reduction Factor (MoWT Vol 2, Eqn 4.5):**

```
ARF = 1 - 0.044 * A^0.275
```

Where A is catchment area in km2. Applied for catchments > 10 km2.

### M.2.3 Rainfall Regions

Uganda has two main rainfall groups (per TRRL Lab Report 623):
- **Group I stations:** Most Uganda stations including Entebbe, Kampala, Gulu, Fort Portal, Mbarara, Tororo, Jinja. Use Table 4.5 constants.
- **Group II stations:** Some East African stations with different characteristics. Use Table 4.6 constants.

The 10-year to 2-year rainfall ratio varies regionally (Appendix 4.4). Typical range: 1.2-1.6 for Uganda stations.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 3 (Uganda): Select return period
  |-- Use Table 3.2 based on structure type and road class
  |-- Side ditch on Paved I road --> 10-year ARI
  |-- Culvert (span < 2m) on Paved I road --> 25-year ARI
  +-- Culvert (2-6m span) on Paved I road --> 50-year ARI

Step 5 (Uganda): Determine rainfall intensity
  |-- Identify nearest station from Tables 4.5/4.6
  |-- Use IDF equation: i = a / (0.33 + td)^c
  |-- Select a, c for the appropriate return period
  +-- Apply ARF for catchments > 10 km2

Step 6 (Uganda): Determine runoff coefficient
  |-- For rural areas: use Table 4.7(b) -- C = Cs * Ck * Cv
  |     Where Cs = slope factor, Ck = permeability factor, Cv = vegetation factor
  |     C = 0.80 * (Cs + Ck + Cv) for contour cultivated lands
  |     C = 0.60 * (Cs + Ck + Cv) for 100% dense wood, flat < 3.5%
  |-- For urban areas: use Table 4.7(a) -- direct C values by land use
  |-- For return periods > 10 years: multiply C by Table 4.8 factor
  +-- For composite catchments: weighted C per Eqn 4.6
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Uganda receives intense tropical rainfall.** Rainfall intensities in Uganda are typically higher than temperate regions for short durations. The 10-year, 15-minute intensity commonly exceeds 100 mm/hr in most parts of the country. This makes adequate drainage provision critical.

**Bimodal vs unimodal rainfall patterns.** Southern Uganda (Lake Victoria region) has two rainy seasons (March-May and September-November). Northern Uganda tends toward unimodal rainfall (April-October). The IDF parameters account for annual maximum intensities regardless of pattern.

**Antecedent moisture conditions matter in Uganda's tropical climate.** Soils in the wet zones may already be near saturation before a design storm. Use higher C values (or higher antecedent moisture condition for SCS) in wet regions, particularly Lake Victoria basin and western Uganda highlands.

**Local flood knowledge is valuable.** MoWT Vol 2 Section 4.5 emphasizes the importance of local flood observation history. Flood marks, community knowledge, and maintenance records can validate or calibrate calculated flows.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using wrong IDF station.** Select the station nearest to the project site. If the project is between stations, interpolate or use the more conservative (higher intensity) station.
2. **Forgetting the frequency multiplier (Table 4.8).** For culverts designed to 25-year ARI, multiply C by 1.1. For 50-year, multiply by 1.2. This is easily missed.
3. **Applying the Rational Method to catchments > 80 hectares without modification.** MoWT recommends the Modified Rational Method for 80-120 ha and alternative methods for larger areas.
4. **Using generic C values instead of MoWT Table 4.7(b).** The rural runoff coefficient table uses component factors (slope, permeability, vegetation) specific to East African conditions.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| IDF b parameter | 0.33 hours | All Group I stations | No flag | MoWT Vol 2 standard value for East Africa |
| Min Tc | 10 min | Small catchments | ASSUMED: Min Tc = 10 min per Table 4.4 | MoWT Vol 2 Table 4.4 |
| Frequency factor | 1.0 | Return period 2-10 yr | No flag | MoWT Vol 2 Table 4.8 |
| ARF | 1.0 | Catchment < 10 km2 | No flag | MoWT Vol 2 Section 4.3.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| C (rural) | 0.01 | 0.90 | -- | MoWT Table 4.7(b) | Flag if > 0.70 for rural (unusual unless bare rock/impermeable) |
| C (urban) | 0.05 | 0.95 | -- | MoWT Table 4.7(a) | Flag if > 0.95 (theoretical max for impervious) |
| Catchment area (Rational) | 0.01 | 80 | ha | MoWT Section 4.4.2 | Warn if > 80 ha; use Modified Rational or SCS |

### M.5.2 Standards Compliance Checks

- **Check:** Return period matches Table 3.2 for structure type and road class
- **Standard:** MoWT Vol 2, Table 3.2
- **Pass condition:** Selected return period >= minimum from table
- **Fail action:** SENIOR REVIEW -- Return period [X] years is below minimum [Y] years for [structure type] on [road class] road.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. Where the standard cannot be met (e.g., no IDF data for a remote location), the engineer documents the justification and applies conservative assumptions. Use of the nearest available station with regional adjustment is standard practice.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No IDF station within 50 km | Rainfall data may not represent site conditions | SENIOR REVIEW -- Nearest IDF station is [X] km from project site. Consider commissioning site-specific rainfall analysis or using regional envelope. |
| Catchment crosses multiple rainfall zones | Different IDF parameters may apply | SENIOR REVIEW -- Catchment spans multiple rainfall zones. Use conservative (highest intensity) station or subdivide catchment. |
| Calculated Q exceeds 50 m3/s for road culvert | Very large flow for standard culvert | SENIOR REVIEW -- Design flow [X] m3/s is very high for road culvert. Consider bridge or multiple barrel culvert. Verify catchment area. |

---

## M.7 Worked Example -- Uganda

### Example: Side Drain for a Class II Road

**Source:** RESEARCH.md reference example, based on MoWT Vol 2 Rational Method

**Given:**
- Structure type: Side drain
- Road class: Paved II (PIIb)
- Catchment area: 2.5 hectares
- Soil: Moderately permeable
- Slope: Gentle
- Runoff coefficient: C = 0.45
- Time of concentration: Tc = 15 minutes = 0.25 hours
- Return period: 10 years (from Table 3.2 -- side ditches on paved road)
- Rainfall intensity: I = 120 mm/hr (from IDF curve for 10-year ARI, 15 min duration)

**Solution:**

**Step 1 -- Confirm return period:**
From Table 3.2, side ditches on Paved I/II roads: 10-year ARI. Confirmed.

**Step 2 -- Check frequency factor:**
From Table 4.8, for 10-year ARI: multiplier = 1.0. No adjustment needed.

**Step 3 -- Apply Rational Method:**

```
Q = 0.00278 * C * I * A
Q = 0.00278 * 0.45 * 120 * 2.5
Q = 0.00278 * 135
Q = 0.375 m3/s
```

**Step 4 -- Validation:**
- Q = 0.375 m3/s for 2.5 ha catchment is reasonable (specific discharge ~150 L/s/ha)
- C = 0.45 is appropriate for moderately permeable soil with gentle slope
- Tc = 15 min is reasonable for a 2.5 ha catchment

**Result:** Design flow Q = 0.375 m3/s for 10-year ARI side drain.

**Verification:** Matches RESEARCH.md reference calculation exactly.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 2: Drainage Design*, January 2010, Sections 3, 4, Appendices 4.1-4.5.
2. Transport and Road Research Laboratory, *Laboratory Report 623: A Model for Design Flood Estimation for Small Catchments in East Africa*, 1984.
3. Transport and Road Research Laboratory, *Laboratory Report 706: Characteristics of Rainfall in East Africa*, 1977.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Table 3.2 return periods, Table 4.8 frequency factors, IDF equation, runoff coefficients from Tables 4.5/4.6/4.7 verified against MoWT Vol 2 PDF |
