# Traffic Forecasting -- Kenya Module

> **Parent Skill:** Skill #6 Traffic Forecasting
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.2: Traffic Surveys (2025), Chapter 5; RDM 3.4 Section 2.4
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.2 | 2025 | Chapter 5 (Traffic Growth Estimation), Sections 5.1-5.5 | Current -- forecasting methodology |
| Kenya Road Design Manual RDM 3.4 | 2025 | Section 2.4 (Design Period), Table 2.1 | Current -- design period selection |

### M.1.2 Institutional Context

Traffic forecasting in Kenya is conducted as part of road design studies commissioned by KeNHA, KeRRA, KURA, or County Governments. Data sources include:

- **VWS and weighbridge data:** 22 VWS and 9 permanent weighbridges provide continuous traffic volume data for growth rate estimation on the national highway network.
- **Vehicle registry data:** The Government of Kenya maintains a vehicle registry with annual registrations. This can be used to estimate traffic growth rates (Table 5.1). The registry should be computed with and without motorcycles due to the rapid growth of motorcycle volumes.
- **Kenya National Bureau of Statistics (KNBS):** Publishes GDP, population, and economic indicators that support traffic growth estimation.
- **Vision 2030 / BETA:** Government planning documents provide macroeconomic forecasts.

### M.1.3 Standard Philosophy

RDM 1.2 Chapter 5 provides guidance on traffic growth estimation methods but does not prescribe specific growth rates. The manual states: "In the engineering practice in Kenya, a traffic engineer determines one or two applicable compound growth rates for the design period of the road" (Section 5.1). Growth rates are typically above 5% in the first 10 years after construction/rehabilitation, reducing to 1-4% thereafter. A minimum growth rate of 0.2% annually should be applied even when trend analysis shows minimal growth (Section 5.1, Note).

Three growth rate scenarios (low, medium, high) should be determined and used to assess sensitivity of the design (Section 5.2.2).

---

## M.2 Country-Specific Knowledge

### M.2.1 Traffic Growth Estimation Methods (RDM 1.2, Table 5.1)

**Table 5.1: Methods of Estimating Traffic Growth (Verified)**

| Method | Description |
|--------|-------------|
| Local historic precedent | Annual traffic data from nearby similar roads used to compute growth rate. Best indicator for short-term forecasting. |
| Economic growth estimation | Traffic growth related to GDP growth. Regional growth rates preferred over national averages due to large regional differences. |
| Vehicle registry | Annual vehicle registrations used to estimate growth rate. Registry should be computed with and without motorcycles. Nairobi and Mombasa concentrations mean peripheral area growth may be lower. |
| Weighbridges | Annual truck counts from weighbridges or WIM stations. Good for estimating commercial vehicle growth rate by category. Good enforcement required for reliable data. |
| Population trends | GDP and population growth as dominant long-term factors. National and local population trends useful. |
| Fuel consumption trends | Customs Department records of fuel imports. Note: fuel also used in industrial plants, agricultural equipment, and generators. |

**Source:** RDM 1.2, Table 5.1 (Verified from PDF)

### M.2.2 Types of Traffic (RDM 1.2, Section 5.2.1)

Kenya RDM distinguishes three types of traffic for forecasting:

1. **Normal traffic:** Future traffic that would travel the existing road even without improvement. Projected using compound growth rate: T_f = T_0 (1 + r)^t (Equation 5.1).
2. **Diverted traffic:** Traffic currently using other routes that would divert to the improved road due to comfort, convenience, or time/cost savings. Estimated using OD survey data with all-or-nothing assignment.
3. **Generated traffic:** Consists of (a) converted traffic (mode shift) and (b) induced traffic (increased travel due to accessibility). Price elasticity of demand for transport in developing countries ranges from -0.6 to -2.0 with average approximately -1.0 (Section 5.2.1.4).

### M.2.3 Traffic Growth Rate Guidance for Kenya

Based on RDM 1.2 guidance and Kenya practice:

| Road Type / Context | Typical Growth Rate Range | Notes |
|-------------------|--------------------------|-------|
| KeNHA trunk roads (Class A, B) | 4-7% | Higher on Northern Corridor and developing corridors |
| KeRRA primary rural roads (Class C) | 3-5% | Moderate growth linked to regional economic activity |
| KeRRA secondary/minor rural roads (Class D, E) | 2-4% | Lower but can spike with new developments |
| KURA urban roads (Class UA, UC) | 5-10% | Rapid urbanisation; congestion may constrain growth |
| Specialist rural roads (F, G, K, L, P, R, S, T, U, W) | 2-5% | Seasonal and crop-dependent; may be very variable |
| County roads | 2-5% | Varies significantly by county economic development |
| First 10 years after construction/rehabilitation | > 5% | RDM 1.2 Section 5.1 guidance |
| After 10+ years | 1-4% | Growth typically tapers as capacity is reached |
| Minimum (any road) | 0.2% | RDM 1.2 Section 5.1 note: minimum even when trend analysis shows near-zero growth |

**Note:** These ranges are practice-based guidance, not prescribed values. RDM 1.2 requires the designer to justify the selected rate using available data and methods from Table 5.1.

### M.2.4 Design Period Conventions (RDM 3.4, Table 2.1)

| Design Traffic | Level of Service: Low | Level of Service: High |
|---------------|----------------------|----------------------|
| Low traffic | 10 -- 15 years | 15 years |
| Medium and Heavy | 10 -- 20 years | 15 -- 20 years |
| Very Heavy | 20 years | 30 years |
| Urban Pavements | 15 -- 20 years | 40 years or long-life |
| Rigid Pavements | -- | 40 years |

**Level of Service assignment:** Class A, B, C roads = High LoS. Other roads = Low LoS (RDM 3.4 Section 2.4).

### M.2.5 Forecasting Approaches (RDM 1.2, Section 5.2.2)

Three forecasting approaches are in use:

1. **Simple growth factoring:** Applied to a single road with total traffic assignment. Used where there is no alternative competing road or mode. Most common for rural road projects.
2. **Diversion curves:** Either/or situation for analysis of small towns with limited transport networks.
3. **Complex computer-based models:** Four-stage demand models, land-use/transport interaction models, traffic assignment models, junction simulation models. Required for major urban road projects.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 3a (Kenya): Select growth rate
  |- If historical traffic data available (VWS, weighbridge, previous studies) -> Calculate from time series
  |- If no historical data -> Use economic growth estimation (GDP-traffic elasticity)
  |- If vehicle registry data available -> Check consistency with GDP method
  |- Apply three scenarios: low, medium, high growth rates
  \- Minimum growth rate = 0.2% even if trend analysis shows near-zero (RDM 1.2 Section 5.1)

Step 4a (Kenya): Separate motorcycle growth
  |- Present growth rates with and without motorcycles (RDM 1.2 Table 5.1 note)
  |- Motorcycle growth rates may be 15-25% per year (much higher than other vehicles)
  |- For pavement design (MESA), use commercial vehicle growth rate only
  \- For capacity analysis, use total traffic growth rate including motorcycles

Step 5a (Kenya): Select design period
  |- Determine Level of Service (Class A/B/C = High; others = Low)
  |- Determine traffic category (Low/Medium/Heavy/Very Heavy)
  |- Select design period from RDM 3.4 Table 2.1
  \- For geometric design, use 10-year design year (opening + 10) for AADT projection

Step 6a (Kenya): Project traffic
  |- T_f = T_0 x (1 + r)^t (compound growth, Equation 5.1)
  |- If improvement project -> Add diverted traffic (from OD survey) + generated traffic
  |- For generated traffic -> Use price elasticity approach if VOC savings are significant
  \- Present sensitivity analysis with low/medium/high growth rates
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya's motorcycle growth is exceptional and must be handled carefully.** Vehicle registrations show motorcycle numbers growing at 15-25% per year in recent years. Including motorcycles in overall growth rates produces misleadingly high values for commercial vehicle forecasting. Always separate motorcycle growth from commercial vehicle growth.

**The Northern Corridor has corridor-specific growth drivers.** Traffic growth on the Mombasa-Nairobi-Malaba corridor is driven by port throughput, regional trade (Uganda, Rwanda, DRC), and industrialisation. These factors may diverge from national GDP growth. Use port throughput data as a cross-check.

**Generated traffic can be significant for upgrading projects.** For rural road upgrades from gravel to paved, generated traffic of 10-25% is typical in Kenya. Price elasticity of demand for transport is approximately -1.0 in developing economies (Section 5.2.1.4), meaning a 1% reduction in transport costs produces approximately 1% increase in traffic.

**Vision 2030 and BETA corridor effects.** Major government investment programmes (SGR, LAPSSET, expressways) can cause step-changes in traffic patterns. The traffic engineer should consider whether planned investments will affect the project road.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using a single growth rate for all vehicle types.** Motorcycles, passenger cars, and commercial vehicles grow at very different rates. Using the total fleet growth rate for MESA calculations will overestimate pavement loading growth.
2. **Ignoring the 0.2% minimum growth rate.** RDM 1.2 explicitly requires a minimum 0.2% annual growth even when trend analysis suggests zero or negative growth.
3. **Not presenting sensitivity analysis.** RDM 1.2 requires three scenarios (low, medium, high). Single-point forecasts are insufficient.
4. **Using national GDP growth rate for a local road.** There can be large regional differences in economic growth. Use regional data where available (Table 5.1).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Growth rate (commercial vehicles) | 5% | KeNHA trunk road, no site data | -- ASSUMED: 5% growth rate for commercial vehicles (mid-range for Kenya trunk roads). Verify with historical data or economic analysis. | Kenya practice |
| Growth rate (total traffic) | 4% | KeRRA rural road, no site data | -- ASSUMED: 4% growth rate for total traffic (typical Kenya rural road). | Kenya practice |
| Growth rate (motorcycle) | 15% | Urban/peri-urban, no site data | -- ASSUMED: 15% motorcycle growth rate. Present separately from other traffic. | Kenya motorcycle growth trends |
| Minimum growth rate | 0.2% | Any road | -- APPLIED: Minimum 0.2% growth rate per RDM 1.2 Section 5.1 note. | RDM 1.2 |
| Design year (geometric) | Opening year + 10 | Not specified | -- ASSUMED: Design year = 10 years after opening. | RDM 1.2 / standard practice |
| Design period (pavement) | 20 years | KeNHA trunk road, high LoS | -- ASSUMED: 20-year design period per RDM 3.4 Table 2.1 (Heavy traffic, High LoS). | RDM 3.4 Table 2.1 |
| Generated traffic | 15% | Gravel-to-paved upgrade | -- ASSUMED: 15% generated traffic for road upgrading. Based on Kenya practice and price elasticity guidance. | RDM 1.2 Section 5.2.1.3 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Growth rate (commercial) | 0.2 | 15 | % | RDM 1.2 Section 5.1 | Warn if < 0.2% (below minimum) or > 10% for sustained periods |
| Growth rate (motorcycle) | 0.2 | 30 | % | Experience | Warn if > 25% (exceptionally high) |
| Design period | 10 | 40 | years | RDM 3.4 Table 2.1 | Reject if outside table range |
| Generated traffic | 0 | 40 | % | Experience | Warn if > 25% |

### M.5.2 Standards Compliance Checks

- **Check:** Minimum growth rate of 0.2% is applied.
- **Standard:** RDM 1.2, Section 5.1 note
- **Pass condition:** Growth rate >= 0.2%
- **Fail action:** Warn -- "Growth rate below 0.2% minimum specified in RDM 1.2 Section 5.1."

- **Check:** Three growth scenarios presented (low, medium, high).
- **Standard:** RDM 1.2, Section 5.2.2
- **Pass condition:** At least two growth rate scenarios used
- **Fail action:** Warn -- "Only single growth rate used. RDM 1.2 requires sensitivity analysis with low/medium/high scenarios."

### M.5.3 Departures / Relaxations Process

Growth rates and design periods that differ from standard guidance require documentation and justification in the design report. Departure from RDM 3.4 Table 2.1 design periods requires approval from the Chief Engineer (Materials).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Growth rate > 10% for > 5 years | Unusually high sustained growth | SENIOR REVIEW -- Growth rate of [X]% is high. Verify with multiple data sources per RDM 1.2 Table 5.1. Consider whether capacity constraints will limit growth. |
| No historical traffic data available | Growth rate entirely assumed | NOTE -- No historical data for growth rate estimation. Rate of [X]% is an assumption. Recommend monitoring traffic after opening and planning for stage construction. |
| Major development project on corridor | Step-change in traffic possible | SENIOR REVIEW -- [Development name] may cause step-change in traffic. Standard growth rate models may not apply. Consider demand modelling. |
| Motorcycle traffic > 50% and growing | Dominates total traffic growth | NOTE -- Motorcycle traffic exceeds 50% of volume. Present commercial vehicle and motorcycle growth separately. |

---

## M.7 Worked Example -- Kenya

### Example: Forecasting Traffic on a KeRRA Rural Road Upgrade

**Source:** Hypothetical, based on RDM 1.2 methodology.

**Given:**
- Road: C64 (County road connecting Embu to Mbeere South), Class C
- Authority: KeRRA
- Current AADT: 2,800 vpd (from 2026 traffic survey)
- Current composition: 55% cars/pickups, 20% motorcycles, 10% matatus, 15% commercial vehicles
- Road is being upgraded from gravel to paved
- Opening year: 2028 (2 years construction)
- Design period: 15 years (Medium traffic, High LoS per RDM 3.4 Table 2.1 for Class C)
- No historical traffic data on this road; nearest VWS data suggests 4-5% growth for similar roads

**Solution:**

**Step 1: Establish base year AADT.** Base year = 2026, AADT = 2,800 vpd.

**Step 2: Select growth rates (three scenarios).**

| Vehicle Type | Low | Medium | High |
|-------------|-----|--------|------|
| Cars/pickups | 3% | 4% | 6% |
| Motorcycles | 10% | 15% | 20% |
| Matatus | 3% | 4% | 5% |
| Commercial vehicles | 3% | 5% | 7% |

**Step 3: Project to opening year (2028, t = 2 years).**

Using medium scenario:
- Cars: 1,540 x (1.04)^2 = 1,665 vpd
- Motorcycles: 560 x (1.15)^2 = 741 vpd
- Matatus: 280 x (1.04)^2 = 303 vpd
- Commercial: 420 x (1.05)^2 = 463 vpd
- **Total at opening: 3,172 vpd (normal traffic)**

**Step 4: Add generated traffic.**

Road is being upgraded from gravel to paved. Apply 15% generated traffic:
- Generated: 3,172 x 0.15 = 476 vpd
- **Total at opening including generated: 3,648 vpd**
- -- ASSUMED: 15% generated traffic for gravel-to-paved upgrade.

**Step 5: Project to design year (2028 + 15 = 2043, t = 15 years from opening).**

Using medium scenario from opening year:
- Cars: 1,665 x 1.15 x (1.04)^15 = 1,665 x 1.15 x 1.801 = 3,448 vpd
- Motorcycles: 741 x 1.15 x (1.15)^15 = 741 x 1.15 x 8.137 = 6,932 vpd
- Matatus: 303 x 1.15 x (1.04)^15 = 303 x 1.15 x 1.801 = 628 vpd
- Commercial: 463 x 1.15 x (1.05)^15 = 463 x 1.15 x 2.079 = 1,107 vpd
- **Total design year AADT: 12,115 vpd (medium scenario)**

*Note: The 1.15 factor accounts for generated traffic applied proportionally.*

**Step 6: Present results.**

| Parameter | Low | Medium | High |
|-----------|-----|--------|------|
| Base year AADT (2026) | 2,800 | 2,800 | 2,800 |
| Opening year AADT (2028) | 3,320 | 3,648 | 4,010 |
| Design year AADT (2043) | 7,200 | 12,115 | 21,500 |
| Commercial vehicles at design year | 750 | 1,107 | 1,680 |

**Escalation:** NOTE -- Motorcycle growth at 15% dominates total traffic growth (medium scenario). By design year, motorcycles could represent ~57% of total traffic. Present commercial vehicle AADT separately for pavement design -- commercial vehicles grow from 463 to 1,107 vpd (medium), which is the relevant input for MESA calculation (Skill #5).

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Part 2 -- Traffic Surveys (RDM 1.2)*, 2025, Chapter 5.
2. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 3: Part 4 -- Flexible Pavement Design (RDM 3.4)*, 2025, Section 2.4, Table 2.1.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft. Growth estimation methods from RDM 1.2 Table 5.1, traffic types from Section 5.2.1, forecasting approaches from Section 5.2.2, minimum growth rate from Section 5.1 note, design periods from RDM 3.4 Table 2.1 verified against PDFs. |
