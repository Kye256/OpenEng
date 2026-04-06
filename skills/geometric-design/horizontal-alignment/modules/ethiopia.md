# Horizontal Alignment -- Ethiopia Module

> **Parent Skill:** #14 Horizontal Alignment
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geometric Design Manual - 2013, Chapter 8
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geometric Design Manual | 2013 | Chapter 8 (Horizontal Alignment), Tables 2-6 to 2-17 (Geometric Parameters by DC) | Current -- mandatory for all ERA roads |

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) is the custodian of national road design standards. ERA manages the federal road network (trunk and link roads). Regional Roads Authorities manage regional roads (main access, collector, feeder). Woreda (district) administrations manage community roads. All road authorities use the ERA design manuals as the national standard. The manuals were developed with DFID/AFCAP/Crown Agents support and are based on AASHTO, FHWA, TRL, CSIR/SANRAL, and Ethiopian (TCDE) sources.

ERA's departure from standards process requires written approval submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3).

Cross-reference: See Skill #13 Ethiopia module for full institutional context, road classification (DC1-DC8), and design speed selection.

### M.1.3 Standard Philosophy

ERA GDM 2013 Chapter 8 provides the standard minimum radius formula R = V^2 / (127(e + f)) with tabulated results for three maximum superelevation rates: emax = 8% (DC5+ paved rural), emax = 6% (DC4 and below paved/unpaved), and emax = 4% (urban/peri-urban). The normal maximum superelevation rate for higher design classes (DC5 and above) is **8%** -- higher than both Kenya (6%) and Uganda (7%). This is a critical difference that directly affects minimum radii. The manual provides separate tables for paved and unpaved roads, reflecting the dual-surface nature of the Ethiopian network.

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Minimum Radii -- Paved Roads (ERA Table 8-1)

| Design Speed (km/h) | emax = 8% R_min (m) | emax = 6% R_min (m) | emax = 4% R_min (m) |
|---------------------|---------------------|---------------------|---------------------|
| 120 | 560 | 665 | 755 |
| 100 | 360 | 415 | 490 |
| 85 | 250 | 290 | 335 |
| 70 | 160 | 185 | 215 |
| 60 | 110 | 130 | 150 |
| 50 | 75 | 85 | 100 |
| 40 | 45 | 50 | 60 |
| 30 | 25 | 28 | 33 |
| 25 | 20 | 22 | 25 |
| 20 | 12 | 14 | 15 |

**Source:** ERA GDM 2013, Table 8-1 (Verified from PDF)

**Note:** emax = 8% applies to DC8, DC7, DC6, and DC5 (paved rural). emax = 6% applies to DC4 and below (paved). emax = 4% applies to urban/peri-urban areas for all DC classes. Selecting the wrong emax produces incorrect minimum radii.

### M.2.2 ERA Minimum Radii -- Unpaved Roads (ERA Table 8-2)

| Design Speed (km/h) | emax = 6% R_min (m) |
|---------------------|---------------------|
| 70 | 200 |
| 60 | 140 |
| 50 | 90 |
| 45 | 75 |
| 40 | 55 |
| 35 | 40 |
| 30 | 30 |
| 25 | 22 |
| 20 | 15 |

**Source:** ERA GDM 2013, Table 8-2 (Verified from PDF). Unpaved roads use emax = 6% with adjusted friction factors reflecting lower surface grip. Normal crossfall for unpaved roads is 6%.

### M.2.3 Superelevation Rate Selection

| Context | emax | Source |
|---------|------|--------|
| DC8-DC5 paved rural | 8% | ERA Tables 2-6 to 2-9 |
| DC4-DC1 paved | 6% | ERA Tables 2-10, 2-12, 2-14, 2-16 |
| DC4-DC1 unpaved | 6% | ERA Tables 2-11, 2-13, 2-15 |
| Urban/peri-urban (all DC) | 4% | ERA Tables 2-6 to 2-17, urban column |

**ERA emax = 8% for DC5+ is HIGHER than Kenya (6%) and HIGHER than Uganda (7%). This is a critical difference -- using Kenya or Uganda emax values will produce incorrect minimum radii for Ethiopian DC5+ roads.**

Normal crossfall values:
- Paved DC5+: 2.5%
- Paved DC4 and below: 3%
- Unpaved: 6%

ERA provides superelevation rate tables (Tables 8-5 and 8-6) for emax = 8% and emax = 4% respectively. For emax = 6% (lower DC classes), interpolation between the two tables or the standard formula R = V^2 / (127(e + f)) is used. Where R is large relative to R_min (approximately R > 5 x R_min), normal crossfall is maintained and no superelevation is required.

### M.2.4 Transition Curve Requirements (ERA Table 8-4)

Transition curves (clothoids) are required when the radius is below the threshold values in Table 8-4. The minimum transition curve length is based on the rate of change of centripetal acceleration.

| Design Speed (km/h) | Transition required if R less than (m) |
|---------------------|----------------------------------------|
| 120 | 1000 |
| 100 | 700 |
| 85 | 500 |
| 70 | 350 |
| 60 | 250 |
| 50 | 175 |
| 40 | 100 |
| 30 | 55 |

**Source:** ERA GDM 2013, Table 8-4 (Verified from PDF)

**Minimum transition curve length formula:**

```
L_s = 0.036 x V^3 / (R x C)
```

Where V = design speed (km/h), R = radius (m), C = rate of change of centripetal acceleration (typically 1.0-3.0 m/s^3, use C = 1.5 m/s^3 as default).

Absolute minimum transition length = 30 m for design speeds up to 60 km/h, increasing to 60 m for higher speeds.

### M.2.5 Curve Widening (ERA Table 8-3)

Additional carriageway width is required on curves to accommodate the swept path of the design vehicle. The widening depends on the curve radius and the design vehicle assigned to the DC class.

| Radius (m) | DV4 Widening (m) | DV3 Widening (m) | DV1 Widening (m) |
|------------|------------------|------------------|------------------|
| 20 | 2.8 | 2.2 | 0.8 |
| 30 | 2.0 | 1.5 | 0.5 |
| 50 | 1.3 | 1.0 | 0.3 |
| 75 | 0.9 | 0.7 | 0.2 |
| 100 | 0.7 | 0.5 | 0.2 |
| 150 | 0.5 | 0.4 | 0.1 |
| 200 | 0.4 | 0.3 | 0.1 |
| 300 | 0.3 | 0.2 | 0.0 |
| 500 | 0.2 | 0.1 | 0.0 |

**Source:** ERA GDM 2013, Table 8-3 (Verified from PDF). DV4 (truck + semi-trailer) is the design vehicle for DC8-DC5 and DC4. DV3 (single unit bus) is the design vehicle for DC3 and DC2. DV1 (4x4 utility) is the design vehicle for DC1. See Skill #18 Ethiopia module for full design vehicle dimensions.

Widening is applied to the inside of the curve. On two-lane roads, the full widening is applied to the inner lane. On multi-lane roads, widening is distributed across lanes.

### M.2.6 Superelevation Development

ERA specifies that superelevation is developed over a transition section comprising:
- **Tangent runout:** from normal crossfall to zero crossfall (crown removal)
- **Superelevation runoff:** from zero crossfall to full superelevation

The split is approximately **2/3 of the runoff on the tangent approach and 1/3 on the curve** (consistent with standard practice). The maximum rate of change of superelevation (relative gradient) controls the minimum runoff length:

| Design Speed (km/h) | Maximum Relative Gradient (%) |
|---------------------|------------------------------|
| 120 | 0.30 |
| 100 | 0.40 |
| 85 | 0.45 |
| 70 | 0.50 |
| 60 | 0.55 |
| 50 | 0.60 |
| 40 | 0.70 |
| 30 | 0.80 |
| 20 | 0.80 |

**Source:** ERA GDM 2013, Chapter 8

The minimum superelevation runoff length L_e is calculated as:

```
L_e = e x w / (2 x delta_max)
```

Where e = superelevation rate (decimal), w = carriageway width (m), delta_max = maximum relative gradient from the table above.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (ERA Branch)

```
Step 1 (ERA): Determine maximum superelevation from DC class
  +-- DC8-DC5 (paved, rural) -> emax = 8%
  +-- DC4-DC1 (paved) -> emax = 6%
  +-- DC4-DC1 (unpaved) -> emax = 6%
  +-- Any DC (urban/peri-urban) -> emax = 4%
  \-- Check ToR for project-specific requirements

Step 2 (ERA): Look up minimum radius for design speed and emax
  +-- Paved roads: Table 8-1 (Table EH.1) using design speed and selected emax
  +-- Unpaved roads: Table 8-2 (Table EH.2) using design speed and emax = 6%
  \-- Proposed radius must be >= R_min

Step 3 (ERA): Determine superelevation rate
  +-- If R > approximately 5 x R_min -> no superelevation (maintain normal crossfall)
  +-- If R_min <= R <= 5 x R_min -> interpolate from ERA Tables 8-5/8-6
  +-- If R = R_min -> apply full emax
  \-- Formula: e = V^2 / (127 x R) - f (solved for e)

Step 4 (ERA): Check transition curve requirement
  +-- If R < threshold from Table 8-4 -> transition curve required
  +-- Calculate L_s = 0.036 x V^3 / (R x C)
  +-- Check L_s >= absolute minimum (30-60 m)
  \-- If no transition required, use tangent-to-circular geometry

Step 5 (ERA): Check curve widening
  +-- Identify design vehicle for DC class (DV4 for DC4+, DV3 for DC2-3, DV1 for DC1)
  +-- Look up widening from Table 8-3 for proposed radius
  +-- Apply widening to inside of curve
  \-- If widening > 0.3 m, extend widening through transition curve
```

### M.3.2 Professional Judgment (ERA-Specific)

**The three-tier emax system (8%/6%/4%) is the most distinctive feature of ERA horizontal alignment.** Unlike Kenya (single 6% standard with exceptions) or Uganda (7% standard), ERA systematically varies emax with design class. This means that the same design speed on different DC classes will have different minimum radii.

**Unpaved road design is critical in Ethiopia.** A large proportion of the Ethiopian road network is unpaved. The ERA manual provides separate friction and minimum radius tables for unpaved roads, reflecting the significantly lower grip available on gravel and earth surfaces. Always check whether the project is paved or unpaved before looking up minimum radii.

**Compound curves should have a ratio R1/R2 not exceeding 2:1.** Where this cannot be achieved, a short tangent or transition should be inserted between the curves. Reverse curves require adequate separation to develop superelevation from one direction to the other.

### M.3.3 Common Errors (ERA-Specific)

1. **Using emax = 6% (Kenya value) or emax = 7% (Uganda value) for DC5+ roads.** ERA specifies emax = 8% for DC5 and above. Using a lower emax produces unnecessarily large minimum radii and may force expensive alignments.
2. **Applying paved-road minimum radii to unpaved roads.** ERA Table 8-2 has different (generally larger) minimum radii for unpaved roads at the same design speed due to lower friction. Always check the surface type.
3. **Confusing DC class with functional class for emax selection.** The emax depends on DC class (DC5+ = 8%, DC4 and below = 6%), not on functional class (Trunk/Link/etc.). A Trunk Road with AADT 800 is DC5 (emax = 8%), but a Trunk Road in an urban area uses emax = 4%.
4. **Not checking transition curve requirements.** ERA Table 8-4 defines mandatory transition curve thresholds. For design speeds of 70 km/h and above, most curves within normal design radius ranges will require transitions.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| emax (DC5+ rural) | 8% | Not specified, DC5+ rural context | ASSUMED: emax = 8% (ERA standard for DC5+ paved rural roads) | ERA Tables 2-6 to 2-9 |
| emax (DC4 and below) | 6% | Not specified, DC4 or lower | ASSUMED: emax = 6% (ERA standard for DC4 and below) | ERA Tables 2-10 to 2-16 |
| emax (urban) | 4% | Not specified, urban context | ASSUMED: emax = 4% (ERA standard for urban/peri-urban) | ERA Tables 2-6 to 2-17 |
| Normal crossfall (paved DC5+) | 2.5% | Not specified | ASSUMED: Normal crossfall 2.5% (paved DC5+) | ERA Tables 2-6 to 2-9 |
| Normal crossfall (paved DC4-) | 3.0% | Not specified | ASSUMED: Normal crossfall 3.0% (paved DC4 and below) | ERA Tables 2-10 to 2-16 |
| Normal crossfall (unpaved) | 6.0% | Not specified, unpaved | ASSUMED: Normal crossfall 6.0% (unpaved road) | ERA Tables 2-11, 2-13, 2-15 |
| Transition method | Clothoid | Not specified | ASSUMED: Clothoid spiral transition curves | ERA Chapter 8 standard practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Superelevation (DC5+ rural) | 0 | 8 | % | ERA Tables 2-6 to 2-9 | Reject if > 8% (absolute maximum for paved rural) |
| Superelevation (DC4- rural) | 0 | 6 | % | ERA Tables 2-10 to 2-16 | Reject if > 6% |
| Superelevation (urban) | 0 | 4 | % | ERA Tables 2-6 to 2-17 | Reject if > 4% (urban limit) |
| Curve radius (paved) | Per Table 8-1 | -- | m | ERA Table 8-1 | Flag if below R_min for design speed and emax |
| Curve radius (unpaved) | Per Table 8-2 | -- | m | ERA Table 8-2 | Flag if below R_min for design speed and emax |
| Transition length | 30 | -- | m | ERA Chapter 8 | Reject if < absolute minimum |

### M.5.2 Standards Compliance Checks

- **Check:** Curve radius >= minimum from Table 8-1 (paved) or Table 8-2 (unpaved) for the selected design speed and emax
- **Standard:** ERA GDM 2013, Tables 8-1, 8-2
- **Pass condition:** R >= tabulated minimum radius
- **Fail action:** SENIOR REVIEW -- Radius below minimum for design speed. Requires Departure from Standards approval per Section 2.3.

- **Check:** Superelevation does not exceed emax for the DC class and context
- **Standard:** ERA GDM 2013, Tables 2-6 to 2-17
- **Pass condition:** e <= emax for the applicable context (8%/6%/4%)
- **Fail action:** SENIOR REVIEW -- Superelevation exceeds emax. Requires ERA approval.

### M.5.3 Departures / Relaxations Process

ERA requires written approval for departures from standards (Section 2.3). The designer submits to the respective regional directorate, which evaluates and forwards to the Quality Assurance, Road Inspection and Safety Directorate for final approval. The submission must include:
1. The number, name, and description of the road
2. The facet of design for which a Departure from Standards is desired
3. A description of the standard, including normal value, and value of the Departure
4. The reason for the Departure from Standards
5. Any mitigation to be applied in the interests of safety

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Radius below R_min for design speed | Safety concern -- design speed may not be achievable | SENIOR REVIEW -- Radius [X]m is below the minimum [Y]m for [speed] km/h with emax [Z]%. Requires Departure from Standards (Section 2.3). |
| Superelevation exceeding emax | Exceeds ERA standard for DC class | SENIOR REVIEW -- Superelevation of [X]% exceeds the [emax]% maximum for [DC class]. Requires formal Departure from Standards. |
| Compound curves without adequate tangent | Driver comfort and safety concern | SENIOR REVIEW -- Compound curves with R1/R2 ratio exceeding 2:1. Insert short tangent or transition between curves. |
| Reverse curves without adequate separation | Superelevation development concern | SENIOR REVIEW -- Reverse curves require adequate separation to transition superelevation from [+e]% to [-e]%. Minimum separation = 2 x superelevation runoff length. |

---

## M.7 Worked Example -- Ethiopia

### Example: Horizontal Curve on the Adama to Asella Road (Route C36), DC5, Rolling Terrain

**Given:**
- Road: Route C36 (Adama to Asella), Main Access Road (Class III)
- Design Class: DC5 (AADT 500, mid-life estimate)
- Terrain: Rolling
- Design Speed: 70 km/h (from ERA Table 2-1, DC5 Rolling)
- Surface: Paved
- emax: 8% (DC5 paved rural, from ERA Tables 2-6 to 2-9)
- Design Vehicle: DV4 (truck + semi-trailer, standard for DC5)
- Proposed curve radius: R = 200 m

**Solution:**

**Step 1 -- Check minimum radius:**
From Table EH.1 (ERA Table 8-1): At 70 km/h with emax = 8%, R_min = 160 m
Proposed 200 m > 160 m -> **Compliant**

**Step 2 -- Calculate superelevation:**
Using R = V^2 / (127 x (e + f)):
- f at 70 km/h = 0.15 (from ERA side friction table)
- 200 = 70^2 / (127 x (e + 0.15))
- 200 = 4900 / (127 x (e + 0.15))
- 127 x (e + 0.15) = 4900 / 200 = 24.5
- e + 0.15 = 24.5 / 127 = 0.193
- e = 0.193 - 0.15 = 0.043 -> **e = 4.3%**

This is within emax = 8%, so the design is adequate. The superelevation of 4.3% provides a comfortable margin below the maximum.

**Step 3 -- Check transition curve requirement:**
From Table EH.4 (ERA Table 8-4): At 70 km/h, transition required if R < 350 m.
R = 200 m < 350 m -> **Transition curve required**

Minimum transition length:
L_s = 0.036 x 70^3 / (200 x 1.5) = 0.036 x 343,000 / 300 = 41.2 m
Use L_s = 45 m (round up, above 30 m minimum).

**Step 4 -- Check curve widening:**
From Table EH.5 (ERA Table 8-3): At R = 200 m with DV4, widening = 0.4 m.
Apply 0.4 m widening to inside of curve, tapered through transition.

**Step 5 -- Check superelevation development:**
Maximum relative gradient at 70 km/h = 0.50%
Carriageway width = 7.0 m (DC5 paved)
L_e = 0.043 x 7.0 / (2 x 0.005) = 30.1 m
Transition length (45 m) > runoff length (30.1 m) -> Adequate.

**Result:**

| Parameter | Value |
|-----------|-------|
| Minimum radius (70 km/h, emax 8%) | 160 m |
| Proposed radius | 200 m |
| Compliance | Above minimum |
| Required superelevation | 4.3% |
| Transition curve | Required (R < 350 m), L_s = 45 m |
| Curve widening (DV4) | 0.4 m |
| Superelevation runoff length | 30.1 m |

**Preliminary/screening level output.** Final design requires detailed survey, geotechnical assessment, and independent design review.

---

## M.8 References

1. Ethiopian Roads Authority (ERA), *Geometric Design Manual - 2013*, Chapter 8 (Horizontal Alignment), Tables 8-1 through 8-6.
2. Ethiopian Roads Authority (ERA), *Geometric Design Manual - 2013*, Tables 2-6 through 2-17 (Geometric Design Standards by Design Class).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- Tables from ERA GDM 2013 Chapter 8. Key difference from Kenya/Uganda: emax = 8% for DC5+ (vs Kenya 6%, Uganda 7%). Three-tier emax system (8%/6%/4%) is ERA-specific. |
