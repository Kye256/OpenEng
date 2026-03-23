# TARA Integration -- Uganda Module

> **Parent Skill:** Skill #65 TARA Integration
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual, UNRA appraisal guidelines, GoU Treasury economic analysis requirements
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:**

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 3 | 2010 | Traffic forecasting, ESA calculation | Current |
| GoU Treasury Appraisal Guidelines | Various | Discount rate, economic methodology | Current |
| World Bank Operational Policy | OP 10.04 | Economic analysis of investment operations | Current |
| UNRA Network Management System | Various | Condition data collection, prioritization | Current |

### M.1.2 Institutional Context

**TARA usage in Uganda:**
- UNRA uses economic appraisal for investment justification on the national road network
- World Bank-funded projects require economic analysis per OP 10.04
- MoWT provides the design standards; Treasury provides the economic analysis framework
- District roads (DUCAR) use simplified economic screening rather than full TARA analysis

**Key institutions:**
- **UNRA Planning Division:** Commissions feasibility studies with economic analysis
- **MoWT:** Sets design standards and appraisal methodology
- **Ministry of Finance (Treasury):** Sets discount rate and economic analysis requirements for GoU projects
- **World Bank:** Requires economic analysis for all lending operations; may override GoU parameters

### M.1.3 Standard Philosophy

Uganda economic appraisal follows HDM-4/RED methodology adapted for local conditions. The GoU discount rate of 12% reflects the opportunity cost of capital in Uganda. World Bank projects may use a lower rate (6-10%) depending on the project appraisal framework. When both GoU and donor requirements apply, present results at both discount rates.

---

## M.2 Country-Specific Knowledge

### M.2.1 Uganda-Specific Parameters

| Parameter | Uganda Value | Source | Notes |
|-----------|-------------|--------|-------|
| Discount rate (GoU) | 12% | GoU Treasury | Standard for all government-funded projects |
| Discount rate (World Bank) | 6-10% | WB project-specific | Varies by project; typically 6% for IDA countries |
| Analysis period (paved) | 20 years | Standard practice | From first year of project benefits |
| Analysis period (gravel) | 10-15 years | Standard practice | Shorter due to higher maintenance frequency |
| Currency | UGX (Uganda Shillings) | -- | Exchange rate ~3,700 UGX/USD (2026, approximate) |
| Construction price inflation | 5-8% per annum | UBOS/market data | For price contingency calculation |
| VOC baseline | Varies by vehicle class | HDM-4 Uganda calibration | Calibrated for Uganda fleet and fuel prices |

### M.2.2 UNRA Vehicle Classification Mapping

Mapping between TARA/HDM-4 vehicle classes and MoWT vehicle classes (Skill #3):

| TARA/HDM-4 Class | MoWT Class | Description | Typical VDF |
|-------------------|-----------|-------------|-------------|
| Car | Class 1-2 | Saloon car, station wagon | 0.0002-0.001 |
| Pickup/SUV | Class 3 | Pickup, SUV, minibus | 0.01-0.05 |
| Bus (medium) | Class 4 | Medium bus (14-32 seats) | 0.3-0.8 |
| Bus (large) | Class 5 | Large bus (>32 seats) | 1.0-2.0 |
| Truck (medium) | Class 6 | 2-axle rigid truck | 1.5-3.0 |
| Truck (heavy) | Class 7 | 3-axle rigid truck | 3.0-6.0 |
| Truck/trailer | Class 8 | Articulated/trailer combination | 5.0-12.0 |

Note: VDF values are indicative. Use Skill #4 (Axle Load Surveys) output for project-specific VDFs where available.

### M.2.3 Uganda Cost Benchmarks for TARA

Approximate cost ranges for TARA input (all PLACEHOLDER -- verify with market data):

| Road Type | Capital Cost (UGX/km) | Annual Maintenance (UGX/km/yr) | Source |
|-----------|----------------------|-------------------------------|--------|
| New paved (trunk) | 2,000-4,000M | 15-25M | UNRA recent contracts |
| Upgrade gravel to paved | 1,500-3,000M | 15-25M | UNRA recent contracts |
| Rehabilitation (overlay) | 300-600M | 10-20M | UNRA recent contracts |
| Gravel re-sheet | 80-150M | 20-40M | UNRA/DUCAR |
| Periodic maintenance (reseal) | 100-200M | 10-15M | UNRA contracts |

PLACEHOLDER: All costs are indicative and must be verified against current market rates before use in economic appraisal.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
If funding_source == "GoU":
  → Use 12% discount rate
  → Analysis currency: UGX
  → Appraisal per GoU Treasury guidelines

If funding_source == "World Bank":
  → Use project-specific discount rate (typically 6%)
  → Present results in both UGX and USD
  → Include distributional analysis per WB ESF
  → Prior review may require independent economic review

If road_class == "DUCAR/district":
  → Simplified economic screening (BCR > 1.0 threshold)
  → May use RED model instead of full HDM-4
  → Lower traffic volumes may make economic justification difficult
  → Consider non-economic benefits (social access, equity)
```

### M.3.2 Professional Judgment (Uganda-Specific)

- **Low-traffic district roads often fail BCR > 1.0 at 12% discount rate.** This does not mean they should not be maintained. Non-economic justification (social access, equity, agricultural market access) is standard practice for DUCAR roads.
- **Generated traffic is significant for gravel-to-paved upgrades.** UNRA experience shows 10-20% traffic increase within 2 years of paving, primarily from induced demand and route diversion. Always include in TARA analysis.
- **Overloading inflates VOC savings.** Uganda has significant overloading on trunk roads. TARA's VOC model may underestimate savings if calibrated for legal axle loads -- consider adjusting VDFs to reflect actual loading.
- **Seasonal road closures affect economic analysis.** Gravel roads in northern Uganda may be impassable for 2-3 months during wet season. TARA should capture the economic cost of seasonal inaccessibility.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using World Bank discount rate for GoU-funded project.** GoU Treasury requires 12% unless explicitly agreed otherwise.
2. **Omitting generated traffic for surface upgrades.** MoWT Vol 3 Part I explicitly requires 10-20% generated traffic factor for gravel-to-paved conversions.
3. **Not adjusting for Karamoja/northern regional costs.** Regional adjustment factors (1.15-1.40) significantly affect project costs and BCR.
4. **Forgetting currency conversion for WB-funded reporting.** World Bank requires USD reporting; present both currencies.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Discount rate | 12% | GoU-funded project | ASSUMED: 12% discount rate per GoU Treasury | Standard GoU opportunity cost of capital |
| Discount rate | 6% | World Bank IDA project | ASSUMED: 6% discount rate per WB IDA convention | World Bank IDA country standard |
| Analysis period | 20 years | Paved road | ASSUMED: 20-year analysis period | Standard practice for paved roads |
| Analysis period | 10 years | Gravel road | ASSUMED: 10-year analysis period | Shorter design life for gravel |
| Generated traffic | 15% | Gravel-to-paved upgrade | ASSUMED: 15% generated traffic factor | MoWT Vol 3 Part I midpoint of 10-20% range |
| Currency | UGX | Uganda project | ASSUMED: Uganda Shillings | Primary transaction currency |
| Exchange rate | 3,700 UGX/USD | No rate specified | ASSUMED: ~3,700 UGX/USD (approximate 2026 rate) | Bank of Uganda indicative rate |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Discount rate (GoU) | 10 | 15 | % | GoU Treasury | Flag if not 12% |
| AADT for economic justification | 50 | -- | vpd | UNRA practice | If <50 vpd, BCR likely <1.0 at 12% -- flag |
| Capital cost (paved/km) | 500M | 5,000M | UGX | UNRA benchmarks | If outside range, verify -- may indicate error or unusual conditions |

### M.5.2 Standards Compliance Checks

- **Check:** Discount rate matches funding source requirements
- **Standard:** GoU Treasury (12%) or WB project-specific
- **Pass condition:** Rate documented and justified
- **Fail action:** Flag mismatch between applied rate and funding source requirement

### M.5.3 Departures / Relaxations Process

Uganda does not have a formal departures process for economic analysis parameters. However, any deviation from standard discount rate, analysis period, or methodology must be documented and justified in the feasibility study. World Bank projects require economic analysis per OP 10.04 with deviations requiring explicit approval.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| BCR < 1.0 at 12% for GoU project | Economic justification fails | SENIOR REVIEW -- Consider: (a) non-economic justification, (b) alternative discount rate sensitivity, (c) scope reduction to improve BCR |
| BCR < 1.5 for World Bank project | WB typically expects BCR > 1.5 | SENIOR REVIEW -- Present sensitivity analysis; consider complementary investments to improve BCR |
| No traffic count data available | Cannot populate TARA traffic forecast | SENIOR REVIEW -- Use UNRA road class AADT defaults from Skill #2 module; flag as approximate |

---

## M.7 Worked Examples -- Uganda

### Example 1: TARA-to-Design Pipeline for UNRA Trunk Road Upgrade

**Given:** TARA provides traffic forecast for Gulu-Lira trunk road upgrade (gravel to paved). Base AADT: 1,200 vpd, 18% heavy vehicles, 5% growth rate, 20-year analysis period. GoU + World Bank co-financing.

**Solution:**

1. Extract TARA data: AADT = 1,200, HV% = 18%, growth = 5%/year
2. Map classes: TARA heavy vehicles -> MoWT Classes 6-8 (216 HV/day)
3. Apply Skill #6: Design year AADT = 1,200 x (1.05)^20 = 3,184 vpd. Generated traffic: +15% = 3,662 vpd
4. Calculate Skill #5: Cumulative ESA over 20 years ~ 10-15 million ESA (T6-T7 class)
5. Feed to Skill #21: Traffic Class T6-T7, select from MoWT catalogue

**Result:** Design ESA ~10-15 million, Traffic Class T6-T7. Pavement design proceeds with MoWT catalogue.

### Example 2: Design-to-TARA Pipeline for World Bank Rehabilitation

**Given:** 40 km trunk road rehabilitation. Current IRI 7.8 m/km (Poor). Skill #57 recommends 60mm overlay. Capital cost: 350M UGX/km = 14,000M UGX total. World Bank funding.

**Solution:**

1. Format condition data: IRI 7.8 (current) -> IRI 2.5 (post-overlay)
2. Without-project: IRI 7.8 -> 8.6 -> 9.4 -> ... -> 16.0 (cap)
3. With-project: IRI 2.5 -> 2.7 -> 2.9 -> ... -> 5.5 (year 20)
4. Capital cost: 14,000M UGX. Annual maintenance: 15M UGX/km x 40 km = 600M UGX/year
5. Apply at 6% (WB) and 12% (GoU): both should show positive NPV with IRI improvement from 7.8 to 2.5

**Result:** Data formatted for TARA. Expected BCR > 2.0 at both discount rates given large IRI improvement.

### Example 3: Edge Case -- TARA Analysis with Incomplete Data

**Given:** A district road in Kalangala (island district) needs justification for upgrade. No traffic counts exist. No condition survey data. Road is currently earth surface, approximately 15 km. DUCAR programme, GoU funded.

**Solution:**

1. **Data gaps identified:**
   - No AADT -> Use UNRA road class defaults (Skill #2 module): District road, island access -> estimated AADT 50-100 vpd
   - No IRI -> Assume earth road IRI 12-16 m/km (typical for unimproved earth)
   - No condition survey -> Flag as requiring data collection before full appraisal

2. **Traffic Pipeline with defaults:**
   - Assumed AADT: 75 vpd (midpoint of class range)
   - Growth rate: 3% (conservative for island/remote)
   - HV%: 10% (limited heavy vehicle access on island)
   - ESA calculation: very low -- likely T1-T2 traffic class

3. **Economic screening:**
   - At 75 vpd and 12% discount rate, BCR is very likely < 1.0 for paved standard
   - Recommend: gravel upgrade (not paved) for cost-effective improvement
   - Non-economic justification: island access, equity, agricultural market connection

4. **Assumptions flagged:**
   - ASSUMED: AADT 75 vpd based on road class default -- no traffic count available
   - ASSUMED: IRI 14 m/km based on typical earth road condition -- no survey data
   - ASSUMED: 3% growth rate -- no historical data
   - RECOMMENDATION: Conduct 7-day classified traffic count and visual condition survey before committing to full feasibility study

**Result:** Screening-level analysis only. Multiple data gaps flagged. Non-economic justification recommended for investment decision. Data collection priority: traffic count first, then condition survey.

---

## M.8 References

1. MoWT, Road Design Manual, Volume 3 Part I -- Traffic and ESA, 2010
2. Government of Uganda, Treasury Guidelines for Economic Appraisal of Public Investment Projects
3. World Bank, Operational Policy 10.04 -- Economic Evaluation of Investment Operations
4. UNRA, Network Management and Condition Assessment Guidelines
5. HDM-4, Highway Development and Management, Volume 5 -- Economic Analysis, ISOHDM
6. RED Model, Roads Economic Decision Model, World Bank

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft -- Uganda TARA parameters, vehicle mapping, 3 worked examples |
