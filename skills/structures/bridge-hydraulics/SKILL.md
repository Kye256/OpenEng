---
name: "bridge-hydraulics"
description: "Use when assessing hydraulic adequacy of a bridge crossing -- waterway area, scour depth, freeboard, and afflux. Requires design flow from Skill #29 (Hydrology) and bridge geometry from Skill #37 (Simply Supported Beam Bridges). Distinct from Skill #31 (Culvert Hydraulic Design) which handles culvert inlet/outlet control. Outputs flood levels to Skill #40 (Small Span Structures)."
---

# Bridge Hydraulics

> **Skill ID:** 39
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Assess the hydraulic adequacy of a bridge crossing -- determine whether the waterway area is sufficient to pass the design flood, estimate scour depth at piers and abutments, check freeboard between the design flood level and the bridge soffit, and estimate afflux (backwater rise) caused by the bridge constriction. This skill answers the question: "Is this bridge opening hydraulically safe?" It does NOT deal with culvert inlet/outlet control (Skill #31) or structural design of the bridge itself (Skill #37).

## When to Use This Skill

- **Use when:** Assessing hydraulic adequacy of a bridge crossing, estimating scour depth for foundation design, checking freeboard clearance, or estimating afflux for upstream flood impact. Required after Skill #29 (Hydrology) has produced the design flow and Skill #37 (Simply Supported Beam Bridges) has established bridge geometry.
- **Do not use when:** Sizing culverts (Skill #31 -- different hydraulic concerns: inlet/outlet control, headwater). Not for small span structure selection (Skill #40, though this skill feeds flood levels to #40). Not for structural design of the bridge (Skills #37, #38).
- **Prerequisite skills:** Skill #29 (Hydrology for Road Drainage) -- design flow and return period. Skill #37 (Simply Supported Beam Bridges) -- bridge geometry (span, pier count, pier width, soffit level). Skill #35 (Bridge Site Selection) -- channel geometry and bed material.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Waterway Area:** The cross-sectional area of flow under the bridge at the design flood level. The required waterway area depends on the design discharge and acceptable mean velocity: A = Q / V_mean. If the bridge constricts the natural channel, the mean velocity through the opening increases, potentially causing scour and backwater.

**Regime Width:** For alluvial rivers with mobile beds, the stable channel width can be estimated using regime equations. The Lacey regime width equation is widely used: W = 4.836 * Q^0.5 (where Q is in m3/s and W in metres). If the bridge opening is significantly narrower than the regime width, severe contraction scour is likely.

**Scour:** The erosion of the river bed and banks caused by flowing water, particularly during floods. Scour is the #1 cause of bridge failure worldwide. Bridge scour has three components:
- **Long-term degradation/aggradation:** Gradual changes in bed level due to catchment or channel changes.
- **Contraction scour:** General lowering of the bed across the full width of the bridge opening, caused by increased velocity when the bridge constricts the natural channel. Two types: live-bed (upstream channel transporting sediment) and clear-water (upstream velocity below critical for sediment transport).
- **Local scour:** Concentrated erosion at individual piers and abutments due to horseshoe vortices and flow separation. Local scour at piers is the most critical component for foundation design.

**HEC-18 Methodology:** The standard methodology for bridge scour evaluation, published by the US Federal Highway Administration (FHWA). HEC-18 (Evaluating Scour at Bridges, 5th Edition) provides equations for contraction scour, pier scour (CSU equation), and abutment scour (Froehlich and HIRE equations). It is the internationally accepted standard, referenced by MoWT Vol 2, Section 10.

**Freeboard:** The vertical clearance between the design flood water surface elevation and the lowest point of the bridge superstructure (soffit or low chord). Freeboard provides a safety margin against:
- Debris passage (logs, vegetation)
- Wave action and flow surges
- Uncertainties in flood estimation
- Navigation clearance (where applicable)

**Afflux (Backwater):** The rise in water level upstream of the bridge caused by the constriction of flow. Afflux depends on the constriction ratio (bridge opening width / natural channel width), flow velocity, Manning's roughness, and the bridge geometry. MoWT Vol 2, Section 10.2 specifies a maximum backwater of 0.5 m during the 100-year flood.

### 1.2 Universal Formulas

**Waterway area (basic):**

```
A = Q / V_mean
```

Where A = waterway area (m2), Q = design discharge (m3/s), V_mean = acceptable mean velocity (m/s).

**Lacey regime width (alluvial rivers):**

```
W = 4.836 * Q^0.5
```

Where W = stable channel width (m), Q = dominant discharge (m3/s). Used to assess whether bridge opening is adequate for an alluvial river.

**HEC-18 Pier Scour (CSU equation):**

```
ys = 2.0 * K1 * K2 * K3 * K4 * a * (y1/a)^0.35 * Fr1^0.43
```

Where:
- ys = local scour depth (m)
- K1 = correction factor for pier nose shape (1.0 for circular/round, 1.1 for square, 0.9 for sharp)
- K2 = correction factor for angle of attack: K2 = (cos(theta) + L/a * sin(theta))^0.65
- K3 = correction factor for bed condition (1.1 for clear-water/plane bed, 1.2 for medium dunes, 1.3 for large dunes)
- K4 = armouring correction factor (ranges from 0.4 to 1.0; use 1.0 for conservative estimate when no armouring data)
- a = pier width (m)
- y1 = flow depth directly upstream of pier (m)
- Fr1 = Froude number upstream of pier = V1 / (g * y1)^0.5

**Live-bed contraction scour (HEC-18 Eqn 10.3):**

```
y2/y1 = (Q2/Q1)^(6/7) * (W1/W2)^k1
ys = y2 - y0
```

Where:
- y1 = average depth in upstream main channel (m)
- y2 = average depth in contracted section (m)
- y0 = existing depth in contracted section before scour (m)
- Q1 = flow in upstream channel transporting sediment (m3/s)
- Q2 = flow in contracted channel (m3/s)
- W1 = bottom width of upstream main channel (m)
- W2 = bottom width of contracted section (m)
- k1 = exponent: 0.59 for V*/w < 0.5, 0.64 for 0.5 <= V*/w <= 2.0, 0.69 for V*/w > 2.0

**Clear-water contraction scour (HEC-18 Eqn 10.4):**

```
ys = y1 * {0.13 * [Q / (Dm^(1/3) * Y1^(7/6) * W)]^(7/6) - 1}
```

Where Dm = effective mean diameter of bed material (1.25 * D50).

**Critical velocity for sediment transport (Laursen):**

```
Vc = 10.95 * y1^(1/6) * D50^(1/3)
```

(in ft/s units per MoWT Vol 2 Eqn 10.8; convert to SI as needed). If V > Vc, live-bed conditions; if V < Vc, clear-water conditions.

### 1.3 Figures & Diagrams

**Bridge cross-section in flood:** The bridge opening constricts the natural channel. Flow approaches from upstream, contracts through the bridge opening (increasing velocity), then expands downstream. The backwater (afflux) forms upstream as water backs up behind the constriction. Cross-sections are needed at four locations: upstream approach (Section 4), upstream face of bridge (Section 3), downstream face (Section 2), and downstream exit (Section 1). See MoWT Vol 2, Figure 10.1 for the variable cross-section diagram.

**Scour components at a pier:** A horseshoe vortex forms at the base of the pier as approach flow is deflected downward. This vortex is the primary mechanism of local scour. Wake vortices behind the pier also contribute. The scour hole is deepest at the upstream face of the pier. For a circular pier, the scour hole is roughly conical with side slopes at the angle of repose of the bed material.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Design flood (Q) and return period from Skill #29
  |-- Bridge geometry (span, pier count, pier width, soffit level) from Skill #37
  |-- Channel geometry (width, depth, slope, bed material D50) from Skill #35
  +-- Load country module for standard-specific requirements

Step 2: Assess waterway area adequacy
  |-- Calculate A = Q / V_mean
  |-- For alluvial rivers: check regime width W = 4.836 * Q^0.5
  |-- Compare bridge opening with natural channel width
  +-- If constriction ratio (bridge width / channel width) < 0.5 --> Flag severe constriction

Step 3: Determine scour type
  |-- Calculate critical velocity Vc
  |-- Compare mean velocity V with Vc
  |-- If V < Vc --> clear-water scour
  +-- If V >= Vc --> live-bed scour

Step 4: Estimate contraction scour
  --> Use live-bed or clear-water equation as appropriate (Step 3)

Step 5: Estimate local scour at piers
  --> HEC-18 CSU equation with K1-K4 correction factors
  --> See country module for correction factor tables

Step 6: Estimate abutment scour
  --> Froehlich equation or HIRE equation
  --> Depends on abutment type and flow conditions

Step 7: Determine total scour depth
  --> Total scour = contraction scour + local scour + long-term degradation

Step 8: Check freeboard
  --> See country module for minimum clearance requirements
  --> Freeboard = soffit level - design flood level
  --> Must exceed minimum requirement

Step 9: Estimate afflux (backwater)
  --> See country module, Section M.2 for maximum permissible afflux
  --> Computer models (HEC-RAS, WSPRO) recommended for detailed analysis

Step 10: Run validation (Section 4 + country module Section M.5)

Step 11: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Be conservative with scour estimates.** Scour is the #1 cause of bridge failure. Use conservative K-factor values when site data is limited. It is better to over-estimate scour (deeper foundations) than to under-estimate it (bridge collapse).

**Always check both contraction and local scour.** They are additive -- total scour at a pier is the sum of contraction scour and local pier scour. Some practitioners forget to add both components.

**Regime width is a useful sanity check, not a design method.** If the bridge opening is much narrower than the Lacey regime width, expect significant contraction scour and afflux. If the bridge opening is wider than the regime width, the channel may deposit sediment and aggrade at the bridge.

**Afflux impacts upstream land.** Even 0.5 m of backwater can flood agricultural land or settlements upstream. Always assess upstream impacts, especially in populated floodplains.

### 2.3 Common Errors

1. **Confusing bridge hydraulics (#39) with culvert hydraulics (#31).** Bridge hydraulics deals with waterway area, scour, freeboard, and afflux. Culvert hydraulics deals with inlet control, outlet control, and headwater. Different concerns, different methods.
2. **Using simplified scour equations without correction factors.** The HEC-18 CSU equation has four correction factors (K1-K4). Omitting any of them can lead to significant underestimation of scour depth.
3. **Ignoring clear-water vs live-bed distinction.** The choice of contraction scour equation depends on whether the upstream channel is transporting sediment. Using the wrong equation gives incorrect scour depths.
4. **Not checking afflux.** A bridge may have adequate waterway area but still cause unacceptable backwater. Afflux must be checked separately.
5. **Assuming scour is only at piers.** Contraction scour affects the entire bridge opening, including abutments. Abutment scour can be as severe as pier scour, particularly for spill-through abutments on wide floodplains.
6. **Using the design flood for both freeboard and scour.** Scour assessment should use the 100-year flood as base, then check with the superflood (500-year or 1.7 x Q100 per MoWT Vol 2, Section 10.3.2g). Freeboard is checked at the design flood level.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Pier shape factor K1 | 1.0 | Round/circular pier | No flag | Most common pier shape |
| Angle of attack K2 | 1.0 | Flow parallel to pier (theta = 0) | No flag | Normal alignment |
| Bed condition K3 | 1.1 | Clear-water or plane bed | ASSUMED: K3 = 1.1 (plane bed assumed) | Conservative for unknown bed forms |
| Armouring K4 | 1.0 | No armouring data | ASSUMED: K4 = 1.0 (no armouring benefit) | Conservative -- assumes no armouring |
| Bed material D50 | 2 mm (medium sand) | Not provided | ASSUMED: D50 = 2 mm (medium sand). Obtain bed material samples for accurate scour estimate | Common alluvial river bed material |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always use conservative scour estimates** when site data is limited.
3. **Flag all assumed bed material properties** -- scour depth is highly sensitive to D50.
4. **Never assume armouring** (K4 < 1.0) without field evidence of armour layer.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Design flow Q | 5 | 50,000 | m3/s | Warn if Q < 10 m3/s (may be culvert-scale, use Skill #31); warn if Q > 10,000 (very large river) |
| Pier scour depth ys | 0.5 | 30 | m | Warn if ys > 15 m (check inputs); reject if ys < 0 |
| Contraction scour depth | 0 | 15 | m | Warn if > 5 m (severe constriction) |
| Total scour depth | 1 | 40 | m | Warn if > 20 m (very deep -- check inputs) |
| Freeboard | 0 | 5 | m | Warn if < 0.6 m (below most minimums); flag if negative (soffit below flood level) |
| Constriction ratio | 0.1 | 1.0 | ratio | Warn if < 0.3 (severe constriction -- significant afflux) |
| Mean velocity | 0.5 | 8 | m/s | Warn if > 5 m/s (high velocity -- scour concern) |
| Froude number | 0.01 | 1.0 | -- | Warn if > 0.8 (approaching critical flow); reject if > 1.5 (supercritical -- different analysis needed) |

### 4.2 Consistency Checks

- **Total scour vs foundation depth:** Total scour depth must be less than the foundation depth of piers and abutments. If not, flag for Skill #38 (Bridge Substructure).
- **Freeboard vs minimum:** Freeboard must meet country module minimum. If not, flag.
- **Afflux vs maximum:** Afflux must not exceed country module maximum (typically 0.5 m). If it does, flag.
- **Regime width vs opening:** If bridge opening < 0.7 x regime width, flag for potential contraction scour concern.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Total scour > 10 m | Very deep scour -- pile foundations likely required | SENIOR REVIEW -- Total scour depth [X] m exceeds 10 m. Pile foundations likely required. Refer to Skill #38 and geotechnical specialist. |
| Freeboard < minimum | Bridge soffit may be overtopped | SENIOR REVIEW -- Freeboard [X] m is below minimum [Y] m. Raise soffit level or reassess design flood. |
| Afflux > 0.5 m | Upstream flood impact | SENIOR REVIEW -- Afflux [X] m exceeds 0.5 m limit. Assess upstream property impacts and consider widening bridge opening. |
| Constriction ratio < 0.3 | Severe constriction | SENIOR REVIEW -- Bridge opening is [X]% of natural channel width. Significant contraction scour and afflux expected. Consider widening opening. |
| Froude number > 0.8 | Near-critical flow through bridge | SENIOR REVIEW -- Froude number [X] approaching critical flow. Hydraulic instability likely. Specialist hydraulic analysis required. |
| No bed material data | Cannot estimate scour accurately | SENIOR REVIEW -- No bed material D50 provided. Scour estimate based on assumed D50 = 2 mm. Obtain bed samples for reliable scour assessment. |
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. Verify all standard-specific parameters. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Design flow (Q) | number | m3/s | Yes | Skill #29 | Design flood discharge for the bridge crossing |
| Return period | number | years | Yes | Skill #29 | Return period of the design flood (e.g., 100 years) |
| Catchment area | number | km2 | Desirable | Skill #29 | For context on flow magnitude |
| Bridge span | number | m | Yes | Skill #37 | Clear span of bridge opening |
| Pier count | number | -- | Yes | Skill #37 | Number of piers in the waterway |
| Pier width | number | m | Yes | Skill #37 | Width of each pier (perpendicular to flow) |
| Soffit level | number | m AOD | Yes | Skill #37 | Level of underside of bridge deck |
| Channel width | number | m | Yes | Skill #35 | Natural channel width at bridge site |
| Channel depth | number | m | Yes | Skill #35 | Mean channel depth at design flood |
| Channel slope | number | m/m | Desirable | Skill #35 | Longitudinal bed slope |
| Bed material D50 | number | mm | Desirable | Skill #35 | Median grain size of bed material |
| Manning's n | number | -- | Desirable | Skill #35 | Channel roughness coefficient |
| Design flood level | number | m AOD | Desirable | Skill #29 or Skill #35 | Water surface elevation at design flood |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Waterway area adequacy | text | -- | User | Adequate / Marginal / Inadequate |
| Pier scour depth | number | m | Skill #38 (Bridge Substructure) | Local scour depth at each pier for foundation depth |
| Contraction scour depth | number | m | Skill #38 | General bed lowering across bridge opening |
| Total scour depth | number | m | Skill #38 | Sum of all scour components -- determines minimum foundation depth |
| Freeboard | number | m | User | Clearance between flood level and bridge soffit |
| Afflux | number | m | User | Backwater rise upstream of bridge |
| Flood levels | object | m AOD | Skill #40 (Small Span Structures) | Design flood level and submergence frequency data |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT standards and HEC-18 scour parameters | Markdown |
| `modules/uk.md` | UK CIRIA/DMRB scour assessment approach | Markdown |
| `tables/uganda_scour_parameters.json` | HEC-18 correction factors and Uganda-specific parameters | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: Confirm Design Inputs
Receive design flow, return period, and catchment area from Skill #29. Receive bridge geometry (span, pier count, pier width, soffit level) from Skill #37. Receive channel geometry (width, depth, slope, bed material) from Skill #35.

### Step 3: Calculate Waterway Area and Mean Velocity
Calculate the waterway area under the bridge: A = (bridge opening width - total pier obstruction width) x mean flow depth. Calculate mean velocity: V = Q / A. Check against acceptable velocity limits from the country module.

### Step 4: Check Regime Width (Alluvial Rivers)
For alluvial rivers, calculate Lacey regime width: W = 4.836 * Q^0.5. Compare with bridge opening. If bridge opening < 0.7 x regime width, flag contraction concern.

### Step 5: Determine Scour Type
Calculate critical velocity Vc. If mean velocity V >= Vc, use live-bed contraction scour equation. If V < Vc, use clear-water contraction scour equation.

### Step 6: Estimate Contraction Scour
Apply the appropriate HEC-18 contraction scour equation from Step 5. Report contraction scour depth.

### Step 7: Estimate Local Scour at Piers
Apply HEC-18 CSU equation with correction factors K1-K4 from the country module JSON table. Report pier scour depth for each pier.

### Step 8: Estimate Abutment Scour
Apply Froehlich or HIRE equation as appropriate. Report abutment scour depth.

### Step 9: Determine Total Scour Depth
Total scour = contraction scour + max(pier scour, abutment scour) + long-term degradation allowance. Report total scour depth and compare with foundation depth.

### Step 10: Check Freeboard
Freeboard = soffit level - design flood level. Compare with country module minimum. Report compliance.

### Step 11: Estimate Afflux
Estimate backwater rise using energy-momentum methods or simplified approach. Compare with country module maximum (typically 0.5 m). Report compliance.

### Step 12: Run Validation
All universal + country-specific checks.

### Step 13: Produce Output

---

## 8. Output Format

```
============================================================
BRIDGE HYDRAULICS -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Design Flood: Q[T] = [X] m3/s ([T]-year return period)
Date: [YYYY-MM-DD]
============================================================

BRIDGE GEOMETRY
---------------
Span:                         [X] m
Pier count:                   [X]
Pier width:                   [X] m
Soffit level:                 [X] m AOD
Net waterway width:           [X] m

CHANNEL GEOMETRY
----------------
Natural channel width:        [X] m
Mean channel depth:           [X] m
Bed material D50:             [X] mm
Channel slope:                [X] m/m
Manning's n:                  [X]

WATERWAY AREA ASSESSMENT
------------------------
Waterway area:                [X] m2
Mean velocity:                [X] m/s
Acceptable velocity:          [X] m/s
Regime width (Lacey):         [X] m
Constriction ratio:           [X]
Assessment:                   [Adequate / Marginal / Inadequate]

SCOUR ASSESSMENT (HEC-18)
-------------------------
Scour type:                   [Live-bed / Clear-water]

Contraction scour:            [X] m

Pier scour (CSU equation):
  K1 (pier shape):            [X]
  K2 (angle of attack):       [X]
  K3 (bed condition):         [X]
  K4 (armouring):             [X]
  Pier scour depth:           [X] m

Abutment scour:               [X] m

Total scour depth:            [X] m
  (contraction + local + degradation allowance)

FREEBOARD CHECK
--------------
Design flood level:           [X] m AOD
Soffit level:                 [X] m AOD
Freeboard:                    [X] m
Minimum required:             [X] m
Status:                       [PASS / FAIL]

AFFLUX CHECK
------------
Estimated afflux:             [X] m
Maximum permissible:          [X] m
Status:                       [PASS / FAIL]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed 2D/3D hydraulic modelling (HEC-RAS, WSPRO, MIKE). Tidal bridge crossings. Aero-elastic effects of bridge deck in flood. Debris loading on piers. Ice scour.
- **Simplifications:** Uses 1D scour equations (HEC-18) which are conservative but do not capture complex flow patterns at multi-span bridges. Afflux estimation is simplified -- detailed analysis requires computer modelling. Long-term degradation is included as an allowance, not calculated from sediment transport analysis.
- **Distinct from Skill #31:** Bridge hydraulics (#39) deals with waterway area, scour, freeboard, and afflux. Culvert hydraulics (#31) deals with inlet/outlet control and headwater. The two skills address fundamentally different hydraulic problems.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with HEC-18 scour methodology and MoWT Vol 2 Section 10 provisions |
