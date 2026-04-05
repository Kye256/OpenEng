---
name: "engineers-estimate"
description: "Use when preparing a preliminary or detailed cost estimate for a road project. Builds estimate from BoQ quantities (Skill #51) multiplied by unit rates (Skill #52/#53), adds contingencies by project stage, and applies price escalation. UGX primary currency, USD secondary for donor-funded projects. All rates are PLACEHOLDER -- flag for update with current market rates before use."
---

# Engineer's Estimate

> **Skill ID:** 50
> **Domain:** Cost Estimation
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda, Kenya

## Purpose

Prepare a cost estimate for a road construction or rehabilitation project by combining BoQ quantities with unit rates, adding contingencies appropriate to the project stage, and applying price escalation for multi-year contracts. This skill teaches the estimate build-up methodology -- the actual rates used are PLACEHOLDER values for demonstration only and must be replaced with current market data before any budgetary use.

## When to Use This Skill

- **Use when:** A cost estimate is needed at any project stage -- from order-of-magnitude at feasibility through to the Engineer's estimate for bid evaluation. The methodology is the same; contingency levels and rate confidence differ.
- **Do not use when:** Evaluating contractor bids (that is a commercial evaluation, not an estimate build-up). Not for life-cycle cost analysis (different methodology). Not for maintenance cost planning (different cost structure).
- **Prerequisite skills:** Skill #51 (BoQ Preparation) -- provides the quantity framework. Skill #52 (Unit Rate Analysis) -- provides rate build-up methodology. Skill #53 (Uganda/EA Unit Rate Database) -- provides PLACEHOLDER reference rates.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Estimate Types by Project Stage:**

| Stage | Estimate Type | Accuracy | Contingency Range | Purpose |
|-------|--------------|----------|-------------------|---------|
| Pre-feasibility / Feasibility | Order of magnitude | +/- 30-50% | 20-25% physical | Budget allocation, project screening |
| Preliminary design | Preliminary estimate | +/- 15-25% | 15-20% physical | Funding application, design budget |
| Detailed design | Detailed estimate | +/- 10-15% | 8-12% physical | Pre-tender cost check, procurement planning |
| Pre-tender | Engineer's estimate | +/- 5-10% | 5-10% physical | Bid evaluation benchmark |

**Estimate Build-Up Components:**

1. **Direct cost:** Sum of (BoQ quantity x unit rate) for all measured items across all Bills.
2. **Physical contingency:** Percentage allowance for quantity variations, design refinement, and unforeseen physical conditions. Decreases as design matures (see table above and `tables/contingency_percentages.json`).
3. **Price contingency:** Allowance for inflation over the contract period. Calculated from annual inflation forecast applied to the expenditure profile.
4. **Taxes:** Value Added Tax (VAT) or equivalent sales tax applicable in the project country. In Uganda, VAT is 18%.
5. **Currency conversion:** For donor-funded projects, the estimate may need to be presented in USD or EUR alongside the local currency.

**PLACEHOLDER WARNING:** All rates and amounts in this skill and its modules are illustrative. They are designed to demonstrate the methodology, not to provide current market prices. Before using any estimate for budgetary purposes, replace all PLACEHOLDER rates with current market data from contractor quotations, recent contract awards, or published cost indices.

### 1.2 Universal Formulas

**Total Estimate:**
```
Total Estimate = (Sum of BoQ amounts) x (1 + Physical Contingency %) x (1 + Price Contingency %) x (1 + VAT %)
```

Where:
- Sum of BoQ amounts = sum across all Bills of (quantity x unit rate) for each item
- Physical contingency % = from contingency table based on project stage
- Price contingency % = annual inflation rate x contract duration (simplified) or compound calculation for multi-year
- VAT % = country-specific tax rate

**Price Contingency (compound):**
```
Price Contingency = Base Cost x [(1 + annual_inflation)^years - 1]
```

For a more precise calculation, apply inflation to each year's expenditure profile separately.

**Currency Conversion:**
```
Amount (USD) = Amount (UGX) / Exchange Rate (UGX per USD)
```

Always state the exchange rate used and note that it is illustrative.

### 1.3 Figures & Diagrams

No figures required. The estimate is a tabular calculation. The contingency percentages are provided in `tables/contingency_percentages.json`.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> Identify applicable tax rate and currency

Step 2: Identify project stage
  -> Determines contingency level and estimate accuracy band
  -> See contingency_percentages.json

Step 3: Obtain BoQ from Skill #51
  -> Complete Bill of Quantities with all items and quantities

Step 4: Apply unit rates from Skill #52/#53
  -> For each BoQ item, look up or build up the unit rate
  -> All rates flagged as PLACEHOLDER

Step 5: Calculate subtotals by Bill
  -> Bill subtotal = sum of (quantity x rate) for all items in that Bill

Step 6: Calculate total direct cost
  -> Total direct = sum of all Bill subtotals

Step 7: Add physical contingency
  -> Apply percentage based on project stage (Section 1.1 table)
  -> Physical contingency = Total direct x contingency %

Step 8: Add price contingency
  -> For multi-year contracts, apply annual inflation to expenditure profile
  -> Price contingency = Total direct x [(1 + inflation)^years - 1]
  -> For single-year contracts, this may be zero or minimal

Step 9: Add VAT/taxes
  -> Apply country-specific tax rate
  -> See country module for rate and applicability

Step 10: Calculate total estimate
  -> Total = Direct + Physical contingency + Price contingency + VAT

Step 11: Currency conversion (if required)
  -> Convert to secondary currency for donor reporting
  -> State exchange rate and note it is illustrative
```

### 2.2 Professional Judgment (Universal)

- **Contingency is not profit:** Physical contingency covers genuine uncertainty in quantities and unforeseen conditions. It is not a margin for the Employer or a buffer for poor estimation.
- **Separate contingency from estimate:** Always show the base estimate and contingencies separately. This allows decision-makers to understand the confidence level.
- **Update rates, not methodology:** The methodology in this skill is stable. The rates must be updated for each project with current market data. A 2-year-old rate can be 15-30% incorrect.
- **Expenditure profile matters:** For multi-year contracts, price contingency should be applied to each year's expenditure, not to the total. Early years have less inflation impact than later years.

### 2.3 Common Errors

1. **Using PLACEHOLDER rates as budget figures:** The rates in Skill #53 are illustrative. Using them for actual budgeting will produce unreliable estimates. Always replace with current market data.
2. **Omitting price escalation on multi-year contracts:** A 3-year contract with 7% annual inflation will cost 22.5% more in the final year than in the first. Ignoring this leads to underfunding.
3. **Applying wrong contingency for project stage:** Using 5% contingency on a feasibility estimate (should be 20-25%) gives false precision. Using 25% on a detailed design estimate (should be 8-12%) inflates the budget unnecessarily.
4. **Forgetting VAT on government-funded projects:** In Uganda, VAT at 18% applies unless the project has a specific exemption. Donor-funded projects may have different VAT treatment.
5. **Double-counting contingency and dayworks:** Dayworks (Bill 7) already provides for unforeseen work at the item level. Physical contingency covers quantity variations, not additional scope. Ensure they are not duplicating the same risk.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Project stage | Detailed design | No stage specified | ASSUMED: Detailed design stage (10% physical contingency). Specify project stage for correct contingency. | Mid-range default |
| Contract duration | 2 years | No duration specified | ASSUMED: 2-year contract for price contingency calculation. Specify actual duration. | Typical for 10-20 km road |
| Annual inflation | 7% | No inflation forecast | ASSUMED: 7% annual construction inflation. Use current Bank of Uganda forecast. | Uganda typical range |
| Exchange rate | UGX 3,700 = USD 1 | No rate specified | ASSUMED: Illustrative exchange rate. Use current Bank of Uganda rate. | Approximate mid-2024 rate |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Use higher contingency when uncertain about project stage.
4. **Flag for investigation:** Every assumed rate or parameter includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Physical contingency | 3 | 30 | % | Flag: outside standard range for any project stage |
| Price contingency (annual) | 0 | 15 | % | Flag: verify inflation forecast |
| VAT/tax rate | 0 | 25 | % | Flag: verify country tax rate |
| Total estimate per km (trunk road, new) | 500,000 | 5,000,000 | USD/km | Flag: outside typical range for East Africa |
| Total estimate per km (trunk road, rehab) | 100,000 | 1,500,000 | USD/km | Flag: outside typical range for East Africa |

### 4.2 Consistency Checks

- Total estimate should be within the accuracy band for the project stage (e.g., +/- 10-15% for detailed design).
- Physical contingency percentage should match the project stage per the contingency table.
- Expenditure profile should sum to 100% of total direct cost.
- Bill subtotals should be reasonable as percentages of total (e.g., pavement typically 30-40% for new construction, earthworks 15-25%).

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific tax and cost context | SENIOR REVIEW -- No country module for [jurisdiction]. Tax rate and cost context uncertain. |
| Estimate exceeds typical per-km cost by >50% | May indicate error or unusual project scope | SENIOR REVIEW -- Estimate of [amount]/km exceeds typical range. Verify scope and rates. |
| Physical contingency >20% at detailed design | Indicates design uncertainty inappropriate for stage | SENIOR REVIEW -- High contingency at detailed design stage. Review design completeness. |
| All rates are PLACEHOLDER | Cannot use for budgeting | PLACEHOLDER RATES -- This estimate uses illustrative rates. Replace with current market data before budgetary use. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **PLACEHOLDER warning is mandatory** on every estimate output from this skill.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| project_stage | text | -- | Yes | User | Feasibility, preliminary, detailed, or pre-tender |
| bill_of_quantities | object | -- | Yes | Skill #51 (BoQ Preparation) | Complete BoQ with items, quantities, units |
| unit_rates | object | currency/unit | Yes | Skill #52/#53 (Unit Rate Analysis/Database) | Rates for each BoQ item |
| contract_duration | number | years | Yes | User/Project brief | For price contingency calculation |
| inflation_forecast | number | %/year | No | Country economic data | Annual construction cost inflation |
| exchange_rate | number | LCU/USD | No | Country central bank | For donor-funded project reporting |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| total_estimate | number | currency | Skill #47 (Procurement Planning) | Total estimate determines procurement method |
| estimate_summary | object | -- | Skill #49 (Tender Evaluation) | Bill subtotals as benchmark for bid evaluation |
| cost_per_km | number | USD/km | Project appraisal | For benchmarking against similar projects |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific cost context, VAT, currency | Markdown |
| `tables/contingency_percentages.json` | Physical and price contingency ranges by project stage | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with universal methodology.

### Step 2: Determine Project Stage
Identify the project stage from user input. This determines the contingency level and estimate accuracy band.

### Step 3: Obtain BoQ
Use the Bill of Quantities from Skill #51. Verify all items have quantities and units.

### Step 4: Apply Unit Rates
For each BoQ item, apply the unit rate from Skill #52/#53 or user-provided rates. Flag all PLACEHOLDER rates.

### Step 5: Calculate Bill Subtotals
For each Bill, sum (quantity x rate) for all items. Present subtotals.

### Step 6: Calculate Total Direct Cost
Sum all Bill subtotals. This is the base estimate before contingencies and taxes.

### Step 7: Apply Physical Contingency
Look up the appropriate percentage from `contingency_percentages.json` based on project stage. Apply to total direct cost.

### Step 8: Apply Price Contingency
For multi-year contracts, calculate price contingency using the inflation forecast and contract duration. Apply to total direct cost.

### Step 9: Apply VAT/Taxes
Apply the country-specific tax rate from the country module. In Uganda, VAT is 18%.

### Step 10: Calculate Total Estimate
Total = Direct cost + Physical contingency + Price contingency + VAT.

### Step 11: Currency Conversion (if required)
For donor-funded projects, convert total to USD (or other reporting currency) at the stated exchange rate. Note that the rate is illustrative.

### Step 12: Produce Output
Format the estimate per Section 8. Include all escalation flags, especially the PLACEHOLDER warning.

---

## 8. Output Format

### Output Template

```
============================================================
ENGINEER'S ESTIMATE -- [Project/Road Name]
Country/Jurisdiction: [country]
Project Stage: [stage]
Date: [YYYY-MM-DD]
============================================================

** PLACEHOLDER RATES -- NOT FOR BUDGETARY USE **
All rates in this estimate are illustrative. Replace with
current market data before any budgetary decisions.

ESTIMATE SUMMARY
----------------
| Bill | Description | Subtotal (UGX) | Subtotal (USD) |
|------|-------------|----------------|----------------|
| 1 | Preliminary & General | | |
| 2 | Earthworks | | |
| 3 | Pavement Layers | | |
| 4 | Drainage | | |
| 5 | Structures | | |
| 6 | Miscellaneous | | |
| 7 | Dayworks | | |
| | TOTAL DIRECT COST | | |
| | Physical Contingency ([X]%) | | |
| | Price Contingency ([X]% x [Y] years) | | |
| | VAT ([X]%) | | |
| | TOTAL ESTIMATE | | |

COST PER KILOMETRE
-------------------
[Total] / [Road length] = [cost/km] UGX ([cost/km] USD)
Benchmark: Typical range for [project type] in [country]: [range] USD/km

ASSUMPTIONS & DEFAULTS
---------------------
[All assumed values with flags]

VALIDATION
----------
[Range checks and consistency checks]

ESCALATION FLAGS
---------------
** PLACEHOLDER RATES -- Replace all rates with current market data **
[Any additional SENIOR REVIEW items]

REFERENCES
----------
[Sources for contingency percentages, tax rates, exchange rates]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

### Example 1: 15 km Rural Road Estimate -- Uganda

**Source:** Illustrative example using PLACEHOLDER rates

**Given:**
- 15 km rural trunk road upgrade, detailed design stage
- BoQ from Skill #51 (see BoQ Preparation worked example)
- PLACEHOLDER rates from Skill #53
- Contract duration: 2 years
- Inflation: 7% per annum (illustrative)
- VAT: 18%
- Exchange rate: UGX 3,700 = USD 1 (illustrative)

**Solution:** See Uganda module Section M.7 for complete worked estimate with all PLACEHOLDER amounts.

**Key result:** Total estimate approximately UGX 15-20 billion (USD 4-5 million) for a 15 km trunk road upgrade. ALL AMOUNTS ARE PLACEHOLDER -- for methodology demonstration only.

---

## 10. Limitations & Future Work

- **Not covered:** Life-cycle cost analysis, maintenance cost estimation, economic rate of return calculation. These require different methodologies.
- **Simplifications:** Price contingency uses simple compound inflation. More sophisticated methods use expenditure profiles and differentiated inflation by cost category.
- **PLACEHOLDER rates:** All rates must be replaced with current market data for actual use. The skill teaches methodology, not current pricing.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia (East African regional practice)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft |
