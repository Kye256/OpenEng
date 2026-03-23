# Design Vehicle & Swept Path -- Uganda Module

> **Parent Skill:** #18 Design Vehicle & Swept Path
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 1 (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 1 | 2010 | Section 5.1 (Design Vehicles), Table 5-1, Section 8.3.1(c) (junction turning radii) | Current -- primary standard for all roads in Uganda |

### M.1.2 Institutional Context

Same as Skill #13 Uganda module. MoWT Road Design Manual provides standard design vehicle dimensions in Table 5-1, derived from AASHTO standard vehicles adapted for the East African context. The WB-15 through WB-20 semitrailer designations are increasingly relevant for Uganda's northern corridor freight routes (Mombasa-Kampala-Juba).

### M.1.3 Standard Philosophy

MoWT adopts the AASHTO design vehicle classification system with standard designations (P, SU, BUS, WB-15, WB-19, WB-20). Table 5-1 provides dimensions and minimum turning radii for each vehicle type. The manual also provides turning path templates in Section 5 showing inner and outer turning radii for each vehicle.

MoWT does not explicitly discuss "swept path analysis" as a CAD-based process. Instead, it provides turning radii and turning path templates that serve the same purpose for manual design. For modern practice, swept path analysis software (e.g., Autodesk Vehicle Tracking) can be used with the MoWT vehicle dimensions.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Design Vehicle Dimensions:** The complete table of design vehicle dimensions is stored in `tables/uganda_design_vehicles.json`. Load this file for all vehicle data.

The JSON table contains 6 vehicle types from MoWT Table 5-1:
- Passenger Car (P)
- Single Unit Truck (SU)
- Bus (BUS)
- Semitrailer (WB-15)
- Semitrailer (WB-19)
- Semitrailer (WB-20)

**Summary of key dimensions:**

| Vehicle Type | Length (m) | Width (m) | Height (m) | Min Turn Radius (m) | Wheelbase (m) |
|---|---|---|---|---|---|
| Passenger Car (P) | 5.8 | 2.1 | 1.3 | 7.3 | 3.4 |
| Single Unit Truck (SU) | 9.2 | 2.6 | 4.1 | 12.8 | 6.1 |
| Bus (BUS) | 12.2 | 2.6 | 4.1 | 12.8 | 7.6 |
| Semitrailer (WB-15) | 16.8 | 2.6 | 4.1 | 13.7 | 4.0 + 9.6 |
| Semitrailer (WB-19) | 21.0 | 2.6 | 4.1 | 13.7 | 6.1 + 12.2 |
| Semitrailer (WB-20) | 22.4 | 2.6 | 4.1 | 13.7 | 6.1 + 13.0 |

**Source:** Uganda MoWT Road Design Manual, Vol. 1, Table 5-1 (Verified)

Note: For semitrailers, the wheelbase is given as the sum of the tractor wheelbase and the semi-trailer wheelbase (pivot to rear axle).

### M.2.2 Country-Specific Formulas

**Minimum junction turning radius (MoWT Section 8.3.1(c), Verified):**

> "Turning radii shall be 15 metres minimum" at junctions to accommodate truck traffic.

This 15m minimum applies to the inner kerb radius at junctions, not to the vehicle's minimum turning radius. The inner kerb radius must be at least 15m to allow a truck (SU or larger) to complete the turn without mounting the kerb.

**Off-tracking at junctions:** MoWT provides turning templates in Section 5 rather than formulas. For manual estimation, the universal off-tracking formula from the SKILL.md can be used with the MoWT vehicle dimensions:
```
OT = R - sqrt(R^2 - WB^2)
```

### M.2.3 East African Vehicle Fleet Context

**WB-15 through WB-20 are increasingly common in East African freight.** The northern corridor (Mombasa-Kampala-Juba/Kigali) carries heavy freight traffic with semitrailers up to WB-20 size. For trunk roads serving this corridor, WB-15 should be considered the minimum design vehicle, and WB-19 or WB-20 should be considered for new construction.

**Overloaded and non-standard vehicles.** The East African vehicle fleet includes overloaded trucks and non-standard trailer configurations that may exceed the dimensions in Table 5-1. While the design standard uses Table 5-1 values, the engineer should be aware that actual vehicles may be larger or heavier than the design assumes.

**Boda-bodas (motorcycle taxis) and handcarts.** These are ubiquitous in Uganda but are NOT covered by the design vehicle standards in Table 5-1. They are classified as non-motorised transport (NMT) and are addressed in Skill #20. However, the design vehicle skill should acknowledge their presence -- boda-bodas account for a significant proportion of traffic on most Ugandan roads and their behaviour at intersections and curves affects safety.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Select design vehicle
  +-- Class Ia or Ib trunk road (national highway)
  |     +-- Northern corridor freight --> WB-19 or WB-20
  |     +-- Other trunk route --> WB-15
  |     +-- With significant bus traffic --> check BUS also
  +-- Class II collector road
  |     +-- Standard case --> SU or WB-15
  |     +-- Bus route --> BUS
  +-- Class III local road
  |     +-- Standard case --> SU
  |     +-- Light traffic only --> P (but SU recommended for safety)
  +-- Gravel roads (A, B, C)
  |     +-- Class A (collector) --> SU
  |     +-- Class B (local) --> SU
  |     +-- Class C (access) --> P (but note: agricultural vehicles may be SU-size)
  +-- If unsure --> Default to SU (safe choice for most Ugandan roads)

Step 4 (Uganda): Geometric implications
  +-- Minimum junction turning radius --> 15m per MoWT Section 8.3.1(c)
  +-- Even if design vehicle is P or SU, junction turning radius should be >= 15m
  +-- For WB-15+, check that intersection geometry provides adequate swept path
```

### M.3.2 Professional Judgment (Uganda-Specific)

**The 15m minimum junction turning radius is a critical design requirement.** MoWT Section 8.3.1(c) mandates 15m minimum at junctions. This accommodates the SU truck (12.8m turning radius) with a safety margin. For WB-15 and larger vehicles, the 15m minimum may not be sufficient -- check the actual turning radius (13.7m for WB-15+) against the junction geometry.

**Consider mixed traffic at intersections.** Ugandan junctions frequently serve mixed traffic including trucks, buses, boda-bodas, bicycles, and pedestrians simultaneously. The junction geometry must accommodate the design vehicle while also providing safe passage for smaller and non-motorised road users.

**Agricultural vehicles in rural areas.** Tractors with trailers and harvesting equipment may use rural roads, especially Gravel A and B. These vehicles have different turning characteristics from standard design vehicles. Document any special requirements.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using P (passenger car) as design vehicle for trunk roads.** Even if cars are the majority of traffic, trunk roads must accommodate trucks. WB-15 or larger is the appropriate design vehicle.
2. **Ignoring the 15m minimum junction turning radius.** This MoWT requirement applies to all junctions, not just those on high-class roads.
3. **Not checking WB-19/WB-20 on northern corridor routes.** The freight fleet on the Mombasa-Kampala corridor includes vehicles up to WB-20 size. Designing for WB-15 only may be inadequate.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design vehicle (trunk) | WB-15 | Class Ia/Ib/II, not specified | WARNING ASSUMED: Design vehicle WB-15 (typical for Uganda trunk roads) | Accommodates freight vehicles |
| Design vehicle (local) | SU | Class III or Gravel, not specified | WARNING ASSUMED: Design vehicle SU (typical for Uganda local roads) | Standard truck access |
| Min junction turning radius | 15 m | Not specified | WARNING NOTE: Minimum 15m junction turning radius per MoWT Section 8.3.1(c) | MoWT mandatory requirement |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Junction turning radius | 15 | --- | m | MoWT Section 8.3.1(c) | Reject if < 15m (mandatory minimum) |
| Design vehicle width | 2.1 | 2.6 | m | MoWT Table 5-1 | Flag if outside range |
| Design vehicle min turning radius | 7.3 | 13.7 | m | MoWT Table 5-1 | Flag if outside range for known vehicle types |

### M.5.2 Standards Compliance Checks

- **Check:** Junction turning radius >= 15m
- **Standard:** MoWT Vol. 1, Section 8.3.1(c)
- **Pass condition:** Inner kerb radius at all junctions >= 15m
- **Fail action:** SENIOR REVIEW -- Junction turning radius [X]m is below the 15m minimum. Increase radius or provide alternative geometry.

- **Check:** Design vehicle appropriate for road class
- **Standard:** Professional judgment based on road function
- **Pass condition:** Design vehicle accommodates the expected heavy vehicle traffic
- **Fail action:** NOTE -- Design vehicle [type] may be inadequate for [road class]. Verify with traffic analysis.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. Where the 15m minimum junction turning radius cannot be achieved (e.g., constrained urban junctions), the engineer documents the justification and considers alternatives: reduced speed through the junction, mountable kerbs, or compound curves to accommodate the turning movement.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Junction turning radius below 15m | MoWT mandatory minimum | SENIOR REVIEW -- Junction turning radius [X]m is below the 15m minimum per MoWT Section 8.3.1(c). Increase radius or provide alternative geometry. |
| WB-19/WB-20 vehicle on route not designed for it | Freight corridor mismatch | NOTE -- Northern corridor freight includes WB-19/WB-20 vehicles. Current design vehicle [type] may not accommodate these. Verify with traffic survey data. |
| Design vehicle selection unclear for mixed-use road | Multiple vehicle types to accommodate | NOTE -- Road serves multiple functions (freight, bus, local). Verify design vehicle selection covers the critical case. |

---

## M.7 Worked Example -- Uganda

### Example: Select Design Vehicle for Class II Trunk Road, Northern Corridor

**Given:**
- Road class: Class II Paved (trunk road)
- Location: Northern corridor (Kampala - Gulu section)
- Function: National highway carrying mixed traffic including heavy freight
- Design speed: 80 km/h (from Skill #13)

**Solution:**

**Step 1 -- Determine design vehicle:**
This is a northern corridor trunk road carrying heavy freight. The appropriate design vehicle is at least WB-15, but given the corridor's freight importance, WB-19 should be considered.

Selected: **WB-15** (minimum), with check against WB-19 dimensions.

**Step 2 -- Look up dimensions from JSON table:**

| Parameter | WB-15 | WB-19 |
|-----------|-------|-------|
| Overall length | 16.8 m | 21.0 m |
| Overall width | 2.6 m | 2.6 m |
| Overall height | 4.1 m | 4.1 m |
| Min turning radius | 13.7 m | 13.7 m |
| Wheelbase | 4.0 + 9.6 m | 6.1 + 12.2 m |

**Step 3 -- Determine geometric implications:**

- **Junction turning radius:** Minimum 15m per MoWT Section 8.3.1(c). The WB-15 minimum turning radius is 13.7m, so the 15m junction radius provides adequate clearance.
- **Curve widening:** Wheelbase for WB-15 is effectively 13.6m (4.0 + 9.6). This produces significant off-tracking on tight curves.
- **Lane width check:** Vehicle width 2.6m vs Class II lane width 3.0m. Lateral clearance = (3.0 - 2.6)/2 = 0.2m per side. This is adequate at 80 km/h but check on curves where widening may be needed (Skill #14).

**Step 4 -- Off-tracking at a 50m radius curve (example):**
Using the simplified formula: OT = WB^2 / (2R)
For the semi-trailer unit: OT = 9.6^2 / (2 x 50) = 92.16 / 100 = 0.92m
Total off-tracking (including tractor): approximately 1.5-2.0m -- significant curve widening required.

**Result:**

| Parameter | Value |
|-----------|-------|
| Selected design vehicle | WB-15 (Semitrailer) |
| Overall dimensions | 16.8m x 2.6m x 4.1m |
| Minimum turning radius | 13.7 m |
| Junction minimum radius | 15 m (MoWT 8.3.1(c)) |
| Wheelbase (for curve widening) | 4.0 + 9.6 = 13.6 m |
| Recommendation | Adequate for Class II. Consider WB-19 check for northern corridor freight. |

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Section 5.1 (Design Vehicles), Table 5-1, Section 8.3.1(c) (junction turning radii).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Table 5-1 design vehicle dimensions verified against MoWT Vol. 1 PDF. 15m junction minimum from Section 8.3.1(c) verified. East African freight context added. |
