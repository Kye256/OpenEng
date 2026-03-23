# Vertical Alignment — UK Module

> **Parent Skill:** #15 Vertical Alignment
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 109 Highway Link Design (Revision 1, March 2020)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** —

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Version | Sections Referenced | Status |
|----------|--------------|---------|---------------------|--------|
| Highway link design | CD 109 | Rev 1 (Mar 2020) | Section 5 (Vertical alignment) | Current |
| Introduction to the DMRB | GG 101 | Version 0.1.0 (Sep 2021) | Section 2 (Departures) | Current |

### M.1.2 Institutional Context

Same as Skill #14 UK module. CD 109 is mandatory for trunk roads, widely adopted for local authority roads.

### M.1.3 Standard Philosophy

CD 109 uses the same L = K x A formula as MoWT, but with different K-values derived from UK-specific eye/object heights and design speeds. The standard provides K-values in Table 2.10 alongside horizontal curvature and SSD parameters, creating an integrated design speed-related parameter table. Gradient limits are given by road type (motorway, all-purpose dual, all-purpose single) rather than by terrain class. A formal relaxation system with defined step counts allows controlled departures from desirable standards.

**Key difference from MoWT:** DMRB has separate relaxation rules for crest curves (Table 5.7) and sag curves (Table 5.9), with sag curves having more restricted relaxation on motorways (none permitted).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UKV.1: CD 109 Table 2.10 -- K-Values (Verified)**

| Design Speed (km/h) | 120 | 100 | 85 | 70 | 60 | 50 |
|---------------------|-----|-----|----|----|----|----|
| Desirable min crest K | 182 | 100 | 55 | 30 | 17 | 10 |
| One step below desirable crest K | 100 | 55 | 30 | 17 | 10 | 6.5 |
| Desirable min sag K | 37 | 26 | 20 | 20 | 13 | 9 |

**Source:** CD 109, Table 2.10, p15 (Verified against uploaded document).

Note: Crest K-values have a "one step below desirable minimum" value; sag K-values have only a desirable minimum (relaxation rules in Table 5.9 determine how many steps below are permitted).

**Table UKV.2: CD 109 Table 5.1 -- Maximum Gradients (Verified)**

| Road Type | Desirable Maximum | Permitted Relaxation |
|-----------|-------------------|---------------------|
| Motorways | 3% | 4% |
| All-purpose dual carriageways | 4% | 8% |
| All-purpose single carriageways | 6% | 8% |

**Source:** CD 109, Table 5.1, p23 (Verified).

Minimum gradient: 0.5% on kerbed roads (cl. 5.2).

**Table UKV.3: CD 109 Table 5.7 -- Crest Curve Relaxation Steps (Verified)**

| Road Type | Design Speed Band | Permitted Relaxation |
|-----------|-------------------|---------------------|
| Motorways | Band A | 1 step |
| Motorways | Band B | 2 steps |
| All-purpose | Band A | 2 steps |
| All-purpose | Band B | 3 steps |

**Source:** CD 109, Table 5.7, p24 (Verified).

Additional provisions (cl. 5.7):
- On single carriageways with uphill gradients >4% and grade length >1.5 km, relaxation scope may be extended by 1 step (reduced speeds uphill).
- For Band A roads with a crest within a straight section, relaxation scope may be extended by 1 design speed step.
- Following an overtaking section on single carriageways, permitted relaxations are reduced by 1 step (cl. 5.8).

**Table UKV.4: CD 109 Table 5.9 -- Sag Curve Relaxation Steps (Verified)**

| Road Type | Permitted Relaxation |
|-----------|---------------------|
| Motorways | None |
| All-purpose 50B, 60B, and 70B | 2 steps |
| All-purpose all others | 1 step |

**Source:** CD 109, Table 5.9, p24 (Verified).

Sag curve relaxation extended by 1 design speed step where the road is illuminated at design speeds of 70 km/h and less (cl. 5.10).

**IMPORTANT:** Sag curve relaxation rules differ significantly from crest curve rules. Motorways get NO relaxation for sag curves (unlike 1-2 steps for crests). This is a common source of errors.

**Climbing lanes (CD 109 Note to cl. 5.1.1):** Climbing lanes can be appropriate for gradients above 2% on single carriageways and for gradients of 3% and above on dual carriageways. Detailed guidance is in CD 109 Sections 7 and 8.

### M.2.2 Country-Specific Formulas

**Vertical curve length (CD 109 -- same formula as universal):**

```
L = K x A
```

Where K is from Table 2.10 and A is the algebraic grade change (%).

**Example from CD 109 (cl. 5.4, Note 1, Verified):**
A road with design speed 120 km/h connects a +3% gradient with a -2% gradient. A = |+3 - (-2)| = 5%. Desirable minimum crest K = 182. L = 5 x 182 = **910 m**.

**Sag curve example (cl. 5.5, Note 1, Verified):**
A sag curve at 120 km/h with A = 5%: K = 37, L = 5 x 37 = **185 m**.

### M.2.3 Gradient Classification

CD 109 classifies gradients by road type, not by terrain:
- **Motorways:** 3% desirable, 4% maximum
- **All-purpose dual:** 4% desirable, 8% maximum
- **All-purpose single:** 6% desirable, 8% maximum

This reflects the UK's approach of designing to road function rather than terrain class. The assumption is that road type selection has already accounted for terrain (a motorway would not normally be built in terrain requiring >4% gradients).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Maximum gradient
  |-- Determine road type (motorway / all-purpose dual / all-purpose single)
  |-- Look up desirable maximum and permitted relaxation from Table UKV.2
  +-- Report both values

Step 4 (UK): K-value selection
  |-- For crest curves:
  |    |-- Desirable minimum K from Table UKV.1
  |    |-- One step below desirable from Table UKV.1
  |    |-- Check permitted relaxation steps from Table UKV.3
  |    +-- Report which step the design achieves
  |-- For sag curves:
  |    |-- Desirable minimum K from Table UKV.1
  |    |-- Check permitted relaxation steps from Table UKV.4
  |    |-- CRITICAL: Motorways have NO sag curve relaxation
  |    +-- Report compliance level
  +-- Note: Sag K-values use design speed step concept differently

Step 5 (UK): Calculate curve length
  |-- L = K x A
  |-- No separate L_min rule in CD 109 (the K-value system inherently
  |    produces adequate lengths)
  +-- Report curve length
```

### M.3.2 Professional Judgment (UK-Specific)

**The separate crest/sag relaxation systems are a key DMRB feature.** Engineers must check both tables independently. A design that is acceptable for a crest curve at a given road type and band may not be acceptable for a sag curve at the same location. This is particularly critical for motorways where sag curves have no relaxation.

**CD 109 Note 2 to clause 5.4 explains the rationale for crest K-values:** Crest curvature affects both visibility (driver cannot see over the crest) and comfort (vehicle becomes "light" over the crest). Visibility is the primary criterion; comfort is usually satisfied by the sight-distance-based K-values.

**CD 109 Note 2 to clause 5.5 explains sag curve design:** Sag curves based on desirable minimum K-values do not usually restrict stopping sight distance (unless overbridges, signs, or structures are present). Road user comfort is usually affected before visibility — hence the different relaxation approach.

**The "shall" vs "should" distinction matters.** Gradient limits in Table 5.1 use "shall" (mandatory). Desirable K-values use the relaxation/departure system. Using a gradient above 4% on a motorway requires a Departure application per GG 101.

### M.3.3 Common Errors (UK-Specific)

1. **Applying crest curve relaxation rules to sag curves.** The relaxation tables are different. Motorways have 1-2 steps for crests but NONE for sags. This error can lead to non-compliant sag curve designs.
2. **Not recording relaxation justifications.** GG 101 requires that any deviation from a "should" clause is justified and recorded with a safety risk assessment. Using one-step-below K-values is a relaxation that must be documented.
3. **Confusing "desirable maximum gradient" with "permitted relaxation."** Table 5.1 gives desirable and permitted relaxation values. The desirable maximum is a "should" requirement; the permitted relaxation is the absolute limit enforced by "shall."
4. **Forgetting the overtaking section reduction.** After an overtaking section on single carriageways, crest curve relaxation steps are reduced by 1 (cl. 5.8). This catches out designers who apply the standard relaxation everywhere.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Road type | From Skill #13 | Not specified | ASSUMED: Road type from Skill #13 output | Required for gradient and K-value lookup |
| Design speed band | From Skill #13 | Not specified | ASSUMED: Band from Skill #13 output | Required for relaxation step count |
| Min gradient (kerbed) | 0.5% | Kerbed roads | ASSUMED: Min gradient 0.5% for drainage (CD 109 cl. 5.2) | Verified from CD 109 |
| K-value target | Desirable minimum | Not specified | No flag (conservative) | Best practice per CD 109 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Gradient (motorway) | 0.5 (kerbed) | 4 | % | CD 109 Table 5.1, cl. 5.2 | Reject if > 4% ("shall" requirement) |
| Gradient (AP dual) | 0.5 (kerbed) | 8 | % | CD 109 Table 5.1 | Warn if > 4% (desirable); reject if > 8% |
| Gradient (AP single) | 0.5 (kerbed) | 8 | % | CD 109 Table 5.1 | Warn if > 6% (desirable); reject if > 8% |
| Crest K | Per Table UKV.1 (with permitted relaxation) | -- | m/% | CD 109 Table 2.10 | Flag if below permitted relaxation level |
| Sag K | Per Table UKV.1 (with Table UKV.4 relaxation) | -- | m/% | CD 109 Table 2.10 | Flag if below; CRITICAL on motorways (no relaxation) |

### M.5.2 Standards Compliance Checks

For each vertical curve, report compliance level:

**Crest curves:**
- K >= desirable minimum (Table UKV.1) --> Desirable
- K >= one step below (Table UKV.1) --> 1 step below. Check Table UKV.3 for permitted steps.
- K < one step below --> 2+ steps below. Check Table UKV.3 and cl. 5.7 provisions.
- K below all permitted relaxation --> Departure required.

**Sag curves:**
- K >= desirable minimum (Table UKV.1) --> Desirable
- K < desirable minimum:
  - Motorways --> Departure required (no relaxation per Table UKV.4)
  - All-purpose 50B/60B/70B --> up to 2 steps permitted
  - All-purpose others --> up to 1 step permitted
  - Check cl. 5.10 illumination provision for extension

### M.5.3 Departures / Relaxations Process

Per GG 101 (verified):

- **"Shall" requirements** (gradient limits): Non-compliance requires a formal **Departure** application to the Overseeing Organisation, approved before design is finalised (GG 101, clause 2.4).
- **K-value relaxations** (within permitted steps per Tables 5.7/5.9): Must be recorded with justification and safety risk assessment (GG 101, clauses 2.9-2.11).
- **K-value beyond permitted steps:** Requires a formal **Departure** application.
- **"Should" recommendations** (e.g., desirable maximum gradient): Non-compliance requires a justification including a safety risk assessment, recorded by the design organisation (GG 101, clauses 2.12-2.15).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Gradient > desirable maximum | Above recommended limit | FLAG -- Gradient [X]% exceeds desirable maximum [Y]% for [road type]. Justification and safety risk assessment required per GG 101. |
| Gradient > permitted relaxation | "Shall" requirement violated | SENIOR REVIEW -- Gradient [X]% exceeds permitted maximum [Y]% for [road type]. Departure from Standards application required. |
| Crest K below desirable minimum | Reduced sight distance | FLAG -- Crest K = [X] is [N] step(s) below desirable minimum [Y] for [speed] km/h. Relaxation per Table 5.7 [is/is not] permitted for [road type, band]. |
| Sag K below desirable minimum on motorway | No relaxation permitted | SENIOR REVIEW -- Sag K = [X] below desirable minimum [Y] on motorway. No relaxation permitted per Table 5.9. Departure required. |
| Sag K below desirable minimum on all-purpose | Relaxation may be permitted | FLAG -- Sag K = [X] below desirable minimum [Y] for [speed] km/h. Check Table 5.9 relaxation steps for [road type]. |

---

## M.7 Worked Example — UK

### Example: All-purpose Single Carriageway, 85A km/h, Crest Curve A = 6%

**Given:**
- Road type: All-purpose single carriageway (S2)
- Design speed: 85A km/h
- Crest curve with A = 6% (grades +4% to -2%)
- Rural trunk road, Band A

**Solution:**

**Step 1 -- Check gradient compliance:**
From Table UKV.2: All-purpose single carriageway --> desirable max 6%, permitted relaxation 8%.
- +4% grade: within desirable (6%) --> OK
- -2% grade: within desirable (6%) --> OK

**Step 2 -- Determine crest K-value:**
From Table UKV.1 at 85 km/h:
- Desirable min crest K = 55
- One step below = 30

**Step 3 -- Calculate curve length:**
L = K x A = 55 x 6 = **330 m** (using desirable K)

**Step 4 -- Check relaxation if constrained:**
If the designer proposes a shorter curve:
- At K = 30 (one step below): L = 30 x 6 = 180 m
- All-purpose Band A: 2 steps permitted (Table UKV.3)
- One step below is within permitted relaxation --> Relaxation, record justification

**Step 5 -- Check sag curve relaxation (for comparison):**
If this were a sag curve at the same location:
- Desirable min sag K = 20 (at 85 km/h)
- L = 20 x 6 = 120 m
- All-purpose, not 50B/60B/70B (it is 85A) --> 1 step relaxation permitted (Table UKV.4)

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Design speed | 85A km/h | |
| Road type | All-purpose single (S2) | |
| Gradient (+4%) | Within desirable 6% | Desirable |
| Crest K (desirable) | 55 | CD 109 Table 2.10 |
| Crest K (1 step below) | 30 | Available as relaxation |
| Curve length (desirable) | 330 m | L = 55 x 6 |
| Curve length (1 step below) | 180 m | L = 30 x 6 |
| Relaxation | 2 steps permitted (Band A) | Table 5.7 |

---

## M.8 References

1. National Highways, *CD 109 Highway Link Design*, Revision 1, March 2020, Section 5.
2. National Highways, *GG 101 Introduction to the Design Manual for Roads and Bridges*, Version 0.1.0, September 2021, Section 2.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft — K-values (Table 2.10), gradients (Table 5.1), crest relaxation (Table 5.7), sag relaxation (Table 5.9) verified against CD 109 Rev 1 PDF. |
