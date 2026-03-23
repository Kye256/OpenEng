# Prioritization Methods -- Uganda Module

> **Parent Skill:** Skill #59 Prioritization Methods
> **Country/Jurisdiction:** Uganda
> **Standards:** UNRA Maintenance Planning Procedures, DUCAR Programme Guidelines
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| UNRA Maintenance Planning Procedures | Internal | Annual work plan prioritization methodology | Current |
| DUCAR Programme Guidelines | Current | District road prioritization criteria | Current |
| Uganda Road Fund Allocation Formula | Current | Fund allocation criteria and weights | Current |
| MoWT Road Maintenance Manual | Current | Maintenance prioritization framework | Current |

### M.1.2 Institutional Context

**UNRA Maintenance Programming:** UNRA prepares annual maintenance work plans covering the national road network. Network-level condition surveys inform the prioritization of road sections for periodic maintenance and rehabilitation. Routine maintenance is programmed across the entire network. Budget allocation from Uganda Road Fund is the primary funding source.

**DUCAR District Prioritization:** The DUCAR programme supports district local governments in prioritizing district and community roads for maintenance. Districts typically use simplified criteria (condition, traffic, access to services) due to limited data availability. District road committees participate in the prioritization process.

**Uganda Road Fund (URF):** Provides ring-fenced maintenance funding allocated to UNRA, KCCA, municipalities, and districts. The allocation formula considers road network length, condition, and usage. Total URF funding is consistently below maintenance needs -- making prioritization essential.

### M.1.3 Standard Philosophy

Uganda road maintenance prioritization follows a pragmatic approach that accommodates varying data quality across the network. UNRA uses condition-based (needs-based) prioritization as the primary method for routine and periodic maintenance, supplemented by economic ranking for larger rehabilitation investments (especially donor-funded). Districts use simplified MCA approaches that combine condition with social access criteria. The emphasis is on transparency and defensibility of the prioritization process.

---

## M.2 Country-Specific Knowledge

### M.2.1 UNRA Prioritization Practice

**Routine Maintenance:** Not prioritized -- applied across the entire national network. Budget is allocated on a per-km basis.

**Periodic Maintenance:** Prioritized by condition severity (needs-based):
1. Rank all sections with periodic maintenance trigger exceeded
2. Within the periodic class: worst condition first
3. Apply budget constraint -- cut-off when budget exhausted
4. Carry forward unfunded sections to next financial year

**Rehabilitation:** Prioritized by a combination of condition and economic return:
1. Identify all sections with rehabilitation trigger exceeded
2. For donor-funded rehabilitation: economic ranking (BCR) typically required by the development partner
3. For GoU-funded rehabilitation: condition severity with consideration of traffic and strategic importance
4. Detailed economic appraisal (Skill #65) for projects above UGX 50 billion

### M.2.2 DUCAR District Prioritization Criteria

Districts typically use MCA with the following criteria:

**Table: MCA Criteria and Weights** --> `tables/mca_criteria_weights.json`

| Criterion | Typical Weight (National) | Typical Weight (District) | Scoring Basis |
|-----------|--------------------------|--------------------------|---------------|
| Road condition | 0.30 | 0.25 | Condition rating from Skill #56 |
| Traffic volume | 0.25 | 0.15 | ADT or estimated usage |
| Economic return | 0.20 | 0.10 | BCR from Skill #65 (if available) |
| Social access | 0.15 | 0.30 | Population served, services accessed |
| Strategic importance | 0.10 | 0.20 | Trade route, connectivity, district priority |

**Notes:**
- District-level prioritization weights social access more heavily than national-level (reflecting the access mandate of district roads).
- National-level weights condition and traffic more heavily (reflecting network efficiency objectives).
- These are typical ranges -- actual weights should be set by the decision-maker (District Engineer, Roads Committee, or UNRA planning team).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda-specific branching:**
```
Determine road authority and programme type:
  |-- UNRA national road:
  |     |-- Routine maintenance --> No prioritization needed (network-wide)
  |     |-- Periodic maintenance --> Needs-based (condition severity ranking)
  |     +-- Rehabilitation --> Economic ranking (BCR) for donor-funded;
  |                            MCA (condition + traffic + strategic) for GoU-funded
  |
  |-- District road:
  |     --> MCA with district weights (social access weighted highly)
  |     --> Simplified scoring if limited data
  |     --> District Roads Committee input on strategic importance
  |
  +-- Community access road:
        --> Simplified needs-based (worst condition first)
        --> Social access as tiebreaker
        --> Community input on priority
```

### M.3.2 Professional Judgment (Country-Specific)

**Uganda Road Fund covers approximately 40% of maintenance needs.** This means 60% of identified maintenance needs go unfunded each year. Prioritization is not an academic exercise -- it determines which communities get maintained roads and which do not.

**Donor-funded rehabilitation programmes typically require economic justification.** World Bank and AfDB expect BCR > 1.0 (and often > 2.0) for investment lending projects. This favours high-traffic trunk roads. District and rural access roads require different justification (poverty reduction, access, social objectives) and may be funded through separate windows (e.g., IDA community roads programme).

**District road prioritization is inherently political.** District councils influence which roads receive maintenance. The MCA approach provides a transparent, defensible framework that the District Engineer can present to the council. Documenting the methodology and scores helps manage political pressure.

**Equity considerations are important in Uganda.** Northern Uganda and Karamoja have historically received less road investment. An MCA that includes an equity or regional balance criterion can address this imbalance. Pure economic ranking tends to concentrate resources in high-traffic areas (primarily central and western corridors).

### M.3.3 Common Errors (Country-Specific)

1. **Using needs-based only for all decisions.** Needs-based prioritization (worst-first) is appropriate for periodic maintenance but inadequate for rehabilitation prioritization where economic return and strategic importance matter.
2. **Not documenting the prioritization methodology.** When the methodology is undocumented, prioritization decisions appear arbitrary and are difficult to defend. Always produce a written methodology note with the prioritized programme.
3. **Ignoring carry-forward roads.** Roads that were unfunded in the previous year should carry forward to the current year's prioritization. Their condition will have worsened, potentially increasing their priority. Not carrying forward loses institutional memory.
4. **Applying national weights at district level.** National-level weights (emphasising condition and traffic) do not reflect district-level priorities (access and social services). Use district-specific weights from the MCA table.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| MCA weights | National weights from mca_criteria_weights.json | UNRA programme | ASSUMED: National-level MCA weights. Adjust for district if applicable. | UNRA practice |
| MCA weights | District weights from mca_criteria_weights.json | District programme | ASSUMED: District-level MCA weights. Adjust per district policy. | DUCAR practice |
| Discount rate | 12% | Economic ranking | ASSUMED: 12% real discount rate. Standard for Uganda public investment analysis. | World Bank / MoFPED |
| Currency | UGX | All | ASSUMED: Uganda Shillings. | National currency |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| MCA weight sum | 0.99 | 1.01 | ratio | Mathematical requirement | Weights must sum to 1.0 |
| Budget utilization | 80 | 100 | % | Best practice | < 80% suggests ranking or gap-filling needed |

### M.5.2 Standards Compliance Checks

- **Check:** Prioritization methodology documented
- **Standard:** UNRA/DUCAR practice
- **Pass condition:** Written methodology note accompanies prioritized programme
- **Fail action:** NOTE -- Document the prioritization methodology for transparency and accountability.

- **Check:** Carry-forward roads included
- **Standard:** Best practice
- **Pass condition:** Roads unfunded in previous year are included in current prioritization
- **Fail action:** NOTE -- Previous year's unfunded roads should be included for reprioritization.

### M.5.3 Departures / Relaxations Process

No formal departures process. Prioritization methodology is set by the planning authority (UNRA, district). Departures from the standard methodology (e.g., including or excluding specific roads for political reasons) should be documented and justified.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Budget < 30% of total needs | Severe underfunding | SENIOR REVIEW -- Budget covers only [X]% of maintenance needs. Network deterioration will accelerate significantly. Recommend advocacy for increased Road Fund allocation. |
| All roads in Poor/Very Poor condition | Widespread network failure | SENIOR REVIEW -- All candidate roads are in Poor or Very Poor condition. Triage approach needed -- focus on roads with highest traffic and strategic importance. |
| MCA weights not agreed by decision-maker | Policy gap | NOTE -- MCA weights are defaults. Decision-maker (District Engineer / UNRA Planning) should confirm weights reflect current priorities. |
| Top 3 roads swap with 10% weight change | Ranking sensitivity | NOTE -- Priority ranking is sensitive to weight changes. Present top 5 to decision-maker for final selection. |

---

## M.7 Worked Examples -- Uganda

### Example 1: Needs-Based Prioritization of 10 Road Sections

**Project:** Annual periodic maintenance prioritization for 10 national road sections with budget constraint.

**Given:**
- 10 road sections with condition data from Skill #56:
  - Section A: Very Poor (IRI=9.5, VCI=28), 12km, treatment cost UGX 8.5B
  - Section B: Poor (IRI=7.0, VCI=42), 8km, treatment cost UGX 3.2B
  - Section C: Very Poor (IRI=8.8, VCI=32), 15km, treatment cost UGX 11.0B
  - Section D: Poor (IRI=6.5, VCI=48), 10km, treatment cost UGX 4.0B
  - Section E: Fair (IRI=5.0, VCI=65), 6km, treatment cost UGX 1.5B
  - Section F: Poor (IRI=7.8, VCI=38), 9km, treatment cost UGX 3.8B
  - Section G: Very Poor (IRI=10.2, VCI=22), 7km, treatment cost UGX 6.0B
  - Section H: Fair (IRI=4.5, VCI=72), 11km, treatment cost UGX 2.0B
  - Section I: Poor (IRI=6.8, VCI=45), 13km, treatment cost UGX 5.5B
  - Section J: Fair (IRI=5.5, VCI=58), 8km, treatment cost UGX 2.5B
- Available budget: UGX 25.0 billion
- Total maintenance need: UGX 48.0 billion

**Solution:**

Step 1: Method = needs-based (condition severity ranking).

Step 2: Rank by condition severity (worst first):
| Rank | Section | Condition | VCI | Cost (UGX B) | Cumulative |
|------|---------|-----------|-----|-------------|------------|
| 1 | G | Very Poor | 22 | 6.0 | 6.0 |
| 2 | A | Very Poor | 28 | 8.5 | 14.5 |
| 3 | C | Very Poor | 32 | 11.0 | 25.5 |
| 4 | F | Poor | 38 | 3.8 | 29.3 |
| 5 | B | Poor | 42 | 3.2 | 32.5 |
| ... | | | | | |

Step 3: Budget constraint at UGX 25.0B:
- Funded: G (6.0) + A (8.5) + C (11.0) = UGX 25.5B --> C exceeds budget
- Adjust: Fund G + A = UGX 14.5B. Remaining budget = 10.5B.
- C costs 11.0B > 10.5B remaining. Skip to F: 3.8B. Cumulative = 18.3B.
- Add B: 3.2B. Cumulative = 21.5B. Remaining = 3.5B.
- Add D: 4.0B > 3.5B. Skip to E: 1.5B. Cumulative = 23.0B. Remaining = 2.0B.
- Add J: 2.5B > 2.0B. Add H: 2.0B. Cumulative = 25.0B.

Step 4: Funded programme: G, A, F, B, E, H = UGX 25.0B (100% utilization)
Unfunded: C, D, I, J = UGX 23.0B

**Result:** 6 of 10 sections funded within UGX 25B budget. Very Poor section C (UGX 11B) is unfunded due to high cost -- recommend partial treatment or special funding request. Budget gap = UGX 23B (48% of total need).

### Example 2: MCA Prioritization for 8 District Roads

**Project:** DUCAR-style MCA prioritization for 8 district roads in Bunyoro district.

**Given:**
- 8 district roads requiring maintenance
- MCA criteria with district weights: condition (0.25), traffic (0.15), economic return (0.10), social access (0.30), strategic importance (0.20)
- Scoring (1-5 scale, 5 = highest priority):

| Road | Condition | Traffic | Economic | Social | Strategic | Treatment Cost |
|------|-----------|---------|----------|--------|-----------|---------------|
| R1 | 5 | 3 | 2 | 4 | 3 | UGX 800M |
| R2 | 4 | 4 | 3 | 3 | 4 | UGX 650M |
| R3 | 3 | 2 | 1 | 5 | 5 | UGX 1,200M |
| R4 | 5 | 5 | 4 | 2 | 2 | UGX 500M |
| R5 | 4 | 3 | 3 | 4 | 3 | UGX 750M |
| R6 | 2 | 2 | 1 | 5 | 4 | UGX 1,500M |
| R7 | 3 | 1 | 1 | 4 | 5 | UGX 900M |
| R8 | 5 | 4 | 4 | 1 | 1 | UGX 400M |

- Budget: UGX 2.5 billion

**Solution:**

Step 1: Calculate weighted scores:
- R1: 5x0.25 + 3x0.15 + 2x0.10 + 4x0.30 + 3x0.20 = 1.25+0.45+0.20+1.20+0.60 = **3.70**
- R2: 4x0.25 + 4x0.15 + 3x0.10 + 3x0.30 + 4x0.20 = 1.00+0.60+0.30+0.90+0.80 = **3.60**
- R3: 3x0.25 + 2x0.15 + 1x0.10 + 5x0.30 + 5x0.20 = 0.75+0.30+0.10+1.50+1.00 = **3.65**
- R4: 5x0.25 + 5x0.15 + 4x0.10 + 2x0.30 + 2x0.20 = 1.25+0.75+0.40+0.60+0.40 = **3.40**
- R5: 4x0.25 + 3x0.15 + 3x0.10 + 4x0.30 + 3x0.20 = 1.00+0.45+0.30+1.20+0.60 = **3.55**
- R6: 2x0.25 + 2x0.15 + 1x0.10 + 5x0.30 + 4x0.20 = 0.50+0.30+0.10+1.50+0.80 = **3.20**
- R7: 3x0.25 + 1x0.15 + 1x0.10 + 4x0.30 + 5x0.20 = 0.75+0.15+0.10+1.20+1.00 = **3.20**
- R8: 5x0.25 + 4x0.15 + 4x0.10 + 1x0.30 + 1x0.20 = 1.25+0.60+0.40+0.30+0.20 = **2.75**

Step 2: Rank by score:
| Rank | Road | Score | Cost (UGX M) | Cumulative |
|------|------|-------|-------------|------------|
| 1 | R1 | 3.70 | 800 | 800 |
| 2 | R3 | 3.65 | 1,200 | 2,000 |
| 3 | R2 | 3.60 | 650 | 2,650 |
| 4 | R5 | 3.55 | 750 | 3,400 |

Step 3: Budget = UGX 2,500M. Funded: R1 (800) + R3 (1,200) = 2,000. Remaining: 500M. R2 costs 650 > 500. Gap-fill: R8 (400M). Total funded = 2,400M.

**Result:** Funded programme: R1, R3, R8 = UGX 2,400M (96% utilization). Note R3 ranks high because of social access (school and health centre) and strategic importance (market access road) despite only moderate condition. R8 is gap-filler (highest condition score, lowest cost).

### Example 3: Budget-Constrained Prioritization with Equity Consideration

**Project:** National road maintenance prioritization with only 30% budget available.

**Given:**
- 20 road sections across Uganda requiring maintenance
- Total maintenance need: UGX 150 billion
- Available budget: UGX 45 billion (30%)
- All sections in Poor or Very Poor condition
- 12 sections in central/western corridors (high traffic)
- 8 sections in northern/Karamoja (low traffic but poorest communities)

**Solution:**

Step 1: Pure needs-based ranking would result in similar scores (all Poor/Very Poor).

Step 2: Economic ranking would concentrate resources on the 12 high-traffic corridors (higher BCR).

Step 3: MCA with equity criterion:
- Add "Regional equity" criterion with weight 0.15 (reduce economic weight from 0.20 to 0.05)
- Northern/Karamoja roads score 5 on equity; central/western roads score 1
- Ensures at least 2-3 northern sections enter the funded programme

Step 4: Result: 8 sections funded. 6 from central/western (highest overall scores), 2 from northern (equity criterion lifts their ranking). Budget utilization: UGX 44.5B (99%).

**Result:** Equity-weighted MCA ensures geographic representation in the funded programme. Without equity criterion, all 8 funded roads would be in central/western corridors. Decision documented: equity criterion included at weight 0.15 based on policy directive to address northern Uganda road access gap. Flag: MCA weights should be confirmed by UNRA planning management.

---

## M.8 References

1. UNRA Maintenance Planning Procedures, Uganda National Roads Authority (internal)
2. DUCAR Programme -- District Road Prioritization Guidelines
3. Uganda Road Fund Act 2008, Allocation Formula and Disbursement Criteria
4. MoWT Road Maintenance Manual, Ministry of Works and Transport, Uganda (current edition)
5. World Bank, Highway Development and Management Model (HDM-4) -- for BCR methodology
6. Robinson, R., Danielson, U., Snaith, M., "Road Maintenance Management: Concepts and Systems", Palgrave, 1998

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with 3 prioritization methods, UNRA/DUCAR practice, MCA criteria and weights, 3 worked examples (needs-based, MCA, equity-adjusted). |
