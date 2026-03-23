# Mass Haul -- Uganda Module

> **Parent Skill:** #27 Mass Haul
> **Country/Jurisdiction:** Uganda
> **Standards:** No specific MoWT reference -- universal mass haul theory applies
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| No specific MoWT mass haul standard | -- | Universal methods apply | -- |
| Uganda Standard Conditions of Contract | Various | Free haul and overhaul definitions | Contract-specific |

### M.1.2 Institutional Context

There is no dedicated MoWT volume or section for mass haul analysis. Mass haul theory is universal and is applied in Uganda using the same methods as elsewhere. The Uganda-specific aspects are: (a) typical free haul distances used in Uganda road contracts, (b) overhaul measurement conventions, and (c) borrow pit considerations (laterite availability, environmental restoration requirements).

### M.1.3 Standard Philosophy

Uganda road contracts follow FIDIC-based conditions with locally specified free haul distances and overhaul measurement methods. The free haul distance and overhaul payment methods are defined in the Bills of Quantities and contract conditions, not in the design manuals.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UM.1: Typical Free Haul Distances in Uganda Road Contracts**

| Road Type | Typical Free Haul Distance | Notes |
|-----------|---------------------------|-------|
| Gravel roads (community access) | 200 m | Small-scale contracts |
| District/feeder roads (gravel) | 200 - 300 m | Standard UNRA contracts |
| Paved trunk roads (Class I-II) | 300 - 500 m | Major UNRA/donor-funded contracts |
| Expressways / major projects | 500 m | Large-scale contracts |

**Source:** Based on typical Uganda road contract conditions. Always verify with actual contract documents.

**Table UM.2: Overhaul Measurement Conventions**

| Convention | Unit | Description |
|-----------|------|-------------|
| Per m3-station | m3 x 500m | Overhaul charged per cubic metre moved per 500m station beyond free haul |
| Per m3-km | m3 x km | Alternative: per cubic metre moved per kilometre beyond free haul |

### M.2.2 Country-Specific Formulas

No Uganda-specific formulas. Mass haul methods are universal.

### M.2.3 Classification System

Not applicable -- mass haul is a universal engineering method.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Determine free haul distance
  +-- Check contract documents for specified free haul distance
  +-- If not specified, use Table UM.1 for road type
  +-- Default: 200m for gravel roads, 300m for paved trunk roads

Step 7 (Uganda): Borrow pit considerations
  +-- Laterite (murram) borrow pits are common and widely available
  +-- Check material suitability with Skill #28
  +-- Environmental restoration of borrow pit required after use
  +-- Haul distance from borrow pit to fill location affects cost
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Uganda road projects often have significant earthworks in rolling/mountainous terrain.** Western Uganda (Fort Portal-Kasese, Kabale-Kisoro) and eastern Uganda (Mbale-Kapchorwa) frequently involve large earthworks volumes. Mass haul optimization on these projects can significantly reduce costs.

**Laterite borrow pits are common throughout Uganda.** Uganda has abundant laterite deposits suitable for fill and sub-base. Borrow pit identification is usually straightforward, but material quality varies. Always assess suitability with Skill #28 before committing to a borrow source.

**Environmental requirements for borrow pits.** Uganda's National Environmental Management Authority (NEMA) requires Environmental Impact Assessments for borrow pits. Borrow pit restoration (re-shaping, topsoil replacement, re-vegetation) is a contract requirement on all major projects. The cost of borrow pit restoration should be factored into the borrow-vs-overhaul economic comparison.

**Direction of haul matters in hilly terrain.** Many Uganda road projects run through valleys or along ridges. Downhill haul is cheaper (gravity assists, less fuel, higher truck speed). When choosing between two balance line positions, prefer the one that results in more downhill material movement.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using a free haul distance from a previous contract.** Free haul distances vary between contracts. Always use the value from the current contract documents.
2. **Not accounting for borrow pit restoration costs.** In Uganda, NEMA requires borrow pit restoration. The cost of restoration can make nearby borrow less attractive than expected.
3. **Ignoring haul route condition.** In rural Uganda, haul routes may be on unpaved roads. During rainy seasons, haul productivity drops significantly. This affects the economics of overhaul vs borrow.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Free haul distance (paved trunk) | 300 m | Contract not specified | ASSUMED: Free haul 300m (typical Uganda trunk road contract). Verify with contract. | Typical UNRA contract |
| Free haul distance (gravel) | 200 m | Contract not specified | ASSUMED: Free haul 200m (typical Uganda gravel road contract). Verify with contract. | Typical district contract |
| Overhaul unit | m3-station (500m) | Contract not specified | ASSUMED: Overhaul per m3-station (500m). Verify with contract. | Common measurement |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Free haul distance | 100 | 500 | m | Contract | Warn if outside typical Uganda range |
| Overhaul distance | 0 | 5,000 | m | Engineering practice | Warn if > 3,000m (very long haul in Uganda context) |

### M.5.2 Standards Compliance Checks

- **Check:** Free haul distance consistent with contract
- **Standard:** Contract documents
- **Pass condition:** Free haul distance from contract used
- **Fail action:** NOTE -- Free haul distance assumed. Verify with contract documents.

### M.5.3 Departures / Relaxations Process

Not applicable -- mass haul methods are universal. Contract terms govern free haul and overhaul definitions.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Borrow volume > 5,000 m3 | Large borrow pit needed | SENIOR REVIEW -- Borrow requirement [X] m3. NEMA Environmental Impact Assessment required for borrow pit. Assess material suitability (Skill #28). |
| Overhaul distance > 3 km | Very expensive in Uganda context | SENIOR REVIEW -- Overhaul distance [X] km. Consider local borrow pit as cheaper alternative. |
| Rainy season construction | Haul productivity impact | NOTE -- If construction during rainy season (March-May, September-November), reduce haul productivity assumptions and consider borrow vs overhaul economics accordingly. |

---

## M.7 Worked Example -- Uganda

### Example: Five-Station Mass Haul on Trunk Road

**Source:** Typical Uganda mass haul calculation.

**Given:**
- Road: Class II paved trunk road (western Uganda)
- Free haul distance: 200 m (contract specification)
- Stations at 100 m intervals
- Net volumes (cut minus shrinkage-adjusted fill) at each station interval:

| Station Interval | Chainage | Net Volume (m3) | Direction |
|-----------------|----------|-----------------|-----------|
| 1-2 | 0+000 to 0+100 | +200 | Cut dominant |
| 2-3 | 0+100 to 0+200 | +150 | Cut dominant |
| 3-4 | 0+200 to 0+300 | -100 | Fill dominant |
| 4-5 | 0+300 to 0+400 | -300 | Fill dominant |
| 5-6 | 0+400 to 0+500 | +50 | Cut dominant |

**Solution:**

**Step 1 -- Compute mass ordinates:**

| Station | Chainage | Net Volume (m3) | Mass Ordinate (m3) |
|---------|----------|-----------------|--------------------|
| 1 | 0+000 | -- | 0 |
| 2 | 0+100 | +200 | 200 |
| 3 | 0+200 | +150 | 350 |
| 4 | 0+300 | -100 | 250 |
| 5 | 0+400 | -300 | -50 |
| 6 | 0+500 | +50 | 0 |

**Step 2 -- Interpret mass haul diagram:**
- The mass curve rises from 0 to a peak of 350 m3 at station 3 (chainage 0+200) -- this is the cut zone.
- The curve then falls to a trough of -50 m3 at station 5 (chainage 0+400) -- this is the fill zone.
- The curve rises slightly to 0 m3 at station 6 (chainage 0+500).
- Final mass ordinate = 0 m3 -- **the project is balanced overall** (total cut equals total shrinkage-adjusted fill).

**Step 3 -- Select balance line:**
Since the final mass ordinate is 0, the horizontal axis (mass ordinate = 0) is a natural balance line. The curve starts at 0 and returns to 0.

**Step 4 -- Determine free haul and overhaul:**
The balance line at M = 0 intersects the mass curve at chainage 0+000 and 0+500. The total zone length is 500 m. The free haul distance is 200 m.

The peak is at chainage 0+200 (M = 350) and the trough is at approximately chainage 0+400 (M = -50). Material moves from peak to trough, a distance of approximately 200 m.

Since the haul distance from the centre of gravity of the cut zone (~0+100) to the centre of gravity of the fill zone (~0+350) is approximately 250 m, the free haul is 200 m and the remaining 50 m is overhaul.

Free haul volume: approximately 350 m3 (bulk of the material moves within ~200m).
Overhaul: the portion of material hauled beyond 200m.

For a more precise determination, the free haul zone would be delineated on the mass haul diagram by drawing a horizontal line of 200m width at the balance line level and measuring the enclosed volume.

**Step 5 -- Borrow and spoil:**
Final mass ordinate = 0. The project is balanced -- no borrow or spoil required.

**Result:**

| Parameter | Value | Unit |
|-----------|-------|------|
| Total cut moved | 350 | m3 (peak mass ordinate) |
| Total fill received | 350 | m3 (shrinkage-adjusted) |
| Final mass ordinate | 0 | m3 |
| Status | Balanced | -- |
| Free haul distance | 200 | m |
| Primary haul direction | Forward (0+100 to 0+350) | -- |
| Borrow required | None | -- |
| Spoil generated | None | -- |

NOTE -- Free haul distance 200m per contract. Overhaul quantity to be refined with detailed mass haul diagram construction. Consider haul direction (terrain profile) for cost optimisation.

---

## M.8 References

1. Universal mass haul theory -- standard textbook references (e.g., Garber & Hoel, *Traffic and Highway Engineering*; Wright & Dixon, *Highway Engineering*).
2. Uganda Standard Conditions of Contract (FIDIC-based) -- for free haul and overhaul definitions.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Uganda free haul distances, borrow pit context, worked example with 5-station mass haul. |
