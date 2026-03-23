---
name: "culvert-hydraulic-design"
description: "Use when sizing culverts for cross-drainage. Requires design flow from Skill #29 (Hydrology). Checks both inlet and outlet control to determine governing headwater. Outputs feed into Skill #33 (Culvert Structural Design) for structural analysis and Skill #32 (Erosion Protection) for outlet protection."
---

# Culvert Hydraulic Design

> **Skill ID:** 31
> **Domain:** Drainage
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK

## Purpose

Size culverts (pipe or box) to pass the design peak flow with acceptable headwater depth, checking both inlet control and outlet control conditions to determine the governing (more conservative) headwater. The skill produces the culvert size, outlet velocity, and headwater depth used for structural design (Skill #33) and erosion protection (Skill #32).

## When to Use This Skill

- **Use when:** Sizing any culvert for cross-drainage under a road -- pipe culverts, box culverts, or slab culverts. Required after Skill #29 has produced the design flow.
- **Do not use when:** Designing bridge waterway openings (Skill #39). Not for side drain channels (Skill #30) or storm sewer pipe networks.
- **Prerequisite skills:** Skill #29 (Hydrology for Road Drainage) -- provides design_flow. Skill #17 (Cross-Section Design) -- provides embankment height for headwater constraint.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Culvert Types:** Circular pipe (concrete, corrugated steel), box culvert (reinforced concrete), slab culvert, pipe arch. Selection depends on hydraulic requirements, fill height, span, and material availability.

**Inlet Control:** Flow is controlled by the culvert entrance capacity. Headwater depends on entrance geometry, flow rate, and culvert diameter/size. The culvert barrel flows partly full. Inlet control typically governs for short culverts on steep grades.

**Outlet Control:** Flow is controlled by downstream conditions. Headwater depends on culvert length, roughness, tailwater depth, and entrance losses. The culvert barrel flows full or nearly full. Outlet control typically governs for long culverts on flat grades.

**CRITICAL -- Dual Control Check (Pitfall #5):** The designer MUST check BOTH inlet control headwater AND outlet control headwater. The HIGHER (more conservative) result governs the design. Checking only one control condition can lead to undersized or oversized culverts.

**Headwater/Diameter Ratio (HW/D):** The ratio of headwater depth to culvert diameter (or rise for box culverts). Typically limited to 1.0-1.5 for road culverts based on embankment height. MoWT recommends HW/D <= 1.2 where insufficient data exists, and HW/D <= 1.5 as a practical maximum.

**Tailwater (TW):** The depth of water downstream of the culvert outlet. Affects outlet control headwater calculation. Determined from downstream channel capacity analysis.

**Entrance Loss Coefficient (Ke):** Head loss at the culvert entrance due to flow contraction. Values range from 0.2 (wingwall with beveled edge) to 0.9 (projecting pipe). Lower Ke values improve hydraulic efficiency.

**Minimum Culvert Size:** 600 mm diameter for pipe culverts under roads (MoWT Section 9.10), to allow maintenance access and prevent clogging.

### 1.2 Universal Formulas

**Outlet Control Energy Equation (MoWT Vol 2, Eqn 9.1):**

```
HW + So*L = TW + H
```

Where HW = headwater depth from inlet invert to energy grade line (m), So = culvert slope (m/m), L = culvert length (m), TW = tailwater depth (m), H = total head losses (m).

**Total Head Losses (MoWT Vol 2, Eqn 9.6):**

```
H = [1 + Ke + (19.63*n^2*L / R^1.33)] * V^2/(2g)
```

Where Ke = entrance loss coefficient, n = Manning's roughness, L = culvert length (m), R = hydraulic radius of full barrel (m), V = barrel velocity (m/s), g = 9.81 m/s2.

**Outlet Control Headwater (simplified, MoWT Eqn 9.11):**

```
HW_oi = H + ho - So*L
```

Where ho = max(TW, (dc + D)/2), dc = critical depth, D = culvert height/diameter.

**Velocity:**

```
V = Q / A
```

Where A is the full cross-sectional area of the culvert barrel.

### 1.3 Figures & Diagrams

**Inlet Control Flow:** Water enters the culvert at supercritical velocity. The barrel is partly full. Headwater is determined by entrance geometry.

**Outlet Control Flow:** Water fills the culvert barrel. The energy grade line extends from downstream conditions back through the barrel to the inlet. Headwater is determined by barrel friction and tailwater.

**Design Flowchart (Appendix 9.8):** A step-by-step procedure: (1) determine Q, (2) select trial size, (3) check inlet control HW, (4) check outlet control HW, (5) use higher as governing, (6) compare against allowable, (7) iterate if needed.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Obtain design flow Q from Skill #29

Step 2: Determine allowable headwater
  |-- Based on embankment height (from Skill #17 or survey)
  |-- HW_allow typically = embankment height - 0.5 m (freeboard)
  +-- Or HW/D <= 1.2 to 1.5

Step 3: Select trial culvert size
  |-- Minimum 600 mm diameter (pipe) or 600x450 mm (box)
  |-- Initial trial: estimate from capacity tables or engineering judgment
  +-- Select culvert material and entrance type

Step 4: Check inlet control headwater (HW_i)
  |-- Use inlet control nomographs (Appendices 9.3-9.5) or tables
  |-- Read HW/D ratio for Q and culvert size
  +-- HW_i = (HW/D) * D

Step 5: Check outlet control headwater (HW_oi)
  |-- Calculate tailwater depth (TW)
  |-- Calculate critical depth (dc) from Appendices 9.10-9.11
  |-- ho = max(TW, (dc + D)/2)
  |-- Determine H from outlet control charts (Appendices 9.12-9.14) or Eqn 9.6
  +-- HW_oi = H + ho - So*L

Step 6: Determine governing headwater
  |-- HW_c = max(HW_i, HW_oi)    <-- CRITICAL: use the HIGHER value
  |-- If HW_i > HW_oi: inlet control governs
  +-- If HW_oi > HW_i: outlet control governs

Step 7: Compare against allowable headwater
  |-- If HW_c <= HW_allow: design is adequate
  |-- If HW_c > HW_allow: increase culvert size and repeat from Step 4
  +-- Consider multiple barrels for large flows

Step 8: Calculate outlet velocity
  |-- If inlet control: V_o based on normal depth at outlet
  |-- If outlet control: V_o = Q / A_exit
  +-- Assess erosion protection need (feeds Skill #32)

Step 9: Validate and produce output
```

### 2.2 Professional Judgment (Universal)

**Always check both control conditions.** This is the single most important rule in culvert design. Even experienced engineers sometimes check only inlet control (for steep culverts) or only outlet control (for flat culverts). The dual check ensures the conservative result is used.

**Consider multiple barrels for large flows.** When a single culvert would be excessively large, two or more smaller barrels may be more practical and economical. Divide Q by the number of barrels.

**Outlet velocity is a critical output.** High outlet velocities cause severe erosion downstream. Velocities exceeding 3-4 m/s typically require energy dissipation or scour protection (Skill #32).

### 2.3 Common Errors

1. **Checking only inlet control (or only outlet control).** Both must be checked. The governing condition may not be obvious.
2. **Ignoring tailwater effects.** High tailwater can significantly increase outlet control headwater.
3. **Using pipe culvert < 600 mm diameter.** Below this size, maintenance becomes impractical and clogging is likely.
4. **Not accounting for multiple barrels.** When dividing Q among barrels, each barrel must carry Q/n, not total Q.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Max HW/D | 1.2 | Insufficient data | ASSUMED: HW/D <= 1.2 per MoWT | Conservative default |
| Min diameter | 600 mm | Pipe culvert | No flag | MoWT Section 9.10 minimum |
| Ke | 0.5 | Headwall entrance | ASSUMED: Ke = 0.5 for headwall | Standard entrance type |

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| HW/D | 0.5 | 1.5 | -- | Warn if > 1.2; reject if > 1.5 for road culverts |
| Culvert diameter | 600 | 3000 | mm | Warn if < 600 (below minimum); warn if > 2400 (consider box) |
| Outlet velocity | 0.6 | 6.0 | m/s | Warn if < 0.6 (silting); warn if > 3.0 (erosion); flag if > 6.0 |
| Culvert slope | 0.5 | 10 | % | Warn if < 0.5%; warn if > 10% (anchoring needed) |

### 4.2 Consistency Checks

- **Governing headwater:** HW_c = max(HW_i, HW_oi) must be reported and compared against allowable.
- **Both controls checked:** Output must show both inlet and outlet control headwater values.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| HW_c > HW_allow | Culvert undersized | Increase culvert size or add barrels. If constrained, SENIOR REVIEW. |
| Outlet velocity > 6 m/s | Severe erosion risk | SENIOR REVIEW -- Outlet velocity [V] m/s. Energy dissipation structure required. See Skill #32. |
| Inlet and outlet control give very different HW | May indicate unusual conditions | NOTE -- Inlet HW = [X] m, Outlet HW = [Y] m. Verify tailwater and culvert length assumptions. |

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Country module selection |
| design_flow | number | m3/s | Yes | Skill #29 (Hydrology) | Peak design flow |
| Embankment height | number | m | Yes | Skill #17 / survey | For allowable headwater |
| Culvert length | number | m | Yes | User / survey | Barrel length |
| Culvert slope | number | % | Yes | User / survey | Barrel slope |
| Tailwater depth | number | m | No | User / downstream analysis | Downstream water level |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| culvert_size | text | mm or m | Skill #33 (Structural Design) | Diameter or span x rise |
| culvert_material | text | -- | Skill #33 (Structural Design) | Concrete, steel, etc. |
| outlet_velocity | number | m/s | Skill #32 (Erosion Protection) | Velocity at culvert exit for scour assessment |
| governing_headwater | number | m | Documentation | HW_c = max(HW_i, HW_oi) |
| control_type | text | -- | Documentation | "inlet control" or "outlet control" |
| number_of_barrels | integer | -- | Documentation | Single or multiple barrel |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT Vol 2 Section 9 standards | Markdown |
| `modules/uk.md` | UK DMRB/CIRIA standards (knowledge-based) | Markdown |
| `tables/uganda_culvert_capacity.json` | Approximate culvert capacity from Appendices 9.19-9.21 | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
### Step 2: Obtain Design Flow from Skill #29
### Step 3: Determine Allowable Headwater
### Step 4: Select Trial Culvert Size and Material
### Step 5: Check Inlet Control Headwater (HW_i)
### Step 6: Check Outlet Control Headwater (HW_oi)
### Step 7: Determine Governing Headwater -- HW_c = max(HW_i, HW_oi)
### Step 8: Compare Against Allowable -- Iterate if Needed
### Step 9: Calculate Outlet Velocity
### Step 10: Produce Output

---

## 8. Output Format

```
============================================================
CULVERT HYDRAULIC DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

DESIGN INPUTS
-------------
Design flow (Q):             [X] m3/s (from Skill #29, [RP]-year ARI)
Embankment height:           [X] m
Allowable headwater:         [X] m (HW/D = [X])
Culvert length:              [X] m
Culvert slope:               [X]%
Tailwater depth:             [X] m

CULVERT SELECTION
-----------------
Type:                        [pipe / box / slab]
Material:                    [concrete / corrugated steel]
Size:                        [diameter mm / span x rise mm]
Number of barrels:           [X]
Entrance type:               [headwall / wingwall / projecting]
Entrance loss Ke:            [X]
Manning's n:                 [X]

INLET CONTROL CHECK
-------------------
HW/D (from chart):           [X]
HW_i:                        [X] m

OUTLET CONTROL CHECK
--------------------
Critical depth (dc):         [X] m
(dc + D)/2:                  [X] m
ho:                          [X] m (= max of TW and (dc+D)/2)
Head losses (H):             [X] m
HW_oi = H + ho - So*L:      [X] m

GOVERNING CONDITION
-------------------
HW_c = max(HW_i, HW_oi):    [X] m
Control type:                [inlet / outlet]
HW_c vs HW_allow:           [PASS / FAIL]

OUTLET VELOCITY
---------------
Outlet velocity (Vo):        [X] m/s
Erosion protection needed:   [Yes / No] (refer to Skill #32 if V > permissible)

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

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Culvert structural design (Skill #33). Bridge-scale hydraulic design (Skill #39). Fish passage requirements. Debris control structures.
- **Simplifications:** Uses steady-state analysis (constant Q). In reality, flood hydrographs produce time-varying flow, and storage routing through the culvert may reduce peak headwater.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with dual inlet/outlet control check per MoWT Vol 2 Section 9 |
