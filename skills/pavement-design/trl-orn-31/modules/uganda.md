# TRL ORN 31 Pavement Design -- Uganda Module

> **Parent Skill:** #23 TRL ORN 31 Pavement Design
> **Country/Jurisdiction:** Uganda
> **Standards:** TRL Road Note 31, 5th Edition (December 2022)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| TRL Road Note 31 | 5th Edition, December 2022 | Chapters 2-3 (traffic/subgrade), Ch 8 (flexible design), Ch 9 (catalogues) | Current |

### M.1.2 Institutional Context

ORN 31 is not the official Uganda design standard (MoWT is), but it is widely used as a reference and cross-check. MoWT Vol 3 Part I itself acknowledges its heritage from ORN 31 and SATCC. UNRA engineers frequently reference ORN 31 for community access roads and when DCP is the primary investigation method.

### M.1.3 Standard Philosophy

ORN 31 provides design catalogues for tropical and sub-tropical conditions with specific attention to climate effects, material quality variability, and construction challenges common in developing countries. The 5th Edition significantly updates the approach with climate resilience (Chapter 7), extended traffic range to 80 MESA, and new materials guidance.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table 3-9: Subgrade Classes (ORN 31 -- DIFFERENT from MoWT Table 3.1)**

| Class | S1 | S2 | S3 | S4 | S5 | S6 |
|-------|----|----|----|----|----|----|
| CBR (%) Range | < 3 | 3-4 | 5-7 | 8-14 | 15-30 | > 30 |

--> Full data: `tables/orn31_subgrade_classes.json`

**CRITICAL NOTE:** ORN 31 S1 covers CBR < 3%, while MoWT S1 covers CBR <= 2%. A subgrade with CBR 2.5% would be S1 in ORN 31 but S2 in MoWT. Always use the correct system for the method being applied.

**Table 8-1: Foundation Classes**

| Class | CBR Range | Stiffness (MPa) | Capping Required? |
|-------|-----------|-----------------|-------------------|
| F1 | < 3% | < 25 | Yes |
| F2 | 3-7% | 25-50 | Yes |
| F3 | 8-14% | 50-100 | No |
| F4 | >= 15% | > 100 | No |

--> Structure catalogues: `tables/orn31_structure_catalogues.json`

**Traffic Bands (ORN 31 5th Edition):**

| Band | T1 | T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 |
|------|----|----|----|----|----|----|----|----|----|----|
| MESA | <0.3 | 0.3-0.7 | 0.7-1.5 | 1.5-3 | 3-6 | 6-10 | 10-17 | 17-30 | 30-50 | 50-80 |

Note: T9-T10 are new in 5th Edition (extends from 30 to 80 MESA).

### M.2.2 Country-Specific Formulas

No country-specific formulas -- catalogue-based lookup.

### M.2.3 Classification System

ORN 31 does not prescribe a road classification system -- it uses traffic bands directly.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
When to use ORN 31 in Uganda:
  |-- Community access roads where DCP is primary investigation
  |-- Cross-checking MoWT catalogue designs
  |-- When MoWT guidance is insufficient (e.g., climate resilience)
  |-- For roads with traffic > 30 MESA (T9-T10, beyond MoWT range)
  +-- When specified by project terms of reference
```

### M.3.2 Professional Judgment (Uganda-Specific)

**MoWT and ORN 31 heritage:** MoWT Vol 3 Part I was based on the earlier ORN 31 (pre-5th Edition) and SATCC guidelines. The 5th Edition has diverged with new traffic bands, climate chapter, and updated material specifications. For most Uganda projects, MoWT is the primary reference and ORN 31 serves as supporting reference.

**DCP data is abundant in Uganda.** UNRA routinely collects DCP data during network surveys. ORN 31's emphasis on DCP-based design makes it particularly useful for interpreting this data.

**Climate considerations are increasingly important.** Uganda experiences significant seasonal rainfall variation, and climate change is affecting rainfall patterns. ORN 31 Chapter 7 provides valuable guidance not available in MoWT.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using ORN 31 subgrade class S1 boundary (CBR < 3%) when MoWT (CBR <= 2%) is the design standard.** Always check which classification system applies.
2. **Mixing ORN 31 and MoWT structures in the same design.** Use one method consistently.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| DCP correlation | TRL standard cone | Not specified | ASSUMED: TRL standard DCP correlation | Verify apparatus type |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design ESAs | 100,000 | 80,000,000 | ESAs | ORN 31 5th Ed | Warn if > 80M (beyond ORN 31 range) |

### M.5.2 Standards Compliance Checks

- **Check:** ORN 31 Table 3-9 subgrade classes used (NOT MoWT Table 3.1)
- **Check:** Foundation class from Table 8-1 assessed
- **Check:** Traffic band from ORN 31 boundaries used

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| DCP-only data for trunk road | Limited confidence without lab CBR | SENIOR REVIEW -- Lab CBR confirmation recommended for Class I and II roads |

---

## M.7 Worked Example -- Uganda

### Example: Community Access Road, 0.5 MESA, CBR 10%

**Given:**
- Community access road in western Uganda
- Design ESAs: 0.5 million (from Skill #5)
- Design CBR: 10% from DCP testing (5 DCP profiles, 10th percentile CBR)
- DCP apparatus: TRL standard cone

**Solution:**

**Step 1 -- Traffic band:** 0.5 MESA falls in T2 (0.3-0.7 MESA).

**Step 2 -- Subgrade class (ORN 31 Table 3-9):** CBR 10% falls in S4 (8-14%).

**Step 3 -- Foundation class (Table 8-1):** CBR 10% is F3 (8-14%, stiffness 50-100 MPa). Capping NOT required.

**Step 4 -- Select structure from Chapter 9:**
Using granular base chart (Chart A) for T2, S4:
- Surfacing: surface dressing
- Roadbase: GB1 (crushed rock or high-standard natural gravel), 150 mm
- Sub-base: not required (F3 foundation, low traffic)

**Result:**

| Layer | Material | Thickness |
|-------|----------|-----------|
| Surfacing | Double surface dressing | -- |
| Roadbase | Natural gravel GB3 (CBR > 80%) | 150 mm |
| Sub-base | Not required | -- |
| Capping | Not required (F3 foundation) | -- |

NOTE -- DCP-CBR correlation used. Lab CBR confirmation recommended for formal design.

---

## M.8 References

1. TRL, *Road Note 31: A Guide to the Structural Design of Surfaced Roads in Tropical and Sub-Tropical Regions*, 5th Edition, December 2022.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Tables 3-9, 8-1 from ORN 31 5th Edition PDF |
