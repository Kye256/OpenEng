# Horizontal Alignment — Uganda Module

> **Parent Skill:** #14 Horizontal Alignment
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 1 (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-17
> **Reviewed By:** —

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 1 | 2010 | Section 6.2 (Horizontal Alignment) | Current — primary standard for all roads in Uganda |

### M.1.2 Institutional Context

Same as Skill #13 Uganda module — MoWT Road Design Manual is the national standard for all roads in Uganda. UNRA has supplementary guidelines but MoWT is the base.

### M.1.3 Standard Philosophy

MoWT provides the minimum radius formula (R = V²/127(e+f)) with tabulated results for emax values of 4%, 6%, 7%, and 8%. The formula and friction factors are derived from AASHTO research, but the manual is a standalone Ugandan standard. The manual states these values "shall be used" but acknowledges that "special conditions may demand modifications." There is no formal departures process; deviations require consultation with the Engineer-In-Chief, MoWT.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UH.1: Minimum Radius by Design Speed and Maximum Superelevation (m)**

| Design Speed (km/h) | emax = 4% | emax = 6% | emax = 7% | emax = 8% |
|---------------------|-----------|-----------|-----------|-----------|
| 30 | 35 | 30 | 30 | 30 |
| 40 | 60 | 55 | 55 | 50 |
| 50 | 100 | 90 | 85 | 80 |
| 60 | 150 | 135 | 130 | 125 |
| 70 | 215 | 195 | 185 | 175 |
| 80 | 280 | 250 | 240 | 230 |
| 90 | 375 | 335 | 320 | 305 |
| 100 | 490 | 440 | 415 | 400 |
| 110 | 635 | 560 | 530 | 500 |
| 120 | 870 | 755 | 710 | 670 |

**Source:** Uganda MoWT Road Design Manual, Vol. 1, Table 6.1 (Verified)

**Table UH.2: Side Friction Factors (f) for Design**

| Design Speed (km/h) | f (max) |
|---------------------|---------|
| 30 | 0.17 |
| 40 | 0.17 |
| 50 | 0.16 |
| 60 | 0.15 |
| 70 | 0.14 |
| 80 | 0.14 |
| 90 | 0.13 |
| 100 | 0.12 |
| 110 | 0.11 |
| 120 | 0.09 |

**Source:** Uganda MoWT Road Design Manual, Vol. 1, Table 6.1 (Verified)

**Table UH.3: Minimum Horizontal Curve Radius by Design Class and Terrain (m)**

These are the minimum radii embedded in the design class parameter tables (Tables 4-3 through 4-9):

| Design Class | Flat | Rolling | Mountainous | Urban/Peri-Urban |
|-------------|------|---------|-------------|-----------------|
| Ia Paved | 710 | 415 | 240 | 100 |
| Ib Paved | 530 | 415 | 240 | 100 |
| II Paved | 320 | 185 | 130 | 100 |
| III Paved | 240 | 185 | 85 | 100 |
| A Gravel | 320 | 240 | 185 | 100 |
| B Gravel | 240 | 130 | 85 | 100 |
| C Gravel | 130 | 85 | 55 | 100 |

**Source:** Uganda MoWT Road Design Manual, Vol. 1, Tables 4-3 to 4-9 (Verified)

**Note:** These correspond to emax = 7% for rural and emax = 4% for urban/peri-urban, matching the minimum radius table (Table UH.1) at the design speeds from Skill #13.

**Table UH.4: Maximum Superelevation by Context**

| Context | emax (%) | Source |
|---------|----------|--------|
| Rural roads (all design classes) | 7 | MoWT Vol. 1, Tables 4-3 to 4-9 |
| Urban/Peri-urban | 4 | MoWT Vol. 1, Tables 4-3 to 4-9 |

**Source:** Uganda MoWT Road Design Manual, Vol. 1 (Verified)

### M.2.2 Country-Specific Formulas

**Minimum radius (MoWT — same as AASHTO):**

```
Rmin = V² / (127 × (e + f))
```

Where V is in km/h, e is in decimal (e.g., 0.07), f from Table UH.2.

**Example from the manual (verified):**
- V = 80 km/h, emax = 7% (0.07), f = 0.14
- Rmin = 80² / (127 × (0.07 + 0.14)) = 6400 / (127 × 0.21) = 6400 / 26.67 = **240 m** ✅ (matches Table UH.1)

**Tangent maximum length:** The manual recommends tangent sections should not exceed **4.0 km** (MoWT Vol. 1, Section 6.2.2).

**Degree of curve (MoWT uses 20m arc definition):**

```
D = (360 × 20) / (2 × π × R) = 1145.92 / R
```

Where D is degrees and R is radius in metres. This is the arc definition with a 20m arc (not the US 100-ft chord definition).

### M.2.3 Superelevation Application

MoWT Vol. 1 provides superelevation rates for various combinations of e and f in Table 6.1. For any radius between the minimum (full emax + fmax) and the radius requiring no superelevation (normal crossfall only), superelevation is interpolated.

Normal crossfall is **2.5%** for paved roads and **4%** for gravel roads (from Tables 4-3 to 4-9, verified).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Maximum superelevation
  ├── Rural paved or gravel → emax = 7%
  ├── Urban/peri-urban → emax = 4%
  └── Check ToR for any project-specific requirements that may differ

Step 3 (Uganda): Minimum radius
  ├── Look up from Table UH.1 using design speed and emax
  ├── Cross-check against Table UH.3 (design class table) — values should match
  └── If ToR specifies a different emax (e.g., 8%), recalculate using the formula
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Gravel road superelevation is limited by surface stability.** At 7% superelevation on a gravel surface, erosion of the high side and accumulation of loose material on the low side can occur, especially in heavy rainfall. In practice, gravel road superelevation should be applied conservatively. Some practitioners limit gravel road superelevation to 5–6% even though the standard permits 7%.

**Mountainous terrain in Uganda often requires minimum-radius curves.** The terrain in western Uganda (Rift Valley escarpment) and eastern Uganda (Mt. Elgon foothills) frequently forces the use of minimum or near-minimum radii. In these cases, ensure that sight distance through curves is checked (Skill #16) as cuts on the inside of curves can obstruct vision.

**Motorcycle (boda-boda) behaviour on curves:** In Uganda, motorcycles are a major traffic component. Motorcycles can negotiate sharper curves than the design vehicle, but they are also vulnerable to superelevation transitions (wet surfaces at zero crossfall) and loose gravel. This doesn't change the geometric design but should inform surface treatment and drainage decisions on curves.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using emax = 8% without project-specific justification.** The MoWT standard specifies 7% for rural roads. While the underlying AASHTO research allows up to 8%, the Ugandan standard is 7%. Only deviate if the project ToR explicitly permits it.
2. **Not checking minimum radius from the design class tables.** The minimum radius in Table UH.3 (from the design class parameter tables) must be met for the road's design class and terrain. It's not sufficient to just check against the speed-based minimum from Table UH.1.
3. **Ignoring the 4 km maximum tangent recommendation.** This is specific to the MoWT manual (Section 6.2.2).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| emax (rural) | 7% | Not specified, rural context | ⚠️ ASSUMED: emax = 7% (MoWT standard for rural roads) | MoWT Tables 4-3 to 4-9 |
| emax (urban) | 4% | Not specified, urban context | ⚠️ ASSUMED: emax = 4% (MoWT standard for urban) | MoWT Tables 4-3 to 4-9 |
| Normal crossfall (paved) | 2.5% | Not specified | ⚠️ ASSUMED: Normal crossfall 2.5% | MoWT Tables 4-3 to 4-9 |
| Normal crossfall (gravel) | 4.0% | Not specified, gravel road | ⚠️ ASSUMED: Normal crossfall 4.0% (gravel road) | MoWT Tables 4-7 to 4-9 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Superelevation (rural) | 0 | 7 | % | MoWT Vol. 1 | Reject if > 7% (MoWT limit) |
| Superelevation (urban) | 0 | 4 | % | MoWT Vol. 1 | Reject if > 4% |
| Curve radius | Per Table UH.3 for design class | — | m | MoWT Vol. 1 | Flag if below minimum for design class and terrain |
| Tangent length | — | 4,000 | m | MoWT Vol. 1, Section 6.2.2 | Warn if > 4 km |

### M.5.2 Standards Compliance Checks

- **Check:** Curve radius ≥ minimum from Table UH.3 for the assigned design class and terrain
- **Standard:** MoWT Vol. 1, Tables 4-3 to 4-9
- **Pass condition:** R ≥ tabulated minimum radius
- **Fail action:** 🔺 SENIOR REVIEW — Radius below design class minimum. Requires reduction in design speed or design class reassignment.

- **Check:** Superelevation does not exceed emax for the context
- **Standard:** MoWT Vol. 1
- **Pass condition:** e ≤ 7% (rural) or e ≤ 4% (urban)
- **Fail action:** Reject — increase radius to reduce required superelevation.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process equivalent to DMRB. Where the standard cannot be met, the engineer documents the justification in the design report and consults with the Engineer-In-Chief, MoWT.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Radius below design class minimum for the assigned terrain | Safety concern; design speed may be unachievable | 🔺 SENIOR REVIEW — Radius [X]m is below the minimum [Y]m for Design Class [Z] on [terrain] terrain. Consider lower design class, reduced design speed, or realignment. |
| Gravel road superelevation at 7% in high-rainfall area | Erosion and surface stability risk | 🔺 NOTE — Superelevation of 7% on gravel surface in high-rainfall area. Consider limiting to 5–6% and providing drainage protection on the high side. |
| Sharp curve on tourism route (national parks) | Driver expectation mismatch — tourists unfamiliar with Uganda road conditions | 🔺 NOTE — Sharp curve on route used by tourist traffic. Consider enhanced signing and delineation. |

---

## M.7 Worked Example — Uganda

### Example: Design Class II Paved Road, Rolling Terrain

**Given:**
- Design Class: II Paved
- Terrain: Rolling
- Design Speed: 70 km/h (from Table U.3, Skill #13)
- emax: 7% (rural)
- Proposed curve radius: 200 m

**Solution:**

**Step 1 — Check minimum radius:**
From Table UH.3: Design Class II, Rolling → minimum radius = 185 m
Proposed 200 m > 185 m → ✅ Compliant

**Step 2 — Check against Table UH.1:**
At 70 km/h with emax = 7%: Rmin = 185 m (from table)
200 m > 185 m → ✅ Above absolute minimum

**Step 3 — Calculate superelevation:**
Using Rmin = V² / (127 × (e + f)):
- 200 = 70² / (127 × (e + 0.14))
- 200 = 4900 / (127 × (e + 0.14))
- 127 × (e + 0.14) = 4900 / 200 = 24.5
- e + 0.14 = 24.5 / 127 = 0.193
- e = 0.193 - 0.14 = 0.053 → **e = 5.3%**

**Step 4 — Transition length:**
MoWT doesn't specify a transition formula explicitly in the same way as DMRB, but follows AASHTO practice. Using the AASHTO approach:
- Minimum transition = superelevation development length
- For 7.0m roadway width and superelevation change from -2.5% to +5.3% = 7.8% change
- At typical development rate of 0.5%/m: L = (7.8 × 7.0) / 0.5 = **109 m**

**Step 5 — Curve widening:**
At R = 200m with SU design vehicle (wheelbase ≈ 6.1m):
- w = 2 × (200 - √(200² - 6.1²)) / 200 + 70 / (10 × √200)
- w = 2 × (200 - 199.91) / 200 + 70 / 141.4
- w = 0.001 + 0.495 = **0.5 m** (apply if standard requires; small value — check threshold)

**Result:**

| Parameter | Value |
|-----------|-------|
| Minimum radius (Design Class II, Rolling) | 185 m |
| Proposed radius | 200 m |
| Compliance | ✅ Above minimum |
| Required superelevation | 5.3% |
| Transition length | ~109 m |
| Curve widening | ~0.5 m |

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Sections 6.2 and Tables 4-3 to 4-9.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-17 | AI draft | Initial draft — Tables UH.1, UH.2, UH.3, UH.4 verified against MoWT Vol. 1. Transition calculation method needs engineer review. |
