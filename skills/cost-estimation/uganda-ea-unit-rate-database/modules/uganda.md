# Uganda/EA Unit Rate Database -- Uganda Module

> **Parent Skill:** Skill #53 -- Uganda/EA Unit Rate Database
> **Country/Jurisdiction:** Uganda
> **Standards:** No published MoWT unit rate schedule; rates compiled from project experience
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| No published MoWT unit rate schedule | N/A | N/A | N/A |

There is no published official unit rate schedule for road construction in Uganda. Rates are project-specific and derived from: historical contract awards (UNRA records), contractor quotations, market surveys, and cost engineering build-ups (Skill #52).

### M.1.2 Institutional Context

**UNRA:** Maintains internal records of contract award prices. These serve as the primary benchmark for engineer's estimates but are not publicly available. Consultants preparing estimates typically have access to recent award data through their project experience.

**MoWT:** Does not publish rate schedules. The General Specifications define items and measurement rules but not rates.

### M.1.3 Standard Philosophy

Uganda's construction cost estimation relies on project-specific rate analysis rather than published rate books. This is partly because: (1) construction costs vary significantly by region, (2) material transport costs (which dominate many rates) depend on project-specific distances, and (3) the construction market is dynamic with frequent price changes for imported materials (bitumen, steel).

The database in this skill provides a structured template for organising rates, not authoritative pricing.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Rate Database Files:**
- Earthworks: `tables/unit_rates_earthworks.json` -- 6 items
- Pavement: `tables/unit_rates_pavement.json` -- 7 items
- Drainage: `tables/unit_rates_drainage.json` -- 7 items
- Structures: `tables/unit_rates_structures.json` -- 6 items

All files include `_metadata` with PLACEHOLDER disclaimer, base year, currency, and exchange rate.

### M.2.2 Country-Specific Formulas

No country-specific formulas. Rate lookup and adjustment methodology is universal.

### M.2.3 Classification System

Not applicable. Rates do not depend on road classification.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda Rate Sources:**

1. **Historical contract rates (UNRA):** The most reliable source. Rates from contracts awarded within the last 2 years in similar regions and project types. Adjust for inflation and location differences.

2. **Contractor quotations:** Direct quotes from contractors for specific items. Most useful for material-intensive items where contractor pricing reflects current supply chain costs.

3. **Market surveys:** Periodic surveys of material prices (cement, steel, bitumen, fuel, aggregate) conducted by project teams or consultants. Useful for updating the material component of rates.

4. **Regional cost indices:** Bank of Uganda publishes general construction cost indices. These provide inflation adjustment factors but not item-level rates.

5. **Published sources (limited):** World Bank project documents sometimes include cost summaries for completed projects. These provide per-km cost benchmarks but rarely item-level rates.

### M.3.2 Professional Judgment (Country-Specific)

- **Rate vintage is critical:** Uganda's construction costs change rapidly. Rates from more than 2 years ago should be adjusted for inflation before use.
- **Bitumen price dominance:** For surface treatment and asphalt items, the bitumen price (imported, USD-linked) is the dominant cost driver. Exchange rate movements can change surface treatment rates by 10-20%.
- **Quarry proximity:** Crushed stone and aggregate rates are highly dependent on quarry distance. A rate valid for a project 10 km from a quarry may be 30-50% too low for a project 40 km away.
- **Competition effect:** Rates in the Kampala corridor benefit from contractor competition (many contractors active). Upcountry rates include a premium due to limited contractor interest and higher mobilisation costs.

### M.3.3 Common Errors (Country-Specific)

1. **Using Kampala rates for upcountry projects:** Without regional adjustment, Kampala rates will underestimate upcountry costs by 15-40%.
2. **Not updating bitumen prices:** Bitumen prices change quarterly or more frequently. Using a rate with an embedded bitumen price from 6+ months ago may be significantly wrong.
3. **Ignoring seasonal variation:** Wet season affects productivity and access, potentially increasing rates by 5-15%. Some borrow areas are inaccessible in wet season.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Base region | Central Uganda | No region specified | ASSUMED: Central Uganda base rates. Adjust for project region. | Database base region |
| Base year | 2024 | Per JSON metadata | ASSUMED: 2024 base year rates. PLACEHOLDER -- adjust for inflation. | Database base year |
| Annual inflation | 7% | Construction costs | ASSUMED: 7% annual construction cost inflation. Use current data. | Historical average |
| Exchange rate | UGX 3,700 = USD 1 | Illustrative | ASSUMED: Illustrative exchange rate. Use current Bank of Uganda rate. | Approximate |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Earthworks rate (common excavation) | 15,000 | 40,000 | UGX/m3 | PLACEHOLDER range | Flag: outside expected range |
| Crushed stone base rate | 60,000 | 150,000 | UGX/m3 | PLACEHOLDER range | Flag: outside expected range |
| DBST rate | 10,000 | 25,000 | UGX/m2 | PLACEHOLDER range | Flag: outside expected range |
| Pipe culvert 600mm | 250,000 | 500,000 | UGX/m | PLACEHOLDER range | Flag: outside expected range |
| Structural concrete | 600,000 | 1,200,000 | UGX/m3 | PLACEHOLDER range | Flag: outside expected range |

ALL RANGES ARE PLACEHOLDER.

### M.5.2 Standards Compliance Checks

- **Check:** All JSON files contain `_metadata` with PLACEHOLDER disclaimer
- **Standard:** Skill requirement
- **Pass condition:** `"disclaimer"` field contains "PLACEHOLDER"
- **Fail action:** Add PLACEHOLDER disclaimer

- **Check:** All items have `source_skill` field
- **Standard:** Traceability requirement
- **Pass condition:** Every item links to an upstream technical skill
- **Fail action:** Add source_skill reference

### M.5.3 Departures / Relaxations Process

No formal departures process. Rates are illustrative. Any rate can be replaced with project-specific data without formal documentation.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Rate database used without updating | PLACEHOLDER rates not current | PLACEHOLDER WARNING -- All rates must be replaced with current market data before use. |
| Item not in database | Coverage gap | Flag item. Use Skill #52 for first-principles build-up. |
| Regional factor >1.30 | Significant cost premium | SENIOR REVIEW -- Verify regional adjustment with local market data. |

---

## M.7 Worked Example -- Uganda

### Example: Rate Lookup for 15 km Rural Road BoQ

**Source:** Illustrative example. ALL RATES ARE PLACEHOLDER.

**Given:**
- 15 km rural road upgrade in Northern Uganda (Lira-Kamdini corridor)
- BoQ items from Skill #51 worked example
- Regional adjustment factor: 1.20 (Northern Uganda)
- Base year: 2024 (no inflation adjustment needed if estimating in 2024)

**Rate Lookup:**

| BoQ Item | Code | Unit | Base Rate (UGX) | Regional Factor | Adjusted Rate (UGX) | Adjusted (USD) |
|----------|------|------|-----------------|-----------------|---------------------|----------------|
| Clearing and grubbing | E01 | ha | 3,500,000 | 1.20 | 4,200,000 | 1,135 |
| Excavation (common) | E03 | m3 | 25,000 | 1.20 | 30,000 | 8.11 |
| Fill from borrow | E05 | m3 | 30,000 | 1.20 | 36,000 | 9.73 |
| Gravel sub-base | P01 | m3 | 45,000 | 1.20 | 54,000 | 14.59 |
| Crushed stone base | P02 | m3 | 85,000 | 1.20 | 102,000 | 27.57 |
| Prime coat | P04 | m2 | 3,500 | 1.20 | 4,200 | 1.14 |
| DBST | P06 | m2 | 15,000 | 1.20 | 18,000 | 4.86 |
| Pipe culvert 600mm | D03 | m | 350,000 | 1.20 | 420,000 | 113.51 |
| Headwall | D06 | no | 1,500,000 | 1.20 | 1,800,000 | 486.49 |

**Comparison -- Central vs Northern Uganda:**

| Item | Central Rate (UGX) | Northern Rate (UGX) | Difference |
|------|--------------------|--------------------|------------|
| Excavation (common) | 25,000/m3 | 30,000/m3 | +20% |
| Crushed stone base | 85,000/m3 | 102,000/m3 | +20% |
| DBST | 15,000/m2 | 18,000/m2 | +20% |

The 20% premium reflects the Northern Uganda regional factor of 1.20, covering: longer material transport distances, limited supplier competition, and higher mobilisation costs.

**ALL RATES ARE PLACEHOLDER -- FOR METHODOLOGY DEMONSTRATION ONLY.**

---

## M.8 References

1. UNRA -- Historical contract award data (internal, not published)
2. Bank of Uganda -- Construction cost indices (various years)
3. World Bank -- Project cost summaries for Uganda road projects (various PADs)
4. Market survey data -- illustrative, not current

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft |
