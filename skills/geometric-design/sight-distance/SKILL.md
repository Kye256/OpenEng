---
name: "sight-distance"
description: "Use when calculating stopping sight distance (SSD), passing sight distance (PSD), or checking sight distance adequacy on vertical curves and at intersections. Requires design speed from Skill #13 and K-values from Skill #15 (Vertical Alignment). Outputs feed into Skill #14 (lateral clearance on horizontal curves) and Skill #19 (visibility splays at intersections)."
---

# Sight Distance

> **Skill ID:** 16
> **Domain:** Geometric Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** —
> **Country Modules:** Uganda, UK

## Purpose

Calculate stopping sight distance (SSD), passing/overtaking sight distance (PSD/OSD), and check sight distance adequacy on vertical curves, horizontal curves, and at intersections. This skill verifies that drivers can see far enough ahead to stop safely or overtake safely, using the design speed and road geometry established by Skills #13, #14, and #15.

## When to Use This Skill

- **Use when:** Checking that a road design provides adequate sight distance for safe stopping and overtaking. Required after Skill #13 (design speed) and Skill #15 (vertical alignment K-values and gradients).
- **Do not use when:** No geometric design is being performed (e.g., maintenance-only projects with no alignment changes).
- **Prerequisite skills:** Skill #13 (Design Standards Selection) — design speed. Skill #15 (Vertical Alignment) — K-values, gradients (for checking sight distance on vertical curves).

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Stopping Sight Distance (SSD):** The minimum distance required for a driver travelling at design speed to perceive a hazard, react, and bring the vehicle to a complete stop. SSD consists of two components:
- **Perception-reaction distance:** The distance travelled during the time the driver sees the hazard and begins braking (typically 2.5 seconds).
- **Braking distance:** The distance required to stop the vehicle from the moment brakes are applied, which depends on speed, friction, and grade.

**SSD on Grades — Critical Pitfall:** SSD is LONGER on downgrades than on level roads. A negative grade (downgrade) reduces the effective braking friction in the SSD formula, increasing braking distance. Conversely, an upgrade (positive grade) shortens SSD because gravity assists braking. This is a common source of error — always check which direction the sign convention applies (MoWT: G positive for upgrade, negative for downgrade).

**Passing Sight Distance (PSD):** The distance required for a vehicle to safely overtake a slower vehicle on a two-lane road. PSD is much longer than SSD (typically 4-6 times longer) because it includes the distance for the initial manoeuvre, the overtaking distance in the opposing lane, a safety clearance, and the distance covered by an oncoming vehicle. Some standards call this "Overtaking Sight Distance" (OSD) — MoWT uses "PSD."

**Eye and Object Heights:** SSD calculations depend on the assumed heights of the driver's eye and the object to be seen. These vary between standards:
- MoWT: eye height 1.07 m, object height 0.15 m (for SSD), 1.3 m (for PSD)
- DMRB: eye height 1.05-2.00 m, object height 0.26-2.00 m (envelope of visibility)
- These differences mean SSD values are NOT directly comparable between standards.

**Friction Factor (f):** The longitudinal friction coefficient used for braking distance calculation. Friction decreases with speed (wet pavement, design value). This is a design friction factor, not the maximum available friction — it includes a safety margin.

**Sight Distance on Vertical Curves:** On crest curves, the parabolic profile limits how far ahead a driver can see. The K-value of the crest curve directly determines the available sight distance. The relationship is: for a given K, the available sight distance on a crest is approximately SSD = sqrt(2 x K x (sqrt(h1) + sqrt(h2))^2 x 100), where h1 and h2 are eye and object heights. In practice, K-values in design tables are already calculated to provide adequate SSD.

### 1.2 Universal Formulas

**Stopping Sight Distance (general form):**

```
SSD = 0.278 x prt x V + V^2 / (254 x (f + G))
```

Where:
- SSD = stopping sight distance (m)
- prt = perception-reaction time (seconds; typically 2.5 s)
- V = design speed (km/h)
- f = longitudinal friction coefficient (design value, decreases with speed)
- G = grade (decimal: positive for upgrade, negative for downgrade)
- 0.278 = conversion factor (1000/3600) for km/h to m/s
- 254 = constant from unit conversion (= 1000^2 / (2 x 9.81 x 3600^2/1000^2) approximately)

**Perception-reaction distance:**

```
d_reaction = 0.278 x prt x V
```

**Braking distance:**

```
d_braking = V^2 / (254 x (f + G))
```

**Passing Sight Distance (MoWT/AASHTO approach):**

```
PSD = d1 + d2 + d3 + d4
```

Where:
- d1 = initial manoeuvre distance (perception-reaction + acceleration while moving into opposing lane)
- d2 = distance travelled in the opposing lane during overtaking
- d3 = safety clearance between overtaking vehicle and oncoming vehicle
- d4 = distance covered by the opposing vehicle during the overtaking manoeuvre (approximately 2/3 of d2)

### 1.3 Figures & Diagrams

**SSD components:** The total SSD comprises the reaction distance (a straight-line segment at design speed during the perception-reaction time) plus the braking distance (a curve of decreasing speed as brakes are applied). On a grade, the braking distance changes because the G term in the denominator adds to or subtracts from the friction.

**Sight distance on crest curves:** The driver's eye at height h1 must see an object of height h2 over the crest of a parabolic curve. The geometry creates a sight triangle. When the sight distance is less than the curve length, the formula L = A x S^2 / (200 x (sqrt(h1) + sqrt(h2))^2) applies. The K-value tables in standards are derived from this relationship.

**Passing sight distance elements:** A time-distance diagram showing four phases: d1 (driver decides to pass, accelerates into opposing lane), d2 (overtaking vehicle in opposing lane), d3 (clearance), d4 (opposing vehicle approaching). The total PSD equals the sum of all four distances.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Design speed (from Skill #13)
  |-- Grade of the section (from Skill #15)
  |-- K-values for any vertical curves (from Skill #15)
  |-- Road type (2-lane, dual carriageway) — affects PSD applicability
  +-- Load country module for standard-specific tables and friction factors

Step 2: Calculate or look up SSD
  |-- On level road: Use country module SSD table
  |-- On grade:
  |    |-- Determine sign convention (G +ve for upgrade, -ve for downgrade)
  |    |-- Use SSD formula with grade adjustment
  |    |-- OR use country module SSD-on-grades table
  +-- Check: SSD on downgrade is LONGER than on level (common error check)

Step 3: Check SSD on vertical curves
  |-- For crest curves: K-value from Skill #15 determines available sight distance
  |    |-- If K >= standard K for design speed --> SSD is adequate
  |    +-- If K < standard K --> Available SSD is less than required. Flag.
  |-- For sag curves: SSD usually adequate unless obstructed by overbridge/structure
  +-- Check for any overhead obstructions at sag curves

Step 4: Determine PSD requirement (if 2-lane road)
  --> See country module for PSD values
  |-- PSD is much longer than SSD — typically only achievable on flat or gentle grades
  |-- Check whether PSD is available on overtaking sections
  +-- If PSD not available --> No overtaking zones, adequate signing required

Step 5: Check sight distance on horizontal curves
  --> Link to Skill #14 for lateral clearance requirement
  |-- On inside of curves, cuttings/barriers may obstruct sight distance
  +-- Calculate required lateral clearance for SSD

Step 6: Run validation (Section 4 + country module Section M.5)

Step 7: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**SSD is the minimum — always provide it.** Every point on every road must provide at least SSD. PSD is desirable on two-lane roads but is not always achievable.

**Downgrade SSD deserves special attention.** The increase in SSD on downgrades is not intuitive to all designers. A 7% downgrade can increase SSD by 30-50% compared to level. Always check the worst-case grade direction.

**MoWT Table 6-20 uses "assumed speed for condition."** On downgrades, the "assumed speed" in MoWT's SSD-on-grades table may differ from the design speed because vehicles may travel faster downhill. This is a subtlety unique to MoWT that must be understood when using Table 6-20 values.

**Do not mix standards for eye/object heights.** MoWT uses 1.07/0.15 m; DMRB uses an envelope from 1.05-2.00/0.26-2.00 m. These different assumptions produce different SSD values. Always use the heights from the applicable standard.

### 2.3 Common Errors

1. **Forgetting the grade adjustment for SSD.** Designing only for SSD on level when the road has significant grades. Always calculate SSD on the steepest downgrade.
2. **Using the wrong sign convention for G.** MoWT convention: G is positive for upgrade, negative for downgrade. Some references reverse this. Check the convention before applying.
3. **Mixing MoWT and DMRB eye/object heights.** These produce different SSD values. Use the heights from the standard being applied.
4. **Assuming PSD = SSD.** PSD is 4-6 times longer than SSD. Roads designed with only SSD will not support safe overtaking.
5. **Not checking sight distance at sag curves with overhead obstructions.** Overbridges, gantries, or signs at sag curves can restrict sight distance even though the sag K-value is adequate for headlight illumination.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Perception-reaction time | 2.5 s | Not specified | No flag (standard value) | Used by MoWT, AASHTO; DMRB value implicit in tables |
| Grade (G) | 0 (level) | Not specified | ASSUMED: Level road (G = 0). SSD on grades not checked. | Conservative only for upgrades; non-conservative for downgrades |
| Eye height (SSD) | 1.07 m | MoWT context | ASSUMED: Eye height 1.07 m (MoWT standard) | MoWT Section 6.7 |
| Object height (SSD) | 0.15 m | MoWT context | ASSUMED: Object height 0.15 m (MoWT standard) | MoWT Section 6.7 |

### Default Behaviour Rules

1. **Country module defaults take precedence.**
2. **Always calculate SSD on downgrades when grades are known.** The level-road assumption is non-conservative for downgrades.
3. **Conservative direction:** Use the longer SSD value when in doubt.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| SSD | 25 | 350 | m | Warn if < 50m (very low speed only); warn if > 300m |
| PSD | 200 | 1000 | m | Warn if < 250m; warn if > 900m |
| Friction (f) | 0.25 | 0.45 | -- | Reject if outside range |
| prt | 2.0 | 3.0 | s | Warn if not 2.5 (standard value) |
| Eye height | 0.9 | 2.1 | m | Warn if outside 1.0-1.1m (standard SSD range) |
| Object height | 0.1 | 2.0 | m | Warn if not matching standard for context |

### 4.2 Consistency Checks

- **SSD vs design speed:** Higher design speed must produce longer SSD. If not, check inputs.
- **SSD on downgrade vs level:** SSD on downgrade must be longer than SSD on level. If not, check sign convention.
- **K-value vs SSD:** A crest K-value from Skill #15 that is >= the standard table value should provide adequate SSD. Cross-check.
- **PSD vs SSD:** PSD must be at least 3x SSD for the same speed. If not, check calculations.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| SSD not provided on a section | Fundamental safety issue | SENIOR REVIEW -- Section [X] to [Y] does not provide stopping sight distance. Redesign required. |
| SSD on downgrade not checked | Non-conservative assumption | SENIOR REVIEW -- SSD checked on level only. Grade of [X]% on this section increases SSD by approximately [Y]m. Verify adequacy. |
| PSD not available on 2-lane road | Overtaking not possible | NOTE -- No passing sight distance available between [X] and [Y]. Mark as no-overtaking zone. |
| K-value below SSD-based minimum | Sight distance restriction on crest | SENIOR REVIEW -- Crest K = [X] at [speed] km/h provides less than required SSD of [Y]m. |
| Friction data missing for design speed | Cannot calculate accurate SSD | SENIOR REVIEW -- Friction coefficient not available for [speed] km/h. Using conservative estimate. Verify with standard. |
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
| Design speed | number | km/h | Yes | Skill #13 | Primary SSD input |
| Grade | number | % | Recommended | Skill #15 | For grade-adjusted SSD |
| K-value (crest) | number | m/% | For crest checks | Skill #15 | Determines available sight distance on crests |
| Road type | category | -- | Yes | Skill #13 | 2-lane (needs PSD) vs dual (SSD only) |
| Selected standard | text | -- | Yes | Skill #13 | Determines which tables/formulas to use |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| SSD (level) | number | m | User, Skill #14 | Stopping sight distance on level |
| SSD (on grade) | number | m | User | Stopping sight distance adjusted for grade |
| PSD | number | m | User | Passing sight distance (2-lane roads) |
| Required lateral clearance | number | m | Skill #14 | For sight distance on horizontal curves |
| Sight distance adequacy | text | -- | User, Skill #19 | Adequate / Restricted / Non-compliant |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT SSD/PSD standards and tables | Markdown |
| `modules/uk.md` | UK DMRB CD 109 SSD/FOSD standards and tables | Markdown |
| `tables/uganda_ssd.json` | Uganda MoWT SSD on level and on grades | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module.

### Step 2: Confirm Design Inputs
Receive design speed, road type, grades, and K-values from Skills #13 and #15.

### Step 3: Determine SSD on Level
From country module tables or formula. Report the SSD value and its components (reaction distance + braking distance).

### Step 4: Calculate SSD on Grades
If grades are provided:
- Calculate SSD for the steepest downgrade (worst case)
- Calculate SSD for the steepest upgrade (shortest distance — relevant for verifying K-values)
- Report both values

### Step 5: Check SSD on Vertical Curves
For each crest curve:
- Compare K-value from Skill #15 against the K-value required for the design speed
- Report whether available sight distance is adequate

### Step 6: Determine PSD (if 2-lane road)
From country module tables or formula. Report PSD and where it can be provided.

### Step 7: Check Sight Distance on Horizontal Curves
Calculate required lateral clearance for SSD on inside of horizontal curves (link to Skill #14).

### Step 8: Run Validation
All universal + country-specific checks.

### Step 9: Produce Output

---

## 8. Output Format

```
============================================================
SIGHT DISTANCE -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Design Speed: [X] km/h
Date: [YYYY-MM-DD]
============================================================

STOPPING SIGHT DISTANCE
------------------------
SSD on level:           [X] m
  Reaction distance:    [X] m (prt = [X] s)
  Braking distance:     [X] m (f = [X])

SSD on grades:
  Steepest downgrade ([X]%):  [X] m  [LONGER than level]
  Steepest upgrade ([X]%):    [X] m  [shorter than level]

SIGHT DISTANCE ON VERTICAL CURVES
----------------------------------
Curve  Type    K      Required K  Available SSD  Required SSD  Status
-----  ------  -----  ----------  -------------  ------------  ------
1      crest   [K]    [Kreq]      [SSD_avail]    [SSD_req]     [OK / Restricted]
...

PASSING SIGHT DISTANCE (2-lane roads)
--------------------------------------
PSD:  [X] m
[Where available / Not available on this section]

ASSUMPTIONS & DEFAULTS
-----------------------
[Flags]

VALIDATION
----------
[Checks]

ESCALATION FLAGS
-----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses]

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

- **Not covered:** Intersection sight distance (Skill #19). Sight distance around buildings or structures. Decision sight distance (used for complex situations, not covered in MoWT). Passing sight distance on multi-lane roads (not applicable — PSD is a 2-lane road concept).
- **Simplifications:** Uses formula-based SSD calculation. In practice, sight distance is also checked graphically in CAD by plotting eye-to-object lines along the vertical and horizontal alignment.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with verified tables from Uganda MoWT Vol. 1 and UK CD 109 |
