# Design Vehicle -- Kenya Module

> **Parent Skill:** #18 Design Vehicle & Swept Path
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.3: Geometric Design of Highways, Rural Roads and Urban Roads (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.3 | 2025 | Section 3.5 (Design Vehicle), Section 3.6 (Motorcyclists), Section 5.8 (Minimum Turning Radii) | Current -- mandatory for all classified roads in Kenya |

### M.1.2 Institutional Context

Same as Skill #13 Kenya module. The Kenya design vehicle fleet is harmonised for EAC Partner States (Section 3.5).

### M.1.3 Standard Philosophy

Kenya RDM 1.3 defines 9 design vehicles (DV1-DV9) harmonised across the East African Community. For high-volume roads, the design vehicle should be a truck and trailer except for very severe escarpment terrain. The absolute minimum horizontal curve radius is 15 m (Section 5.8), which accommodates all vehicle categories. The RDM also includes motorcycle dimensions (Table 4.8) reflecting the significance of boda-boda traffic in Kenya.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Design vehicle dimensions:** Reference JSON table.

--> `tables/kenya_design_vehicles.json`

Contains DV1-DV9 dimensions from Table 3.3 and motorcycle characteristics from Table 4.8.

**Table KDV.1: Kenya Design Vehicle Summary (Table 3.3, RDM 1.3)**

| Design Vehicle | Code | Height (m) | Width (m) | Length (m) | Min Turning Radius (m) |
|---------------|------|-----------|----------|-----------|----------------------|
| 4x4 Utility (Passenger Car) | DV1 | 1.3 | 2.1 | 5.8 | 7.3 |
| Single Unit Bus | DV2 | 4.1 | 2.6 | 12.3 | 12.8 |
| Articulated Bus | DV3 | 3.4 | 2.6 | 18.3 | 12.1 |
| Single Unit Truck | DV4 | 4.3 | 2.6 | 11.0 | 12.8 |
| Truck + Semi-trailer | DV5 | 4.3 | 2.6 | 15.0 | 13.7 |
| Typical 5-axle Truck | DV6 | 4.6 | 2.6 | 18.5 | 13.7 |
| Rigid Truck + Drawbar Trailer | DV7 | 4.6 | 2.6 | 22.0 | 12.0 |
| Interlink (Short Tractor) | DV8 | 4.6 | 2.6 | 22.0 | 12.0 |
| Rigid Truck + Drawbar Trailer | DV9 | 4.6 | 2.6 | 22.0 | 13.7 |

**Source:** Kenya RDM 1.3, Table 3.3 (Verified from PDF)

**Table KDV.2: Motorcycle Characteristics (Table 4.8, RDM 1.3)**

| Parameter | Value |
|-----------|-------|
| Length | 2.6 m |
| Width | 1.0 m |
| Height (with rider) | 1.64 m |
| Turning radius | 3.0 m |

**Source:** Kenya RDM 1.3, Table 4.8 (Verified from PDF). For typical Kenya traffic with capacity less than 250 cc.

### M.2.2 Design Vehicle Selection Guidance

From Section 3.5 of RDM 1.3:

- High-volume roads: design vehicle should be a truck and trailer (DV5 or larger)
- Class A/B roads: DV5 (truck + semi-trailer) minimum; DV6/DV7 for major freight corridors
- Class C/D roads: DV4 (single unit truck) or DV5
- Class E and specialist roads: DV4 minimum, but accommodate occasional DV4
- Urban arterial (UA): DV5 to accommodate articulated vehicles
- Urban collector/local (UC, UL): DV2 (bus) or DV4 (truck)
- Very severe escarpment terrain: may reduce to DV4

**Matatu (minibus) consideration:** Kenya's matatu fleet typically uses vehicles equivalent to DV2 (single unit bus) or smaller. Matatus are a critical public transport mode on UC roads. The DV2 turning radius (12.8 m) and dimensions should be checked at bus stops and matatu stages.

### M.2.3 Comparison with Uganda

Kenya DV1-DV9 system differs from Uganda's P/SU/BUS/WB system:
- Kenya DV1 = Uganda P (passenger car): same dimensions (5.8m, 7.3m radius)
- Kenya DV4 = Uganda SU (single unit truck): Kenya 11.0m vs Uganda 9.2m -- **Kenya DV4 is longer**
- Kenya DV5 = Uganda WB-15: Kenya 15.0m vs Uganda 16.8m -- different lengths
- Kenya includes DV7/DV8/DV9 (22.0m combinations) not directly in Uganda tables
- Kenya absolute minimum R = 15 m (Section 5.8) vs Uganda 15 m (Section 8.3.1(c))

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Design vehicle selection
  +-- Class A/B (KeNHA trunk roads) -> DV5 or DV6
  +-- Class C (inter-county) -> DV4 or DV5
  +-- Class D (intra-county) -> DV4
  +-- Class E (sub-county) -> DV4 (but check for occasional DV5)
  +-- Specialist rural (F-W) -> DV4 minimum
  +-- Urban arterial UA -> DV5 (accommodate articulated vehicles)
  +-- Urban collector UC -> DV2 (bus/matatu) or DV4
  +-- Urban local UL -> DV1 or DV2
  +-- Expressway DR1 -> DV5 or DV6
  \-- Very severe escarpment -> may reduce to DV4 with justification
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Matatu stops and turning areas are critical design considerations.** Matatus (14-33 seat minibuses) are the primary public transport mode in Kenya. Junctions near matatu stages must accommodate DV2 turning movements. Lay-bys should follow Section 4.12 dimensions (15 m per bus, 3.5-4.0 m width).

**The motorcycle (boda-boda) fleet is growing rapidly.** While motorcycles do not govern geometric design (their turning radius of 3.0 m is well within all road standards), they are vulnerable at superelevation transitions, on loose surfaces, and at junctions. Section 3.6 requires motorcycle-friendly safety barriers and surface consistency.

### M.3.3 Common Errors (Kenya-Specific)

1. **Confusing Kenya DV codes with Uganda vehicle types.** Kenya uses DV1-DV9; Uganda uses P/SU/BUS/WB codes. The vehicles have different dimensions.
2. **Not providing for DV5 on Class A/B roads.** The RDM states that for high-volume roads, the design vehicle should be a truck and trailer.
3. **Ignoring matatu access at urban junctions.** UC road junctions must accommodate DV2 turning movements for matatu routes.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design vehicle (Class A/B) | DV5 | Not specified | ASSUMED: DV5 (truck + semi-trailer) for Class A/B road | RDM 1.3, Section 3.5 |
| Design vehicle (Class C/D) | DV4 | Not specified | ASSUMED: DV4 (single unit truck) -- verify truck traffic | RDM 1.3, Section 3.5 |
| Design vehicle (urban UC) | DV2 | Not specified | ASSUMED: DV2 (bus/matatu) for urban collector | Reflects matatu service patterns |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Junction turning radius | 15 | -- | m | RDM 1.3, Section 5.8 | Reject if < 15 m (absolute minimum) |

### M.5.2 Standards Compliance Checks

- **Check:** Junction turning radius accommodates the selected design vehicle
- **Pass condition:** R >= minimum turning radius for design vehicle (Table 3.3)
- **Fail action:** SENIOR REVIEW -- Junction radius [X]m is below design vehicle [DV] minimum [Y]m.

### M.5.3 Departures / Relaxations Process

Same formal departures process as other Kenya modules (Section 1.7).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Junction radius below design vehicle minimum | Vehicle cannot negotiate turn | SENIOR REVIEW -- Radius [X]m below DV[N] minimum [Y]m. Consider mountable kerbs, restricted access, or increased radius. |
| Design vehicle undersized for road class | Larger vehicles may use the road | NOTE -- DV4 selected for Class A/B road. RDM recommends truck and trailer (DV5+). Verify freight traffic composition. |

---

## M.7 Worked Example -- Kenya

### Example: Design Vehicle Selection for Class C Road

**Given:**
- Road: Class C inter-county road (D478-equivalent)
- Design Standard: DR3
- AADT: 2500 vpd
- Context: Rural, rolling terrain

**Solution:**

**Step 1 -- Select design vehicle:**
Class C road with moderate traffic. From Section 3.5 and decision logic: DV4 (single unit truck) is the minimum. Check whether DV5 is warranted by freight traffic composition.

AADT 2500 with typical 14% truck mix = 350 trucks/day. For DR3 standard, DV4 is appropriate.

**Step 2 -- Check turning radius:**
DV4 minimum turning radius: 12.8 m
Absolute minimum R = 15 m (Section 5.8)
15 m > 12.8 m -- the absolute minimum accommodates DV4.

**Step 3 -- Check junction design:**
All junctions must accommodate DV4 turning. Minimum kerb radius at T-junctions: 15 m.

**Result:**

| Parameter | Value |
|-----------|-------|
| Design vehicle | DV4 (Single Unit Truck) |
| Min turning radius | 12.8 m |
| Min junction radius | 15 m (Section 5.8) |
| Vehicle length | 11.0 m |
| Vehicle width | 2.6 m |

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Geometric Design, Part 3: Geometric Design of Highways, Rural Roads and Urban Roads (RDM 1.3)*, 2025. Sections 3.5, 3.6, 5.8.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- DV1-DV9 from Table 3.3 and motorcycle from Table 4.8 verified against Kenya RDM 1.3 PDF. EAC harmonised vehicles noted. |
