---
name: "small-span-structures"
description: "Use when selecting and performing basic design of small span river crossings -- causeways, drifts, low-level crossings, submersible bridges. Appropriate for low-volume roads where conventional bridges are uneconomic. Requires flood levels from Skill #39 (Bridge Hydraulics) for submergence frequency assessment. References Skill #34 (Headwalls & Wingwalls) for end structure design."
---

# Small Span Structures

> **Skill ID:** 40
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Select the appropriate small span structure type and perform basic sizing for low-cost river crossings on low-volume roads. Small span structures include causeways (Irish crossings), drifts (vented causeways), low-level crossings (slab bridges designed for occasional overtopping), and submersible bridges. These structures are economically rational where traffic volumes are low and short periods of flood closure are acceptable.

## When to Use This Skill

- **Use when:** Designing a river crossing on a low-volume road where a conventional bridge may be uneconomic. The key selection criteria are traffic volume (AADT), acceptable closure days per year, flood regime, and construction budget.
- **Do not use when:** AADT > 500 (consider conventional bridge unless strong economic justification). Not for culvert design (Skill #31). Not for bridge hydraulics assessment (Skill #39, though this skill consumes flood levels from #39).
- **Prerequisite skills:** Skill #39 (Bridge Hydraulics) -- flood levels and submergence frequency. Skill #29 (Hydrology) -- design flow for basic hydraulic check. Skill #34 (Headwalls & Wingwalls) -- end structure design for causeways and small spans.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Small Span Structure Types:**

1. **Causeway (Irish Crossing):** The road surface is laid at or near river bed level and is designed to be overtopped during floods. The simplest and cheapest crossing type. Suitable only for very low traffic volumes and seasonal rivers where wet-season closure is accepted. The road surface is typically concrete or stone paving to resist scour during overtopping.

2. **Drift (Vented Causeway):** A causeway with pipe openings (vents) that allow low flows to pass without overtopping the road. The pipes handle normal and small flood flows; larger floods overtop the road. More useful than a plain causeway where there is a base flow that would otherwise make the road impassable even outside flood season.

3. **Low-Level Crossing (Low-Level Slab Bridge):** A slab bridge set at a low level, designed for occasional overtopping during large floods. Provides a clear opening for flow during normal and moderate floods. More expensive than a causeway but provides better service. Suitable for moderate traffic volumes and perennial rivers.

4. **Submersible Bridge:** A stronger structure (typically RC slab or beam) designed to resist the hydrodynamic forces of submergence during floods. Unlike a low-level crossing, a submersible bridge is specifically engineered for flood forces (buoyancy, debris impact, flow pressure). Suitable for higher traffic volumes where short closures are acceptable but a conventional bridge is too expensive.

**Type Selection Criteria:**

| Criterion | Causeway | Drift | Low-Level Crossing | Submersible Bridge | Conventional Bridge |
|-----------|----------|-------|-------------------|-------------------|-------------------|
| AADT | < 50 | < 150 | 50-300 | 150-500 | > 500 |
| Flow regime | Seasonal | Perennial low flow | Perennial | Perennial | Any |
| Acceptable closure (days/yr) | 15-30 | 10-20 | 5-15 | 2-10 | 0 |
| Relative cost | 1x | 2-3x | 5-10x | 10-20x | 20-50x |
| Flood resistance | None (overtops) | Partial (pipes) | Moderate (deck lifts) | High (anchored) | Full |

**Submergence Frequency:** The number of days per year the crossing is impassable due to flooding. Determined from the flood frequency analysis (Skill #29) and stage-discharge relationship. Acceptable submergence depends on road class and economic importance.

**Trafficable Depth:** The maximum depth of flowing water over the road surface through which vehicles can safely pass. For most vehicles: 300 mm maximum. For 4WD vehicles in emergency: 450 mm. At greater depths, buoyancy and flow forces can push vehicles off the road.

### 1.2 Universal Formulas

**Submergence frequency estimation:**

Combine stage-discharge relationship with flow duration curve to estimate days per year when flow exceeds the road/slab level:

```
Days_closed = 365 * P(Q > Q_overtop)
```

Where P(Q > Q_overtop) is the probability of flow exceeding the overtopping discharge.

**Vented causeway pipe sizing:**

```
Q_pipe = n * C_d * A_pipe * (2 * g * h)^0.5
```

Where n = number of pipes, C_d = discharge coefficient (typically 0.6-0.8), A_pipe = pipe cross-sectional area, h = head difference between upstream and downstream water levels, g = gravitational acceleration.

**Buoyancy check for submersible structures:**

```
F_buoyancy = gamma_w * V_submerged
F_weight = gamma_c * V_structure
Safety factor = F_weight / F_buoyancy >= 1.1
```

Where gamma_w = unit weight of water (9.81 kN/m3), gamma_c = unit weight of concrete (24 kN/m3), V = respective volumes.

### 1.3 Figures & Diagrams

**Causeway cross-section:** The road surface is at or slightly above the river bed level. During normal flow, the river crosses the road at a shallow depth. During floods, the road is submerged. Stone pitching or concrete surfacing protects the road against scour. Gabion mattresses may protect the downstream edge.

**Vented causeway:** Similar to a causeway but with pipe openings (typically 450-900 mm diameter) at bed level. The pipes pass low flows. The causeway acts as a low dam during moderate flows, with water overtopping when flow exceeds pipe capacity.

**Low-level slab bridge:** A reinforced concrete slab supported on abutments, with a clear opening below. The deck is set low enough that large floods overtop it. Guide posts and flood markers indicate water depth for approaching drivers.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine traffic volume (AADT) and road class
  |-- AADT < 50 --> Consider causeway or drift
  |-- AADT 50-300 --> Consider drift, low-level crossing, or submersible bridge
  |-- AADT 300-500 --> Consider submersible bridge or conventional bridge
  +-- AADT > 500 --> Conventional bridge (Skill #37) unless strong economic justification

Step 2: Assess flow regime
  |-- Seasonal (dry channel for part of year) --> Causeway suitable
  |-- Perennial with low base flow --> Drift recommended (pipes handle base flow)
  +-- Perennial with significant flow --> Low-level crossing or submersible bridge

Step 3: Determine acceptable closure days
  --> See country module for guidance by road class
  |-- > 15 days/year acceptable --> Causeway or drift
  |-- 5-15 days/year --> Low-level crossing
  |-- < 5 days/year --> Submersible bridge
  +-- 0 days --> Conventional bridge

Step 4: Select structure type (from Steps 1-3)
  --> Confirm economic justification

Step 5: Basic sizing
  |-- Causeway/drift: slab thickness, pipe sizing (drift), ford depth
  |-- Low-level crossing: slab span and thickness, clear opening
  +-- Submersible bridge: span, slab thickness, anchorage design

Step 6: Check buoyancy and debris resistance (submersible types)
  --> See country module for design requirements

Step 7: Specify flood warning signage
  --> Flood depth markers, warning signs, reflective posts

Step 8: Run validation (Section 4 + country module Section M.5)

Step 9: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Cost-benefit drives the decision.** A conventional bridge may cost 10-50 times more than a causeway. If traffic is low and short closures are acceptable, the economic case for a small span structure is strong. The decision should be based on whole-life cost including closure costs (detour, time delay, accident risk).

**Safety is paramount.** All small span structures designed for overtopping MUST include flood warning signage, depth markers, and guide posts. Drowning at flooded crossings is a significant road safety risk in developing countries. The maximum trafficable depth is 300 mm for standard vehicles.

**Maintenance is critical for vented causeways.** Pipes in drifts block easily with debris, sediment, and vegetation. Regular maintenance (clearing after each flood season) is essential. If maintenance cannot be assured, consider a plain causeway instead.

**Do not use causeways on perennial rivers.** If the river always has flow, a plain causeway will always be impassable. A drift (with pipes for base flow) or a low-level crossing is required.

### 2.3 Common Errors

1. **Using a causeway on a road with AADT > 500.** The traffic disruption cost typically outweighs the saving from not building a bridge.
2. **Not checking buoyancy for submersible structures.** Concrete structures can be lifted off their foundations by buoyancy during submergence if not properly anchored.
3. **Undersizing pipes in vented causeways.** Pipes must handle the normal and small flood flows (Q2 to Q5). Undersized pipes cause frequent unnecessary overtopping.
4. **Omitting flood warning signage.** Every overtopping structure must have depth markers and warning signs. This is a safety requirement, not optional.
5. **Ignoring debris impact on submersible bridges.** Large debris (logs, vehicles, containers) can impact submerged structures with significant force. Debris guards or deflectors should be considered.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Maximum trafficable depth | 300 mm | Standard vehicles | No flag | Universal safety limit |
| Pipe discharge coefficient | 0.7 | Vented causeway | ASSUMED: Cd = 0.7. Verify for pipe entrance type. | Typical for projecting pipe entrance |
| Buoyancy safety factor | 1.1 | Submersible structures | No flag | Minimum against flotation |
| Concrete unit weight | 24 kN/m3 | RC structures | No flag | Standard value |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always check buoyancy** for any structure designed for submergence.
3. **Conservative direction:** Use lower pipe capacity and higher closure days when in doubt.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| AADT | 1 | 10,000 | vpd | Warn if > 500 (consider conventional bridge) |
| Closure days | 0 | 60 | days/yr | Warn if > 30 (very high -- reconsider structure type) |
| Slab thickness | 150 | 600 | mm | Warn if < 200 for vehicle loading |
| Pipe diameter (drift) | 300 | 1200 | mm | Warn if < 450 (blockage risk); reject if < 300 |
| Span (low-level/submersible) | 2 | 12 | m | Warn if > 8 (consider conventional bridge) |
| Buoyancy safety factor | 1.1 | 5.0 | -- | Fail if < 1.1 |

### 4.2 Consistency Checks

- **AADT vs structure type:** If AADT > 150 and structure type is plain causeway, flag.
- **Flow regime vs structure type:** If perennial river and plain causeway selected, flag.
- **Closure days vs road class:** If district road and closure > 15 days/year, flag.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| AADT > 500 with small span structure | Traffic disruption too high | SENIOR REVIEW -- AADT [X] exceeds 500. Consider conventional bridge or provide economic justification for small span structure. |
| Closure > 20 days/year on district road | Service level too low | SENIOR REVIEW -- Estimated [X] closure days/year. Consider upgrading to a higher-capacity structure type. |
| Buoyancy safety factor < 1.1 | Risk of flotation | SENIOR REVIEW -- Buoyancy SF = [X] < 1.1. Add anchorage or increase structure weight. |
| Budget insufficient for conventional bridge but AADT requires one | Economic constraint | SENIOR REVIEW -- AADT [X] suggests conventional bridge but budget is [Y]. Submersible bridge as interim solution? Document as design compromise. |
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible.
- **Country module escalations** merged with universal escalations.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| AADT | number | vpd | Yes | User or Skill #6 | Annual average daily traffic |
| Acceptable closure days | number | days/yr | Yes | User | Maximum acceptable flood closure |
| Design flow (Q_design) | number | m3/s | Yes | Skill #29 | Design flood discharge |
| Normal flow (Q_normal) | number | m3/s | Desirable | Skill #29 | Base flow for pipe sizing |
| Flood levels | object | m AOD | Desirable | Skill #39 | Design flood level and submergence frequency |
| Road class | category | -- | Yes | User | Determines service level requirements |
| Budget constraint | number | currency | Desirable | User | For type selection guidance |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Structure type | text | -- | User | Recommended type (causeway/drift/low-level/submersible) |
| Basic dimensions | object | m | User | Span, slab thickness, pipe sizes |
| Estimated closure days | number | days/yr | User | Predicted annual closure frequency |
| Buoyancy check | text | -- | User | Pass/Fail with safety factor |
| Flood warning requirements | text | -- | User | Required signage and markers |
| Structure dimensions | object | m | Skill #34 | Dimensions for headwall/wingwall design |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific type selection and sizing guidance | Markdown |
| `modules/uk.md` | UK context for small span structures | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load the corresponding country module.

### Step 2: Determine AADT and Acceptable Closure
Confirm traffic volume and acceptable closure days from user input or road class defaults.

### Step 3: Assess Flow Regime
From Skill #39 flood levels and Skill #29 hydrology: determine whether the river is seasonal or perennial, the base flow, and the submergence frequency for different structure levels.

### Step 4: Select Structure Type
Using the decision logic in Section 2.1, select the appropriate structure type based on AADT, flow regime, closure tolerance, and budget.

### Step 5: Basic Sizing
- **Causeway/drift:** Determine slab thickness (typically 200-400 mm), pipe sizes for drift (typically 450-900 mm), ford depth and length.
- **Low-level crossing:** Determine span (typically 3-8 m), slab thickness, clear opening.
- **Submersible bridge:** Determine span, slab/beam depth, anchorage requirements.

### Step 6: Check Buoyancy and Debris Resistance
For submersible types, check buoyancy safety factor >= 1.1. Assess debris impact risk.

### Step 7: Specify Flood Warning
Specify required signage: flood depth markers, approach warning signs, reflective guide posts.

### Step 8: Run Validation
All universal + country-specific checks.

### Step 9: Produce Output

---

## 8. Output Format

```
============================================================
SMALL SPAN STRUCTURES -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

SITE AND TRAFFIC DATA
---------------------
AADT:                         [X] vpd
Road class:                   [class]
Acceptable closure:           [X] days/year
Flow regime:                  [Seasonal / Perennial]
Normal flow:                  [X] m3/s
Design flow (Q[T]):           [X] m3/s

TYPE SELECTION
--------------
Recommended type:             [Causeway / Drift / Low-Level Crossing / Submersible Bridge]
Justification:                [reasons based on AADT, flow, closure, budget]

BASIC SIZING
------------
[Type-specific details]

SUBMERGENCE ASSESSMENT
----------------------
Estimated closure:            [X] days/year
Overtopping flow:             Q[X] = [Y] m3/s
Trafficable depth check:      [X] mm (max 300 mm for standard vehicles)

BUOYANCY CHECK (if applicable)
------------------------------
Structure weight:             [X] kN
Buoyancy force:               [X] kN
Safety factor:                [X] (min 1.1)
Status:                       [PASS / FAIL]

FLOOD WARNING REQUIREMENTS
--------------------------
[Signage specifications]

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
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed structural design of submersible bridges (reinforcement, detailed anchorage design). Hydrodynamic force calculations on submerged structures. Detailed economic analysis (NPV of closure costs vs construction cost). Fish passage requirements.
- **Simplifications:** Type selection uses simplified AADT thresholds -- actual selection should include economic analysis. Pipe sizing for drifts uses simplified discharge formula -- detailed outlet control analysis may be needed for long pipe runs. Buoyancy check is simplified (does not account for soil friction on foundations).
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, Mozambique

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with type selection guide and basic sizing methodology |
