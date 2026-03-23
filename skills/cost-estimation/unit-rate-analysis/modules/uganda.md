# Unit Rate Analysis -- Uganda Module

> **Parent Skill:** Skill #52 -- Unit Rate Analysis
> **Country/Jurisdiction:** Uganda
> **Standards:** Standard cost engineering practice (no specific MoWT cost manual)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Standard cost engineering practice | General | Rate build-up methodology | Current |
| MoWT General Specifications | 2005 | Item descriptions for rate matching | Current |

There is no published MoWT unit rate manual. Rate build-up follows standard international cost engineering practice applied to Ugandan conditions.

### M.1.2 Institutional Context

**UNRA:** Does not publish standard rates. Engineer's estimates are prepared by consulting engineers based on project-specific rate build-ups and historical contract data. Rate reasonableness is verified against recent contract awards.

**MoWT:** The MoWT General Specifications provide item descriptions and measurement rules but not rates.

### M.1.3 Standard Philosophy

Rate build-up in Uganda follows the universal L+E+M+OH methodology. Uganda-specific factors include: relatively low labour costs, high transport costs for materials in rural areas, imported bitumen (USD-linked), and significant regional cost variation.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**PLACEHOLDER Labour Rates (Uganda, Central Region):**

| Category | Daily Rate (UGX) | Hourly Rate (UGX) | Notes |
|----------|------------------|--------------------| ------|
| Unskilled labourer | 8,000 - 15,000 | 1,000 - 1,875 | General labour, loading, clearing |
| Semi-skilled (driver, assistant) | 15,000 - 30,000 | 1,875 - 3,750 | Truck driver, equipment assistant |
| Skilled (operator) | 30,000 - 60,000 | 3,750 - 7,500 | Excavator/grader/roller operator |
| Skilled (tradesman) | 25,000 - 50,000 | 3,125 - 6,250 | Mason, carpenter, welder |
| Foreman | 40,000 - 80,000 | 5,000 - 10,000 | Site supervision |

ALL RATES ARE PLACEHOLDER. Based on 8-hour working day.

**PLACEHOLDER Equipment Hourly Rates (Uganda):**

| Equipment | Hourly Rate (UGX) | Notes |
|-----------|--------------------| ------|
| Excavator (1.0 m3) | 150,000 - 200,000 | Including operator. Hire rate. |
| Dump truck (10 m3) | 100,000 - 150,000 | Including driver. Hire rate. |
| Motor grader (Cat 140) | 180,000 - 250,000 | Including operator. Hire rate. |
| Vibratory roller (10t) | 100,000 - 150,000 | Including operator. Hire rate. |
| Water bowser (10,000L) | 80,000 - 120,000 | Including driver. Hire rate. |
| Loader (2.5 m3) | 130,000 - 180,000 | Including operator. Hire rate. |
| Asphalt paver | 250,000 - 350,000 | Including operator. Hire rate. |
| Chip spreader | 120,000 - 180,000 | Including operator. Hire rate. |
| Bitumen distributor | 150,000 - 200,000 | Including operator. Hire rate. |

ALL RATES ARE PLACEHOLDER. Actual hire rates depend on location and availability.

**PLACEHOLDER Material Costs (Uganda, at source):**

| Material | Unit | Cost (UGX) | Notes |
|----------|------|------------|-------|
| Natural gravel (borrow) | m3 | 5,000 - 15,000 | Royalty and extraction. Varies with source. |
| Crushed stone aggregate | m3 | 40,000 - 70,000 | Ex-quarry. Transport additional. |
| Sand | m3 | 20,000 - 40,000 | River sand or pit sand |
| Cement (50 kg bag) | bag | 28,000 - 35,000 | Hima or Tororo brand |
| Reinforcement steel (Y) | kg | 3,000 - 4,000 | Imported. Price volatile. |
| Bitumen (80/100 pen) | tonne | 3,500,000 - 4,500,000 | Imported. USD-linked. |
| MC-30 cutback bitumen | litre | 3,000 - 4,000 | For prime coat |
| Diesel fuel | litre | 4,500 - 5,500 | Market price. Varies by region. |

ALL COSTS ARE PLACEHOLDER. Transport cost to site is additional.

**Transport Cost:**
- Typical rate: UGX 800 - 1,500 per tonne-km (depends on road condition)
- Gravel: ~1.8 tonnes/m3 loose
- Crushed stone: ~1.6 tonnes/m3 loose
- For a 20 km haul of crushed stone: approximately UGX 25,000 - 48,000/m3 transport cost

### M.2.2 Country-Specific Formulas

No country-specific formulas. Universal rate build-up methodology applies.

### M.2.3 Classification System

Not applicable. Rate build-up methodology does not depend on road classification.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda-Specific Cost Factors:**

1. **Transport dominates rural rates:** For rural road projects, transport cost of aggregates and gravel from source to site often exceeds the material cost. Always calculate transport explicitly.

2. **Imported materials:** Bitumen, steel, and some equipment parts are imported. Prices are USD-linked and subject to exchange rate fluctuation. For rate analysis, note the exchange rate assumption and flag the sensitivity.

3. **Labour productivity:** Uganda has relatively low labour costs but also variable productivity. Adjust for:
   - Terrain: Flat (1.0), rolling (0.85-0.95), mountainous (0.70-0.85)
   - Season: Dry (1.0), wet (0.80-0.90)
   - Access: Good road (1.0), poor access (0.75-0.90)

4. **Equipment availability:** Specialised equipment (asphalt plants, large cranes) is concentrated in the Kampala corridor. Mobilisation cost to remote sites can be significant (include in preliminary items, not in unit rates, to avoid double-counting).

5. **Regional adjustment factors:** Relative to Central Uganda (base 1.0):
   - Northern Uganda: 1.15 - 1.25 (longer transport, limited suppliers)
   - Eastern Uganda: 1.10 - 1.20 (moderate transport distances)
   - Western Uganda: 1.10 - 1.20 (hilly terrain, moderate transport)
   - Karamoja: 1.25 - 1.40 (remote, limited access, security considerations)

### M.3.2 Professional Judgment (Country-Specific)

- **Check rates against recent UNRA awards:** Rates built up from first principles should be cross-checked against actual contract award prices where available. Significant differences warrant investigation.
- **Fuel price sensitivity:** Equipment rates are sensitive to diesel price. A UGX 500/litre change in diesel price changes equipment-intensive rates by approximately 5-10%.
- **Cement price:** Cement is produced domestically (Hima Cement, Tororo Cement) but price varies by region. Price competition has generally kept prices stable, but supply disruptions cause spikes.

### M.3.3 Common Errors (Country-Specific)

1. **Underestimating gravel haul distance:** Borrow areas near the project site may be exhausted or inaccessible. Average haul distances of 10-15 km are common for rural projects.
2. **Using Kampala equipment rates for upcountry projects:** Equipment hire rates in Kampala are lower due to competition. Upcountry rates include mobilisation premium.
3. **Ignoring seasonal access constraints:** During wet season, some borrow areas and quarries become inaccessible, affecting material costs.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Unskilled labour rate | UGX 10,000/day | Central Uganda | ASSUMED: UGX 10,000/day unskilled. PLACEHOLDER -- verify current rate. | Mid-range illustrative |
| Skilled operator rate | UGX 40,000/day | Central Uganda | ASSUMED: UGX 40,000/day skilled. PLACEHOLDER -- verify current rate. | Mid-range illustrative |
| Diesel price | UGX 5,000/litre | National average | ASSUMED: UGX 5,000/litre diesel. PLACEHOLDER -- verify current pump price. | Approximate mid-2024 |
| Site overheads | 15% | Standard project | ASSUMED: 15% site overheads. Adjust for project scale. | Typical Uganda practice |
| Head office overheads | 8% | Medium contractor | ASSUMED: 8% head office overheads. Adjust for contractor size. | Typical Uganda practice |
| Profit | 10% | Competitive market | ASSUMED: 10% profit margin. Adjust for competition level. | Typical Uganda practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Excavation rate (common) | 15,000 | 40,000 | UGX/m3 | Practice | Flag: outside Uganda range |
| Fill from borrow rate | 20,000 | 50,000 | UGX/m3 | Practice | Flag: outside Uganda range |
| Crushed stone base rate | 60,000 | 120,000 | UGX/m3 | Practice | Flag: outside Uganda range |
| DBST rate | 10,000 | 25,000 | UGX/m2 | Practice | Flag: outside Uganda range |

ALL RANGES ARE PLACEHOLDER.

### M.5.2 Standards Compliance Checks

- **Check:** Every rate build-up includes all four components (L+E+M+OH)
- **Standard:** Methodology requirement
- **Pass condition:** Labour, Equipment, Materials, and Overheads all present (some may be zero for specific items)
- **Fail action:** Add missing component with justification if zero

### M.5.3 Departures / Relaxations Process

No formal departures process for rate analysis. Rates are project-specific. Where a rate deviates significantly from expected ranges, document the reasons.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Transport distance >30 km for aggregates | Transport cost may exceed material cost | SENIOR REVIEW -- Long transport distance. Verify alternative material sources. |
| Rate built up >30% above Skill #53 reference | May indicate error or unusual conditions | SENIOR REVIEW -- Rate [value] significantly above reference. Verify inputs. |
| Bitumen price used >6 months old | USD-linked price volatile | SENIOR REVIEW -- Verify current bitumen price. |

---

## M.7 Worked Example -- Uganda

### Example 1: Excavation in Common Material (m3)

**Source:** Illustrative rate build-up. ALL RATES ARE PLACEHOLDER.

**Given:**
- Item: Excavation in common material, haul to spoil within 1 km
- Method: Mechanical (excavator + dump truck)
- Location: Central Uganda
- Production rate: Excavator 1.0 m3 bucket, 30 cycles/hr, 0.85 fill factor = 25.5 m3/hr

**Rate Build-Up:**

**LABOUR**

| Category | Hours/m3 | Rate (UGX/hr) | Cost (UGX/m3) |
|----------|---------|----------------|---------------|
| Excavator operator | 0.039 | 5,000 | 196 |
| Dump truck driver | 0.039 | 3,750 | 146 |
| Banksman/labourer | 0.039 | 1,250 | 49 |
| **Labour subtotal** | | | **391** |

Note: 0.039 hr/m3 = 1/25.5 m3/hr

**EQUIPMENT**

| Type | Hours/m3 | Rate (UGX/hr) | Cost (UGX/m3) |
|------|---------|----------------|---------------|
| Excavator (1.0 m3) | 0.039 | 180,000 | 7,020 |
| Dump truck (10 m3) | 0.020 | 120,000 | 2,400 |
| **Equipment subtotal** | | | **9,420** |

Note: Truck hours assume 0.5 km average haul, 10 m3 capacity, 3 trips/hr = 30 m3/hr, so 0.033 hr/m3. Adjusted for waiting time.

**MATERIALS**
- None for excavation work (no materials consumed)
- Materials subtotal: UGX 0

**DIRECT COST:** UGX 391 + 9,420 + 0 = **UGX 9,811/m3**

**OVERHEADS AND PROFIT**

| Item | Percentage | Amount (UGX/m3) |
|------|-----------|-----------------|
| Direct cost | -- | 9,811 |
| Site overheads | 15% | 1,472 |
| Subtotal | -- | 11,283 |
| Head office overheads | 8% | 903 |
| Subtotal | -- | 12,186 |
| Profit | 10% | 1,219 |
| **Total unit rate** | -- | **13,405** |

**PLACEHOLDER RATE: UGX 13,405/m3** for excavation in common material.

**Cross-check:** Skill #53 reference rate: UGX 25,000/m3 (which includes haul to spoil within 1 km and higher overhead assumptions). The difference is partly due to the reference rate including additional contingency allowances. Both are PLACEHOLDER values.

### Example 2: Double Bituminous Surface Treatment -- DBST (m2)

**Source:** Illustrative rate build-up. ALL RATES ARE PLACEHOLDER.

**Given:**
- Item: DBST -- two applications of binder and aggregate
- Method: Mechanical (bitumen distributor + chip spreader + roller)
- Location: Central Uganda
- Application rates: 1st application: 1.0 l/m2 binder, 15 l/m2 aggregate; 2nd application: 0.8 l/m2 binder, 10 l/m2 aggregate
- Production rate: bitumen distributor 2,000 m2/hr; chip spreader 1,500 m2/hr

**Rate Build-Up:**

**LABOUR**

| Category | Hours/m2 | Rate (UGX/hr) | Cost (UGX/m2) |
|----------|---------|----------------|---------------|
| Distributor operator | 0.001 | 5,000 | 5 |
| Chip spreader operator | 0.0013 | 5,000 | 7 |
| Roller operator | 0.001 | 5,000 | 5 |
| Labourers (4 no.) | 0.005 | 1,250 | 6 |
| **Labour subtotal** | | | **23** |

**EQUIPMENT**

| Type | Hours/m2 | Rate (UGX/hr) | Cost (UGX/m2) |
|------|---------|----------------|---------------|
| Bitumen distributor | 0.001 | 180,000 | 180 |
| Chip spreader | 0.0013 | 150,000 | 195 |
| Pneumatic roller | 0.001 | 120,000 | 120 |
| **Equipment subtotal** | | | **495** |

**MATERIALS**

| Material | Qty/m2 | Cost/unit (UGX) | Wastage | Cost (UGX/m2) |
|----------|--------|-----------------|---------|---------------|
| Bitumen (80/100) -- 1st app | 1.0 l | 3,500/l | 5% | 3,675 |
| Bitumen (80/100) -- 2nd app | 0.8 l | 3,500/l | 5% | 2,940 |
| Aggregate 19mm -- 1st app | 0.015 m3 | 60,000/m3 | 10% | 990 |
| Aggregate 9.5mm -- 2nd app | 0.010 m3 | 65,000/m3 | 10% | 715 |
| **Materials subtotal** | | | | **8,320** |

**DIRECT COST:** UGX 23 + 495 + 8,320 = **UGX 8,838/m2**

**OVERHEADS AND PROFIT**

| Item | Percentage | Amount (UGX/m2) |
|------|-----------|-----------------|
| Direct cost | -- | 8,838 |
| Site overheads | 15% | 1,326 |
| Head office overheads | 8% | 813 |
| Profit | 10% | 1,098 |
| **Total unit rate** | -- | **12,075** |

**PLACEHOLDER RATE: UGX 12,075/m2** for DBST.

**Cross-check:** Skill #53 reference rate: UGX 15,000/m2. Difference reflects transport cost for materials not fully captured in this build-up (aggregate transport from quarry to site) and bitumen supply chain costs. Both are PLACEHOLDER values.

---

## M.8 References

1. Standard cost engineering practice -- rate build-up methodology
2. MoWT General Specifications for Road and Bridge Works, Ministry of Works and Transport, Uganda, 2005
3. Equipment hire rate market data (various, illustrative)
4. Bank of Uganda -- exchange rates (for imported material pricing)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft |
