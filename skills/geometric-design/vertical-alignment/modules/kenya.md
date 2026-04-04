# Vertical Alignment -- Kenya Module

> **Parent Skill:** #15 Vertical Alignment
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.3: Geometric Design of Highways, Rural Roads and Urban Roads (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.3 | 2025 | Chapter 6 (Vertical Alignment), Chapter 7 (Phasing) | Current -- mandatory for all classified roads in Kenya |

### M.1.2 Institutional Context

Same as Skill #13 Kenya module -- Kenya RDM is the mandatory standard for all classified roads in Kenya. Departures from standards require written approval from the Chief Engineer for Roads (Section 1.7).

### M.1.3 Standard Philosophy

Kenya RDM 1.3 provides K-values for crest curves based on stopping sight distance (with eye height 1.05 m and object height 0.2 m) and for sag curves based on both driver comfort and headlight illumination criteria. The vertical curve length formula is L = K x A, where A is the algebraic grade difference (%). Gradient limits are provided by terrain class with both desirable and absolute maximum values. The manual is more prescriptive than Uganda MoWT with "shall" language throughout. Kenya uses different eye/object height assumptions from Uganda (1.05/0.2m vs 1.07/0.15m), resulting in different K-values.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**K-Values (Crest and Sag):** Reference JSON table for full K-value data.

--> `tables/kenya_k_values.json`

Contains K-values for crest curves on paved roads (Table 6.1), crest curves on unpaved roads (Table 6.2), and sag curves (Table 6.4) for design speeds 20-120 km/h. Also includes K for passing sight distance on crests.

Quick reference (crest K, paved, SSD): 1, 2, 5, 10, 17, 30, 45, 55, 67, 100, 140, 185 for speeds 25-120 km/h.
Quick reference (sag K, headlight): 2, 3, 5, 9, 14, 19, 25, 32, 36, 40, 50, 60, 70 for speeds 20-120 km/h.

**Maximum Gradients:** Reference JSON table for gradient data.

--> `tables/kenya_gradients.json`

Contains maximum gradients (desirable and absolute) by terrain class for rural (DR1-DR7) and urban (DU1-DU6) design standards, plus maximum gradient lengths.

**Table KV.1: Maximum Gradients for Paved Sections (Table 6.5, RDM 1.3)**

| Terrain | Rural DR1-DR7 |  | Urban DU1-DU6 |  |
|---------|--------------|--|---------------|--|
|  | Desirable | Absolute | Desirable | Absolute |
| Flat | 3% | 5% | 3% | 5% |
| Rolling | 4% | 6% | 6% | 8% |
| Mountainous | 6% | 8% | 8% | 10% |
| Escarpment | 7% | 9% | 8% | 10% |

**Source:** Kenya RDM 1.3, Table 6.5 (Verified). Note: On expressways (DR1), maximum gradient shall not exceed 4%.

**Table KV.2: Maximum Lengths of Gradient (Table 6.6, RDM 1.3)**

| Gradient (%) | Max Length (m) |
|-------------|----------------|
| 2 | No limit |
| 3 | No limit |
| 4 | 900 |
| 5 | 800 |
| 6 | 700 |
| 7 | 600 |
| 8 | 500 |

**Source:** Kenya RDM 1.3, Table 6.6 (Verified from PDF). Source: SANRAL and SATCC Geometric Design Guidelines.

**Table KV.3: Minimum Lengths of Vertical Curves (Table 6.3, RDM 1.3)**

| Design Speed (km/h) | 40 | 60 | 80 | 100 | 120 | 130 |
|---------------------|----|----|-----|-----|-----|-----|
| Min Length (m) | 80 | 100 | 140 | 180 | 220 | 240 |

**Source:** Kenya RDM 1.3, Table 6.3 (Verified from PDF)

### M.2.2 Country-Specific Formulas

**Vertical curve length:**

```
L = K x A
```

Where L is curve length (m), K is the K-value, A is the algebraic grade difference (%).

**Crest curve K derivation (for S < L, the common case):**

```
K = S^2 / (200 x (h1^0.5 + h2^0.5)^2)
```

With h1 = 1.05 m (eye height) and h2 = 0.2 m (object height) per Table 3.13.

**Sag curve comfort criterion:**

```
K > V^2 / 395
```

Where V is design speed in km/h (Equation 6.8).

**Minimum gradient for drainage: 0.5%** (Section 6.5.4). Level grades acceptable on un-kerbed roads where crossfall drains laterally.

**Maximum hairpin gradient: 4%** through the hairpin curve itself (Section 6.3.3).

**Combined gradient and superelevation: maximum 10%** -- the line of greatest slope shall not exceed 10% (Section 6.5.3).

### M.2.3 Climbing Lanes

Climbing lanes are limited to roads in Classes A and B (Section 6.6.2):
- Not required when AADT < 2000 pcu at Design Year 10
- Consider when AADT 2000-6000 pcu on Classes A, B, and C roads
- Normally required when AADT > 6000 pcu at Design Year 10

Speed reduction trigger: 15 km/h for Classes A and B; 20 km/h for Classes B and C.
Entrance taper: 100 m. Exit taper merge length: minimum 200 m.
Through lane width: reduced by 0.25 m from 3.25 m or higher.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Maximum gradient
  +-- Rural roads (DR1-DR7):
  |     +-- Flat -> desirable 3%, absolute 5%
  |     +-- Rolling -> desirable 4%, absolute 6%
  |     +-- Mountainous -> desirable 6%, absolute 8%
  |     +-- Escarpment -> desirable 7%, absolute 9%
  +-- Urban roads (DU1-DU6):
  |     +-- Flat -> desirable 3%, absolute 5%
  |     +-- Rolling -> desirable 6%, absolute 8%
  |     +-- Mountainous/Escarpment -> desirable 8%, absolute 10%
  +-- Expressway (DR1) -> max 4%
  \-- Check gradient length against Table KV.2

Step 3 (Kenya): K-value selection
  +-- Crest curve (paved): Table 6.1 -> use K for SSD
  +-- Crest curve (unpaved): Table 6.2 -> higher K values
  +-- Sag curve: Table 6.4 -> use K for headlight distance (governs)
  \-- Calculate L = K x A and check L >= minimum from Table KV.3
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya gradient limits differ significantly from Uganda in structure.** Kenya provides a single table (Table 6.5) applicable to all rural design standards DR1-DR7 and all urban standards DU1-DU6, with separate columns. Uganda provides gradients by individual design class and design speed. Kenya's approach is simpler but less granular.

**The expressway gradient limit of 4% is critical.** This applies to DR1 standard roads (expressways within Class A). It is a specific note in Table 6.5 and must not be overlooked.

**Urban gradient limits are more generous than rural.** Kenya allows steeper gradients in urban areas (up to 10% absolute in mountainous terrain) because urban sections are shorter and speeds are lower.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using Uganda K-values instead of Kenya K-values.** Kenya uses h1=1.05m and h2=0.2m; Uganda uses h1=1.07m and h2=0.15m. The resulting K-values are different. Always use the Kenya table.
2. **Applying rural gradient limits to urban roads.** Kenya has separate gradient columns for rural (DR1-DR7) and urban (DU1-DU6). Urban areas permit steeper grades.
3. **Forgetting the maximum gradient length limits.** Table 6.6 restricts gradient lengths (e.g., 8% gradient max 500 m). This is distinct from the gradient percentage limit.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| K-value criterion | SSD-based (not PSD) | Not specified | ASSUMED: K-value based on stopping sight distance criterion | SSD is minimum requirement for all roads |
| Gradient type | Desirable | Not specified | ASSUMED: Desirable maximum gradient used (not absolute) | RDM 1.3 Table 6.5 -- desirable preferred |
| Minimum gradient | 0.5% | Kerbed road, not specified | ASSUMED: 0.5% minimum gradient for drainage | RDM 1.3, Section 6.5.4 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Gradient (rural, flat) | 0.5 | 5 | % | RDM 1.3, Table 6.5 | Warn if > 3% desirable; reject if > 5% absolute |
| Gradient (rural, rolling) | 0.5 | 6 | % | RDM 1.3, Table 6.5 | Warn if > 4% desirable; reject if > 6% absolute |
| Gradient (expressway DR1) | 0.5 | 4 | % | RDM 1.3, Table 6.5 Note 1 | Reject if > 4% on expressway |
| Vertical curve length | Table KV.3 | -- | m | RDM 1.3, Table 6.3 | Reject if below minimum |

### M.5.2 Standards Compliance Checks

- **Check:** Gradient does not exceed absolute maximum for terrain
- **Standard:** RDM 1.3, Table 6.5
- **Pass condition:** g <= absolute maximum for terrain type (rural or urban)
- **Fail action:** SENIOR REVIEW -- Gradient exceeds absolute maximum. Requires Departure from Standards per Section 1.7.

### M.5.3 Departures / Relaxations Process

Same as Skill #14 Kenya module -- formal departures process per Section 1.7.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Gradient exceeds desirable maximum | Quality of service concern | SENIOR REVIEW -- Gradient [X]% exceeds desirable maximum [Y]% for [terrain] terrain. Consider alternative alignment. |
| Gradient length exceeds Table 6.6 limit | Vehicle performance and safety concern | SENIOR REVIEW -- Gradient [X]% over [L] m exceeds maximum length [M] m from Table 6.6. Consider intermediate crest or reduced gradient. |
| Expressway gradient > 4% | Violates DR1 requirement | SENIOR REVIEW -- Expressway gradient [X]% exceeds the 4% maximum for DR1 standard. |
| Combined gradient + superelevation > 10% | Vehicle stability risk | SENIOR REVIEW -- Combined slope of [X]% exceeds 10% maximum (Section 6.5.3). Reduce gradient or superelevation. |

---

## M.7 Worked Example -- Kenya

### Example: Crest Curve on Class C Road, Mountainous Terrain

**Given:**
- Road: Class C (Inter-county road, KeRRA/KeNHA)
- Design Standard: DR3
- Terrain: Mountainous
- Design Speed: 50 km/h (from Table K.4, Class C Mountainous: max 70, min 50)
- Grades: +5% rising to crest, then -4% falling
- A = |+5 - (-4)| = 9%

**Solution:**

**Step 1 -- Check gradient compliance:**
From Table KV.1: Mountainous rural, desirable 6%, absolute 8%.
+5% < 6% desirable -> Compliant
-4% < 6% desirable -> Compliant

**Step 2 -- K-value for crest curve:**
From Table 6.1 (kenya_k_values.json): At 50 km/h, K_ssd = 10 (paved road)

**Step 3 -- Calculate curve length:**
L = K x A = 10 x 9 = 90 m

**Step 4 -- Check minimum curve length:**
From Table KV.3: At 50 km/h (interpolate between 40 and 60), min length approximately 90 m. Marginally compliant. Use L = 100 m for safety margin.

**Step 5 -- Check gradient lengths:**
+5% gradient: check length against Table KV.2 max 800 m. Acceptable if grade section < 800 m.

**Result:**

| Parameter | Value |
|-----------|-------|
| Grade difference A | 9% |
| K-value (SSD, paved, 50 km/h) | 10 |
| Required curve length | 90 m (use 100 m) |
| Minimum curve length | ~90 m |
| Gradient compliance | Both grades within desirable maximum |
| Max gradient length (5%) | 800 m |

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Geometric Design, Part 3: Geometric Design of Highways, Rural Roads and Urban Roads (RDM 1.3)*, 2025. Chapters 6, 7.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- K-values from Tables 6.1, 6.2, 6.4 and gradients from Table 6.5 verified against Kenya RDM 1.3 PDF. Key differences from Uganda: different eye/object heights (1.05/0.2m), terrain-based gradient table (not speed-based), expressway 4% max gradient. |
