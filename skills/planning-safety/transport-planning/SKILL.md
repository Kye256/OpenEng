---
name: "transport-planning"
description: "Use when estimating transport demand or assessing route viability for a road project. Applies growth-factor demand estimation at corridor/route level for rural roads. Not a full 4-step transport model -- focuses on screening-level analysis appropriate for feasibility studies and road improvement justification. References HDM-4/RED for economic appraisal concepts without duplicating Skill #65 (TARA Integration). Compose with Skill #6 (Traffic Forecasting) for traffic growth inputs and Skill #50 (Engineer's Estimate) for cost-benefit analysis."
---

# Transport Planning

> **Skill ID:** 60
> **Domain:** Planning & Safety
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Provide screening-level transport demand estimation and route assessment for rural road projects. This skill enables the agent to estimate future traffic demand using growth-factor methods, assess route viability at a corridor/route level, and screen the economic justification for road improvement projects. It is not a full four-step transport model -- it focuses on the practical analysis appropriate for feasibility studies, road improvement justification, and preliminary project appraisal in rural and semi-urban contexts.

## When to Use This Skill

- **Use when:** Estimating future transport demand for a road project at feasibility or pre-feasibility stage, comparing alternative routes, or screening economic viability of a road improvement.
- **Do not use when:** A full origin-destination transport model is required (urban network planning), or when traffic forecasts have already been provided by a transport planning study. Not for detailed economic appraisal -- use Skill #65 (TARA Integration) for full HDM-4/RED analysis.
- **Prerequisite skills:** Skill #1 (Traffic Survey Design) and Skill #2 (Traffic Data Processing) for baseline traffic data. Skill #6 (Traffic Forecasting) for growth rate estimation.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Growth-Factor Demand Estimation:**

The simplest and most widely used method for estimating future traffic on rural roads. Projects future traffic from current counts using compound growth rates. Appropriate when origin-destination patterns are stable and the road serves a defined corridor with limited route choice.

Future AADT = Current AADT x (1 + g)^n

Where g = annual growth rate (from Skill #6) and n = number of years to the design horizon.

**Traffic Components for Improvement Projects:**

When a road is improved (e.g., gravel to paved upgrade), future traffic comprises three components:

1. **Normal traffic:** Existing traffic growing at the background growth rate. This traffic would use the road regardless of improvement.
2. **Generated traffic:** Additional traffic induced by the improvement itself -- trips that would not have been made on any road without the improvement. Typical range: 10-20% of normal traffic for gravel-to-paved upgrades (MoWT guidance).
3. **Diverted traffic:** Traffic that shifts from alternative routes to the improved road due to reduced travel time or cost. Requires knowledge of the network -- which alternative routes exist and their relative attractiveness.

**Network Analysis at Corridor Level:**

For rural roads, network analysis is qualitative rather than model-based:
- Identify the corridor being served and the communities connected.
- Identify alternative routes (if any) and their condition, length, and travel time.
- Assess whether improvement will attract diverted traffic from parallel routes.
- Evaluate connectivity improvement -- does the road complete a missing link, provide all-weather access, or connect to a higher-class road?

**Demand Indicators:**

Key indicators for assessing transport demand at screening level:
- Current AADT and trend (growing, stable, declining)
- Heavy vehicle percentage (indicates freight/economic activity)
- Seasonal variation (agricultural roads peak during harvest)
- Population and economic activity in the corridor
- Generated traffic potential (surface upgrade, bridge replacement)
- Social demand indicators (health, education access)

**Economic Justification Screening:**

Screening-level economic analysis compares estimated benefits with estimated costs at order-of-magnitude level:
- **Vehicle Operating Cost (VOC) savings:** Reduced fuel, tyre, and maintenance costs on improved surface. The dominant benefit for rural road improvements.
- **Travel time savings:** Reduced journey times. Significant for long corridors.
- **Accident cost reduction:** Reduced accident rates on improved roads (see Skill #61 for safety context).
- **Reference:** HDM-4 and RED (Roads Economic Decision Model) provide the analytical framework. Skill #65 (TARA Integration) handles the data flows for full economic appraisal.

**Rural vs Urban Context:**

This skill focuses on rural roads where:
- Traffic is dominated by through movements along a corridor.
- Route choice is limited (often only one practical route).
- Growth is driven by population, agriculture, and economic development.
- Social access benefits may outweigh pure economic returns.

Urban transport planning adds congestion modelling, modal split, public transport, and land-use interaction -- beyond the scope of this skill.

### 1.2 Universal Formulas

**Compound growth formula:**
```
AADT_future = AADT_current x (1 + g)^n
```
- AADT_current: Current annual average daily traffic (vehicles/day)
- g: Annual growth rate (decimal, e.g., 0.05 for 5%)
- n: Number of years from base year to design year
- Valid range for g: 0-15% per year (growth rates above 15% are unusual and should be flagged)

**Total design traffic with generated component:**
```
AADT_design = AADT_future + (AADT_future x GF)
```
- GF: Generated traffic factor (decimal, e.g., 0.15 for 15%)
- Typical range: 0.10-0.20 for gravel-to-paved upgrades

**Simple benefit-cost screening ratio:**
```
BCR_screening = (Annual VOC savings x Design life) / Project cost
```
- This is a rough screening ratio only -- not a discounted economic analysis.
- A screening BCR > 1.0 suggests the project warrants detailed economic appraisal.
- For rigorous analysis: use Skill #65 (TARA Integration) with HDM-4/RED.

### 1.3 Figures & Diagrams

No figures required. The decision tree in Section 2.1 encodes the assessment flow. Traffic growth curves are generated by the compound growth formula.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine project type
  |-- New road construction --> Demand assessment required (no existing traffic data)
  |-- Road upgrade (gravel to paved) --> Use existing traffic + generated traffic factor
  |-- Road rehabilitation (same surface) --> Use existing traffic only (no generated traffic)
  +-- Bridge replacement / missing link --> Assess connectivity improvement + potential diversion

Step 2: Collect baseline traffic data
  |-- Existing traffic counts available --> Use processed AADT from Skill #2
  |-- No traffic counts --> Commission traffic survey (Skill #1)
  +-- New road (no corridor traffic) --> Use surrogate data from comparable corridors
                                          Flag: "No direct traffic data -- surrogate used"

Step 3: Estimate future demand using growth-factor method
  --> Apply compound growth formula (Section 1.2)
  --> Use growth rate from Skill #6 (Traffic Forecasting)
  --> Apply to design horizon (typically 20 years for paved roads, 10 years for gravel)

Step 4: Include generated traffic for surface upgrades
  |-- Gravel to paved upgrade --> Apply generated traffic factor (10-20%)
  |-- Same surface rehabilitation --> No generated traffic
  +-- New road --> Estimate based on comparable projects

Step 5: Assess route alternatives and connectivity improvement
  --> Identify alternative routes and their condition
  --> Estimate potential diverted traffic (qualitative for rural roads)
  --> Assess connectivity value (all-weather access, missing link completion)

Step 6: Screen economic viability
  --> Estimate VOC savings from surface improvement
  --> Compare benefits with estimated project cost (from Skill #50)
  --> If BCR_screening > 1.0 --> Recommend detailed economic appraisal (Skill #65)
  --> If BCR_screening < 1.0 but high social need --> Flag for MCA approach (Skill #59)
```

### 2.2 Professional Judgment (Universal)

**Traffic data quality matters more than growth rate precision.** A growth rate of 5% vs 6% makes less difference than using an AADT of 300 vs 500. Always verify the baseline traffic data quality before forecasting.

**Generated traffic is real but uncertain.** The 10-20% factor is an empirical range observed on Sub-Saharan African road upgrade projects. The actual value depends on suppressed demand, which is difficult to measure. Use the lower end (10%) for conservative estimates and the upper end (20%) for roads serving areas with clearly suppressed economic activity.

**Low-traffic roads may not pass economic screening but may still be justified.** Roads serving isolated communities with health facilities, schools, or agricultural areas may have low traffic but high social value. In such cases, economic analysis alone is insufficient -- refer to Skill #59 (Prioritization Methods) for multi-criteria assessment.

**Declining traffic is a valid scenario.** Not all roads have growing traffic. Mining areas post-closure, regions with outmigration, or roads bypassed by new construction may experience declining traffic. The growth rate can be negative.

### 2.3 Common Errors

1. **Ignoring generated traffic.** Forecasting only normal traffic growth for a gravel-to-paved upgrade significantly underestimates future demand.
2. **Using national average growth rate for all roads.** Growth rates vary by road class, region, and economic context. Use corridor-specific rates where available (Skill #6).
3. **Double-counting diverted traffic.** Diverted traffic is not new traffic -- it shifts from one route to another. If modelling network effects, ensure diverted traffic is subtracted from the alternative route.
4. **Confusing screening-level analysis with full economic appraisal.** The screening BCR in this skill is a rough indicator, not a basis for investment decision. Detailed NPV/IRR analysis requires Skill #65 (TARA Integration).
5. **Applying urban methods to rural roads.** Four-step transport models require origin-destination data, modal split models, and assignment algorithms that are neither available nor necessary for most rural road assessments.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Growth rate | 5% per year | Not specified | ASSUMED: 5% annual growth rate. Verify with Skill #6 traffic forecasting or country-specific data. | Mid-range for Sub-Saharan Africa |
| Design horizon | 20 years | Paved road, not specified | ASSUMED: 20-year design horizon for paved road. | Standard design life for paved roads |
| Design horizon | 10 years | Gravel road, not specified | ASSUMED: 10-year design horizon for gravel road. | Standard resealing/regravelling cycle |
| Generated traffic factor | 15% | Gravel to paved upgrade | ASSUMED: 15% generated traffic factor. Range 10-20% per MoWT guidance. | Mid-range of empirical values |
| Generated traffic factor | 0% | Rehabilitation (same surface) | No generated traffic for same-surface rehabilitation. | No surface change, no demand induction |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Use higher growth rates (more traffic) for structural design, lower growth rates (less traffic) for economic appraisal sensitivity testing.
4. **Flag for investigation:** Every assumed value includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Growth rate | -5% | 15% | %/year | If outside range, flag for investigation. Negative growth is possible but uncommon. Growth > 15% is exceptional. |
| Generated traffic factor | 0% | 30% | % | If > 20%, flag as aggressive. If > 30%, reject as unrealistic. |
| Design horizon | 5 | 30 | years | If < 5 years, question project viability. If > 30 years, forecasting uncertainty is very high. |
| Current AADT | 1 | 50,000 | vpd | If > 10,000, this is no longer a rural road -- consider urban/peri-urban methods. |
| Screening BCR | 0 | No limit | ratio | If < 0.5, project is unlikely to be economically viable. If > 5.0, check input assumptions. |

### 4.2 Consistency Checks

- **Growth rate vs historical trend:** If available, compare the assumed growth rate with the historical traffic trend from the last 5-10 years. A significant divergence should be explained.
- **Generated traffic vs road type:** Generated traffic should only be applied when the road surface is being upgraded. Rehabilitation of an existing paved road should not include generated traffic.
- **Design horizon vs road class:** The design horizon should be consistent with the road class and surface type (20 years for paved, 10 years for gravel).

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific growth rates or thresholds | SENIOR REVIEW -- No country module for [jurisdiction]. Using generic growth rates. Verify with local traffic data. |
| No traffic data available | Cannot establish baseline AADT | SENIOR REVIEW -- No traffic count data. Surrogate data from comparable corridor used. Commission traffic survey before proceeding to detailed design. |
| Very low traffic (AADT < 50) | Economic justification may be difficult | NOTE -- AADT below 50 vpd. Economic analysis may not justify investment. Consider social/access criteria (Skill #59 MCA). |
| Growth rate > 10% | Unusually high growth | NOTE -- Growth rate exceeds 10%. Verify data source and consider sensitivity analysis with lower rate. |
| Declining traffic | Unusual -- investigate cause | NOTE -- Negative growth rate applied. Verify this reflects actual trend (e.g., mine closure, route diversion) and is not a data error. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Current AADT | number | vpd | Yes | Skill #2 | Baseline annual average daily traffic |
| Growth rate | number | %/year | Recommended | Skill #6 | Annual traffic growth rate |
| Project type | text | -- | Yes | User | New road, upgrade, rehabilitation |
| Road length | number | km | Recommended | User | Required for cost estimation and BCR screening |
| Estimated project cost | number | currency | Optional | Skill #50 | For economic screening BCR calculation |
| Road condition | text | -- | Optional | Skill #56 | Current road condition for rehabilitation assessment |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| demand_estimate | number | vpd | Skill #65, design team | Future AADT at design year including generated traffic |
| growth_scenario | object | -- | Skill #65 | Low/medium/high traffic growth scenarios |
| economic_screening | object | -- | Project justification | Preliminary BCR indication and recommendation |
| route_assessment | text | -- | Project justification | Qualitative assessment of route viability and connectivity value |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific transport planning context | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the Uganda module for UNRA/MoWT projects. If no module exists, flag and proceed with universal methods.

### Step 2: Determine Project Type
Classify as new road, upgrade (surface improvement), rehabilitation (same surface), or missing link (bridge/connectivity). This determines whether generated traffic applies and what demand indicators are most relevant.

### Step 3: Establish Baseline Traffic
Obtain current AADT from Skill #2 output or available traffic data. If no data exists, use surrogate data from comparable corridors and flag for investigation.

### Step 4: Estimate Future Demand
Apply compound growth formula using growth rate from Skill #6. For upgrades, add generated traffic factor. For multiple route options, assess diverted traffic qualitatively.

### Step 5: Assess Route and Connectivity
Identify alternative routes, compare lengths and conditions, assess connectivity improvement value. For missing link projects, describe the network benefit.

### Step 6: Screen Economic Viability
Calculate screening BCR using estimated VOC savings and project cost. If BCR > 1.0, recommend detailed appraisal (Skill #65). If BCR < 1.0, flag for MCA approach (Skill #59).

### Step 7: Run Validation
Apply all checks from Section 4 (range checks, consistency checks, country module checks).

### Step 8: Produce Output
Format per Section 8. Include demand estimate, route assessment, economic screening result, and any escalation flags.

---

## 8. Output Format

### Output Template

```
============================================================
TRANSPORT PLANNING -- DEMAND ASSESSMENT -- [Project/Road Name]
Country/Jurisdiction: [country]
Standard: [Applicable planning guidance -- from country module]
Date: [YYYY-MM-DD]
============================================================

PROJECT TYPE
------------
Type: [New road / Upgrade / Rehabilitation / Missing link]
Length: [km]
Current surface: [Gravel / Paved / Earth]
Proposed improvement: [description]

BASELINE TRAFFIC
----------------
Current AADT: [vpd] (Source: [Skill #2 / existing data / surrogate])
Vehicle composition: [if available]
Seasonal variation: [if significant]

DEMAND ESTIMATE
---------------
Growth rate: [%/year] (Source: [Skill #6 / assumed])
Design horizon: [years]
Future AADT (normal traffic): [vpd]
Generated traffic factor: [%] (applicable: yes/no)
Future AADT (total): [vpd]

ROUTE ASSESSMENT
----------------
Alternative routes: [description or "none identified"]
Connectivity improvement: [description]
Diverted traffic potential: [qualitative assessment]

ECONOMIC SCREENING
------------------
Estimated project cost: [amount] (Source: [Skill #50 / assumed])
Estimated annual VOC savings: [amount or "not calculated"]
Screening BCR: [ratio or "insufficient data"]
Recommendation: [Proceed to detailed appraisal / Consider MCA / Insufficient data]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[Planning guidance and data sources cited]

============================================================
SCREENING-LEVEL ASSESSMENT -- FOR PROFESSIONAL REVIEW
This output is a preliminary demand and viability screening.
Detailed economic appraisal (Skill #65) required before
investment decision.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Full four-step transport model (trip generation, distribution, modal split, assignment). Urban transport planning. Detailed economic appraisal (use Skill #65). Public transport planning. Freight logistics modelling.
- **Simplifications:** Growth-factor method assumes stable origin-destination patterns. Generated traffic factor is empirical, not modelled. Economic screening is order-of-magnitude, not discounted cash flow.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia (East African growth rates and planning frameworks differ)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with growth-factor demand estimation, screening-level BCR, route assessment framework. |
