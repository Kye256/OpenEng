# Design Vehicle -- Ethiopia Module

> **Parent Skill:** #18 Design Vehicle & Swept Path
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geometric Design Manual - 2013, Section 5.3, Tables 5-2, 5-3
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geometric Design Manual | 2013 | Section 5.3 (Design Vehicles), Tables 5-2, 5-3, Table 8-3 (Curve Widening), Table 9-6 (Vertical Clearance) | Current -- mandatory for all ERA roads |

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) is the custodian of national road design standards. ERA manages the federal road network (trunk and link roads). Regional Roads Authorities manage regional roads (main access, collector, feeder). Design vehicle selection is determined by the Design Class (DC), which is driven by mid-life AADT.

ERA defines four design vehicles (DV1-DV4), a simpler classification than Kenya's nine (DV1-DV9) or Uganda's P/SU/BUS/WB system. The ERA approach assigns one design vehicle per DC through Table 5-3, providing a direct, unambiguous lookup.

### M.1.3 Standard Philosophy

ERA Section 5.3 defines the design vehicle as the largest vehicle that the road geometry must accommodate. The design vehicle determines minimum turning radius, curve widening, intersection geometry, and vertical clearance. ERA uses only four design vehicles, reflecting the practical vehicle fleet on Ethiopian roads: a 4x4 utility for feeder roads (DV1), single unit truck and bus for collector/access roads (DV2/DV3), and a truck with semi-trailer for trunk and link roads (DV4). The DC-to-design-vehicle mapping is deterministic -- there is no judgment required once the DC is established.

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Design Vehicle Dimensions (ERA Table 5-2)

| Code | Vehicle | Height (m) | Width (m) | Length (m) | Min Turn Radius (m) |
|------|---------|-----------|----------|-----------|---------------------|
| DV1 | 4x4 Utility | 1.3 | 2.1 | 5.8 | 7.3 |
| DV2 | Single unit truck | 4.1 | 2.6 | 11.0 | 12.8 |
| DV3 | Single unit bus | 4.1 | 2.6 | 12.1 | 12.8 |
| DV4 | Truck + semi-trailer | 4.1 | 2.6 | 15.2 | 13.7 |

**Source:** ERA GDM 2013, Table 5-2 (Verified from PDF)

**Notes:**
- DV2 and DV3 have the same width and turning radius but different lengths (11.0 m vs 12.1 m). DV3 is longer due to bus body configuration.
- DV4 is the largest design vehicle and governs geometry for DC4 through DC8. Its 13.7 m turning radius is the controlling dimension for intersection design on these roads.
- All vehicles except DV1 have the same width (2.6 m) and height (4.1 m).

### M.2.2 ERA Design Vehicle Assignment to Design Class (ERA Table 5-3)

| DC | Design Vehicle | Vehicle Type | Notes |
|----|---------------|-------------|-------|
| DC8 | DV4 | Truck + semi-trailer | Dual carriageway; DV4 governs all geometric parameters |
| DC7 | DV4 | Truck + semi-trailer | High-volume single carriageway |
| DC6 | DV4 | Truck + semi-trailer | Medium-volume paved |
| DC5 | DV4 | Truck + semi-trailer | Lower-volume paved |
| DC4 | DV4 | Truck + semi-trailer | Paved or unpaved; DV4 applies to both |
| DC3 | DV3 | Single unit bus | Lower-volume roads; bus access required |
| DC2 | DV3 | Single unit bus | Narrow paved or unpaved; bus is governing vehicle |
| DC1 | DV1 | 4x4 Utility | Feeder roads; minimum standard |

**Source:** ERA GDM 2013, Table 5-3 (Verified from PDF)

**Key observations:**
- DV4 covers five design classes (DC4-DC8), reflecting that semi-trailer trucks use all significant routes.
- DV2 (single unit truck) is not assigned as the standard design vehicle for any DC. It serves as a reference vehicle for specific checks (e.g., loading bays) but does not govern road geometry.
- DV3 (bus) governs DC2 and DC3, ensuring that public transport access is maintained even on lower-class roads.
- DV1 (4x4 utility) applies only to DC1 feeder roads, which are typically earth or gravel tracks.

### M.2.3 Comparison with Kenya and Uganda Design Vehicles

| ERA (Ethiopia) | Kenya RDM | Uganda MoWT | Notes |
|---------------|-----------|-------------|-------|
| DV1 (4x4, 5.8m, R=7.3m) | DV1 (4x4, 5.8m, R=7.3m) | P (5.8m, R=7.3m) | Identical across all three |
| DV2 (SU truck, 11.0m, R=12.8m) | DV4 (SU truck, 11.0m, R=12.8m) | SU (9.2m, R=12.8m) | Ethiopia/Kenya same; Uganda shorter |
| DV3 (SU bus, 12.1m, R=12.8m) | DV2 (SU bus, 12.3m, R=12.8m) | BUS (12.2m, R=12.8m) | Very similar across all three |
| DV4 (semi-trailer, 15.2m, R=13.7m) | DV5 (semi-trailer, 15.0m, R=13.7m) | WB-15 (16.8m, R=13.7m) | Uganda WB-15 is longer |
| -- | DV6-DV9 (18.5-22.0m) | -- | Kenya has larger combinations; ERA and Uganda do not |

**Critical difference:** ERA uses only 4 design vehicles. Kenya uses 9 (DV1-DV9) reflecting a larger and more diverse heavy vehicle fleet. Uganda uses a code-based system (P/SU/BUS/WB) derived from AASHTO. The design vehicle codes are NOT interchangeable between countries -- always verify the code system being used.

### M.2.4 Design Vehicle Influence on Geometric Parameters

The selected design vehicle affects the following geometric parameters:

| Parameter | ERA Reference | How DV Affects It |
|-----------|--------------|-------------------|
| Curve widening | Table 8-3 | Wider curves needed for longer vehicles (DV4 > DV3 > DV1) |
| Intersection turning radius | Chapter 11 | Min turn radius must accommodate DV (DV4 = 13.7 m) |
| Vertical clearance | Table 9-6 | DV2/DV3/DV4 height = 4.1 m; minimum clearance = 5.0 m |
| Lane width | Tables 2-1, 2-2 | DV width (2.6 m) plus clearances determines minimum lane |
| Stopping sight distance | Tables 7-2, 7-3 | Eye height differs: DV1 = 1.05 m (car), DV4 = higher |

**Vertical clearance (ERA Table 9-6):** Minimum overhead clearance is 5.0 m for all paved roads (DC2+). For DC1, minimum clearance is 4.5 m. These values provide a margin above the 4.1 m vehicle height of DV2/DV3/DV4.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (ERA Branch)

```
Step 1 (ERA): Determine DC from Skill #13 (Design Standards Selection)
  +-- DC is based on mid-life AADT
  \-- Functional class sets minimum DC floor

Step 2 (ERA): Look up design vehicle from Table 5-3
  +-- DC8-DC4 -> DV4 (truck + semi-trailer)
  +-- DC3-DC2 -> DV3 (single unit bus)
  \-- DC1 -> DV1 (4x4 utility)

Step 3 (ERA): Use design vehicle dimensions for:
  +-- Curve widening (Table 8-3): additional width on curves for DV overhang and tracking
  +-- Intersection geometry (Chapter 11): turning radius, channelisation, kerb offset
  +-- Vertical clearance (Table 9-6): 5.0 m minimum for DC2+, 4.5 m for DC1
  \-- Swept path: DV4 swept path must not exceed lane + shoulder on curves

Professional judgment: For DC3/DC2 roads serving known truck routes
(e.g., roads to quarries, agricultural processing plants, or border
crossings), consider using DV4 even though the standard assigns DV3.
Document the justification for the upgrade.
```

### M.3.2 Professional Judgment (ERA-Specific)

**DV4 governs most of the network.** Five of eight design classes use DV4. This reflects the reality that semi-trailer trucks operate on trunk, link, and most main access roads. Designers should verify that intersections and tight curves on DC4 roads can physically accommodate a 15.2 m semi-trailer turning.

**DC3/DC2 roads may see occasional DV4 vehicles.** While DV3 (bus) is the standard design vehicle for DC3 and DC2, trucks with semi-trailers do occasionally use these roads, particularly near border crossings, quarries, and agricultural collection centres. Professional judgment should assess whether DV4 accommodation is warranted at critical points (intersections, bridge approaches).

**DV1 roads have limited capacity for larger vehicles.** DC1 roads designed for DV1 (4x4 utility) cannot safely accommodate heavy vehicles. If a DC1 road is expected to carry any truck traffic, the design class should be reviewed upward.

### M.3.3 Common Errors (ERA-Specific)

1. **Confusing ERA DV codes with Kenya DV codes.** ERA DV2 is a single unit truck; Kenya DV2 is a single unit bus. ERA DV4 is a truck + semi-trailer; Kenya DV4 is a single unit truck. The numbering systems are different.
2. **Not checking curve widening for DV4.** DV4 has a 15.2 m length that requires significant curve widening on tight horizontal curves (Table 8-3). This is often missed on DC4 and DC5 roads in mountainous terrain.
3. **Assuming DV2 governs a design class.** DV2 is not the standard design vehicle for any DC. It is a reference vehicle only. DV3 or DV4 will govern.
4. **Using Uganda vehicle dimensions with ERA codes.** ERA DV4 is 15.2 m long; Uganda WB-15 is 16.8 m. Using Uganda dimensions with ERA codes would over-design curves and junctions.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design vehicle (DC4-DC8) | DV4 | DC not specified but AADT >= 150 | ASSUMED: DV4 (truck + semi-trailer) for DC4+ road | ERA GDM 2013, Table 5-3 |
| Design vehicle (DC2-DC3) | DV3 | DC not specified but AADT 25-150 | ASSUMED: DV3 (single unit bus) for DC2/DC3 road | ERA GDM 2013, Table 5-3 |
| Design vehicle (DC1) | DV1 | DC not specified but AADT < 25 | ASSUMED: DV1 (4x4 utility) for DC1 feeder road | ERA GDM 2013, Table 5-3 |
| Vertical clearance | 5.0 m | DC2+ | ASSUMED: 5.0 m minimum vertical clearance for paved road | ERA GDM 2013, Table 9-6 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design vehicle for DC4+ | DV4 | DV4 | -- | ERA GDM Table 5-3 | Warn if smaller than DV4 for DC4-DC8 |
| Junction turning radius (DV4) | 13.7 | -- | m | ERA GDM Table 5-2 | Reject if < 13.7 m at DV4 junction |
| Junction turning radius (DV3) | 12.8 | -- | m | ERA GDM Table 5-2 | Reject if < 12.8 m at DV3 junction |
| Vertical clearance (DC2+) | 5.0 | -- | m | ERA GDM Table 9-6 | Reject if < 5.0 m |

### M.5.2 Standards Compliance Checks

- **Check:** Design vehicle is >= minimum for the design class
- **Standard:** ERA GDM 2013, Table 5-3
- **Pass condition:** Design vehicle matches or exceeds Table 5-3 assignment
- **Fail action:** SENIOR REVIEW -- Design vehicle DV[X] is below ERA minimum DV[Y] for DC[Z].

- **Check:** Swept path does not exceed lane + shoulder width on curves
- **Standard:** ERA GDM 2013, Table 8-3
- **Pass condition:** Lane width + curve widening >= swept path width
- **Fail action:** Warn -- Swept path width [X]m exceeds available lane width [Y]m on curve R=[Z]m.

### M.5.3 Departures / Relaxations Process

ERA departures require written approval (Section 2.3). Using a design vehicle smaller than the Table 5-3 assignment constitutes a departure from standards and must be formally approved through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Non-standard vehicles on DC3/DC2 roads | DV4 vehicles using DV3-designed road | NOTE -- Truck + semi-trailer traffic observed on DC3/DC2 road. Check junction and curve geometry for DV4 (13.7 m turn radius). Consider design class upgrade. |
| DC1 road serving heavy vehicles | DV1 road cannot accommodate trucks | SENIOR REVIEW -- Heavy vehicles (DV2+) using DC1 road designed for DV1 (7.3 m turn radius). Design class review required. |
| Oversize mining or construction vehicles | Non-standard vehicle exceeds DV4 | SENIOR REVIEW -- Oversize vehicle [type] with [X]m length and [Y]m turn radius exceeds DV4 (15.2 m, 13.7 m). Specialist geometric check required. |
| Vertical clearance < 5.0 m | Overhead obstruction | SENIOR REVIEW -- Vertical clearance [X]m below 5.0 m minimum. Assess structure modification or route diversion. |

---

## M.7 Worked Example -- Ethiopia

### Example: Design Vehicle Selection for Junction on Mekelle to Wukro Road (Route B21), DC4

**Given:**
- Road: Route B21, Mekelle to Wukro section
- Design Class: DC4 (AADT 150-300)
- Surface: Paved
- Terrain: Rolling
- Task: Select design vehicle and check junction geometry at a T-intersection with a DC2 road

**Solution:**

**Step 1 -- Determine design vehicle:**
From ERA Table 5-3: DC4 -> DV4 (truck + semi-trailer).

**Step 2 -- DV4 dimensions:**
From ERA Table 5-2:
- Length: 15.2 m
- Width: 2.6 m
- Height: 4.1 m
- Minimum turn radius: 13.7 m

**Step 3 -- Check junction turning radius:**
The T-intersection must accommodate DV4 turning from Route B21 into the DC2 minor road. Minimum kerb-to-kerb turn radius: 13.7 m.

For the minor road (DC2), the standard design vehicle is DV3 (R = 12.8 m). Since the major road uses DV4, the junction must accommodate DV4 turning movements in all directions. Use DV4 turn radius (13.7 m) as the governing dimension.

**Step 4 -- Check curve widening:**
On a horizontal curve with R = 200 m on Route B21 (typical for rolling terrain):
From ERA Table 8-3, curve widening for DV4 at R = 200 m is approximately 0.6 m per lane.
Total widening for 2-lane road: 1.2 m.

**Step 5 -- Vertical clearance:**
DC4 paved road: minimum clearance = 5.0 m (ERA Table 9-6). Check all overhead structures (bridges, utility crossings).

**Result:**

| Parameter | Value |
|-----------|-------|
| Design vehicle | DV4 (Truck + semi-trailer) |
| Vehicle length | 15.2 m |
| Vehicle width | 2.6 m |
| Min turn radius | 13.7 m |
| Junction kerb radius | >= 13.7 m |
| Curve widening (R=200m) | 0.6 m per lane |
| Vertical clearance | >= 5.0 m |

All outputs are preliminary/screening level. Verify against project-specific conditions and ERA departures process.

---

## M.8 References

1. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Section 5.3 (Design Vehicles), Tables 5-2, 5-3.
2. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Table 8-3 (Curve Widening).
3. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Table 9-6 (Vertical Clearance).
4. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Chapter 11 (Intersection Design).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- DV1-DV4 dimensions from Table 5-2, DC-to-DV assignment from Table 5-3 verified against ERA GDM 2013 PDF. Four-vehicle system compared with Kenya (9 vehicles) and Uganda (P/SU/BUS/WB). Worked example on Mekelle to Wukro road (Route B21). |
