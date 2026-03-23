---
name: "traffic-data-processing"
description: "Use when processing raw traffic count data into design parameters — AADT, ADT, DHV, peak-hour factors, directional splits, and seasonal expansion. Requires raw counts from Skill #1 (Traffic Survey Design). Outputs feed into Skill #3 (Vehicle Classification) and Skill #6 (Traffic Forecasting)."
---

# Traffic Data Processing

> **Skill ID:** 2
> **Domain:** Traffic Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK

## Purpose

Process raw traffic count data into design parameters -- converting short-duration counts to Average Daily Traffic (ADT) and Annual Average Daily Traffic (AADT), applying seasonal and daily expansion factors, calculating Design Hourly Volume (DHV), peak-hour factors, and directional splits. This skill transforms raw survey data (from Skill #1) into the traffic parameters needed by downstream design skills.

## When to Use This Skill

- **Use when:** Raw traffic count data has been collected (or is available from existing sources) and needs to be processed into design traffic parameters (AADT, ADT, DHV, directional split, peak-hour factor).
- **Do not use when:** Traffic data has already been processed to AADT and classified volumes. Proceed directly to Skill #3 (Vehicle Classification) or Skill #6 (Traffic Forecasting).
- **Prerequisite skills:** Skill #1 (Traffic Survey Design) provides the raw count data and survey methodology. However, this skill can also process data provided directly by the user.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Average Daily Traffic (ADT):** The total volume of traffic during a given time period (greater than one day and less than one year), divided by the number of days in that time period. ADT is a period-specific measure -- it describes the average day during the count period, not the annual average.

**Annual Average Daily Traffic (AADT):** The total traffic volume for the year divided by 365. For two-lane rural roads, AADT typically represents the total traffic in both directions. AADT is the fundamental traffic parameter used for road design, particularly for low-volume roads. It smooths out daily and seasonal variation to give a single representative value.

**Design Hourly Volume (DHV):** The hourly traffic volume used for geometric design (capacity, LOS, intersection design). Using the maximum hourly volume would over-design; using the average hourly volume would under-design. The standard approach is to use the **30th highest hourly volume** (30th HV) of the year, which represents a reasonable balance.

**Relationship:** DHV = AADT x K x D

Where:
- K = the ratio of the 30th HV to AADT (typically 0.08-0.25 depending on traffic conditions)
- D = the directional distribution factor (proportion in the peak direction, typically 0.50-0.70)

**Seasonal Adjustment Factor:** A multiplier that converts an ADT from a specific month/season to an estimate of AADT. If traffic is counted in a month with higher-than-average traffic, the seasonal factor is < 1.0; if counted in a lower-than-average month, the factor is > 1.0.

**Daily Expansion Factor:** A multiplier that converts a partial-day count (e.g., 12-hour) to an estimated 24-hour volume. Derived from continuous count stations that show the proportion of daily traffic occurring during the count hours.

**Directional Split:** The proportion of traffic travelling in each direction. On most rural roads, the split is approximately 50/50 over a full day. However, peak-hour directional split can be 55/45 to 70/30 in commuter corridors.

**Peak-Hour Factor (PHF):** The ratio of the full peak-hour volume to four times the peak 15-minute volume within that hour. PHF ranges from 0.25 (all traffic in one 15-minute period) to 1.0 (perfectly uniform flow). Typical PHF values are 0.80-0.95.

### 1.2 Universal Formulas

**AADT from total annual count:**
```
AADT = Total annual volume / 365
```

**AADT estimated from short-period ADT:**
```
AADT = ADT_count_period x Seasonal_adjustment_factor
```

**Design Hourly Volume:**
```
DHV = AADT x K
```

Where K is the ratio of the 30th highest hourly volume to AADT.

**Directional Design Hourly Volume:**
```
DDHV = AADT x K x D
```

Where D is the proportion of traffic in the peak direction during the design hour.

**Daily expansion (12-hour to 24-hour):**
```
ADT_24hr = Volume_12hr / Proportion_12hr
```

Where Proportion_12hr is the fraction of 24-hour traffic that occurs during the 12-hour count period (typically 0.85-0.90 for rural roads in developing countries).

**Peak Hour Factor:**
```
PHF = V_60 / (4 x V_15max)
```

Where V_60 = peak hour volume and V_15max = maximum 15-minute volume within that hour.

### 1.3 Figures & Diagrams

**Hourly Volume Ranking Curve:** A curve plotting hourly volumes (as % of ADT) ranked from highest to lowest. The curve typically shows a steep decline from the highest hours (1st-10th) and then flattens. The 30th highest hour falls in the transition zone and represents a reasonable design target -- designing for a higher-ranked hour is wasteful, while designing for a lower-ranked hour creates unacceptable congestion too frequently.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Identify raw count data characteristics
  |- Count type: ATC (continuous) or MCC (partial-day)?
  |- Count duration: how many hours/days?
  |- Count period: which month/season?
  |- Classification: is vehicle type data available?
  \- Quality: any anomalies, equipment failures, missing data?

Step 3: Data quality check
  |- Check for missing intervals, zero counts during expected traffic periods
  |- Check for equipment malfunction indicators (sudden drops, unrealistic values)
  |- Flag and exclude anomalous data
  \- If data quality is poor -> Flag limitations; proceed with caution or recommend re-survey

Step 4: Expand partial counts to 24-hour ADT
  |- If 24-hour data available -> No expansion needed
  |- If 12-hour or 16-hour count -> Apply daily expansion factor
  |- Use country module factors (Section M.2) or continuous count station data
  \- Flag assumed expansion factors

Step 5: Calculate ADT from multi-day count
  |- Sum daily volumes and divide by number of count days
  |- Note: if count includes weekend days, decide whether to include or report separately
  \- Report weekday ADT and weekly ADT separately if significant difference

Step 6: Apply seasonal adjustment to estimate AADT
  |- Identify the month/season of the count
  |- Apply seasonal factor from country module (Section M.2) or continuous count station
  |- If count spans multiple seasons -> Weight accordingly
  \- If no seasonal factor available -> Flag: AADT estimate is unadjusted ADT

Step 7: Calculate DHV, K-factor, D-factor
  |- If continuous data available -> Calculate directly from ranked hourly volumes
  |- If short count -> Estimate K from country module (Section M.2) or Table 5-2 (MoWT)
  |- Determine directional split from count data
  \- Calculate: DHV = AADT x K; DDHV = AADT x K x D

Step 8: Calculate PHF (if 15-minute data available)
  |- Identify peak hour and peak 15-minute period
  |- PHF = V_60 / (4 x V_15max)
  \- If 15-minute data not available -> Use default PHF from country module

Step 9: Run validation (Section 4 + country module Section M.5)

Step 10: Check escalation triggers (Section 5 + country module Section M.6)

Step 11: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**A short count is not AADT.** The single most common error in traffic data processing is treating a short-duration count as if it were AADT. A 3-day count in January is an ADT for those 3 days in January -- it becomes an AADT estimate only after applying seasonal and daily expansion factors. Always make this distinction clear.

**Seasonal factors can be large.** In agricultural areas or tourist corridors, seasonal variation can be +/- 30% or more. A count in a peak month without seasonal adjustment will significantly overestimate AADT.

**Data quality is more important than processing sophistication.** A reliable 7-day count with simple processing is more valuable than a questionable 2-hour count with elaborate statistical adjustment. If the input data is poor, no amount of processing will make it reliable.

**Directional split matters for capacity and pavement design.** A 60/40 directional split means the peak direction carries 20% more traffic than average. For capacity analysis, use the peak-direction volume. For pavement design (ESA calculation), consider directional loading.

### 2.3 Common Errors

1. **Treating ADT as AADT.** A count-period ADT must be seasonally adjusted before it can be used as AADT.
2. **Applying wrong seasonal factors.** Factors from a different road type, region, or year may not apply.
3. **Not accounting for abnormal count days.** Market days, local events, road closures, and equipment failures can distort results. Inspect data for anomalies.
4. **Double-counting directional factors.** When AADT is reported as total (both directions), don't apply a directional factor if downstream calculations expect bi-directional volumes.
5. **Ignoring data quality.** Zero counts during expected traffic periods, sudden drops, or unrealistic peaks indicate equipment failure or data errors. These must be identified and excluded.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| K-factor (30th HV / AADT) | 0.15 | Rural road, no continuous data | -- ASSUMED: K = 0.15 (rural arterial average). Verify with continuous count data if available. | MoWT Table 5-2 rural arterial average |
| Directional split (D) | 0.50 | No directional data | -- ASSUMED: 50/50 directional split (both directions equal). Verify with survey data. | Conservative assumption for bi-directional design |
| Daily expansion (12hr to 24hr) | 0.85 | Rural road, 12-hour count 06:00-18:00 | -- ASSUMED: 12-hour count captures 85% of 24-hour traffic. Nighttime traffic = 15%. | Typical for rural roads in developing countries |
| PHF | 0.90 | No 15-minute data | -- ASSUMED: PHF = 0.90 (moderate peaking). Verify with 15-minute survey data. | Typical for rural roads |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Use factors that produce higher AADT estimates (leads to more robust design).
4. **Flag for investigation:** Every assumed factor includes a recommendation for obtaining actual data.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| AADT | 1 | 200,000 | vpd | Warn if > 100,000 (verify data); reject if 0 |
| K-factor | 0.05 | 0.40 | decimal | Warn -- outside typical range |
| D-factor | 0.50 | 0.80 | decimal | Warn if > 0.70 (unusual directional imbalance) |
| PHF | 0.50 | 1.00 | decimal | Warn if < 0.70 (extreme peaking) |
| Seasonal factor | 0.50 | 2.00 | multiplier | Warn -- outside typical range |
| Daily expansion factor | 0.70 | 1.00 | multiplier | Reject if > 1.0 (impossible) or < 0.70 (implies > 30% nighttime traffic) |

### 4.2 Consistency Checks

- **ADT vs AADT:** AADT should not differ from unadjusted ADT by more than 30% unless the count was during an extreme season.
- **Directional balance:** Total in Direction 1 should be within 20% of Direction 2 for rural roads (over a full day). Larger imbalances suggest data error or unusual conditions.
- **Classification totals:** Sum of classified volumes should equal total volume (within 5% tolerance for rounding).

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific factors | SENIOR REVIEW -- No country module for [jurisdiction]. Seasonal and expansion factors are generic estimates. |
| Count duration < 3 days | Insufficient data for reliable ADT | SENIOR REVIEW -- Count duration is only [X] days. ADT estimate is unreliable. Recommend extending survey. |
| No seasonal factor available | Cannot convert ADT to AADT | SENIOR REVIEW -- No seasonal adjustment factor available for [month] on this road type. AADT estimate is unadjusted ADT. |
| AADT near road class boundary | Small change in AADT changes design class | SENIOR REVIEW -- AADT estimate is near the boundary between road classes. Sensitivity analysis recommended. |
| Data quality concerns | Equipment failures, missing periods, anomalies | SENIOR REVIEW -- Data quality issues identified. [Describe issues]. Results should be treated with caution. |

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
| Raw count data | table/text | vehicles | Yes | Skill #1 or User | Raw traffic count volumes by time interval and direction |
| Count duration | number | hours or days | Yes | Skill #1 or User | Duration of the traffic count |
| Count type | category | -- | Yes | Skill #1 or User | Manual classified / ATC / Video |
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Month of count | text | -- | Yes (for seasonal adjustment) | Skill #1 or User | Month/season when count was conducted |
| Count classification | text | -- | No | Skill #1 or User | Vehicle classification scheme used |
| Continuous count station data | table | -- | No | User | Data from nearby permanent count station for expansion factors |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| AADT | number | vpd | Skills #3, #5, #6, #13 | Annual Average Daily Traffic |
| ADT | number | vpd | User | Average Daily Traffic for count period |
| Seasonal factors | table | multiplier | User | Seasonal adjustment factors applied |
| Daily factors | table | multiplier | User | Daily expansion factors applied |
| Directional split | number | % | Skill #5 | Proportion of traffic in peak/design direction |
| Peak hour factor K | number | decimal | User | Ratio of 30th HV to AADT |
| Peak hour directional D | number | decimal | User | Directional factor for design hour |
| DHV | number | vph | User | Design Hourly Volume (AADT x K) |
| DDHV | number | vph | User | Directional Design Hourly Volume (AADT x K x D) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific processing factors | Markdown |
| `modules/uk.md` | UK-specific processing factors | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module.

### Step 2: Review Raw Data Quality
Inspect count data for anomalies, missing periods, and equipment failures. Flag and exclude bad data.

### Step 3: Expand to 24-Hour ADT
If count is less than 24 hours, apply daily expansion factors from the country module or from continuous count station data.

### Step 4: Calculate Period ADT
Average the daily volumes over the count period.

### Step 5: Apply Seasonal Adjustment
Apply seasonal factors from the country module to convert period ADT to AADT.

### Step 6: Calculate Design Parameters
Calculate DHV (AADT x K), DDHV (AADT x K x D), and PHF from the data or defaults.

### Step 7: Validate
Run universal and country-specific validation checks.

### Step 8: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
TRAFFIC DATA PROCESSING -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard -- from country module]
Date: [YYYY-MM-DD]
============================================================

RAW DATA SUMMARY
----------------
Count Type:             [ATC / MCC / Video]
Count Duration:         [X hours/days]
Count Period:           [dates]
Count Month:            [month/year]
Total Count Volume:     [X] vehicles (both directions)

DATA QUALITY
------------
[Any anomalies, exclusions, missing data]
Quality Assessment:     [Good / Acceptable / Poor]

PROCESSING RESULTS
------------------
ADT (count period):     [X] vpd (both directions)
Seasonal Factor:        [X] (source: [source])
AADT (estimated):       [X] vpd (both directions)

Direction 1:            [X] vpd ([%])
Direction 2:            [X] vpd ([%])
Directional Split:      [X]/[X]

DESIGN HOURLY VOLUME
--------------------
K-factor:               [X] (source: [source])
D-factor:               [X] (source: [source])
DHV:                    [X] vph (AADT x K)
DDHV:                   [X] vph (AADT x K x D)
PHF:                    [X]

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

- **Not covered:** Traffic microsimulation data processing. Time series analysis for trend detection. Origin-destination matrix estimation.
- **Simplifications:** Seasonal factors are assumed constant year-to-year. Growth between count year and design year is not applied here (see Skill #6).
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia, Rwanda, South Africa, Nigeria, Ghana

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
