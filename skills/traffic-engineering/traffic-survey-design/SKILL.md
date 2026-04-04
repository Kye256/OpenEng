---
name: "traffic-survey-design"
description: "Use when planning traffic surveys for a road project — selecting survey types (classified counts, ATCs, video, O-D), station locations, durations, and seasonal timing. No prerequisite skills — this is the entry point of the traffic engineering pipeline. Outputs feed into Skill #2 (Traffic Data Processing)."
---

# Traffic Survey Design

> **Skill ID:** 1
> **Domain:** Traffic Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Plan and design traffic surveys for road projects -- selecting survey types (manual classified counts, automatic traffic counters, video surveys, origin-destination surveys), determining station locations, count durations, and seasonal timing to obtain representative traffic data for road design.

## When to Use This Skill

- **Use when:** Starting a new road project that requires traffic data, reviewing the adequacy of existing traffic data for design purposes, or planning additional surveys to fill data gaps.
- **Do not use when:** Traffic data has already been collected and processed -- proceed to Skill #2 (Traffic Data Processing). Also not needed if the project scope does not include traffic analysis (e.g., pure maintenance works where existing traffic data is accepted).
- **Prerequisite skills:** None -- this is the entry point of the traffic engineering pipeline.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Traffic Survey Types:**

- **Manual Classified Count (MCC):** Enumerators record vehicles by type at a survey station. Produces classified volumes by direction and time interval (typically 15-minute or 1-hour). Can capture vehicle types not detectable by machines (e.g., matatus, boda-bodas, NMT). Labour-intensive; practical for 12-16 hour counts.
- **Automatic Traffic Counter (ATC):** Pneumatic tubes, inductive loops, or piezoelectric sensors that record axle hits continuously. Produces 24-hour, 7-day (or longer) total volume data. Cannot reliably classify vehicles beyond simple length-based groupings. Best for capturing daily and weekly variation patterns.
- **Video Survey:** Cameras record traffic flow for later manual or automated classification. Combines the classification capability of MCC with the continuity of ATC. Useful for complex junctions and turning movements. Requires post-processing.
- **Origin-Destination (OD) Survey:** Roadside interview or licence plate matching to determine where vehicles are travelling from/to. Used for route assignment models and bypass justification. Not a volume count -- supplements volume data with routing information.
- **Automatic Number Plate Recognition (ANPR):** Camera-based capture of licence plates to track journey times and routes. Increasingly used in UK; limited availability in East Africa.

**Survey Station Selection:**

- Stations should be at **representative locations** that capture the traffic characteristics of the road section.
- Avoid locations near junctions, bus stops, speed bumps, or other features that cause abnormal traffic behaviour.
- For corridor studies, place stations at: project boundaries, major junctions (to capture turning traffic), midway between junctions (to capture through traffic), and at any location where traffic volume is expected to change significantly.
- Urban/rural boundary points are critical -- traffic patterns change substantially.

**Count Duration:**

- Longer counts are more representative but more expensive.
- **7-day ATC** is the preferred minimum for establishing daily variation patterns.
- **12-hour manual classified count** (typically 06:00--18:00) captures most traffic on rural roads in developing countries where nighttime traffic is minimal.
- **16-hour count** (06:00--22:00) is needed where significant evening traffic exists (urban roads, truck corridors with 24-hour operations).
- Short counts (< 7 days) must be expanded using factors derived from nearby continuous count stations.

**Seasonal Timing:**

- Traffic volumes vary significantly by season, especially in agricultural areas.
- Counts during holiday periods, harvest seasons, or school term breaks may not be representative of annual averages.
- The relationship between the count period and the annual average is captured by **seasonal adjustment factors** (see Skill #2).
- Ideally, counts should be conducted during a "neutral" month that approximates the annual average. Where this is not possible, seasonal factors must be applied.

### 1.2 Universal Formulas

**Sample size for roadside interview (OD survey):**

The minimum sample size depends on the traffic volume and desired confidence level. A common rule of thumb for OD surveys:

```
If AADT < 1,000:  interview 100% (or as close as practicable)
If AADT 1,000-5,000: interview minimum 50%
If AADT > 5,000: interview minimum 25%
```

These are guidelines; actual sample rates depend on survey objectives and budget.

**Hourly expansion factor (short count to 24-hour):**

```
ADT_estimate = (Count_hours_volume) x (24 / Count_hours) x Hourly_profile_factor
```

Where the hourly profile factor accounts for the non-uniform distribution of traffic across hours. This is a rough estimate; proper expansion uses hourly profile data from a nearby continuous count station.

### 1.3 Figures & Diagrams

**Traffic Volume Variation Curves:** Conceptual diagram showing three levels of variation:
1. **Hourly variation** within a day (peaks at morning and evening in urban; single peak midday in rural)
2. **Daily variation** within a week (higher weekday traffic in urban; market day peaks in rural)
3. **Monthly/seasonal variation** within a year (agricultural seasons, holidays, school terms)

The agent should understand that a single short-duration count captures only a snapshot. The purpose of survey design is to plan counts that either capture enough variation to be representative, or can be reliably expanded to annual averages using known variation patterns.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Identify project stage and data requirements
  |- Feasibility study -> Screening-level data acceptable; short counts + defaults may suffice
  |- Preliminary design -> Reliable AADT needed; 7-day ATC or equivalent required
  |- Detailed design -> Full classified counts, possibly OD survey; highest data quality
  \- Post-construction / monitoring -> Periodic counts to verify predictions

Step 3: Review existing traffic data
  |- What data already exists? (government count stations, previous studies, client data)
  |- How old is it? (> 5 years old: likely needs updating)
  |- How was it collected? (method, duration, season)
  |- Is it adequate for the project stage? (see Step 2)
  \- If adequate -> Proceed to Skill #2. If not -> Plan additional surveys.

Step 4: Determine survey types needed
  |- Volume data needed -> ATC (continuous) + MCC (classification)
  |- Turning movement data -> Video survey or manual junction count
  |- Route/OD information -> OD roadside interview or ANPR
  |- Speed data -> Radar or GPS-based speed survey
  \- See country module, Section M.3 for country-specific survey method guidance

Step 5: Select survey locations
  |- See country module, Section M.2 for station spacing guidance
  |- Apply universal station selection criteria (Section 1.1)
  \- Document station locations with chainage and GPS coordinates

Step 6: Determine count duration and timing
  |- See country module, Section M.2 for duration requirements
  |- Apply seasonal timing considerations (avoid holidays, harvest, school breaks)
  \- Plan for neutral months or note need for seasonal adjustment

Step 7: Estimate budget and resources
  |- Calculate enumerator requirements for MCC
  |- Equipment availability for ATC
  |- If budget constrains survey scope -> Document limitations and flag
  \- Prioritise: better to have reliable data at fewer locations than poor data everywhere

Step 8: Run validation (Section 4 + country module Section M.5)

Step 9: Check escalation triggers (Section 5 + country module Section M.6)

Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Data quality trumps quantity.** A well-planned 7-day ATC at three representative locations is more valuable than twenty 2-hour manual counts scattered across the project corridor. The survey design should prioritise reliability over coverage when budget is limited.

**Always document the survey methodology.** Downstream processing (Skill #2) and design decisions depend on understanding how the data was collected. Record: survey type, duration, dates, weather conditions, any anomalies observed during counting.

**Traffic data has a shelf life.** In high-growth corridors, traffic data older than 3-5 years may not be representative even with growth factor adjustment. For major projects, always verify old data with at least a short confirmatory count.

**Consider non-motorised traffic.** In many developing countries, pedestrians, cyclists, and motorcycles constitute a significant share of road users. The survey plan should explicitly include NMT counts if the project involves cross-section design, safety improvements, or capacity analysis.

**Night-time traffic matters for some projects.** On truck corridors or urban arterials, significant traffic may travel at night. A 12-hour daytime count will underestimate total volume. For pavement design (which depends on total loading, not just daytime), consider 24-hour counts or apply night-time expansion factors.

### 2.3 Common Errors

1. **Counting on atypical days.** Market days, public holidays, election days, and school opening/closing days produce unrepresentative traffic. Check the local calendar before scheduling.
2. **Ignoring seasonal variation.** A single count in one season does not represent the annual average. Apply seasonal factors or plan counts across multiple seasons.
3. **Placing stations at junctions.** Traffic at junctions includes turning traffic that may not use the road section. Station placement should be on road links, not at intersections (unless junction turning counts are specifically needed).
4. **Under-counting motorcycles and NMT.** In East Africa, boda-bodas may constitute 30-50% of vehicles. If MCC enumerators are not specifically trained to count motorcycles, they may be underreported.
5. **Not planning for equipment failure.** ATC equipment can fail due to weather, vandalism, or power supply. Plan contingency (spare equipment, manual backup counts).

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Survey type | 7-day ATC + 12-hour MCC | Not specified | -- ASSUMED: Combined ATC/MCC approach (standard practice for road design) | Provides both continuous volume data and vehicle classification |
| Count duration (ATC) | 7 consecutive days | Not specified | -- ASSUMED: 7-day ATC count (minimum for daily pattern analysis) | Captures weekday and weekend variation |
| Count duration (MCC) | 12 hours (06:00-18:00) | Rural road, not specified | -- ASSUMED: 12-hour manual count (06:00-18:00). Night traffic assumed to be 10-15% of 24-hour total for rural roads. | Standard for rural roads in developing countries; adjust for urban or truck corridors |
| Seasonal adjustment | Required unless count in neutral month | Count < 1 year duration | -- ASSUMED: Seasonal adjustment required (see Skill #2) | Single-period counts are not AADT |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** When in doubt, plan for longer count duration and more stations (better data).
4. **Flag for investigation:** Every assumed survey parameter includes a recommendation for validation.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| MCC duration | 6 | 24 | hours | Warn if < 12 hours (may not capture representative peak periods) |
| ATC duration | 3 | 365 | days | Warn if < 7 days (cannot establish daily variation pattern) |
| Number of survey stations | 1 | -- | count | Warn if only 1 station for corridor > 20 km |
| Survey age | 0 | 5 | years | Warn if > 3 years for high-growth areas; reject if > 5 years without confirmatory count |

### 4.2 Consistency Checks

- **Station spacing:** For corridor projects, verify that stations are spaced to capture traffic volume changes at major junctions and land use boundaries.
- **Count period vs project timeline:** Verify that survey data will be available when needed for design. Allow lead time for data processing.
- **Survey type vs data requirements:** Verify that the planned survey types will produce the data needed for the project stage (e.g., pavement design needs classified counts, not just total volume).

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. Verify all standard-specific parameters. |
| No existing traffic data and no budget for survey | Cannot design road without traffic data | SENIOR REVIEW -- No traffic data available and no survey budget. Cannot proceed with reliable design. Recommend minimum screening-level survey. |
| Project on high-growth corridor with data > 3 years old | Traffic may have changed significantly | SENIOR REVIEW -- Existing data is [X] years old on high-growth corridor. Recommend confirmatory count before design. |
| Survey timing falls in holiday/harvest period | Data will not be representative | SENIOR REVIEW -- Planned survey dates coincide with [holiday/harvest period]. Reschedule or plan for larger seasonal adjustment factors. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Road name/project | text | -- | Yes | User | Project identification |
| Project stage | category | -- | Yes | User | Feasibility / Preliminary design / Detailed design |
| Existing traffic data | text | -- | No | User | Any previous counts, studies, or government data |
| Budget constraints | text | -- | No | User | Available budget for survey works |
| Road function | category | -- | No | Skill #13 or User | Trunk / Primary / Secondary / Minor |
| Road length | number | km | No | User | Length of project corridor |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Survey plan | structured text | -- | Skill #2, User | Survey types, station locations, durations, timing, methodology |
| Raw count data format | specification | -- | Skill #2 | Expected data format and classification scheme for collected data |
| Survey adequacy assessment | text | -- | User | Whether existing + planned data is sufficient for the project stage |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific survey guidance | Markdown |
| `modules/uk.md` | UK-specific survey guidance | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: Review Existing Data
Catalogue any existing traffic data provided. Assess its adequacy for the project stage (age, method, coverage, season). If adequate, document and proceed to Skill #2.

### Step 3: Identify Data Gaps
Compare existing data against requirements for the project stage. Identify what additional data is needed (volume, classification, OD, speed, turning movements).

### Step 4: Select Survey Types
Based on data gaps, select appropriate survey methods. Apply country module guidance for method selection (Section M.3).

### Step 5: Locate Survey Stations
Apply station selection criteria (Section 1.1) and country module spacing guidance (Section M.2). Document station locations.

### Step 6: Determine Duration and Timing
Apply country module duration requirements (Section M.2). Check seasonal timing against local calendar. Schedule surveys in neutral periods where possible.

### Step 7: Prepare Survey Plan
Compile survey methodology, station details, timing, equipment requirements, staffing, and budget estimate. Format per Section 8.

### Step 8: Validate and Check Escalation
Run universal checks (Section 4) and country-specific checks (Module Section M.5). Scan escalation triggers (Section 5 and Module Section M.6).

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
TRAFFIC SURVEY DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard and edition -- from country module]
Date: [YYYY-MM-DD]
============================================================

PROJECT CONTEXT
---------------
Road Name:              [name]
Project Stage:          [Feasibility / Preliminary / Detailed]
Road Function:          [function]
Corridor Length:        [X] km

EXISTING DATA REVIEW
--------------------
[Summary of existing data, adequacy assessment]
Data Adequacy:          [Adequate / Partially adequate / Inadequate]

SURVEY PLAN
-----------
Survey Type(s):         [ATC, MCC, Video, OD, etc.]
Number of Stations:     [X]
Count Duration:         [X days ATC / X hours MCC]
Survey Period:          [planned dates/months]
Seasonal Considerations: [notes on timing]

STATION DETAILS
---------------
| Station | Chainage | Location Description | Survey Type | Duration |
|---------|----------|---------------------|-------------|----------|
| 1       | [km]     | [description]       | [type]      | [days/hrs] |

EQUIPMENT & STAFFING
--------------------
[Equipment requirements, enumerator numbers, supervision]

RAW DATA FORMAT
---------------
[Expected classification scheme, time intervals, recording format]

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

- **Not covered:** Detailed OD survey design (sample frames, interview questionnaire design). Speed survey methodology. Traffic microsimulation data requirements.
- **Simplifications:** Survey cost estimation is indicative, not based on current market rates. Equipment specifications are generic.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia, Rwanda, South Africa, Nigeria, Ghana

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
