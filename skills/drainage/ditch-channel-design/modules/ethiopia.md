# Ditch & Channel Design -- Ethiopia Module

> **Parent Skill:** #30 Ditch & Channel Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Drainage Design Manual - 2013, Open Channel Design Chapters
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Drainage Design Manual (DDM) | 2013 | Open channel design chapters: Manning's equation, channel types, ditch dimensions, lining design, maximum velocities | Current -- primary for all road drainage channel design |
| ERA Geometric Design Manual | 2013 | Chapter 7 (Cross-Section Elements -- ditch placement within road cross-section) | Current -- geometric interface |
| ERA Drainage Design Manual (DDM) | 2013 | Hydrology chapters (design flow input from Skill #29) | Current -- upstream design flow |

Note: The ERA DDM 2013 provides comprehensive open channel hydraulics guidance using Manning's equation as the primary design tool. The manual covers rural side ditches, median ditches, interceptor drains, and lined channels.

### M.1.2 Institutional Context

ERA's institutional framework for ditch/channel design:

- **ERA (Ethiopian Roads Authority):** Federal trunk roads (DC5-DC8). Ditch dimensions follow DDM standards.
- **Regional Roads Authorities:** Regional roads (DC3-DC4). Same DDM standards apply.
- **Woreda Administrations:** Local access roads (DC1-DC2). Simplified ditch sections may be used for low-volume roads.

All agencies follow the ERA DDM for channel hydraulic design. Ditch dimensions and lining requirements are determined by hydraulic analysis, not road class, though higher-class roads typically have larger design flows requiring larger channels.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context. See Skill #17 Ethiopia module for ditch placement within the road cross-section (cross-section design).

### M.1.3 Standard Philosophy

ERA DDM follows standard open channel hydraulics using Manning's equation for uniform flow. Channel design proceeds from the design flow (from Skill #29 hydrology), through channel sizing, velocity checks, and lining selection. ERA specifies standard ditch shapes (trapezoidal, V-ditch, rectangular) with dimensions that vary by terrain and design flow. The manual places emphasis on locally available lining materials including stone masonry (widely available in Ethiopia), gabion mattresses, and grass/vegetation lining for low-velocity channels.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table E.30.1: ERA Standard Ditch/Channel Dimensions by Road Class (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Road Class | Standard Shape | Minimum Bottom Width (m) | Minimum Depth (m) | Side Slopes (H:V) | Longitudinal Gradient Range |
|-----------|---------------|-------------------------|-------------------|-------------------|---------------------------|
| DC7-DC8 (Major trunk) | Trapezoidal | 0.60 | 0.60 | 1.5:1 to 2:1 | 0.3% - 5% |
| DC5-DC6 (Trunk/Link) | Trapezoidal | 0.50 | 0.50 | 1.5:1 to 2:1 | 0.3% - 5% |
| DC3-DC4 (Regional) | Trapezoidal or V-ditch | 0.40 | 0.45 | 1:1 to 1.5:1 | 0.5% - 6% |
| DC1-DC2 (Feeder/Collector) | V-ditch or Trapezoidal | 0.30 (V-ditch: n/a) | 0.30 | 1:1 to 1.5:1 | 0.5% - 8% |

*Note: V-ditches are triangular with no flat bottom. Minimum depth is measured from formation level to ditch invert. Actual dimensions are determined by Manning's equation to convey the design flow with adequate freeboard. ERA DDM values to be confirmed from PDF.*

**Table E.30.2: Manning's Roughness Coefficient n for ERA Channel Linings (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Channel Lining Type | Manning's n (Design Value) | ERA Application |
|--------------------|--------------------------|-----------------|
| Concrete (troweled finish) | 0.013 | Urban drains, high-velocity channels |
| Concrete (formed finish) | 0.015 | Standard lined channels |
| Stone masonry (mortared) | 0.025 | Most common ERA lining -- widely available basalt/limestone |
| Stone masonry (dry-laid) | 0.032 | Low-cost lining option |
| Gabion mattress (150-200 mm) | 0.028 | Flexible lining for unstable ground |
| Gabion basket (300-500 mm) | 0.030 | Channel walls and bank protection |
| Earth channel (clean, straight) | 0.025 | Unlined standard ditch in stable soil |
| Earth channel (with grass) | 0.030 | Natural vegetation establishment |
| Grass-lined (established, short) | 0.030 | Low-velocity ditches in wet zones |
| Grass-lined (tall grass / tussock) | 0.045 | Bioengineering applications |
| Natural channel (clean) | 0.030 | Watercourse channels |
| Natural channel (with vegetation) | 0.045 | Vegetated watercourses |

**Table E.30.3: Maximum Permissible Velocities by Channel Material (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Material | Maximum Permissible Velocity (m/s) | Notes |
|---------|------------------------------------|-------|
| Fine sand | 0.5 | Easily eroded |
| Sandy loam | 0.5 | Non-cohesive |
| Silt loam | 0.6 | Moderate cohesion |
| Firm loam / laterite | 0.8 | Common in Ethiopian highlands |
| Stiff clay | 1.0 | Cohesive but shrink-swell risk |
| Coarse gravel | 1.2 | Self-armouring potential |
| Grass lining (established) | 1.5 | Requires establishment period |
| Stone masonry (mortared) | 3.0 | Most common ERA hard lining |
| Stone masonry (dry-laid) | 2.0 | Lower resistance than mortared |
| Gabion mattress | 4.0 | Flexible, high velocity tolerance |
| Concrete | 4.5 | Maximum standard lining |

**Table E.30.4: ERA Lining Selection Criteria (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Design Velocity (m/s) | Soil Erodibility | Recommended Lining | ERA Context |
|-----------------------|-------------------|-------------------|-------------|
| < 0.5 | Any | Unlined (earth) | Low gradient, flat terrain |
| 0.5 - 0.8 | Sandy/silty | Grass lining or stone masonry | Western highlands, red soils |
| 0.5 - 1.0 | Firm loam/laterite | Unlined or grass | Laterite soils, moderate gradient |
| 1.0 - 1.5 | Any non-rock | Grass or stone masonry | Moderate gradient, stable soils |
| 1.5 - 3.0 | Any | Stone masonry (mortared) | Standard solution, locally available |
| 3.0 - 4.0 | Any | Gabion mattress or concrete | Steep terrain or concentrated flow |
| > 4.0 | Any | Concrete or stepped channel | Very steep terrain, energy dissipation needed |

*Note: Stone masonry is the most commonly specified ERA lining material because basalt and limestone are widely available across the Ethiopian Highlands. Gabion wire mesh is manufactured locally.*

**Table E.30.5: Cross-Country Comparison -- Ditch/Channel Design**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Standard ditch shape | Trapezoidal / V-ditch | Trapezoidal / V-ditch | Trapezoidal / V-ditch / Rectangular |
| Minimum depth below formation | 0.30-0.60 m (by road class) | 0.45-0.60 m (by road class) | 0.30 m minimum (RDM 2.2 Section 6.4.3) |
| Minimum bottom width (trapezoidal) | 0.30-0.60 m (by road class) | 0.30-0.50 m | 0.50 m (RDM 2.2) |
| Freeboard | 150 mm minimum | 150 mm minimum | 150 mm minimum |
| Lining trigger velocity (earth) | 0.5-1.0 m/s (soil dependent) | 0.5-1.0 m/s (soil dependent) | 0.5-1.2 m/s (soil dependent) |
| Primary hard lining | Stone masonry (basalt/limestone) | Stone pitching (quartzite/laterite) | Stone pitching / concrete |
| Primary flexible lining | Gabion mattress | Gabion mattress | Gabion mattress / reno mattress |
| Self-cleansing velocity | >= 0.3 m/s | >= 0.3 m/s | >= 0.3 m/s |
| Manning's n (unlined earth) | 0.025 | 0.025 | 0.020-0.025 |
| Design flow source | ERA DDM hydrology (Skill #29) | MoWT Vol 2 hydrology (Skill #29) | RDM 2.1 hydrology (Skill #29) |

### M.2.2 Country-Specific Formulas

**Manning's Equation (ERA DDM 2013 -- same as universal, metric units):**

```
Q = (1/n) * A * R^(2/3) * S^(1/2)
```

Where Q = discharge (m3/s), n = Manning's roughness coefficient, A = cross-sectional flow area (m2), R = hydraulic radius = A/P (m), P = wetted perimeter (m), S = channel slope (m/m).

**Velocity:**

```
V = (1/n) * R^(2/3) * S^(1/2)
```

**Trapezoidal Section Properties:**

```
A = (b + z*d) * d
P = b + 2*d*sqrt(1 + z^2)
R = A / P
```

Where b = bottom width (m), d = flow depth (m), z = side slope ratio (H:V).

**V-Ditch Section Properties:**

```
A = z * d^2
P = 2 * d * sqrt(1 + z^2)
R = z * d / (2 * sqrt(1 + z^2))
```

**Channel Design Process (ERA DDM):**
1. Determine design flow Q from Skill #29 Ethiopia module (hydrology)
2. Select channel shape and Manning's n based on material
3. Determine longitudinal slope S from road geometric design (Skill #17 Ethiopia module)
4. Iterate: assume flow depth d, calculate A, R, Q_capacity
5. Check Q_capacity >= Q_design
6. Check velocity against permissible limits (Table E.30.3)
7. Add freeboard (minimum 150 mm)
8. If velocity exceeds unlined limit, specify lining type (Table E.30.4)

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 1 (Ethiopia): Receive design flow
  |-- Design flow Q from Skill #29 Ethiopia module (hydrology)
  |-- Return period: 5-10 yr for side ditches (Table E.29.1)
  +-- Channel must accommodate Q with freeboard

Step 2 (Ethiopia): Select ditch type
  |-- Side drain (parallel to road alignment) --> most common
  |-- Median drain (between carriageways) --> divided DC7-DC8 roads
  |-- Interceptor drain (uphill of road in cut) --> hillside roads
  +-- Outlet/turnout drain (discharges to natural drainage)

Step 3 (Ethiopia): Select channel shape
  |-- DC5-DC8 paved roads: trapezoidal, min 0.50-0.60 m base
  |-- DC3-DC4 regional roads: trapezoidal or V-ditch
  |-- DC1-DC2 feeder roads: V-ditch (simple construction)
  +-- Urban: rectangular (concrete) where space is constrained

Step 4 (Ethiopia): Select Manning's n
  |-- Earth channel: n = 0.025 (clean) to 0.030 (with grass)
  |-- Stone masonry: n = 0.025 (mortared) to 0.032 (dry-laid)
  |-- Gabion: n = 0.028-0.030
  +-- Concrete: n = 0.013-0.015

Step 5 (Ethiopia): Size channel using Manning's equation
  |-- Iterate d until Q_capacity >= Q_design
  |-- Check velocity V = Q/A against Table E.30.3
  |-- V < 0.3 m/s --> increase gradient or reduce section (silting risk)
  |-- V > permissible for material --> select lining (Table E.30.4)
  +-- Add 150 mm freeboard to flow depth

Step 6 (Ethiopia): Cross-reference placement
  |-- Verify ditch fits within road cross-section (Skill #17 Ethiopia module)
  |-- Verify ditch invert is below pavement subgrade
  +-- Verify outlet spacing and turnout locations
```

This module receives design flow from hydrology (Skill #29 Ethiopia module). Channel capacity must accommodate the design flood from the selected return period. The ditch/channel output (channel velocity, flow depth) feeds into culvert hydraulic design (Skill #31 Ethiopia module) where channels discharge into cross-drainage structures, and into erosion protection (Skill #32 Ethiopia module) where channel velocities exceed permissible limits.

> Cross-reference: Cross-section design (Skill #17 Ethiopia module) for ditch placement within road cross-section.

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Ethiopian Highland terrain produces steep ditch gradients.** Much of the federal road network traverses terrain with 5-15% road gradients, producing ditch velocities that frequently exceed unlined limits. Stone masonry lining is the standard ERA solution because basalt and limestone are widely available throughout the highlands. The designer should assume lining is needed for highland roads and design accordingly.

**Expansive soils (black cotton soils) in the Rift Valley and central highlands** cause ditch deterioration through shrink-swell cycles. In expansive soil areas, unlined ditches degrade within 1-2 rainy seasons. Stone masonry or concrete lining is essential regardless of velocity, similar to the Kenya guidance for black cotton areas.

**Laterite soils in western Ethiopia** are moderately resistant to erosion (permissible velocity ~0.8 m/s) but soften when saturated during the extended Kiremt season. Design for the wet-season condition.

**Check dams (small weirs across the ditch) are a common ERA solution** for steep terrain where lining alone is insufficient. Check dams reduce the effective gradient between dams, controlling velocity. Spacing is typically 10-30 m depending on terrain slope.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Using Manning's n = 0.013 for an earth channel.** Earth channels have n = 0.025-0.030. The 0.013 value is for concrete or smooth pipe only.
2. **Designing unlined ditches on highland roads with >3% gradient.** Velocities almost always exceed 1.0 m/s on steep grades in any soil type. Specify lining from the outset.
3. **Ignoring expansive soil conditions.** In black cotton soil areas, even low-velocity ditches require lining to prevent structural deterioration.
4. **Not accounting for check dam effects.** When check dams are used, the effective gradient between dams (not the overall road gradient) determines the design velocity.
5. **Undersizing outlet/turnout drains.** Concentrated flow at ditch outlets causes severe erosion. Design outlet protection per Skill #32 Ethiopia module (erosion protection).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Manning's n (earth) | 0.030 | Unlined earth ditch | ASSUMED: n = 0.030 for unlined earth ditch; verify against actual soil and vegetation conditions | ERA DDM practice (conservative) |
| Manning's n (stone masonry) | 0.025 | Mortared stone masonry | No flag -- standard ERA lining | ERA DDM practice |
| Side slope | 1.5:1 (H:V) | Paved road side drain | No flag | ERA DDM standard practice |
| Freeboard | 150 mm | All drains | No flag | ERA DDM standard practice |
| Bottom width | 0.50 m | Trapezoidal, DC3-DC6 | ASSUMED: b = 0.50 m per ERA DDM standard | ERA DDM practice |
| Return period | 5 years | Side ditches, DC1-DC4 | No flag | ERA DDM Table E.29.1 |
| Return period | 10 years | Side ditches, DC5-DC8 | No flag | ERA DDM Table E.29.1 |
| Self-cleansing velocity | 0.3 m/s | Minimum | No flag | Engineering practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| V (earth channel) | 0.3 | 0.5-1.0 | m/s | ERA DDM Table E.30.3 | Warn if V < 0.3 (silting risk); fail if V > permissible for soil type |
| V (stone masonry) | 0.3 | 3.0 | m/s | ERA DDM Table E.30.3 | Flag if V > 3.0 m/s even for mortared masonry |
| V (concrete) | 0.5 | 4.5 | m/s | ERA DDM Table E.30.3 | Flag if V > 4.5 m/s -- special energy dissipation needed |
| Drain depth | 0.30 | 1.50 | m | ERA DDM practice | Flag if depth > 1.5 m (safety concern, consider piped system) |
| Longitudinal gradient | 0.3% | 8% | -- | ERA DDM practice | Flag if < 0.3% (insufficient self-cleansing); flag if > 6% (high velocity, check lining) |

### M.5.2 Standards Compliance Checks

- **Check:** Velocity within permissible for channel material
- **Standard:** ERA DDM, permissible velocity tables (Table E.30.3)
- **Pass condition:** V <= permissible velocity for specified material
- **Fail action:** SENIOR REVIEW -- Velocity [V] m/s exceeds permissible [Vp] m/s for [material]. Specify channel lining per ERA DDM lining selection criteria (Table E.30.4).

- **Check:** Freeboard adequate
- **Standard:** ERA DDM, minimum 150 mm
- **Pass condition:** Total depth >= flow depth + 150 mm
- **Fail action:** Increase channel depth to provide minimum 150 mm freeboard.

- **Check:** Self-cleansing velocity met
- **Standard:** Engineering practice, >= 0.3 m/s
- **Pass condition:** V >= 0.3 m/s at design flow
- **Fail action:** Warn -- Low velocity may cause sedimentation. Consider steeper gradient or smaller cross-section.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Velocity exceeds all lining capacities (>4.5 m/s) | Extremely steep terrain, no standard lining adequate | SENIOR REVIEW -- Velocity [V] m/s exceeds maximum for concrete lining. Consider stepped channel, cascade, or pipe system to dissipate energy. |
| Expansive soil (black cotton) in ditch invert | Shrink-swell causes ditch deterioration | SENIOR REVIEW -- Expansive soil identified at ditch invert. Specify stone masonry or concrete lining regardless of velocity. Consider moisture barrier or lime treatment of subgrade. |
| Steep terrain (longitudinal grade > 6%) | High velocities, erosion risk, check dams may be needed | SENIOR REVIEW -- Steep grade [S]%. Consider check dams at 10-30 m spacing to reduce effective gradient. Design energy dissipation at check dam drops. |
| Watercourse crossing at ditch outlet | Erosion risk at discharge point | SENIOR REVIEW -- Ditch discharges to natural watercourse. Design outlet protection per Skill #32 Ethiopia module (erosion protection). Consider energy dissipator at outlet. |
| Interceptor drain on hillside with unstable slope | Slope stability risk from concentrated water | SENIOR REVIEW -- Interceptor drain on unstable hillside. Coordinate with geotechnical assessment. Ensure drain does not destabilise cut slope. |
| Urban drainage required | Storm drain network design needed | SENIOR REVIEW -- Urban setting requires piped storm drain network design, not open ditches. Apply ERA DDM urban drainage provisions. |

---

## M.7 Worked Example -- Ethiopia

### Example: Side Drain for a DC4 Regional Road in Rolling Terrain

**Source:** Based on ERA DDM 2013 Manning's equation with Ethiopian-specific data

**Given:**
- Design flow: Q = 0.45 m3/s (from Skill #29 Ethiopia module, 5-year ARI per Table E.29.1)
- Longitudinal gradient: S = 3.0% (0.030 m/m)
- Road: DC4 regional road through rolling terrain, western Ethiopia
- Soil: Laterite (firm loam, permissible velocity ~0.8 m/s)
- Channel type: Trapezoidal, earth ditch (unlined initially)
- Channel parameters: b = 0.40 m, z = 1.5:1 (H:V), n = 0.030 (earth with grass)
- Trial flow depth: d = 0.35 m

**Solution:**

**Step 1 -- Calculate section properties:**

```
A = (b + z*d) * d = (0.40 + 1.5*0.35) * 0.35
  = (0.40 + 0.525) * 0.35 = 0.925 * 0.35 = 0.324 m2

P = b + 2*d*sqrt(1 + z^2) = 0.40 + 2*0.35*sqrt(1 + 2.25)
  = 0.40 + 0.70*sqrt(3.25) = 0.40 + 0.70*1.803 = 0.40 + 1.262 = 1.662 m

R = A/P = 0.324 / 1.662 = 0.195 m
```

**Step 2 -- Calculate capacity using Manning's equation:**

```
Q_cap = (1/n) * A * R^(2/3) * S^(1/2)
      = (1/0.030) * 0.324 * 0.195^(2/3) * 0.030^(1/2)
      = 33.33 * 0.324 * 0.336 * 0.173
      = 33.33 * 0.324 * 0.0581
      = 33.33 * 0.01883
      = 0.628 m3/s
```

Q_cap = 0.628 m3/s > Q_design = 0.45 m3/s -- capacity is adequate.

**Step 3 -- Check velocity:**

```
V = Q / A = 0.45 / 0.324 = 1.39 m/s
```

Permissible velocity for laterite (firm loam): ~0.8 m/s.
V = 1.39 m/s > 0.8 m/s -- velocity exceeds permissible for unlined earth.

**Step 4 -- Select lining (Table E.30.4):**

V = 1.39 m/s falls in the 1.0-1.5 m/s range. Options:
- Grass lining: permissible up to 1.5 m/s, but requires establishment period
- Stone masonry (mortared): permissible up to 3.0 m/s, widely available in western Ethiopia

**Decision:** Stone masonry lining is recommended for this regional road. With mortared stone masonry (n = 0.025):

```
Q_cap_masonry = (1/0.025) * 0.324 * 0.195^(2/3) * 0.030^(1/2)
             = 40 * 0.324 * 0.336 * 0.173
             = 40 * 0.01883 = 0.753 m3/s > 0.45 -- OK

V_masonry = 0.45 / 0.324 = 1.39 m/s (unchanged, as flow depth unchanged)
```

1.39 m/s < 3.0 m/s permissible for stone masonry -- OK.

**Step 5 -- Freeboard:**

D_total = d + freeboard = 0.35 + 0.15 = 0.50 m

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Channel shape | Trapezoidal | |
| Bottom width | 0.40 m | |
| Side slopes | 1.5:1 (H:V) | |
| Flow depth | 0.35 m | |
| Total depth | 0.50 m (incl. 150 mm freeboard) | |
| Capacity | 0.628 m3/s (earth) / 0.753 m3/s (masonry) | > 0.45 m3/s -- OK |
| Velocity | 1.39 m/s | Exceeds unlined limit; stone masonry specified |
| Lining | Mortared stone masonry | Permissible up to 3.0 m/s -- OK |
| Manning's n | 0.025 (masonry) | |

Side drain capacity Q = 0.628 m3/s with earth, 0.753 m3/s with stone masonry lining. Design velocity 1.39 m/s requires stone masonry lining. Channel outlet to be designed with erosion protection per Skill #32 Ethiopia module.

---

## M.8 References

1. Ethiopian Roads Authority, *Drainage Design Manual*, 2013. Open channel design chapters. Developed with DFID/AFCAP/Crown Agents support.
2. Ethiopian Roads Authority, *Geometric Design Manual*, 2013. Chapter 7 (Cross-Section Elements -- ditch placement).
3. Chow, V.T., *Open-Channel Hydraulics*, McGraw-Hill, 1959. Manning's equation derivation and n-value tables.
4. Federal Highway Administration, *Hydraulic Engineering Circular No. 15 (HEC-15): Design of Roadside Channels with Flexible Linings*, 3rd Edition, 2005. Flexible channel lining design reference.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-06 | AI draft | Initial draft -- ERA ditch dimensions by road class, Manning's n values for ERA channel linings, permissible velocity table, lining selection criteria, cross-country comparison (ERA/MoWT/RDM), drainage pipeline cross-references to Skills #29 and #31/#32. Values flagged for verification against ERA DDM PDF per D-04. |
