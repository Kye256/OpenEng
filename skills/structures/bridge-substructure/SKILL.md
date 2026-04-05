---
name: "bridge-substructure"
description: "Use when performing preliminary design of bridge abutments and piers. Requires superstructure reactions from Skill #37 (Simply Supported Beam Bridges) and geotechnical data from Skill #10 (Subgrade Characterization). Preliminary sizing level -- pile foundations require specialist geotechnical engineer. Earth pressure per MoWT Vol 4 Section 5.8."
---

# Bridge Substructure

> **Skill ID:** 38
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Perform preliminary design of bridge abutments and piers -- select abutment type, determine preliminary dimensions, calculate earth pressure with live load surcharge, and check stability (sliding, overturning, bearing pressure). This skill covers feasibility and preliminary sizing; pile foundation design and detailed reinforcement require specialist review.

## When to Use This Skill

- **Use when:** Superstructure reactions are available from Skill #37 and foundation conditions from Skill #10, and the substructure must be sized for feasibility assessment.
- **Do not use when:** Designing culvert headwalls/wingwalls (see Skill #34). Not for pile foundation design (specialist required).
- **Prerequisite skills:** Skill #37 (superstructure reactions), Skill #10 (bearing capacity, soil profile), Skill #36 (earth pressure surcharge, seismic parameters).

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Abutment Types:**
- **Gravity (mass concrete):** Resists earth pressure by self-weight. Economical for low heights (up to approximately 5m). Simple to construct.
- **Cantilever RC:** Wall cantilevers from a base slab. Suitable for medium heights (5-10m). Uses reinforcement to resist bending.
- **Counterfort RC:** Cantilever wall with triangular counterforts. For tall abutments (> 8m) where cantilever alone is insufficient.
- **Stub abutment:** Short wall on top of approach embankment. Reduces wall height but requires stable embankment.

**Pier Types:**
- **Solid wall:** Simple concrete wall. For short to medium spans.
- **Column (single/multi):** Circular or rectangular columns. More slender, less obstruction to flow.
- **Hammerhead:** Single column with wide cap beam. Common for highway bridges.

**Earth Pressure:** Active earth pressure on abutments from retained fill:

```
Ka = (1 - sin(phi)) / (1 + sin(phi))
Pa = 0.5 * Ka * gamma * H^2 + Ka * q * H
```

Where q = live load surcharge (HA = 10 kPa, HB 45 units = 20 kPa per MoWT Vol 4 Section 5.8.2).

gamma_fL for earth pressure = 1.50 (ULS) for all five load combinations per Table 1.

**Stability Checks:**
- **Sliding:** Factor of Safety = (W * tan(delta) + Pp) / Pa >= 1.5
- **Overturning:** Factor of Safety = M_restoring / M_overturning >= 2.0
- **Bearing pressure:** q_max < q_allowable from Skill #10
- **Eccentricity:** Middle third rule -- resultant within middle third of base

**Foundation Design:** Per CP 2004 as referenced by MoWT Vol 4 Section 4.7. For foundation design, gamma_fL = 1.0 and gamma_f3 = 1.0 (nominal loads).

### 1.2 Universal Formulas

**Active earth pressure coefficient (Rankine):**

```
Ka = (1 - sin(phi)) / (1 + sin(phi))
```

**Active earth pressure force per metre:**

```
Pa = 0.5 * Ka * gamma * H^2 + Ka * q * H
```

**Sliding check:**

```
F_sliding = (W * tan(delta) + Pp) / Pa >= 1.5
```

Where W = weight of abutment + soil on base, delta = base friction angle (typically 2/3 * phi), Pp = passive pressure (often neglected for safety due to scour).

**Overturning check:**

```
F_overturning = M_restoring / M_overturning >= 2.0
```

**Maximum bearing pressure (eccentrically loaded footing):**

```
q_max = V/A * (1 + 6e/B)
```

Where V = total vertical force, A = base area, e = eccentricity, B = base width.

### 1.3 Figures & Diagrams

**Abutment forces:** The abutment resists active earth pressure from the retained approach embankment fill, plus live load surcharge acting behind the wall. The superstructure vertical reaction acts downward at the bearing shelf. Horizontal forces include earth pressure, braking force, and wind.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Load country module

Step 2: Determine abutment height
  --> From bridge geometry: deck level minus foundation level
  --> Account for bearing shelf, deck depth, clearance

Step 3: Select abutment type
  |-- H < 5m: gravity (mass concrete) or stub
  |-- H = 5-10m: cantilever RC
  |-- H > 8m: counterfort RC
  +-- See country module for construction preference

Step 4: Estimate preliminary dimensions
  |-- Base width: typically 0.4-0.7 * H for cantilever
  |-- Stem thickness: typically 0.1-0.15 * H (min 0.3m)
  |-- Toe projection: typically 0.15-0.25 * B
  +-- Heel projection: remainder

Step 5: Calculate earth pressure with surcharge
  |-- Ka from phi (retained fill angle of friction)
  |-- Pa = 0.5 * Ka * gamma * H^2 + Ka * q * H
  |-- q = 10 kPa for HA, 20 kPa for HB 45, 10 kPa for HB 25
  +-- gamma_fL = 1.50 for ULS

Step 6: Check stability
  |-- Sliding: F >= 1.5
  |-- Overturning: F >= 2.0
  |-- Bearing: q_max < q_allowable (from Skill #10)
  |-- Eccentricity: middle third
  +-- If any check fails: resize or change type

Step 7: Check seismic per Section 9 (if applicable)
  --> Seismic parameters from Skill #36
  --> Section 9.6 for foundation and abutment seismic design
  --> Response modification factors from Table 9.4

Step 8: If pile foundations needed --> Escalate to specialist

Step 9: Produce output
```

### 2.2 Professional Judgment (Universal)

**Abutment stability is critical.** An unstable abutment can cause complete bridge failure. Always check all three stability conditions (sliding, overturning, bearing).

**Passive pressure in front of the abutment is often ignored** because scour during floods can remove the soil providing passive resistance. This is conservative and recommended practice.

**Stub abutments reduce wall height significantly** but require a well-compacted approach embankment that will not settle differentially. The "bump at the end of the bridge" problem is often caused by settlement of approach fill behind stub abutments.

### 2.3 Common Errors

1. **Relying on passive pressure for sliding resistance.** Passive pressure can be removed by scour. Neglect it unless the foundation is below maximum scour depth AND the passive soil is permanent.
2. **Forgetting live load surcharge.** The surcharge (10 or 20 kPa) adds significant horizontal force, especially for tall abutments.
3. **Not checking eccentricity.** Even if bearing pressure is within limits, excessive eccentricity can cause foundation uplift and instability.
4. **Attempting pile design.** Pile foundations require specialist geotechnical design (pile capacity, group effects, lateral loading). Always escalate.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Fill unit weight | 18 kN/m3 | Typical compacted fill | ASSUMED: gamma = 18 kN/m3 for compacted fill | Common for laterite/granular fill |
| Fill friction angle | 30 degrees | Typical compacted fill | ASSUMED: phi = 30 degrees for compacted fill | Conservative for granular fills |
| Base friction | 2/3 * phi | Concrete on soil | No flag (standard) | Common assumption for base friction |

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Ka | 0.20 | 0.50 | -- | Warn if outside 0.25-0.40 typical range |
| Abutment height | 2 | 15 | m | Warn if > 10m (counterfort likely needed) |
| Base width/height ratio | 0.3 | 1.0 | -- | Warn if < 0.4 (likely unstable) |
| Sliding FoS | 1.5 | -- | -- | Fail if < 1.5 |
| Overturning FoS | 2.0 | -- | -- | Fail if < 2.0 |

### 4.2 Consistency Checks

- **Bearing pressure vs allowable:** q_max must be <= q_allowable from Skill #10.
- **Foundation depth vs scour:** Foundation level must be below maximum scour depth from Skill #35/39.
- **Earth pressure gamma_fL:** Must be 1.50 for ULS per Table 1.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Bearing capacity fails for shallow foundation | Weak soil, high loads | SENIOR REVIEW -- Bearing pressure [X] kPa exceeds allowable [Y] kPa. Pile foundations or ground improvement required (specialist). |
| Abutment height > 10m | Counterfort or specialist design needed | SENIOR REVIEW -- Abutment height [X]m. Counterfort RC design or alternative abutment arrangement needed. |
| Pile foundations required | Beyond preliminary scope | SENIOR REVIEW -- Pile foundation design required. Specialist geotechnical engineer to determine pile type, capacity, and group effects. |
| Seismic Zone 1 (SPC 3) | Full seismic analysis needed | SENIOR REVIEW -- SPC 3. Seismic forces on substructure per MoWT Vol 4 Section 9.6. R-factors from Table 9.4 apply. |
| Detailed reinforcement needed | Beyond preliminary scope | SENIOR REVIEW -- Preliminary sizing complete. Detailed reinforcement design per [code] required. |

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Superstructure reactions | object | kN | Yes | Skill #37 | Vertical and horizontal reactions |
| Bearing capacity | number | kPa | Yes | Skill #10 | Allowable bearing pressure |
| Soil profile | object | -- | Yes | Skill #10 | Soil type, friction angle, unit weight |
| Earth pressure surcharge | number | kPa | Yes | Skill #36 | Live load surcharge (10 or 20 kPa) |
| Seismic parameters | object | -- | Recommended | Skill #36 | A, SPC, S, R-factors |
| Scour depth | number | m | Recommended | Skill #35/39 | For foundation depth determination |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| abutment_dimensions | object | m | User | Wall height, base width, stem thickness |
| foundation_type | text | -- | User | Shallow / pile (escalate) |
| estimated_quantities | object | m3 | User | Concrete and excavation volumes |
| stability_results | object | -- | User | FoS sliding, overturning, bearing |

---

## 7. Procedure

### Step 1: Load Country Module
### Step 2: Determine Abutment Height from bridge geometry
### Step 3: Select Abutment Type based on height and construction capability
### Step 4: Estimate Preliminary Dimensions
### Step 5: Calculate Earth Pressure with live load surcharge
### Step 6: Check Stability (sliding >= 1.5, overturning >= 2.0, bearing)
### Step 7: Check Seismic Requirements (if applicable)
### Step 8: If bearing fails, escalate for pile foundations
### Step 9: Produce Output

---

## 8. Output Format

```
============================================================
BRIDGE SUBSTRUCTURE -- [Bridge Name]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

ABUTMENT GEOMETRY
-----------------
Type:               [Gravity / Cantilever / Counterfort]
Height:             [X] m
Base Width:         [X] m
Stem Thickness:     [X] m

EARTH PRESSURE
--------------
phi:                [X] degrees
Ka:                 [X]
gamma_soil:         [X] kN/m3
Surcharge:          [X] kPa ([HA/HB])
Pa (nominal):       [X] kN/m
Pa (design, ULS):   [X] kN/m (gamma_fL = 1.50)

STABILITY CHECKS
----------------
Sliding:      F = [X] >= 1.5   [PASS/FAIL]
Overturning:  F = [X] >= 2.0   [PASS/FAIL]
Bearing:      q = [X] kPa <= [Y] kPa   [PASS/FAIL]
Eccentricity: e = [X] m   [Within/Outside] middle third

SEISMIC CHECK
-------------
[Zone, SPC, and seismic force or "Not required"]

ESCALATION FLAGS
----------------
SENIOR REVIEW -- Preliminary sizing complete. Detailed reinforcement
design required by specialist structural engineer.
[Pile escalation if applicable]

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

- **Not covered:** Pile foundation design (specialist). Detailed reinforcement design. Pier design for multi-span bridges (beyond simply supported scope). Bridge bearing design. Retaining wall design beyond bridge abutments.
- **Simplifications:** Uses simplified Rankine earth pressure (not Coulomb). Passive pressure neglected. Seismic earth pressure increase not calculated (requires specialist analysis). Foundation design per CP 2004 approach (nominal loads) as referenced by MoWT Vol 4.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with abutment preliminary design, earth pressure, stability checks, pile escalation |
