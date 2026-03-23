# Sight Distance — UK Module

> **Parent Skill:** #16 Sight Distance
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
| Highway link design | CD 109 | Rev 1 (Mar 2020) | Sections 2.10 (Table), 3 (Stopping sight distance) | Current |
| Introduction to the DMRB | GG 101 | Version 0.1.0 (Sep 2021) | Section 2 (Departures) | Current |

### M.1.2 Institutional Context

Same as Skill #14 UK module. CD 109 is mandatory for trunk roads, widely adopted for local authority roads.

### M.1.3 Standard Philosophy

DMRB takes a fundamentally different approach to sight distance from MoWT/AASHTO. Key differences:

1. **Eye and object heights use an "envelope of visibility" concept.** Instead of a single eye height (1.07 m in MoWT), DMRB specifies a range: eye height 1.05-2.00 m and object height 0.26-2.00 m. The design must ensure visibility for the ENTIRE envelope, meaning a driver at 1.05 m must be able to see an object of 0.26 m. This is more conservative than MoWT for small objects.

2. **SSD values are tabulated with "desirable minimum" and "one step below."** This integrates sight distance into the same relaxation/departure framework used for horizontal curvature and vertical alignment.

3. **FOSD (Full Overtaking Sight Distance)** replaces PSD. FOSD is longer than MoWT PSD and applies only to single carriageway roads. Not applicable at 120 km/h (motorway speeds).

4. **SSD values are NOT directly comparable to MoWT.** Different eye/object heights produce different SSD values even for the same speed and friction conditions. Do not mix DMRB and MoWT sight distance values.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UKSD.1: CD 109 Table 2.10 -- Stopping Sight Distance (Verified)**

| Design Speed (km/h) | 120 | 100 | 85 | 70 | 60 | 50 |
|---------------------|-----|-----|-----|-----|-----|-----|
| Desirable min SSD (m) | 295 | 215 | 160 | 120 | 90 | 70 |
| One step below desirable SSD (m) | 215 | 160 | 120 | 90 | 70 | 50 |

**Source:** CD 109, Table 2.10, p15 (Verified).

**Table UKSD.2: CD 109 Table 2.10 -- Full Overtaking Sight Distance (Verified)**

| Design Speed (km/h) | 100 | 85 | 70 | 60 | 50 |
|---------------------|-----|-----|-----|-----|-----|
| FOSD (m) | 580 | 490 | 410 | 345 | 290 |
| FOSD overtaking crest K | 400 | 285 | 200 | 142 | 100 |

**Source:** CD 109, Table 2.10, p15 (Verified). FOSD not applicable at 120 km/h (motorway speeds).

Note: FOSD crest K-values are MUCH larger than SSD crest K-values (e.g., 400 vs 100 at 100 km/h). This means providing FOSD on crests requires very long, gentle curves.

**Measurement Parameters:**

| Parameter | Value | Source |
|-----------|-------|--------|
| Eye height (range) | 1.05 - 2.00 m | CD 109 Section 3.1 |
| Object height (range) | 0.26 - 2.00 m | CD 109 Section 3.1 |
| Concept | Envelope of visibility | CD 109 Section 3.1 |

**Key difference from MoWT:** DMRB does NOT use a single eye/object height pair. The envelope concept means checking visibility for the worst case within the range: a low eye height (1.05 m) to a low object (0.26 m). This produces a more conservative SSD design than using a single mid-range pair.

**Table UKSD.3: CD 109 Table 3.5 -- SSD Relaxation Steps (Verified)**

| Road Type | Design Speed Band | Permitted Relaxation (SSD) |
|-----------|-------------------|---------------------------|
| Motorways | Band A | 1 step |
| Motorways | Band B | 2 steps |
| All-purpose | Band A | 2 steps |
| All-purpose | Band B | 3 steps |

**Source:** CD 109, Table 3.5 (Verified).

Note: SSD relaxation steps follow the same pattern as horizontal curvature relaxation (Table 4.5) and crest curve relaxation (Table 5.7). This consistency makes the DMRB system easier to apply once understood.

### M.2.2 Country-Specific Formulas

CD 109 does not provide an explicit SSD formula for designers to apply. Instead, SSD values in Table 2.10 are derived from the standard's assumptions about reaction time, friction, and vehicle dynamics. The designer uses the tabulated values directly rather than computing from first principles.

**SSD check on vertical curves:** The K-values in Table 2.10 are derived to provide the desirable minimum SSD on crest curves. If K >= desirable minimum K, then SSD is provided. If K is below desirable minimum, the available SSD is reduced — check whether it remains above one-step-below SSD.

**Envelope of visibility check:** On any road section, sight distance must be adequate for:
- Eye at 1.05 m to object at 0.26 m (worst case for SSD)
- Eye at 2.00 m to object at 2.00 m (relevant for seeing high objects like vehicles)

The controlling case for SSD design is the 1.05/0.26 combination.

### M.2.3 Overtaking Considerations

**FOSD is the UK equivalent of PSD.** Key differences from MoWT PSD:
- FOSD values are generally longer than MoWT PSD for equivalent speeds
- FOSD is defined only for single carriageway roads (not applicable on motorways or dual carriageways)
- FOSD overtaking crest K-values are provided separately from SSD crest K-values — these are the K-values needed to see an oncoming vehicle over a crest
- CD 109 Note to cl. 2.10: "Not recommended for use in the design of single carriageways" — this refers to designing crest K-values for FOSD (which would require impractically long curves). Instead, FOSD availability is determined by the alignment and used to mark overtaking zones.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): SSD determination
  |-- Look up SSD from Table UKSD.1 for design speed
  |-- Report desirable minimum SSD
  |-- Report one-step-below SSD (for relaxation scenarios)
  +-- Do NOT use MoWT/AASHTO formula — use DMRB tabulated values

Step 3 (UK): Check SSD on vertical curves
  |-- Compare K-value from Skill #15 against Table UKV.1 (in Skill #15 UK module)
  |-- If K >= desirable min crest K --> Desirable SSD provided
  |-- If desirable min crest K > K >= one step below --> One step below SSD
  +-- If K < one step below --> Check relaxation steps per Table UKV.3

Step 4 (UK): FOSD determination (single carriageway only)
  |-- Look up FOSD from Table UKSD.2
  |-- Determine where FOSD is available on the alignment
  |    (depends on vertical and horizontal geometry)
  +-- Mark overtaking zones where FOSD is provided

Step 5 (UK): Check relaxation requirements
  |-- If SSD is below desirable minimum:
  |    |-- Check permitted relaxation steps from Table UKSD.3
  |    |-- Record justification per GG 101
  |    +-- If below all permitted steps --> Departure required
  +-- Report compliance level
```

### M.3.2 Professional Judgment (UK-Specific)

**The envelope of visibility is more conservative than a single eye/object height.** A design that meets MoWT SSD requirements (1.07/0.15 m) may not meet DMRB requirements (1.05/0.26 m envelope) because the DMRB object height of 0.26 m is higher than MoWT's 0.15 m, but the eye height of 1.05 m is lower than MoWT's 1.07 m. The net effect varies — do not assume equivalence.

**FOSD determines overtaking provision, not road design.** DMRB does not expect designers to provide crest K-values sufficient for FOSD (K=400 at 100 km/h would be impractical). Instead, the alignment is designed for SSD, and FOSD availability is determined as an output to mark overtaking zones.

**CD 109 Section 3 has extensive guidance on SSD checking.** Beyond the table values, Section 3 covers sight distance around bends, at junctions (cl. 3.6 — no relaxations on approaches to junctions), and in relation to vehicle restraint systems. These detailed clauses should be consulted for complex situations.

### M.3.3 Common Errors (UK-Specific)

1. **Designing crest K-values for FOSD instead of SSD.** FOSD K-values (Table UKSD.2) are for assessing overtaking availability, not for crest curve design. Crest curves are designed using SSD K-values (Table UKV.1 in Skill #15 UK module).
2. **Applying MoWT/AASHTO SSD formula to a UK design.** DMRB uses tabulated SSD values, not the AASHTO formula. The values are derived from different assumptions and are not interchangeable.
3. **Ignoring the envelope of visibility.** Checking only 1.05/0.26 m (or only 2.00/2.00 m) is insufficient. The full envelope must be considered, particularly where vertical and horizontal alignment interact.
4. **Not checking sight distance on junction approaches.** CD 109 cl. 3.6: "No relaxations to SSD shall be made on the immediate approaches to junctions." This is a "shall" requirement — mandatory.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| SSD | Desirable minimum from Table UKSD.1 | Not specified | No flag (conservative) | CD 109 Table 2.10 |
| Eye/object heights | 1.05/0.26 m (controlling case) | Not specified | No flag (standard value) | CD 109 Section 3.1 |
| Road type | From Skill #13 | Not specified | ASSUMED: Road type from Skill #13 output | Required for relaxation steps |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| SSD (desirable) | 70 (50 km/h) | 295 (120 km/h) | m | CD 109 Table 2.10 | Warn if outside range |
| FOSD | 290 (50 km/h) | 580 (100 km/h) | m | CD 109 Table 2.10 | Warn if outside range |

### M.5.2 Standards Compliance Checks

- **Check:** SSD >= desirable minimum for design speed
- **Standard:** CD 109 Table 2.10
- **Pass condition:** SSD >= desirable minimum
- **Fail action:** Check relaxation steps per Table UKSD.3. If within permitted steps: record relaxation and justification. If beyond permitted steps: SENIOR REVIEW -- Departure required.

- **Check:** SSD on junction approaches — no relaxation
- **Standard:** CD 109 cl. 3.6
- **Pass condition:** SSD on immediate junction approaches >= desirable minimum (no relaxation)
- **Fail action:** SENIOR REVIEW -- SSD relaxation on junction approach is not permitted per CD 109 cl. 3.6. Redesign required.

### M.5.3 Departures / Relaxations Process

Per GG 101 (verified):

- **SSD relaxation within permitted steps** (Table UKSD.3): Record justification and safety risk assessment per GG 101 clauses 2.9-2.11.
- **SSD beyond permitted steps:** Departure application required per GG 101 clause 2.4.
- **SSD on junction approaches:** No relaxation permitted ("shall" requirement, CD 109 cl. 3.6). Non-compliance requires Departure.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| SSD below desirable minimum | Reduced safety margin | FLAG -- SSD [X]m is [N] step(s) below desirable minimum [Y]m at [speed] km/h. Check permitted relaxation per Table 3.5. |
| SSD below all permitted relaxation | Departure required | SENIOR REVIEW -- SSD [X]m is beyond permitted relaxation for [road type, band]. Departure application required. |
| SSD relaxation on junction approach | "Shall" requirement violated | SENIOR REVIEW -- SSD relaxation on approach to junction at [location]. Not permitted per CD 109 cl. 3.6. Redesign required. |
| FOSD not available on single carriageway section | Overtaking not possible | NOTE -- FOSD not available between [X] and [Y]. Mark as no-overtaking zone. |

---

## M.7 Worked Example — UK

### Example: 100A km/h, Check SSD Adequacy for Crest Curve K = 70

**Given:**
- Road type: All-purpose single carriageway (S2)
- Design speed: 100A km/h
- Crest curve with K = 70 (from Skill #15)
- Rural trunk road

**Solution:**

**Step 1 -- SSD requirements:**
From Table UKSD.1 at 100 km/h:
- Desirable minimum SSD = 215 m
- One step below desirable SSD = 160 m

**Step 2 -- Check K-value against SSD K requirement:**
From Skill #15 UK module, Table UKV.1 at 100 km/h:
- Desirable minimum crest K = 100
- One step below desirable crest K = 55

The proposed K = 70 is:
- Below desirable minimum (100) -- so desirable SSD (215 m) is NOT provided
- Above one step below desirable (55) -- so one-step-below SSD (160 m) IS provided
- Status: **One step below desirable minimum**

**Step 3 -- Check permitted relaxation:**
All-purpose, Band A: 2 steps permitted (Table UKV.3, Skill #15 UK module).
We are at 1 step below -- within permitted relaxation.

**Step 4 -- Check FOSD:**
From Table UKSD.2 at 100 km/h:
- FOSD = 580 m, FOSD overtaking crest K = 400
- K = 70 is far below FOSD K of 400 -- FOSD NOT available on this crest
- Mark as no-overtaking zone over the crest

**Step 5 -- SSD relaxation documentation:**
Per GG 101: Record the relaxation with justification. The available SSD is approximately:
- With K = 70 at 100 km/h: SSD is between 160 m and 215 m (proportional to sqrt(K))
- Approximate available SSD = 215 x sqrt(70/100) = 215 x 0.837 = **180 m**
- This is above the one-step-below value of 160 m -- confirmed.

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Design speed | 100A km/h | |
| Crest K | 70 | One step below desirable |
| Desirable SSD | 215 m | NOT provided |
| One step below SSD | 160 m | Provided |
| Available SSD (approx) | ~180 m | Within relaxation |
| FOSD | 580 m | NOT available on crest |
| Relaxation | 1 step (2 permitted) | Compliant, record per GG 101 |

FLAG -- Crest K = 70 at 100A km/h is 1 step below desirable minimum K = 100. SSD relaxation to 1 step below desirable. Record justification and safety risk assessment per GG 101.

---

## M.8 References

1. National Highways, *CD 109 Highway Link Design*, Revision 1, March 2020, Sections 2.10 and 3.
2. National Highways, *GG 101 Introduction to the Design Manual for Roads and Bridges*, Version 0.1.0, September 2021, Section 2.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft — SSD and FOSD values (Table 2.10), SSD relaxation (Table 3.5), envelope of visibility concept (Section 3.1) verified against CD 109 Rev 1 PDF. |
