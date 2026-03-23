# Sight Distance — Uganda Module

> **Parent Skill:** #16 Sight Distance
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 1 (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** —

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 1 | 2010 | Section 6.7 (Sight Distances) | Current — primary standard for all roads in Uganda |

### M.1.2 Institutional Context

Same as Skill #13 Uganda module — MoWT Road Design Manual is the national standard for all roads in Uganda.

### M.1.3 Standard Philosophy

MoWT provides SSD based on the AASHTO approach: perception-reaction time of 2.5 seconds, wet pavement friction factors that decrease with speed, and grade adjustment using the standard formula. SSD values are tabulated for level conditions (Table 6-19) and for grades of 3%, 5%, and 7% downgrade and upgrade (Table 6-20). PSD is provided graphically (Figure 6-45) using the four-component formula (d1+d2+d3+d4). The manual uses "passing sight distance" — there is no separate "overtaking sight distance" concept.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**SSD Tables:** Reference JSON table for full SSD data.

--> `tables/uganda_ssd.json`

Contains SSD on level (Table 6-19, p129) and SSD on grades (Table 6-20, p129) for design speeds 30-120 km/h.

**Measurement Parameters:**

| Parameter | Value | Source |
|-----------|-------|--------|
| Perception-reaction time (prt) | 2.5 s | MoWT Section 6.7.2 |
| Driver eye height (SSD) | 1.07 m | MoWT Section 6.7.2 |
| Object height (SSD) | 0.15 m | MoWT Section 6.7.2 |
| Object height (PSD) | 1.30 m | MoWT Section 6.7.3 |

**Friction Factors by Design Speed:**

| Design Speed (km/h) | 30 | 40 | 50 | 60 | 70 | 80 | 90 | 100 | 110 | 120 |
|---------------------|----|----|----|----|----|----|----|----|-----|-----|
| f (longitudinal) | 0.40 | 0.38 | 0.35 | 0.33 | 0.31 | 0.30 | 0.30 | 0.29 | 0.28 | 0.28 |

**Source:** MoWT Vol. 1, Table 6-19, p129 (Verified). These are design friction factors for wet pavement.

**Passing Sight Distance (approximate values from Figure 6-45, MoWT Vol. 1, p130):**

**WARNING:** These values are read from a graph (Figure 6-45) and are APPROXIMATE. Use the SSD formula for precise calculations. For PSD, use these as planning-level estimates and verify with the d1+d2+d3+d4 formula when precision is required.

| Average Passing Speed (km/h) | d1 (m) | d2 (m) | d3 (m) | d4 (m) | Total PSD (m) |
|-----|-----|-----|-----|-----|------|
| 50 | ~45 | ~145 | ~30 | ~95 | ~315 |
| 60 | ~55 | ~175 | ~35 | ~115 | ~380 |
| 70 | ~65 | ~210 | ~40 | ~140 | ~455 |
| 80 | ~75 | ~245 | ~45 | ~165 | ~530 |
| 90 | ~85 | ~280 | ~50 | ~185 | ~600 |
| 100 | ~95 | ~315 | ~55 | ~210 | ~675 |
| 110 | ~110 | ~350 | ~60 | ~235 | ~755 |

**Source:** Values read from MoWT Vol. 1, Figure 6-45 (graph), p130. Approximate. Use SSD formula for precise calculations.

### M.2.2 Country-Specific Formulas

**SSD Formula (MoWT Section 6.7.2, Verified):**

```
SSD = 0.278 x prt x V + V^2 / (254 x (f + G))
```

Where:
- prt = 2.5 s
- V = design speed (km/h)
- f = longitudinal friction coefficient (from table above)
- G = grade (decimal: positive for upgrade, negative for downgrade)

**Example calculation — 80 km/h, level:**
- Reaction distance = 0.278 x 2.5 x 80 = 55.6 m
- Braking distance = 80^2 / (254 x (0.30 + 0)) = 6400 / 76.2 = 84.0 m
- SSD = 55.6 + 84.0 = 139.6 m

This matches the upper end of the MoWT Table 6-19 range (112.9-139.5 m), confirming the table uses 80 km/h for the upper value and assumed speed of 70 km/h for the lower value.

**PSD Formula (MoWT Section 6.7.3):**

```
PSD = d1 + d2 + d3 + d4
```

Where:
- d1 = distance during initial perception-reaction and acceleration into opposing lane
- d2 = distance travelled in opposing lane
- d3 = safety clearance (typically 30-60 m)
- d4 = distance covered by opposing vehicle (approximately 2/3 of d2)

### M.2.3 SSD Table Interpretation

**Table 6-19 provides SSD RANGES, not single values.** The range reflects the difference between:
- Lower bound: uses "assumed speed for condition" (lower than design speed for higher speeds, reflecting that drivers may not actually travel at full design speed)
- Upper bound: uses full design speed

For design purposes, use the upper bound (full design speed) as the SSD requirement.

**Table 6-20 uses "assumed speed for condition" for downgrade SSD.** This is a subtlety: on downgrades, vehicles may travel at or above design speed, so the manual uses a higher assumed speed. On upgrades, vehicles may travel below design speed due to the grade. This means the tabulated SSD values account for likely actual speeds, not just the nominal design speed.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Calculate or look up SSD
  |-- Level road: Look up from tables/uganda_ssd.json, "level" section
  |    Use upper bound of range for design
  |-- On grade: Look up from tables/uganda_ssd.json, "grades" section
  |    |-- Match design speed and grade percentage
  |    +-- Interpolate for intermediate grades if needed
  +-- If grade not in table --> Use formula with appropriate friction factor

Step 4 (Uganda): Determine PSD
  |-- Look up approximate PSD from embedded table above
  |-- NOTE: MoWT uses "passing sight distance" not "OSD"
  |-- There is no separate OSD concept in MoWT
  +-- Flag PSD values as approximate (from Figure 6-45 graph)

Step 5 (Uganda): Grade sign convention
  |-- G positive = upgrade (SSD decreases — gravity helps braking)
  |-- G negative = downgrade (SSD increases — gravity opposes braking)
  +-- CRITICAL: SSD on downgrade is LONGER. Always check the worst case.
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Heavy braking on wet laterite/gravel surfaces.** The friction factors in Table 6-19 are for wet paved surfaces. On gravel or laterite roads (Design Classes A, B, C), friction may be lower, especially in the wet season. Where gravel roads operate near the SSD limit, consider using reduced friction factors or increasing the required SSD.

**Overloaded vehicles on grades.** Uganda's freight corridors experience significant overloading. Overloaded trucks have even longer braking distances than the design vehicle. While the standard does not explicitly account for overloading in SSD calculations, engineers should be aware that actual braking distances may exceed calculated values.

**PSD on rolling terrain is rarely achievable.** The PSD values (315-755 m) are very long. On rolling terrain with frequent crest curves, PSD may only be available on a small proportion of the road length. Adequate signing of no-overtaking zones is essential.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using the lower bound of the SSD range for design.** Table 6-19 gives ranges. The upper bound (full design speed) should be used as the design SSD requirement. The lower bound is informational only.
2. **Not adjusting SSD for grades.** Table 6-20 provides grade-adjusted SSD but is sometimes overlooked. On downgrades of 5% or more, the SSD increase is significant (20-40% longer than level).
3. **Treating PSD values from Figure 6-45 as precise.** These are approximate graph readings. When PSD calculations are critical (e.g., determining overtaking zone lengths), use the d1+d2+d3+d4 formula with speed-specific component values.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| prt | 2.5 s | Not specified | No flag (standard value) | MoWT Section 6.7.2 |
| Eye height | 1.07 m | Not specified | No flag (standard value) | MoWT Section 6.7.2 |
| Object height (SSD) | 0.15 m | Not specified | No flag (standard value) | MoWT Section 6.7.2 |
| Object height (PSD) | 1.30 m | Not specified | No flag (standard value) | MoWT Section 6.7.3 |
| Grade | 0 (level) | Not provided | ASSUMED: Level road (G = 0). SSD on grades not calculated — check downgrade sections separately. | Non-conservative for downgrades |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| SSD (level) | 29.7 (30 km/h) | 285.8 (120 km/h) | m | MoWT Table 6-19 | Warn if outside table range |
| Friction factor | 0.28 (120 km/h) | 0.40 (30 km/h) | -- | MoWT Table 6-19 | Reject if outside range |
| PSD | ~315 (50 km/h) | ~755 (110 km/h) | m | MoWT Figure 6-45 | Warn if outside approximate range |

### M.5.2 Standards Compliance Checks

- **Check:** SSD >= required SSD for design speed at every point
- **Standard:** MoWT Vol. 1, Table 6-19 (level) or Table 6-20 (grades)
- **Pass condition:** Available SSD >= tabulated upper-bound SSD
- **Fail action:** SENIOR REVIEW -- Available SSD [X]m is less than required SSD [Y]m at [speed] km/h. Redesign vertical or horizontal alignment.

- **Check:** K-value (crest) provides adequate SSD
- **Standard:** MoWT Vol. 1, Table 6-11 (crest K-values are SSD-based)
- **Pass condition:** K >= K_crest from Table 6-11 for the design speed
- **Fail action:** SENIOR REVIEW -- Crest K = [X] provides insufficient SSD at [speed] km/h. Minimum K = [Y] required.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process for sight distance. Providing less than the required SSD is a fundamental safety issue that must be resolved through redesign. If absolutely unavoidable, the engineer must document the justification, provide speed management measures, and consult with the Engineer-In-Chief, MoWT.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| SSD not provided | Fundamental safety issue | SENIOR REVIEW -- Available SSD [X]m is less than required [Y]m at [speed] km/h on [grade]% grade. Redesign alignment or provide speed management. |
| SSD checked on level only, road has significant grades | Non-conservative assumption | NOTE -- SSD checked for level road. Section has [X]% downgrade which increases required SSD by approximately [Y]m. Verify adequacy using Table 6-20. |
| PSD used without flagging as approximate | Data quality concern | NOTE -- PSD values from MoWT Figure 6-45 are approximate graph readings. Verify critical values using d1+d2+d3+d4 formula. |
| Friction data not available for design speed | Missing input | SENIOR REVIEW -- Friction coefficient not in MoWT Table 6-19 for [speed] km/h. Interpolate or use conservative value. |

---

## M.7 Worked Example — Uganda

### Example: 80 km/h Design Speed, 4% Downgrade, Calculate SSD

**Given:**
- Design Speed: 80 km/h
- Grade: 4% downgrade (G = -0.04)
- Standard: MoWT
- Friction factor at 80 km/h: f = 0.30 (from Table 6-19)

**Solution:**

**Step 1 -- SSD on level (for comparison):**
- Reaction distance = 0.278 x 2.5 x 80 = 55.6 m
- Braking distance = 80^2 / (254 x (0.30 + 0)) = 6400 / 76.2 = 84.0 m
- SSD (level) = 55.6 + 84.0 = **139.6 m**
- Table 6-19 range for 80 km/h: 112.9 - 139.5 m. Calculated value matches upper bound.

**Step 2 -- SSD on 4% downgrade:**
- Reaction distance = 55.6 m (unchanged — speed is unchanged)
- Braking distance = 80^2 / (254 x (0.30 + (-0.04))) = 6400 / (254 x 0.26) = 6400 / 66.04 = **96.9 m**
- SSD (4% downgrade) = 55.6 + 96.9 = **152.5 m**

**Step 3 -- Comparison:**

| Condition | Reaction (m) | Braking (m) | SSD (m) | Change vs Level |
|-----------|-------------|------------|---------|-----------------|
| Level (G = 0) | 55.6 | 84.0 | 139.6 | -- |
| 4% downgrade | 55.6 | 96.9 | 152.5 | +12.9 m (+9.2%) |
| 4% upgrade | 55.6 | 73.9 | 129.5 | -10.1 m (-7.2%) |

**Key observation:** The SSD on a 4% downgrade is approximately 13 m longer than on level. This confirms that downgrade SSD must always be checked.

**Step 4 -- Check SSD on crest curve:**
If a crest curve at this location has K = 29 (MoWT Table 6-11 for 80 km/h):
- K = 29 is the standard K for 80 km/h, so SSD on level is provided by the standard K-value.
- For the 4% downgrade case, the required SSD (152.5 m) is longer. Check whether K = 29 provides adequate sight distance for this longer requirement.
- The available sight distance on a crest with K = 29 and A% grade change depends on the specific geometry — this requires a detailed geometric check.

**Result:**

| Parameter | Value |
|-----------|-------|
| Design speed | 80 km/h |
| SSD on level | 139.6 m (matches Table 6-19 upper bound) |
| SSD on 4% downgrade | 152.5 m (+9.2% over level) |
| SSD on 4% upgrade | 129.5 m (-7.2% vs level) |
| Crest K at 80 km/h | 29 (provides SSD on level) |

NOTE -- SSD on 4% downgrade is 152.5 m, which is 13 m longer than the level SSD of 139.6 m. Verify that the vertical alignment provides this increased SSD on downgrade sections.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Section 6.7.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft — SSD Table 6-19, SSD on grades Table 6-20, PSD Figure 6-45 values, friction factors verified against MoWT Vol. 1 PDF. |
