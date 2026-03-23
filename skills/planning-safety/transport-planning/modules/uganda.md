# Transport Planning -- Uganda Module

> **Parent Skill:** Skill #60 Transport Planning
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual, UNRA Network Planning Procedures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual | Vol 3, Part I | Chapter 2 (Traffic), Chapter 3 (Design Standards) | Current |
| Uganda National Transport Master Plan | 2008 (updated 2014) | Corridor identification, traffic projections | Current framework |
| UNRA Strategic Plan | Various | Network planning, priority corridors | Current |
| HDM-4 / RED Model | As applied in Uganda | VOC relationships, economic appraisal | Reference methodology |

### M.1.2 Institutional Context

**Ministry of Works and Transport (MoWT):** Responsible for transport policy, road design standards, and the Road Design Manual. Sets the technical framework for transport planning in Uganda.

**Uganda National Roads Authority (UNRA):** Manages the national road network (approximately 20,500 km). Responsible for planning, design, construction, and maintenance of national roads. Commissions feasibility studies and economic appraisals for road improvement projects.

**Uganda Road Fund (URF):** Finances road maintenance. Allocates maintenance budgets to UNRA (national roads), KCCA (Kampala), and district local governments (district and community roads).

**District Local Governments:** Manage district roads (approximately 33,000 km) and community access roads (approximately 60,000 km). Limited planning capacity -- often rely on MoWT guidance and donor-supported planning.

### M.1.3 Standard Philosophy

Uganda uses a "design manual" approach to transport planning. MoWT Vol 3 Part I provides guidance on traffic data collection, growth rate estimation, and design standard selection. The approach is pragmatic -- growth-factor methods are standard for rural roads, with full transport models reserved for major urban corridors (primarily Kampala). UNRA feasibility studies typically follow World Bank/AfDB appraisal methodology using HDM-4 or RED.

---

## M.2 Country-Specific Knowledge

### M.2.1 Uganda Growth Rates and Demand Parameters

**Traffic growth rates by road class (reference Skill #6 Uganda module):**

| Road Class | Typical Growth Rate | Range | Source |
|------------|-------------------|-------|--------|
| National Trunk Roads | 5-7% | 3-10% | UNRA traffic monitoring |
| District Roads (paved) | 4-6% | 2-8% | MoWT guidance |
| District Roads (gravel) | 3-5% | 2-7% | MoWT guidance |
| Community Access Roads | 2-4% | 1-5% | Limited data |

**Notes:** Growth rates vary significantly by region. Northern Uganda roads may have higher growth (recovery and development) while mature corridors in central Uganda may have lower growth. Always use corridor-specific data where available from UNRA traffic monitoring or Skill #6.

**Generated traffic factors for Uganda upgrade projects:**

| Upgrade Type | Generated Traffic Factor | Source |
|-------------|------------------------|--------|
| Gravel to paved | 10-20% | MoWT Vol 3, Part I |
| Earth to gravel | 15-25% | Practice-based estimate |
| Bridge replacement (restoring access) | 20-40% | Dependent on diversion length removed |
| Missing link completion | Variable | Assess case-by-case |

**UNRA Economic Screening Thresholds:**

UNRA and development partners typically apply the following screening criteria for road improvement projects:

| Criterion | Threshold | Implication |
|-----------|-----------|-------------|
| Minimum AADT for paving | 100-200 vpd | Below this, paving is rarely economically justified |
| BCR threshold | > 1.0 (WB), > 1.5 (preferred) | Projects with BCR < 1.0 require social justification |
| Economic rate of return (ERR) | > 12% | Standard hurdle rate for World Bank-funded projects |

### M.2.2 Country-Specific Methods

**UNRA Feasibility Study Structure:**

UNRA feasibility studies for road improvements typically include:
1. Traffic data collection and analysis (Skills #1-2)
2. Traffic forecasting with growth scenarios (Skill #6)
3. Demand assessment and route analysis (this skill)
4. Geometric and pavement design options (Skills #13-25)
5. Cost estimation (Skills #50-53)
6. Economic appraisal using HDM-4 or RED (Skill #65)
7. Environmental and social screening (Skill #62)
8. Multi-criteria analysis for prioritisation (Skill #59)

### M.2.3 Uganda Road Network Classification

| Class | Authority | Approximate Length | Typical AADT Range |
|-------|-----------|-------------------|-------------------|
| National Trunk Roads | UNRA | 20,500 km | 200-15,000 vpd |
| District Roads | District LG | 33,000 km | 50-500 vpd |
| Community Access Roads | Sub-county | 60,000 km | 10-100 vpd |
| Urban Roads (Kampala) | KCCA | ~2,100 km | 500-50,000 vpd |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda-Specific Demand Assessment:**
```
Step 2 (Uganda): Collect baseline traffic data
  |-- UNRA traffic monitoring data available --> Use latest AADT from UNRA database
  |-- Count station on road --> Request processed AADT (Skill #2)
  |-- No data on this road --> Use surrogate from comparable UNRA road in same region
  +-- Community access road --> Very limited data likely; consider manual counts

Step 3 (Uganda): Growth rate selection
  --> Reference Skill #6 Uganda module for corridor-specific rates
  --> If no corridor-specific data: use road class defaults from M.2.1
  --> Apply MoWT Vol 3 Part I growth rate range: 2-15%

Step 4 (Uganda): Generated traffic
  --> Gravel-to-paved: 10-20% (MoWT standard range)
  --> Apply higher end (15-20%) for roads with visible suppressed demand
      (markets, health centres with poor access)
  --> Earth-to-gravel: 15-25% (higher because improvement is more dramatic)
```

### M.3.2 Professional Judgment (Country-Specific)

**Uganda-specific considerations:**

- **Agricultural seasonality:** Many rural roads show strong seasonal traffic variation. Coffee harvest (October-January), tea harvest (year-round in western Uganda), and maize harvest periods generate peak freight traffic. Use annual average, not seasonal peak, for design demand.

- **Boda-boda traffic:** Motorcycle taxis (boda-bodas) dominate traffic on many rural roads in Uganda, especially community access roads. Boda-bodas contribute minimally to structural loading but are significant for safety assessment (Skill #61) and demand quantification.

- **Trading centre effects:** Rural roads passing through trading centres experience localised traffic concentration. Short sections through trading centres may have 2-3x the AADT of the open road sections.

- **Cross-border traffic:** Roads near borders (DRC, South Sudan, Kenya, Tanzania, Rwanda) may carry significant transit traffic that responds to political and economic conditions in neighbouring countries. Growth rates for cross-border corridors can be volatile.

### M.3.3 Common Errors (Country-Specific)

1. **Using Kampala growth rates for rural roads.** Kampala traffic growth (8-12%) is driven by urbanisation and motorisation. Rural road growth (3-5%) is driven by agricultural and population growth. Using urban rates for rural roads overestimates demand.
2. **Ignoring boda-boda traffic in AADT.** Boda-bodas are a significant proportion of total traffic on rural roads (often 30-60% of all vehicles). Excluding them underestimates AADT but overestimates heavy vehicle percentage.
3. **Not accounting for market days.** Weekly market days can increase traffic by 50-100% on market-connected roads. Ensure traffic counts capture both market and non-market days.
4. **Assuming all roads have growing traffic.** Some roads in northern Uganda experienced declining traffic during the conflict period (1990s-2000s). Post-conflict recovery growth may be higher than normal trends suggest.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Growth rate | 5% | National trunk road, not specified | ASSUMED: 5% growth rate for national road. Verify with UNRA traffic monitoring data. | Mid-range for Uganda national roads |
| Growth rate | 4% | District road, not specified | ASSUMED: 4% growth rate for district road. Verify with local data. | Mid-range for district roads |
| Generated traffic | 15% | Gravel to paved upgrade | ASSUMED: 15% generated traffic. MoWT range 10-20%. | Mid-range of MoWT guidance |
| Design horizon | 20 years | Paved road | Standard 20-year design life for paved roads in Uganda. | MoWT Vol 3 practice |
| Design horizon | 10 years | Gravel road | Standard 10-year regravelling cycle for gravel roads. | MoWT Vol 3 practice |
| BCR threshold | 1.0 | Minimum for economic justification | Projects with BCR < 1.0 require social justification. | World Bank/UNRA standard |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Growth rate | 2% | 15% | %/year | MoWT Vol 3, Part I | Below 2%: flag as very low for Uganda. Above 15%: flag as unusually high. |
| Generated traffic | 10% | 20% | % | MoWT Vol 3, Part I | Below 10%: verify no suppressed demand. Above 20%: requires justification. |
| AADT for paving justification | 100 | No limit | vpd | UNRA practice | Below 100 vpd: paving rarely justified economically. Flag for MCA. |

### M.5.2 Standards Compliance Checks

- **Check:** Growth rate within MoWT range (2-15%)
- **Standard:** MoWT Vol 3, Part I, Section 2
- **Pass condition:** Rate is within range or justified if outside
- **Fail action:** NOTE -- Growth rate outside MoWT 2-15% range. Verify data source.

- **Check:** Generated traffic applied for surface upgrades
- **Standard:** MoWT Vol 3, Part I
- **Pass condition:** Generated traffic factor included for gravel-to-paved upgrades
- **Fail action:** NOTE -- Generated traffic not applied for surface upgrade. MoWT recommends 10-20%.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process for transport planning parameters. However, deviation from standard growth rate ranges or generated traffic factors should be documented with justification in the feasibility study.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| AADT < 50 vpd | Very low traffic -- economic justification difficult | SENIOR REVIEW -- AADT below 50 vpd. Economic appraisal may not justify paving. Consider social access criteria and MCA (Skill #59). |
| Cross-border road | Growth rates volatile | NOTE -- Cross-border corridor. Growth rates may be affected by political/economic conditions in [neighbouring country]. Consider high/low scenarios. |
| No traffic data available | Surrogate data unreliable | SENIOR REVIEW -- No traffic count data for this road. Surrogate used from [comparable road]. Commission traffic survey before feasibility study proceeds. |
| Post-conflict recovery area | Growth rates may be atypical | NOTE -- Post-conflict recovery area. Historical growth rates may not reflect future trends. Consider recovery growth scenario. |

---

## M.7 Worked Examples -- Uganda

### Example 1: Feasibility Screening for Gravel Road Upgrade (Western Uganda)

**Project:** Upgrade of 30 km gravel road from Kyenjojo to Kagadi in Western Uganda to paved standard.

**Given:**
- Current AADT: 350 vpd (from UNRA traffic count, 2025)
- Vehicle composition: 40% boda-bodas, 25% cars/pickups, 20% minibuses, 15% trucks
- Growth rate: 5% per year (Skill #6 estimate for western Uganda district road)
- Design horizon: 20 years
- Generated traffic factor: 15% (gravel to paved upgrade)
- Estimated project cost: UGX 45 billion (from Skill #50, approximately USD 12 million)

**Solution:**

Step 1: Project type = Upgrade (gravel to paved).

Step 2: Baseline AADT = 350 vpd (UNRA data -- reliable).

Step 3: Future AADT (normal traffic):
```
AADT_future = 350 x (1 + 0.05)^20 = 350 x 2.653 = 929 vpd
```

Step 4: Include generated traffic:
```
AADT_design = 929 + (929 x 0.15) = 929 + 139 = 1,068 vpd
```

Step 5: Route assessment:
- Alternative route via Fort Portal adds 65 km (2+ hours additional travel)
- The Kyenjojo-Kagadi road is the direct connection; no practical alternative for local traffic
- Connectivity improvement: provides all-weather access to Kagadi District

Step 6: Economic screening:
- Estimated annual VOC savings: approximately UGX 3.2 billion (based on comparable UNRA projects)
- Screening BCR = (3.2 x 20) / 45 = 64 / 45 = 1.42
- BCR > 1.0 -- project warrants detailed economic appraisal

**Result:** Design AADT = 1,068 vpd. Screening BCR = 1.42. Recommend proceeding to detailed economic appraisal (Skill #65 with HDM-4/RED).

### Example 2: Route Comparison for River Crossing Alternatives

**Project:** Two alternative routes for providing paved access across the Nile at a subcounty in northern Uganda.

**Given:**
- Route A: 12 km, steep terrain (escarpment), includes new bridge (120m span). Estimated cost: UGX 85 billion.
- Route B: 22 km, flat terrain, uses existing ferry crossing point with new bridge (80m span). Estimated cost: UGX 55 billion.
- Current AADT at ferry point: 200 vpd (Route B corridor)
- Current AADT on escarpment road: 80 vpd (Route A corridor, rough earth)
- Growth rate: 6% (northern Uganda recovery growth)
- Design horizon: 20 years

**Solution:**

Route A: 20-year AADT = 80 x (1.06)^20 x 1.20 (generated) = 80 x 3.207 x 1.20 = 308 vpd
Route B: 20-year AADT = 200 x (1.06)^20 x 1.15 (generated) = 200 x 3.207 x 1.15 = 738 vpd

Route B has higher demand, lower cost, and easier terrain. Route A is shorter but the escarpment creates construction challenges and higher maintenance costs.

**Recommendation:** Route B is preferred on both demand and cost grounds. Route A should only be reconsidered if the escarpment road serves a population centre not served by Route B.

### Example 3: Road with Declining Traffic (Mining Area Post-Closure)

**Project:** Assessment of 18 km paved road in Karamoja region serving a now-closed gold mine.

**Given:**
- Current AADT: 120 vpd (down from 450 vpd when mine was operational)
- Growth rate: -3% per year (decline since mine closure in 2023)
- No alternative economic activity replacing mining traffic
- Road still serves 3 villages with combined population of 12,000
- Nearest health centre is at end of the road

**Solution:**

Step 1: Project type = Assessment (not improvement -- question is whether to maintain).

Step 3: Future AADT (declining traffic):
```
AADT_future = 120 x (1 + (-0.03))^10 = 120 x 0.737 = 88 vpd
```

Step 5: Route assessment:
- No alternative route to the 3 villages
- Road provides sole access to health centre serving 12,000 people
- Mining traffic unlikely to return; no other economic driver identified

Step 6: Economic screening:
- At 88 vpd, maintaining the road as paved is economically marginal
- However, social access criteria are strong (health, education, market access for 12,000 people)
- **Recommendation:** Economic analysis alone does not justify rehabilitation. Refer to Skill #59 (MCA Prioritization) with social criteria weighted. Consider gravel reversion as a lower-cost maintenance option.

**Result:** Declining traffic scenario. Economic justification weak (AADT trending to 88 vpd). Social justification strong (sole access for 12,000 people). Recommend MCA approach (Skill #59).

---

## M.8 References

1. Ministry of Works and Transport, Road Design Manual, Volume 3, Part I: Geometric Design, Republic of Uganda
2. Uganda National Transport Master Plan, Ministry of Works and Transport, 2008 (updated 2014)
3. UNRA Strategic Plan and Annual Performance Reports (various years)
4. HDM-4 Highway Development and Management System, PIARC/World Bank
5. RED (Roads Economic Decision) Model, World Bank

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with Uganda growth rates, generated traffic factors, UNRA screening thresholds, 3 worked examples (upgrade screening, route comparison, declining traffic). |
