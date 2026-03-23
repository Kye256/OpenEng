# Vertical Alignment — Uganda Module

> **Parent Skill:** #15 Vertical Alignment
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
| Uganda MoWT Road Design Manual Vol. 1 | 2010 | Sections 6.3 (Vertical Curves), 6.4 (Phasing), 6.5 (Gradients) | Current — primary standard for all roads in Uganda |

### M.1.2 Institutional Context

Same as Skill #13 Uganda module — MoWT Road Design Manual is the national standard for all roads in Uganda. UNRA has supplementary guidelines but MoWT is the base.

### M.1.3 Standard Philosophy

MoWT provides K-values for crest curves based on stopping sight distance and for sag curves based on headlight illumination distance. The vertical curve length formula is L = K x A, where A is the algebraic grade difference (%). Gradient limits are provided by terrain class and design speed, with both "desirable" and "absolute" maximum values. The manual follows AASHTO principles but provides its own tabulated values specific to Uganda's design speed range (30-120 km/h).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**K-Values (Crest and Sag):** Reference JSON table for full K-value data.

--> `tables/uganda_k_values.json`

Contains K-values for crest curves (Table 6-11, p107) and sag curves (Table 6-12, p108) for design speeds 30-120 km/h.

Quick reference (crest K): 2, 4, 7, 12, 19, 29, 44, 62, 81, 106 for speeds 30-120 km/h.
Quick reference (sag K): 4, 8, 12, 18, 25, 32, 41, 51, 62, 73 for speeds 30-120 km/h.

**Maximum Gradients (Desirable and Absolute):** Reference JSON table for full gradient data.

--> `tables/uganda_gradients.json`

Contains desirable maximum gradients (Table 6-14, p122) and absolute maximum gradients (Table 6-15, p122) by terrain class (Flat, Rolling, Mountainous) and design speed (40-120 km/h).

**Table UV.1: Minimum Vertical Curve Length (Table 6-13, p109, Verified)**

| Design Speed (km/h) | 30 | 40 | 50 | 60 | 70 | 80 | 90 | 100 | 110 | 120 |
|---------------------|----|----|----|----|----|----|----|----|-----|-----|
| L_min (m) | 20 | 30 | 40 | 50 | 60 | 70 | 80 | 90 | 100 | 110 |

**Source:** MoWT Vol. 1, Table 6-13, p109 (Verified). Note: L_min = 0.6V as a rule.

**Table UV.2: Critical Length of Gradient (Table 6-16, p123, Verified)**

| Gradient (%) | Max Desirable Length (m) |
|-------------|------------------------|
| 9 | 450 |
| 10 | 400 |
| 11 | 350 |
| 12 | 300 |

**Source:** MoWT Vol. 1, Table 6-16, p123 (Verified). Applies to mountainous terrain where steep gradients are unavoidable.

**Table UV.3: Climbing Lane Thresholds (Table 6-17, p125, Verified)**

| Average Grade (%) | Min Length Before 20 km/h Speed Reduction (m) |
|-------------------|----------------------------------------------|
| 2 | 1500 |
| 3 | 500 |
| 4 | 300 |

**Source:** MoWT Vol. 1, Table 6-17, p125 (Verified).

Climbing lanes required when AADT >= 6,000 pcu (design year 10). Consider for AADT 2,000-6,000 on Class I and Class II roads.

**Minimum gradient:** 0.3-0.5% in cuttings for drainage (MoWT Section 6.5.2).

### M.2.2 Country-Specific Formulas

**Vertical curve length (MoWT — same as universal):**

```
L = K x A
```

Where K is from Table 6-11 (crest) or Table 6-12 (sag), and A is the algebraic grade difference (%).

**Minimum curve length:**

```
L_min = 0.6 x V
```

Where V is the design speed in km/h. This applies to both crest and sag curves. The minimum ensures the curve is visually perceptible and comfortable.

### M.2.3 Gradient Classification

MoWT classifies terrain into three categories for gradient purposes:
- **Flat terrain:** Gentle grades; high design speeds achievable
- **Rolling terrain:** Moderate grades; intermediate design speeds
- **Mountainous terrain:** Steep grades; lower design speeds; climbing lanes may be needed

The terrain classification is established by Skill #11 (Terrain Classification) and confirmed by Skill #13 (Design Standards Selection). MoWT thresholds are: flat ~5%, rolling >5-20%, mountainous >20-70% (cross-slopes).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Maximum gradient
  |-- Look up desirable max gradient from tables/uganda_gradients.json
  |    using terrain class and design speed
  |-- Look up absolute max gradient from same file
  |-- If proposed gradient exceeds desirable --> Flag, check absolute
  +-- If proposed gradient exceeds absolute --> Escalate

Step 4 (Uganda): K-value selection
  |-- Look up K_crest from tables/uganda_k_values.json for design speed
  |-- Look up K_sag from same file
  +-- Use desirable values (MoWT tables provide one K per speed —
       these are the desirable minimum values)

Step 7 (Uganda): Climbing lane assessment
  |-- Check AADT against thresholds:
  |    |-- AADT >= 6,000 pcu --> Climbing lane required
  |    |-- AADT 2,000-6,000 and Class I or II --> Consider climbing lane
  |    +-- AADT < 2,000 --> Not required
  |-- Check grade length against Table UV.3
  +-- If grade length exceeds threshold for given gradient --> Flag
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Mountainous terrain in Uganda often pushes gradients to the limit.** The western rift valley escarpment (e.g., Fort Portal to Kasese, Kabale to Kisoro) and eastern highland routes (Mt. Elgon foothills) frequently require gradients at or near the absolute maximum. In these cases, climbing lane assessment becomes critical.

**Heavy vehicle performance is a particular concern in Uganda.** The East African truck fleet includes many older vehicles with lower power-to-weight ratios than the AASHTO design vehicle. Speed reductions on grades may be more severe than predicted by standard charts. This makes climbing lane provision more important, particularly on National Roads (Class I and II) with high freight traffic.

**Drainage at sag curves deserves special attention.** Uganda's intense tropical rainfall (>1,200 mm/year in many areas) means that water accumulation at sag curves and flat grades can be severe. Ensure minimum longitudinal gradients are maintained in all kerbed sections.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using AASHTO Green Book K-values instead of MoWT K-values.** The values are similar but not identical. MoWT Tables 6-11 and 6-12 are the correct source for Uganda projects. Always cite the MoWT table number.
2. **Ignoring the difference between desirable and absolute maximum gradients.** Designing to the absolute maximum without checking the desirable maximum first is poor practice. The desirable maximum should be the target; the absolute maximum is a fallback for constrained terrain.
3. **Not checking the critical length of gradient.** Table UV.2 limits the length of very steep grades (9-12%). Even if the gradient is within the absolute maximum, its length may need to be limited.
4. **Forgetting to assess climbing lane needs on high-AADT roads.** Class I and II roads with AADT > 2,000 should be assessed for climbing lanes whenever gradients exceed 2%.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| K-value type | Desirable minimum | Not specified | No flag (conservative) | MoWT tables provide desirable values |
| Terrain class | From Skill #13 | Not specified | ASSUMED: Terrain from Skill #13 output | Required for gradient lookup |
| Min gradient | 0.5% | In cuttings | ASSUMED: Min gradient 0.5% for drainage | MoWT Section 6.5.2 |
| Climbing lane AADT | From Skill #6 | Not provided | ASSUMED: Climbing lane assessment not performed — AADT not available | MoWT Table 6-17 threshold |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Gradient (flat terrain) | 0.3 | Desirable per table | % | MoWT Tables 6-14, 6-15 | Warn if > desirable; reject if > absolute |
| Gradient (rolling terrain) | 0.3 | Desirable per table | % | MoWT Tables 6-14, 6-15 | Warn if > desirable; reject if > absolute |
| Gradient (mountainous terrain) | 0.3 | Desirable per table | % | MoWT Tables 6-14, 6-15 | Warn if > desirable; reject if > absolute |
| K-value (crest) | Per table for speed | -- | m/% | MoWT Table 6-11 | Flag if below table value |
| K-value (sag) | Per table for speed | -- | m/% | MoWT Table 6-12 | Flag if below table value |
| Curve length | L_min = 0.6V | -- | m | MoWT Table 6-13 | Flag if below minimum |

### M.5.2 Standards Compliance Checks

- **Check:** Gradient <= desirable maximum for terrain and speed
- **Standard:** MoWT Vol. 1, Table 6-14
- **Pass condition:** Gradient <= tabulated desirable maximum
- **Fail action:** SENIOR REVIEW -- Gradient [X]% exceeds desirable maximum [Y]% for [terrain] terrain at [speed] km/h.

- **Check:** Gradient <= absolute maximum for terrain and speed
- **Standard:** MoWT Vol. 1, Table 6-15
- **Pass condition:** Gradient <= tabulated absolute maximum
- **Fail action:** SENIOR REVIEW -- Gradient [X]% exceeds absolute maximum [Y]%. Redesign required.

- **Check:** K-value >= desirable minimum K for design speed
- **Standard:** MoWT Vol. 1, Tables 6-11, 6-12
- **Pass condition:** K >= tabulated K
- **Fail action:** SENIOR REVIEW -- K-value [X] below desirable minimum [Y] for [speed] km/h.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process equivalent to DMRB. Where the standard cannot be met, the engineer documents the justification in the design report and consults with the Engineer-In-Chief, MoWT. The desirable-absolute gradient system provides inherent flexibility: the desirable maximum is the target, and the absolute maximum represents the limit for constrained conditions.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Gradient exceeds desirable max for terrain | Vehicle performance concern; increased fuel cost | SENIOR REVIEW -- Gradient [X]% exceeds desirable maximum [Y]% for [terrain] terrain at [speed] km/h. Consider flatter grade, or justify use of absolute maximum. |
| Gradient exceeds absolute max | Safety and standards non-compliance | SENIOR REVIEW -- Gradient [X]% exceeds absolute maximum [Y]% for [terrain] terrain. Redesign vertical alignment or reduce design speed. |
| Steep grade on high-AADT road without climbing lane | Traffic operations and safety | SENIOR REVIEW -- Grade of [X]% for [Y]m on Class [Z] road with AADT [N]. Climbing lane assessment required per MoWT Table 6-17. |
| Mountainous terrain with consecutive steep grades | Driver fatigue and vehicle performance | NOTE -- Consecutive steep grades totalling [X]m at [Y]% average. Consider rest areas or speed management. |

---

## M.7 Worked Example — Uganda

### Example: Design Class II Paved Road, Rolling Terrain, 70 km/h

**Given:**
- Design Class: II Paved
- Terrain: Rolling
- Design Speed: 70 km/h (from Skill #13)
- Proposed gradient: 6%
- Crest curve with A = 5% (grades +3% to -2%)
- AADT: 4,500 pcu/day (design year)

**Solution:**

**Step 1 -- Check gradient compliance:**
From `tables/uganda_gradients.json`:
- Rolling terrain, 70 km/h: desirable maximum = 5.5%, absolute maximum = 7.5%
- Proposed 6% > 5.5% (desirable) but < 7.5% (absolute)
- Status: Exceeds desirable maximum. SENIOR REVIEW flag raised.

**Step 2 -- Determine K-value for crest curve:**
From `tables/uganda_k_values.json`:
- At 70 km/h: K_crest = 19
- L = K x A = 19 x 5 = **95 m**

**Step 3 -- Check minimum curve length:**
L_min = 0.6 x 70 = **42 m**
95 m > 42 m --> OK

**Step 4 -- Climbing lane assessment:**
AADT = 4,500 pcu/day is between 2,000 and 6,000, and road is Class II.
--> MoWT guidance: "Consider" climbing lane.
Grade = 6%, check Table UV.3:
- At 4% gradient, speed reduction threshold = 300 m
- A 6% grade would cause even faster speed reduction
- If grade length > ~200 m, climbing lane should be considered.

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Terrain | Rolling | |
| Design Speed | 70 km/h | |
| Proposed gradient | 6% | Exceeds desirable (5.5%); within absolute (7.5%) |
| K-value (crest) | 19 | MoWT Table 6-11 |
| Curve length (L) | 95 m | > L_min (42 m) |
| Climbing lane | Consider | AADT 4,500, Class II, 6% grade |

SENIOR REVIEW -- Gradient 6% exceeds desirable maximum 5.5% for rolling terrain at 70 km/h. Within absolute maximum 7.5%. Justify use of above-desirable gradient in design report.

NOTE -- Climbing lane should be considered: AADT 4,500 on Class II road with 6% grade. Assess heavy vehicle speed reduction.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Sections 6.3, 6.4, and 6.5.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft — K-values (Tables 6-11, 6-12), gradients (Tables 6-14, 6-15), min curve lengths (Table 6-13), critical lengths (Table 6-16), climbing lanes (Table 6-17) verified against MoWT Vol. 1 PDF. |
