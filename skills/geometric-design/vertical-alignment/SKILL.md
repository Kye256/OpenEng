---
name: "vertical-alignment"
description: "Use when designing vertical curves, selecting K-values, checking gradient compliance, or determining climbing lane requirements. Requires design speed from Skill #13 (Design Standards Selection). Outputs feed into Skill #16 (Sight Distance) and Skill #17 (Cross-Section Design)."
---

# Vertical Alignment

> **Skill ID:** 15
> **Domain:** Geometric Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** —
> **Country Modules:** Uganda, UK

## Purpose

Design the vertical alignment of a road — select gradients, determine K-values for crest and sag vertical curves, calculate curve lengths, check gradient compliance, and assess climbing lane requirements. This skill produces the vertical geometry that ensures adequate sight distance over crests, driver comfort through sags, and acceptable vehicle performance on grades.

## When to Use This Skill

- **Use when:** Designing vertical curves for any road, checking gradient compliance, or assessing climbing lane needs. Required after Skill #13 (Design Standards Selection) has established design speed, road class, and terrain.
- **Do not use when:** Only horizontal alignment is being designed with no vertical geometry changes, or when the vertical profile is fully fixed by an existing road (maintenance/resurfacing only).
- **Prerequisite skills:** Skill #13 (Design Standards Selection) — must have design speed, road class, terrain, and selected standard.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Vertical Curves:** Vertical curves are used to provide a smooth transition between two tangent grades (straight sections of the vertical profile). There are two types:

- **Crest curves** — convex curves at the top of a hill. The critical design consideration is sight distance: the driver must be able to see far enough ahead to stop safely.
- **Sag curves** — concave curves at the bottom of a dip. The critical design considerations are headlight illumination distance (at night), driver comfort (centripetal acceleration), drainage, and aesthetics.

**K-Value:** The K-value is the horizontal distance (in metres) required for a 1% change in grade along a vertical curve. It is the primary design parameter for vertical curves. Higher K-values produce longer, gentler curves.

**Algebraic Grade Difference (A):** The absolute value of the difference between two consecutive grades. For example, if a road rises at +3% then descends at -2%, A = |+3 - (-2)| = 5%.

**Gradients:** The longitudinal slope of the road, expressed as a percentage. Gradients affect vehicle performance (especially for heavy vehicles), fuel consumption, drainage, and safety. Standards set maximum desirable and absolute gradients by terrain class and design speed.

**Climbing Lanes:** Additional lanes provided on long, steep grades to allow slow-moving heavy vehicles to be overtaken. The need for climbing lanes depends on gradient, length of grade, traffic volume, and the speed reduction of heavy vehicles.

**Phasing of Horizontal and Vertical Alignment:** The coordination of horizontal and vertical curves to produce a safe and visually pleasing road. Horizontal curves should ideally start before a crest (not after), and curves should be either coincident or well-separated — never partially overlapping. This guidance is qualitative and based on visual/safety principles (see MoWT Section 6.4).

### 1.2 Universal Formulas

**Vertical curve length:**

```
L = K x A
```

Where:
- L = length of vertical curve (m)
- K = K-value (m per % grade change)
- A = algebraic difference of grades (%)

**Minimum curve length (rule of thumb):**

```
L_min = 0.6 x V
```

Where:
- L_min = minimum curve length (m) — to avoid an abrupt "kink" appearance
- V = design speed (km/h)

**Crest curve sight distance relationship (approximate):**

When the sight distance (S) is less than the curve length (L):

```
L = A x S^2 / (200 x (sqrt(h1) + sqrt(h2))^2)
```

Where:
- h1 = driver eye height (m)
- h2 = object height (m)
- S = sight distance (m)

This relationship shows why K-values increase rapidly with design speed — sight distance requirements grow with V^2 while the geometric relationship is also quadratic.

**Sag curve design criteria:** Sag K-values are typically governed by headlight illumination distance at night, assuming a headlight height of 0.6 m and a 1-degree upward beam angle. Comfort criteria (limiting vertical centripetal acceleration to approximately 0.3 m/s^2) may also apply but generally give shorter curves than the headlight criterion.

### 1.3 Figures & Diagrams

**Vertical curve geometry:** A vertical curve is defined by the two tangent grades (g1 and g2), the algebraic difference A = |g1 - g2|, the K-value, and the resulting curve length L = K x A. The curve is a parabola. The highest (or lowest) point of the curve can be located at a distance from the start equal to (g1/A) x L — this is important for drainage design.

**Grade effect on vehicle performance:** Heavy vehicles (trucks, buses) experience significant speed reduction on upgrades. A truck entering a 6% grade at 80 km/h may slow to 40-50 km/h over 500-800 m, creating a large speed differential with passenger cars. This speed differential is the primary justification for climbing lanes.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Design speed (from Skill #13)
  |-- Road class and standard (from Skill #13)
  |-- Terrain class (from Skill #13)
  +-- Load country module for standard-specific tables

Step 2: Determine maximum gradient
  --> See country module, Section M.2 for gradient limits by terrain and speed
  |-- Check proposed gradients against desirable and absolute maximums
  +-- If gradient exceeds limits --> Flag non-compliance (Section 5)

Step 3: Check gradient length
  --> See country module for critical length of gradient tables
  |-- If grade is steep and long --> Assess climbing lane need (Step 7)
  +-- If grade is short --> No climbing lane assessment needed

Step 4: Determine K-value for each vertical curve
  --> See country module, Section M.2 for K-value tables
  |-- Crest curves: K based on stopping sight distance
  |-- Sag curves: K based on headlight illumination distance
  +-- Check for desirable vs minimum values

Step 5: Calculate vertical curve length
  --> L = K x A for each curve
  |-- Check L >= L_min (= 0.6 x V)
  +-- If L < L_min --> Use L_min

Step 6: Check phasing with horizontal alignment
  --> Qualitative check per Section 6.4 guidance
  |-- Horizontal curve should start before crest, not after
  |-- Curves should be coincident or well-separated
  +-- Flag any phasing concerns

Step 7: Assess climbing lane requirement (if applicable)
  --> See country module for AADT thresholds and speed reduction criteria
  |-- Determine speed reduction of design heavy vehicle on proposed grade
  +-- Compare against thresholds

Step 8: Run validation (Section 4 + country module Section M.5)

Step 9: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Design to desirable K-values where possible.** Minimum K-values represent the lowest acceptable standard — they are not a target. Using higher K-values improves sight distance, driver comfort, and the appearance of the road.

**Gradient selection is a balance.** Steeper gradients reduce earthworks costs but increase vehicle operating costs (fuel, brake wear), reduce heavy vehicle speeds, and may create safety issues. Flatter gradients cost more to construct but provide better service. The optimum depends on traffic volume, terrain, and project economics.

**Drainage at flat spots.** On sag curves and at points where the grade changes from positive to negative, water collects. Ensure a minimum longitudinal gradient of 0.3-0.5% is maintained in cuttings and at kerbed sections to avoid ponding.

**Broken-back grades (roller-coaster profile) should be avoided.** A short steep grade between two flatter grades creates an uncomfortable and visually poor ride. Combine the grades into a single, longer grade where possible.

### 2.3 Common Errors

1. **Using crest K-values for sag curves (or vice versa).** Crest and sag K-values are different because they address different design criteria (sight distance vs headlight/comfort). Always use the correct curve type.
2. **Forgetting the L_min check.** Even when K x A gives a short curve, a minimum curve length of 0.6V ensures the curve is long enough to be visually perceptible and comfortable.
3. **Not checking sight distance separately.** K-values from standard tables ensure adequate sight distance under standard conditions (flat, no obstructions). Where there are cut slopes, barriers, or structures near the road, sight distance must be checked explicitly using Skill #16.
4. **Ignoring the phasing of horizontal and vertical alignment.** A sharp horizontal curve hidden behind a crest is extremely dangerous. Always check coordination between horizontal and vertical geometry (Section 6.4 guidance).
5. **Using absolute maximum gradient without justification.** The absolute maximum is a last resort for constrained terrain. Design to desirable maximum where possible.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| K-value type | Desirable minimum | Not specified | No flag (conservative) | Design to desirable standard unless constraints force relaxation |
| Minimum gradient | 0.5% | In cuttings or kerbed sections | ASSUMED: Min gradient 0.5% for drainage | Common drainage requirement |
| Curve type | Determine from grades | g1 > g2: crest; g1 < g2: sag | No flag | Physics-based determination |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always use desirable K-values unless constrained.** If absolute minimum K-values are used, flag this prominently.
3. **Conservative direction:** Use higher K-values (longer curves) when in doubt.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| K-value (crest) | 2 | 200 | m/% | Warn if < 10 (very low speed); reject if < 2 |
| K-value (sag) | 4 | 100 | m/% | Warn if < 9 (very low speed); reject if < 4 |
| Grade | -12 | 12 | % | Warn if magnitude > 8%; reject if > 12% |
| Curve length | 20 | 2,000 | m | Warn if < L_min (0.6V) |
| A (algebraic difference) | 0.5 | 20 | % | Warn if > 10% (very sharp grade change) |

### 4.2 Consistency Checks

- **K-value vs. design speed:** Verify K >= minimum K for the design speed from the country module. If not, flag.
- **Curve length vs. minimum:** Verify L >= L_min = 0.6 x V. If not, flag.
- **Gradient vs. terrain and road class:** Verify gradient does not exceed the maximum for the terrain class and road class.
- **Successive grades:** Check that the algebraic difference between consecutive grades is not excessive (A > 10% is unusual and warrants review).

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Gradient exceeds desirable maximum | Vehicle performance and safety concern | SENIOR REVIEW -- Gradient [X]% exceeds desirable maximum [Y]% for [terrain] terrain at [speed] km/h. Consider flatter grade or climbing lane. |
| Gradient exceeds absolute maximum | Fundamental safety and standards issue | SENIOR REVIEW -- Gradient [X]% exceeds absolute maximum [Y]% for [terrain] terrain. Reduce gradient or redesign alignment. |
| K-value below desirable minimum | Reduced sight distance or comfort | SENIOR REVIEW -- K-value [X] is below desirable minimum [Y] for [speed] km/h. Increase curve length or accept relaxation with justification. |
| Crest curve before horizontal curve start | Phasing defect — hidden curve hazard | SENIOR REVIEW -- Crest curve conceals beginning of horizontal curve. Adjust phasing per Section 6.4 guidance. |
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
| Design speed | number | km/h | Yes | Skill #13 | Governs K-value selection and L_min |
| Road class | category | -- | Yes | Skill #13 | Determines applicable gradient limits |
| Terrain class | category | -- | Yes | Skill #13 | Determines maximum gradients |
| Selected standard | text | -- | Yes | Skill #13 | Determines which tables to use |
| AADT (design year) | number | pcu/day | For climbing lanes | Skill #6 | Triggers climbing lane assessment |
| Proposed grades | list of numbers | % | No | User or design software | If specific grades are proposed for checking |
| Horizontal alignment | geometry | -- | No | Skill #14 | For phasing check |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| K-values (crest and sag) | number | m/% | Skill #16 (Sight Distance) | K-values feed sight distance calculations on vertical curves |
| Gradient for each section | number | % | Skill #17 (Cross-Section) | Gradients affect drainage design |
| Curve lengths | number | m | User | Required vertical curve lengths |
| Gradient compliance status | text | -- | User | Desirable / Absolute / Non-compliant |
| Climbing lane recommendation | text | -- | User | Required / Consider / Not required |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT standards and tables | Markdown |
| `modules/uk.md` | UK DMRB CD 109 standards and tables | Markdown |
| `tables/uganda_k_values.json` | Uganda MoWT K-values for crest and sag curves | JSON |
| `tables/uganda_gradients.json` | Uganda MoWT maximum gradient tables | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: Confirm Design Inputs
Receive design speed, road class, terrain, and standard from Skill #13. Confirm AADT if climbing lanes are to be assessed.

### Step 3: Determine Maximum Gradients
From country module: look up desirable and absolute maximum gradients for the terrain class and design speed. Report both values.

### Step 4: Check Each Proposed Grade
For each grade section:
- Compare against desirable and absolute maximum
- Report compliance level
- Check critical length of gradient if grade is steep

### Step 5: Determine K-Values
From country module tables: look up desirable minimum K-values for crest and sag curves at the design speed.

### Step 6: Calculate Vertical Curve Lengths
For each vertical curve:
- L = K x A
- Check L >= L_min = 0.6 x V
- Report curve length and compliance

### Step 7: Assess Climbing Lane Requirement
If AADT is available and gradients are steep:
- Check AADT against climbing lane thresholds
- Assess speed reduction of heavy vehicles
- Report recommendation

### Step 8: Check Phasing
Qualitative assessment of horizontal/vertical curve coordination per Section 6.4 guidance.

### Step 9: Run Validation
All universal + country-specific checks.

### Step 10: Produce Output

---

## 8. Output Format

```
============================================================
VERTICAL ALIGNMENT -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Design Speed: [X] km/h
Date: [YYYY-MM-DD]
============================================================

DESIGN PARAMETERS
-----------------
Maximum gradient (desirable):     [X]%
Maximum gradient (absolute):      [X]%
K-value crest (desirable min):    [X]
K-value sag (desirable min):      [X]
Minimum curve length (L_min):     [X] m (= 0.6 x V)

GRADIENT ANALYSIS
-----------------
Section  Grade   Desirable Max  Absolute Max  Compliance
         (%)     (%)            (%)           Status
-------  ------  -------------  ------------  ----------
1        [g]     [des]          [abs]         [Desirable / Absolute / Non-compliant]
2        [g]     [des]          [abs]         [status]
...

VERTICAL CURVE ANALYSIS
-----------------------
Curve  Type    A(%)   K      L(m)   L_min(m)  Compliance
-----  ------  -----  -----  -----  --------  ----------
1      [crest] [A]    [K]    [L]    [Lmin]    [Desirable / Relaxation]
2      [sag]   [A]    [K]    [L]    [Lmin]    [status]
...

CLIMBING LANE ASSESSMENT
------------------------
[Assessment or "Not applicable -- AADT not provided"]

PHASING CHECK
-------------
[Qualitative assessment or "Not assessed -- horizontal alignment not provided"]

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

- **Not covered:** Detailed sight distance calculations on vertical curves (Skill #16). Phasing optimisation algorithms. Earthworks volume implications of vertical alignment choices. Drainage design at sag curves (Skill #30).
- **Simplifications:** Uses point-check approach (checking individual grades and curves) rather than continuous profile analysis. In practice, vertical alignment design is iterative with CAD/design software.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with verified tables from Uganda MoWT Vol. 1 and UK CD 109 |
