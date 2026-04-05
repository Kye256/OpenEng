---
name: "prioritization-methods"
description: "Use when ranking road maintenance or improvement projects for budget allocation. Provides three prioritization approaches: needs-based (condition threshold triggers from Skill #57), economic ranking (NPV/BCR from Skill #65 TARA data), and multi-criteria analysis (MCA combining condition, traffic, economic, social factors). Designed for both UNRA national-level and district-level (DUCAR) prioritization. Compose with Skill #57 (Maintenance Planning) for maintenance needs input and Skill #65 (TARA Integration) for economic ranking data."
---

# Prioritization Methods

> **Skill ID:** 59
> **Domain:** Asset Management
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda, Kenya

## Purpose

Rank competing road maintenance and improvement projects for budget allocation when available funding is less than total maintenance needs. This skill provides three prioritization methods of increasing sophistication: needs-based (rank by condition severity), economic ranking (rank by benefit-cost ratio), and multi-criteria analysis (weighted scoring across condition, traffic, economic, and social criteria). The method selected depends on data availability and decision-making context. Output is a prioritized road programme that fits within the available budget envelope.

## When to Use This Skill

- **Use when:** Multiple road sections need maintenance or improvement but budget is insufficient for all. Preparing annual maintenance work programmes. Allocating road fund resources across competing needs. Comparing road investment options.
- **Do not use when:** Only one road section needs treatment (no prioritization needed). Conducting detailed economic appraisal of a single project (use Skill #65 for TARA/HDM-4 analysis). Selecting maintenance treatment for a specific road (use Skill #57 first to identify the treatment, then this skill to prioritize across roads).
- **Prerequisite skills:** Skill #57 (Maintenance Planning) provides intervention_type and trigger_assessment for each road section. Skill #56 (Road Condition Assessment) provides condition_rating. Skill #65 (TARA Integration) provides NPV/BCR for economic ranking (optional).

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Needs-Based Prioritization:**
The simplest approach. Rank road sections by condition severity -- worst condition first. All roads below the intervention trigger level are candidates. Within each intervention class (routine, periodic, rehabilitation), rank by condition severity. The advantage is simplicity and transparency. The disadvantage is that it ignores value-for-money -- a road with 100 vpd and a road with 10,000 vpd receive the same priority if their condition is the same.

**Economic Ranking:**
Rank road sections by economic return on investment. Calculate the Net Present Value (NPV) or Benefit-Cost Ratio (BCR) of the proposed maintenance intervention for each road section. Higher BCR = better value for money. The economic benefits typically include: vehicle operating cost (VOC) savings, travel time savings, accident cost reduction, and reliability benefits. Data comes from economic appraisal models (HDM-4, RED model) via Skill #65. The advantage is economic efficiency -- maximizes total benefit from available budget. The disadvantage is potential inequity -- low-traffic roads (often serving poor, rural communities) rank low because their economic benefits are small.

**Multi-Criteria Analysis (MCA):**
Weighted scoring across multiple criteria that may include:
1. **Road condition** (from Skill #56) -- worse condition = higher priority
2. **Traffic volume** (from Skills #1-2) -- higher traffic = higher priority
3. **Economic return** (from Skill #65) -- higher BCR = higher priority
4. **Social factors** -- population served, access to services (health, education), poverty levels
5. **Strategic importance** -- trade corridor, tourist route, connectivity function

Each criterion is scored (typically 1-5 or 1-10) and multiplied by a weight. Total weighted score determines priority ranking. Weights are set by the decision-maker (engineer, planning committee, or policy directive) and reflect the relative importance of each criterion.

**Budget Constraint Handling:**
When total maintenance needs exceed available budget:
1. Calculate total cost of all triggered interventions (from Skill #50)
2. Rank road sections by selected prioritization method
3. Select roads from the top of the ranked list until budget is exhausted
4. Report the funded programme and the unfunded backlog
This is essentially a knapsack problem -- maximizing benefit within a budget constraint.

### 1.2 Universal Formulas

**Needs-Based Score:**
```
Priority_score = Severity_factor x Extent_factor

Where:
  Severity_factor: Very Poor = 4, Poor = 3, Fair = 2, Good = 1
  Extent_factor: based on number of trigger levels exceeded

Higher score = higher priority
```

**Economic Ranking:**
```
BCR = Present Value of Benefits / Present Value of Costs

Projects ranked by BCR descending.
BCR > 1.0 = economically justified
BCR > 3.0 = high priority
```

**MCA Weighted Score:**
```
Total_score = Sum(criterion_score_i x weight_i) for all criteria i

Where:
  criterion_score_i = 1 to 5 (or other scale)
  weight_i = 0 to 1 (weights sum to 1.0)

Higher total score = higher priority
```

**Budget Fit:**
```
Cumulative cost = Sum(treatment_cost_j) for roads j = 1 to k (ranked order)

Select k such that cumulative cost <= budget envelope
Roads 1 to k = funded programme
Roads k+1 to n = unfunded backlog
```

### 1.3 Figures & Diagrams

No figures required. The prioritization logic is captured in the decision tree and scoring formulas. MCA criteria and weights are in the JSON table.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine prioritization context
  |-- UNRA national programme --> Large network, condition data available, economic data possible
  |-- District DUCAR programme --> Smaller network, limited data, social factors important
  +-- Project selection (donor-funded) --> Economic ranking likely required by donor

Step 2: Select prioritization method
  |-- Data-poor (condition only, no traffic/economic data):
  |     --> Needs-based prioritization (worst-first)
  |
  |-- Data-moderate (condition + traffic, no economic appraisal):
  |     --> MCA with available criteria (condition, traffic, social)
  |
  +-- Data-rich (condition + traffic + economic appraisal):
        --> Economic ranking (BCR) or full MCA with all criteria

Step 3: Score each road section
  |-- Needs-based: assign severity score from condition rating
  |-- Economic: use BCR from Skill #65 TARA data
  +-- MCA: score each criterion, apply weights, calculate total

Step 4: Rank road sections
  --> Sort by score descending (highest priority first)
  --> Group by intervention type if needed (separate lists for routine, periodic, rehabilitation)

Step 5: Apply budget constraint
  --> Accumulate treatment costs from ranked list (costs from Skill #50)
  --> Cut-off when cumulative cost exceeds budget envelope
  --> Report: funded programme, unfunded backlog, budget utilization %

Step 6: Sensitivity check
  --> If MCA: test sensitivity to weight changes (vary weights +/- 20%)
  --> If economic: test sensitivity to discount rate changes
  --> Report whether the top-ranked roads are robust to parameter changes

Step 7: Produce prioritized programme
  --> Ranked list with scores, treatment details, costs
  --> Budget summary (total need, budget, gap, utilization)
  --> Unfunded roads list with estimated costs
```

### 2.2 Professional Judgment (Universal)

**No single method is universally best.** Needs-based is simplest but ignores efficiency. Economic ranking maximizes value for money but may neglect equity. MCA balances multiple objectives but depends on subjective weights. The choice depends on the decision context, data availability, and policy objectives.

**Weight selection in MCA is a policy decision, not an engineering calculation.** The engineer provides technical scores (condition, traffic) but the weight assigned to each criterion reflects policy priorities. A pro-equity policy weights social access highly; a pro-efficiency policy weights economic return highly. The engineer should present options with different weight sets, not impose a single set.

**Budget utilization should approach 100%.** After ranking, if the top-ranked project costs more than the remaining budget, consider whether a lower-ranked but cheaper project can fill the gap. This "gap-filling" approach improves budget utilization but should not significantly distort the priority ranking.

**Unfunded roads are not forgotten.** The unfunded backlog should be reported and used for: (a) advocacy for increased funding, (b) next-year programming (these roads move up as their condition worsens), (c) identification of roads for donor/special funding.

### 2.3 Common Errors

1. **Mixing methods without transparency.** Using needs-based for some roads and economic ranking for others without clear justification creates an inconsistent programme. Use one method consistently, or use MCA that combines multiple criteria systematically.
2. **Applying equal weights in MCA by default.** Equal weights (e.g., 0.20 for each of 5 criteria) is a specific choice that implies all criteria are equally important. This may not reflect actual policy priorities. Always state and justify weights.
3. **Ignoring the budget constraint.** A prioritized list without budget constraint analysis is incomplete. The whole point of prioritization is to decide what gets funded and what does not.
4. **Prioritizing by cost alone.** Cheapest-first maximizes the number of roads treated but may not maximize benefit. A UGX 5 billion rehabilitation of a 10,000 vpd trunk road may deliver more benefit than ten UGX 500 million gravel resheetings.
5. **Not considering equity.** Pure economic ranking can result in all resources going to high-traffic trunk roads while low-traffic rural access roads -- serving the poorest communities -- receive nothing. MCA allows equity criteria to counterbalance.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Prioritization method | Needs-based | Limited data | ASSUMED: Needs-based prioritization (condition severity ranking). MCA or economic ranking preferred if data available. | Always available with condition data |
| MCA weights | Equal weights | Not specified | ASSUMED: Equal weights for all criteria. This is a default -- actual weights should reflect policy priorities. | Neutral starting point |
| Discount rate | 12% | Economic ranking | ASSUMED: 12% real discount rate for economic ranking (standard for developing countries). | World Bank standard |
| Budget constraint | None applied | Not specified | NOTE: No budget constraint applied. Provide budget envelope for practical programme. | Requires user input |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always report the budget gap** (total needs minus budget) alongside the funded programme.
3. **Flag MCA weights explicitly** -- they are policy decisions, not engineering defaults.
4. **Report sensitivity** of results to weight/parameter changes when MCA or economic ranking is used.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| MCA criterion score | 1 | 5 | score | Scores outside 1-5 range are invalid |
| MCA weight | 0 | 1 | ratio | Weights must sum to 1.0 |
| BCR | 0 | 50 | ratio | BCR > 20 is unusual -- verify inputs |
| Budget utilization | 0 | 100 | % | < 80% suggests ranking or gap-filling issue |

### 4.2 Consistency Checks

- **Weights sum to 1.0:** Verify that MCA weights sum to exactly 1.0 (or within rounding tolerance 0.99-1.01).
- **All roads scored:** Verify that every candidate road has been scored on all criteria. Missing scores bias the ranking.
- **Treatment cost available:** Every road in the ranked list must have an estimated treatment cost for budget constraint analysis. Missing costs make budget analysis impossible.
- **Condition and priority alignment:** If a road in Good condition ranks higher than a road in Very Poor condition, verify the justification (may be valid for economic or strategic reasons, but should be noted).

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific criteria/weights | SENIOR REVIEW -- No country module for [jurisdiction]. Using generic MCA criteria. Verify applicability. |
| Budget < 30% of total needs | Severe underfunding | SENIOR REVIEW -- Budget covers less than 30% of identified maintenance needs. Network deterioration will accelerate. Recommend urgent funding increase advocacy. |
| MCA weights not specified | Policy decision needed | NOTE -- MCA weights defaulting to equal weights. Decision-maker should review and set weights reflecting policy priorities. |
| Top-ranked roads change with small weight variation | Ranking not robust | NOTE -- Priority ranking is sensitive to weight changes. Roads [X] and [Y] swap ranks with +/- 10% weight variation. Recommend decision-maker review. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| condition_rating | text | -- | Yes | Skill #56 | Good/Fair/Poor/Very Poor per road section |
| intervention_type | text | -- | Yes | Skill #57 | routine/periodic/rehabilitation per section |
| trigger_assessment | object | -- | Recommended | Skill #57 | Which triggers exceeded and by how much |
| treatment_cost | number | Currency | Recommended | Skill #50 | Estimated cost per road section |
| traffic_data | number | vpd/ESA | Optional | Skills #1-2 | Traffic volume for MCA scoring |
| economic_indicators | object | -- | Optional | Skill #65 | NPV, BCR from economic appraisal |
| budget_envelope | number | Currency | Recommended | User | Available budget for the programme period |
| social_data | object | -- | Optional | User | Population served, access to services, poverty indicators |
| strategic_importance | text | -- | Optional | User | Trade corridor, tourism route, connectivity function |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| prioritized_road_list | list | -- | User | Ranked list of roads with priority scores |
| recommended_programme | list | -- | User | Roads within budget with treatment details and costs |
| unfunded_roads | list | -- | User | Roads that did not make the budget cut-off |
| budget_summary | object | -- | User | Total needs, budget, gap, utilization % |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific MCA criteria, UNRA/DUCAR prioritization practice | Markdown |
| `tables/mca_criteria_weights.json` | MCA criteria and weight ranges for national and district contexts | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load Uganda module for UNRA/DUCAR context. Load MCA criteria and weight ranges.

### Step 2: Gather Input Data
Collect condition ratings (Skill #56), intervention types (Skill #57), treatment costs (Skill #50), and any available traffic, economic, or social data. Identify data gaps.

### Step 3: Select Prioritization Method
Based on data availability and decision context, select needs-based, economic ranking, or MCA. Document the selection rationale.

### Step 4: Score Road Sections
Apply the selected method to score each candidate road section. For MCA: score each criterion, apply weights, calculate total weighted score.

### Step 5: Rank and Apply Budget Constraint
Sort road sections by score (descending). Accumulate treatment costs down the ranked list. Identify the budget cut-off point. Report funded programme and unfunded backlog.

### Step 6: Sensitivity Analysis (MCA/Economic)
If using MCA or economic ranking: test sensitivity of results to parameter changes. Report whether the top-ranked roads are robust.

### Step 7: Run Validation
Apply Section 4 checks. Verify weights, scores, budget utilization, and ranking consistency.

### Step 8: Produce Output
Format per Section 8. Include ranked list, budget analysis, and sensitivity results.

---

## 8. Output Format

```
============================================================
ROAD PRIORITIZATION -- [Programme Name / Year]
Country/Jurisdiction: [country]
Method: [Needs-based / Economic Ranking / MCA]
Date: [YYYY-MM-DD]
============================================================

METHOD SELECTION
----------------
Method: [selected method]
Rationale: [why this method -- data availability, context]
[If MCA]: Criteria and weights:
  [Criterion 1]: [weight]
  [Criterion 2]: [weight]
  [...]

PRIORITIZED ROAD LIST
---------------------
| Rank | Road Section | Condition | Intervention | Score | Treatment Cost |
|------|-------------|-----------|--------------|-------|---------------|
| 1 | [name] | [rating] | [type] | [score] | [cost] |
| 2 | [name] | [rating] | [type] | [score] | [cost] |
| ... | | | | | |

BUDGET ANALYSIS
---------------
Total maintenance need: [X]
Available budget: [Y]
Budget gap: [X - Y] ([Z%] underfunded)

FUNDED PROGRAMME
----------------
Roads 1-[k]: [total cost] ([budget utilization]% of budget)
[Details per road]

UNFUNDED BACKLOG
----------------
Roads [k+1]-[n]: [total cost]
[Details per road]
[Recommendation for next year / special funding]

SENSITIVITY ANALYSIS (if MCA/Economic)
--------------------------------------
[Parameter tested]: [results]
[Whether ranking is robust to changes]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[Method references, country module sources]

============================================================
PRIORITIZATION OUTPUT -- FOR PROFESSIONAL REVIEW
This output provides a ranked programme based on the
selected methodology and available data.
Decision-maker review of criteria weights and final
programme selection is required.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Optimisation algorithms (linear programming, dynamic programming) for formal budget-constrained optimisation. Multi-year programming (rolling 3-5 year plans). Life-cycle cost analysis integration. Spatial equity analysis (geographic distribution of funding). Political economy considerations in prioritization.
- **Simplifications:** MCA scoring is on a simple 1-5 scale. Economic ranking assumes BCR data is available from Skill #65 -- this skill does not calculate BCR itself. Budget constraint uses a simple cumulative cut-off, not formal optimisation. Sensitivity analysis tests one parameter at a time, not combined effects.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya (KeRRA/KeNHA), Tanzania (TANROADS/TARURA), Ethiopia (ERA)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with 3 prioritization methods (needs-based, economic, MCA), budget constraint handling, sensitivity analysis framework. |
