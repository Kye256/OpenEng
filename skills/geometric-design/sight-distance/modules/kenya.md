# Sight Distance -- Kenya Module

> **Parent Skill:** #16 Sight Distance
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
| Kenya Road Design Manual RDM 1.3 | 2025 | Section 3.13 (Sight Distances), Chapter 6 (Vertical Alignment) | Current -- mandatory for all classified roads in Kenya |

### M.1.2 Institutional Context

Same as Skill #13 Kenya module -- Kenya RDM is the mandatory standard for all classified roads. Departures require Chief Engineer for Roads approval (Section 1.7).

### M.1.3 Standard Philosophy

Kenya RDM 1.3 provides both desirable and minimum stopping sight distances. Desirable SSD (Table 3.15) uses the design speed directly. Minimum SSD (Table 3.16) uses a reduced speed assumption, providing lower values for constrained situations. The Kenya RDM uses eye height 1.05 m and object height 0.2 m (Table 3.13) -- different from Uganda (1.07/0.15m). Kenya provides comprehensive friction factors for both paved and unpaved roads at various speeds (Table 3.14).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**SSD, PSD, and ISD values:** Reference JSON table for full data.

--> `tables/kenya_ssd.json`

Contains desirable SSD (Table 3.15), minimum SSD (Table 3.16), SSD on grades (Tables 3.15, 3.16), passing sight distances (Table 3.20), and intersection sight distances (Table 3.18).

**Table KS.1: Sight Distance Parameters (Table 3.13, RDM 1.3)**

| Characteristic | Value |
|---------------|-------|
| Car driver's eye height | 1.05 m |
| Truck driver's eye height | 1.8 m |
| Object height for SSD (general) | 0.2 m |
| Object height for SSD (flat objects) | 0.0 m |
| Object height for SSD (vehicle) | 0.6 m |
| Object height for PSD (roof of car) | 1.3 m |
| Object height for Decision SD | 0.0 m |
| Driver's reaction time | 2.5 s |
| Max deceleration rate (cars) | 3.0 m/s^2 |
| Max deceleration rate (trucks) | 1.5 m/s^2 |

**Source:** Kenya RDM 1.3, Table 3.13 (Verified from PDF)

**Table KS.2: Friction Factors (Table 3.14, RDM 1.3)**

| Speed (km/h) | 25 | 40 | 50 | 60 | 70 | 80 | 90 | 100 | 110 | 120 |
|--------------|----|----|----|----|----|----|----|----|-----|-----|
| Longitudinal f (paved) | 0.40 | 0.37 | 0.35 | 0.33 | 0.32 | 0.305 | 0.295 | 0.285 | 0.29 | 0.28 |
| Longitudinal f (unpaved) | 0.32 | 0.30 | 0.28 | 0.26 | 0.25 | 0.24 | 0.235 | 0.23 | 0.23 | 0.23 |
| Side f (paved) | 0.21 | 0.19 | 0.17 | 0.16 | 0.14 | 0.13 | 0.12 | 0.10 | 0.10 | 0.09 |
| Side f (unpaved) | 0.16 | 0.15 | 0.14 | 0.12 | 0.12 | 0.12 | 0.11 | 0.10 | 0.09 | 0.09 |

**Source:** Kenya RDM 1.3, Table 3.14 (Verified from PDF)

**Quick reference -- Desirable SSD on level (Table 3.15):**
40: 45m, 50: 60m, 60: 80m, 70: 100m, 80: 130m, 90: 165m, 100: 200m, 110: 250m, 120: 310m

**Quick reference -- Minimum SSD on level (Table 3.16):**
40: 40m, 50: 55m, 60: 70m, 70: 85m, 80: 100m, 90: 120m, 100: 140m, 110: 165m, 120: 190m

**Table KS.3: Passing Sight Distance (Table 3.20, RDM 1.3)**

| Design Speed (km/h) | Normal PSD (m) | Reduced PSD (m) |
|---------------------|---------------|-----------------|
| 50 | 250 | 175 |
| 60 | 325 | 225 |
| 70 | 400 | 275 |
| 80 | 475 | 325 |
| 90 | 525 | 350 |
| 100 | 575 | 375 |
| 110 | 625 | 400 |
| 120 | 700 | 450 |

**Source:** Kenya RDM 1.3, Table 3.20 (Verified from PDF). Reduced PSD is the minimum for constrained situations.

**Table KS.4: Intersection Sight Distance (Table 3.18, RDM 1.3)**

| Design Speed of Major Road (km/h) | 50 | 60 | 70 | 85 | 100 | 120 |
|-----------------------------------|----|----|----|----|-----|-----|
| ISD (m) | 70 | 90 | 120 | 160 | 215 | 295 |

**Source:** Kenya RDM 1.3, Table 3.18 (Verified from PDF). ISD = 0.278 x V_major x t_g.

### M.2.2 Country-Specific Formulas

**Stopping sight distance (Kenya RDM Equation 3.1):**

```
d = 0.278 x t x V + V^2 / (254 x (f + g/100))
```

Where d = SSD (m), t = PRT (2.5 s), V = initial speed (km/h), f = longitudinal friction (Table 3.14), g = gradient (%, positive = uphill, negative = downhill).

**Sight distance control heights (Section 3.13.9):**
- Driver eye height: 1.05 m
- Object height for SSD: 0.10 m (Section 3.13.9)
- Object height for Meeting and PSD: 1.10 m

### M.2.3 Key Differences from Uganda

- Kenya eye height: 1.05 m vs Uganda 1.07 m
- Kenya object height (SSD): 0.2 m (Table 3.13) vs Uganda 0.15 m
- Kenya provides both desirable and minimum SSD tables; Uganda provides a range
- Kenya friction values differ from Uganda at some speeds

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Select SSD criterion
  +-- Normal design -> use desirable SSD (Table 3.15)
  +-- Constrained situation -> use minimum SSD (Table 3.16) with justification
  +-- On grade -> adjust using Tables 3.15/3.16 grade columns
  \-- Downgrade SSD is LONGER than level; upgrade SSD is SHORTER

Step 3 (Kenya): PSD provision
  +-- Two-way single carriageway -> check PSD (Table 3.20)
  +-- Normal PSD preferred; reduced PSD minimum acceptable
  +-- Table 3.21 gives guide proportions of road with reduced PSD
  \-- Not applicable to divided carriageways

Step 4 (Kenya): ISD at junctions
  +-- Use Table 3.18 with major road design speed
  +-- ISD = 0.278 x V_major x t_g
  \-- See also Skill #19 for junction visibility splays
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya provides separate desirable and minimum SSD tables.** The desirable SSD should be used for new construction. The minimum SSD may be used for constrained upgrading projects, but this should be documented as a departure from the desirable standard.

**Night-time visibility is particularly important in Kenya.** Many roads lack street lighting, and sag curves should use the headlight distance criterion (K from Table 6.4 headlight column) rather than the comfort criterion for unlit roads.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using Uganda sight distance parameters.** Kenya uses h1=1.05m and h2=0.2m; Uganda uses h1=1.07m and h2=0.15m. Different parameters give different K-values and different SSD.
2. **Not distinguishing desirable from minimum SSD.** Kenya provides both; always specify which is being used. Minimum SSD requires justification for the constrained situation.
3. **Ignoring the grade adjustment.** SSD on downgrades is significantly longer than on level. Always check SSD on the steepest grade section.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| SSD criterion | Desirable (Table 3.15) | Not specified | ASSUMED: Desirable SSD used (Table 3.15). Minimum SSD requires justification. | RDM 1.3, Section 3.13.3 |
| PRT | 2.5 s | Not specified | ASSUMED: 2.5 s perception-reaction time per Table 3.13 | RDM 1.3, Table 3.13 |
| Grade | 0% (level) | Not specified | ASSUMED: Level grade for SSD calculation. Check actual grade. | Conservative for upgrades, unconservative for downgrades |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Available SSD | Min SSD from Table 3.16 | -- | m | RDM 1.3, Table 3.16 | Reject if below minimum SSD |
| Available SSD (desirable) | Desirable SSD from Table 3.15 | -- | m | RDM 1.3, Table 3.15 | Warn if below desirable |

### M.5.2 Standards Compliance Checks

- **Check:** Available SSD >= minimum SSD (Table 3.16) for the design speed and grade
- **Standard:** RDM 1.3, Tables 3.15, 3.16
- **Pass condition:** SSD >= minimum value
- **Fail action:** SENIOR REVIEW -- Available SSD [X]m is below minimum [Y]m at [speed] km/h. Requires realignment or Departure from Standards.

### M.5.3 Departures / Relaxations Process

Same formal departures process as other Kenya modules (Section 1.7).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Available SSD below minimum | Safety-critical deficiency | SENIOR REVIEW -- SSD [X]m below minimum [Y]m for [speed] km/h. Requires realignment, speed reduction, or Departure. |
| SSD below desirable but above minimum | Reduced safety margin | NOTE -- SSD [X]m below desirable [Y]m but above minimum. Document justification. |
| PSD not available on single carriageway | Overtaking safety concern | NOTE -- PSD not available. Check proportion of road with reduced PSD against Table 3.21 guide values. |

---

## M.7 Worked Example -- Kenya

### Example: SSD Check on Class D Road, 3% Downgrade

**Given:**
- Road: Class D (KeRRA)
- Design Speed: 70 km/h (Table K.4, Class D Rolling: max 85, min 65)
- Grade: -3% downgrade
- Available sight distance: 110 m

**Solution:**

**Step 1 -- Determine required SSD:**
From kenya_ssd.json, desirable SSD at 70 km/h on -3% downgrade: 105 m (Table 3.15)
Minimum SSD at 70 km/h on -3% downgrade: 90 m (Table 3.16)

**Step 2 -- Compare:**
Available 110 m > desirable 105 m -> Compliant with desirable standard

**Step 3 -- Check PSD (if single carriageway):**
Normal PSD at 70 km/h: 400 m
Reduced PSD at 70 km/h: 275 m
110 m < 275 m -> PSD NOT available at this location. Check road-wide PSD provision.

**Result:**

| Parameter | Value |
|-----------|-------|
| Desirable SSD (70 km/h, -3%) | 105 m |
| Minimum SSD (70 km/h, -3%) | 90 m |
| Available SSD | 110 m |
| Compliance | Desirable SSD met |
| PSD at location | Not available |

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Geometric Design, Part 3: Geometric Design of Highways, Rural Roads and Urban Roads (RDM 1.3)*, 2025. Section 3.13, Chapter 6.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- SSD values from Tables 3.15-3.17, PSD from Table 3.20, ISD from Table 3.18 verified against Kenya RDM 1.3 PDF. |
