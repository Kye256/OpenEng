# Horizontal Alignment — UK Module

> **Parent Skill:** #14 Horizontal Alignment
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 109 Highway Link Design (Revision 1, March 2020)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-17
> **Reviewed By:** —

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Version | Sections Referenced | Status |
|----------|--------------|---------|---------------------|--------|
| Highway link design | CD 109 | Rev 1 (Mar 2020) | Sections 2, 4 | Current |
| Introduction to the DMRB | GG 101 | Version 0.1.0 (Sep 2021) | Section 2 (Departures) | Current |

### M.1.2 Institutional Context

Same as Skill #13 UK module. CD 109 is mandatory for trunk roads, widely adopted for local authority roads.

### M.1.3 Standard Philosophy

**CD 109 uses a V²/R band system rather than the AASHTO e+f formula.** Instead of calculating minimum radius from superelevation and friction, CD 109 defines bands of horizontal curvature based on V²/R values. Each band corresponds to a level of superelevation, and the boundaries between bands define the "steps" for the relaxation/departure system.

This is a fundamentally different approach from AASHTO/MoWT. The agent must not use the AASHTO formula for UK designs.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UKH.1: CD 109 Table 2.10 — Design Speed Related Horizontal Parameters (Verified)**

| Design Speed (km/h) | 120 | 100 | 85 | 70 | 60 | 50 |
|---------------------|-----|-----|-----|-----|-----|-----|
| **V²/R band** | | | | | | |
| Min R with adverse camber, no transitions | 2880 | 2040 | 1440 | 1020 | 720 | 520 |
| Min R with superelevation 2.5% | 2040 | 1440 | 1020 | 720 | 510 | 360 |
| Min R with superelevation 3.5% | 1440 | 1020 | 720 | 510 | 360 | 255 |
| **Desirable minimum R (superelev. 5%)** | **1020** | **720** | **510** | **360** | **255** | **180** |
| One step below desirable min R (superelev. 7%) | 720 | 510 | 360 | 255 | 180 | 127 |
| Two steps below desirable min R (superelev. 7%) | 510 | 360 | 255 | 180 | 127 | 90 |

**V²/R thresholds:** 5 (adverse camber), 7.07 (2.5%), 10 (3.5%), 14.14 (5% desirable), 20 (one step below), 28.28 (two steps below)

**Source:** CD 109, Table 2.10 (Verified against uploaded document)

**Table UKH.2: CD 109 Table 2.10 — Stopping Sight Distance (m) (Verified)**

| Design Speed (km/h) | 120 | 100 | 85 | 70 | 60 | 50 |
|---------------------|-----|-----|-----|-----|-----|-----|
| Desirable minimum SSD | 295 | 215 | 160 | 120 | 90 | 70 |
| One step below desirable minimum | 215 | 160 | 120 | 90 | 70 | 50 |

**Source:** CD 109, Table 2.10 (Verified)

**Table UKH.3: CD 109 Table 2.10 — Vertical Curvature K Values (Verified)**

| Design Speed (km/h) | 120 | 100 | 85 | 70 | 60 | 50 |
|---------------------|-----|-----|-----|-----|-----|-----|
| Desirable min crest K | 182 | 100 | 55 | 30 | 17 | 10 |
| One step below desirable min crest K | 100 | 55 | 30 | 17 | 10 | 6.5 |
| Desirable min sag K | 37 | 26 | 20 | 20 | 13 | 9 |

**Source:** CD 109, Table 2.10 (Verified)

**Table UKH.4: CD 109 Table 2.5 — Urban Speed Limit / Design Speed (Verified)**

| Speed Limit (mph) | Speed Limit (km/h) | Design Speed (km/h) |
|-------------------|--------------------|--------------------|
| 30 | 48 | 60B |
| 40 | 64 | 70A |
| 50 | 80 | 85A |
| 60 | 96 | 100A |

**Source:** CD 109, Table 2.5 (Verified)

Note: The suffix A or B refers to design speed bands. Band A has fewer permitted relaxation steps than Band B.

**Table UKH.5: CD 109 Table 4.5 — Permitted Relaxations (Horizontal Alignment) (Verified)**

| Road Type | Design Speed Band | Permitted Steps Below Desirable Minimum |
|-----------|------------------|-----------------------------------------|
| Motorways | Band A | 2 steps |
| Motorways | Band B | 3 steps |
| All-purpose | Band A | 3 steps |
| All-purpose | Band B | 4 steps |

**Source:** CD 109, Table 4.5 (Verified)

**Table UKH.6: CD 109 Table 5.1 — Maximum Gradients (Verified)**

| Road Type | Desirable Maximum | Permitted Relaxation |
|-----------|-------------------|---------------------|
| Motorways | 3% | 4% |
| All-purpose dual carriageways | 4% | 8% |
| All-purpose single carriageways | 6% | 8% |

**Source:** CD 109, Table 5.1 (Verified)

**Table UKH.7: CD 109 — Overtaking Sight Distances (Verified)**

| Design Speed (km/h) | 100 | 85 | 70 | 60 | 50 |
|---------------------|-----|-----|-----|-----|-----|
| FOSD (m) | 580 | 490 | 410 | 345 | 290 |
| FOSD overtaking crest K | 400 | 285 | 200 | 142 | 100 |

**Source:** CD 109, Table 2.10 (Verified). Note: FOSD not applicable for 120 km/h (motorway speeds).

### M.2.2 Country-Specific Formulas

**Superelevation (CD 109 Equation 4.2, Verified):**

```
S = V² / (2.828 × R)
```

Where:
- S = superelevation (%)
- V = design speed (km/h)
- R = radius (m)

This is applied when V²/R > 7.07 (i.e., radius below the "Min R with superelevation 2.5%" threshold).

**Maximum superelevation:**
- Rural: **7%** (CD 109, clause 4.3, verified)
- Urban: **5%** (CD 109, clause 4.4, verified)
- Exception: existing roads and connector road loops may exceed 7%

**Transition curve length (CD 109 Equation 4.13, Verified):**

```
L = V³ / (46.7 × q × R)
```

Where:
- L = length of basic transition (m)
- V = design speed (km/h)
- q = rate of increase of centripetal acceleration (m/s³)
- R = radius of curve (m)

**Limits on q:**
- **Shall not exceed 0.6 m/s³** (mandatory — CD 109, clause 4.14, verified)
- **Should not exceed 0.3 m/s³** (advisory — CD 109, clause 4.14.1, verified)

**Cap on transition length:**
- Where the basic calculation gives L > √(24R), the value √(24R) **should** be used instead (CD 109, clause 4.15.1, verified). Using longer transitions can create flat areas causing drainage problems.

**Transitions are required** when R < Min R with adverse camber (i.e., V²/R > 5; the top row of Table UKH.1). For larger radii, no transition is needed. (CD 109, clause 4.12, verified)

### M.2.3 Curve Widening

CD 109, clause 4.10 (verified): For standard-width carriageways (as per CD 127), an increase of **0.3 m per lane** shall be provided when the horizontal radius is greater than 90 m but below 150 m. This is a simpler approach than the AASHTO formula.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Maximum superelevation
  ├── Rural trunk road → emax = 7%
  ├── Urban trunk road → emax = 5%
  └── Note: These are absolute maxima; the actual superelevation for any curve is calculated from S = V²/(2.828R)

Step 3 (UK): Minimum radius
  ├── Use Table UKH.1 for the design speed
  ├── Desirable minimum = row at V²/R = 14.14 (superelevation 5%)
  ├── Absolute minimum depends on road type and band (Table UKH.5)
  │     ├── All-purpose Band B: 4 steps below → can go to V²/R = 28.28 and potentially one more step
  │     ├── All-purpose Band A: 3 steps → can go to V²/R = 28.28
  │     └── Motorway Band A: 2 steps → can go to V²/R = 20
  └── Report which "step" each curve achieves

Step 4 (UK): Check each curve
  ├── Calculate V²/R for the proposed radius
  ├── Identify which band it falls in from Table UKH.1
  ├── Report: Desirable / 1 step below / 2 steps below / etc.
  ├── If below desirable but within permitted steps → Relaxation
  └── If below all permitted steps → Departure required
```

### M.3.2 Professional Judgment (UK-Specific)

**The "step" system is central to UK practice.** Unlike AASHTO where you have a single minimum radius, DMRB has a graduated system. Designs at desirable minimum are straightforward. Each step below requires increasing justification. This graduated approach is a feature — it allows constrained sites to be designed without binary pass/fail, but requires the engineer to demonstrate that safety is maintained.

**Band A vs Band B matters.** Band A design speeds (derived from higher alignment constraint) have fewer permitted relaxation steps. This means roads with higher measured speeds have stricter geometric requirements — which makes sense from a safety perspective.

**Superelevation in CD 109 is deterministic.** Unlike AASHTO where the designer chooses a superelevation distribution method, CD 109's formula S = V²/(2.828R) gives a single value. The only choice is whether to cap at the maximum.

**The 2020 revision removed wet weather speed.** Engineers trained on TD 9/93 may reference wet weather speeds or reduced design speeds. CD 109 does not use this concept. Design speed is derived from alignment constraint and layout constraint only.

### M.3.3 Common Errors (UK-Specific)

1. **Using the AASHTO R = V²/127(e+f) formula for DMRB designs.** The formulas give different results because DMRB uses a different model. Always use the V²/R band system and Table 2.10.
2. **Confusing "desirable minimum radius" with "absolute minimum radius."** In DMRB, desirable minimum is at V²/R = 14.14 (5% superelevation). The absolute minimum depends on how many relaxation steps the road type permits.
3. **Not recording relaxation justifications.** GG 101 requires that any deviation from a "should" clause (recommendation) is justified and recorded, with a safety risk assessment.
4. **Applying q = 0.6 m/s³ as the target instead of the maximum.** The advisory limit is 0.3 m/s³; 0.6 is the mandatory maximum. Designing to q = 0.6 is technically compliant but not best practice.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| emax (rural) | 7% | Rural trunk road | ⚠️ ASSUMED: emax = 7% (CD 109 clause 4.3) | Verified from CD 109 |
| emax (urban) | 5% | Urban trunk road | ⚠️ ASSUMED: emax = 5% (CD 109 clause 4.4) | Verified from CD 109 |
| Normal crossfall | 2.5% | Not specified | ⚠️ ASSUMED: Normal crossfall 2.5% (CD 109 clause 4.1.1) | Standard UK camber |
| q (transition) | 0.3 m/s³ | Not specified | ⚠️ ASSUMED: q = 0.3 m/s³ (advisory limit, CD 109 clause 4.14.1) | Best practice; 0.6 is mandatory maximum |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Superelevation (rural) | 0 | 7 | % | CD 109 cl. 4.3 | Reject if > 7% |
| Superelevation (urban) | 0 | 5 | % | CD 109 cl. 4.4 | Reject if > 5% |
| q (transition rate) | — | 0.6 | m/s³ | CD 109 cl. 4.14 | Reject if > 0.6 ("shall" requirement) |
| Gradient (motorway) | — | 4 | % | CD 109 Table 5.1 | Warn if > 3% (desirable), reject if > 4% |
| Gradient (all-purpose) | — | 8 | % | CD 109 Table 5.1 | Warn if > desirable max, reject if > 8% |

### M.5.2 Standards Compliance Checks

For each curve, calculate V²/R and report the compliance level:

- **V²/R ≤ 5:** No superelevation or transitions needed. Normal crossfall. ✅ Desirable.
- **5 < V²/R ≤ 7.07:** Adverse camber removed, 2.5% superelevation applied. Transitions required. ✅ Desirable.
- **7.07 < V²/R ≤ 10:** Superelevation calculated by formula. ✅ Desirable.
- **10 < V²/R ≤ 14.14:** ✅ Desirable (at desirable minimum when V²/R = 14.14).
- **14.14 < V²/R ≤ 20:** ⚠️ One step below desirable minimum. Relaxation required.
- **20 < V²/R ≤ 28.28:** ⚠️ Two steps below desirable minimum. Check permitted steps (Table UKH.5).
- **V²/R > 28.28:** 🔺 Three+ steps below. Check if permitted for road type and band.

### M.5.3 Departures / Relaxations Process

Per GG 101 (verified):

- **"Shall" requirements** (e.g., max q of 0.6 m/s³, transition provision): Non-compliance requires a formal **Departure** application to the Overseeing Organisation, approved before design is finalised (GG 101, clause 2.4).
- **"Should" recommendations** (e.g., q ≤ 0.3 m/s³): Non-compliance requires a **justification** including a safety risk assessment, recorded by the design organisation (GG 101, clauses 2.12–2.15).
- **Relaxation steps** (Table UKH.5): Using radii below desirable minimum within the permitted number of steps is a **Relaxation**, which must be recorded with reasoning (GG 101, clauses 2.9–2.11).
- **Beyond permitted steps:** Requires a **Departure** application.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Any curve below desirable minimum (V²/R > 14.14) | Relaxation required | 🔺 FLAG — Curve R=[X]m gives V²/R=[Y], which is [N] step(s) below desirable minimum. Relaxation required per GG 101. |
| Curve beyond permitted relaxation steps | Departure required | 🔺 SENIOR REVIEW — Curve R=[X]m exceeds permitted relaxation steps for [road type, band]. Departure from Standards application required. |
| Isolated sharp curve following gentle alignment | Safety risk — speed may exceed design speed at curve | 🔺 SENIOR REVIEW — Curve R=[X]m is significantly sharper than adjacent alignment. Risk of driver error. Consider speed management or increased signing. |
| Transition q exceeds 0.3 m/s³ | Above advisory limit | 🔺 NOTE — Transition rate q=[X] m/s³ exceeds the advisory 0.3 m/s³ (within mandatory 0.6 limit). Justification and safety risk assessment required per GG 101. |

---

## M.7 Worked Example — UK

### Example: All-purpose Single Carriageway (S2), Design Speed 100A km/h

**Given:**
- Road type: All-purpose single carriageway (S2), rural
- Design speed: 100A km/h
- Proposed curve radius: 600 m
- Context: New alignment, rural trunk road, National Highways

**Solution:**

**Step 1 — Calculate V²/R:**
V²/R = 100² / 600 = 10000 / 600 = **16.67**

**Step 2 — Identify compliance level from Table UKH.1:**
At 100 km/h:
- Desirable minimum R (V²/R = 14.14) = 720 m
- One step below (V²/R = 20) = 510 m
- Two steps below (V²/R = 28.28) = 360 m

600 m is between 720 m (desirable) and 510 m (one step below).
V²/R = 16.67 is between 14.14 and 20.
→ **One step below desirable minimum. Relaxation required.**

**Step 3 — Check permitted relaxations:**
All-purpose, Band A → 3 steps permitted (Table UKH.5).
We're at 1 step below → ✅ Within permitted relaxation.

**Step 4 — Calculate superelevation:**
S = V² / (2.828 × R) = 10000 / (2.828 × 600) = 10000 / 1696.8 = **5.89%**
Within rural maximum of 7% → ✅

**Step 5 — Calculate transition length:**
Using q = 0.3 m/s³ (advisory):
L = V³ / (46.7 × q × R) = 1,000,000 / (46.7 × 0.3 × 600) = 1,000,000 / 8,406 = **119 m**

Check: √(24 × 600) = √14400 = **120 m**
119 m < 120 m → Use calculated value: **119 m**

**Step 6 — Curve widening:**
R = 600 m > 150 m → No widening required (CD 109 clause 4.10).

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Design speed | 100A km/h | |
| Proposed radius | 600 m | |
| V²/R | 16.67 | One step below desirable minimum |
| Desirable min R | 720 m | |
| Superelevation | 5.89% | ✅ Within 7% max |
| Transition length | 119 m | ✅ q = 0.3 m/s³ |
| Widening | None required | |
| Compliance | **Relaxation** | Record justification per GG 101 |

---

## M.8 References

1. National Highways, *CD 109 Highway Link Design*, Revision 1, March 2020, Sections 2 and 4.
2. National Highways, *GG 101 Introduction to the Design Manual for Roads and Bridges*, Version 0.1.0, September 2021, Section 2.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-17 | AI draft | Initial draft — Tables UKH.1 through UKH.7 verified against CD 109 Rev 1. Superelevation formula, transition formula, and relaxation process verified against CD 109 and GG 101. |
