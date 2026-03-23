---
name: "erosion-protection"
description: "Use when designing erosion protection at culvert outlets, channel transitions, or steep drainage sections. Requires outlet velocity from Skill #31 (Culvert Hydraulic Design) or channel velocity from Skill #30 (Ditch & Channel Design). Links to Skill #39 (Bridge Hydraulics) for river scour."
---

# Erosion Protection

> **Skill ID:** 32
> **Domain:** Drainage
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK

## Purpose

Design erosion protection measures at culvert outlets, channel transitions, and areas of high flow velocity to prevent scour damage to road embankments, drainage structures, and downstream areas. This skill determines whether protection is needed based on velocity versus permissible limits, selects the appropriate protection type (rip-rap, gabions, concrete, stone pitching), and sizes the protection elements.

## When to Use This Skill

- **Use when:** Designing scour protection at culvert outlets, channel outfalls, steep drainage sections, or any location where flow velocity exceeds the permissible velocity for the native soil. Required after Skill #31 (Culvert Design) or Skill #30 (Ditch Design) has determined outlet or channel velocity.
- **Do not use when:** Designing bridge scour protection at river crossings (Skill #39 covers bridge-scale scour). Not for slope stability analysis or geotechnical erosion control.
- **Prerequisite skills:** Skill #31 (Culvert Hydraulic Design) -- provides outlet_velocity and design_flow. Skill #30 (Ditch & Channel Design) -- provides channel_velocity. Skill #29 (Hydrology) -- provides design_flow.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Scour Mechanisms:** Erosion at drainage structure outlets occurs due to:
- **Outlet scour:** High-velocity jet from culvert impinges on erodible bed material, creating a scour hole downstream.
- **Constriction scour:** Flow acceleration through a constriction (culvert, bridge) increases velocity above natural levels.
- **General bed degradation:** Long-term lowering of the channel bed due to changes in sediment transport equilibrium.

**Permissible Velocity:** The maximum flow velocity that the native soil or channel material can resist without erosion. When the actual velocity exceeds the permissible velocity, erosion protection is required.

**Rip-rap:** Loose stone (rock armour) placed on a slope or channel bed to resist erosion. The stone size (D50 -- median stone diameter) is the primary design parameter, determined by flow velocity, depth, and stone specific gravity. Rip-rap is the most common erosion protection for moderate velocities (2-5 m/s).

**Rip-rap Apron Dimensions:** For culvert outlets:
- Length: typically 3-4 times the culvert diameter downstream
- Width: typically 2 times the culvert diameter plus the channel width
- Thickness: minimum 1.5 * D50 or 300 mm, whichever is larger

**Gabion Baskets:** Wire mesh containers filled with stone, used for channel lining and scour protection. Standard sizes typically 1x1x2m. Wire mesh must be galvanized or PVC-coated to resist corrosion. Gabions are effective where rip-rap stone sizes are not locally available or where a more structured protection is needed.

**Energy Dissipation Structures:** For very high velocities or large flows, simple rip-rap may be insufficient. Options include:
- Stilling basins (hydraulic jump energy dissipation)
- Impact basins (flow hits a baffle wall)
- Drop structures (controlled drop in elevation)

**Filter Layer:** A geotextile fabric or graded aggregate layer placed beneath rip-rap to prevent fine soil from being piped through the stone voids by seepage forces. Critical for rip-rap effectiveness.

### 1.2 Universal Formulas

**Rip-rap D50 Sizing (Isbash Method, simplified):**

```
D50 = V^2 / (2 * g * C_s * (Ss - 1))
```

Where:
- D50 = median stone size (m)
- V = design velocity (m/s)
- g = 9.81 m/s2
- C_s = stability coefficient (0.86 for high turbulence at culvert outlets)
- Ss = specific gravity of stone (typically 2.65)

**Simplified Rip-rap Sizing (practical rule):**

For culvert outlet protection: D50 (mm) approximately equals 50 * V^2 / (Ss - 1), where V is outlet velocity in m/s and Ss is stone specific gravity.

**Rip-rap Layer Thickness:**

```
t = 1.5 * D50 (minimum)
```

Or 300 mm, whichever is larger.

### 1.3 Figures & Diagrams

**Culvert Outlet Protection Plan:** Shows the culvert outlet, rip-rap apron extending downstream and flaring outward, with dimensions referenced to culvert diameter D. The apron length (3-4D) and width (2D + channel) are shown in plan view.

**Rip-rap Cross-Section:** Shows the rip-rap stones on a graded filter or geotextile layer, with the native soil beneath. Layer thickness = 1.5*D50 minimum.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Obtain velocity and flow data
  |-- Outlet velocity from Skill #31 (culvert) or Skill #30 (channel)
  |-- Design flow from Skill #29
  +-- Culvert diameter or channel dimensions

Step 2: Determine permissible velocity for native soil
  --> See country module for permissible velocity table
  |-- Sandy soil: 0.3-0.6 m/s
  |-- Silty soil: 0.6-1.0 m/s
  |-- Firm clay: 1.0-1.5 m/s
  |-- Gravel: 1.5-2.5 m/s
  +-- Rock: > 3.0 m/s

Step 3: Assess erosion risk
  |-- If V_actual <= V_permissible: no protection needed
  |-- If V_actual > V_permissible: protection required
  +-- Determine severity: moderate (V < 3 m/s), high (3-6 m/s), extreme (> 6 m/s)

Step 4: Select protection type
  |-- Moderate velocity (< 3 m/s): rip-rap apron or gabion mattress
  |-- High velocity (3-6 m/s): heavy rip-rap or gabion baskets
  |-- Extreme velocity (> 6 m/s): energy dissipation structure
  +-- Consider local material availability

Step 5: Size protection elements
  |-- Rip-rap: calculate D50 from velocity
  |-- Apron dimensions: length = 3-4*D, width = 2*D + channel
  |-- Layer thickness: 1.5*D50 minimum
  +-- Specify filter layer (geotextile or graded aggregate)

Step 6: Validate and produce output
```

### 2.2 Professional Judgment (Universal)

**Erosion protection is only as good as its foundation.** If the filter layer fails (allowing piping of fines through the rip-rap), the entire protection will collapse. Specify an appropriate filter.

**Local materials determine the most economical solution.** Rip-rap requires large stone, which may not be available everywhere. Gabions can use smaller stone contained in wire mesh. Concrete is always an option but more expensive.

**Energy dissipation is needed for extreme velocities.** When V > 6 m/s, simple rip-rap may be insufficient. Specialist hydraulic design (stilling basin, drop structure) should be considered.

### 2.3 Common Errors

1. **Omitting the filter layer.** Rip-rap placed directly on fine soil will fail by piping.
2. **Undersizing rip-rap stone.** Using available stone without checking D50 requirements leads to stone displacement.
3. **Insufficient apron length.** Scour holes extend further downstream than expected. Use 3-4 culvert diameters minimum.
4. **Not protecting the embankment toe.** Erosion at the culvert outlet can undermine the road embankment if the apron does not extend to protect the toe.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Stone Ss | 2.65 | Not specified | ASSUMED: Stone specific gravity 2.65 | Typical natural stone |
| Apron length | 4 * D | Not specified | ASSUMED: Apron length = 4 x culvert diameter | Conservative standard |
| Filter | Geotextile | Not specified | ASSUMED: Geotextile filter layer | Standard practice |
| Min rip-rap thickness | 300 mm | Not specified | No flag | Minimum practical thickness |

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| D50 | 100 | 1000 | mm | Warn if > 600 (very large, availability concern) |
| Apron length | 2*D | 10*D | m | Warn if < 3*D |
| V_actual | 0 | 15 | m/s | Flag if > 6 (energy dissipation needed) |

### 4.2 Consistency Checks

- **D50 vs velocity:** D50 must be adequate for the design velocity. Check using Isbash or equivalent formula.
- **Apron vs culvert size:** Apron dimensions must be consistent with culvert size.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| V > 6 m/s | Extreme velocity; rip-rap alone may be insufficient | SENIOR REVIEW -- Outlet velocity [V] m/s exceeds 6 m/s. Energy dissipation structure (stilling basin, drop structure) may be required. Specialist hydraulic design recommended. See Skill #39 for bridge-scale solutions. |
| D50 > 600 mm | Very large stone required; may not be locally available | SENIOR REVIEW -- Required D50 = [X] mm. Verify local stone availability. Consider gabion baskets as alternative. |
| No permissible velocity data for soil type | Cannot assess erosion risk | SENIOR REVIEW -- Soil type at outlet not classified. Conduct site investigation to determine erosion resistance. |

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Country module selection |
| outlet_velocity | number | m/s | Yes | Skill #31 (Culvert Design) | Culvert outlet velocity |
| design_flow | number | m3/s | Yes | Skill #29 (Hydrology) | Design peak flow |
| channel_velocity | number | m/s | No | Skill #30 (Ditch Design) | Channel velocity at outfall |
| culvert_diameter | number | m | No | Skill #31 | For apron sizing |
| Soil type at outlet | text | -- | Yes | User / Skill #8 | For permissible velocity |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| protection_type | text | -- | Documentation | Rip-rap, gabion, concrete, energy dissipator |
| D50 | number | mm | Documentation | Median stone size for rip-rap |
| apron_dimensions | geometry | m | Documentation | Length, width, thickness |
| filter_specification | text | -- | Documentation | Geotextile or graded filter |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT Vol 2 erosion protection standards | Markdown |
| `modules/uk.md` | UK CIRIA standards (knowledge-based) | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
### Step 2: Obtain Velocity and Flow Data from Skill #31 or #30
### Step 3: Determine Permissible Velocity for Native Soil
### Step 4: Assess Erosion Risk (V_actual vs V_permissible)
### Step 5: Select Protection Type
### Step 6: Size Protection Elements (D50, apron dimensions, filter)
### Step 7: Validate and Produce Output

---

## 8. Output Format

```
============================================================
EROSION PROTECTION DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

DESIGN INPUTS
-------------
Outlet velocity:             [X] m/s (from Skill #31)
Design flow:                 [X] m3/s (from Skill #29)
Culvert diameter:            [X] m
Soil type at outlet:         [type]
Permissible velocity:        [X] m/s

EROSION RISK ASSESSMENT
-----------------------
V_actual vs V_permissible:   [X] m/s > [Y] m/s -- PROTECTION REQUIRED
Severity:                    [Moderate / High / Extreme]

PROTECTION DESIGN
-----------------
Protection type:             [rip-rap / gabion / concrete / energy dissipator]
Stone D50:                   [X] mm
Rip-rap layer thickness:     [X] mm (= 1.5 * D50)
Apron length:                [X] m (= [N] * D)
Apron width:                 [X] m
Filter layer:                [geotextile / graded aggregate]

ASSUMPTIONS & DEFAULTS
---------------------
[All assumed values with flags]

ESCALATION FLAGS
---------------
[Flags or "None"]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
============================================================
```

---

## 9. Worked Examples

See country modules:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Bridge-scale river scour (Skill #39). Coastal erosion. Slope erosion control (geotechnical). Bioengineering solutions (vetiver grass, live stakes).
- **Simplifications:** Uses simplified D50 formulae rather than full probabilistic rip-rap design. Apron dimensions based on rules of thumb rather than detailed scour depth prediction.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with rip-rap/gabion design, MoWT Vol 2 Sections 9.14-9.15, pipeline from Skills #30/#31 |
