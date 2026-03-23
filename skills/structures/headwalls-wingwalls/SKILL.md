---
name: "headwalls-wingwalls"
description: "Use when designing inlet and outlet structures (headwalls, wingwalls, apron slabs) for culverts and small span structures. Consumes culvert dimensions from Skill #33 (Culvert Structural Design) or structure dimensions from Skill #40 (Small Span Structures). References earth pressure from MoWT Vol 4 Section 5.8."
---

# Headwalls & Wingwalls

> **Skill ID:** 34
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK

## Purpose

Design headwalls and wingwalls for culvert inlets and outlets and for small span structure abutments. This skill selects the appropriate headwall type, determines wingwall configuration and dimensions, sizes apron slabs, and specifies erosion protection requirements at the outlet. The skill serves both culverts (from Skill #33) and small span structures (from Skill #40), making it a shared end-structure design capability.

## When to Use This Skill

- **Use when:** Headwalls, wingwalls, or apron slabs are needed at culvert inlets/outlets or at the abutments of small span structures. Required after Skill #33 (Culvert Structural Design) has determined the culvert structure or Skill #40 (Small Span Structures) has determined the structure type and dimensions.
- **Do not use when:** Designing full bridge abutments for larger spans (use Skill #38, Bridge Substructure). Not for culvert hydraulic sizing (Skill #31) or culvert structural design (Skill #33).
- **Prerequisite skills:** Skill #33 (Culvert Structural Design) -- provides culvert_dimensions and loading_summary. OR Skill #40 (Small Span Structures) -- provides structure_dimensions for small spans.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Headwall Types:**

- **Straight headwall:** A vertical or near-vertical wall across the end of the culvert, perpendicular to the watercourse. Simple to construct. Suitable for small culverts where hydraulic efficiency at the entrance is not critical. May project above fill level.
- **Flared headwall:** A headwall that is wider at the top than at the barrel opening, providing a smoother transition for flow entering or exiting the culvert. Improves hydraulic efficiency at the inlet.
- **Projecting headwall:** The culvert barrel projects beyond the embankment face without a headwall. Simplest construction but poor hydraulic efficiency (highest entrance loss Ke = 0.9) and susceptible to damage from erosion and debris.

**Wingwall Types:**

- **Parallel wingwalls:** Walls extending from the headwall parallel to the culvert barrel (or stream flow direction). Provide embankment retention but minimal hydraulic benefit.
- **Flared wingwalls (30/45/60 degrees):** Walls extending from the headwall at an angle to the flow direction. Provide improved flow transition and embankment retention. 45-degree flare is the most common standard configuration.
- **U-wingwalls:** Wingwalls perpendicular to the headwall (returning parallel to the embankment face). Used where space is constrained.

**Apron Slabs:**

A concrete slab at the inlet and/or outlet of the culvert, extending from the headwall base. At the outlet, the apron slab provides:
- Scour protection against outlet velocity erosion
- A smooth transition from the culvert barrel to the downstream channel
- A stable platform for energy dissipation (riprap, gabion baskets)

**Key Design Considerations:**

- **Headwall height:** Determined by fill depth above culvert + freeboard. Must retain the embankment fill at the culvert end.
- **Wingwall earth pressure:** Wingwalls act as retaining walls -- they resist lateral earth pressure from the embankment fill. The same earth pressure principles from MoWT Vol 4, Section 5.8 apply (gamma_fL = 1.50 ULS).
- **Erosion protection at outlet:** High outlet velocities (from Skill #31/33) require scour protection downstream. Skill #32 (Erosion Protection) provides detailed scour protection design.

### 1.2 Universal Formulas

**Headwall height:**

```
H_headwall = H_fill + D_culvert + t_slab + freeboard
```

Where H_fill = fill depth, D_culvert = culvert height/diameter, t_slab = top slab thickness, freeboard = typically 0.3-0.5 m above road surface (for parapet) or level with road surface.

**Earth pressure on wingwall (retaining wall analysis):**

```
P_a = 0.5 x Ka x gamma_soil x H_wing^2 + Ka x q_surcharge x H_wing
```

Where Ka = active earth pressure coefficient (= (1 - sin(phi'))/(1 + sin(phi'))), gamma_soil = unit weight of fill, H_wing = retained height of wingwall, q_surcharge = live load surcharge from Section 5.8.2.

**Wingwall stability checks:**

```
Overturning: FoS = Restoring moment / Overturning moment >= 2.0
Sliding: FoS = Resisting force / Sliding force >= 1.5
Bearing: q_base = V/A +/- M/Z <= q_allow
```

**Apron slab length (rule of thumb):**

```
L_apron >= 1.5 x D_culvert (minimum)
```

Where D_culvert = culvert height or diameter. Longer aprons required for high outlet velocities.

### 1.3 Figures & Diagrams

**Headwall and wingwall plan view:** Shows the culvert barrel extending through an embankment, with headwalls at each end and wingwalls extending at an angle (typically 45 degrees) from the headwall corners. The flare angle determines how quickly the wingwalls diverge from the barrel.

**Wingwall cross-section:** Shows the wingwall as a cantilever retaining wall, with earth pressure acting on the back face (embankment side), self-weight providing stability, and the foundation bearing on the subgrade. The wall is thicker at the base (tapering up) for efficient use of material.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Receive structure dimensions
  |-- From Skill #33: culvert_dimensions, loading_summary
  |-- OR from Skill #40: structure_dimensions
  +-- Load country module

Step 2: Determine headwall type
  |-- Culvert diameter/span <= 1200 mm --> Standard straight headwall
  |-- Culvert diameter/span > 1200 mm --> Designed headwall (straight or flared)
  |-- High inlet efficiency needed --> Flared headwall
  +-- See country module for standard configurations

Step 3: Determine wingwall configuration
  |-- Standard practice: 45-degree flared wingwalls
  |-- Constrained space: parallel or U-wingwalls
  |-- Hydraulic efficiency critical: 30-degree flare (wider opening)
  +-- Select wingwall angle

Step 4: Determine headwall height
  |-- H_headwall = fill depth + culvert height + slab thickness
  |-- Add freeboard or parapet as required
  +-- Check against road level

Step 5: Check earth pressure on wingwall
  --> Same principles as MoWT Vol 4, Section 5.8
  |-- Calculate active earth pressure on wingwall
  |-- Include live load surcharge
  |-- Apply gamma_fL = 1.50 (ULS)
  +-- Determine wall thickness

Step 6: Check wingwall stability
  |-- Overturning: FoS >= 2.0
  |-- Sliding: FoS >= 1.5
  |-- Bearing: q_base <= q_allow (from Skill #10)
  +-- If fails --> increase base width, add heel/toe, or use counterfort

Step 7: Size apron slab
  |-- Length >= 1.5 x culvert height
  |-- Width = full headwall width
  |-- Thickness = 200-300 mm (typical)
  +-- Check for erosion protection need (Skill #32)

Step 8: Specify erosion protection
  --> Reference Skill #32 (Erosion Protection)
  |-- Outlet velocity from Skill #31
  |-- If V > 3 m/s: riprap or gabion protection required
  +-- If V > 6 m/s: energy dissipation structure needed

Step 9: Run validation (Section 4 + country module Section M.5)

Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Standard headwalls save time and cost.** For culverts up to 1200 mm diameter, standard headwall details (from country standards) avoid the need for bespoke design. These are proven configurations that experienced engineers use routinely.

**Wingwall earth pressure is often the governing design case.** The wingwall is effectively a retaining wall. For deep fills, the earth pressure on wingwalls can be substantial, requiring significant wall thicknesses or counterforts.

**Outlet erosion protection is as important as the structure itself.** Many culvert failures in practice are not structural failures but erosion failures at the outlet. Always specify scour protection commensurate with the outlet velocity.

**Symmetry at inlet and outlet is standard but not always necessary.** Wingwall configurations can differ between inlet and outlet ends depending on site conditions (e.g., wider flare at outlet for energy dissipation, narrower at inlet where fill is lower).

### 2.3 Common Errors

1. **Treating wingwalls as decorative elements.** Wingwalls are structural retaining walls that must resist earth pressure. They require proper structural design.
2. **Forgetting to check wingwall stability.** Overturning, sliding, and bearing checks are essential -- the wingwall must not topple, slide, or overstress the foundation.
3. **Not specifying outlet erosion protection.** A culvert with a headwall but no outlet protection will erode the downstream channel, potentially undermining the headwall itself.
4. **Ignoring live load surcharge on wingwalls.** Traffic on the road surface creates surcharge behind the wingwall, increasing earth pressure. This must be included per Section 5.8.2.
5. **Using the same wingwall height as headwall height.** Wingwalls typically taper in height from the headwall (full height) to their outer end (lower height as they extend away from the embankment).

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Wingwall angle | 45 degrees | Not specified | ASSUMED: 45-degree flared wingwalls (standard) | Most common configuration |
| Apron slab length | 1.5 x D_culvert | Not specified | ASSUMED: Apron length = 1.5 x culvert height | Minimum rule of thumb |
| Apron slab thickness | 250 mm | Not specified | ASSUMED: 250 mm apron slab | Common practice minimum |
| Wingwall Ka | 0.33 | phi' = 30 degrees | ASSUMED: Ka = 0.33 (phi' = 30 deg) | Active conditions for cantilever wingwall |
| FoS overturning | 2.0 | Not specified | No flag | Standard minimum |
| FoS sliding | 1.5 | Not specified | No flag | Standard minimum |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output.
3. **Conservative direction:** Use higher earth pressure, longer apron slab when uncertain.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Headwall height | 0.5 | 8 | m | Warn if > 5 m (large retaining structure) |
| Wingwall thickness (base) | 200 | 1000 | mm | Warn if < 250 mm; reject if < 200 mm |
| Wingwall flare angle | 0 | 90 | degrees | Warn if > 60 (unusual); parallel = 0, U = 90 |
| Apron slab length | 0.5 | 10 | m | Warn if < 1.0 x D_culvert |
| FoS overturning | 2.0 | -- | -- | Flag if < 2.0 |
| FoS sliding | 1.5 | -- | -- | Flag if < 1.5 |

### 4.2 Consistency Checks

- **Headwall height vs. fill depth:** Headwall height must be consistent with fill depth and culvert size.
- **Wingwall taper:** Wingwall height should reduce from headwall junction to outer end.
- **Erosion protection vs. outlet velocity:** If outlet velocity > 3 m/s, erosion protection must be specified.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Wingwall height > 5 m | Large retaining structure | SENIOR REVIEW -- Wingwall retained height [H] m exceeds 5 m. Consider counterfort or reinforced earth alternative. Detailed geotechnical and structural design required. |
| FoS overturning < 2.0 | Stability concern | SENIOR REVIEW -- Overturning FoS = [X] is below 2.0. Increase base width, add heel, or reconfigure wingwall. |
| FoS sliding < 1.5 | Stability concern | SENIOR REVIEW -- Sliding FoS = [X] is below 1.5. Consider shear key, wider base, or improved foundation. |
| Outlet velocity > 6 m/s | Severe erosion risk | SENIOR REVIEW -- Outlet velocity [V] m/s. Energy dissipation structure required. See Skill #32. |
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Country module selection |
| culvert_dimensions | object | mm | Yes (Option A) | Skill #33 | Structural dimensions of culvert |
| loading_summary | object | kN/m2 | Yes (Option A) | Skill #33 | Earth pressure and surcharge for end structure design |
| structure_dimensions | object | mm | Yes (Option B) | Skill #40 | Dimensions of small span structure |
| fill_depth_m | number | m | Yes | User / survey | Depth of fill above culvert/structure |
| outlet_velocity_ms | number | m/s | No | Skill #31 | For erosion protection assessment |
| bearing_capacity_kPa | number | kPa | Yes | Skill #10 | For wingwall foundation check |
| soil_phi_degrees | number | degrees | No | Skill #10 | Angle of internal friction for earth pressure |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| headwall_type | text | -- | Documentation | Straight, flared, or projecting |
| wingwall_config | object | -- | Documentation | Angle, height, thickness, length |
| apron_slab | object | mm | Documentation | Length, width, thickness |
| erosion_protection | text | -- | Skill #32 | Requirement for scour protection at outlet |
| wingwall_stability | object | -- | Documentation | FoS overturning, sliding, bearing check |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT standards for headwalls/wingwalls | Markdown |
| `modules/uk.md` | UK DMRB standards (knowledge-based) | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module.

### Step 2: Receive Structure Dimensions
From Skill #33 (culvert_dimensions, loading_summary) or Skill #40 (structure_dimensions).

### Step 3: Select Headwall Type
Based on culvert/structure size and standard configurations from country module.

### Step 4: Select Wingwall Configuration
Determine wingwall angle, height profile (tapering from headwall to outer end), and preliminary thickness.

### Step 5: Calculate Headwall Height
H_headwall from fill depth, culvert/structure height, slab thickness, and freeboard.

### Step 6: Analyse Earth Pressure on Wingwall
Calculate active earth pressure including live load surcharge. Apply country-specific load factors.

### Step 7: Size Wingwall
Determine wall thickness (base and top), toe and heel dimensions for stability.

### Step 8: Check Wingwall Stability
Overturning (FoS >= 2.0), sliding (FoS >= 1.5), bearing (q <= q_allow).

### Step 9: Size Apron Slab
Length, width, thickness based on culvert size and outlet velocity.

### Step 10: Specify Erosion Protection
Reference Skill #32 for outlet protection based on outlet velocity.

### Step 11: Run Validation
All universal + country-specific checks.

### Step 12: Produce Output

---

## 8. Output Format

```
============================================================
HEADWALL & WINGWALL DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

DESIGN INPUTS
-------------
Source:                      [Skill #33 / Skill #40]
Structure type:              [box culvert / pipe culvert / small span]
Structure size:              [span x rise mm / diameter mm]
Fill depth:                  [X] m
Outlet velocity:             [X] m/s

HEADWALL DESIGN
---------------
Headwall type:               [straight / flared / projecting]
Headwall height:             [X] m
Headwall width:              [X] m
Headwall thickness:          [X] mm

WINGWALL DESIGN
---------------
Configuration:               [parallel / flared at XX degrees / U-type]
Wingwall height (at headwall): [X] m
Wingwall height (at tip):      [X] m
Wingwall length:               [X] m
Base thickness:                [X] mm
Top thickness:                 [X] mm

EARTH PRESSURE ON WINGWALL
--------------------------
Ka:                          [X] (phi' = [X] degrees)
Retained height:             [X] m
Surcharge:                   [X] kN/m2 ([HA / HB XX])
Active pressure at base:     [X] kN/m2 (nominal)
Design pressure at base:     [X] kN/m2 (ULS, gamma_fL = [X])

WINGWALL STABILITY
------------------
Overturning FoS:             [X] (required >= 2.0) [PASS / FAIL]
Sliding FoS:                 [X] (required >= 1.5) [PASS / FAIL]
Bearing pressure:            [X] kPa (allowable [X] kPa) [PASS / FAIL]

APRON SLAB
----------
Length:                      [X] m
Width:                       [X] m
Thickness:                   [X] mm

EROSION PROTECTION
------------------
Outlet velocity:             [X] m/s
Protection required:         [Yes / No]
Recommendation:              [riprap / gabion / energy dissipator]
Reference:                   Skill #32 (Erosion Protection)

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Checks]

ESCALATION FLAGS
----------------
[Flags or "None"]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed reinforcement design for wingwalls. Full bridge abutment design (Skill #38). Energy dissipation structure design (specialist). Aesthetic treatment of headwalls.
- **Simplifications:** Wingwall analysed as simple cantilever retaining wall. Does not account for 3D effects at the junction of headwall and wingwall. Bearing pressure assumed uniform.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with headwall/wingwall design for culverts and small span structures, earth pressure per MoWT Vol 4 Section 5.8 |
