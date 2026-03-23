---
name: "tara-integration"
description: "Use when connecting TARA (Transport Appraisal and Road Assessment) data with OpenEng design skills. Maps data flows for three key pipelines: traffic forecast to ESA calculation (Skills #1-6), road condition to maintenance intervention (Skills #56-57), and cost estimate to economic appraisal (Skills #50-53). Provides input/output format specifications so the agent can pipe data between TARA and design skills. Load after Skill #64 (Coordination Meta-Skill) for full workflow context."
---

# TARA Integration

> **Skill ID:** 65
> **Domain:** Integration
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:**
> **Country Modules:** Uganda

## Purpose

Enable data exchange between the TARA (Transport Appraisal and Road Assessment) appraisal system and OpenEng design skills. This skill is not a TARA user manual -- it is a data flow specification that allows the agent to pipe data between TARA outputs and design skill inputs, and vice versa. It covers three key pipelines: traffic (TARA to design), condition (design to TARA), and cost (design to TARA).

## When to Use This Skill

- **Use when:** TARA traffic forecast data is available and needs to be used for pavement design; road condition data from OpenEng skills needs to be formatted for TARA economic analysis; cost estimates from OpenEng skills need to be imported into TARA for economic appraisal; economic ranking data from TARA is needed for Skill #59 prioritization.
- **Do not use when:** The task does not involve TARA or economic appraisal; the user needs general multi-skill coordination (use Skill #64 instead); the task involves only single-skill calculations with no TARA connection.
- **Prerequisite skills:** Skill #64 (Coordination Meta-Skill) for overall workflow context. Domain skills depend on the pipeline: Traffic pipeline requires Skills #5 and #6; Condition pipeline requires Skills #56 and #57; Cost pipeline requires Skills #50-53.

---

## 1. Data Flow Concepts (Universal)

### 1.1 Key Concepts

**TARA Overview:**
TARA (Transport Appraisal and Road Assessment) is a transport appraisal tool used for economic analysis of road investments. It implements HDM-4 (Highway Development and Management) and RED (Roads Economic Decision) methodology to produce economic indicators:

- **NPV (Net Present Value):** Present value of benefits minus costs. Positive NPV = economically justified.
- **BCR (Benefit-Cost Ratio):** Ratio of discounted benefits to discounted costs. BCR > 1.0 = economically justified.
- **EIRR (Economic Internal Rate of Return):** Discount rate at which NPV = 0. EIRR > opportunity cost of capital = economically justified.

TARA's primary benefit measure is **vehicle operating cost (VOC) savings** from improved road condition (lower IRI), supplemented by time savings and accident cost reductions.

**Three Key Data Flow Pipelines:**

1. **Traffic Pipeline (TARA -> Design):** TARA provides traffic forecasts with growth rates. OpenEng Skills #6 and #5 convert these into cumulative design ESAs for pavement design (Skills #21-23).

2. **Condition Pipeline (Design -> TARA, bidirectional):** OpenEng Skill #56 produces IRI/VCI condition data. This feeds into TARA's "with/without project" comparison. TARA produces NPV/BCR that feed back into Skill #59 for economic prioritization.

3. **Cost Pipeline (Design -> TARA):** OpenEng Skills #50-53 produce cost estimates (capital, maintenance, periodic). These feed into TARA's cost stream for economic comparison.

### 1.2 Data Format Specifications

**Traffic data formats:**

| Parameter | TARA Format | OpenEng Format | Conversion |
|-----------|------------|----------------|------------|
| Traffic volume | AADT by vehicle class, annual | AADT (Skill #2 output) | Direct -- map vehicle classes |
| Growth rate | % per annum by class | % per annum (Skill #6 input/output) | Direct |
| Vehicle classes | TARA vehicle categories | MoWT 8-class system (Skill #3) | Mapping required -- see Section 7 |
| Forecast horizon | Years from base year | Design period in years (Skill #13) | Align analysis period with design life |

**Condition data formats:**

| Parameter | OpenEng Format | TARA Format | Conversion |
|-----------|---------------|-------------|------------|
| Roughness | IRI in m/km (Skill #56) | IRI in m/km | Direct -- same unit |
| Condition category | Good/Fair/Poor/Very Poor (Skill #56) | TARA condition class | Map to TARA categories |
| Distress | Type, severity, extent (Skill #56) | Cracking %, rut depth mm | Extract relevant distress measures |
| Remaining life | Years (Skill #58) | Years | Direct |

**Cost data formats:**

| Parameter | OpenEng Format | TARA Format | Conversion |
|-----------|---------------|-------------|------------|
| Project cost | Total UGX (Skill #50) | Capital cost in analysis currency | Currency conversion if needed |
| Maintenance cost | Treatment cost UGX/km (Skill #57) | Annual recurrent cost | Annualize periodic treatments |
| Cost components | BoQ categories (Skill #51) | Capital/recurrent/maintenance split | Map BoQ to TARA cost categories |

### 1.3 Figures & Diagrams

**Pipeline flow diagram (conceptual):**

```
TRAFFIC PIPELINE:
  TARA traffic forecast -> Skill #6 (growth rates) -> Skill #5 (ESA) -> Skills #21-23 (pavement design)

CONDITION PIPELINE:
  Skill #56 (condition) -> Skill #57 (maintenance) -> TARA (economic appraisal) -> Skill #59 (prioritization)

COST PIPELINE:
  Skills #50-53 (cost) -> TARA (economic appraisal) -> NPV/BCR output
```

The full data flow specification is in `tables/tara_data_flows.json`.

---

## 2. Data Flow Resolution (Universal)

### 2.1 Decision Logic

```
Step 1: Identify the data flow direction
  ├── TARA data available for design input -> Traffic Pipeline (Section 7, Step 2)
  ├── Design outputs needed for TARA -> Condition or Cost Pipeline (Section 7, Steps 3-4)
  └── Both directions -> Run applicable pipelines in sequence

Step 2: For TARA-to-design (Traffic Pipeline):
  a. Extract TARA traffic forecast (AADT by class, growth rates)
  b. Map TARA vehicle classes to MoWT/OpenEng classes (Skill #3)
  c. Apply growth rates via Skill #6
  d. Calculate design ESA via Skill #5
  e. Feed ESA to pavement design skills (#21-23)

Step 3: For design-to-TARA (Condition Pipeline):
  a. Run Skill #56 condition assessment -> IRI, VCI, distress
  b. Run Skill #57 maintenance planning -> treatment, cost
  c. Format condition data for TARA with/without project comparison
  d. TARA produces NPV/BCR
  e. Feed economic indicators to Skill #59 if prioritization needed

Step 4: For design-to-TARA (Cost Pipeline):
  a. Run cost chain: Skill #51 -> #52/#53 -> #50
  b. Map BoQ categories to TARA cost structure (capital/recurrent/maintenance)
  c. Handle currency conversion and price year alignment
  d. Feed total project cost to TARA
```

### 2.2 Professional Judgment (Universal)

- **Cumulative vs annual ESA:** TARA often works with annual traffic; Skill #5 produces cumulative ESA over the design period. Always verify which form is required and convert explicitly.
- **Analysis period alignment:** TARA typically uses a 20-year analysis period for paved roads. Ensure the design life from Skill #13 aligns with the TARA analysis period. If they differ, document the discrepancy.
- **VOC-based benefits dominate:** TARA's primary economic benefit is VOC savings from IRI improvement. Small IRI improvements (e.g., from IRI 4 to IRI 3) may not produce sufficient BCR > 1.0 to justify investment. This does not mean the road should not be maintained -- it means the economic justification relies on other factors.
- **Discount rate matters significantly:** At 12% (Uganda standard), only near-term benefits contribute meaningfully to NPV. Long design lives (>20 years) contribute diminishing marginal NPV.

### 2.3 Common Errors

1. **Using cumulative ESA when TARA expects annual ESA (or vice versa).** Skill #5 outputs cumulative ESA for pavement design. TARA may need annual ESA for deterioration modelling. Always check the direction and convert.
2. **Mixing currency units (USD vs UGX) in cost data.** TARA may use either currency. Skill #50 produces costs in UGX. Always specify the currency and conversion rate.
3. **Not aligning analysis period with design life.** If TARA uses 20-year analysis but the pavement design life is 15 years, the cost stream must include a future rehabilitation cost within the analysis period.
4. **Ignoring TARA's vehicle class definitions when mapping.** TARA vehicle classes may not align exactly with MoWT classes (Skill #3). A systematic mapping table is required to avoid misclassification.
5. **Double-counting contingencies.** Skill #50 includes physical and price contingency. TARA may apply its own inflation/contingency. Do not apply both.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Discount rate | 12% | Uganda, GoU funding | ASSUMED: 12% discount rate per GoU standard practice | Government of Uganda standard opportunity cost of capital |
| Analysis period | 20 years (paved), 15 years (gravel) | No period specified | ASSUMED: 20-year analysis period for paved road | Standard TARA/HDM-4 analysis period |
| Currency | UGX | Uganda project | ASSUMED: Uganda Shillings | Primary currency for Uganda projects |
| Price year | Current year | No base year specified | ASSUMED: Current year prices | Costs from Skills #50-53 are in current prices |

### Default Behaviour Rules

1. **Always state the discount rate and analysis period explicitly.** These parameters significantly affect economic indicators.
2. **Never silently convert currencies.** If TARA requires USD and OpenEng outputs UGX, flag the conversion and state the exchange rate used.
3. **Flag data format mismatches.** If TARA vehicle classes do not map cleanly to MoWT classes, document the mapping and any approximations.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| AADT | 10 | 50,000 | vpd | If <50 vpd, economic justification unlikely for paved road |
| Growth rate | 0 | 15 | % p.a. | If >15%, verify source -- may indicate error |
| IRI (paved) | 1.0 | 20.0 | m/km | If >16, road may be impassable |
| BCR | 0.1 | 20.0 | ratio | If >10, verify inputs -- may indicate error |
| Discount rate | 3 | 15 | % | If outside range, verify with project economist |

### 4.2 Consistency Checks

- **Traffic growth consistency:** TARA growth rate should be consistent with Skill #6 output. If they differ by >2 percentage points, flag and reconcile.
- **Cost consistency:** Total project cost from Skill #50 should match the sum fed to TARA. Any difference indicates a mapping error.
- **Analysis period vs design life:** Should be equal or TARA analysis period should be longer, with residual value calculation for remaining design life.

### 4.3 Standards Compliance

Economic analysis must follow the project's appraisal guidelines (GoU Treasury, World Bank, AfDB). The discount rate and economic methodology are dictated by the funding source, not by OpenEng.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| TARA vehicle classes cannot be mapped to MoWT classes | Classification mismatch | SENIOR REVIEW -- Provide TARA class definitions for manual mapping |
| BCR < 1.0 but project is politically mandated | Economic justification fails | SENIOR REVIEW -- Document BCR result; consider non-economic justification factors |
| IRI data unavailable for existing road | Cannot populate TARA condition baseline | SENIOR REVIEW -- Use VCI-to-IRI approximation from Skill #56, flagged as estimate |
| Currency conversion rate disputed | Exchange rate affects economic analysis | SENIOR REVIEW -- Use Bank of Uganda official rate; document date of rate |

### 5.2 Escalation Behaviour

- Present the data flow mapping even if escalation flags are raised.
- Provide the best available data with clear assumption flags.
- Do not suppress economic indicators that show unfavourable results -- this is a key output for decision-makers.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| TARA traffic data | object | -- | Conditional | External (TARA) | AADT by class, growth rates (for Traffic Pipeline) |
| TARA analysis parameters | object | -- | Conditional | External (TARA) | Discount rate, analysis period (for all pipelines) |
| Condition data | object | -- | Conditional | Skill #56 | IRI, VCI, distress (for Condition Pipeline) |
| Treatment data | object | -- | Conditional | Skill #57 | Intervention type, cost (for Condition Pipeline) |
| Cost estimate | object | -- | Conditional | Skill #50 | Total estimate, cost per km (for Cost Pipeline) |
| BoQ | object | -- | Optional | Skill #51 | Itemized costs for category mapping |
| Country/jurisdiction | text | -- | Yes | User | For country-specific parameters |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Design ESA | number | ESA | Skills #21-23 | Cumulative ESA from TARA traffic (Traffic Pipeline) |
| TARA condition package | object | -- | TARA (external) | Formatted IRI/condition data for TARA import |
| TARA cost package | object | -- | TARA (external) | Formatted project costs for TARA import |
| Economic indicators | object | -- | Skill #59 | NPV, BCR, EIRR from TARA output for prioritization |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific TARA parameters and examples | Markdown |
| `tables/tara_data_flows.json` | Data flow specifications for all three pipelines | JSON |

---

## 7. Procedure

### Step 1: Identify Pipeline Direction
Determine which pipeline(s) are needed based on the task:
- TARA data available for design -> Traffic Pipeline (Step 2)
- Design outputs for TARA -> Condition Pipeline (Step 3) and/or Cost Pipeline (Step 4)

### Step 2: Traffic Pipeline (TARA -> Design)

**2.1** Extract TARA traffic forecast:
- Base year AADT by vehicle class
- Growth rates (% per annum) by class or overall
- Forecast horizon

**2.2** Map TARA vehicle classes to MoWT classes:
- Use Skill #3 (Vehicle Classification) Uganda module for the MoWT 8-class system
- Create a mapping table: TARA class -> MoWT class
- Flag any classes that do not map cleanly

**2.3** Apply growth rates via Skill #6:
- Input: base year AADT, growth rate from TARA
- Output: design year AADT, growth scenario range
- Include generated traffic factor if surface type is changing (e.g., gravel to paved: 10-20%)

**2.4** Calculate design ESA via Skill #5:
- Input: AADT by class, VDF (from Skill #4 or defaults), growth rate, design period
- Output: cumulative design ESA, traffic class
- **Critical:** Skill #5 produces cumulative ESA for the full design period. If TARA needs annual ESA, divide by design period (approximate) or use yearly calculation.

**2.5** Feed ESA to pavement design:
- Output ESA to Skills #21 (MoWT Catalogue), #22 (AASHTO 93), or #23 (ORN 31) as appropriate.

### Step 3: Condition Pipeline (Design <-> TARA)

**3.1** Run Skill #56 condition assessment:
- Output: IRI (m/km), VCI (0-100), condition rating, distress summary
- IRI is the primary input for TARA

**3.2** Run Skill #57 maintenance planning:
- Output: intervention type, treatment details, treatment cost
- Treatment cost feeds into TARA as the "with-project" maintenance cost

**3.3** Format for TARA:
- **With-project scenario:** IRI after treatment (reduced to post-rehabilitation level, typically IRI 2-3 for overlay), annual maintenance cost
- **Without-project scenario:** Projected IRI deterioration without intervention (use deterioration model or assume 0.5-1.0 m/km per year for unsealed surfaces)
- **Benefits:** VOC savings = VOC(without-project IRI) - VOC(with-project IRI), summed over analysis period

**3.4** Receive TARA output:
- NPV, BCR, EIRR for the project
- Feed NPV/BCR to Skill #59 for economic ranking criterion

### Step 4: Cost Pipeline (Design -> TARA)

**4.1** Run cost estimation chain:
- Skill #51 (BoQ) -> Skill #52/#53 (unit rates) -> Skill #50 (estimate)

**4.2** Map to TARA cost structure:
- **Capital costs:** Construction total from Skill #50 (minus price contingency if TARA applies its own)
- **Recurrent costs:** Annual routine maintenance from Skill #57
- **Periodic costs:** Periodic maintenance interventions from Skill #57 (reseals, overlays at specified intervals)

**4.3** Handle currency and price year:
- State currency (UGX or USD) and conversion rate if applicable
- State base price year for all costs
- Do not apply double contingency (Skill #50 includes contingency; TARA may add its own)

**4.4** Feed to TARA:
- Total capital cost
- Annual recurrent maintenance cost stream
- Periodic maintenance cost schedule (year and amount)

---

## 8. Output Format

### Output Template

```
============================================================
TARA INTEGRATION -- Data Flow Report
Pipeline: [Traffic / Condition / Cost]
Direction: [TARA to Design / Design to TARA / Bidirectional]
Country/Jurisdiction: [country]
Date: [YYYY-MM-DD]
============================================================

PIPELINE SUMMARY
----------------
Pipeline type: [traffic / condition / cost]
Skills involved: [list with IDs]
Data source: [TARA output / OpenEng design output]

DATA MAPPING
------------
[Source field] -> [Target field] ([conversion notes])
[Source field] -> [Target field] ([conversion notes])

FORMATTED OUTPUT
----------------
[Pipeline-specific formatted data ready for the target system]

ASSUMPTIONS & DEFAULTS
---------------------
Discount rate: [X%] -- [source]
Analysis period: [X years] -- [source]
Currency: [XXX] -- [conversion rate if applicable]
⚠️ [Any assumed values]

VALIDATION
----------
[Range checks -- PASS or FAIL]
[Consistency checks -- PASS or FAIL]

ESCALATION FLAGS
---------------
[Any issues, or "None"]

============================================================
DATA FLOW MAPPING -- FOR PROFESSIONAL REVIEW
Currency, discount rate, and analysis period must be
confirmed by project economist before use in appraisal.
============================================================
```

---

## 9. Worked Examples

### Example 1: Traffic Pipeline -- TARA Forecast to Design ESA (Uganda)

**Given:**
- TARA provides: base year AADT = 800 vpd, 20% heavy vehicles, 4% annual growth rate
- Design period: 20 years (from Skill #13)
- Road type: trunk road, paved upgrade
- Uganda, MoWT standards

**Solution:**

**Step 2.1:** Extract TARA data: AADT = 800, HV% = 20%, growth = 4%/year.

**Step 2.2:** Map vehicle classes. TARA classes mapped to MoWT:
- Cars/pickups -> MoWT Class 1-3
- Buses -> MoWT Class 4-5
- Medium trucks -> MoWT Class 6
- Heavy trucks/trailers -> MoWT Class 7-8
- Heavy vehicles (20% of 800) = 160 vpd

**Step 2.3:** Apply growth via Skill #6:
- Design year AADT = 800 x (1.04)^20 = 800 x 2.191 = 1,753 vpd
- Include generated traffic factor 15% (gravel-to-paved): adjusted = 1,753 x 1.15 = 2,016 vpd

**Step 2.4:** Calculate ESA via Skill #5:
- Using MoWT methodology with VDF per class
- Cumulative ESA over 20 years at 4% growth with AADT 800 (base)
- Approximate cumulative ESA: 5-8 million ESA (depends on specific VDF values)
- Traffic class: T5-T6 (MoWT classification)

**Step 2.5:** Feed to pavement design:
- Skill #21: Use T5/T6 traffic class with subgrade class from Skill #10
- Select from MoWT catalogue Chart D3-D5 (depending on wet/dry classification)

**Result:** TARA traffic forecast successfully converted to cumulative design ESA via Skills #6 and #5. Design ESA ~ 5-8 million, Traffic Class T5-T6. Ready for pavement design.

---

### Example 2: Condition Pipeline -- Road Condition to TARA Economic Analysis (Uganda)

**Given:**
- 30 km trunk road section, paved
- Skill #56 output: IRI = 9.5 m/km (Very Poor), VCI = 25 (Poor)
- Skill #57 output: rehabilitation required (overlay 80mm AC), cost estimate 400M UGX/km
- Post-rehabilitation IRI expected: 2.5 m/km
- Without-project: IRI deterioration 0.8 m/km/year (capped at 16 m/km)
- Discount rate: 12%, Analysis period: 20 years

**Solution:**

**Step 3.1:** Condition data from Skill #56:
- Current IRI: 9.5 m/km -- Very Poor (paved threshold >8)
- VCI: 25 -- confirms Poor to Very Poor rating
- Conservative rating: Very Poor

**Step 3.2:** Treatment from Skill #57:
- Rehabilitation triggered (IRI > 6 threshold)
- Treatment: 80mm AC overlay after pre-overlay repairs
- Cost: 400M UGX/km x 30 km = 12,000M UGX (12 billion UGX) capital cost
- Annual routine maintenance post-rehab: ~5M UGX/km/year

**Step 3.3:** Format for TARA:
- **Without-project IRI trajectory:** Year 0: 9.5 -> Year 1: 10.3 -> ... -> Year 8: 16.0 (cap) -> remains 16.0
- **With-project IRI trajectory:** Year 0: 2.5 (post-overlay) -> Year 1: 2.7 -> ... -> Year 20: 5.5 (assuming 0.15 m/km/year deterioration on new surface)
- **VOC savings:** At IRI 9.5, VOC is approximately $0.35/veh-km higher than at IRI 2.5 (approximate HDM-4 relationship for medium truck)
- **Annual benefit:** VOC savings x AADT x 365 x 30 km

**Step 3.4:** Expected TARA output:
- With AADT ~1,500 vpd and significant IRI improvement (9.5 -> 2.5), BCR likely > 2.0
- NPV likely positive at 12% discount rate given the large IRI improvement

**Result:** Condition data formatted for TARA before/after comparison. Large IRI improvement (9.5 to 2.5 m/km) drives strong economic justification. VOC savings are the primary benefit. BCR expected > 2.0.

---

## 10. Limitations & Future Work

- **Not covered:** TARA internal model calibration; HDM-4 deterioration model parameters; detailed VOC calculation methodology (TARA handles this internally).
- **Simplifications:** VOC savings described conceptually -- actual calculation requires TARA's internal models. IRI deterioration rates are approximate -- actual rates depend on traffic, climate, and pavement type.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya (for KURA/KeNHA TARA usage), Tanzania (for TANROADS), Regional (for East African Development Bank comparisons)
- **Future work:** Direct API integration with TARA if available; RED model parameter mapping for simplified economic analysis without TARA; automated sensitivity analysis (growth rate, discount rate, cost variations).

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft -- 3 pipelines (traffic, condition, cost), data flow specifications |
