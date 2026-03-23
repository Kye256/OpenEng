# Traffic Data Processing -- Uganda Module

> **Parent Skill:** #2 Traffic Data Processing
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual (2010), Vol. 1 Sections 5.4.1-5.4.1.4
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual | 2010 | Vol. 1, Sections 5.4.1-5.4.1.4 | Current |
| Uganda MoWT Road Design Manual | 2010 | Vol. 3 Part I, Section 2.0 | Current -- for pavement design traffic loading |

### M.1.2 Institutional Context

Traffic data processing in Uganda follows the MoWT methodology for converting count data into design parameters. The key institutional considerations are:

- **UNRA:** Maintains some continuous count stations but coverage is limited. For most projects, traffic data processing relies on short-duration project-specific counts expanded using factors from the MoWT manual or from nearby continuous stations.
- **Limited continuous data:** Unlike the UK or USA, Uganda does not have a dense network of permanent count stations. Seasonal and daily expansion factors often rely on the MoWT guidance values rather than site-specific data.
- **Data from feasibility studies:** Previous project feasibility studies may contain processed traffic data that can be verified and updated rather than starting from scratch.

### M.1.3 Standard Philosophy

The MoWT manual (Vol. 1, Section 5.4) provides definitions and guidance on traffic parameters but does not prescribe a detailed data processing methodology. It establishes:
- AADT as the primary design control for low-volume roads
- ADT for roads with large seasonal variations (current AADT > 1,000, per Section 5.4.1.3)
- DHV based on the 30th highest hourly volume
- The K-factor relationship through Table 5-2

The engineer is expected to apply professional judgment in selecting appropriate expansion and seasonal factors.

---

## M.2 Country-Specific Knowledge

### M.2.1 AADT and ADT Definitions (MoWT Vol. 1)

**AADT (Section 5.4.1.2):** "The total traffic volume for the year divided by 365. For two-lane rural road the total traffic in both direction is taken."

**ADT (Section 5.4.1.3):** "The total volume of traffic during the given time period (in whole days), greater than one day and less than one year, divided by the number of days in that time period. For two-lane rural road the total traffic volume for both directions of flow is taken."

The MoWT manual states: "The most appropriate design control for low-volume road is AADT in the 'design year'. On major road carrying heavy traffic volumes throughout the year (current AADT > 1,000), hourly traffic has to be used for determination of the Design Volume."

**Source:** MoWT Vol. 1, Sections 5.4.1.2 and 5.4.1.3 (Verified)

### M.2.2 Peak-Hour Traffic and Design Hourly Volume (MoWT Vol. 1)

**30th Highest Hourly Volume (Section 5.4.1.4):** "The design hourly volume should be the 30th highest hourly volume of the year" (abbreviated as 30 HV). DHV = AADT x K or ADT x K, where K is estimated from the ratio of the 30th HV to the AADT.

**Table 5-2: Traffic Condition and 30th HV as a Fraction of ADT (Verified)**

| Traffic Condition | 30th HV as a fraction of ADT |
|-------------------|------------------------------|
| Rural Arterial (average value) | 0.15 |
| Rural Arterial (maximum value) | 0.25 |
| Heavily trafficked road under congested urban conditions | 0.08 -- 0.12 |
| Normal urban conditions | 0.10 -- 0.15 |
| Road catering for recreational or other traffic of seasonal nature | 0.20 -- 0.30 |

"On rural roads with average fluctuation in traffic volume, 30 HV approximates 15% of the ADT."

**Source:** MoWT Vol. 1, Section 5.4.1.4 and Table 5-2 (Verified)

### M.2.3 Composition of Traffic (MoWT Vol. 1)

**Section 5.4.1.5:** "For design purposes, the composition of traffic meaning the composition of each of the different types of vehicles and also percentage of truck traffic during peak hours should be known. Besides being heavier, trucks generally are slower and occupy more roadway space and consequently impose a greater traffic effect on roads than passenger vehicles do. Vehicle in the truck class are normally those having 4000kg or greater gross vehicle mass (GVM) rating of the manufacturer and vehicles having dual tires on rear axle."

**Source:** MoWT Vol. 1, Section 5.4.1.5 (Verified)

### M.2.4 Seasonal Adjustment Factors for Uganda

The MoWT manual does not provide explicit seasonal adjustment factors. In practice, the following guidance applies:

**Typical seasonal variation for Uganda trunk roads:**

| Season | Approximate Factor (multiply ADT to estimate AADT) | Notes |
|--------|-----------------------------------------------------|-------|
| Dry season 1 (Dec-Feb) | 0.95 -- 1.05 | Close to annual average; slight increase due to holiday travel in December |
| Rainy season 1 (Mar-May) | 0.90 -- 1.00 | Slightly lower on unpaved roads; paved roads relatively stable |
| Dry season 2 (Jun-Aug) | 0.95 -- 1.05 | Close to annual average; generally neutral |
| Rainy season 2 (Sep-Nov) | 0.90 -- 1.00 | Similar to rainy season 1 |

**Important:** These are approximate factors based on general Uganda conditions. Specific corridors may vary significantly (e.g., agricultural routes with harvest peaks, tourist corridors, oil region roads). Where available, use site-specific seasonal data from continuous count stations.

### M.2.5 Daily Expansion Factors for Uganda

For expanding partial-day counts to 24-hour volumes:

| Count Period | Expansion Factor (divide count by this to get 24-hour) | Notes |
|-------------|--------------------------------------------------------|-------|
| 12-hour count (06:00-18:00), rural road | 0.85 -- 0.90 | 85-90% of daily traffic occurs during these hours on rural roads |
| 16-hour count (06:00-22:00), rural road | 0.92 -- 0.97 | Captures most traffic; small nighttime residual |
| 12-hour count (06:00-18:00), urban road | 0.75 -- 0.85 | Urban roads have more evening and night traffic |
| 12-hour count (06:00-18:00), truck corridor | 0.70 -- 0.80 | Significant nighttime truck traffic on major corridors |

**Calculation:** 24-hour ADT = Count volume / Expansion factor

**Example:** A 12-hour rural count of 1,530 vehicles, with assumed expansion factor of 0.87:
24-hour ADT = 1,530 / 0.87 = 1,759 vpd

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 4a (Uganda): Expand to 24-hour
  |- If 12-hour MCC on rural road -> Divide by 0.85-0.90
  |- If 12-hour MCC on urban road -> Divide by 0.75-0.85
  |- If 12-hour MCC on truck corridor -> Divide by 0.70-0.80
  |- If 7-day ATC available -> Already 24-hour; no expansion needed
  \- If simultaneous ATC + MCC data -> Use ATC daily total; MCC for classification proportions

Step 6a (Uganda): Seasonal adjustment
  |- If count in dry season (Jun-Aug, Jan-Feb) -> Factor close to 1.0 (range 0.95-1.05)
  |- If count in rainy season (Mar-May, Sep-Nov) -> Factor 0.90-1.00 (traffic may be lower)
  |- If count during December holidays -> Factor 0.85-0.95 (holiday traffic may be higher than average)
  |- If continuous count data available from nearby station -> Use site-specific seasonal factor
  \- If no seasonal data at all -> Flag: AADT = unadjusted ADT with caveat

Step 7a (Uganda): K-factor selection
  |- Rural arterial road -> K = 0.15 (MoWT Table 5-2, average)
  |- Urban road -> K = 0.10-0.15
  |- Recreational/seasonal road -> K = 0.20-0.30
  \- If continuous data available -> Calculate K directly from ranked hourly volumes
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Nighttime traffic on Uganda trunk roads is significant on some corridors.** Major corridors (Kampala-Jinja, Kampala-Masaka, Northern Corridor to Kenya border) carry substantial nighttime truck traffic. For these corridors, the 12-hour expansion factor should be toward the lower end (0.70-0.80), meaning the 12-hour count captures only 70-80% of daily traffic.

**Market day effects must be handled carefully.** If the count period includes a market day, the market-day volumes should be noted separately. For AADT estimation, include the market day in the average (it occurs once per week and is part of the annual pattern), but note the variation.

**Traffic data on unpaved roads is affected by road condition.** During rainy seasons, unpaved roads may become impassable or difficult to traverse, reducing traffic. This is a real reduction in traffic (not a seasonal variation in demand) -- the road genuinely carries less traffic when it is in poor condition. For upgrading projects, the designer should consider that traffic will increase after paving (generated traffic).

### M.3.3 Common Errors (Uganda-Specific)

1. **Using a 12-hour expansion factor of 0.90 on a truck corridor.** Trunk roads with significant nighttime trucking may have only 70-80% of traffic in the 12 daytime hours.
2. **Not applying seasonal adjustment when count is in December.** Holiday travel inflates December traffic on inter-urban routes.
3. **Treating a single 12-hour count as AADT.** A 12-hour count on one day requires both daily expansion AND seasonal adjustment before it approximates AADT.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| K-factor | 0.15 | Rural arterial | -- ASSUMED: K = 0.15 (MoWT Table 5-2, rural arterial average) | MoWT Table 5-2 |
| K-factor | 0.12 | Urban road | -- ASSUMED: K = 0.12 (MoWT Table 5-2, urban range) | MoWT Table 5-2 |
| Directional split | 50/50 | No directional data | -- ASSUMED: Equal directional split (verify with survey data) | Standard assumption for rural 2-lane roads |
| 12-hour expansion | 0.87 | Rural trunk road | -- ASSUMED: 12-hour count captures 87% of 24-hour traffic | Mid-range for rural Uganda roads |
| Seasonal factor | 1.00 | Dry season count | -- ASSUMED: No seasonal adjustment (count in neutral period) | Dry season traffic approximates annual average |
| PHF | 0.88 | No 15-minute data | -- ASSUMED: PHF = 0.88 (moderate rural peaking) | Typical for Uganda rural roads |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| AADT (trunk road) | 500 | 30,000 | vpd | MoWT Table 4-2 | Warn if outside typical Uganda trunk road range |
| AADT (district road) | 20 | 5,000 | vpd | Experience | Warn if outside typical district road range |
| K-factor | 0.08 | 0.30 | decimal | MoWT Table 5-2 | Reject if outside MoWT table range |

### M.5.2 Standards Compliance Checks

- **Check:** K-factor is within the range specified by MoWT Table 5-2 for the traffic condition.
- **Standard:** MoWT Vol. 1, Table 5-2
- **Pass condition:** K is between 0.08 and 0.30
- **Fail action:** Warn -- "K-factor [X] is outside MoWT Table 5-2 range (0.08-0.30). Verify data and traffic condition classification."

### M.5.3 Departures / Relaxations Process

No formal departures process for traffic data processing. The engineer applies professional judgment in selecting expansion and seasonal factors, documenting all assumptions in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Count duration is only 1 day | Very short count; ADT unreliable | SENIOR REVIEW -- Only 1 day of count data. ADT may not be representative. Recommend minimum 3-day count. |
| No seasonal factor available | Cannot reliably estimate AADT | NOTE -- No seasonal adjustment factor available. ADT treated as AADT with caveat. Recommend counting in dry season or obtaining seasonal data from continuous station. |
| 12-hour count on known truck corridor | Nighttime expansion may be large | NOTE -- Truck corridor -- nighttime traffic may be significant. Use conservative (lower) expansion factor or recommend 24-hour count. |
| AADT significantly different from previous study | May indicate data error or rapid growth | SENIOR REVIEW -- Estimated AADT [X] differs by more than 30% from previous study value [Y]. Verify data and investigate cause. |

---

## M.7 Worked Example -- Uganda

### Example: Processing a 12-Hour Manual Classified Count on a UNRA Trunk Road

**Source:** Hypothetical, based on MoWT methodology.

**Given:**
- Road: Masaka-Mbarara Road (trunk road, paved)
- Count type: 12-hour manual classified count (06:00-18:00)
- Count duration: 3 days (Tuesday, Wednesday, Thursday in April -- rainy season 1)
- Direction 1 (towards Mbarara): Day 1: 780, Day 2: 810, Day 3: 795
- Direction 2 (towards Masaka): Day 1: 750, Day 2: 770, Day 3: 760
- Total both directions: Day 1: 1,530; Day 2: 1,580; Day 3: 1,555
- No continuous count station data available nearby

**Solution:**

**Step 1: Data quality check.** Volumes are consistent across the 3 days (range 1,530-1,580). No anomalies detected. Data quality: Good.

**Step 2: Calculate 12-hour ADT.**
- Total 12-hour volume (3 days) = 1,530 + 1,580 + 1,555 = 4,665
- 12-hour ADT = 4,665 / 3 = **1,555 vehicles (12-hour, both directions)**

**Step 3: Expand to 24-hour ADT.**
- Road is a trunk road but not a major truck corridor. Use expansion factor 0.87 (mid-range rural).
- 24-hour ADT = 1,555 / 0.87 = **1,787 vpd**
- -- ASSUMED: 12-hour count captures 87% of 24-hour traffic.

**Step 4: Apply seasonal adjustment.**
- Count was in April (rainy season 1).
- Rainy season factor range: 0.90-1.00. Use 0.95 (moderate adjustment -- paved road, traffic reduction due to rain is modest).
- AADT = 1,787 / 0.95 = **1,881 vpd**
- -- ASSUMED: Seasonal factor = 0.95 for April (rainy season). Based on general Uganda seasonal patterns -- no site-specific data.

**Step 5: Calculate directional split.**
- Direction 1 (3-day total): 780 + 810 + 795 = 2,385
- Direction 2 (3-day total): 750 + 770 + 760 = 2,280
- Directional split: 2,385 / 4,665 = **51.1% / 48.9%** (approximately 51/49)
- This is close to 50/50 -- typical for a rural trunk road.

**Step 6: Calculate DHV.**
- K-factor: 0.15 (MoWT Table 5-2, rural arterial average)
- DHV = AADT x K = 1,881 x 0.15 = **282 vph (both directions)**
- D-factor: 0.55 (slight directional imbalance observed)
- DDHV = 1,881 x 0.15 x 0.55 = **155 vph (peak direction)**

**Result:**

| Parameter | Value | Source |
|-----------|-------|--------|
| 12-hour ADT | 1,555 vpd | Calculated from 3-day count |
| 24-hour ADT | 1,787 vpd | Expanded (factor 0.87) |
| AADT (estimated) | 1,881 vpd | Seasonally adjusted (factor 0.95) |
| Directional split | 51/49 | From count data |
| K-factor | 0.15 | MoWT Table 5-2 |
| DHV | 282 vph | AADT x K |
| DDHV | 155 vph | AADT x K x D |

**Escalation:** NOTE -- Seasonal factor (0.95) is an estimate based on general Uganda patterns. No site-specific seasonal data available. AADT estimate should be treated as approximate. For detailed design, recommend counting in a dry season month for comparison.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Sections 5.4.1-5.4.1.5.
2. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3 Part I: Flexible Pavements*, January 2010, Section 2.0.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft. MoWT Table 5-2 verified against Vol. 1. Seasonal and expansion factors based on general Uganda practice. |
