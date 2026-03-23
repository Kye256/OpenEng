# Soil Classification -- Uganda Module

> **Parent Skill:** #8 Soil Classification
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol 3 Part I (2010); AASHTO M 145
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 3 Part I | 2010 | Section 3.0 (Subgrade), Appendix A (Materials) | Current |
| AASHTO M 145 | Current | Classification of Soils and Soil-Aggregate Mixtures | Reference standard for AASHTO system |
| AASHTO T 89 / T 90 | Current | Atterberg Limits (LL, PL) | Test methods |
| AASHTO T 88 | Current | Particle Size Analysis | Test method |

### M.1.2 Institutional Context

Soil classification for road projects in Uganda uses the AASHTO system as the primary classification method. The MoWT Pavement Design Manual references AASHTO classification for subgrade assessment and material specifications. USCS may be used supplementarily for geotechnical reporting but is not the basis for MoWT pavement design decisions.

### M.1.3 Standard Philosophy

The MoWT manual takes a practical approach to soil classification, focusing on the properties most relevant to road construction: CBR strength, plasticity (PI), and grading. Classification is used to determine subgrade class (Table 3.1) and to assess material suitability for different pavement layers (Table 5.1 and Appendix A).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Common Uganda Soil Types and Typical AASHTO Classifications:**

| Soil Type | Typical Location | AASHTO Group | Typical PI | Typical CBR (soaked) | Engineering Notes |
|-----------|-----------------|-------------|------------|---------------------|-------------------|
| Laterite (murram) -- good quality | Central, Southern Uganda | A-2-4 to A-2-6 | 8-20 | 15-40% | Excellent road-building material when properly graded |
| Laterite (murram) -- moderate | Central Uganda | A-2-6 to A-2-7 | 15-25 | 8-20% | Suitable for subbase, marginal for base |
| Laterite -- high plasticity | Various | A-7-5 | 20-35 | 3-10% | Poor subgrade unless treated |
| Black cotton soil | Karamoja, Eastern Uganda | A-7-5 to A-7-6 | 30-60+ | 1-3% | Expansive, very poor subgrade, requires treatment/replacement |
| Sandy soils | Northern Uganda, lakeshores | A-3, A-2-4 | NP-5 | 5-15% | Low bearing capacity when loose, improve with compaction |
| Alluvial deposits | River valleys, flood plains | A-4 to A-6 | 10-25 | 3-15% | Variable, often soft when wet |
| Residual rock (granite/gneiss) | Jinja, Tororo, Mubende | A-1-a to A-2-4 | NP-10 | 30-80+% | Excellent subgrade/base material |

*(Based on typical Uganda road project data and MoWT Appendix A guidance)*

**MoWT Material Requirements (from Table 5.1 and Appendix A):**

| Layer | Material | Minimum CBR | Compaction | PI Limit | Source |
|-------|----------|-------------|------------|----------|--------|
| Base (granular) | Natural or crushed gravel | Soaked CBR > 80% | 98% mod. AASHTO MDD | PI < 6, LS < 3 | Table 5.1, Appendix A.2.1 |
| Subbase (granular) | Natural gravel | Soaked CBR > 30% | 95% mod. AASHTO MDD | Generally PI < 12 | Table 5.1, Appendix A.2.2 |
| Capping/Selected layer | Natural soil | Soaked CBR > 15% | 93% mod. AASHTO MDD | No specific limit | Table 5.1, Appendix A.2.3 |

*(Verified from MoWT Vol 3 Part I, Table 5.1 and Appendix A)*

### M.2.2 Country-Specific Formulas

No Uganda-specific classification formulas beyond the standard AASHTO Group Index formula in the core skill.

### M.2.3 Classification System

Uganda uses AASHTO classification for road design:

| Group | General Description | Subgrade Rating |
|-------|-------------------|-----------------|
| A-1-a | Stone fragments, gravel, sand | Excellent |
| A-1-b | Gravel, coarse sand | Excellent |
| A-2-4 | Silty gravel and sand | Good to excellent |
| A-2-5 | Silty gravel and sand (high LL) | Fair to good |
| A-2-6 | Clayey gravel and sand | Fair |
| A-2-7 | Clayey gravel and sand (high LL) | Fair to poor |
| A-3 | Fine sand | Fair |
| A-4 | Silty soils | Poor |
| A-5 | Silty soils (high LL, elastic) | Poor |
| A-6 | Clayey soils | Poor |
| A-7-5 | Clayey soils (LL-30 >= PI) | Poor to very poor |
| A-7-6 | Clayey soils (LL-30 < PI, expansive) | Very poor |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Classification system
  -> AASHTO (primary) for all road design purposes
  -> USCS may be reported supplementarily

Step 4a (Uganda): Laterite classification
  |-- Laterite requires careful grading analysis
  |-- Grade on compacted sample (laterite aggregations break down)
  |-- Compare pre- and post-compaction grading if available
  +-- Natural laterite may classify better than compacted laterite

Step 5a (Uganda): Identify problem soils
  |-- PI > 30 and dark colour -> possible black cotton soil (A-7-5 or A-7-6)
  |   -> Flag for swell test and linear shrinkage
  |-- Activity > 1.25 -> potentially expansive
  |-- Organic matter (dark colour, organic smell, high natural moisture)
  |   -> Flag as unsuitable for subgrade
  +-- Collapsible sands (northern Uganda) -> Flag for collapse potential test
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Laterite (murram) is the most important road-building material in Uganda.** Classification of laterite requires understanding that standard AASHTO classification may underestimate its performance. Laterite particles are often cemented iron-oxide aggregations that behave like gravel in the field but break down to finer particles during compaction. The practical approach is to classify laterite based on post-compaction grading and to rely on CBR testing as the primary performance indicator.

**A-2-6 laterite is the "sweet spot" for Uganda roads.** Most good-quality murram classifies as A-2-6 -- enough fines for binding but not so plastic as to be problematic. Material with PI > 20 or moving towards A-7 territory requires careful assessment.

**Black cotton soil identification in the field:** Dark grey to black colour, surface cracking pattern in dry season, extremely sticky when wet. Common in Karamoja (Moroto, Kotido, Kaabong), parts of Teso, and scattered locations elsewhere. Always classify as A-7-5 or A-7-6 and flag for subgrade treatment.

### M.3.3 Common Errors (Uganda-Specific)

1. **Classifying laterite from dry sieve analysis only.** Wet sieving is essential for lateritic soils to separate the true fines from the cemented aggregations.
2. **Not distinguishing A-7-5 from A-7-6.** In Uganda, A-7-6 (LL-30 < PI, i.e., very high PI relative to LL) is the dangerous expansive clay. A-7-5 may still perform adequately as subgrade if PI is moderate.
3. **Assuming all red soil is good laterite.** Red colour indicates iron oxide but does not guarantee adequate CBR or grading. Lab testing is always required.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Classification system | AASHTO | Not specified | ASSUMED: AASHTO classification per MoWT standard | MoWT uses AASHTO for pavement design |
| Grading method | Wet sieving after compaction | Lateritic soil | ASSUMED: Wet sieve on compacted sample for laterite classification | Laterite aggregations break down during compaction |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| PI for base material | 0 | 6 | % | MoWT Appendix A.2.1 | Fail if PI > 6 (does not meet base specification) |
| PI for subbase | 0 | 12 | % | MoWT Appendix A.2.2 | Warn if PI > 12 (marginal for subbase) |
| CBR for base (soaked) | 80 | -- | % | MoWT Table 5.1 | Fail if CBR < 80% (does not meet base specification) |
| CBR for subbase (soaked) | 30 | -- | % | MoWT Table 5.1 | Fail if CBR < 30% (does not meet subbase specification) |

### M.5.2 Standards Compliance Checks

- **Check:** Material classified as base meets PI and CBR requirements per MoWT Appendix A.
- **Standard:** MoWT Vol 3 Part I, Table 5.1 and Appendix A
- **Pass condition:** Soaked CBR >= 80% at 98% mod. AASHTO MDD, PI <= 6
- **Fail action:** Material does not meet base specification. Recommend crushing, blending, or stabilisation.

### M.5.3 Departures / Relaxations Process

No formal departures process. Material not meeting specifications may be considered for use with engineering justification (e.g., for low-traffic roads T1-T2, some relaxation of base PI requirements may be acceptable per MoWT Appendix A).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Soil classified as A-7-6 | Expansive clay -- high risk as subgrade | SENIOR REVIEW -- Expansive soil (A-7-6) at [depth]. Subgrade treatment required (removal, lime treatment, or pioneer layer). |
| PI > 40 | Very high plasticity -- extreme swell potential | SENIOR REVIEW -- PI = [X]% exceeds 40. Specialist geotechnical assessment required for subgrade design. |
| Laterite changes classification between pre- and post-compaction grading | Aggregation breakdown significant | NOTE -- Laterite classification changes from [pre] to [post] after compaction. Use post-compaction classification for design. |

---

## M.7 Worked Example -- Uganda

### Example: Classify Soils from a Borehole Log on a Uganda Road Project

**Source:** Hypothetical, based on typical Uganda road project data.

**Given:**
- Project: Jinja-Iganga Road, Test Pit TP-12 at chainage 8+500
- Depth: 0.0 - 2.0 m
- Field description: Reddish-brown lateritic gravelly clay, firm, with some quartz gravel fragments

**Laboratory test results:**

| Depth (m) | LL (%) | PL (%) | PI (%) | % passing 0.075 mm | % passing 2.0 mm | % passing 4.75 mm |
|-----------|--------|--------|--------|---------------------|-------------------|-------------------|
| 0.0 - 0.5 | 38 | 20 | 18 | 28 | 55 | 70 |
| 0.5 - 1.0 | 42 | 22 | 20 | 35 | 60 | 75 |
| 1.0 - 1.5 | 45 | 21 | 24 | 42 | 68 | 82 |
| 1.5 - 2.0 | 52 | 24 | 28 | 48 | 72 | 88 |

**Solution:**

**Sample 1 (0.0 - 0.5 m):**
- % passing No. 200 (0.075 mm) = 28% (< 35% -> A-1 to A-3 range)
- LL = 38, PI = 18 -> PI > 11 -> A-2-6 (clayey gravel and sand)
- GI = (28-35)[0.2+0.005(38-40)] + 0.01(28-15)(18-10) = (negative)(0.19) + 0.01(13)(8) = 0 + 1.04 = **1**
- USCS: % > 0.075 mm = 72% (coarse-grained). % gravel (> 4.75mm) = 30%. Sand = 42%. Fines = 28%. PI = 18, LL = 38 -> above A-line, LL < 50 -> CL fines. Dual symbol: **SC** (clayey sand).
- Classification: **AASHTO A-2-6 (GI = 1) / USCS SC**

**Sample 2 (0.5 - 1.0 m):**
- % passing No. 200 = 35% (borderline)
- LL = 42, PI = 20 -> A-2-6
- GI = (35-35)[0.2+0.005(42-40)] + 0.01(35-15)(20-10) = 0 + 0.01(20)(10) = **2**
- Classification: **AASHTO A-2-6 (GI = 2) / USCS SC**

**Sample 3 (1.0 - 1.5 m):**
- % passing No. 200 = 42% (> 35% -> A-4 to A-7 range)
- LL = 45, PI = 24 -> PI > 11, LL > 41 -> Check A-7: LL - 30 = 15, PI = 24 -> LL-30 < PI -> **A-7-6**
- GI = (42-35)[0.2+0.005(45-40)] + 0.01(42-15)(24-10) = 7(0.225) + 0.01(27)(14) = 1.58 + 3.78 = **5**
- Classification: **AASHTO A-7-6 (GI = 5) / USCS CL**

**Sample 4 (1.5 - 2.0 m):**
- % passing No. 200 = 48%
- LL = 52, PI = 28 -> LL - 30 = 22, PI = 28 -> LL-30 < PI -> **A-7-6**
- GI = (48-35)[0.2+0.005(52-40)] + 0.01(48-15)(28-10) = 13(0.26) + 0.01(33)(18) = 3.38 + 5.94 = **9**
- Classification: **AASHTO A-7-6 (GI = 9) / USCS CH**

**Soil Profile:**

| Depth (m) | Description | AASHTO | GI | USCS | LL | PI | Subgrade Suitability |
|-----------|-------------|--------|-----|------|----|----|---------------------|
| 0.0-0.5 | Reddish-brown lateritic gravelly clay | A-2-6 | 1 | SC | 38 | 18 | Good -- suitable for subgrade (S4-S5 range) |
| 0.5-1.0 | Reddish-brown lateritic gravelly clay | A-2-6 | 2 | SC | 42 | 20 | Fair -- suitable for subgrade (S3-S4 range) |
| 1.0-1.5 | Reddish-brown high-plasticity clay | A-7-6 | 5 | CL | 45 | 24 | Poor -- flag for swell potential |
| 1.5-2.0 | Brown high-plasticity clay | A-7-6 | 9 | CH | 52 | 28 | Very poor -- expansive, requires treatment |

**Escalation:** SENIOR REVIEW -- Soil transitions from A-2-6 to A-7-6 below 1.0 m depth. Lower stratum has PI = 24-28 indicating potential expansive clay. Recommend swell test and consider subgrade replacement or lime treatment below 1.0 m.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3: Pavement Design, Part I: Flexible Pavements*, January 2010.
2. AASHTO, *M 145: Classification of Soils and Soil-Aggregate Mixtures for Highway Construction Purposes*, current edition.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft -- material requirements verified against MoWT Vol 3 Part I Table 5.1 and Appendix A |
