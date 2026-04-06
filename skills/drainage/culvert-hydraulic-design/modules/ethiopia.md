# Culvert Hydraulic Design -- Ethiopia Module

> **Parent Skill:** #31 Culvert Hydraulic Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Drainage Design Manual - 2013, Culvert Hydraulics Chapters; FHWA HDS-5 (reference)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Drainage Design Manual (DDM) | 2013 | Culvert hydraulics chapters: culvert types, inlet control, outlet control, headwater limits, design procedures | Current -- primary for culvert hydraulic sizing |
| ERA Drainage Design Manual (DDM) | 2013 | Hydrology chapters (design flow input from Skill #29) | Current -- upstream design flow |
| FHWA Hydraulic Design Series No. 5 (HDS-5) | 2012 | Hydraulic Design of Highway Culverts | Reference -- ERA DDM follows FHWA/AASHTO approach |
| AASHTO Highway Drainage Guidelines | Various | Culvert design philosophy and minimum standards | Reference |

Note: ERA DDM follows the standard FHWA/AASHTO approach for culvert hydraulics -- checking both inlet control and outlet control, with the higher headwater governing. This is the same fundamental approach used in Kenya (RDM 2.2 Ch 4) and Uganda (MoWT Vol 2).

### M.1.2 Institutional Context

ERA's institutional framework for culvert design:

- **ERA (Ethiopian Roads Authority):** Federal trunk roads (DC5-DC8). All culverts designed to ERA DDM standards.
- **Regional Roads Authorities:** Regional roads (DC3-DC4). Same ERA DDM standards apply.
- **Woreda Administrations:** Local access roads (DC1-DC2). Simplified culvert selection for low-volume roads.

Culvert hydraulic design determines the size and type of culvert; the structural design is covered separately in Skill #33 (Culvert Structural Design, Plan 02) using the ERA Bridge Design Manual.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and the DC1-DC8 design class system.

### M.1.3 Standard Philosophy

ERA DDM culvert hydraulic design follows the FHWA/AASHTO dual-control approach: for any given culvert and flow condition, either inlet control or outlet control governs, and the higher headwater determines the design condition. The designer sizes the culvert so that headwater does not exceed the allowable limit (typically expressed as HW/D ratio or maximum ponding depth). ERA specifies reinforced concrete pipe (RCP), reinforced concrete box, and stone masonry as preferred culvert materials, reflecting local construction practice and material availability.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table E.31.1: ERA Culvert Types and Size Ranges (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Culvert Type | Minimum Size | Maximum Size | Preferred Increments | ERA Application |
|-------------|-------------|-------------|---------------------|-----------------|
| Reinforced concrete pipe (RCP) | 600 mm dia | 1800 mm dia | 150 mm | Standard for small crossings, DC1-DC8 |
| Reinforced concrete box (RCB) | 900 x 600 mm | 3000 x 3000 mm | 300 mm | Medium to large crossings, DC3-DC8 |
| Stone masonry box | 600 x 600 mm | 2000 x 1500 mm | Variable | Common for DC1-DC4, locally built |
| Corrugated metal pipe (CMP) | 600 mm dia | 2400 mm dia | 150 mm | Less common in Ethiopia; used where RC unavailable |
| Slab culvert (RC slab on masonry walls) | 1000 mm span | 4000 mm span | Variable | Common ERA design for DC1-DC4 roads |

*Note: Stone masonry culverts are widely used on Ethiopian roads due to local availability of basalt and limestone. Slab culverts (RC slab on stone masonry walls) are a common ERA standard detail for spans up to 4 m. Minimum pipe culvert size 600 mm is consistent with Kenya (RDM 2.2 Section 4.4).*

**Table E.31.2: Manning's n for Culvert Materials (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Culvert Material | Manning's n | Notes |
|-----------------|-------------|-------|
| Reinforced concrete pipe (RCP) | 0.012-0.013 | Standard for new pipe |
| Concrete box culvert | 0.013-0.015 | Formed concrete surfaces |
| Stone masonry (mortared) | 0.020-0.025 | Common ERA culvert material |
| Corrugated metal pipe (CMP), 68mm corrugation | 0.024-0.027 | Higher friction than concrete |
| CMP with paved invert | 0.018-0.022 | Improved hydraulics |

**Table E.31.3: Entrance Loss Coefficients Ke by Entrance Type (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Entrance Type | Ke | Source |
|--------------|-----|--------|
| Projecting from fill, socket end (groove end) | 0.2 | FHWA HDS-5 |
| Projecting from fill, cut end (square edge) | 0.5 | FHWA HDS-5 |
| Headwall with square edge | 0.5 | FHWA HDS-5 |
| Headwall with rounded edge (r/D >= 0.15) | 0.2 | FHWA HDS-5 |
| Headwall with beveled edge (45 deg) | 0.2 | FHWA HDS-5 |
| Headwall with wingwalls (30-75 deg flare) | 0.2-0.4 | FHWA HDS-5 |
| Mitered to conform to fill slope | 0.7 | FHWA HDS-5 |
| End section (metal, preformed) | 0.5 | FHWA HDS-5 |
| Stone masonry headwall, square edge | 0.5 | ERA practice |
| Stone masonry headwall, beveled entry | 0.3 | ERA practice |

**Table E.31.4: ERA Headwater Limits (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Road Class | Maximum HW/D Ratio | Maximum Ponding Depth | Notes |
|-----------|-------------------|----------------------|-------|
| DC7-DC8 (Major trunk) | 1.0 | Formation level minus 300 mm | Conservative for high-importance roads |
| DC5-DC6 (Trunk/Link) | 1.2 | Formation level minus 150 mm | Standard ERA practice |
| DC3-DC4 (Regional) | 1.5 | Formation level | Standard ERA practice |
| DC1-DC2 (Feeder/Collector) | 2.0 | Formation level + 150 mm (overtopping tolerated if infrequent) | Low-volume road allowance |

*Note: HW/D = headwater depth to culvert diameter (or rise) ratio. Lower HW/D ratios provide greater safety margin against overtopping. ERA varies allowable headwater by road class, unlike Kenya which uses a uniform HW/D limit.*

**Table E.31.5: Minimum Cover Requirements over Culvert (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Culvert Type | Minimum Cover | Notes |
|-------------|--------------|-------|
| RCP (pipe culvert) | 600 mm or D/4, whichever is greater | Measured from top of pipe to formation level |
| RCB (box culvert) | 600 mm minimum | May be reduced to 300 mm with structural verification |
| Stone masonry box | 600 mm minimum | Slab thickness adds to effective cover |
| CMP | 600 mm or D/4, whichever is greater | Higher cover recommended for CMP to control deflection |

**Table E.31.6: Cross-Country Comparison -- Culvert Hydraulic Design**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Hydraulic method | FHWA/AASHTO (inlet/outlet control) | FHWA/AASHTO (inlet/outlet control) | FHWA/AASHTO (RDM 2.2 Ch 4) |
| Minimum pipe culvert size | 600 mm | 600 mm | 600 mm (RDM 2.2 Section 4.4) |
| Minimum box culvert size | 900 x 600 mm | 900 x 600 mm | 600 x 600 mm |
| Maximum HW/D ratio | 1.0-2.0 (varies by DC class) | 1.2-1.5 (varies by road class) | 1.2-1.5 (RDM 2.2 Section 4.4) |
| Preferred materials | RC pipe, RC box, stone masonry | RC pipe, RC box | RC pipe, RC box |
| Stone masonry culverts | Common -- basalt/limestone available | Less common | Not standard |
| Slab culvert (RC on masonry) | Common standard detail | Less common | Not standard |
| Minimum self-cleansing velocity | 0.75-1.0 m/s | 0.75-1.0 m/s | 0.6-0.9 m/s (RDM 2.2 Section 4.4) |
| Design charts | ERA DDM charts (FHWA-based) | MoWT Vol 2 charts (FHWA-based) | RDM 2.2 Appendix B (26 charts) |
| Return period (pipe culvert) | 10-25 yr (by DC class) | 10-25 yr (by road class) | 10 yr (all roads) |

### M.2.2 Country-Specific Formulas

**Inlet Control (FHWA/ERA DDM approach):**

For unsubmerged inlet (HW/D < 1.0):

```
HW/D = Hc/D + K * [Ku * Q / (A * D^0.5)]^M - 0.5S
```

For submerged inlet (HW/D >= 1.0):

```
HW/D = c * [Ku * Q / (A * D^0.5)]^2 + Y - 0.5S
```

Where HW = headwater depth (m), D = culvert diameter or rise (m), Q = design discharge (m3/s), A = full cross-sectional area (m2), S = culvert slope (m/m), and K, M, c, Y are constants from FHWA inlet control nomographs (dependent on entrance type).

**Outlet Control (Energy Balance):**

```
HW = TW + (1 + Ke + Kp) * V^2/(2g) + hf - L*So
```

Where:
- TW = tailwater depth (m)
- Ke = entrance loss coefficient (Table E.31.3)
- Kp = exit loss coefficient (typically 1.0 for submerged outlet, 0 for free outfall)
- V = full-flow velocity in culvert (m/s)
- hf = friction loss = (29 * n^2 * L * V^2) / (R^(4/3) * 2g) or simplified hf = (19.6 * n^2 * L) / R^(4/3) * V^2/(2g)
- L = culvert length (m)
- So = culvert slope (m/m)

Alternatively, using friction slope:

```
HW = TW + H + L*Sf - L*So
```

Where H = velocity head at exit = V^2/(2g), Sf = friction slope from Manning's equation.

**Governing Control:**

```
HW_design = max(HW_inlet_control, HW_outlet_control)
```

The higher headwater governs. If HW_design exceeds the allowable HW from Table E.31.4, increase culvert size or improve entrance conditions.

**Outlet Velocity:**

```
V_outlet = Q / A_outlet
```

Where A_outlet is the flow area at the culvert exit. For outlet control with full flow, A_outlet = full pipe area. For inlet control (partially full barrel), estimate flow depth at outlet from normal depth calculations.

Outlet velocity feeds into erosion protection design (Skill #32 Ethiopia module).

### M.2.3 Culvert Design Process (ERA DDM)

1. **Determine design flow Q** from Skill #29 Ethiopia module (hydrology) at the return period from Table E.29.1
2. **Determine tailwater conditions** from downstream channel analysis (Skill #30 Ethiopia module)
3. **Select trial culvert type and size** based on flow magnitude and site conditions
4. **Check inlet control headwater** using FHWA nomographs or equations
5. **Check outlet control headwater** using energy balance equation
6. **Select governing headwater** -- the higher of inlet or outlet control
7. **Verify HW/D within ERA limits** (Table E.31.4) for the applicable road class
8. **Check outlet velocity** -- if excessive, design erosion protection (Skill #32 Ethiopia module)
9. **Check minimum velocity** (>= 0.75 m/s for self-cleansing)
10. **Check minimum cover** (Table E.31.5)
11. **Iterate** -- if headwater exceeds limit, increase size, add barrels, or improve entrance

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 1 (Ethiopia): Determine design flow and return period
  |-- Q from Skill #29 Ethiopia module
  |-- Return period from Table E.29.1 by DC class and structure type
  +-- Pipe culvert: 10-25 yr; Box culvert: 10-50 yr (by DC class)

Step 2 (Ethiopia): Select culvert type
  |-- Q < 3 m3/s --> pipe culvert (RCP 600-1800 mm)
  |-- Q = 3-15 m3/s --> box culvert (single or double cell) or large pipe
  |-- Q = 15-50 m3/s --> multi-cell box culvert or slab culvert
  |-- Q > 50 m3/s --> consider bridge (Skill #35)
  +-- Stone masonry box for DC1-DC4 where local stone available

Step 3 (Ethiopia): Select entrance type
  |-- Standard headwall with square edge (Ke = 0.5) -- most common
  |-- Headwall with wingwalls (Ke = 0.2-0.4) -- better hydraulics for DC5-DC8
  |-- Projecting from fill (Ke = 0.5-0.7) -- avoid for DC5-DC8
  +-- Stone masonry headwall (Ke = 0.3-0.5) -- common for DC1-DC4

Step 4 (Ethiopia): Check inlet control
  |-- Use FHWA nomographs or equations with ERA DDM parameters
  |-- Determine HW_inlet for trial size
  +-- Compare with HW limit from Table E.31.4

Step 5 (Ethiopia): Check outlet control
  |-- Determine tailwater depth from downstream channel
  |-- Calculate HW_outlet using energy balance
  +-- Compare with HW limit from Table E.31.4

Step 6 (Ethiopia): Governing control and sizing
  |-- HW_design = max(HW_inlet, HW_outlet)
  |-- If HW_design <= HW_allowable --> size is adequate
  |-- If HW_design > HW_allowable --> increase size or improve entrance
  +-- Record outlet velocity for erosion protection (Skill #32)

Step 7 (Ethiopia): Outputs
  |-- Culvert type, size, length, slope
  |-- Outlet velocity --> feeds Skill #32 Ethiopia module (erosion protection)
  |-- Structural loading data --> feeds Skill #33 (culvert structural design, Plan 02)
  +-- Headwall/wingwall requirements --> feeds Skill #34 (headwalls, Plan 02)
```

This module receives peak discharge from hydrology (Skill #29 Ethiopia module) and channel geometry from ditch/channel design (Skill #30 Ethiopia module). Output (culvert size, outlet velocity) feeds erosion protection (Skill #32 Ethiopia module) and culvert structural design (Skill #33, Plan 02).

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Stone masonry culverts are a defining feature of Ethiopian road construction.** Unlike Kenya and Uganda where RC pipe and box culverts dominate, Ethiopian road projects extensively use stone masonry box culverts and slab culverts (RC slab on stone masonry walls). This is driven by the wide availability of basalt and limestone throughout the Ethiopian Highlands and the lower cost of skilled masonry labour compared to precast concrete. The designer should consider stone masonry options for DC1-DC4 roads.

**Debris-prone catchments in the Ethiopian Highlands** require oversizing. Catchments with steep terrain, degraded vegetation, or active erosion produce sediment-laden flows that can block culvert entrances. Consider using the next size up from the hydraulically required size in debris-prone areas, or specify a debris rack.

**Multi-barrel culverts are common on Ethiopian roads** for wide, shallow crossings. Two or three pipe or box culverts side by side are frequently used instead of a single large structure. Ensure adequate spacing between barrels (minimum one barrel width) and provide headwalls/wingwalls to direct flow.

**Skewed crossings are frequent in mountainous terrain.** When the stream crosses the road at an angle other than 90 degrees, the culvert length increases, and hydraulic efficiency may decrease. For skew angles > 30 degrees, consider aligning the culvert with the stream rather than perpendicular to the road.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Ignoring outlet control check.** Many Ethiopian culverts are long (>30 m in high fills), making outlet control more likely to govern. Always check both inlet and outlet control.
2. **Using concrete pipe n values for stone masonry culverts.** Stone masonry has n = 0.020-0.025, significantly higher than concrete pipe (0.012-0.013). Using the wrong n value undersizes the culvert.
3. **Not accounting for sedimentation in lowland crossings.** In the Rift Valley and eastern lowlands, sediment deposition can reduce culvert capacity. Design for self-cleansing velocity (>= 0.75 m/s) and consider maintenance access.
4. **Exceeding headwater limits without ERA approval.** Headwater exceeding Table E.31.4 limits requires ERA written departure approval.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Manning's n (RC pipe) | 0.013 | New concrete pipe | ASSUMED: n = 0.013 for new RC pipe; verify against actual pipe material and condition | ERA DDM practice |
| Manning's n (stone masonry) | 0.025 | Mortared stone masonry culvert | ASSUMED: n = 0.025 for stone masonry; verify against actual construction quality | ERA DDM practice |
| Entrance loss Ke | 0.5 | Square-edge headwall | ASSUMED: Ke = 0.5 for square-edge headwall; use ERA-specified Ke values for actual entrance type | FHWA HDS-5 standard |
| Exit loss Kp | 1.0 | Submerged outlet | No flag -- standard practice | FHWA HDS-5 |
| Minimum culvert size | 600 mm diameter | Pipe culvert | No flag | ERA DDM standard |
| Minimum velocity | 0.75 m/s | Self-cleansing | No flag -- ensure minimum velocity met | ERA DDM practice |
| Maximum HW/D | 1.2 | DC5-DC6 roads | No flag -- verify against Table E.31.4 for actual road class | ERA DDM practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| HW/D ratio | -- | 1.0-2.0 | -- | ERA DDM Table E.31.4 | Fail if HW/D exceeds limit for road class. Increase culvert size or improve entrance. |
| V (outlet) | 0.75 | 6.0 | m/s | ERA DDM practice | Warn if V < 0.75 (sedimentation risk); warn if V > 3.0 (erosion protection needed per Skill #32); fail if V > 6.0 (special dissipator needed) |
| V (self-cleansing) | 0.75 | -- | m/s | ERA DDM practice | Warn if design velocity < 0.75 m/s at design flow -- sedimentation risk |
| Culvert diameter | 600 | 1800 | mm | ERA DDM practice | Warn if D < 600 mm (below minimum); if D > 1800 mm for pipe, consider box culvert |
| Cover depth | 600 | -- | mm | ERA DDM Table E.31.5 | Fail if cover < minimum from Table E.31.5 |

### M.5.2 Standards Compliance Checks

- **Check:** Headwater within ERA limits for road class
- **Standard:** ERA DDM, Table E.31.4
- **Pass condition:** HW/D <= maximum for applicable DC class
- **Fail action:** SENIOR REVIEW -- Headwater depth [HW] m (HW/D = [ratio]) exceeds maximum [limit] for DC[X] road. Increase culvert size, add barrels, or improve entrance conditions. ERA departure approval required if limit cannot be met.

- **Check:** Minimum culvert size
- **Standard:** ERA DDM, 600 mm minimum
- **Pass condition:** Culvert diameter or minimum dimension >= 600 mm
- **Fail action:** Increase to minimum 600 mm. No culvert smaller than 600 mm diameter is permitted.

- **Check:** Outlet velocity for erosion
- **Standard:** ERA DDM + Skill #32
- **Pass condition:** Outlet velocity classified and erosion protection specified if V > 1.5 m/s
- **Fail action:** Warn -- Outlet velocity [V] m/s. Specify erosion protection per Skill #32 Ethiopia module.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Culvert span > 3 m | Structural review needed -- approaches bridge-class structure | SENIOR REVIEW -- Culvert span [S] m exceeds 3 m. Structural design per Skill #33 (ERA BDM Part 2 Section 3.6) is mandatory. Consider if bridge is more appropriate. |
| Skewed crossing > 30 degrees | Reduced hydraulic efficiency, increased length | SENIOR REVIEW -- Stream crossing angle [X] degrees. Consider aligning culvert with stream. Adjust hydraulic calculations for increased length and reduced efficiency. |
| Multiple barrel culvert (>2 barrels) | Complex hydraulics, debris blockage risk | SENIOR REVIEW -- [N]-barrel culvert proposed. Verify flow distribution, debris passage, and structural adequacy. Consider single large opening instead. |
| Fish passage requirement | Environmental constraint | SENIOR REVIEW -- Fish passage identified as requirement. Design culvert with natural bed, baffles, or bottomless arch per environmental assessment. |
| Debris-prone catchment | Blockage risk | SENIOR REVIEW -- Catchment has active erosion / degraded vegetation. Consider oversizing by one increment, providing debris rack, or specifying arch/bottomless culvert. |
| Outlet velocity > 4 m/s | Special energy dissipator needed | SENIOR REVIEW -- Outlet velocity [V] m/s exceeds 4 m/s. Specify energy dissipator basin per Skill #32 Ethiopia module. Standard riprap apron may be insufficient. |

---

## M.7 Worked Example -- Ethiopia

### Example: Sizing a Pipe Culvert on a DC5 Link Road

**Source:** Based on ERA DDM 2013 culvert hydraulic design with FHWA approach

**Given:**
- Design flow: Q = 1.2 m3/s (from Skill #29 Ethiopia module, 25-year ARI for pipe culvert on DC5)
- Road: DC5 link road near Jimma, western Ethiopia
- Embankment height: 3.0 m
- Culvert length: 15 m (perpendicular crossing)
- Culvert slope: So = 2% (0.02 m/m)
- Tailwater depth: TW = 0.4 m (from downstream channel analysis, Skill #30)
- Trial culvert: 900 mm RCP, headwall with square edge (Ke = 0.5)

**Solution:**

**Step 1 -- Culvert properties (900 mm RCP):**

```
D = 0.9 m
A = pi * D^2 / 4 = pi * 0.81 / 4 = 0.636 m2
R = D / 4 = 0.225 m
n = 0.013 (RC pipe)
```

**Step 2 -- Check inlet control:**

Using FHWA inlet control equations for concrete pipe with square-edge headwall:

For Q/(A*D^0.5) = 1.2 / (0.636 * 0.949) = 1.2 / 0.603 = 1.99

From FHWA inlet control nomographs for concrete pipe, headwall with square edge:
HW/D approximately 1.35 (submerged flow condition).

HW_inlet = 1.35 * 0.9 = 1.22 m

**Step 3 -- Check outlet control:**

Full flow velocity:
```
V_full = Q / A = 1.2 / 0.636 = 1.89 m/s
V^2/(2g) = 1.89^2 / 19.62 = 0.182 m
```

Friction loss:
```
Sf = (n * V / R^(2/3))^2 = (0.013 * 1.89 / 0.225^(2/3))^2
   = (0.013 * 1.89 / 0.370)^2 = (0.0664)^2 = 0.00441 m/m
hf = Sf * L = 0.00441 * 15 = 0.066 m
```

Outlet control headwater:
```
HW_outlet = TW + (1 + Ke) * V^2/(2g) + hf - L*So
          = 0.4 + (1 + 0.5) * 0.182 + 0.066 - 15 * 0.02
          = 0.4 + 0.273 + 0.066 - 0.300
          = 0.439 m
```

**Step 4 -- Governing control:**

```
HW_design = max(HW_inlet, HW_outlet) = max(1.22, 0.44) = 1.22 m (inlet control governs)
HW/D = 1.22 / 0.9 = 1.36
```

For DC5 road, maximum HW/D = 1.2 (Table E.31.4). HW/D = 1.36 **exceeds limit**.

**Step 5 -- Resize -- try 1050 mm RCP:**

```
D = 1.05 m, A = 0.866 m2, R = 0.2625 m
Q/(A*D^0.5) = 1.2 / (0.866 * 1.025) = 1.2 / 0.888 = 1.35
```

From nomographs: HW/D approximately 0.95 (unsubmerged).
HW_inlet = 0.95 * 1.05 = 1.00 m. HW/D = 0.95 -- within DC5 limit of 1.2. OK.

**Step 6 -- Check outlet velocity:**

```
V_outlet = Q / A = 1.2 / 0.866 = 1.39 m/s
```

Outlet velocity 1.39 m/s -- moderate. Standard riprap apron adequate per Skill #32 Ethiopia module.

**Step 7 -- Validation:**
- 1050 mm RCP for Q = 1.2 m3/s is reasonable
- HW/D = 0.95 within DC5 limit of 1.2 -- OK
- Outlet velocity 1.39 m/s -- riprap protection needed but not a special dissipator
- Self-cleansing velocity 1.39 m/s > 0.75 m/s minimum -- OK
- Cover: 3.0 m embankment - 1.05 m culvert = 1.95 m cover > 600 mm minimum -- OK

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Culvert type | RCP (reinforced concrete pipe) | |
| Diameter | 1050 mm | |
| Length | 15 m | |
| Slope | 2% | |
| Inlet control HW | 1.00 m (HW/D = 0.95) | Within DC5 limit -- OK |
| Outlet control HW | 0.44 m | Not governing |
| Governing control | Inlet control | |
| Outlet velocity | 1.39 m/s | Riprap apron needed (Skill #32) |
| Cover | 1.95 m | > 600 mm minimum -- OK |

Design: 1050 mm RCP with square-edge headwall. Inlet control governs (HW/D = 0.95). Outlet velocity 1.39 m/s requires riprap apron per Skill #32 Ethiopia module. Structural design per Skill #33 (culvert structural design, Plan 02).

---

## M.8 References

1. Ethiopian Roads Authority, *Drainage Design Manual*, 2013. Culvert hydraulics chapters. Developed with DFID/AFCAP/Crown Agents support.
2. Federal Highway Administration, *Hydraulic Design Series No. 5 (HDS-5): Hydraulic Design of Highway Culverts*, 3rd Edition, 2012.
3. AASHTO, *Highway Drainage Guidelines*, 4th Edition, 2007.
4. Federal Highway Administration, *Hydraulic Engineering Circular No. 14 (HEC-14): Hydraulic Design of Energy Dissipators for Culverts and Channels*, 3rd Edition, 2006.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-06 | AI draft | Initial draft -- ERA culvert types and sizes, inlet/outlet control methodology (FHWA/AASHTO approach), Manning's n for culvert materials, headwater limits by DC class, entrance loss coefficients, cross-country comparison (ERA/MoWT/RDM), drainage pipeline cross-references to Skills #29, #30, #32, #33. Values flagged for verification against ERA DDM PDF per D-04. |
