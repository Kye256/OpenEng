# Pavement Material Specifications -- Uganda Module

> **Parent Skill:** #24 Pavement Material Specifications
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual Vol 3 Part I (2010), Appendix A; Vol 3 Part III (2010), Section 6
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Vol 3 Part I: Flexible Pavements | January 2010 | Appendix A (Tables A.1-A.4), Table 5.1, Sections 6.2-6.8 | Current |
| MoWT Vol 3 Part III: Gravel Roads | January 2010 | Section 6 (gravel wearing course specs) | Current |
| MoWT General Specifications for Road and Bridge Works | January 2005 | Sections 3700, 3900 (material requirements) | Current |

### M.1.2 Institutional Context

MoWT General Specifications provide the contractual requirements. Appendix A in the design manual provides design guidance that supplements the General Specifications.

### M.1.3 Standard Philosophy

Specification requirements are minimum values. Materials exceeding specifications are preferred. The manual acknowledges that marginal materials may be acceptable for low-traffic roads with local performance evidence.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table 5.1: Material Strength Classification (Verified against PDF p5-2)**

| Code | Layer | Material | Strength Requirement |
|------|-------|----------|---------------------|
| G80 | Base | Granular | Soaked CBR > 80% @ 98% mod. AASHTO density |
| G30 | Subbase | Granular | Soaked CBR > 30% @ 95% mod. AASHTO density |
| G15 | Capping | Granular | Soaked CBR > 15% @ 93% mod. AASHTO density |
| C1 | Base | Cemented | 7-day UCS 1.5-3.0 MPa @ 100% mod. AASHTO density |
| C2/C3 | Subbase | Cemented | 7-day UCS 0.75-1.5 MPa @ 100% mod. AASHTO density |

--> Full specifications: `tables/uganda_material_specifications.json`

**Granular Base Requirements (Appendix A, Section A.2.1):**
- Crushed stone: CBR > 80%, PI < 6, linear shrinkage < 3, grading per Section 3900
- Natural gravel: CBR > 80% at probable in-situ density, PI < 6
- Fines should be non-plastic. Add non-plastic sand if insufficient fines from crushing.

**Gravel Wearing Course (Vol 3 Part III, Section 6):**
- Max particle size: 37.5 mm
- PI: 10-25 (tropical range -- lower PI = ravelling; higher PI = slippery)
- Shrinkage product < 250
- CBR > 15% at 93% mod. AASHTO MDD
- Grading modulus: 1.5-3.0

### M.2.2 Country-Specific Formulas

No formulas -- specification lookup.

### M.2.3 Classification System

Material classification follows MoWT G-codes (G80, G60, G45, G30, G15) and C-codes (C1, C2, C3).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

**Material availability in Uganda:**
- Western Uganda: good laterite gravels, limited crushed stone
- Central Uganda: quartzite aggregate near Kampala
- Northern Uganda: limited natural gravel sources
- Eastern Uganda: volcanic materials near Mt. Elgon

### M.3.2 Professional Judgment (Uganda-Specific)

**Laterite gravels are the backbone of Uganda road construction.** Most district and national roads use laterite gravel for base and subbase. These materials often have PI > 6 but perform well in Uganda conditions when properly compacted.

**Cement supply chain can be unreliable outside major towns.** When specifying cemented layers, verify cement availability and storage facilities at the project location.

### M.3.3 Common Errors (Uganda-Specific)

1. **Rejecting laterite gravel with PI of 8-10 for base when it has proven performance locally.** MoWT allows engineer discretion for marginal materials on T1-T2 traffic roads.
2. **Not distinguishing Standard Proctor from Modified AASHTO compaction for CBR testing.** Table 3.2 specifies Standard Proctor for subgrade CBR, Modified AASHTO for base/subbase.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Compaction (base) | 98% mod. AASHTO | Not specified | No flag | Table 5.1 |
| Compaction (subbase) | 95% mod. AASHTO | Not specified | No flag | Table 5.1 |
| CBR condition | Soaked | Not specified | ASSUMED: Soaked CBR | Conservative |

---

## M.5 Country-Specific Validation

### M.5.1 Standards Compliance Checks

- **Check:** Base CBR >= 80% at correct compaction standard
- **Check:** PI <= 6 for base materials (unless engineer-approved relaxation)
- **Check:** Cemented base UCS within 1.5-3.0 MPa range (both bounds critical)

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Base CBR 60-80% | Below G80 requirement | SENIOR REVIEW -- Consider treatment or use for subbase only. |
| PI > 6 for base material | Exceeds specification | NOTE -- May be acceptable for T1-T2 with local performance evidence. Engineer to assess. |

---

## M.7 Worked Example -- Uganda

### Example: Crushed Stone Base for T5 Traffic

**Given:**
- Pavement design from Skill #21: D4 chart, T5, S3
- Base layer: crushed stone G80
- Material test results: CBR = 95%, PI = 4, grading within envelope

**Assessment:**
- CBR 95% > 80% requirement: **PASS**
- PI 4 < 6: **PASS**
- Compaction standard: Modified AASHTO confirmed: **PASS**
- Grading: within Section 3900 envelope: **PASS**

Material meets all G80 specifications for crushed stone base.

---

## M.8 References

1. MoWT, *Road Design Manual Vol 3 Part I*, January 2010, Appendix A and Table 5.1.
2. MoWT, *Road Design Manual Vol 3 Part III*, January 2010, Section 6.
3. MoWT, *General Specifications for Road and Bridge Works*, January 2005, Sections 3700, 3900.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Table 5.1 and Appendix A specs verified against PDF |
