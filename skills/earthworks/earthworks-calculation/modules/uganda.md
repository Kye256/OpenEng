# Earthworks Calculation -- Uganda Module

> **Parent Skill:** #26 Earthworks Calculation
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 1 (2010), Section 7 (Cross-Sections)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 1 | 2010 | Section 7 (Cross-Sections) for geometry context | Current |
| Uganda MoWT Road Design Manual Vol. 3 Part I | 2010 | Chapter 5 (Material specifications) for shrinkage context | Current |

### M.1.2 Institutional Context

MoWT Road Design Manual is the national standard for all roads in Uganda. UNRA projects use MoWT standards as the baseline. There is no dedicated MoWT earthworks volume -- earthworks calculation uses universal engineering methods (average end area, prismoidal formula) applied to cross-section geometry defined by MoWT Vol. 1 Section 7.

### M.1.3 Standard Philosophy

MoWT provides cross-section geometry (formation widths, side slopes, road reserve) by design class in Vol. 1 Section 7. The earthworks volume calculation methods are universal -- the same formulas apply regardless of jurisdiction. The Uganda-specific aspects are: (a) typical side slopes for Uganda soil types, (b) shrinkage factors for common Uganda soils (laterite, black cotton, sandy soils), and (c) terrain context affecting typical earthworks volumes.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UE.1: Typical Side Slopes for Uganda Soils**

| Material | Cut Slope (V:H) | Fill Slope (V:H) | Notes |
|----------|-----------------|-------------------|-------|
| Laterite (murram) | 1:1 to 1:1.5 | 1:1.5 to 1:2 | Most common road material in Uganda |
| Black cotton soil | 1:2 to 1:3 | Not recommended for fill | High swelling potential -- see Skill #28 |
| Sandy soil | 1:1.5 to 1:2 | 1:1.5 to 1:2 | May require erosion protection |
| Decomposed rock | 1:0.5 to 1:1 | 1:1.5 | Generally stable |
| Soft rock | 1:0.25 to 1:0.5 | 1:1.5 | Blasting may be needed |
| Hard rock | 1:0.1 (near-vertical) | Not used as fill (oversize) | Requires crushing for fill use |

**Source:** Based on MoWT Vol. 1 Section 7 typical cross-sections and common Uganda engineering practice.

**Table UE.2: Typical Shrinkage Factors for Uganda Soils**

| Soil Type | Shrinkage Factor | Typical CBR Range | Notes |
|-----------|-----------------|-------------------|-------|
| Laterite (good quality murram) | 1.15 - 1.25 | 15-60% | Most common fill material; factor depends on laterite quality |
| Laterite (poor quality) | 1.20 - 1.30 | 8-15% | Higher shrinkage due to more fines |
| Black cotton soil | 1.25 - 1.35 | 2-5% | Generally UNSUITABLE for fill -- see Skill #28 |
| Sandy soil | 1.05 - 1.15 | 5-20% | Low shrinkage; may lack fines for compaction |
| Decomposed rock (weathered) | 1.10 - 1.20 | 20-80% | Good fill material when available |
| General mixed soils | 1.15 - 1.25 | Variable | Default range for Uganda conditions |

**Table UE.3: Typical Bulking Factors for Uganda Soils**

| Soil Type | Bulking Factor | Notes |
|-----------|---------------|-------|
| Laterite | 1.20 - 1.30 | Standard range for haulage estimation |
| Sandy soil | 1.10 - 1.20 | Low bulking |
| Clay soils | 1.25 - 1.40 | High bulking due to clay structure |
| Rock (blasted) | 1.40 - 1.60 | Significant bulking |

**Typical Uganda Cross-Section Parameters (from Skill #17):**
- Formation width: 9.0-10.0m (Class I-II paved), 7.0-8.0m (Class III), 6.0m (Class IV gravel)
- Cut slopes: Depend on material (Table UE.1)
- Fill slopes: Typically 1V:1.5H to 1V:2H
- Road reserve: 30-60m depending on road class

### M.2.2 Country-Specific Formulas

No Uganda-specific formulas. Earthworks volume calculations use the universal average end area and prismoidal methods (see SKILL.md Section 1.2).

### M.2.3 Classification System

Uganda does not have a specific earthworks material classification system equivalent to SHW Series 600. Material suitability is assessed using MoWT Vol. 3 Part I Table 5.1 strength classes (G80, G60, G45, G30, G15) -- see Skill #28 (Material Suitability) for details.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 1 (Uganda): Select shrinkage factor
  +-- Identify soil type from Skill #8 (Soil Classification)
  +-- Look up shrinkage factor from Table UE.2
  +-- If soil type unknown --> Use 1.20 (mid-range for Uganda conditions)
  +-- Flag assumed value

Step 6 (Uganda): Apply Uganda-specific shrinkage
  +-- If laterite fill --> Use 1.15-1.25
  +-- If mixed materials --> Use 1.20 (default)
  +-- If black cotton soil is present --> Flag unsuitable (Skill #28)
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Uganda's terrain creates significant earthworks challenges.** Many road projects traverse rolling to mountainous terrain, particularly in western Uganda (Albertine Rift), southwestern Uganda (Kigezi highlands), and eastern Uganda (Mt. Elgon region). Earthworks volumes on these projects can be very large, making accurate volume estimation critical for cost control.

**Laterite (murram) is the dominant road construction material.** It is widely available across most of Uganda and is generally suitable for fill and sub-base layers. Quality varies significantly -- laterite from different borrow pits can have CBR values ranging from 8% to 60%. Shrinkage factors should be adjusted for the specific laterite quality.

**Black cotton soil requires special treatment.** Found in eastern Uganda (Teso, Karamoja) and parts of the Lake Victoria basin. Black cotton soil is generally unsuitable for fill due to high swelling potential (PI often > 35, linear shrinkage > 8). When black cotton soil is encountered in cut, it should be spoiled and replaced with suitable material -- this increases both cut and fill quantities significantly.

**Seasonal moisture conditions affect earthworks.** Uganda has two rainy seasons (March-May, September-November). Earthworks construction during rainy seasons is difficult, and moisture-sensitive soils (especially black cotton) may have very different properties between dry and wet seasons. Shrinkage factors at the higher end of the range should be used if construction timing is uncertain.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using a single shrinkage factor for an entire alignment.** Uganda projects often traverse multiple soil types. Different sections may require different shrinkage factors.
2. **Not accounting for black cotton soil removal and replacement.** When black cotton soil is encountered, the cut volume increases (removal) and additional fill from borrow is needed (replacement). This double impact is often underestimated.
3. **Underestimating earthworks in mountainous terrain.** Western and southwestern Uganda projects frequently have very deep cuts and high fills. Cross-sections at 25m intervals may not capture the full extent of earthworks in these areas -- consider 20m intervals.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Shrinkage factor (laterite) | 1.20 | Laterite fill, no test data | ASSUMED: Shrinkage 1.20 for laterite fill. Verify with geotechnical data. | Mid-range for Uganda laterite |
| Shrinkage factor (general) | 1.20 | Soil type unknown | ASSUMED: Shrinkage 1.20 (Uganda general). Verify with Skill #8 soil data. | Conservative mid-range |
| Cut slope (laterite) | 1V:1H | Material not specified | ASSUMED: Cut slope 1:1 (laterite). Verify material type. | Common for laterite cuts |
| Fill slope | 1V:1.5H | Material not specified | ASSUMED: Fill slope 1:1.5. Verify material and fill height. | Standard Uganda practice |
| Cross-section interval | 25 m | Not specified | No flag (standard interval) | Standard for detailed design in Uganda |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Shrinkage factor (laterite) | 1.10 | 1.30 | -- | Engineering practice | Warn if outside range |
| Shrinkage factor (black cotton) | 1.20 | 1.40 | -- | Engineering practice | Warn if used as fill at all |
| Cut slope (laterite) | 1:0.75 | 1:2 | V:H | MoWT Vol. 1 S7 | Warn if steeper than 1:0.75 |
| Fill height | 0 | 15 | m | Engineering practice | Warn if > 10m (stability concern) |

### M.5.2 Standards Compliance Checks

- **Check:** Cross-section dimensions match MoWT design class
- **Standard:** MoWT Vol. 1, Section 7
- **Pass condition:** Formation width, side slopes consistent with Skill #17 output
- **Fail action:** NOTE -- Cross-section dimensions do not match MoWT design class [X]. Verify inputs.

### M.5.3 Departures / Relaxations Process

No formal departures process for earthworks calculations. Methods are universal. Shrinkage factors should be verified against geotechnical test data -- assumed values are estimates only.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Black cotton soil in cut | Unsuitable material -- disposal and replacement needed | SENIOR REVIEW -- Black cotton soil encountered at stations [X-Y]. Material unsuitable for fill. Additional borrow required. Assess with Skill #28. |
| Deep cut in laterite (> 8m) | Slope stability concern | SENIOR REVIEW -- Laterite cut depth [X]m at station [Y]. Check slope stability; consider benching at 5m intervals. |
| Shrinkage factor not from test data | Volume estimate uncertainty | NOTE -- Shrinkage factor [X] assumed for [soil type]. Request lab compaction test data for verification. |
| Mountainous terrain with >50,000 m3 total earthworks | Major earthworks project | NOTE -- Total earthworks volume [X] m3. Consider detailed geotechnical investigation for shrinkage factors and slope stability. |

---

## M.7 Worked Example -- Uganda

### Example: Three Cross-Sections on Class II Road, Rolling Terrain

**Source:** Typical Uganda calculation using MoWT cross-section geometry.

**Given:**
- Road class: Class II Paved (trunk road)
- Terrain: Rolling (western Uganda)
- Soil type: Laterite (murram)
- Shrinkage factor: 1.20 (typical for Uganda laterite)
- Cross-section spacing: 25 m
- Three consecutive cross-sections:

| Station | Chainage | Cut Area (m2) | Fill Area (m2) |
|---------|----------|---------------|----------------|
| 1 | 0+000 | 12.5 | 3.2 |
| 2 | 0+025 | 8.3 | 6.1 |
| 3 | 0+050 | 2.1 | 15.4 |

**Solution:**

**Step 1 -- Calculate cut volumes (average end area):**

Segment 1-2 (chainage 0+000 to 0+025):
```
V_cut = (12.5 + 8.3) / 2 x 25 = 10.4 x 25 = 260.0 m3
```

Segment 2-3 (chainage 0+025 to 0+050):
```
V_cut = (8.3 + 2.1) / 2 x 25 = 5.2 x 25 = 130.0 m3
```

Total cut volume = 260.0 + 130.0 = **390.0 m3**

**Step 2 -- Calculate fill volumes (average end area):**

Segment 1-2:
```
V_fill = (3.2 + 6.1) / 2 x 25 = 4.65 x 25 = 116.25 m3
```

Segment 2-3:
```
V_fill = (6.1 + 15.4) / 2 x 25 = 10.75 x 25 = 268.75 m3
```

Total fill volume (compacted) = 116.25 + 268.75 = **385.0 m3**

**Step 3 -- Apply shrinkage factor:**
```
Shrinkage-adjusted fill = 385.0 x 1.20 = 462.0 m3
```

**Step 4 -- Compute net earthworks balance:**
```
Net = 390.0 - 462.0 = -72.0 m3
```

**Result:**

| Parameter | Value | Unit |
|-----------|-------|------|
| Total cut volume (in-situ) | 390.0 | m3 |
| Total fill volume (compacted) | 385.0 | m3 |
| Shrinkage-adjusted fill | 462.0 | m3 |
| Net earthworks balance | -72.0 | m3 |
| Status | Borrow needed | -- |
| Borrow volume required | 72.0 | m3 |

**Interpretation:** Although the geometric cut (390 m3) and fill (385 m3) volumes appear nearly balanced, applying the shrinkage factor of 1.20 reveals that 462 m3 of in-situ material is actually needed to achieve 385 m3 of compacted fill. The project requires 72 m3 of borrow material. This represents approximately 18.5% of the total fill volume -- the borrow source must be assessed for material suitability using Skill #28.

SENIOR REVIEW -- Borrow requirement of 72 m3 (18.5% of total fill). Identify laterite borrow pit source and assess material suitability (Skill #28).

NOTE -- Shrinkage factor 1.20 assumed for laterite fill. Verify with geotechnical test data.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Section 7 (Cross-Sections).
2. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3 Part I: Flexible Pavements*, January 2010, Chapter 5 (Material Specifications) -- for soil strength classification context.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Uganda soil shrinkage factors, side slope guidance, worked example with laterite shrinkage application. |
