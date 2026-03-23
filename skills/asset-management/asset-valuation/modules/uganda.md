# Asset Valuation -- Uganda Module

> **Parent Skill:** Skill #58 Asset Valuation
> **Country/Jurisdiction:** Uganda
> **Standards:** IPSAS 17 (as adopted in Uganda), UNRA Asset Register Requirements
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| IPSAS 17 -- Property, Plant and Equipment | 2006 (amended) | Measurement, depreciation, useful life | Adopted in Uganda public sector |
| Uganda Public Finance Management Act | 2015 | Asset management provisions | Current |
| UNRA Asset Register Guidelines | Internal | Road asset classification, valuation methodology | Current |

### M.1.2 Institutional Context

**IPSAS Adoption in Uganda:** Uganda's public sector has adopted accrual-based IPSAS for financial reporting. Road infrastructure is classified as Property, Plant and Equipment under IPSAS 17. Government entities (including UNRA) are required to maintain asset registers with depreciated values for annual financial statements.

**UNRA Asset Register:** UNRA maintains a road asset register covering the national road network (~21,000 km). The register records road attributes (class, surface type, length, width, construction date), condition data (from annual surveys), and asset values (DRC). Values are updated annually based on condition surveys and current replacement costs.

**District Asset Registers:** District local governments are required to maintain asset registers for district and community roads. In practice, many district registers are incomplete or use simplified valuation methods. DUCAR programme has supported development of district road inventories.

### M.1.3 Standard Philosophy

Uganda road asset valuation follows the DRC method as prescribed by IPSAS 17 for infrastructure assets with no market value. UNRA uses condition-based depreciation where condition data is available (national roads with annual surveys) and straight-line depreciation as a fallback. The emphasis is on maintaining up-to-date replacement costs and condition data to produce meaningful asset values for financial reporting and investment planning.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Lives by Road Class (Uganda)

| Road Class | Surface Type | Design Life (years) | Notes |
|-----------|-------------|-------------------|-------|
| National Trunk Road | Paved (AC) | 20-25 | To next major rehabilitation |
| National Primary | Paved (AC) | 20 | Standard UNRA assumption |
| National Secondary | Paved (AC/ST) | 15-20 | Surface treatment roads shorter life |
| District Road | Paved (AC/ST) | 15-20 | Lower traffic may extend life |
| District Road | Gravel | 8-12 | Resheeting cycle |
| Community Access Road | Gravel | 8-10 | Often shorter due to limited maintenance |
| Community Access Road | Earth | 5-8 | Shortest design life |

### M.2.2 Replacement Costs per km (Uganda)

**CRITICAL DISCLAIMER:** All costs below are PLACEHOLDER estimates for methodology demonstration. They are based on typical ranges observed in Uganda road projects but are NOT current market rates. **Always verify with current UNRA/MoWT rates or Skill #53 unit rate database before use.**

| Road Type | Replacement Cost (UGX Billion/km) | Replacement Cost (USD/km) | Notes |
|-----------|----------------------------------|--------------------------|-------|
| Paved trunk road (AC, 7m) | 2.5 - 4.0 | 670,000 - 1,070,000 | Varies by terrain and region |
| Paved district road (AC, 6m) | 1.5 - 2.5 | 400,000 - 670,000 | Simpler cross-section |
| Surface-dressed road (ST, 6m) | 1.0 - 1.8 | 270,000 - 480,000 | Surface treatment instead of AC |
| Gravel road (6m) | 0.3 - 0.6 | 80,000 - 160,000 | Gravel wearing course only |
| Earth road (5m) | 0.1 - 0.2 | 27,000 - 54,000 | Formation and drainage only |

**Exchange rate used:** UGX 3,750/USD (PLACEHOLDER -- use current rate)

**Regional adjustment factors** (from Skill #53):
- Central Uganda: 1.00 (base)
- Eastern/Western: 1.10-1.20
- Northern: 1.15-1.25
- Karamoja: 1.25-1.40

### M.2.3 Condition-Based Depreciation Factors (Uganda)

Used when Skill #56 condition data is available:

| Condition Rating | Value Factor Range | Recommended Midpoint | Remaining Useful Life % |
|-----------------|-------------------|---------------------|------------------------|
| Good | 0.80 - 1.00 | 0.90 | 80-100% |
| Fair | 0.50 - 0.80 | 0.65 | 50-80% |
| Poor | 0.20 - 0.50 | 0.35 | 20-50% |
| Very Poor | 0.00 - 0.20 | 0.10 | 0-20% |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda-specific branching:**
```
Determine road authority and data availability:
  |-- UNRA national road:
  |     Condition data likely available (annual surveys)
  |     --> Use condition-based depreciation
  |     --> Replacement cost from UNRA rate schedule or Skill #53
  |
  |-- District road:
  |     Condition data may be limited
  |     --> Use straight-line if no condition data
  |     --> Condition-based if DUCAR survey data available
  |     --> Replacement cost from UNRA rate schedule with regional adjustment
  |
  +-- Community access road:
        Limited data likely
        --> Straight-line depreciation
        --> Simplified replacement cost (earth or gravel only)
```

### M.3.2 Professional Judgment (Country-Specific)

**Uganda road asset values are dominated by the paved trunk network.** The ~4,000 km of paved national roads represent the majority of road asset value despite being a small fraction of the network by length. Gravel and earth roads have lower per-km value but cover much larger distances.

**Inflation significantly affects replacement costs in UGX.** Uganda Shilling depreciation and construction cost inflation mean that replacement costs in UGX increase significantly year-on-year. Asset registers should update replacement costs annually, not just depreciation. Failure to update replacement costs leads to systematic undervaluation.

**Rehabilitated roads need careful treatment.** When a road is rehabilitated (e.g., overlay on a 15-year-old road), the treatment depends on the rehabilitation scope:
- Full reconstruction: age resets to 0, new replacement cost
- Overlay only: replacement cost increases by overlay cost, age partially resets (e.g., surface age = 0, formation age continues from original)
- Component depreciation provides the most accurate treatment but is more complex

**Many district roads have never been formally valued.** Establishing initial asset values for previously unvalued roads requires estimating both construction date (or equivalent age) and current replacement cost. This is a common challenge in developing countries adopting IPSAS.

### M.3.3 Common Errors (Country-Specific)

1. **Using construction-year costs as replacement cost.** A road built in 2010 for UGX 1.5B/km may cost UGX 3.5B/km to replace in 2026. Using the 2010 cost undervalues the asset by ~57%.
2. **Not updating the asset register after rehabilitation.** Rehabilitation expenditure should be capitalised (added to asset value), and the depreciation schedule should be reset.
3. **Applying trunk road replacement costs to district roads.** District gravel roads have much lower replacement costs than paved trunk roads. Using a single rate across the network distorts values.
4. **Ignoring regional cost variation.** Construction costs in Karamoja can be 25-40% higher than in central Uganda due to material transport distances. Regional adjustment factors are essential.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design life (paved trunk) | 20 years | Uganda, national road | ASSUMED: 20-year design life for paved trunk road. Standard UNRA assumption. | UNRA practice |
| Design life (gravel) | 10 years | Uganda, gravel road | ASSUMED: 10-year resheeting cycle for gravel road. | UNRA practice |
| Residual value | 10% | Standard | ASSUMED: 10% residual value for earthworks. Surface layers 0%. | Engineering practice |
| Currency | UGX | Uganda | UGX (Uganda Shillings). USD equivalent provided for donor-funded context. | National currency |
| Regional factor | 1.00 | Central Uganda | ASSUMED: Central Uganda base rate. Adjust for other regions. | Skill #53 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Replacement cost (paved/km) | 1,000,000,000 | 10,000,000,000 | UGX | UNRA typical range | Below 1B or above 10B per km is unusual -- verify |
| Replacement cost (gravel/km) | 100,000,000 | 1,000,000,000 | UGX | UNRA typical range | Verify against current rates |
| Design life | 5 | 30 | years | UNRA practice | < 5 is very short; > 30 is optimistic for Uganda conditions |

### M.5.2 Standards Compliance Checks

- **Check:** Replacement cost at current prices (not historical)
- **Standard:** IPSAS 17
- **Pass condition:** Replacement cost source dated within last 2 years
- **Fail action:** NOTE -- Replacement cost may be outdated. Verify with current rates.

- **Check:** Design life appropriate for road type
- **Standard:** UNRA practice
- **Pass condition:** Design life within range for road class/surface type
- **Fail action:** NOTE -- Design life [X] years is outside typical range for [road type]. Verify.

### M.5.3 Departures / Relaxations Process

No formal departures process. Asset valuation methodology follows IPSAS 17 and UNRA guidelines. Changes to depreciation method or design life assumptions should be documented and disclosed in financial statements as a change in accounting estimate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Network value change > 20% | May indicate methodological issue | SENIOR REVIEW -- Significant change in network value. Verify whether due to updated rates, new condition data, or methodology change. |
| Road age > design life, condition Good | Depreciation method conflict | NOTE -- Road exceeds design life but condition is Good. Recommend condition-based depreciation. Straight-line would give zero value. |
| Replacement costs unverified | Rates may be outdated | NOTE -- All replacement costs are PLACEHOLDER. Update with current UNRA/market rates before use in financial statements. |

---

## M.7 Worked Examples -- Uganda

### Example 1: Paved National Road -- Straight-Line Depreciation

**Project:** Value a 15km paved national road section.

**Given:**
- Road surface: Paved (AC), 7m carriageway
- Road class: National Trunk
- Age: 12 years (constructed 2014)
- Design life: 20 years
- Replacement cost: UGX 2.5 billion/km (PLACEHOLDER -- central Uganda)
- Residual value: 10% of replacement cost

**Solution:**

Step 1: Total replacement cost = 2.5B x 15 = UGX 37.5 billion

Step 2: Residual value = 37.5B x 0.10 = UGX 3.75 billion

Step 3: Depreciation factor = Age / Design Life = 12/20 = 0.60

Step 4: DRC = 37.5B x (1 - 0.60) + 3.75B = 37.5B x 0.40 + 3.75B = 15.0B + 3.75B = UGX 18.75 billion

Step 5: Remaining useful life = 20 - 12 = 8 years

Step 6: Annual depreciation = (37.5B - 3.75B) / 20 = UGX 1.6875 billion/year

**Result:** DRC = UGX 18.75 billion. 60% depreciated, 8 years remaining useful life. Annual depreciation charge UGX 1.69 billion.

### Example 2: Condition-Based Valuation of District Road

**Project:** Value a 20km district road with known condition data from Skill #56.

**Given:**
- Road surface: Paved (surface treatment), 6m carriageway
- Road class: District
- Age: 18 years
- Design life: 15 years (surface treatment)
- Condition from Skill #56: Fair (VCI = 65)
- Replacement cost: UGX 1.2 billion/km (PLACEHOLDER -- western Uganda, factor 1.15)
- Residual value: 10%

**Solution:**

Step 1: Total replacement cost = 1.2B x 20 = UGX 24.0 billion

Step 2: Residual value = 24.0B x 0.10 = UGX 2.4 billion

Step 3a: Straight-line approach: Age/Design Life = 18/15 = 1.20 (exceeds 1.0 -- road would be valued at residual only = UGX 2.4 billion)

Step 3b: Condition-based approach: Fair condition = factor 0.65 (midpoint)

Step 4: DRC (condition-based) = 24.0B x 0.65 + 2.4B = 15.6B + 2.4B = UGX 18.0 billion

**Comparison:** Straight-line gives UGX 2.4B (residual only). Condition-based gives UGX 18.0B. The road has exceeded its design life but is still in Fair condition due to maintenance -- condition-based depreciation captures this correctly.

**Result:** DRC = UGX 18.0 billion (condition-based). Recommend condition-based method as road age exceeds design life but condition data shows significant remaining value. Flag: replacement costs are PLACEHOLDER -- verify with current rates.

### Example 3: Network Valuation for UNRA Annual Report

**Project:** Network valuation of 500km mixed road network for UNRA annual financial statements.

**Given:**
- 200km paved trunk roads (mixed ages 5-25 years, mixed conditions)
- 150km paved district roads (mixed ages 8-20 years)
- 150km gravel roads (mixed ages 3-12 years)
- Condition data available for paved trunk roads (annual survey)
- Limited condition data for district and gravel roads

**Solution:**

Step 1: Segment the network into homogeneous sections (by class, surface, age, condition).

Step 2: Apply depreciation method:
- Paved trunk (200km): condition-based (data available)
- District paved (150km): straight-line (limited condition data)
- Gravel (150km): straight-line

Step 3: Calculate DRC per segment and aggregate:

| Category | Length (km) | Replacement Cost (UGX B) | Average Depreciation | DRC (UGX B) |
|----------|-----------|------------------------|---------------------|------------|
| Paved trunk | 200 | 600.0 | 35% (condition-based) | 420.0 |
| Paved district | 150 | 270.0 | 50% (straight-line) | 148.5 |
| Gravel | 150 | 67.5 | 45% (straight-line) | 44.0 |
| **TOTAL** | **500** | **937.5** | **35% weighted** | **612.5** |

Step 4: Annual depreciation charge:
- Paved trunk: (600B - 60B) / 20 = UGX 27.0B/year
- Paved district: (270B - 27B) / 17.5 = UGX 13.9B/year
- Gravel: (67.5B - 6.75B) / 10 = UGX 6.1B/year
- Total: UGX 47.0B/year

**Result:** Total network DRC = UGX 612.5 billion. Annual depreciation = UGX 47.0 billion. Paved trunk roads represent 69% of asset value. Flag: mixed depreciation methods used -- disclose in financial statement notes. All replacement costs are PLACEHOLDER.

---

## M.8 References

1. IPSAS 17 -- Property, Plant and Equipment, International Public Sector Accounting Standards Board (IPSASB)
2. Public Finance Management Act 2015, Government of Uganda
3. UNRA Asset Register and Valuation Guidelines, Uganda National Roads Authority (internal)
4. MoWT Road Design Manual Volume 1, Ministry of Works and Transport, 2010 (for road classification)
5. Skill #53 Uganda/EA Unit Rate Database (for replacement cost references)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with IPSAS 17 framework, Uganda design lives, PLACEHOLDER replacement costs, 3 worked examples (straight-line, condition-based, network). |
