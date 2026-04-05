# Asset Valuation -- Kenya Module

> **Parent Skill:** Skill #58 Asset Valuation
> **Country/Jurisdiction:** Kenya
> **Standards:** IPSAS 17 (as adopted in Kenya), Kenya National Treasury Asset Management Guidelines
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| IPSAS 17 -- Property, Plant and Equipment | 2006 (amended) | Measurement, depreciation, useful life | Adopted in Kenya public sector |
| Public Finance Management Act | 2012 | Asset management provisions for national and county governments | Current |
| Kenya National Treasury Asset Management Guidelines | Current | Road asset classification, valuation methodology | Current |
| WSCM Part 3 -- Bills of Quantities | 2025 | Replacement cost rates (cross-reference Skill #50-51 Kenya modules) | Current |

**KNOWLEDGE GAP:** Kenya-specific road asset valuation methodology documentation (equivalent to Kenya BMS -- RDM 4.5/4.6/RAAM Part 4) is NOT available for this module. The Kenya Road Asset Management Manual (RAAM) covers maintenance management but detailed asset valuation procedures specific to Kenyan road agencies have not been sourced. This module applies the IPSAS 17 DRC method using Kenya-specific inputs (replacement costs, condition data) as the best available approach. Specific Kenyan road asset valuation procedures should be verified against current KeNHA/KRB practice.

### M.1.2 Institutional Context

**KeNHA (Kenya National Highways Authority):** Manages road assets for the national trunk network (Class A/B/C, approximately 22,000 km). Required to maintain asset registers with depreciated values for annual financial statements. KeNHA has condition data from annual network surveys that can support condition-based depreciation.

**KeRRA (Kenya Rural Roads Authority):** Manages road assets for rural roads (Class D/E, approximately 134,000 km). Asset register completeness varies. Limited condition data for many rural roads -- straight-line depreciation may be the only practical approach.

**KURA (Kenya Urban Roads Authority):** Manages urban road assets (approximately 9,000 km). Urban roads have higher per-km replacement costs due to utilities, drainage, and geometric complexity.

**County Governments:** Manage devolved county road assets. Many county asset registers are incomplete or use simplified methods. County road asset valuation is a developing area under devolution.

**Kenya National Treasury:** Sets public sector accounting standards including IPSAS adoption. National and county government entities are required to maintain asset registers under the Public Finance Management Act 2012.

**Kenya Roads Board (KRB):** Provides coordination for road network data that underpins asset valuation -- road inventory, condition, and classification data.

### M.1.3 Standard Philosophy

Kenya road asset valuation follows the DRC method as prescribed by IPSAS 17 for infrastructure assets with no market value. Condition-based depreciation is preferred when condition data is available (from Skill #56 Kenya module), with straight-line depreciation as a fallback. Replacement costs should use current Kenya rates from WSCM Part 3 or KeNHA/KRB rate schedules, adjusted for regional variation.

---

## M.2 Country-Specific Knowledge

**KNOWLEDGE GAP NOTICE:** Kenya-specific road asset valuation guidelines are not available as a source document for this module. The methodology below applies IPSAS 17 DRC using Kenya-specific inputs. This approach is consistent with international practice but should be verified against current KeNHA/KRB/National Treasury procedures. The gap is documented per the same pattern used for Kenya BMS in Skill #41 (bridge inspection).

### M.2.1 Design Lives by Road Class (Kenya)

| Road Class | Surface Type | Design Life (years) | Notes |
|-----------|-------------|-------------------|-------|
| Class A (Expressway/International Trunk) | Paved (AC) | 20-25 | To next major rehabilitation |
| Class B (National Trunk) | Paved (AC) | 20 | Standard assumption |
| Class C (Primary) | Paved (AC/ST) | 15-20 | Surface treatment roads shorter life |
| Class D (Secondary) | Paved (AC/ST) | 15-20 | Lower traffic may extend life |
| Class D (Secondary) | Gravel | 8-12 | Resheeting cycle |
| Class E (Minor) | Gravel | 8-10 | Often shorter due to limited maintenance |
| Class E (Minor) | Earth | 5-8 | Shortest design life |
| Urban roads (KURA) | Paved (AC) | 15-20 | Higher traffic loading, utility cuts reduce life |

### M.2.2 Replacement Costs per km (Kenya)

**CRITICAL DISCLAIMER:** All costs below are PLACEHOLDER estimates for methodology demonstration. They are based on typical ranges for Kenya road projects but are NOT current market rates. **Always verify with current WSCM Part 3 rates, KeNHA rate schedules, or Skill #50-51 Kenya modules before use.**

| Road Type | Replacement Cost (KES Million/km) | Replacement Cost (USD/km) | Notes |
|-----------|----------------------------------|--------------------------|-------|
| Paved trunk road (AC, 7m) Class A/B | 250 - 400 | 1,900,000 - 3,100,000 | Varies by terrain and region |
| Paved primary road (AC, 6.5m) Class C | 150 - 250 | 1,150,000 - 1,900,000 | Simpler cross-section |
| Surface-dressed road (ST, 6m) | 100 - 180 | 770,000 - 1,400,000 | Surface treatment instead of AC |
| Gravel road (6m) | 30 - 60 | 230,000 - 460,000 | Gravel wearing course only |
| Earth road (5m) | 10 - 20 | 77,000 - 154,000 | Formation and drainage only |

**Exchange rate used:** KES 130/USD (PLACEHOLDER -- use current rate)

**Regional adjustment factors (indicative):**
- Nairobi / Central Kenya: 1.00 (base)
- Coast / Mombasa: 1.05-1.15
- Western / Nyanza: 1.10-1.20
- Rift Valley: 1.10-1.25
- North Eastern / Upper Eastern: 1.25-1.50 (remote, transport costs)

### M.2.3 Condition-Based Depreciation Factors (Kenya)

Used when Skill #56 Kenya module condition data (PCI) is available:

| PCI Range | Condition | Value Factor Range | Recommended Midpoint | Remaining Useful Life % |
|-----------|-----------|-------------------|---------------------|------------------------|
| 80 - 100 | Very Good | 0.80 - 1.00 | 0.90 | 80-100% |
| 60 - 80 | Good | 0.55 - 0.80 | 0.68 | 55-80% |
| 40 - 60 | Fair | 0.30 - 0.55 | 0.43 | 30-55% |
| 25 - 40 | Poor | 0.10 - 0.30 | 0.20 | 10-30% |
| < 25 | Very Poor | 0.00 - 0.10 | 0.05 | 0-10% |

**Notes:**
- Condition-based depreciation is preferred over straight-line when Skill #56 PCI data is available.
- These factors align with the RDM 5.1 PCI condition categories (Table 4.10).
- When a road exceeds its design life but PCI shows Good or Very Good condition, condition-based depreciation correctly reflects remaining value (straight-line would show zero).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Kenya-specific branching:**
```
Determine road authority and data availability:
  |-- KeNHA (Class A/B/C):
  |     Condition data likely available (annual network surveys)
  |     --> Use condition-based depreciation (PCI from Skill #56)
  |     --> Replacement cost from WSCM Part 3 / KeNHA rate schedule
  |
  |-- KeRRA (Class D/E):
  |     Condition data may be limited
  |     --> Use straight-line if no condition data
  |     --> Condition-based if survey data available
  |     --> Replacement cost from WSCM Part 3 with regional adjustment
  |
  |-- KURA (Urban):
  |     Urban condition data may be available
  |     --> Higher replacement costs (urban premium)
  |     --> Component depreciation for complex urban roads
  |
  +-- County road:
        Limited data likely
        --> Straight-line depreciation
        --> Simplified replacement cost (gravel or earth only)
        --> Flag: county asset register may be incomplete
```

### M.3.2 Professional Judgment (Country-Specific)

**Kenya road asset values are dominated by the paved trunk network.** The approximately 22,000 km of paved national roads represent the majority of road asset value despite being a fraction of the 160,000+ km network by length.

**KES depreciation affects replacement costs.** Kenya Shilling movements and construction cost inflation mean replacement costs in KES increase year-on-year. Asset registers should update replacement costs annually using current WSCM rates.

**Devolution complicates asset valuation.** The 2010 Constitution devolved some roads to county governments. Establishing initial asset values for devolved roads requires estimating both construction date (or equivalent age) and current replacement cost -- a common challenge.

**Donor-funded roads may have different cost bases.** Roads constructed under donor programmes (World Bank, AfDB, JICA) often have well-documented construction costs. These provide a useful starting point for replacement cost estimation, adjusted for current prices.

### M.3.3 Common Errors (Country-Specific)

1. **Using construction-year costs as replacement cost.** A road built in 2015 for KES 200M/km may cost KES 350M/km to replace in 2026. Using the 2015 cost undervalues the asset.
2. **Not updating the asset register after rehabilitation.** Rehabilitation expenditure should be capitalised, and the depreciation schedule should be reset.
3. **Applying trunk road replacement costs to rural roads.** Rural gravel roads have much lower replacement costs than paved trunk roads.
4. **Ignoring regional cost variation.** Construction costs in North Eastern Kenya can be 25-50% higher than in Central Kenya due to material transport distances.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design life (paved trunk) | 20 years | Kenya, Class A/B road | ASSUMED: 20-year design life for paved trunk road. | Engineering practice |
| Design life (gravel) | 10 years | Kenya, gravel road | ASSUMED: 10-year resheeting cycle for gravel road. | Kenya practice |
| Residual value | 10% | Standard | ASSUMED: 10% residual value for earthworks. Surface layers 0%. | IPSAS 17 practice |
| Currency | KES | Kenya | KES (Kenya Shillings). USD equivalent provided for donor-funded context. | National currency |
| Regional factor | 1.00 | Central Kenya | ASSUMED: Central Kenya base rate. Adjust for other regions. | PLACEHOLDER |
| Valuation methodology | DRC per IPSAS 17 | All | ASSUMED: Depreciated Replacement Cost method. Kenya-specific methodology is a knowledge gap -- verify against current KeNHA/KRB practice. | IPSAS 17 / knowledge gap |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Replacement cost (paved/km) | 100,000,000 | 1,000,000,000 | KES | Kenya typical range | Below 100M or above 1B per km is unusual -- verify |
| Replacement cost (gravel/km) | 10,000,000 | 100,000,000 | KES | Kenya typical range | Verify against current WSCM rates |
| Design life | 5 | 30 | years | Engineering practice | < 5 is very short; > 30 is optimistic for Kenya conditions |

### M.5.2 Standards Compliance Checks

- **Check:** Replacement cost at current prices (not historical)
- **Standard:** IPSAS 17
- **Pass condition:** Replacement cost source dated within last 2 years
- **Fail action:** NOTE -- Replacement cost may be outdated. Verify with current WSCM Part 3 rates.

- **Check:** Design life appropriate for road type
- **Standard:** Engineering practice
- **Pass condition:** Design life within range for road class/surface type
- **Fail action:** NOTE -- Design life [X] years is outside typical range for [road type]. Verify.

### M.5.3 Departures / Relaxations Process

No formal departures process. Asset valuation methodology follows IPSAS 17 and National Treasury guidelines. Changes to depreciation method or design life assumptions should be documented and disclosed in financial statements as a change in accounting estimate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Network value change > 20% | May indicate methodological issue | SENIOR REVIEW -- Significant change in network value. Verify whether due to updated rates, new condition data, or methodology change. |
| Road age > design life, condition Good | Depreciation method conflict | NOTE -- Road exceeds design life but condition is Good/Very Good. Recommend condition-based depreciation. Straight-line would give zero value. |
| Replacement costs unverified | Rates may be outdated | NOTE -- All replacement costs are PLACEHOLDER. Update with current WSCM Part 3 / KeNHA market rates before use in financial statements. |
| Kenya-specific methodology gap | Valuation approach not verified | NOTE -- Kenya road asset valuation methodology is a knowledge gap. Verify approach against current KeNHA/KRB/National Treasury practice. |

---

## M.7 Worked Examples -- Kenya

### Example 1: Paved Class B Road -- Condition-Based Valuation

**Project:** Value a 20km paved Class B road section.

**Given:**
- Road surface: Paved (AC), 7m carriageway
- Road class: Class B (KeNHA)
- Age: 15 years
- Design life: 20 years
- Condition from Skill #56 Kenya module: Good (PCI = 65%)
- Replacement cost: KES 300 million/km (PLACEHOLDER -- Central Kenya)
- Residual value: 10% of replacement cost

**Solution:**

Step 1: Total replacement cost = 300M x 20 = KES 6.0 billion

Step 2: Residual value = 6.0B x 0.10 = KES 600 million

Step 3a: Straight-line approach: Age/Design Life = 15/20 = 0.75 (75% depreciated)
- DRC (straight-line) = 6.0B x (1 - 0.75) + 0.6B = 6.0B x 0.25 + 0.6B = 1.5B + 0.6B = KES 2.1 billion

Step 3b: Condition-based approach: Good condition (PCI 65%) = factor 0.68 (midpoint)
- DRC (condition-based) = 6.0B x 0.68 + 0.6B = 4.08B + 0.6B = KES 4.68 billion

**Comparison:** Straight-line gives KES 2.1B. Condition-based gives KES 4.68B. The road is in Good condition despite being 75% through its design life -- condition-based depreciation captures this correctly.

**Result:** DRC = KES 4.68 billion (condition-based). Remaining useful life estimated at 55-80% based on condition. Flag: replacement costs are PLACEHOLDER -- verify with current WSCM Part 3 rates. Flag: Kenya-specific asset valuation methodology is a knowledge gap -- verify approach against current KeNHA/KRB practice.

---

## M.8 References

1. IPSAS 17 -- Property, Plant and Equipment, International Public Sector Accounting Standards Board (IPSASB)
2. Public Finance Management Act 2012, Government of Kenya
3. Kenya National Treasury, Public Sector Asset Management Guidelines
4. Ministry of Roads and Transport, WSCM Part 3 -- Bills of Quantities, Republic of Kenya, 2025
5. Ministry of Roads and Transport, RDM 5.1 Pavement Condition Surveys, Republic of Kenya, 2025
6. Skill #50-51 Kenya modules (for replacement cost references)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft with IPSAS 17 DRC framework, Kenya design lives, PLACEHOLDER replacement costs in KES, condition-based depreciation factors aligned to RDM 5.1 PCI categories, knowledge gap documented for Kenya-specific valuation methodology, 1 worked example. |
