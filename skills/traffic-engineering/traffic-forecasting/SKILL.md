---
name: "traffic-forecasting"
description: "Use when projecting current AADT to design-year volumes using compound growth, estimating generated/diverted traffic, or developing growth scenarios. Requires baseline AADT from Skill #2 (Traffic Data Processing). Outputs feed into Skill #5 (ESA Calculation) and Skill #13 (Design Standards Selection)."
---

# Traffic Forecasting

> **Skill ID:** 6
> **Domain:** Traffic Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK

## Purpose

Forecast future traffic volumes for road design purposes -- projecting current AADT to the design year and design life using compound growth, estimating generated and diverted traffic for improvement projects, and developing low/medium/high growth scenarios. This skill produces the growth rate and design-year AADT that feed into ESA calculation (Skill #5) and design standards selection (Skill #13).

## When to Use This Skill

- **Use when:** Current traffic data is available and future traffic volumes need to be estimated for road design, capacity analysis, or economic evaluation.
- **Do not use when:** Only raw traffic count data is available that has not been processed to AADT -- return to Skill #2 first. Also not needed if traffic forecasts have already been provided by a transport planning study.
- **Prerequisite skills:** Skill #2 (Traffic Data Processing) provides baseline AADT. Skill #3 (Vehicle Classification) provides heavy vehicle percentage and fleet composition for class-specific growth.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Traffic Growth Components:**

Traffic on a road changes over time due to three components:

- **Normal (organic) growth:** The natural increase in traffic due to economic development, population growth, vehicle ownership growth, and land use changes. This is the dominant component for most roads.
- **Generated traffic:** Additional traffic induced by the road improvement itself. A better road attracts trips that would not have been made at all (latent demand). Typically estimated as 10-20% of normal traffic for major improvements. Significant for road upgrades (gravel to paved, widening).
- **Diverted traffic:** Existing traffic that shifts from other routes to the improved road because it is now faster, shorter, or more comfortable. This is a transfer, not new traffic in the network.

**Compound Growth Formula:**

The standard method for projecting traffic:
```
Future_AADT = Base_AADT x (1 + r/100)^n
```

Where:
- Base_AADT = current AADT (at count year or opening year)
- r = annual growth rate (percent)
- n = number of years

This assumes constant percentage growth, which is a simplification. In reality, growth rates may change over time due to economic cycles, road capacity constraints, and land use saturation.

**Design Year:**

The last year of the road's design life. For a road opening in 2027 with a 20-year design period, the design year is 2047. The design-year AADT is the traffic volume the road must serve at the end of its life.

**Growth Rate Estimation:**

Growth rates can be estimated from:
- **Historical traffic data:** Trend analysis of counts on the same road or corridor
- **GDP correlation:** National GDP growth correlates with traffic growth (elasticity typically 0.8-1.2)
- **Vehicle ownership trends:** Rising vehicle ownership in developing countries drives growth
- **Land use changes:** New developments, mining operations, or agricultural expansion
- **Transport planning models:** Formal demand models for large projects

**Growth Scenarios:**

Since growth is inherently uncertain, forecasting should present multiple scenarios:
- **Low growth:** Conservative estimate, used for economic analysis (lower bound of benefits)
- **Medium growth:** Most likely estimate, used as the base case for design
- **High growth:** Optimistic estimate, used for testing design robustness

### 1.2 Universal Formulas

**Compound growth projection:**
```
Future_AADT = Base_AADT x (1 + r/100)^n
```

**Cumulative traffic over design period:**
```
Cumulative = Base_AADT x 365 x [(1 + r/100)^p - 1] / (r/100)
```

This is the same as MoWT Equation 1 (see Skill #5). Note: the traffic forecasting skill provides the growth rate r that Skill #5 uses.

**Generated traffic estimate:**
```
Generated_traffic = Normal_traffic x generation_factor
```

Where generation_factor is typically 0.10-0.20 (10-20%) for major improvements, based on elasticity of demand with respect to travel cost/time reduction.

**Multi-period growth:**

When growth rates differ across periods (e.g., 6% for years 1-5, then 4% for years 6-20):
```
AADT_year5 = Base_AADT x (1 + r1/100)^5
AADT_year20 = AADT_year5 x (1 + r2/100)^15
```

### 1.3 Figures & Diagrams

**Traffic Growth Projection Chart:** A line chart showing AADT (y-axis) vs year (x-axis) with three lines representing low, medium, and high growth scenarios. The chart spans from the base year to the design year. The fan shape illustrates the increasing uncertainty over time. Marking the current AADT and design-year AADT helps communicate the growth magnitude.

**Growth Rate Sensitivity:** A bar chart showing how different growth rates affect the design-year AADT. For example, a base AADT of 2000 at 3%, 5%, and 7% growth over 20 years gives design-year AADT of 3,612, 5,307, and 7,739 respectively -- illustrating the compounding effect.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Establish base AADT
  |- From Skill #2 (processed traffic data) -> Use directly
  |- From user-provided data -> Use directly
  |- No traffic data available -> Flag and use country module defaults
  \- Check: Is base AADT for the count year or the opening year?
     If count year and opening is in the future, grow forward

Step 3: Determine growth rate
  |- Historical data available -> Calculate trend growth rate
  |- Country module provides guidance -> Use country-specific rates
  |- GDP correlation available -> Apply elasticity
  |- No data -> Use country module defaults with escalation flag
  \- Select growth rate and document justification

Step 4: Estimate generated traffic (if improvement project)
  |- New road or major upgrade -> Estimate 10-20% generated traffic
  |- Rehabilitation (no capacity change) -> Generated traffic = 0
  |- Apply generation factor to normal traffic
  \- Add generated traffic to normal growth projection

Step 5: Estimate diverted traffic (if applicable)
  |- New route providing shorter/faster alternative -> Estimate diverted volume
  |- This requires knowledge of the competing route network
  |- Add diverted traffic to base AADT at opening
  \- If significant diversion expected -> Flag for transport planning study

Step 6: Project to design year
  |- Apply compound growth: Design_AADT = Opening_AADT x (1+r/100)^p
  |- If multiple growth periods -> Apply each period separately
  \- Report design-year AADT

Step 7: Develop growth scenarios (low/medium/high)
  |- Low: medium rate minus 2%
  |- Medium: selected rate
  |- High: medium rate plus 2%
  \- Report all three for sensitivity analysis

Step 8: Calculate cumulative traffic (for Skill #5 input)
  |- Cumulative vehicles over design period
  |- Provide growth rate for Skill #5 Equation 1
  \- Report heavy vehicle growth separately if different from total

Step 9: Run validation (Section 4 + country module Section M.5)

Step 10: Check escalation triggers (Section 5 + country module Section M.6)

Step 11: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Traffic growth is not constant.** The compound growth formula assumes constant percentage growth, but in reality growth rates change. New road sections may see rapid initial growth (diverted + generated traffic) followed by slower organic growth. Use multi-period projections when appropriate.

**High growth rates cannot be sustained indefinitely.** A 7% growth rate doubles traffic every 10 years. Over 20 years, traffic quadruples. For a road with AADT 3000, this means 12,000 at design year. Check whether this is physically reasonable given the road capacity and corridor context.

**Generated traffic is real but hard to measure.** Studies consistently show that road improvements generate new traffic (induced demand), typically 10-20% above normal growth for significant improvements. Ignoring generated traffic leads to under-design. Over-estimating it leads to over-design.

**Heavy vehicle and light vehicle growth may differ.** In rapidly developing countries, car ownership grows faster than truck traffic. On mining/industrial corridors, heavy vehicle growth may outpace general traffic. If possible, project different vehicle classes at different rates.

**The gap between count year and opening year matters.** If traffic was counted in 2024 and the road opens in 2028, the opening AADT is 4 years of growth higher than the counted AADT. This must be accounted for.

### 2.3 Common Errors

1. **Using count-year AADT as opening-year AADT.** If there is a gap between counting and opening, the AADT must be grown forward.
2. **Applying the same growth rate for 20+ years without questioning it.** Growth rates should be reviewed and justified. Consider whether the rate is realistic at the design-year traffic level.
3. **Ignoring generated traffic for major improvements.** Converting a gravel road to paved generates significant new traffic. This should be estimated and added.
4. **Not presenting growth scenarios.** A single-point forecast gives a false sense of precision. Always present low/medium/high scenarios.
5. **Double-counting diverted traffic.** Diverted traffic is transfers from other routes, not new trips. On a network basis, total traffic does not change. Be clear about what is being counted.
6. **Using national average growth rates for corridor-specific forecasts.** Corridor-specific factors (mining, agriculture, urbanisation) can cause growth rates significantly different from national averages.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Growth rate (developing country) | 4-5% | No data | -- ASSUMED: Growth rate = [X]% per annum. Verify with historical data, GDP correlation, or transport planning study. | Mid-range for developing countries |
| Growth rate (developed country) | 1-2% | No data | -- ASSUMED: Growth rate = [X]% per annum. Verify with national traffic forecasts. | Typical for mature networks |
| Generated traffic factor | 15% | Major improvement project | -- ASSUMED: Generated traffic = 15% of normal traffic. Based on typical elasticity for major road improvements. | Engineering judgment |
| Diverted traffic | 0 | Not assessed | -- ASSUMED: No diverted traffic. Verify if competing routes exist. | Conservative (under-estimates) |
| Design period | 20 years | Not specified | -- ASSUMED: 20-year design period. Confirm with country standard. | Common for trunk roads |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Present growth scenarios even when growth rate is assumed.
3. **Conservative direction:** For pavement design, use higher growth (more conservative). For economic analysis, present both high (conservative for design) and low (conservative for benefits) scenarios.
4. **Flag for investigation:** Growth rate assumptions should always be flagged prominently.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Growth rate | -2 | 15 | % | Warn if negative (declining traffic); warn if > 10% (unsustainable long-term) |
| Design-year AADT | 10 | 200,000 | vpd | Warn if > 100,000 (verify -- very high) |
| Generated traffic factor | 0 | 0.30 | decimal | Warn if > 0.25 (unusually high generated traffic assumption) |
| Design period | 5 | 40 | years | Warn if > 25 or < 10 (non-standard) |

### 4.2 Consistency Checks

- **Design-year AADT vs capacity:** Check whether design-year AADT exceeds the road capacity. If so, either the growth rate is too high or the road will need capacity improvements.
- **Growth rate vs historical trend:** If historical data is available, the projected growth rate should be within a reasonable range of the historical trend.
- **Heavy vehicle growth vs total growth:** If heavy vehicle growth significantly exceeds total growth, verify that the fleet composition is realistic at design year.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific growth guidance | SENIOR REVIEW -- No country module. Growth rate is a generic assumption. |
| No historical traffic data | Cannot verify growth rate | SENIOR REVIEW -- No historical traffic data available. Growth rate of [X]% is assumed without empirical basis. |
| Growth rate > 7% sustained | May be unsustainable | NOTE -- Growth rate of [X]% over [Y] years produces design-year AADT of [Z]. Verify this is physically and economically reasonable. |
| Design-year AADT > road capacity | Road will be congested before design life ends | SENIOR REVIEW -- Design-year AADT of [X] exceeds estimated road capacity. Consider higher design standard or staged construction. |
| No growth rate information | Cannot project traffic | SENIOR REVIEW -- No growth rate data or guidance available. Default of [X]% assumed. Recommend traffic study. |

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
| AADT | number | vpd | Yes | Skill #2 | Baseline Annual Average Daily Traffic |
| Heavy vehicle percentage | number | % | No | Skill #3 | For class-specific forecasting |
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Road function | category | -- | No | Skill #13 or User | Trunk/district/community for growth rate guidance |
| Project type | category | -- | No | User | New / Improvement / Rehabilitation (for generated traffic) |
| Historical traffic data | table | vpd by year | No | User | For trend-based growth rate estimation |
| Design period | number | years | No | User | Period for cumulative traffic calculation |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Forecast AADT | number | vpd | Skill #13 (design standards) | Design-year AADT for geometric design |
| Forecast heavy vehicles | number | vpd | Skill #5 | Design-year heavy vehicle volume |
| Cumulative traffic | number | vehicles | User | Total vehicles over design period |
| Growth rate | number | % per annum | Skill #5 | Annual growth rate for ESA calculation |
| Growth scenario range | table | low/medium/high | User/report | Growth scenarios with AADT projections |
| Design year AADT | number | vpd | Skills #13, #17 | Traffic volume at end of design life |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda growth rate guidance | Markdown |
| `modules/uk.md` | UK traffic forecasting approach | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load growth rate guidance and country-specific context.

### Step 2: Establish Base AADT
Confirm base AADT from Skill #2 or user input. Adjust for count-year to opening-year gap if needed.

### Step 3: Determine Growth Rate
Use historical data, country module guidance, GDP correlation, or defaults. Document justification.

### Step 4: Estimate Generated and Diverted Traffic
For improvement projects, estimate additional traffic components.

### Step 5: Project to Design Year
Apply compound growth formula. Calculate design-year AADT.

### Step 6: Develop Scenarios
Calculate low/medium/high growth scenarios.

### Step 7: Calculate Cumulative Traffic
Calculate total vehicles and provide growth rate for Skill #5.

### Step 8: Validate and Check Escalation
Run universal and country-specific checks.

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
TRAFFIC FORECASTING -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard -- from country module]
Date: [YYYY-MM-DD]
============================================================

INPUTS
------
Base AADT:              [X] vpd (year: [YYYY], source: [Skill #2 / User])
Heavy Vehicle %:        [X]%
Project Type:           [New / Improvement / Rehabilitation]
Design Period:          [X] years (opening: [YYYY], design year: [YYYY])

GROWTH RATE
-----------
Selected Rate:          [X]% per annum
Justification:          [Historical data / GDP correlation / Country guidance / Default]
Historical Trend:       [if available: trend analysis results]

TRAFFIC COMPONENTS
------------------
Normal Growth:          [X] vpd at design year
Generated Traffic:      [X] vpd ([X]% of normal, or "Not applicable")
Diverted Traffic:       [X] vpd (or "Not assessed")
Total Design-Year AADT: [X] vpd

GROWTH SCENARIOS
----------------
| Scenario | Growth Rate | Opening AADT | Design-Year AADT | Cumulative Vehicles |
|----------|------------|--------------|------------------|---------------------|
| Low      | [X]%       | [X]          | [X]              | [X] million         |
| Medium   | [X]%       | [X]          | [X]              | [X] million         |
| High     | [X]%       | [X]          | [X]              | [X] million         |

OUTPUTS FOR DOWNSTREAM SKILLS
------------------------------
Growth rate for Skill #5 (ESA):    [X]% per annum
Design-year AADT for Skill #13:    [X] vpd
Design-year heavy vehicles:        [X] vpd

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

- **Not covered:** Four-step transport demand modelling. Origin-destination forecasting. Induced demand elasticity estimation. Mode shift analysis.
- **Simplifications:** Constant growth rate over design period (multi-period growth is optional). Generated traffic estimated as percentage rather than from demand model. Heavy vehicle and light vehicle growth assumed equal unless separated.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia, Rwanda, South Africa, Nigeria, Ghana

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
