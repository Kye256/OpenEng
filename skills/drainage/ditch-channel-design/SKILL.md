---
name: "ditch-channel-design"
description: "Use when sizing roadside ditches, median drains, or outfall channels. Requires design flow from Skill #29 (Hydrology) and cross-section geometry from Skill #17 (Cross-Section Design). Outputs feed into Skill #32 (Erosion Protection) for lining requirements."
---

# Ditch & Channel Design

> **Skill ID:** 30
> **Domain:** Drainage
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Size ditches and channels to convey the design peak flow from Skill #29 without overtopping or causing erosion. This includes roadside side drains, median drains, and outfall channels. The skill determines channel dimensions, checks capacity using Manning's equation, verifies that flow velocities are within permissible limits for the channel material, and specifies lining requirements where velocities exceed unlined limits.

## When to Use This Skill

- **Use when:** Sizing any open channel for road drainage -- side drains, median drains, catch drains, or outfall channels. Required after Skill #29 has produced the design flow.
- **Do not use when:** Designing closed pipe drainage systems (storm sewers), culverts (Skill #31), or bridge waterway openings (Skill #39). Not for natural river channel design.
- **Prerequisite skills:** Skill #29 (Hydrology for Road Drainage) -- provides design_flow. Skill #17 (Cross-Section Design) -- provides standard ditch dimensions from road cross-section.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Manning's Equation for Open Channel Flow:** The fundamental equation for calculating flow capacity in open channels under uniform flow conditions:

```
Q = (1/n) * A * R^(2/3) * S^(1/2)
```

Where Q = discharge (m3/s), n = Manning's roughness coefficient, A = cross-sectional area of flow (m2), R = hydraulic radius = A/P (m), P = wetted perimeter (m), S = longitudinal gradient (m/m).

**Trapezoidal Channel Geometry:** The most common shape for roadside ditches. Defined by bottom width (b), side slopes (z:1, horizontal:vertical), and flow depth (d).
- Area: A = (b + z*d) * d
- Wetted perimeter: P = b + 2*d*sqrt(1 + z^2)
- Top width: T = b + 2*z*d

**V-Shaped Channel:** A trapezoidal channel with b = 0. Common for small side drains.
- Area: A = z * d^2
- Wetted perimeter: P = 2*d*sqrt(1 + z^2)

**Freeboard:** The vertical distance between the design water surface and the top of the channel. Minimum freeboard prevents overtopping during flow surges or wave action. Typically 150 mm minimum for road side drains.

**Permissible Velocity:** The maximum flow velocity that a channel material can withstand without erosion. Unlined earth channels have low permissible velocities (0.6-1.5 m/s depending on soil type). Lined channels (concrete, stone pitching) can handle much higher velocities (3-6 m/s).

**Channel Lining:** Protection applied to channel surfaces to resist erosion at high velocities. Types include concrete lining, stone pitching, gabion mattresses, grass lining, and geotextile-reinforced solutions.

### 1.2 Universal Formulas

**Manning's Equation:**

```
Q = (1/n) * A * R^(2/3) * S^(1/2)
```

**Flow Velocity:**

```
V = Q / A = (1/n) * R^(2/3) * S^(1/2)
```

**Trapezoidal Section Properties:**

```
A = (b + z*d) * d
P = b + 2*d*sqrt(1 + z^2)
R = A / P
```

### 1.3 Figures & Diagrams

**Trapezoidal Channel Cross-Section:** A trapezoid with bottom width b, side slopes at z:1 (horizontal:vertical), flow depth d, and total depth D = d + freeboard. The road carriageway is on one side, with the back slope on the other.

**Velocity vs Permissible Limits:** A comparison diagram showing calculated velocity against the permissible velocity for the channel material, with zones indicating "no lining needed," "lining required," and "redesign required."

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Obtain design flow Q from Skill #29

Step 2: Determine longitudinal gradient
  |-- From road profile (if drain follows road grade)
  |-- Or independent drain gradient (if drain has its own profile)
  +-- Check minimum gradient >= 0.5% (prevent silting)

Step 3: Select channel shape and trial dimensions
  |-- Standard ditch dimensions from Skill #17 (cross-section)
  |-- Or trial dimensions based on engineering judgment
  +-- Typical: trapezoidal, b = 0.5m, z = 1.5:1

Step 4: Select Manning's n
  --> See country module for n values by channel type

Step 5: Calculate channel capacity with Manning's equation
  |-- Compute A, P, R for trial dimensions
  |-- Q_capacity = (1/n) * A * R^(2/3) * S^(1/2)
  +-- If Q_capacity < Q_design --> increase dimensions and repeat

Step 6: Check velocity
  |-- V = Q / A
  |-- Compare V against permissible velocity for channel material
  |-- If V > permissible --> specify lining or redesign
  +-- If V < 0.3 m/s --> warn (potential silting)

Step 7: Add freeboard
  |-- Minimum 150 mm above design water level
  +-- Total channel depth D = d + freeboard

Step 8: Validate (Section 4)

Step 9: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Design to standard dimensions where possible.** Using standard ditch profiles (from Skill #17) simplifies construction and maintenance. Only deviate from standard dimensions when hydraulic requirements demand it.

**Velocity is as important as capacity.** A channel may have adequate capacity but excessive velocity, causing erosion. Always check both.

**Minimum gradient prevents sedimentation.** Gradients below 0.5% allow sediment to settle, reducing capacity over time and increasing maintenance.

**Outfall design is critical.** Where a ditch discharges to natural ground, the outfall must be designed to prevent erosion of the receiving area. This feeds into Skill #32 (Erosion Protection).

### 2.3 Common Errors

1. **Using incorrect Manning's n.** Roughness varies significantly between earth (0.025-0.030), concrete (0.013-0.015), and grass-lined (0.035-0.045) channels. Using generic values produces incorrect capacity.
2. **Not checking velocity against permissible limits.** A channel may carry the flow but erode if velocity exceeds material limits.
3. **Forgetting freeboard.** Designing for exact capacity with no margin is unsafe.
4. **Ignoring downstream effects.** Concentrating flow in a ditch and discharging at a point can cause severe erosion if the outfall is not protected.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Channel shape | Trapezoidal | Not specified | No flag | Most common for road drains |
| Minimum gradient | 0.5% | Not specified | ASSUMED: Min gradient 0.5% | Prevent silting |
| Freeboard | 150 mm | Not specified | ASSUMED: Freeboard 150 mm | Standard minimum |
| Side slope | 1.5:1 (H:V) | Not specified | ASSUMED: Side slope 1.5:1 | Common MoWT standard |

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Q_capacity | Q_design | -- | m3/s | Fail if Q_capacity < Q_design |
| V (velocity) | 0.3 | Permissible | m/s | Warn if < 0.3 (silting); fail if > permissible |
| Gradient | 0.3 | 10 | % | Warn if < 0.5%; warn if > 5% (erosion risk) |
| Depth | 0.2 | 2.0 | m | Warn if > 1.5 (deep, safety concern) |
| Freeboard | 0.10 | 0.50 | m | Warn if < 0.15 m |

### 4.2 Consistency Checks

- **Capacity vs demand:** Q_capacity must exceed Q_design with freeboard.
- **Velocity vs material:** Velocity must be below permissible for the selected channel material.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| V > permissible velocity | Erosion will occur | SENIOR REVIEW -- Channel velocity [V] m/s exceeds permissible [Vp] m/s for [material]. Specify lining or reduce gradient. |
| Very deep channel (> 1.5 m) | Safety concern; construction cost | SENIOR REVIEW -- Channel depth [d] m exceeds 1.5 m. Consider parallel channels, pipe drain, or alternative alignment. |
| Gradient < 0.5% | Silting risk | NOTE -- Channel gradient [S]% is below 0.5%. Silting likely; increased maintenance required. |

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| design_flow | number | m3/s | Yes | Skill #29 (Hydrology) | Peak design flow from hydrological analysis |
| Channel gradient | number | % or m/m | Yes | User / road profile | Longitudinal slope of channel |
| Channel material | text | -- | Yes | User | Earth, concrete, stone pitching, grass-lined |
| Standard ditch dimensions | geometry | m | No | Skill #17 (Cross-Section) | Standard cross-section ditch profile |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| channel_velocity | number | m/s | Skill #32 (Erosion Protection) | Flow velocity for erosion protection design at outfall |
| channel_dimensions | geometry | m | Documentation | Bottom width, side slopes, depth, freeboard |
| lining_type | text | -- | Documentation | Required lining type (if any) |
| channel_capacity | number | m3/s | Documentation | Calculated capacity of the designed channel |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT Vol 2 standards and Manning's n values | Markdown |
| `modules/uk.md` | UK DMRB CG 501 standards (knowledge-based) | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify jurisdiction and load country module.

### Step 2: Obtain Design Flow
Receive design_flow (Q in m3/s) from Skill #29.

### Step 3: Determine Channel Gradient
From road profile or independent drain gradient. Check minimum 0.5%.

### Step 4: Select Channel Shape and Trial Dimensions
Use standard dimensions from Skill #17 or select trial: trapezoidal, b = 0.5m, z = 1.5:1, trial depth d.

### Step 5: Select Manning's n
From country module tables for channel material.

### Step 6: Calculate Capacity
Apply Manning's equation. Compare Q_capacity against Q_design.

### Step 7: Check Velocity
V = Q/A. Compare against permissible velocity for channel material.

### Step 8: Add Freeboard and Finalize
D_total = d + freeboard (min 150 mm).

### Step 9: Produce Output

---

## 8. Output Format

```
============================================================
DITCH & CHANNEL DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

DESIGN INPUTS
-------------
Design flow (Q):             [X] m3/s (from Skill #29)
Channel gradient (S):        [X]%
Channel material:            [type]
Manning's n:                 [X]

CHANNEL GEOMETRY
----------------
Shape:                       Trapezoidal
Bottom width (b):            [X] m
Side slopes (z:1):           [X]:1 (H:V)
Flow depth (d):              [X] m
Freeboard:                   [X] m
Total depth (D):             [X] m
Top width (T):               [X] m

HYDRAULIC CHECK
---------------
Flow area (A):               [X] m2
Wetted perimeter (P):        [X] m
Hydraulic radius (R):        [X] m
Capacity (Q_cap):            [X] m3/s  [>= Q_design: PASS / FAIL]
Velocity (V):                [X] m/s
Permissible velocity:        [X] m/s  [V <= Vp: PASS / FAIL]

LINING REQUIREMENT
------------------
[Lining type or "None -- velocity within permissible limits for unlined channel"]

ASSUMPTIONS & DEFAULTS
---------------------
[All assumed values with flags]

VALIDATION
----------
[Checks]

ESCALATION FLAGS
---------------
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

- **Not covered:** Closed pipe storm sewer design. Compound channel sections (main channel + floodplain). Gradually varied flow profiles. Sediment transport analysis.
- **Simplifications:** Uses uniform flow (Manning's equation) which assumes constant depth along the channel. In reality, backwater effects near junctions and outfalls may produce non-uniform flow.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with Manning's equation, MoWT Vol 2 parameters, pipeline integration with Skill #29 |
