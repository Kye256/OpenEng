# Engineer's Estimate -- Uganda Module

> **Parent Skill:** Skill #50 -- Engineer's Estimate
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT guidelines; UNRA project appraisal; World Bank cost estimation guidelines
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Cost Estimation Practice | Various | Estimate preparation guidelines | Current |
| UNRA Project Appraisal Guidelines | Various | Cost estimate requirements for project approval | Current |
| World Bank Guidance on Project Cost Estimation | 2017 | Cost tables for IDA-funded projects | Current |
| FIDIC Red Book (1999) | 1999 | Sub-Clause 12.3 (evaluation), 13.8 (price adjustment) | Current |

### M.1.2 Institutional Context

**UNRA:** Requires engineer's estimates for all trunk road projects as part of the procurement process. The estimate serves as the benchmark for bid evaluation (bids outside +/- 15-20% of the engineer's estimate may trigger further review).

**MoWT:** Oversees the national roads programme. Cost estimates for donor-funded projects must comply with both MoWT and donor requirements (World Bank, AfDB, EU, JICA).

**World Bank / AfDB:** Require cost estimates in a standard format showing: base cost, physical contingency, price contingency, taxes, and foreign/local currency split. The estimate forms part of the Project Appraisal Document (PAD).

### M.1.3 Standard Philosophy

Uganda does not have a published standard cost estimation manual. Practice follows general international norms with country-specific adjustments for tax, currency, and construction market conditions. UNRA maintains internal records of contract award prices that serve as benchmarks, but these are not publicly available.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Contingency Percentages:** See `tables/contingency_percentages.json` for standard ranges.

### M.2.2 Country-Specific Formulas

No country-specific formulas beyond the universal methodology. Uganda-specific parameters (VAT rate, inflation, exchange rate) are applied in the standard formula.

### M.2.3 Classification System

Not applicable. Cost estimation methodology does not depend on road classification. Rates may differ by road type (trunk vs district) due to scale and access, but the methodology is the same.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda Cost Estimation Context:**

1. **Currency:** UGX (Uganda Shillings) is the primary currency. For donor-funded projects, the estimate includes a foreign currency component (typically USD) for imported items: bitumen, steel, heavy equipment parts, specialist materials. A typical split is 60-70% local (UGX) and 30-40% foreign (USD), depending on project scope.

2. **VAT:** 18% VAT applies to all construction contracts in Uganda. Some donor-funded projects have VAT exemption agreements -- always verify the project's tax status. If VAT-exempt, the estimate should show "VAT: Exempt per [agreement]" rather than omitting the line entirely.

3. **Physical contingency:** Typical ranges per project stage:
   - Feasibility: 20-25%
   - Preliminary design: 15-20%
   - Detailed design: 8-12% (10% is the most common default)
   - Pre-tender (engineer's estimate): 5-10% (7% typical)

4. **Price contingency:** Based on Bank of Uganda construction cost indices. Historical annual construction inflation in Uganda has ranged from 5-12%, with 5-8% being typical in stable periods. For multi-year contracts, apply compound inflation to each year's expenditure profile.

5. **Expenditure profile:** For a typical 2-year road contract in Uganda:
   - Year 1: 40-45% of expenditure (mobilisation, earthworks, drainage)
   - Year 2: 55-60% of expenditure (pavement, structures, finishing)
   For a 3-year contract, a typical profile is 25%/45%/30%.

### M.3.2 Professional Judgment (Country-Specific)

- **Regional cost variation:** Construction costs in Northern and Eastern Uganda are typically 15-25% higher than in the Kampala corridor due to: longer material transport distances, limited local supplier base, security considerations in some areas, and lower contractor competition.
- **Seasonal pricing:** Bitumen and fuel prices are USD-linked and fluctuate with exchange rate movements. Cement prices are more stable (domestic production). Aggregate costs depend on quarry proximity.
- **Donor requirements:** World Bank requires cost estimates in a standard table format with separate columns for base cost, contingencies, and taxes. The total must be expressed in both UGX and USD. AfDB has a similar but slightly different format.
- **Market benchmarks:** Typical cost per km for trunk road projects in Uganda (PLACEHOLDER ranges):
  - Gravel road upgrade to paved (DBST): USD 250,000 - 400,000/km
  - Asphalt concrete new construction: USD 400,000 - 700,000/km
  - Rehabilitation (overlay + drainage): USD 100,000 - 250,000/km
  These are approximate ranges for methodology demonstration only.

### M.3.3 Common Errors (Country-Specific)

1. **Ignoring exchange rate risk:** For multi-year contracts with significant foreign currency component, exchange rate movements can change the total estimate by 10-20%. Note the exchange rate used and flag the risk.
2. **Using old benchmark rates:** Uganda's construction market changes rapidly. Rates from contracts awarded 2+ years ago may be significantly outdated.
3. **Omitting advance payment interest:** Under FIDIC, the Contractor may receive an advance payment (10-15% of contract value), which is repaid through deductions from interim certificates. The cost of financing this advance is built into the Contractor's rates but should be considered in the estimate.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| VAT rate | 18% | Standard rate | ASSUMED: 18% VAT. Verify project tax status. | Uganda Revenue Authority standard rate |
| Physical contingency (detailed design) | 10% | Default stage | ASSUMED: 10% physical contingency for detailed design. Adjust for project risk profile. | UNRA standard practice |
| Annual inflation | 7% | Construction cost | ASSUMED: 7% annual construction inflation. Use current Bank of Uganda forecast. | Historical average 5-8% |
| Exchange rate | UGX 3,700 = USD 1 | Illustrative | ASSUMED: Illustrative exchange rate. Use current Bank of Uganda rate. | Approximate mid-2024 |
| Local/foreign split | 65%/35% | Trunk road | ASSUMED: 65% local, 35% foreign currency. Adjust based on project scope. | Typical for paved road projects |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Cost per km (new paved) | 250,000 | 700,000 | USD/km | UNRA benchmarks | Flag: outside typical Uganda range |
| Cost per km (rehabilitation) | 80,000 | 300,000 | USD/km | UNRA benchmarks | Flag: outside typical Uganda range |
| VAT rate | 0 | 18 | % | URA | Verify if VAT-exempt project |
| Physical contingency | 5 | 25 | % | Practice | Flag if outside standard range for stage |

### M.5.2 Standards Compliance Checks

- **Check:** Estimate includes PLACEHOLDER warning prominently
- **Standard:** Skill requirement
- **Pass condition:** PLACEHOLDER disclaimer appears in header and footer
- **Fail action:** Add PLACEHOLDER disclaimer

- **Check:** Both UGX and USD amounts shown for donor-funded projects
- **Standard:** World Bank / AfDB requirements
- **Pass condition:** Dual currency presentation with exchange rate stated
- **Fail action:** Add USD conversion column

### M.5.3 Departures / Relaxations Process

No formal departures process for cost estimation. However, if the estimate deviates significantly from UNRA benchmarks, a written justification should be provided documenting the reasons (e.g., unusual terrain, remote location, complex structures).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Cost/km >USD 500,000 for gravel-to-paved upgrade | Above typical range | SENIOR REVIEW -- High cost per km. Verify scope, terrain, and structure costs. |
| Foreign currency component >50% | Unusual split | SENIOR REVIEW -- High foreign currency proportion. Verify import content. |
| PLACEHOLDER rates used for budgeting | Rates not current | PLACEHOLDER RATES -- Replace all rates with current market data before budgetary decisions. |

---

## M.7 Worked Example -- Uganda

### Example: Engineer's Estimate for 15 km Rural Trunk Road Upgrade

**Source:** Illustrative example. ALL AMOUNTS ARE PLACEHOLDER.

**Given:**
- 15 km rural trunk road upgrade (gravel to paved DBST)
- BoQ from Skill #51 worked example (Bills 1-4 and 6-7, no bridges)
- PLACEHOLDER rates from Skill #53
- Project stage: Detailed design
- Contract duration: 2 years
- Inflation: 7% per annum (illustrative)
- VAT: 18%
- Exchange rate: UGX 3,700 = USD 1 (illustrative)
- Expenditure profile: Year 1 = 40%, Year 2 = 60%

**Solution:**

**Step 1: Bill Subtotals (PLACEHOLDER)**

| Bill | Description | Subtotal (UGX, millions) | Subtotal (USD, thousands) |
|------|-------------|--------------------------|---------------------------|
| 1 | Preliminary & General | 1,000 | 270 |
| 2 | Earthworks | 2,500 | 676 |
| 3 | Pavement Layers | 4,000 | 1,081 |
| 4 | Drainage | 1,500 | 405 |
| 5 | Structures | 0 | 0 |
| 6 | Miscellaneous | 500 | 135 |
| 7 | Dayworks | 500 | 135 |
| | **Total Direct Cost** | **10,000** | **2,703** |

**Step 2: Physical Contingency**
- Stage: Detailed design -> 10% (from contingency_percentages.json)
- Physical contingency = UGX 10,000M x 10% = UGX 1,000M (USD 270K)

**Step 3: Price Contingency**
- Contract duration: 2 years, inflation: 7%/year
- Year 1 expenditure (40%): UGX 4,000M x 0% = UGX 0M (base year)
- Year 2 expenditure (60%): UGX 6,000M x 7% = UGX 420M
- Total price contingency = UGX 420M (USD 114K)

**Step 4: Subtotal before VAT**
- UGX 10,000M + 1,000M + 420M = UGX 11,420M (USD 3,086K)

**Step 5: VAT**
- VAT = UGX 11,420M x 18% = UGX 2,056M (USD 556K)

**Step 6: Total Estimate**
- Total = UGX 11,420M + 2,056M = **UGX 13,476M** (**USD 3,642K**)

**Step 7: Cost per km**
- UGX 13,476M / 15 km = UGX 898M/km (USD 243K/km)
- Benchmark: USD 250-400K/km for gravel-to-paved in Uganda
- Result is at the low end of range (consistent with PLACEHOLDER rates being illustrative)

**ALL AMOUNTS ARE PLACEHOLDER -- FOR METHODOLOGY DEMONSTRATION ONLY**

**Verification:** Cost per km within the benchmark range (low end). Physical contingency at 10% appropriate for detailed design. Price contingency calculation uses compound approach applied to Year 2 only (Year 1 is base year).

---

## M.8 References

1. Bank of Uganda -- Construction Cost Indices (various years)
2. UNRA -- Internal benchmark cost data (not publicly available)
3. World Bank -- Project Appraisal Document template and cost estimation guidelines, 2017
4. FIDIC -- Conditions of Contract for Construction (Red Book), 1st Edition, 1999
5. Uganda Revenue Authority -- VAT Act (18% standard rate)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft |
