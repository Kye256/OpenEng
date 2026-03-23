# BoQ Preparation -- Uganda Module

> **Parent Skill:** Skill #51 -- BoQ Preparation
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT General Specifications for Road and Bridge Works; FIDIC Red Book (1999)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT General Specifications for Road and Bridge Works | 2005 | Item descriptions, measurement rules | Current |
| FIDIC Conditions of Contract for Construction (Red Book) | 1999 | BoQ format, measurement and payment clauses | Current (1999 default for Uganda) |
| UNRA Standard Bidding Documents | Various | BoQ templates, Particular Conditions | Current |

### M.1.2 Institutional Context

**UNRA (Uganda National Roads Authority):** The primary road authority for national trunk roads. Uses FIDIC Red Book (1999) with Particular Conditions. BoQ format follows MoWT General Specifications item numbering. Most trunk road contracts are funded by World Bank, AfDB, EU, or GoU, each with slightly different procurement document requirements but all using the same BoQ structure.

**District/Urban Roads:** Managed by respective local governments with MoWT oversight. Smaller contracts may use simplified BoQ formats but still reference MoWT General Specifications.

### M.1.3 Standard Philosophy

The MoWT General Specifications follow a "specification section" approach where each specification section covers a category of work. BoQ item numbers typically align with specification section numbers (e.g., Section 2 = Earthworks, Section 4 = Pavement). The BoQ is a measured-work document -- the Contractor is paid for actual quantities executed at tendered rates, with variations managed per FIDIC clause 13.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Standard BoQ Template:** See `tables/boq_item_template.json` for the standard item structure linking each BoQ item to its source skill.

### M.2.2 Country-Specific Formulas

No country-specific formulas. Measurement principles are universal. Quantities are derived from upstream technical skills.

### M.2.3 Classification System

Not applicable to BoQ preparation. Road classification is handled by geometric design skills. The BoQ structure is the same regardless of road class.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda BoQ Practice:**

1. **Item numbering:** UNRA uses item numbers based on MoWT specification sections. The `boq_item_template.json` provides illustrative numbering. Verify against the specific contract's standard specifications.

2. **Provisional sums:** Uganda contracts typically include the following as separate provisional sum items:
   - Dayworks (labour, equipment, materials at scheduled rates)
   - Price escalation (per FIDIC Sub-Clause 13.8, using Bank of Uganda construction cost indices)
   - Contingencies (physical contingency as percentage -- see Skill #50)
   - Community development contributions (where required by donor agreements)

3. **FIDIC measurement rules:** Under FIDIC Red Book, quantities in the BoQ are estimated quantities. The Contractor is paid for actual measured quantities. If actual quantities differ significantly from BoQ quantities (typically >25%), either party may request a rate review per Sub-Clause 12.3.

4. **Currency:** BoQ priced in UGX (Uganda Shillings). For donor-funded projects, a foreign currency component (typically USD) may be allowed for imported items (bitumen, steel, equipment parts).

### M.3.2 Professional Judgment (Country-Specific)

- **Borrow materials:** In Uganda, gravel borrow areas are often distant from the project site in some regions. BoQ items for "fill from approved borrow" should include a note on assumed haul distance. The rate is highly sensitive to haulage.
- **Rock excavation:** Distinguish between rippable rock and blasting-required rock. Blasting requires permits from the Department of Geological Survey and Mines and is a significant cost premium.
- **Bitumen supply:** Bitumen is imported (no domestic refinery). Include bitumen as a separate supply item if using a bitumen-supply contract model, or incorporate into surface treatment rates.
- **Culvert rings vs pipe:** In Uganda, pre-cast concrete pipe culverts are common up to 900mm diameter. Larger sizes use reinforced concrete box culverts. Some projects use corrugated metal pipes (CMP) in temporary or low-traffic applications.

### M.3.3 Common Errors (Country-Specific)

1. **Omitting community access roads:** Some UNRA contracts require provision of community access roads as part of the works. These should appear in Bill 6 (Miscellaneous).
2. **Not separating rock excavation:** Uganda terrain includes significant rock in Western and South-Western regions. Failing to separate rock from common excavation leads to claims.
3. **Underestimating headwall quantities:** Each culvert crossing requires inlet and outlet headwalls. Common error is counting culvert barrels but forgetting headwalls (typically 2 per crossing).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| BoQ format | FIDIC Red Book | UNRA contracts | ASSUMED: FIDIC Red Book format. Verify contract documents. | Standard for Uganda national roads |
| Item numbering | MoWT specification sections | All contracts | ASSUMED: MoWT standard item numbering. Verify with contract documents. | UNRA standard practice |
| Currency | UGX | All contracts | ASSUMED: Uganda Shillings. Check if foreign currency component allowed. | Standard practice |
| Wastage (granular) | 5% | Sub-base, base course | ASSUMED: 5% wastage. Adjust based on material source and haul distance. | Industry norm |
| Wastage (bitumen) | 3% | Sprays and surface treatment | ASSUMED: 3% wastage. Adjust for application method. | Industry norm |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Number of Bills | 5 | 8 | count | FIDIC practice | Review BoQ structure |
| Dayworks provision | 2 | 8 | % of total | UNRA practice | Flag if outside 3-5% |
| Preliminary items | 3 | 15 | count | Practice | Review if <5 (may be missing items) |

### M.5.2 Standards Compliance Checks

- **Check:** All earthworks items have corresponding specification section reference
- **Standard:** MoWT General Specifications Section 2
- **Pass condition:** Each earthworks item references a specification section
- **Fail action:** Add specification reference

- **Check:** Culvert items distinguish pipe culverts from box culverts
- **Standard:** MoWT General Specifications Sections 7/8
- **Pass condition:** Separate items for pipe and box culverts with size specified
- **Fail action:** Separate items by type and size

### M.5.3 Departures / Relaxations Process

No formal departures process for BoQ format. However, the Particular Conditions may specify alternative BoQ formats or additional items. Always check Particular Conditions before finalising the BoQ.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Rock excavation quantity >20% of total earthworks | Significant cost impact in Uganda | SENIOR REVIEW -- High rock percentage. Consider geophysical survey to refine quantities. |
| Bridge items present but no structural design | Cannot quantify without design | SENIOR REVIEW -- Bridge quantities require Skill #37/#38 output. Flag quantities as provisional. |
| Haul distance >15 km for borrow | Cost-sensitive item | SENIOR REVIEW -- Long haul distance for borrow material. Verify borrow source and consider alternative sources. |

---

## M.7 Worked Example -- Uganda

### Example: 15 km Rural Trunk Road Upgrade

**Source:** Illustrative UNRA project (all quantities approximate for methodology demonstration)

**Given:**
- Road: 15 km rural trunk road upgrade, Lira-Kamdini corridor
- Earthworks (Skill #26 output): 45,000 m3 cut, 38,000 m3 fill, 7,000 m3 surplus to spoil
- Borrow (Skill #27 output): 5,000 m3 from approved borrow at average 8 km haul
- Pavement (Skill #21 output): 150mm natural gravel sub-base, 200mm crushed stone base, DBST surface
- Drainage (Skill #31 output): 12 pipe culverts (8 x 600mm, 4 x 900mm) at average 12m length, 3 RC box culverts 1.5x1.5m at average 10m length
- No bridges
- Road width: 6.5m carriageway + 1.5m shoulders each side = 9.5m total
- Corridor width for clearing: 30m

**Solution:**

**Bill 1: Preliminary & General**

| Item | Description | Unit | Quantity |
|------|-------------|------|----------|
| 1.01 | Mobilization and establishment of camp and facilities | LS | 1 |
| 1.02 | Performance Security (per FIDIC Sub-Clause 4.2) | LS | 1 |
| 1.03 | Insurance of Works (per FIDIC Sub-Clause 18.1) | LS | 1 |
| 1.04 | Traffic management during construction | LS | 1 |
| 1.05 | Environmental management and monitoring | LS | 1 |
| 1.06 | Health and safety management | LS | 1 |

**Bill 2: Earthworks**

| Item | Description | Unit | Quantity |
|------|-------------|------|----------|
| 2.01 | Clearing and grubbing | ha | 45.0 |
| 2.02 | Topsoil stripping and stockpiling (150mm depth) | m3 | 67,500 |
| 2.03 | Excavation in common material to spoil (haul <1 km) | m3 | 7,000 |
| 2.04 | Excavation in common material for re-use as fill | m3 | 38,000 |
| 2.05 | Rock excavation (provisional) | m3 | 2,000 |
| 2.06 | Fill from approved borrow areas (average haul 8 km) | m3 | 5,000 |
| 2.07 | Compaction of fill in layers not exceeding 200mm | m3 | 43,000 |

**Bill 3: Pavement Layers**

| Item | Description | Unit | Quantity |
|------|-------------|------|----------|
| 3.01 | Natural gravel sub-base course, 150mm compacted thickness | m3 | 22,444 |
| 3.02 | Crushed stone base course, 200mm compacted thickness | m3 | 29,925 |
| 3.03 | Prime coat -- MC-30 cutback bitumen | m2 | 142,500 |
| 3.04 | Double bituminous surface treatment (DBST) | m2 | 142,500 |

**Bill 4: Drainage**

| Item | Description | Unit | Quantity |
|------|-------------|------|----------|
| 4.01 | Excavation for side drains -- trapezoidal section | m3 | 13,500 |
| 4.02 | 600mm diameter pipe culvert -- supply and installation | m | 96 |
| 4.03 | 900mm diameter pipe culvert -- supply and installation | m | 48 |
| 4.04 | RC box culvert 1.5m x 1.5m -- complete | m | 30 |
| 4.05 | Headwalls and wingwalls -- standard type | number | 30 |
| 4.06 | Gabion basket erosion protection at culvert outlets | m3 | 150 |

**Bill 5: Structures**
Not applicable -- no bridges on this project.

**Bill 6: Miscellaneous**

| Item | Description | Unit | Quantity |
|------|-------------|------|----------|
| 6.01 | Road signs -- warning and regulatory | number | 30 |
| 6.02 | Kilometre marker posts | number | 16 |
| 6.03 | Road markings -- centre line | m | 15,000 |
| 6.04 | Landscaping and re-vegetation | ha | 5 |

**Bill 7: Dayworks**

| Item | Description | Unit | Quantity |
|------|-------------|------|----------|
| 7.01 | Dayworks -- unskilled labour | PS | 1 |
| 7.02 | Dayworks -- skilled labour | PS | 1 |
| 7.03 | Dayworks -- equipment | PS | 1 |
| 7.04 | Dayworks -- materials | PS | 1 |

**Verification:** Quantities cross-checked against upstream skill outputs. Earthworks balance: 45,000 m3 cut = 38,000 m3 fill + 7,000 m3 spoil. Borrow 5,000 m3 provides additional fill where cut is insufficient locally (mass haul optimisation from Skill #27).

---

## M.8 References

1. MoWT General Specifications for Road and Bridge Works, Ministry of Works and Transport, Uganda, 2005
2. FIDIC Conditions of Contract for Construction (Red Book), 1st Edition, 1999
3. UNRA Standard Bidding Documents, various editions
4. World Bank Standard Procurement Documents, 2017

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft |
