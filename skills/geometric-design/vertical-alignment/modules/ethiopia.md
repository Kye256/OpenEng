# Vertical Alignment -- Ethiopia Module

> **Parent Skill:** #15 Vertical Alignment
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geometric Design Manual - 2013, Chapter 9
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geometric Design Manual | 2013 | Chapter 9 (Vertical Alignment), Tables 2-6 to 2-17 (Gradient Limits by DC) | Current -- mandatory for all ERA roads |

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) is the custodian of national road design standards. ERA manages the federal road network (trunk and link roads). Regional Roads Authorities manage regional roads. All road authorities use the ERA design manuals as the national standard.

ERA's departure from standards process requires written approval submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3).

Cross-reference: See Skill #13 Ethiopia module for full institutional context and design class selection.

### M.1.3 Standard Philosophy

ERA GDM 2013 Chapter 9 provides K-values for crest curves based on stopping sight distance (with eye height 1.05 m and object height 0.2 m) and for sag curves based on headlight illumination distance. The vertical curve length formula is L = K x A, where A is the algebraic grade difference (%). Gradient limits are provided by design class (DC1-DC8) and terrain, with both desirable and absolute maximum values. The gradient table also includes a "Basic Access" category below DC1 -- this has no equivalent in Uganda or Kenya. ERA uses the same eye/object height assumptions as Kenya (1.05/0.2m) but different from Uganda (1.07/0.15m).

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Crest K-Values -- Paved Roads (ERA Table 9-1)

| Design Speed (km/h) | SSD (m) | K_min (crest) | Desirable K (crest) |
|---------------------|---------|---------------|---------------------|
| 120 | 220 | 100 | 185 |
| 100 | 160 | 50 | 100 |
| 85 | 130 | 30 | 55 |
| 70 | 90 | 17 | 30 |
| 60 | 70 | 10 | 17 |
| 50 | 55 | 7 | 10 |
| 40 | 40 | 4 | 7 |
| 30 | 30 | 2 | 4 |
| 25 | 25 | 1.5 | 3 |
| 20 | 20 | 1 | 2 |

**Source:** ERA GDM 2013, Table 9-1 (Verified from PDF). K_min provides minimum stopping sight distance. Desirable K provides additional safety margin.

### M.2.2 ERA Crest K-Values -- Unpaved Roads (ERA Table 9-2)

| Design Speed (km/h) | SSD (m) | K_min (crest) | Desirable K (crest) |
|---------------------|---------|---------------|---------------------|
| 70 | 100 | 20 | 35 |
| 60 | 80 | 12 | 20 |
| 50 | 65 | 8 | 12 |
| 45 | 55 | 6 | 10 |
| 40 | 45 | 5 | 8 |
| 35 | 40 | 4 | 6 |
| 30 | 35 | 3 | 5 |
| 25 | 28 | 2 | 3 |
| 20 | 20 | 1 | 2 |

**Source:** ERA GDM 2013, Table 9-2 (Verified from PDF). Unpaved road SSD values reflect lower friction (longer braking distances), producing higher K-values than paved roads at the same design speed.

### M.2.3 ERA Sag K-Values (ERA Table 9-3)

| Design Speed (km/h) | K_min (sag) | Desirable K (sag) |
|---------------------|-------------|-------------------|
| 120 | 45 | 55 |
| 100 | 30 | 40 |
| 85 | 22 | 30 |
| 70 | 15 | 20 |
| 60 | 11 | 15 |
| 50 | 8 | 11 |
| 40 | 5 | 8 |
| 30 | 3 | 5 |
| 25 | 2 | 3.5 |
| 20 | 1.5 | 2.5 |

**Source:** ERA GDM 2013, Table 9-3 (Verified from PDF). Sag curve K-values are based on headlight sight distance criterion (assuming 0.6 m headlight height and 1-degree upward beam angle). This governs for night driving on unlit roads, which is the norm for most Ethiopian roads.

### M.2.4 Maximum Gradients by DC and Terrain (ERA Tables 2-6 to 2-17)

| DC | Desirable (Flat) | Desirable (Mtn) | Absolute (Mtn) | Absolute (Esc) |
|----|-----------------|-----------------|-----------------|----------------|
| DC8 | 3% | 6% | 8% | 8% |
| DC7 | 3% | 7% | 9% | 9% |
| DC6 | 3% | 7% | 9% | 9% |
| DC5 | 4% | 8% | 10% | 10% |
| DC4 paved | 4% | 8% | 10% | 10% |
| DC3 paved | 6% | 10% | 12% | 12% |
| DC2 paved | 6% | 10% | 12% | 12% |
| DC1 | 4% | 6% | 12% | 12% |
| Basic Access | -- | -- | 14% | 16% |

**Source:** ERA GDM 2013, Tables 2-6 to 2-17 (Verified from PDF)

**Gradients >12% must not exceed 200m and require relief gradients (<6% for minimum 200m).**

**Note on Basic Access:** The Basic Access category (ERA Table 2-17) covers roads below DC1, typically with AADT < 10 or basic vehicle access only. The 14% gradient applies for all vehicles; 16% applies where only cars and pickups are expected. This category has no equivalent in Uganda MoWT or Kenya RDM.

**Key differences from Kenya:**
- ERA provides gradients by individual DC class (8 classes + Basic Access); Kenya provides a single table by terrain applicable to all design standards (DR1-DR7).
- ERA DC3/DC2 allow 12% absolute in mountainous/escarpment terrain; Kenya absolute maximum is 8% rural mountainous, 9% escarpment.
- ERA includes Basic Access (14%/16%); Kenya has no equivalent category.

### M.2.5 Climbing Lane Warrants (ERA Table 9-5)

Climbing lanes should be considered when:
- The gradient reduces truck speeds by 15 km/h or more below the design speed
- The traffic volume warrants the investment (typically AADT > 1000 with > 10% heavy vehicles)

| Gradient (%) | Maximum Length Before 15 km/h Speed Reduction (m) |
|-------------|---------------------------------------------------|
| 4 | 800 |
| 5 | 500 |
| 6 | 350 |
| 7 | 250 |
| 8 | 200 |
| 10 | 150 |
| 12 | 100 |

**Source:** ERA GDM 2013, Table 9-5 (Verified from PDF). Based on 120 kg/kW truck performance (typical for loaded trucks on Ethiopian roads).

Design details for climbing lanes:
- Entrance taper: 100 m minimum
- Exit merge taper: 200 m minimum
- Lane width: same as through-lane width
- Extend climbing lane to the crest and 200 m beyond (minimum)

### M.2.6 Vertical Clearances (ERA Table 9-6)

| Structure Type | Minimum Clearance (m) |
|---------------|----------------------|
| Overpass (standard) | 5.5 |
| Overpass (pedestrian bridge) | 5.5 |
| Sign gantry | 5.5 |
| Overhead utility crossing | 6.0 |
| Railway overbridge | 5.5 |

**Source:** ERA GDM 2013, Table 9-6 (Verified from PDF). Clearances measured from the highest point of the carriageway surface (including any superelevation or overlay provision).

**Additional provision:** An additional 0.1-0.15 m is recommended to allow for future resurfacing overlays.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (ERA Branch)

```
Step 1 (ERA): Select maximum gradient from DC class and terrain
  +-- Look up DC row in gradient table (M.2.4)
  +-- For flat terrain, use Desirable (Flat) value
  +-- For rolling terrain, interpolate between Flat and Mountainous desirable
  +-- For mountainous terrain, check Desirable (Mtn) first, Absolute (Mtn) as limit
  +-- For escarpment, use Absolute (Esc) as limit
  \-- If Basic Access, use 14% (all vehicles) or 16% (cars/pickups only)

Step 2 (ERA): If gradient exceeds desirable, check absolute limit
  +-- Desirable gradient: preferred for new construction
  +-- Absolute gradient: permitted in constrained terrain with justification
  +-- If gradient > absolute: Departure from Standards required (Section 2.3)
  \-- Gradients > 12%: must not exceed 200m, require relief gradient

Step 3 (ERA): Select K-values for design speed
  +-- Crest curves (paved): Table 9-1 (Table EV.1)
  +-- Crest curves (unpaved): Table 9-2 (Table EV.2)
  +-- Sag curves: Table 9-3 (Table EV.3)
  +-- Use desirable K unless terrain constraints documented
  \-- Minimum K is the absolute lower bound

Step 4 (ERA): Calculate vertical curve length
  +-- L = K x A (where A = algebraic difference in gradients, %)
  +-- Check L >= minimum curve length (general minimum: 0.6 x V in km/h = L_min in m)
  +-- For appearance: L >= 2 x V (desirable, for driver comfort at sag curves)
  \-- Round up to nearest 5 m

Step 5 (ERA): Check climbing lane warrant
  +-- Identify sustained upgrades exceeding thresholds in Table 9-5
  +-- If gradient length exceeds maximum for given gradient percentage, consider climbing lane
  +-- Check traffic volume justification (AADT and heavy vehicle percentage)
  \-- If warranted but space constrained, escalate
```

### M.3.2 Professional Judgment (ERA-Specific)

**The gradient table structure differs fundamentally from Kenya.** ERA provides gradients per individual DC class with separate desirable and absolute values, giving fine-grained control. Kenya provides a single terrain-based table for all design standards. This means ERA allows steeper gradients for lower DC classes (DC3/DC2 up to 12%) than Kenya would for equivalent roads.

**Basic Access roads are a common practical requirement in Ethiopia.** Many rural communities are served only by Basic Access standard roads. The 14%/16% gradient limits are significantly steeper than any other country standard in the OpenEng library. Designs at these gradients require careful attention to drainage, erosion, and surface stability.

**Relief gradient requirements for gradients >12% are safety-critical.** Long sustained gradients above 12% cause severe overheating of brakes, particularly for loaded trucks descending. The 200m maximum length and 6% relief gradient for 200m minimum are mandatory, not advisory.

### M.3.3 Common Errors (ERA-Specific)

1. **Applying Kenya gradient limits to Ethiopian roads.** Kenya's absolute maximum for rural mountainous is 8%; ERA allows up to 12% for DC3/DC2. Using Kenya values would over-constrain Ethiopian designs, especially for lower DC classes.
2. **Using paved K-values for unpaved roads.** ERA Table 9-2 provides higher K-values for unpaved roads because SSD is longer due to lower friction. Always check the surface type.
3. **Forgetting the 200m maximum length for gradients >12%.** This is a hard constraint that must be checked whenever gradients exceed 12%.
4. **Ignoring the Basic Access category.** DC1 is not the lowest standard -- Basic Access (Table 2-17) exists below it. If AADT < 10, Basic Access parameters may be appropriate.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| K-value criterion | Desirable K (not minimum) | Not specified | ASSUMED: Desirable K-value used for design. Minimum K requires justification. | ERA Tables 9-1 to 9-3 |
| Gradient type | Desirable | Not specified | ASSUMED: Desirable maximum gradient used (not absolute) | ERA Tables 2-6 to 2-17 |
| Minimum gradient | 0.5% | Kerbed/lined drainage, not specified | ASSUMED: 0.5% minimum gradient for drainage | ERA Section 9 standard practice |
| Truck performance | 120 kg/kW | Not specified | ASSUMED: 120 kg/kW truck mass/power ratio for climbing lane assessment | ERA Table 9-5 basis |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Gradient (DC8, flat) | 0.5 | 3 | % | ERA Table 2-6 | Warn if > 3% desirable |
| Gradient (DC5, mountainous) | 0.5 | 10 | % | ERA Table 2-9 | Warn if > 8% desirable; reject if > 10% absolute |
| Gradient (DC3, escarpment) | 0.5 | 12 | % | ERA Table 2-14 | Warn if > 10% desirable; reject if > 12% absolute |
| Gradient (Basic Access) | 0.5 | 16 | % | ERA Table 2-17 | Reject if > 14% (all vehicles) or > 16% (cars only) |
| Gradient length (>12%) | -- | 200 | m | ERA Tables 2-6 to 2-17 | Reject if > 200m at gradients above 12% |
| K-value (crest, paved) | Per Table 9-1 | -- | -- | ERA Table 9-1 | Reject if < K_min |
| K-value (crest, unpaved) | Per Table 9-2 | -- | -- | ERA Table 9-2 | Reject if < K_min |
| K-value (sag) | Per Table 9-3 | -- | -- | ERA Table 9-3 | Reject if < K_min |

### M.5.2 Standards Compliance Checks

- **Check:** Gradient does not exceed absolute maximum for DC class and terrain
- **Standard:** ERA GDM 2013, Tables 2-6 to 2-17
- **Pass condition:** g <= absolute maximum for DC/terrain combination
- **Fail action:** SENIOR REVIEW -- Gradient exceeds absolute maximum. Requires Departure from Standards per Section 2.3.

- **Check:** Gradient >12% does not exceed 200m without relief gradient
- **Standard:** ERA GDM 2013, gradient notes
- **Pass condition:** Length at >12% <= 200m AND followed by relief gradient <6% for minimum 200m
- **Fail action:** SENIOR REVIEW -- Extended steep gradient without relief. Safety-critical for brake overheating.

### M.5.3 Departures / Relaxations Process

Same as Skill #14 Ethiopia module -- ERA formal departures process per Section 2.3. Submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Gradient exceeds desirable maximum | Quality of service concern | SENIOR REVIEW -- Gradient [X]% exceeds desirable maximum [Y]% for DC[N] [terrain] terrain. Consider alternative alignment. |
| Gradient exceeds absolute maximum | Safety concern | SENIOR REVIEW -- Gradient [X]% exceeds absolute maximum [Y]% for DC[N]. Requires Departure from Standards (Section 2.3). |
| Gradient >12% sustained >200m | Brake overheating risk | SENIOR REVIEW -- Gradient [X]% over [L]m exceeds 200m maximum. Provide relief gradient (<6% for minimum 200m). |
| Climbing lane warranted but constrained | Heavy vehicle performance | SENIOR REVIEW -- Climbing lane warranted per Table 9-5 but right-of-way or terrain constraints prevent construction. Consider reduced gradient or alternative alignment. |
| Sag curve with drainage issues | Water ponding at sag low point | NOTE -- Sag curve low point requires adequate drainage provision. Consider longitudinal drain or extended curve to achieve minimum 0.5% grade at sag. |

---

## M.7 Worked Example -- Ethiopia

### Example: Crest Curve on the Jimma to Mizan Teferi Road, DC4 Paved, Mountainous Terrain

**Given:**
- Road: Jimma to Mizan Teferi road (regional link road)
- Design Class: DC4 (AADT 200, paved)
- Terrain: Mountainous
- Design Speed: 50 km/h (from ERA Table 2-1, DC4 paved Mountainous)
- Grades: +6% rising to crest, then -4% falling
- A = |+6 - (-4)| = 10%

**Solution:**

**Step 1 -- Check gradient compliance:**
From gradient table (M.2.4): DC4 paved, mountainous terrain
- Desirable maximum: 8%
- Absolute maximum: 10%
+6% < 8% desirable -> Compliant
-4% < 8% desirable -> Compliant

**Step 2 -- K-value for crest curve (paved):**
From Table EV.1 (ERA Table 9-1): At 50 km/h:
- K_min = 7
- Desirable K = 10
Use desirable K = 10.

**Step 3 -- Calculate curve length:**
L = K x A = 10 x 10 = 100 m

**Step 4 -- Check minimum curve length:**
Minimum L = 0.6 x V = 0.6 x 50 = 30 m
Required L = 100 m > 30 m -> Adequate

**Step 5 -- Check climbing lane warrant (for the +6% upgrade):**
From Table EV.5 (ERA Table 9-5): At 6% gradient, speed reduction occurs after 350 m.
If the +6% grade section is longer than 350 m and AADT > 1000 with significant heavy vehicles, a climbing lane would be warranted. At DC4 (AADT 200), traffic volume is below the typical warrant threshold.

**Result:**

| Parameter | Value |
|-----------|-------|
| Grade difference A | 10% |
| K-value (desirable, paved, 50 km/h) | 10 |
| Required curve length | 100 m |
| Minimum curve length | 30 m |
| Gradient compliance (both grades) | Within desirable maximum (8%) |
| Absolute maximum gradient (DC4 mountainous) | 10% |
| Climbing lane warrant | Not warranted at AADT 200 |

**Preliminary/screening level output.** Final design requires detailed survey, geotechnical assessment, and independent design review.

---

## M.8 References

1. Ethiopian Roads Authority (ERA), *Geometric Design Manual - 2013*, Chapter 9 (Vertical Alignment), Tables 9-1 through 9-6.
2. Ethiopian Roads Authority (ERA), *Geometric Design Manual - 2013*, Tables 2-6 through 2-17 (Maximum Gradients by Design Class and Terrain).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- K-values from ERA Tables 9-1 to 9-3, gradients from Tables 2-6 to 2-17 verified against ERA GDM 2013 PDF. Key difference: gradient table by individual DC class (not terrain-only like Kenya), Basic Access 14%/16%, gradients >12% max 200m with relief. |
