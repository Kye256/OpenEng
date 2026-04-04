# Traffic Data Processing -- Kenya Module

> **Parent Skill:** #2 Traffic Data Processing
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.2: Traffic Surveys (2025), Sections 3.5.2-3.5.4
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.2 | 2025 | Sections 3.5.2-3.5.4 (Variation in Traffic Flow, Data Analysis, Design Hour Volume) | Current |
| Kenya Road Design Manual RDM 1.2 | 2025 | Section 5.1 (Traffic Growth Estimation -- General) | Current |

### M.1.2 Institutional Context

Traffic data processing in Kenya follows the RDM 1.2 methodology for converting count data into design parameters. The key institutional considerations are:

- **KeNHA:** Maintains 22 VWS stations and 9 permanent weighbridges providing continuous data. Seasonal factors (SF) should be obtained from the Chief Engineer (Roads) and are updated periodically. VWS data can serve as a proxy for seasonal factors when site-specific data is unavailable.
- **Limited continuous data on rural/county network:** While the national highway network has reasonable VWS coverage, KeRRA and county roads typically lack continuous count data. Processing for these roads relies on short-duration counts expanded using RDM 1.2 factors.
- **Motorcycle traffic processing:** Kenya has experienced exponential growth in motorcycle (boda-boda) traffic. Processing must handle motorcycle volumes correctly -- they are significant for capacity analysis but negligible for pavement design.

### M.1.3 Standard Philosophy

RDM 1.2 provides specific equations for data processing (Equations 3.1-3.5) and references AASHTO methodology for K-factor determination. The manual requires that ADTs be "often annualised by applying adjustment factors" to produce AADT. Three types of adjustments are specified: temporal, environmental, and land use/facility type (Section 2.3.2).

---

## M.2 Country-Specific Knowledge

### M.2.1 AADT and ADT Definitions (RDM 1.2, Section 3.5.3)

**ADT:** "The most commonly used measure of traffic in traffic engineering analysis. Theoretically, this is the volume of traffic moving in both directions on a road on an average traffic day of the year for 24 hours."

**AADT:** "The average 24-hour volume at a given location over a full 365-day year; the number of vehicles passing in a site in a year divided by 365 days (366 days in a leap year)."

Both terms are stated in vehicles per day (veh/day). Daily volumes are generally not differentiated by direction or lane but are totals for an entire designated road location.

**Source:** RDM 1.2, Section 3.5.3 (Verified)

### M.2.2 Conversion of Partial-Day Counts (RDM 1.2, Equation 3.2)

A partial-day count is converted to a full-day count by:

```
Full 24-hour count = (Partial 12-hour count (06:00 to 18:00) x (Full 24-hour count)) /
                     (Count from 06:00 to 18:00 hours in the 24-hour survey)
```
(Equation 3.2)

The numerator and denominator should use traffic counts from the same periods of the day. For example, a 12-hour survey from 06:00 to 18:00 must be scaled up by the traffic in this same period during the 24-hour count.

Partial weekend traffic counts need to be grossed up based on a weekend 24-hour count, given that traffic flows over the weekends vary significantly from weekday flows.

### M.2.3 Seasonal Adjustment Factors for Kenya (RDM 1.2, Section 3.5.2)

**Seasonal Factor (SF) per Equation 3.1:**

```
SF = Traffic volume count for a specific month / Average traffic volume count for 12 months
```

SF should be obtained from the Chief Engineer (Roads). In the absence of long-duration data, VWS data from nearby stations can be used.

**Weighted ADT for AADT estimation (Equation 3.3):**

When SF values are not available, AADT may be estimated from wet and dry season counts:

```
AADT = Weighted ADT = (ADTW x MW)/12 + (ADTD x MD)/12
```

Where:
- ADTW = Average daily traffic count in wet season
- ADTD = Average daily traffic count in dry season
- MW = Number of months comprising the wet season
- MD = Number of months comprising the dry season

**Typical seasonal patterns for Kenya:**

| Season | Months | Duration | Traffic Implications |
|--------|--------|----------|---------------------|
| Long rains | March -- May | ~3 months | Lower traffic on unpaved roads; paved roads relatively stable |
| Cool dry season | June -- August | ~3 months | Stable traffic; neutral period |
| Short rains | October -- November | ~2 months | Moderate traffic reduction on unpaved roads |
| Hot dry season | December -- February | ~3 months | Stable traffic; December holiday travel increase |
| Transition | September, intermittent | ~1 month | Variable |

**Important note on motorcycle traffic processing:** Kenya's vehicle registry can be computed with and without motorcycles due to the rapid growth in motorcycle volumes (RDM 1.2, Table 5.1 note). When processing traffic data, the traffic engineer should present volumes and growth rates both including and excluding motorcycles to avoid masking underlying trends in motorised traffic.

### M.2.4 Daily Expansion Factors for Kenya

For expanding partial-day counts to 24-hour volumes (derived from RDM 1.2 Section 3.5.1 guidance):

| Count Period | Expansion Factor (12-hr count / 24-hr total) | Notes |
|-------------|----------------------------------------------|-------|
| 12-hour count (06:00-18:00), rural road | 0.82 -- 0.90 | Rural roads have lower nighttime traffic |
| 16-hour count (06:00-22:00), rural road | 0.90 -- 0.96 | Captures most traffic |
| 12-hour count (06:00-18:00), urban road | 0.70 -- 0.82 | Urban roads have significant evening/night traffic |
| 12-hour count (06:00-18:00), Northern Corridor | 0.65 -- 0.78 | Significant nighttime truck traffic on Mombasa corridor |

**Calculation:** 24-hour ADT = 12-hour count / Expansion factor

### M.2.5 Design Hour Volume (RDM 1.2, Section 3.5.4)

**K-Factor (Table 3.1, Verified):**

| Facility Type | Normal Range of K-Factor |
|--------------|-------------------------|
| Rural | 0.15 -- 0.25 |
| Semi-urban | 0.12 -- 0.15 |
| Urban | 0.07 -- 0.12 |

**Directional Design Hour Volume (Equation 3.4):**

```
DDHV = AADT x K x D
```

Where K = K-factor and D = directional split (peak direction, typically 0.55-0.70).

For urban roads, design for the 100th highest hourly flow rather than the 30th HV (Section 3.5.4).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 4a (Kenya): Expand to 24-hour
  |- If 12-hour MCC on rural road -> Divide by 0.82-0.90
  |- If 12-hour MCC on urban road -> Divide by 0.70-0.82
  |- If 12-hour MCC on Northern Corridor -> Divide by 0.65-0.78 (high nighttime truck traffic)
  |- If 7-day ATC available -> Already 24-hour; no expansion needed
  \- If simultaneous ATC + MCC data -> Use ATC daily total; MCC for classification proportions

Step 6a (Kenya): Seasonal adjustment
  |- If SF from Chief Engineer (Roads) available -> Apply directly
  |- If VWS data available from nearby station -> Derive SF from VWS monthly data
  |- If count in dry season (Jun-Aug, Dec-Feb) -> Factor close to 1.0 (range 0.95-1.05)
  |- If count in wet season (Mar-May, Oct-Nov) -> Factor 0.85-1.00
  |- If no seasonal data at all -> Use weighted ADT method (Equation 3.3) if both wet and dry counts available
  \- If only one season counted -> Flag: AADT = unadjusted ADT with caveat

Step 7a (Kenya): K-factor selection
  |- Rural road -> K = 0.15-0.25 (RDM 1.2 Table 3.1)
  |- Semi-urban road -> K = 0.12-0.15
  |- Urban road -> K = 0.07-0.12
  \- If continuous data available -> Calculate K directly from ranked hourly volumes
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Nighttime truck traffic on the Northern Corridor is very significant.** The Mombasa-Nairobi-Malaba route carries substantial freight traffic 24 hours a day. A 12-hour count on this corridor may capture only 65-78% of daily traffic. Always use a conservative (lower) expansion factor on major freight corridors.

**School calendar affects traffic patterns.** RDM 1.2 specifically notes that traffic patterns in Kenya may be influenced by the school calendar, especially on urban corridors. School term start/end dates cause temporary surges.

**Motorcycle traffic must be processed carefully.** Present traffic data and growth rates both with and without motorcycles. Motorcycle volumes can mask trends in commercial vehicle traffic, which is more relevant for pavement design.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using a high expansion factor on the Northern Corridor.** Major freight corridors have significant nighttime truck traffic -- using 0.90 when 0.70 is appropriate would underestimate AADT by ~25%.
2. **Not grossing up weekend counts separately.** RDM 1.2 explicitly requires weekend counts to be grossed up using weekend 24-hour patterns, not weekday patterns.
3. **Applying national SF values to local roads.** Seasonal factors depend on the month, vehicle type, and region (Section 3.5.2). National averages may not apply to specific corridors.
4. **Not separating motorcycle trends.** Presenting only total vehicle growth rates when motorcycles are growing at 15-20% per year while other vehicles grow at 4-6% gives a misleading picture.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| K-factor | 0.15 | Rural road | -- ASSUMED: K = 0.15 (lower end of RDM 1.2 Table 3.1 rural range). | RDM 1.2 Table 3.1 |
| K-factor | 0.10 | Urban road | -- ASSUMED: K = 0.10 (mid-range of RDM 1.2 Table 3.1 urban range). | RDM 1.2 Table 3.1 |
| Directional split | 50/50 | No directional data | -- ASSUMED: Equal directional split (verify with survey data). | Standard assumption for rural 2-lane roads |
| 12-hour expansion | 0.85 | Rural road | -- ASSUMED: 12-hour count captures 85% of 24-hour traffic. | Mid-range for Kenya rural roads |
| Seasonal factor | 1.00 | Dry season count | -- ASSUMED: No seasonal adjustment (count in neutral period). | Dry season traffic approximates annual average |
| PHF | 0.88 | No 15-minute data | -- ASSUMED: PHF = 0.88 (moderate rural peaking). | Typical for Kenya rural roads |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| AADT (KeNHA trunk road) | 1,000 | 60,000 | vpd | Experience | Warn if outside typical Kenya trunk road range |
| AADT (KeRRA rural road) | 20 | 5,000 | vpd | Experience | Warn if outside typical rural road range |
| K-factor | 0.07 | 0.25 | decimal | RDM 1.2 Table 3.1 | Reject if outside RDM table range |

### M.5.2 Standards Compliance Checks

- **Check:** K-factor is within the range specified by RDM 1.2 Table 3.1 for the facility type.
- **Standard:** RDM 1.2, Table 3.1
- **Pass condition:** K is within the applicable range (Rural 0.15-0.25, Semi-urban 0.12-0.15, Urban 0.07-0.12)
- **Fail action:** Warn -- "K-factor [X] is outside RDM 1.2 Table 3.1 range for [facility type]. Verify data and facility classification."

### M.5.3 Departures / Relaxations Process

Departures from RDM standards require written approval from the Chief Engineer for Roads (RDM 1.3, Section 1.7). For traffic data processing, departures from standard expansion or seasonal factors should be documented and justified in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Count duration is only 1 day | Very short count; ADT unreliable | SENIOR REVIEW -- Only 1 day of count data. ADT may not be representative. Recommend minimum 3-day count per RDM 1.2. |
| No seasonal factor available | Cannot reliably estimate AADT | NOTE -- No seasonal adjustment factor available. Request SF from Chief Engineer (Roads) or use VWS data from nearest station. |
| 12-hour count on Northern Corridor | Nighttime expansion may be very large | NOTE -- Northern Corridor -- nighttime truck traffic is very significant. Use conservative (lower) expansion factor or recommend 24-hour count. |
| Motorcycle traffic > 40% of total | May distort growth rate analysis | NOTE -- Motorcycle traffic exceeds 40%. Present growth rates and volumes both with and without motorcycles. |

---

## M.7 Worked Example -- Kenya

### Example: Processing a 12-Hour Manual Classified Count on a KeNHA Trunk Road

**Source:** Hypothetical, based on RDM 1.2 methodology.

**Given:**
- Road: Mombasa-Nairobi Highway (A109), section near Mtito Andei
- Count type: 12-hour manual classified count (06:00-18:00)
- Count duration: 7 days (Monday to Sunday in July -- cool dry season)
- Two 24-hour counts available (Tuesday and Saturday)
- Total 12-hour volume (7 days): 42,000 vehicles
- Total 24-hour volume (Tuesday): 7,200 vehicles; 12-hour count same day: 5,400
- Total 24-hour volume (Saturday): 6,800 vehicles; 12-hour count same day: 5,100
- SF from KeNHA VWS (July): 0.98

**Solution:**

**Step 1: Data quality check.** Daily 12-hour volumes range from 5,100-6,300. Weekend volumes slightly lower than weekdays. Pattern is consistent. Data quality: Good.

**Step 2: Calculate expansion factors from 24-hour counts.**
- Tuesday: 5,400 / 7,200 = 0.75 (75% of traffic in 12 hours)
- Saturday: 5,100 / 6,800 = 0.75 (75% of traffic in 12 hours)
- This is a major freight corridor -- significant nighttime truck traffic explains the low ratio.

**Step 3: Gross up partial counts to 24-hour (Equation 3.2).**
- Weekdays (Mon-Fri): Use Tuesday expansion. Total weekday 12-hr: 31,200. Expanded: 31,200 / 0.75 = 41,600.
- Weekend (Sat-Sun): Use Saturday expansion. Total weekend 12-hr: 10,800. Expanded: 10,800 / 0.75 = 14,400.
- Total 24-hr (7 days) = 41,600 + 14,400 = 56,000.
- **7-day ADT = 56,000 / 7 = 8,000 vpd**

**Step 4: Apply seasonal adjustment.**
- Count was in July (cool dry season -- neutral period).
- SF from KeNHA VWS = 0.98 (July traffic is 98% of annual average).
- **AADT = 8,000 / 0.98 = 8,163 vpd**
- -- USED: Seasonal factor = 0.98 from KeNHA VWS data for July.

**Step 5: Calculate DHV.**
- K-factor: 0.18 (rural trunk road, mid-range from RDM 1.2 Table 3.1)
- DHV = AADT x K = 8,163 x 0.18 = **1,469 vph (both directions)**
- D-factor: 0.60 (Northern Corridor, moderate directional imbalance)
- DDHV = 8,163 x 0.18 x 0.60 = **882 vph (peak direction)**

**Result:**

| Parameter | Value | Source |
|-----------|-------|--------|
| 12-hour ADT | 6,000 vpd | Average of 7-day 12-hour counts |
| 24-hour ADT | 8,000 vpd | Expanded using site-specific factors |
| AADT (estimated) | 8,163 vpd | Seasonally adjusted (SF = 0.98 from VWS) |
| K-factor | 0.18 | RDM 1.2 Table 3.1 (rural) |
| DHV | 1,469 vph | AADT x K |
| DDHV | 882 vph | AADT x K x D |

**Escalation:** NOTE -- Northern Corridor road. VWS seasonal factor used. Nighttime expansion factor of 0.75 is consistent with major freight corridor patterns.

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Part 2 -- Traffic Surveys (RDM 1.2)*, 2025, Sections 3.5.2-3.5.4.
2. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Part 3 -- Geometric Design (RDM 1.3)*, 2025.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft. K-factors from RDM 1.2 Table 3.1, seasonal adjustment from Equation 3.1, partial-day conversion from Equation 3.2, weighted ADT from Equation 3.3 verified against RDM 1.2 PDF. |
