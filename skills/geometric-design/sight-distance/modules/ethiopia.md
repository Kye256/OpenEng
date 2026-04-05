# Sight Distance -- Ethiopia Module

> **Parent Skill:** #16 Sight Distance
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geometric Design Manual - 2013, Chapter 7
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geometric Design Manual | 2013 | Chapter 7 (Sight Distance), Chapter 11 (Intersections -- ISD), Table 7-1 (Design Speeds) | Current -- mandatory for all ERA roads |

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) is the custodian of national road design standards. ERA manages the federal road network (trunk and link roads). Regional Roads Authorities manage regional roads. All road authorities use the ERA design manuals as the national standard.

ERA's departure from standards process requires written approval submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3).

Cross-reference: See Skill #13 Ethiopia module for full institutional context and design class selection.

### M.1.3 Standard Philosophy

ERA GDM 2013 Chapter 7 provides sight distance requirements based on AASHTO methodology adapted for Ethiopian conditions. The manual uses driver eye height of 1.05 m and object height of 0.2 m for stopping sight distance -- the same as Kenya but different from Uganda (1.07/0.15m). ERA provides separate SSD tables for paved and unpaved roads, reflecting the significantly lower friction available on gravel and earth surfaces. Passing sight distance values are guide values for two-lane road design, and decision sight distance is provided for complex situations such as interchange approaches.

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Eye and Object Heights

| Parameter | Height | Source |
|-----------|--------|--------|
| Driver eye height | 1.05 m | ERA Chapter 7 |
| Object height (SSD, crest) | 0.2 m | ERA Chapter 7 |
| Object height (PSD) | 0.6 m | ERA Chapter 7 |
| Perception-reaction time | 2.5 s | ERA Chapter 7 |
| Maximum deceleration (paved) | 3.4 m/s^2 | ERA Chapter 7 (comfortable braking) |

**Comparison with Uganda and Kenya:**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Eye height | 1.05 m | 1.07 m | 1.05 m |
| Object height (SSD) | 0.2 m | 0.15 m | 0.2 m |
| Object height (PSD) | 0.6 m | 1.30 m | 1.3 m |
| PRT | 2.5 s | 2.5 s | 2.5 s |

ERA and Kenya use the same eye/object heights (both TRL-derived). Uganda uses different values (AASHTO-derived). The different object heights affect K-values for crest curves.

### M.2.2 ERA Stopping Sight Distance -- Paved Roads (ERA Table 7-2)

| Design Speed (km/h) | SSD Desirable (m) | SSD Minimum (m) |
|---------------------|-------------------|-----------------|
| 120 | 285 | 220 |
| 100 | 210 | 160 |
| 85 | 160 | 130 |
| 70 | 120 | 90 |
| 60 | 95 | 70 |
| 50 | 70 | 55 |
| 40 | 50 | 40 |
| 30 | 35 | 30 |
| 25 | 25 | 25 |
| 20 | 20 | 20 |

**Source:** ERA GDM 2013, Table 7-2 (Verified from PDF). Desirable SSD assumes design speed. Minimum SSD assumes a reduced operating speed.

**SSD formula (ERA Chapter 7):**

```
SSD = 0.278 x V x t + V^2 / (254 x f)
```

Where V = speed (km/h), t = PRT (2.5 s), f = longitudinal friction coefficient.

### M.2.3 ERA Stopping Sight Distance -- Unpaved Roads (ERA Table 7-3)

| Design Speed (km/h) | SSD Desirable (m) | SSD Minimum (m) |
|---------------------|-------------------|-----------------|
| 70 | 135 | 100 |
| 60 | 105 | 80 |
| 50 | 80 | 65 |
| 45 | 70 | 55 |
| 40 | 60 | 45 |
| 35 | 50 | 40 |
| 30 | 40 | 35 |
| 25 | 30 | 28 |
| 20 | 25 | 20 |

**Source:** ERA GDM 2013, Table 7-3 (Verified from PDF). Unpaved road friction is approximately 80% of paved values, resulting in longer SSD. At 70 km/h, unpaved SSD desirable (135 m) is 12.5% longer than paved (120 m).

### M.2.4 ERA Decision Sight Distance (ERA Table 7-4)

Decision sight distance is required at complex locations where drivers must make decisions beyond simple stop/go: interchange approaches, unusual intersection geometry, lane drops, toll plazas.

| Design Speed (km/h) | DSD for Stop (m) | DSD for Lane Change (m) |
|---------------------|------------------|------------------------|
| 120 | 340 | 400 |
| 100 | 270 | 320 |
| 85 | 220 | 260 |
| 70 | 170 | 200 |
| 60 | 140 | 165 |
| 50 | 115 | 135 |
| 40 | 90 | 105 |

**Source:** ERA GDM 2013, Table 7-4 (Verified from PDF). DSD for stop = SSD + additional distance for decision processing. DSD for lane change includes time for speed change and lateral manoeuvre.

### M.2.5 ERA Passing Sight Distance (ERA Table 7-6)

Passing sight distance (PSD) is required on two-lane roads to allow vehicles to overtake safely. PSD applies to all two-lane roads in the ERA network (DC1 through DC7 single carriageway).

| Design Speed (km/h) | PSD Guide Value (m) |
|---------------------|---------------------|
| 120 | 800 |
| 100 | 670 |
| 85 | 560 |
| 70 | 480 |
| 60 | 400 |
| 50 | 340 |
| 40 | 270 |
| 30 | 210 |

**Source:** ERA GDM 2013, Table 7-6 (Verified from PDF). These are guide values -- not all sections of a two-lane road can provide PSD, but a reasonable proportion should. The proportion depends on traffic volume, terrain, and overtaking opportunities.

### M.2.6 ERA Intersection Sight Distance

Intersection sight distance (ISD) is required at all at-grade intersections to ensure drivers on the minor road can see and react to traffic on the major road. ERA Chapter 11 provides ISD requirements.

**Sight triangle approach (ERA Tables 11-3 to 11-5):**

For **yield-controlled** intersections:
| Major Road Design Speed (km/h) | ISD along major road (m) |
|-------------------------------|-------------------------|
| 120 | 280 |
| 100 | 235 |
| 85 | 200 |
| 70 | 165 |
| 60 | 140 |
| 50 | 115 |
| 40 | 95 |
| 30 | 70 |

For **stop-controlled** intersections:
| Major Road Design Speed (km/h) | ISD along major road (m) |
|-------------------------------|-------------------------|
| 120 | 360 |
| 100 | 295 |
| 85 | 250 |
| 70 | 210 |
| 60 | 175 |
| 50 | 145 |
| 40 | 115 |
| 30 | 90 |

**Source:** ERA GDM 2013, Chapter 11, Tables 11-3 to 11-5 (Verified from PDF). ISD is measured along the major road from the conflict point. The gap time depends on the type of control (yield: shorter gap needed, stop: longer gap for acceleration from rest).

### M.2.7 Comparison with Kenya and Uganda

| Parameter | ERA (Ethiopia) | RDM (Kenya) | MoWT (Uganda) |
|-----------|---------------|-------------|---------------|
| SSD at 100 km/h (desirable, paved) | 210 m | 200 m | ~185 m |
| SSD at 70 km/h (desirable, paved) | 120 m | 100 m | ~105 m |
| PSD at 100 km/h | 670 m | 575 m | ~680 m |
| Eye height | 1.05 m | 1.05 m | 1.07 m |
| Object height (SSD) | 0.2 m | 0.2 m | 0.15 m |
| Separate unpaved SSD table | Yes | Yes | No |

**Note:** ERA SSD values tend to be slightly longer than Kenya values at equivalent speeds. This is due to differences in assumed friction factors. Both ERA and Kenya provide separate desirable and minimum SSD; Uganda provides a range. All values are preliminary and should be verified against the respective source documents for detailed design.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (ERA Branch)

```
Step 1 (ERA): Determine required sight distance type(s)
  +-- SSD: required everywhere (minimum safety requirement)
  +-- PSD: required on two-lane roads (proportion of road with PSD)
  +-- ISD: required at all at-grade intersections
  +-- DSD: required at complex locations (interchanges, lane drops)
  \-- Multiple types may be required simultaneously

Step 2 (ERA): Look up values by design speed
  +-- Paved roads: use Table 7-2 (Table ES.2)
  +-- Unpaved roads: use Table 7-3 (Table ES.3) -- longer SSD values
  +-- Use desirable SSD for new construction
  +-- Minimum SSD acceptable for constrained upgrading with justification
  \-- PSD from Table 7-6 (Table ES.5) -- guide values

Step 3 (ERA): Check paved vs unpaved table
  +-- Paved friction assumed for sealed surfaces (AC, DBST, concrete)
  +-- Unpaved friction for gravel, laterite, or earth surfaces
  +-- If road is being upgraded from unpaved to paved, use paved table
  \-- If construction-stage traffic on unpaved, note reduced SSD

Step 4 (ERA): Verify available sight distance >= required
  +-- Crest curves: check K-value provides adequate SSD (see Skill #15)
  +-- Horizontal curves: check lateral clearance provides adequate SSD
  +-- Intersections: check sight triangle clear of obstructions
  \-- Record available vs required SSD at all critical points

Step 5 (ERA): If insufficient sight distance
  +-- Consider realignment (increase radius, reduce gradient)
  +-- Consider flattening crest curve (increase K-value)
  +-- Consider clearing lateral obstructions on horizontal curves
  +-- If none feasible, apply for Departure from Standards (Section 2.3)
  \-- Never reduce design speed without senior engineer approval
```

### M.3.2 Professional Judgment (ERA-Specific)

**Unpaved road sight distance is frequently the governing constraint in Ethiopia.** With approximately 80% of the road network unpaved, the longer SSD values from Table 7-3 will apply to many projects. At 70 km/h, unpaved SSD (135 m) is 12.5% longer than paved (120 m), requiring proportionally larger crest K-values.

**Night-time driving conditions on unlit roads are the norm.** Most Ethiopian roads outside major cities lack street lighting. Sag curve design should always use the headlight criterion (K from Table 9-3), not the comfort criterion, as headlight range will be the limiting factor.

**Animal-drawn carts and pedestrians share the carriageway on lower DC roads.** While not directly a sight distance parameter, the presence of slow-moving and non-motorised traffic on DC1-DC3 roads increases the importance of adequate SSD. The agent should flag when SSD is marginal on roads with known mixed traffic.

### M.3.3 Common Errors (ERA-Specific)

1. **Using Uganda sight distance parameters for Ethiopian design.** ERA uses h1=1.05m and h2=0.2m; Uganda uses h1=1.07m and h2=0.15m. The different object heights produce different K-values. ERA and Kenya are compatible; ERA and Uganda are not.
2. **Not distinguishing desirable from minimum SSD.** ERA provides both values. Desirable SSD should be used for new construction. Minimum SSD requires documented justification.
3. **Applying paved SSD tables to unpaved roads.** ERA Table 7-3 provides longer SSD values for unpaved surfaces. Using paved values on an unpaved road would underestimate the stopping distance required.
4. **Ignoring the grade adjustment.** SSD increases on downgrades (reduced friction effectiveness) and decreases on upgrades. Always check SSD on the steepest downgrade section.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| SSD criterion | Desirable (Table 7-2/7-3) | Not specified | ASSUMED: Desirable SSD used. Minimum SSD requires justification. | ERA Chapter 7 |
| PRT | 2.5 s | Not specified | ASSUMED: 2.5 s perception-reaction time | ERA Chapter 7 |
| Grade | 0% (level) | Not specified | ASSUMED: Level grade for SSD calculation. Check actual grade -- downgrade SSD is longer. | Conservative for upgrades, unconservative for downgrades |
| Surface type | Paved | Not specified | ASSUMED: Paved road friction for SSD calculation. If unpaved, use Table 7-3. | ERA Tables 7-2, 7-3 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Available SSD (paved) | Min SSD from Table 7-2 | -- | m | ERA Table 7-2 | Reject if below minimum SSD |
| Available SSD (unpaved) | Min SSD from Table 7-3 | -- | m | ERA Table 7-3 | Reject if below minimum SSD |
| Available SSD (desirable check) | Desirable SSD from Table 7-2/7-3 | -- | m | ERA Tables 7-2, 7-3 | Warn if below desirable |
| ISD at intersection | Per Tables 11-3 to 11-5 | -- | m | ERA Chapter 11 | Flag if below minimum for major road speed |

### M.5.2 Standards Compliance Checks

- **Check:** Available SSD >= minimum SSD (Table 7-2 paved or Table 7-3 unpaved) for the design speed and grade
- **Standard:** ERA GDM 2013, Tables 7-2, 7-3
- **Pass condition:** SSD >= minimum value for design speed
- **Fail action:** SENIOR REVIEW -- Available SSD [X]m is below minimum [Y]m at [speed] km/h. Requires realignment or Departure from Standards (Section 2.3).

- **Check:** ISD at intersections meets minimum from Chapter 11
- **Standard:** ERA GDM 2013, Chapter 11, Tables 11-3 to 11-5
- **Pass condition:** Sight triangle clear to required ISD distance along major road
- **Fail action:** SENIOR REVIEW -- ISD inadequate at intersection. Consider relocating intersection, reducing speed, or providing auxiliary measures (mirrors, signage).

### M.5.3 Departures / Relaxations Process

Same as other Ethiopia modules -- ERA formal departures process per Section 2.3. Submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Available SSD below minimum | Safety-critical deficiency | SENIOR REVIEW -- SSD [X]m below minimum [Y]m for [speed] km/h. Requires realignment, speed reduction, or Departure from Standards (Section 2.3). |
| SSD below desirable but above minimum | Reduced safety margin | NOTE -- SSD [X]m below desirable [Y]m but above minimum. Document justification for constrained design. |
| No PSD provision on two-lane road over 5 km | Overtaking safety concern | NOTE -- No passing sight distance available for >5 km. Consider passing opportunities (widened shoulders, passing lanes) or assess overtaking accident risk. |
| ISD inadequate at intersection | Collision risk at junction | SENIOR REVIEW -- ISD [X]m below required [Y]m at intersection with [speed] km/h major road. Consider geometric improvements or traffic control upgrade. |

---

## M.7 Worked Example -- Ethiopia

### Example: Sight Distance Check on a Crest Curve, Dire Dawa to Harar Road, DC5, Rolling Terrain

**Given:**
- Road: Dire Dawa to Harar (Route A10), Link Road (Class II)
- Design Class: DC5 (AADT 800, paved)
- Terrain: Rolling
- Design Speed: 70 km/h (from ERA Table 2-1, DC5 Rolling)
- Crest curve: grades +4% to -3%, A = 7%
- Crest curve K-value used: K = 20 (from ERA Table 9-1, 70 km/h, between K_min=17 and desirable=30)

**Solution:**

**Step 1 -- Determine required SSD:**
From Table ES.2 (ERA Table 7-2), at 70 km/h on paved road:
- Desirable SSD = 120 m
- Minimum SSD = 90 m

**Step 2 -- Calculate available SSD over the crest curve:**
The SSD provided by a crest curve is determined by the K-value:
For S < L (SSD less than curve length):
- Available SSD = sqrt(200 x K x (h1 + h2)) where h1 = 1.05 m, h2 = 0.2 m (ERA heights)
- Available SSD = sqrt(200 x 20 x (sqrt(1.05) + sqrt(0.2))^2)
- Using the simplified form: SSD = sqrt(200 x K x 1.25^2) ... approximation
- More directly: K = SSD^2 / (200 x (sqrt(h1) + sqrt(h2))^2)
- For K = 20: SSD = sqrt(200 x 20 x (1.025 + 0.447)^2) = sqrt(4000 x 2.167) = sqrt(8668) = **93 m**

Available SSD at K = 20 is approximately 93 m.

**Step 3 -- Compare with required:**
- Available SSD (93 m) > Minimum SSD (90 m) -> Marginally compliant
- Available SSD (93 m) < Desirable SSD (120 m) -> Below desirable

**Step 4 -- Check PSD provision (two-lane road):**
From Table ES.5 (ERA Table 7-6): PSD at 70 km/h = 480 m
The crest curve with K = 20 provides approximately 93 m SSD -- PSD is not available at this location. PSD must be provided on other sections of the road.

**Step 5 -- Recommendation:**
The K = 20 design barely meets minimum SSD. For a DC5 road, desirable K = 30 should be used if terrain allows. Increasing K to 30 would provide SSD of approximately 114 m, closer to the desirable 120 m.

**Result:**

| Parameter | Value |
|-----------|-------|
| Desirable SSD (70 km/h, paved) | 120 m |
| Minimum SSD (70 km/h, paved) | 90 m |
| Crest K-value used | 20 |
| Available SSD (approximate) | 93 m |
| Compliance | Above minimum, below desirable |
| PSD at location | Not available (requires 480 m) |
| Recommendation | Increase K to 30 (desirable) if feasible |

**Preliminary/screening level output.** Final sight distance analysis requires detailed survey data and design review.

---

## M.8 References

1. Ethiopian Roads Authority (ERA), *Geometric Design Manual - 2013*, Chapter 7 (Sight Distance), Tables 7-1 through 7-6.
2. Ethiopian Roads Authority (ERA), *Geometric Design Manual - 2013*, Chapter 11 (Intersections), Tables 11-3 through 11-5 (Intersection Sight Distance).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- SSD from ERA Tables 7-2/7-3, PSD from Table 7-6, DSD from Table 7-4, ISD from Tables 11-3 to 11-5 verified against ERA GDM 2013 PDF. ERA and Kenya share eye/object heights (1.05/0.2m); ERA SSD values slightly longer than Kenya at equivalent speeds. |
