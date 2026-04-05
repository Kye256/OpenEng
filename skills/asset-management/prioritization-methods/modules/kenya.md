# Prioritization Methods -- Kenya Module

> **Parent Skill:** Skill #59 Prioritization Methods
> **Country/Jurisdiction:** Kenya
> **Standards:** RDM 5.1/5.2 (partial coverage), Kenya Roads Board Investment Guidelines
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| RDM 5.1 Pavement Condition Surveys | 2025 | Condition data for prioritization input | Current |
| RDM 5.2 Pavement Maintenance, Rehabilitation and Overlay Design | 2025 | Ch 3 Planning for Maintenance (priorities), Ch 7 Criteria for Maintenance | Current |
| Kenya Roads Board RMLF Allocation Guidelines | Current | Fund allocation formula, investment criteria | Current |
| Kenya Vision 2030 / MTP IV | Current | Strategic infrastructure investment priorities | Current |

### M.1.2 Institutional Context

**KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A/B/C). Prioritization emphasises economic return (traffic volume, transport corridor importance), condition severity, and strategic connectivity. Donor-funded rehabilitation programmes typically require economic justification (BCR > 1.0, often > 2.0).

**KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class D/E). Prioritization for rural roads weights social access more heavily -- connecting communities to markets, health facilities, and schools. Condition severity and population served are key criteria.

**KURA (Kenya Urban Roads Authority):** Manages urban roads. Urban prioritization considers congestion, safety, and economic activity alongside condition. Urban roads often have higher political visibility.

**County Governments (47 counties):** Manage devolved county roads. County-level prioritization is inherently different from national -- equity, basic access, and local economic development are weighted more heavily. County road committees and ward representatives influence priority setting.

**Kenya Roads Board (KRB):** Allocates Road Maintenance Levy Fund (RMLF) to KeNHA, KeRRA, KURA, and counties using a formula based on road network length, condition, and usage. KRB's allocation formula is itself a form of inter-agency prioritization. Total RMLF is consistently below total maintenance needs -- making prioritization essential at every level.

### M.1.3 Standard Philosophy

Kenya road maintenance prioritization operates at two levels: inter-agency allocation (KRB formula) and within-agency prioritization (each authority's maintenance programme). National-level prioritization emphasises economic return and network efficiency (condition and traffic). County-level prioritization emphasises social access and equity (population served, basic connectivity). This dual-framework approach reflects the institutional reality that national trunk roads serve economic corridors while rural and county roads serve basic access needs. RDM 5.2 Chapter 3 provides the planning framework for maintenance prioritization.

---

## M.2 Country-Specific Knowledge

### M.2.1 National-Level Prioritization (KeNHA)

**Routine Maintenance:** Not individually prioritized -- applied across the entire national network based on per-km allocation.

**Periodic Maintenance:** Prioritized by condition severity (needs-based):
1. Rank all sections with periodic maintenance trigger exceeded (RDM 5.2 Table 7.1)
2. Within the periodic class: worst condition first (lowest PCI)
3. Apply RMLF budget constraint -- cut-off when budget exhausted
4. Carry forward unfunded sections to next financial year

**Rehabilitation:** Prioritized by a combination of condition and economic return:
1. Identify all sections with rehabilitation trigger exceeded
2. For donor-funded rehabilitation: economic ranking (BCR) typically required by the development partner (World Bank, AfDB, JICA). BCR from HDM-4 analysis via Skill #65
3. For GoK-funded rehabilitation: condition severity with consideration of traffic and strategic importance
4. Vision 2030 / MTP IV transport priorities influence strategic ranking

### M.2.2 County-Level Prioritization

Counties use MCA-style prioritization with different weight emphasis:

**Table: MCA Criteria and Weights for Kenya**

| Criterion | National Weight (KeNHA) | County Weight | Scoring Basis |
|-----------|----------------------|---------------|---------------|
| Road condition | 0.30 | 0.20 | PCI from Skill #56 Kenya module |
| Traffic volume | 0.25 | 0.15 | ADT or estimated usage |
| Economic return | 0.20 | 0.10 | BCR from Skill #65 (if available) |
| Social access | 0.15 | 0.35 | Population served, facilities accessed (health, schools, markets) |
| Strategic importance | 0.10 | 0.20 | Connectivity, county development priority |

**Notes:**
- County-level prioritization weights social access (0.35) much more heavily than national-level (0.15), reflecting the basic access mandate of county roads.
- National-level weights condition (0.30) and traffic (0.25) heavily, reflecting network efficiency objectives.
- These are typical ranges -- actual weights should be set by the decision-maker (County Executive Committee Member for Roads, KeNHA Planning).
- Economic return criterion may be set to zero at county level when BCR data is unavailable, with weight redistributed to social access and condition.

### M.2.3 Equity-Adjusted Prioritization

Kenya has significant regional disparities in road infrastructure investment. Historically marginalised areas (North Eastern, Upper Eastern, parts of Coast and Rift Valley) have lower road density and quality. An equity-adjusted MCA includes:

| Criterion | Standard National | Equity-Adjusted | Notes |
|-----------|------------------|----------------|-------|
| Road condition | 0.30 | 0.25 | Slightly reduced |
| Traffic volume | 0.25 | 0.15 | Significantly reduced |
| Economic return | 0.20 | 0.10 | Reduced -- equity over efficiency |
| Social access | 0.15 | 0.25 | Increased -- access focus |
| Regional equity | 0.00 | 0.15 | New criterion for geographic balance |
| Strategic importance | 0.10 | 0.10 | Unchanged |

The regional equity criterion scores roads in historically underserved areas higher. This ensures that some investment reaches marginalised regions even when pure economic ranking would concentrate resources in high-traffic corridors (Nairobi-Mombasa, Nairobi-Nakuru-Kisumu).

### M.2.4 KRB RMLF Allocation as Institutional Constraint

KRB allocates RMLF to road authorities using a formula that considers:
- Road network length managed by each authority
- Condition of the road network
- Road usage (traffic)
- Strategic importance

This allocation determines the budget envelope for each authority's prioritized programme. KeNHA, KeRRA, KURA, and counties must each prioritize within their RMLF allocation. The total RMLF is typically insufficient to address all maintenance needs -- the funding gap means prioritization is not optional but mandatory.

### M.2.5 Donor-Funded Project Prioritization

World Bank, AfDB, JICA, and other development partners fund road rehabilitation programmes in Kenya. Donor-funded prioritization typically uses:
- HDM-4 economic analysis (BCR, NPV, EIRR)
- BCR threshold typically > 1.5 for investment lending
- Environmental and social screening (World Bank ESF or equivalent)
- Climate resilience assessment
- Results-based frameworks with performance indicators

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Kenya-specific branching:**
```
Determine road authority and programme type:
  |-- KeNHA national road:
  |     |-- Routine maintenance --> No prioritization needed (network-wide)
  |     |-- Periodic maintenance --> Needs-based (PCI severity ranking)
  |     +-- Rehabilitation --> Economic ranking (BCR) for donor-funded;
  |                            MCA (condition + traffic + strategic) for GoK-funded
  |
  |-- KeRRA rural road:
  |     --> MCA with social access weighted heavily
  |     --> Simplified scoring if limited data
  |     --> Population served as key criterion
  |
  |-- KURA urban road:
  |     --> MCA with congestion and safety criteria added
  |     --> Urban-specific considerations (traffic, pedestrians, utilities)
  |
  |-- County road:
  |     --> MCA with county weights (social access 0.35)
  |     --> County Executive Committee input on strategic priorities
  |     --> Equity criterion may apply for marginalised sub-counties
  |
  +-- Donor-funded programme:
        --> Economic ranking (HDM-4 BCR) as primary
        --> Environmental/social screening overlay
        --> Climate resilience assessment
```

### M.3.2 Professional Judgment (Country-Specific)

**RMLF covers approximately 40-60% of maintenance needs.** This means 40-60% of identified maintenance needs go unfunded each year. Prioritization determines which communities get maintained roads and which do not.

**Donor-funded rehabilitation typically requires economic justification.** World Bank and AfDB expect BCR > 1.5 for investment lending. This favours high-traffic trunk roads. Rural access roads require different justification (poverty reduction, access, social objectives) and may be funded through separate windows.

**County road prioritization is inherently political.** County assemblies influence which roads receive maintenance. The MCA approach provides a transparent, defensible framework that the County Director of Roads can present to the County Executive. Documenting the methodology and scores helps manage political pressure.

**North Eastern Kenya and other marginalised areas have historically received less road investment.** Article 204 of the Constitution establishes the Equalisation Fund for marginalised areas. An MCA that includes equity weighting addresses the constitutional mandate for equitable resource distribution.

### M.3.3 Common Errors (Country-Specific)

1. **Using needs-based only for all decisions.** Needs-based prioritization (worst-first) is appropriate for periodic maintenance but inadequate for rehabilitation where economic return matters.
2. **Not documenting the prioritization methodology.** Transparent documentation is essential for accountability in public expenditure. Always produce a written methodology note.
3. **Applying national weights at county level.** National-level weights emphasise condition and traffic. County-level priorities focus on social access. Use county-specific weights.
4. **Ignoring the KRB allocation formula constraint.** Each authority must prioritize within its RMLF allocation. Planning beyond the budget envelope without identifying supplementary funding is unrealistic.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| MCA weights | National weights | KeNHA programme | ASSUMED: National-level MCA weights. Adjust for county if applicable. | Engineering practice |
| MCA weights | County weights | County programme | ASSUMED: County-level MCA weights (social access 0.35). Adjust per county policy. | County development practice |
| Discount rate | 12% | Economic ranking | ASSUMED: 12% real discount rate. Standard for Kenya public investment analysis. | World Bank / National Treasury |
| Currency | KES | All | ASSUMED: Kenya Shillings. USD equivalent for donor-funded context. | National currency |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| MCA weight sum | 0.99 | 1.01 | ratio | Mathematical requirement | Weights must sum to 1.0 |
| Budget utilization | 80 | 100 | % | Best practice | < 80% suggests ranking or gap-filling needed |

### M.5.2 Standards Compliance Checks

- **Check:** Prioritization methodology documented
- **Standard:** KRB/good governance practice
- **Pass condition:** Written methodology note accompanies prioritized programme
- **Fail action:** NOTE -- Document the prioritization methodology for transparency and accountability.

- **Check:** Carry-forward roads included
- **Standard:** Best practice
- **Pass condition:** Roads unfunded in previous year are included in current prioritization
- **Fail action:** NOTE -- Previous year's unfunded roads should be included for reprioritization.

### M.5.3 Departures / Relaxations Process

No formal departures process. Prioritization methodology is set by the planning authority. Departures from standard methodology should be documented and justified, particularly for public accountability.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Budget < 30% of total needs | Severe underfunding | SENIOR REVIEW -- Budget covers only [X]% of maintenance needs. Network deterioration will accelerate. Recommend advocacy for increased RMLF or supplementary allocation. |
| All roads in Poor/Very Poor condition | Widespread network failure | SENIOR REVIEW -- All candidate roads are in Poor or Very Poor condition. Triage approach needed -- focus on roads with highest traffic and strategic importance. |
| MCA weights not agreed by decision-maker | Policy gap | NOTE -- MCA weights are defaults. Decision-maker should confirm weights reflect current priorities. |
| Equity concern raised | Geographic imbalance | NOTE -- Consider equity-adjusted MCA weights (include regional equity criterion at 0.15) to address Article 204 constitutional requirement for equitable resource distribution. |

---

## M.7 Worked Examples -- Kenya

### Example 1: County-Level MCA Prioritization

**Project:** Prioritize 5 road rehabilitation candidates across 3 Kenya counties.

**Given:**
- 5 candidate roads requiring rehabilitation across 3 counties
- Available budget: KES 500 million (RMLF allocation)
- Total rehabilitation need: KES 1.2 billion
- MCA criteria with county weights: condition (0.20), traffic (0.15), economic return (0.10), social access (0.35), strategic importance (0.20)
- Scoring (1-5 scale, 5 = highest priority):

| Road | County | Condition | Traffic | Economic | Social | Strategic | Cost (KES M) |
|------|--------|-----------|---------|----------|--------|-----------|-------------|
| R1 | Makueni | 5 | 2 | 1 | 5 | 4 | 200 |
| R2 | Machakos | 4 | 4 | 3 | 3 | 3 | 180 |
| R3 | Kitui | 3 | 1 | 1 | 5 | 5 | 350 |
| R4 | Makueni | 5 | 3 | 2 | 4 | 3 | 150 |
| R5 | Machakos | 4 | 5 | 4 | 2 | 2 | 320 |

**Solution:**

Step 1: Calculate weighted scores:
- R1: 5x0.20 + 2x0.15 + 1x0.10 + 5x0.35 + 4x0.20 = 1.0+0.3+0.1+1.75+0.8 = **3.95**
- R2: 4x0.20 + 4x0.15 + 3x0.10 + 3x0.35 + 3x0.20 = 0.8+0.6+0.3+1.05+0.6 = **3.35**
- R3: 3x0.20 + 1x0.15 + 1x0.10 + 5x0.35 + 5x0.20 = 0.6+0.15+0.1+1.75+1.0 = **3.60**
- R4: 5x0.20 + 3x0.15 + 2x0.10 + 4x0.35 + 3x0.20 = 1.0+0.45+0.2+1.4+0.6 = **3.65**
- R5: 4x0.20 + 5x0.15 + 4x0.10 + 2x0.35 + 2x0.20 = 0.8+0.75+0.4+0.7+0.4 = **3.05**

Step 2: Rank by score:
| Rank | Road | County | Score | Cost (KES M) | Cumulative |
|------|------|--------|-------|-------------|------------|
| 1 | R1 | Makueni | 3.95 | 200 | 200 |
| 2 | R4 | Makueni | 3.65 | 150 | 350 |
| 3 | R3 | Kitui | 3.60 | 350 | 700 |
| 4 | R2 | Machakos | 3.35 | 180 | 880 |
| 5 | R5 | Machakos | 3.05 | 320 | 1,200 |

Step 3: Budget = KES 500M. Funded: R1 (200) + R4 (150) = 350. Remaining: 150M. R3 costs 350 > 150M. Gap-fill: R2 (180) > 150M. No single remaining road fits. Total funded = KES 350M (70% utilization).

Step 4: Optimize: Consider partial funding for R3 or reallocate to R2 with co-funding from county. Alternative: fund R1 + R4 + partial R2 (150M of 180M needed).

**Result:** Funded programme: R1, R4 = KES 350M (70% utilization). R1 ranks highest because of social access (health facility and market access road in underserved area) combined with worst condition. Both funded roads are in Makueni county. For geographic balance, consider funding one Kitui or Machakos road with remaining budget through co-funding arrangements.

---

## M.8 References

1. Ministry of Roads and Transport, RDM 5.2 Pavement Maintenance, Rehabilitation and Overlay Design, Republic of Kenya, 2025
2. Ministry of Roads and Transport, RDM 5.1 Pavement Condition Surveys, Republic of Kenya, 2025
3. Kenya Roads Board, RMLF Allocation Formula and Disbursement Guidelines
4. Kenya Roads Board Act, Laws of Kenya
5. Constitution of Kenya 2010, Article 204 (Equalisation Fund)
6. Kenya Vision 2030, Fourth Medium Term Plan (MTP IV), Government of Kenya
7. World Bank, Highway Development and Management Model (HDM-4) -- for BCR methodology

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft with national/county dual prioritization framework, MCA criteria and weights, equity-adjusted weights, KRB RMLF allocation constraint, donor-funded criteria, 1 worked example (county MCA). |
