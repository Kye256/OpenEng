# Traffic Data Processing -- UK Module

> **Parent Skill:** #2 Traffic Data Processing
> **Country/Jurisdiction:** United Kingdom (England, Scotland, Wales, Northern Ireland)
> **Standards:** DfT Traffic Counting and Data Processing Guidance
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Version | Sections Referenced | Status |
|----------|--------------|---------|---------------------|--------|
| DfT AADT estimation methodology | Various | Current | Seasonal and daily factors | Current |
| TAG databook | WebTAG | Updated annually | Traffic growth forecasts | Current |
| COBA/TUBA | DMRB economic assessment | Current | Traffic flow processing for scheme appraisal | Current |

*(Drafted from general DMRB knowledge -- verify against current DfT traffic data guidance before use in production)*

### M.1.2 Institutional Context

The UK has a mature traffic data processing infrastructure:

- **DfT produces annual AADT estimates** for all count points in its national programme, applying standardised seasonal and daily expansion factors. These are publicly available and should be used as the starting point for any traffic analysis.
- **National Highways (WebTRIS)** provides processed flow data for the Strategic Road Network, including validated AADT estimates.
- **Local authorities** process their own count data, often using DfT seasonal factors or locally derived factors.
- **TEMPRO (Trip End Model Presentation Program)** provides DfT traffic growth forecasts by local authority area, used for projecting current traffic to future years.

### M.1.3 Standard Philosophy

*(Drafted from general DMRB knowledge -- verify against current DfT traffic data guidance before use in production)*

UK traffic data processing is highly standardised. The DfT applies consistent seasonal adjustment factors across the national count programme, which means that AADT estimates from different count points are directly comparable. The methodology is:
1. Short counts are expanded to 24-hour volumes using hourly profile data
2. 24-hour volumes are adjusted to 7-day averages using daily factors
3. 7-day averages are adjusted to annual averages using monthly (seasonal) factors
4. All factors are derived from the permanent ATC network

---

## M.2 Country-Specific Knowledge

### M.2.1 DfT AADT Estimation Methodology

*(Drafted from general DMRB knowledge -- verify against current DfT traffic data guidance before use in production)*

**Step 1: Expand to 24-hour.** If count is less than 24 hours, apply hourly profile factors derived from the permanent ATC network for the same road type and region.

**Step 2: Expand to 7-day average.** Apply daily factors to account for day-of-week variation. Monday volumes differ from Saturday volumes, and the factors differ by road type (commuter routes vs recreational routes).

**Step 3: Apply seasonal (monthly) factor.** DfT publishes monthly factors by road type that convert a count in a specific month to an annual average.

**Step 4: Apply trend factor (if count is not from the current year).** DfT publishes annual growth factors by road type and region.

### M.2.2 UK Vehicle Classification

The DfT standard classification for processed traffic data:

| Category | Description | Approximate UK Fleet Share |
|----------|-------------|---------------------------|
| Cars and taxis | Passenger vehicles < 3.5t GVW | ~80% |
| LGV (Light Goods Vehicles) | Goods vehicles < 3.5t GVW (vans) | ~13% |
| OGV1 (Ordinary Goods Vehicles 1) | Rigid goods vehicles > 3.5t, 2 axles | ~3% |
| OGV2 (Ordinary Goods Vehicles 2) | Rigid goods vehicles > 3.5t, 3+ axles; all articulated vehicles | ~2% |
| PSV (Public Service Vehicles) | Buses and coaches | ~1% |
| Motorcycles | Two-wheeled motor vehicles | ~1% |
| Pedal cycles | Bicycles | Counted separately |

*(Approximate fleet shares -- verify against current DfT statistics)*

### M.2.3 UK Seasonal and Daily Factors

*(Drafted from general DMRB knowledge -- verify against current DfT seasonal factor tables before use in production)*

**Typical monthly factors for UK rural roads (multiply ADT to estimate AADT):**

| Month | Factor (approximate) | Notes |
|-------|---------------------|-------|
| January | 1.10 -- 1.15 | Winter trough; factor > 1.0 because traffic is below average |
| February | 1.05 -- 1.10 | Still below average |
| March | 0.98 -- 1.02 | Close to average (neutral) |
| April | 0.95 -- 1.00 | Depends on Easter timing |
| May | 0.95 -- 1.00 | Close to average; bank holidays may cause variation |
| June | 0.93 -- 0.98 | Slightly above average |
| July | 0.88 -- 0.95 | Summer peak on recreational routes |
| August | 0.85 -- 0.93 | Summer peak |
| September | 0.95 -- 1.00 | Close to average (neutral) |
| October | 0.98 -- 1.02 | Close to average (neutral) |
| November | 1.00 -- 1.05 | Slightly below average |
| December | 1.05 -- 1.15 | Holiday period; below average for most road types |

**Important:** These are illustrative ranges only. Actual DfT seasonal factors vary by road type (motorway, rural A-road, urban road, etc.) and are updated annually. Always use the current DfT published factors for actual processing.

**Daily factors (day-of-week adjustment, typical rural road):**

| Day | Factor (approximate, multiply day volume to estimate weekly average day) |
|-----|------------------------------------------------------------------------|
| Monday | 1.00 -- 1.02 |
| Tuesday | 1.00 -- 1.03 |
| Wednesday | 0.98 -- 1.02 |
| Thursday | 0.98 -- 1.02 |
| Friday | 0.93 -- 0.98 |
| Saturday | 0.98 -- 1.05 |
| Sunday | 1.05 -- 1.15 |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2a (UK): Check if DfT AADT is already available
  |- If DfT count point exists on the project road -> Use DfT AADT as baseline
  |- If WebTRIS data available (SRN) -> Use WebTRIS AADT
  |- If neither available -> Process project-specific count data using DfT factors
  \- For turning movements and junction flows -> Process project-specific junction counts

Step 6a (UK): Seasonal adjustment
  |- Use DfT published monthly factors for the road type
  |- Match road type: motorway / rural A-road / urban A-road / rural minor / urban minor
  \- Apply factor for the month of count
```

### M.3.2 Professional Judgment (UK-Specific)

**DfT AADT is often the best starting point.** For many UK projects, the DfT's own AADT estimates (from their count programme) are more reliable than re-processing short counts, because the DfT uses a consistent national methodology with well-calibrated seasonal factors.

**Project-specific counts provide local detail.** While DfT AADT gives a good corridor-level picture, project-specific counts are needed for junction capacity analysis, classified counts at specific locations, and any location not covered by DfT count points.

### M.3.3 Common Errors (UK-Specific)

1. **Not using available DfT data.** DfT AADT estimates are free and publicly available. Always check before processing raw data.
2. **Using wrong road type for seasonal factors.** A rural A-road has different seasonal patterns from an urban road or a motorway. Use the correct road type category.
3. **Ignoring bank holiday effects.** Counts on bank holiday weekends are not representative of normal weeks.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Seasonal factors | DfT published factors | UK road | -- ASSUMED: DfT seasonal factors applied. Verify road type classification is correct. | DfT standard methodology |
| K-factor | 0.10 -- 0.12 | UK rural road | -- ASSUMED: K = 0.10-0.12 (typical UK rural road). Verify with local data if available. | UK roads have less seasonal/hourly variation than developing country roads |
| Directional split | 50/50 | No directional data | -- ASSUMED: Equal directional split. | Standard for rural 2-lane roads |
| PHF | 0.92 | No 15-minute data | -- ASSUMED: PHF = 0.92 (typical UK conditions). | UK traffic flow is relatively uniform within peak hours |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| AADT (rural A-road) | 1,000 | 40,000 | vpd | DfT statistics | Warn if outside typical range |
| AADT (motorway) | 10,000 | 200,000 | vpd | DfT statistics | Warn if outside typical range |
| Seasonal factor | 0.80 | 1.20 | multiplier | DfT factors | Warn -- outside typical UK range |

### M.5.2 Standards Compliance Checks

- **Check:** Seasonal factors match DfT published values for the road type.
- **Standard:** DfT traffic counting guidance
- **Pass condition:** Factors are from current DfT publication for correct road type
- **Fail action:** Warn -- "Seasonal factors do not match current DfT values. Verify road type classification and factor source."

### M.5.3 Departures / Relaxations Process

No formal departures process for traffic data processing methodology. For scheme appraisal (DMRB), traffic data processing must follow DfT/TAG methodology. For local authority projects, methodology is at the engineer's discretion.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No DfT count point on project road | Must rely entirely on project-specific data | NOTE -- No DfT baseline available. Ensure project-specific count is of sufficient duration (minimum 7-day ATC). |
| Count data differs significantly from DfT AADT | May indicate data error or local change | SENIOR REVIEW -- Project count implies AADT of [X] vpd vs DfT estimate of [Y] vpd. Investigate discrepancy. |

---

## M.7 Worked Example -- UK

### Example: Processing a 7-Day ATC Count on a Rural A-Road

**Source:** Hypothetical, based on typical UK practice.

**Given:**
- Road: A4321, rural Oxfordshire
- Count type: 7-day ATC (pneumatic tubes)
- Count period: 3-9 July 2025
- Daily volumes (both directions): Mon 4,250 / Tue 4,380 / Wed 4,410 / Thu 4,350 / Fri 4,820 / Sat 4,100 / Sun 3,490
- DfT 2024 AADT for nearest count point: 4,100 vpd (for comparison)
- Road type for DfT seasonal factors: Rural A-road

**Solution:**

**Step 1: Data quality.** Volumes are consistent across the 7 days. Friday is highest (typical); Sunday is lowest (typical rural). No anomalies. Quality: Good.

**Step 2: Calculate 7-day average ADT.**
- Total = 4,250 + 4,380 + 4,410 + 4,350 + 4,820 + 4,100 + 3,490 = 29,800
- 7-day ADT = 29,800 / 7 = **4,257 vpd**

**Step 3: Apply seasonal adjustment.**
- Count in July. For rural A-road, July seasonal factor is approximately 0.93 (July traffic is above average, so factor < 1.0).
- AADT = 4,257 x 0.93 = **3,959 vpd**
- -- ASSUMED: DfT seasonal factor 0.93 for July on rural A-roads. *(Verify against current DfT published factors.)*

**Step 4: Compare with DfT baseline.**
- DfT 2024 AADT: 4,100 vpd
- Our estimate: 3,959 vpd (2025)
- Difference: -3.4% -- this is within reasonable range. The small decrease may reflect normal year-to-year variation or slight inaccuracy in the seasonal factor.

**Result:**

| Parameter | Value | Source |
|-----------|-------|--------|
| 7-day ADT | 4,257 vpd | Calculated from count |
| AADT (estimated) | 3,959 vpd | Seasonally adjusted (July factor 0.93) |
| DfT AADT (comparison) | 4,100 vpd | DfT 2024 published data |

**Escalation:** None -- processed AADT is within 4% of DfT published value. Acceptable for design purposes.

---

## M.8 References

*(Drafted from general DMRB knowledge -- verify against current DfT traffic data guidance before use in production)*

1. Department for Transport, *Road Traffic Statistics* (roadtraffic.dft.gov.uk).
2. Department for Transport, *TAG databook* (updated annually).
3. Department for Transport, *TEMPRO -- Trip End Model Presentation Program*.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft. All factors are approximate and drafted from general knowledge. DfT seasonal factor tables not available locally -- gap flags applied. |
