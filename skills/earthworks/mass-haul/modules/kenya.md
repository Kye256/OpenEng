# Mass Haul -- Kenya Module

> **Parent Skill:** #27 Mass Haul
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Standard Specification for Road and Bridge Construction (2025); Kenya RDM 3.3: Pavement Foundation and Materials Design (2025), Chapter 5
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Haul payment categories (free haul, overhaul thresholds), material acceptance at source | Current -- mandatory for construction |
| Kenya RDM 3.3 | 2025 | Chapter 5 (Earthworks -- volumes context), Chapter 8 (Materials -- quality at source) | Current -- mandatory for design |
| Kenya RDM 3.1 | 2025 | Chapter 8 (Borrow pit investigation and material prospecting) | Current |

### M.1.2 Institutional Context

Mass haul analysis in Kenya uses universal methods but is governed by Kenya-specific contract conditions for payment. The Standard Specification defines free haul distances and overhaul payment categories.

- **KeNHA:** National trunk roads (Classes A, B, C). Large-scale projects with potentially long haul distances; multiple material sources typical.
- **KeRRA:** Rural and county roads (Classes D, E). Borrow pit availability may be limited in remote areas; haul economics significantly affect project cost.
- **KURA:** Urban authorities (Classes UA, UC, UL). Haul constrained by urban traffic; night haulage common to reduce congestion.
- **County Governments:** Local access roads. Emphasis on local material use to minimise haul cost.

All agencies use the same Standard Specification for haul payment definitions.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

### M.1.3 Standard Philosophy

Kenya road contracts follow FIDIC-based conditions with locally specified free haul distances and overhaul measurement methods defined in the Standard Specification and Bills of Quantities. The Standard Specification distinguishes between different haul categories and establishes payment thresholds. Mass haul optimisation in Kenya must balance material quality (G-code requirements from RDM 3.3) against haul distance economics and environmental management requirements (NEMA borrow pit regulations).

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Haul Payment Categories

**Table KM.1: Standard Specification Haul Payment Categories**

| Category | Distance | Payment Basis | Description |
|----------|----------|--------------|-------------|
| Free haul | Up to 500m | Included in earthworks unit rate | Material moved within 500m of source -- no separate haul payment |
| Overhaul (short) | 500m to 1.5km | Per m3-km beyond free haul | First overhaul band; relatively economical |
| Overhaul (medium) | 1.5km to 5km | Per m3-km beyond free haul | Intermediate haul; truck cycle time increases significantly |
| Overhaul (long) | Beyond 5km | Per m3-km beyond free haul | Long haul; may be cheaper to open alternative borrow pit |

**Notes:**
- Free haul distance of 500m is the Standard Specification default. Contract-specific Particular Conditions may modify this.
- Overhaul is measured from the centre of gravity of the cut zone to the centre of gravity of the fill zone, minus the free haul distance.
- Payment is per m3 of compacted fill multiplied by the overhaul distance in km.

### M.2.2 Material Source Availability by Region

**Table KM.2: Kenya Material Source Availability**

| Region | Primary Material Sources | Typical Haul Distance | Material Quality (CBR range) | Constraints |
|--------|------------------------|----------------------|----------------------------|-------------|
| Rift Valley | Volcanic rock quarries, limited laterite | 5-20km | 30-80% (quarried rock); 2-8% (local black cotton) | Black cotton widespread -- must import fill from distant sources |
| Western Kenya | Abundant laterite (red murram), quarries | 2-8km | 15-45% (laterite); 40-80% (quarried) | Laterite quality variable; wet season access issues |
| Central Highlands | Volcanic soil, weathered basalt, murram | 2-10km | 20-60% | Good material generally available; terrain increases haul cost |
| Coastal | Coral aggregate, sand, limited laterite | 3-15km | 15-40% (coral); 5-20% (sand) | Salt contamination risk; limited options inland from coast |
| Northern/Eastern | Sparse gravel sources, sand | 10-30km+ | 8-25% | Material sources scarce; long haul distances are the norm |
| Mt. Kenya / Aberdares | Weathered basalt, volcanic aggregate | 2-8km | 30-70% | Excellent material but steep haul routes increase cost |

### M.2.3 Environmental Considerations for Borrow Pit Management

**NEMA (National Environment Management Authority) Requirements:**
- **Environmental Impact Assessment (EIA):** Required for all borrow pits exceeding 5,000 m2 in area. NEMA licence must be obtained before excavation commences.
- **Borrow pit restoration:** Contractual requirement on all government-funded projects. Includes re-shaping slopes, topsoil replacement, and re-vegetation. Restoration cost typically 5-15% of borrow pit excavation cost.
- **Water management:** Borrow pits must not intercept or contaminate water courses. Drainage management plan required.
- **Depth limitation:** Excavation depth typically limited to above the water table. Deeper excavation requires specific NEMA approval.
- **Community consultation:** Required for borrow pits near settlements. Land compensation may apply.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Determine free haul distance
  +-- Check contract Particular Conditions for specified free haul distance
  +-- If not specified, use Standard Specification default: 500m
  +-- Flag if contract value differs from 500m standard

Step 5 (Kenya): Balance line optimisation
  +-- Consider material quality at each potential borrow source (G-code from RDM 3.3)
  +-- Balance quality vs haul distance:
      +-- A closer borrow pit with CBR 15% (G15) may suffice for lower fill
      +-- But upper 600mm requires G15 minimum -- verify source material
  +-- Factor in NEMA restoration costs for new borrow pits
  +-- Consider seasonal access (wet season haul route condition)

Step 7 (Kenya): Borrow pit selection
  +-- Identify candidate borrow pits from RDM 3.1 Chapter 8 investigation
  +-- Assess material suitability with Skill #28 Kenya module
  +-- Compare: cost = (haul distance x overhaul rate) + (extraction cost) + (NEMA restoration cost)
  +-- Prefer sources with CBR > 25% (G25+) to maximise reuse across embankment zones
  +-- Environmental: minimise number of borrow pits (fewer NEMA licences, less restoration)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya's regional material availability creates significant haul cost variation.** In Western Kenya and the Central Highlands, good laterite is often available within 5 km. In the Rift Valley and Northern Kenya, suitable fill material may need to be hauled 15-30 km or more. Mass haul optimisation on these projects can represent 20-40% of total earthworks cost.

**Material quality vs haul distance is the central Kenya trade-off.** The RDM 3.3 G-code system means not all fill is equal. A borrow pit at 2 km with CBR 10% (G10) can only be used for embankment core. For the upper 600mm, material with CBR >= 15% (G15) is mandatory. It may be cheaper to haul G25 material from 8 km than to use local G10 material and import G15 separately for the upper zone.

**Black cotton soil areas (Rift Valley) create extreme haul situations.** When the alignment traverses black cotton soil, the local material is unsuitable for any fill zone. All fill must be imported from distant sources. Mass haul diagrams for Rift Valley projects often show persistent deficit with no local balance possible.

**NEMA borrow pit costs affect haul economics.** The cost of opening and restoring a borrow pit in Kenya includes EIA preparation (typically 2-4 weeks), NEMA licence fees, community compensation, and mandatory restoration. These fixed costs mean that fewer, larger borrow pits are generally more economical than many small ones.

**Seasonal factors significantly affect haul productivity.** During the long rains (March-May) and short rains (October-December), unpaved haul routes deteriorate rapidly. Haul productivity can drop by 30-50% during wet periods. For projects with significant haul, scheduling earthworks during dry periods (January-February, June-September) is critical.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using a single material source without checking G-code compliance for all embankment zones.** Different zones require different minimum CBR. A single borrow pit may not serve all zones.
2. **Ignoring NEMA borrow pit restoration costs.** Restoration is mandatory and can significantly affect borrow-vs-overhaul economics.
3. **Not accounting for seasonal haul route condition.** Haul roads deteriorate in wet seasons; haul productivity and cost change significantly.
4. **Assuming local material is suitable without testing.** Kenya's diverse geology means material quality varies over short distances. Test before committing to a borrow source.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Free haul distance | 500 m | Contract not specified | ASSUMED: Free haul 500m per Kenya Standard Specification. Verify with contract Particular Conditions. | Standard Specification default |
| Overhaul unit | m3-km | Contract not specified | ASSUMED: Overhaul per m3-km beyond free haul. Verify with contract BoQ. | Standard Specification payment basis |
| Borrow pit restoration cost | 10% of extraction cost | Not specified | ASSUMED: Borrow pit restoration at 10% of extraction cost. Verify with NEMA requirements and contract conditions. | Typical Kenya project experience |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Free haul distance | 200 | 1,000 | m | Standard Specification | Warn if outside 300-500m typical Kenya range |
| Overhaul distance | 0 | 30,000 | m | Engineering practice | Warn if > 10km (very long haul; consider alternative source) |
| Borrow volume | 0 | 500,000 | m3 | Engineering practice | Warn if > 100,000 m3 (major borrow operation; NEMA EIA mandatory) |

### M.5.2 Standards Compliance Checks

- **Check:** Borrow material meets G-code requirements for designated fill zone
- **Standard:** RDM 3.3 Chapter 8, Standard Specification
- **Pass condition:** Material CBR at source >= minimum for fill zone (G15 for upper 600mm, G5 for lower fill, G3 for core)
- **Fail action:** REJECT -- Borrow material does not meet minimum strength for [zone]. Source alternative material or designate for lower zone only.

- **Check:** Free haul distance consistent with contract
- **Standard:** Standard Specification, Contract Particular Conditions
- **Pass condition:** Free haul distance from contract used
- **Fail action:** NOTE -- Free haul distance assumed at 500m. Verify with contract documents.

### M.5.3 Departures / Relaxations Process

Not applicable -- mass haul methods are universal. Contract terms govern free haul and overhaul definitions. Material quality departures require approval per Standard Specification with supporting test evidence.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Borrow volume > 10,000 m3 | Large borrow operation -- NEMA EIA required | SENIOR REVIEW -- Borrow requirement [X] m3. NEMA Environmental Impact Assessment required. Borrow pit investigation per RDM 3.1 Chapter 8. Assess material suitability with Skill #28 Kenya module. |
| Overhaul distance > 5 km | Very expensive haul | SENIOR REVIEW -- Overhaul distance [X] km for segment [Y-Z]. At this distance, a new borrow pit may be more economical. Compare overhaul cost vs borrow pit opening + restoration cost. |
| Black cotton soil zone with no local fill available | All fill must be imported -- major cost impact | SENIOR REVIEW -- Black cotton soil zone at stations [X-Y]. No suitable fill within [Z] km. All fill must be imported. Assess vertical alignment adjustment to minimise fill requirement. |
| Multiple borrow pits required (> 3) | Complex logistics and multiple NEMA licences | NOTE -- [N] borrow pits identified. Each requires separate NEMA licence and restoration plan. Consider consolidating to fewer, larger pits. |
| Wet season construction with > 5km haul | Haul productivity severely impacted | NOTE -- If construction during wet season (March-May, October-December), haul productivity may drop 30-50%. Adjust programme or consider alternative closer sources. |

---

## M.7 Worked Example -- Kenya

### Example: Mass Haul Optimisation for a Kenya Road with Multiple Material Sources

**Source:** Typical Kenya mass haul calculation.

**Given:**
- Road: Class B Paved (national trunk road, Western Kenya)
- Free haul distance: 500 m (Standard Specification default)
- Alignment length: 2.0 km (20 stations at 100m intervals)
- Total cut volume (in-situ): 12,500 m3 (from Skill #26)
- Total fill volume (shrinkage-adjusted): 18,200 m3 (shrinkage factor 1.20 applied)
- Net earthworks balance: -5,700 m3 (borrow needed)
- Three potential borrow pit sources available:

| Borrow Pit | Distance from Fill Centroid | Material | CBR | G-Code | Estimated Quantity Available |
|-----------|---------------------------|----------|-----|--------|----------------------------|
| BP-1 | 3 km | Laterite (poor) | 12% | G10 | 8,000 m3 |
| BP-2 | 7 km | Laterite (good) | 35% | G30 | 15,000 m3 |
| BP-3 | 12 km | Weathered basalt | 55% | G45 | 20,000 m3 |

**Solution:**

**Step 1 -- Assess material suitability for each borrow source (Skill #28 cross-reference):**

| Borrow Pit | G-Code | Suitable for Upper 600mm (G15 min)? | Suitable for Lower Fill (G5 min)? | Suitable for Core (G3 min)? |
|-----------|--------|-------------------------------------|----------------------------------|----------------------------|
| BP-1 (CBR 12%) | G10 | NO | YES | YES |
| BP-2 (CBR 35%) | G30 | YES | YES | YES |
| BP-3 (CBR 55%) | G45 | YES | YES | YES |

**Step 2 -- Determine fill zone requirements:**

Assuming a 7.5m carriageway width with 1.5m shoulders, average fill height 2.5m:
- Upper 600mm: approximately 30% of total fill volume = 5,460 m3 (requires G15 minimum)
- Lower fill and core: approximately 70% of total fill volume = 12,740 m3 (requires G5 minimum)

The 5,700 m3 borrow deficit applies to the overall balance. Since cut material (laterite, CBR ~25%) is suitable for all zones, the borrow material primarily supplements fill in sections where cut is insufficient.

**Step 3 -- Compare borrow options:**

**Option A: All borrow from BP-1 (3 km, G10)**
- Cannot be used for upper 600mm. Would need to reserve sufficient cut material (G25+) for upper layers at fill locations, and use BP-1 material only for lower fill.
- Haul cost: 5,700 m3 x (3.0 - 0.5) km overhaul = 14,250 m3-km
- NEMA restoration: ~10% of extraction = moderate
- Risk: Complex material management (zone-specific placement)

**Option B: All borrow from BP-2 (7 km, G30)**
- Suitable for all fill zones. Simpler material management.
- Haul cost: 5,700 m3 x (7.0 - 0.5) km overhaul = 37,050 m3-km
- NEMA restoration: ~10% of extraction = moderate
- Risk: Higher haul cost but simpler construction

**Option C: Split borrow -- BP-1 for lower fill, BP-2 for upper 600mm**
- BP-1 (lower fill): 3,700 m3 x (3.0 - 0.5) km = 9,250 m3-km
- BP-2 (upper 600mm): 2,000 m3 x (7.0 - 0.5) km = 13,000 m3-km
- Total overhaul: 22,250 m3-km
- Two NEMA licences required
- Best balance of cost and quality compliance

**Step 4 -- Recommended solution:**

Option C (split borrow) provides the lowest total haul cost while ensuring material quality compliance. However, it requires managing two borrow pit operations with two NEMA licences.

| Parameter | Value | Unit |
|-----------|-------|------|
| Total cut moved (within alignment) | 12,500 | m3 |
| Total fill required (shrinkage-adjusted) | 18,200 | m3 |
| Net borrow requirement | 5,700 | m3 |
| Recommended borrow strategy | Option C (split) | -- |
| BP-1 contribution (lower fill) | 3,700 | m3 |
| BP-2 contribution (upper 600mm) | 2,000 | m3 |
| Total overhaul quantity | 22,250 | m3-km |
| Free haul distance | 500 | m (per Standard Specification) |

SENIOR REVIEW -- Borrow requirement of 5,700 m3 (31% of total fill). Two borrow pit sources recommended. Each requires NEMA Environmental Impact Assessment. Borrow material suitability confirmed with Skill #28 Kenya module.

NOTE -- Free haul distance 500m per Standard Specification. Overhaul charged per m3-km beyond free haul. NEMA borrow pit restoration costs to be included in project cost estimate.

> Cross-reference: Skill #26 Kenya module for earthworks volume calculations. Skill #28 Kenya module for material suitability assessment at borrow source.

---

## M.8 References

1. Ministry of Roads and Transport (Kenya), *Standard Specification for Road and Bridge Construction*, 2025 -- Haul payment categories, free haul/overhaul definitions, borrow pit requirements.
2. Ministry of Roads and Transport (Kenya), *Road Design Manual Part 3: Pavement Foundation and Materials Design (RDM 3.3)*, 2025 -- Chapter 5 (Earthworks), Chapter 8 (Material classification).
3. Ministry of Roads and Transport (Kenya), *Road Design Manual Part 3: Ground Investigations (RDM 3.1)*, 2025 -- Chapter 8 (Borrow pit investigation and material prospecting).
4. National Environment Management Authority (NEMA), *Environmental Impact Assessment Guidelines*, Kenya -- Borrow pit environmental requirements.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- Kenya haul payment categories, regional material availability, NEMA borrow pit requirements, worked example with multiple material sources. |
