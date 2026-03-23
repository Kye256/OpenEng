---
name: "horizontal-alignment"
description: "Use when designing horizontal curves — selecting curve radii, superelevation, transition curves, and curve widening for a road. Requires design speed from Skill #13 (Design Standards Selection). Outputs feed into Skill #16 (Sight Distance) and earthworks calculations."
---

# Horizontal Alignment

> **Skill ID:** 14
> **Domain:** Geometric Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-17
> **Reviewed By:** —
> **Country Modules:** Uganda, UK

## Purpose

Design the horizontal alignment of a road — select curve radii, superelevation, transition curves, and curve widening that satisfy the design speed established by Skill #13. This skill produces the horizontal geometry that keeps vehicles safely on the road through curves.

## When to Use This Skill

- **Use when:** Designing horizontal curves for any road. Required after Skill #13 (Design Standards Selection) has established design speed, road class, and standard.
- **Do not use when:** The horizontal alignment is fully constrained by an existing road and no geometric changes are proposed (maintenance/resurfacing only).
- **Prerequisite skills:** Skill #13 (Design Standards Selection) — must have design speed, road class, terrain, and selected standard.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Centrifugal Force and Curve Design:** When a vehicle travels in a circular path, centrifugal force pushes it outward. This force is counterbalanced by two mechanisms: superelevation (tilting the road surface toward the inside of the curve) and side friction (grip between tyres and road). The fundamental design equation balances these forces.

**Superelevation (e):** The transverse slope of the road surface on a curve, tilted to counteract centrifugal force. Expressed as a percentage (e.g., 7% means 0.07 m/m). Higher superelevation allows sharper curves at a given speed but creates problems for slow or stopped vehicles (sliding inward) and at intersections.

**Side Friction Factor (f):** The lateral friction between tyres and road surface that a driver is willing to use. Not the maximum available friction (which is higher), but the value at which most drivers feel uncomfortable. Side friction factors decrease with increasing speed — drivers accept less lateral force at higher speeds.

**Minimum Radius (Rmin):** The sharpest curve permitted for a given design speed. Determined by the maximum superelevation and the maximum comfortable side friction factor. Below this radius, vehicles at the design speed will either skid or experience unacceptable discomfort.

**Transition Curves (Spirals):** A curve of progressively changing radius inserted between a straight (tangent) section and a circular curve. Transitions provide a gradual introduction of centrifugal force, allow progressive application of superelevation, and improve the visual appearance of the alignment. The clothoid (Euler) spiral is the standard form.

**Curve Widening:** On sharp curves, long vehicles require additional lane width because the rear wheels track inside the front wheels. Widening compensates for this off-tracking.

### 1.2 Universal Formulas

**Minimum Radius (fundamental equation):**

```
Rmin = V² / (127 × (e + f))
```

Where:
- Rmin = minimum radius (m)
- V = design speed (km/h)
- e = maximum superelevation (decimal, e.g., 0.07 for 7%)
- f = maximum side friction factor (decimal, design value for comfort)
- 127 = constant derived from unit conversion (= 1000²/(9.81×3600²/1000) ≈ 127.14)

This equation is used by AASHTO, ERA, and MoWT. DMRB uses a different approach based on V²/R bands — see UK module.

**Side Friction Factor (AASHTO/MoWT relationship):**

Side friction decreases with speed. Typical design values:

| Design Speed (km/h) | f (max) |
|---------------------|---------|
| 30 | 0.17 |
| 40 | 0.17 |
| 50 | 0.16 |
| 60 | 0.15 |
| 70 | 0.14 |
| 80 | 0.14 |
| 90 | 0.13 |
| 100 | 0.12 |
| 110 | 0.11 |
| 120 | 0.09 |

**Source:** Uganda MoWT Vol. 1, Table 6.1 (Verified)

**Superelevation for intermediate radii:**

When the radius is above Rmin but still requires superelevation:

```
e = V² / (127 × R) - f
```

Or rearranged to find R for a given e:

```
R = V² / (127 × (e + f))
```

**Transition curve length (clothoid):**

```
L = V³ / (C × R)
```

Where:
- L = transition length (m)
- V = design speed (km/h) — note: some standards use m/s, requiring different constants
- C = rate of change of centrifugal acceleration (m/s³)
- R = radius of circular curve (m)

The constant and limits on C vary by standard — see country modules.

**Curve widening (AASHTO/MoWT approach):**

```
w = n × (R - √(R² - L²)) / R + V / (10 × √R)
```

Where:
- w = total widening (m)
- n = number of lanes
- L = wheelbase of design vehicle (m)
- R = curve radius (m)
- V = design speed (km/h)

### 1.3 Figures & Diagrams

**Circular curve elements:** A circular curve is defined by its radius R, deflection angle Δ, tangent length T = R × tan(Δ/2), curve length L = R × Δ (in radians), and external distance E = R × (1/cos(Δ/2) - 1). The PC (Point of Curvature) and PT (Point of Tangency) mark where the curve begins and ends.

**Superelevation development:** On a tangent section, the road has normal crossfall (typically 2.5%). Approaching a curve, the outer edge is progressively raised until full superelevation is reached. The transition from normal crossfall to full superelevation occurs over the transition curve length (or a proportion of the tangent if no spiral is used).

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  ├── Design speed (from Skill #13)
  ├── Design vehicle (from Skill #13)
  ├── Road class and standard (from Skill #13)
  ├── Terrain class (from Skill #13)
  └── Load country module for standard-specific tables

Step 2: Determine maximum superelevation
  → See country module, Section M.2 for emax by standard and context (rural/urban)

Step 3: For each proposed curve, determine required radius
  ├── If radius is given → Check against minimum for design speed (Step 4)
  ├── If radius is to be selected → Use at least the minimum for design speed
  └── If alignment is constrained → Determine minimum feasible radius, check compliance

Step 4: Check radius against standard requirements
  → See country module, Section M.2 for minimum radius tables
  ├── If R ≥ desirable minimum → ✅ Compliant
  ├── If R < desirable minimum but within relaxation limits → Flag Relaxation
  └── If R below all permitted limits → Flag Departure / non-compliance

Step 5: Calculate superelevation for each curve
  → See country module for superelevation method (AASHTO formula vs DMRB V²/R bands)

Step 6: Determine transition curve requirements
  → See country module for transition formula and limits
  ├── Calculate transition length
  ├── Check against minimum values
  └── If no transition required (large radius) → note

Step 7: Calculate curve widening if required
  ├── From design vehicle wheelbase and curve radius
  └── Not typically required for R > 250m (check standard-specific threshold)

Step 8: Check sight distance on curves
  → Lateral clearance on inside of curve must provide stopping sight distance
  → Links to Skill #16 (Sight Distance)

Step 9: Run validation (Section 4 + country module Section M.5)

Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Don't design to minimum radius unless forced by constraints.** Minimum radius means maximum superelevation and maximum side friction simultaneously — this is the limit, not the target. A good design uses radii well above the minimum wherever the terrain and cost allow.

**Consistency of curvature matters more than individual curve compliance.** A long tangent followed by a sharp curve is more dangerous than a series of moderate curves. Drivers build up speed on the tangent and then encounter the curve at higher than design speed. Avoid isolated sharp curves.

**Maximum tangent length:** Long tangents (>4 km in the MoWT manual) contribute to driver fatigue and excessive speed. Consider introducing gentle curves to break up very long straights.

**Reverse curves:** When two curves in opposite directions are separated by a short tangent, the superelevation transition can be problematic. Ensure sufficient tangent distance between curves for superelevation development. The minimum tangent between reverse curves depends on the superelevation rates and development rates of both curves.

**Compound curves (two curves of different radii in the same direction):** The ratio of the larger to smaller radius should generally not exceed 2:1 for driver comfort. Larger ratios create an unexpected tightening that drivers may not anticipate.

### 2.3 Common Errors

1. **Using the wrong emax.** Urban roads typically have lower maximum superelevation (4–5%) than rural (7–8%). Using rural emax in an urban setting produces incorrect minimum radii.
2. **Forgetting to check sight distance through curves.** A curve may meet the radius requirement but still obstruct sight distance if there are cuttings, barriers, or buildings on the inside of the curve.
3. **Omitting transitions on sharp curves.** Transition curves are mandatory below certain radii. Omitting them causes an abrupt change in lateral force.
4. **Not checking combined horizontal and vertical curvature.** A horizontal curve at a crest can create a safety problem even if each element is individually compliant. This links to Skill #18 (Phasing).
5. **Applying curve widening on both sides.** Widening is typically applied only to the inside of the curve, not symmetrically.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Max superelevation (rural) | 7% | Not specified | ⚠️ ASSUMED: emax = 7% (confirm with standard) | Common value across AASHTO, MoWT, ERA |
| Max superelevation (urban) | 4% | Urban context, not specified | ⚠️ ASSUMED: emax = 4% (urban context — confirm) | Lower to accommodate intersections and slow traffic |
| Design vehicle wheelbase | 6.1m (SU) | Not specified | ⚠️ ASSUMED: SU wheelbase 6.1m for curve widening | Conservative for standard truck |
| Normal crossfall | 2.5% | Not specified | ⚠️ ASSUMED: Normal crossfall 2.5% | Standard for paved roads |

### Default Behaviour Rules

1. **Country module defaults take precedence.**
2. **Never use minimum radius without checking whether a larger radius is feasible.**
3. **When in doubt on superelevation, use the lower value** — under-superelevation is safer than over-superelevation for slow or stopped vehicles.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Curve radius | 15 | 10,000 | m | Warn if < 30m (very low speed only) or > 10,000 (effectively tangent) |
| Superelevation | 0 | 12 | % | Reject if > 10% (unsafe for slow vehicles); warn if > 8% |
| Side friction factor | 0.08 | 0.20 | — | Reject if outside range |
| Transition length | 0 | — | m | Warn if < standard minimum for the radius |

### 4.2 Consistency Checks

- **Radius vs. design speed:** Verify R ≥ Rmin for the design speed and emax. If not, flag.
- **Superelevation vs. radius:** Verify superelevation is consistent with the radius (not over-superelevated on gentle curves or under-superelevated on sharp curves).
- **Successive curves:** Check that the ratio of radii between successive curves does not exceed 2:1 (compound) or that adequate tangent exists between reverse curves.
- **Transition provision:** Verify transitions are provided where required by the standard.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Radius below standard minimum | Fundamental safety issue | 🔺 SENIOR REVIEW — Curve radius [X]m is below the minimum [Y]m for [speed] km/h. Increase radius, reduce design speed, or submit Departure. |
| Isolated sharp curve after long tangent | High accident risk pattern | 🔺 SENIOR REVIEW — Sharp curve (R=[X]m) follows [Y]km tangent. Speed at curve entry likely exceeds design speed. Consider speed management measures. |
| Reverse curves with inadequate tangent | Superelevation transition problem | 🔺 SENIOR REVIEW — Tangent between reverse curves is [X]m; minimum for superelevation development is [Y]m. |
| Superelevation > standard maximum | Sliding risk for slow/stopped vehicles | 🔺 SENIOR REVIEW — Required superelevation [X]% exceeds maximum [Y]% for this context. |

### 5.2 Escalation Behaviour

- **Never suppress.** Continue working but flag prominently.
- **Country module escalations** (Section M.6) merge with these.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Design speed | number | km/h | Yes | Skill #13 | Governs minimum radius |
| Road class | category | — | Yes | Skill #13 | Determines applicable standards |
| Selected standard | text | — | Yes | Skill #13 | Determines which tables to use |
| Design vehicle | category | — | Yes | Skill #13 | Determines curve widening |
| Terrain class | category | — | Yes | Skill #13 | Context for alignment choices |
| Urban/rural | category | — | Yes | Skill #13 | Affects emax |
| Proposed curve radii | list of numbers | m | No | User or alignment software | If specific radii are proposed for checking |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Minimum radius | number | m | User, Skill #16 | For the design speed and emax |
| Superelevation for each curve | number | % | Skill #17 (Cross-section) | Required superelevation |
| Transition lengths | number | m | User | Required spiral transition length |
| Curve widening | number | m | Skill #17 (Cross-section) | Additional width on curves |
| Compliance status per curve | text | — | User | Desirable / Relaxation / Departure |

---

## 7. Procedure

### Step 1: Confirm Design Inputs
Receive design speed, road class, standard, design vehicle, terrain, and urban/rural context from Skill #13. Load country module.

### Step 2: Determine Maximum Superelevation
From country module: rural emax (typically 7%) and urban emax (typically 4–5%). Check for any standard-specific overrides.

### Step 3: Determine Minimum Radius
From country module tables or calculate using Rmin = V² / (127 × (emax + fmax)). Report the minimum and the desirable minimum if different.

### Step 4: Check Each Proposed Curve
For each curve radius in the alignment:
- Compare against minimum, desirable minimum, and any intermediate thresholds (DMRB steps)
- Report compliance level
- Calculate required superelevation
- Calculate transition length
- Calculate widening if required

### Step 5: Calculate Superelevation
Using the country module's method (AASHTO formula, DMRB V²/R bands, or direct table lookup).

### Step 6: Calculate Transition Lengths
Using the country module's formula and limits on rate of change of centripetal acceleration.

### Step 7: Calculate Curve Widening
If radius is below the widening threshold, calculate from design vehicle wheelbase.

### Step 8: Run Validation
All universal + country-specific checks.

### Step 9: Produce Output

---

## 8. Output Format

```
============================================================
HORIZONTAL ALIGNMENT — [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Design Speed: [X] km/h
Date: [YYYY-MM-DD]
============================================================

DESIGN PARAMETERS
-----------------
Maximum superelevation (emax):    [X]%
Minimum radius (absolute):        [X] m
Minimum radius (desirable):       [X] m [if different]
Normal crossfall:                  [X]%

CURVE ANALYSIS
--------------
Curve  Radius   Super-    Transition  Widening  Compliance
#      (m)      elevation Length (m)  (m)       Status
----   ------   --------- ----------  --------  ----------
1      [R]      [e]%      [L]         [w]       [Desirable / Relaxation / Departure]
2      [R]      [e]%      [L]         [w]       [status]
...

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with ⚠️ flags]

VALIDATION
----------
[Universal checks — ✅ or ❌]
[Country-specific checks — ✅ or ❌]

ESCALATION FLAGS
----------------
[🔺 flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN — FOR PROFESSIONAL REVIEW
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Phasing of horizontal and vertical alignment (Skill #18). Sight distance calculations through curves (Skill #16). Compound curve design with more than 2 elements. Alignment optimisation algorithms.
- **Simplifications:** Uses point-check approach (checking individual curves) rather than continuous alignment analysis. In practice, alignment design is iterative with CAD/design software.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-17 | AI draft | Initial draft with verified tables from Uganda MoWT Vol. 1 and UK CD 109 |
