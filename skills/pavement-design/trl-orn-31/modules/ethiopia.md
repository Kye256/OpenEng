# TRL ORN 31 Pavement Design -- Ethiopia Module

> **Parent Skill:** #23 TRL ORN 31 Pavement Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Flexible Pavement Design Manual Vol I - 2013 (entire manual); TRL Overseas Road Note 31 (1993)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Flexible Pavement Design Manual Vol I | 2013 | Entire manual (Chapters 1-10, Appendices) | Current -- ERA's primary design standard |
| TRL Overseas Road Note 31 | 4th Edition, 1993 | Catalogue method, subgrade classification, traffic classification | Reference -- ERA's underlying technical source |
| TRL Overseas Road Note 31 | 5th Edition, 2022 | Updated traffic classes, climate chapter | Reference -- latest edition |

### M.1.2 Institutional Context

ERA is the sole national roads agency responsible for design standards for all federal roads. The ERA Pavement Design Manual Vol I acknowledges in its Acknowledgements section that it is based on TRL ORN 31. The manual was prepared with World Bank funding and represents an Ethiopian calibration of the ORN 31 approach.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and design class (DC1-DC8) system.

**ERA Pavement Vol I IS the Ethiopian application of TRL ORN 31.** It is not a separate or competing method. Engineers working in Ethiopia should use the ERA manual directly, not ORN 31. This module documents the specific departures and calibrations that make ERA's version distinct from the base ORN 31 method.

### M.1.3 ERA-ORN 31 Relationship

**Evolution path:**
1. **TRL ORN 31 (1st-3rd editions):** General tropical pavement design guide developed by TRL (UK)
2. **TRL ORN 31 4th Edition (1993):** Major revision establishing the catalogue method with traffic bands T1-T8, subgrade classes S1-S6, and design charts
3. **ERA Pavement Vol I (2013):** Ethiopian calibration of ORN 31 with modifications for Ethiopian conditions, materials, and institutional framework
4. **TRL ORN 31 5th Edition (2022):** Further update extending to 80 MESA with climate resilience chapter -- published after ERA manual

The ERA manual is based on the 1993 (4th) edition of ORN 31. The 5th edition (2022) post-dates the ERA manual and includes features not in the ERA version (e.g., extended traffic range to 80 MESA, formal climate resilience chapter).

---

## M.2 Country-Specific Knowledge

### M.2.1 Specific ERA Departures from ORN 31

The following table documents each specific departure of ERA from the base TRL ORN 31 method:

**ERA Departures from TRL ORN 31 (Verified from PDF)**

| Feature | ORN 31 (4th Edition, 1993) | ERA Vol I (2013) | Significance |
|---------|---------------------------|------------------|-------------|
| **Subgrade classes** | S1-S6 (6 classes): S1 CBR <3%, S2 3-4%, S3 5-7%, S4 8-14%, S5 15-30%, S6 >30% | S1-S5 (5 classes): S1 CBR 2-4%, S2 5-7%, S3 8-14%, S4 15-29%, S5 30%+ | ERA merges ORN 31's S5 and S6 into one class (S5). ERA S1 starts at CBR 2% (ORN 31 S1 is <3%). |
| **Traffic classes** | T1-T8 (0.3-30M ESA) | T1-T8 (0.3-30M ESA) | Identical boundaries. No departure. |
| **Damage exponent** | n = 4.5 (Equation 2.4) | n = 4.5 (Equation 2.4) | No departure. Both use n = 4.5. |
| **Standard axle** | 80 kN | 80 kN | No departure. |
| **Catalogue chart structure** | Charts A-D by base material type | Charts A1-A3, B, C1-C2, D (7 groups) | ERA subdivides ORN 31's 4 charts into 7, providing finer surfacing/base combinations |
| **Material codes** | GB1-GB3, GS, GC, CB1-CB2 | GB1-GB3, GS, GC, CB1-CB2 | No departure in naming. ERA material specification values in Chapter 6 may differ in detail. |
| **Design period** | Varies by country application | Table 2-1: Trunk/Link 20yr, Main Access 15yr, Feeder 10yr | ERA specifies explicit design periods tied to Ethiopian design class system (DC1-DC8). |
| **Vehicle classification** | Generic tropical/sub-tropical | 13-class Ethiopian vehicle system (Table 2-2) | ERA provides Ethiopia-specific vehicle classification with local vehicle types. |
| **ESA factors** | Generic factors by vehicle type | Table 2-6 with "all loaded" and "half loaded" columns | ERA provides two loading scenarios to account for Ethiopian overloading. ORN 31 provides single factors. |
| **Overloading treatment** | General warning | Specific Section 2.4.2 on Ethiopian overloading with quantified factors | ERA provides explicit guidance on handling overloading, which is endemic in Ethiopia. |
| **AASHTO 93 alternative** | Not included in ORN 31 | Appendix H.5 with ERA layer coefficients (H.4) | ERA adds AASHTO 93 as a verification/alternative method with Ethiopian-calibrated parameters. |
| **Climate treatment** | General guidance for tropical regions | Not explicit in catalogue -- ERA does not have a wet/dry distinction like Uganda | Uganda adapted ORN 31 with explicit wet/dry charts; ERA does not. |

### M.2.2 Subgrade Class Comparison: Three Countries from ORN 31

All three East African countries derive their subgrade classification from TRL ORN 31, but each has calibrated differently:

| Class | TRL ORN 31 (4th Ed) | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-------|--------------------|--------------------|---------------|-------------|
| S1 | CBR < 3% | CBR 2-4% | CBR 2% | CBR 2-5% |
| S2 | CBR 3-4% | CBR 5-7% | CBR 3-4% | CBR 5-10% |
| S3 | CBR 5-7% | CBR 8-14% | CBR 5-7% | CBR 7-13% |
| S4 | CBR 8-14% | CBR 15-29% | CBR 8-14% | CBR 10-18% |
| S5 | CBR 15-30% | CBR 30%+ | CBR 15-29% | CBR 15-30% |
| S6 | CBR > 30% | (does not exist) | CBR 30%+ | CBR 30-60% |
| No. of classes | 6 | 5 | 6 | 6 |

**Key observation:** ERA's 5-class system combines ORN 31's top two classes (S5 and S6) into a single S5. Uganda and Kenya maintain 6 classes but with different CBR boundaries. Uganda's boundaries are closest to the original ORN 31.

### M.2.3 Three-Country Comparison: ORN 31 Departures

| Feature | ERA Departure from ORN 31 | MoWT (Uganda) Departure from ORN 31 | RDM (Kenya) Departure from ORN 31 |
|---------|--------------------------|-------------------------------------|----------------------------------|
| Subgrade classes | 5 classes (merged S5/S6) | 6 classes (S1 = CBR 2% only, differs from ORN 31 S1 <3%) | 6 classes (different CBR ranges, CUSUM method) |
| Catalogue format | 7 chart groups (A1-D) | 10 charts (D1-D5 dry, W1-W5 wet) | 16 structure types (ST01-ST16) -- M-E derived |
| Climate treatment | Not in catalogue | Wet/dry binary (Table 4.1) | Regional climate zones |
| Traffic range | T1-T8 (0.3-30M ESA) | T1-T8 (0.3-30M ESA) | TLC01-TLC10 (0.3-80 MESA) |
| Vehicle classification | Ethiopia-specific 13-class | Uganda vehicle types | Kenya vehicle types |
| Design method basis | Empirical catalogue (ORN 31) | Empirical catalogue (SATCC/ORN 31) | Mechanistic-empirical (MLET) -- fundamentally different from ORN 31 |
| Material codes | GB1/GB2/GB3/GS/GC/CB1/CB2 (close to ORN 31) | G80/C1/C3 (different naming) | GCS/HSM/HPS/HIG (different system) |
| AASHTO 93 integration | Appendix H.5 with ERA coefficients | Section 5.8 with MoWT coefficients | Not in RDM 3.4 (separate standard) |

**The closest to ORN 31:** ERA's method is the closest to the original ORN 31 approach among the three countries. Uganda added the wet/dry distinction and different material codes. Kenya departed most significantly by adopting a mechanistic-empirical method (MLET) in RDM 3.4.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
ORN 31 vs ERA in Ethiopia:
  --> ERA Pavement Vol I ALWAYS governs for Ethiopian road projects
  --> ERA IS the Ethiopian calibration of ORN 31
  --> ORN 31 is relevant ONLY for:
       |-- Understanding technical heritage/lineage
       |-- Cross-country comparison (ERA vs Uganda vs Kenya)
       |-- When ERA manual does not cover a specific scenario
       +-- Historical reference for pre-2013 designs

If user asks for ORN 31 design in Ethiopian context:
  --> Perform the design using ERA Pavement Vol I (which IS the Ethiopian ORN 31)
  --> NOTE the ORN 31 lineage and any specific departures
  --> If ORN 31 5th Ed (2022) features are needed (e.g., traffic > 30M ESA):
       +-- These post-date the ERA manual; use with caution and document as departure

What transfers directly from ORN 31 to ERA:
  |-- Traffic classification boundaries (T1-T8, identical)
  |-- Damage exponent n = 4.5
  |-- Standard axle 80 kN
  |-- General catalogue concept (traffic class + subgrade class -> structure)
  |-- CBR-based subgrade assessment
  +-- Material code system (GB/GS/GC/CB/CS names)

What needs Ethiopian calibration:
  |-- Subgrade class boundaries (5 classes, not 6)
  |-- Chart structure (7 groups, not 4)
  |-- Vehicle classification (Ethiopian 13-class system)
  |-- ESA factors (Table 2-6 with overloading)
  |-- Design periods (Table 2-1 by design class DC1-DC8)
  +-- Layer coefficients for AASHTO 93 verification (Appendix H.4)
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**ORN 31 and ERA will give very similar results.** Since ERA is directly derived from ORN 31 (4th edition), the underlying engineering is consistent. The practical differences are in the subgrade classification (5 vs 6 classes) and the more detailed chart structure (7 vs 4 chart groups).

**ORN 31 5th Edition (2022) provides useful supplementary guidance.** The 5th edition's climate resilience chapter (Chapter 7) and extended traffic range (to 80 MESA) provide guidance not available in the ERA 2013 manual. Engineers can reference these sections as supplementary information, but ERA Vol I remains the governing standard.

**Do not mix ORN 31 and ERA classifications.** Particularly, do not use ORN 31's 6 subgrade classes when designing with ERA. Use ERA's 5 classes (S1-S5) for catalogue entry.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Assuming ERA method and ORN 31 are identical.** ERA has Ethiopian calibrations that must be applied -- particularly the 5-class subgrade system and the 7-group chart structure.
2. **Using ORN 31 S6 subgrade class for ERA projects.** ERA has only S1-S5. CBR > 30% is S5 (maximum).
3. **Using ORN 31 Chart A-D directly instead of ERA Chart A1-D.** ERA subdivides ORN 31's charts into 7 groups. Use the ERA charts from Chapter 10.
4. **Ignoring ERA's overloading guidance (Section 2.4.2).** ORN 31 provides only general overloading warnings. ERA provides specific quantified guidance for Ethiopian conditions.
5. **Referencing ORN 31 5th Edition features as if they are in ERA.** The 5th edition (2022) post-dates ERA Vol I (2013). Features like TLC09/TLC10 (>30M ESA) are NOT in the ERA manual.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design method | ERA Pavement Vol I (Skill #21) | Ethiopian project | DEFAULT: Use ERA catalogue as primary method. ORN 31 for reference only. | ERA is mandatory for Ethiopia |
| Subgrade classes | S1-S5 (5 classes) | Ethiopian project | STANDARD: ERA 5-class system, not ORN 31 6-class. | ERA Table 3-1 |
| Chart groups | A1-A3, B, C1-C2, D | Ethiopian project | STANDARD: ERA 7 chart groups, not ORN 31 4 charts. | ERA Chapter 10 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design ESA | 100,000 | 30,000,000 | ESAs | ERA Table 2-8 | Warn if > 30M ESA (ERA catalogue limit; ORN 31 5th Ed extends to 80M but not adopted by ERA) |
| Subgrade class | S1 | S5 | -- | ERA Table 3-1 | Reject S6 (does not exist in ERA) |

### M.5.2 Standards Compliance Checks

- **Check:** If Ethiopian project, confirm ERA Pavement Vol I used (not ORN 31 directly)
- **Check:** Subgrade classes from ERA Table 3-1 used (5 classes, not ORN 31's 6)
- **Check:** ERA chart groups A1-D used (not ORN 31's generic A-D)
- **Check:** ERA material codes used in final design
- **Check:** ESA calculated with n = 4.5 per ERA Equation 2.4

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| ORN 31 5th Ed traffic range needed (> 30M ESA) | ERA catalogue stops at T8 (30M ESA) | SENIOR REVIEW -- ERA does not adopt ORN 31 5th Ed extended range. Use AASHTO 93 from ERA Appendix H.5. |
| ORN 31 climate resilience guidance requested | Not in ERA 2013 manual | NOTE -- ORN 31 5th Ed Chapter 7 provides supplementary guidance. Document as reference, not governing standard. |

---

## M.7 Worked Example -- Ethiopia

### Example: ORN 31 Design Adjusted for ERA Departures

**Given:**
- An international consultant designs a DC5 link road using ORN 31 4th Edition
- Design traffic: 4.5M ESA (calculated with n = 4.5)
- Design CBR: 18% (from laboratory testing)
- The consultant's ORN 31 design needs to be converted to ERA terminology

**Consultant's ORN 31 Design (needs conversion):**
- ORN 31 subgrade class: S5 (CBR 15-30%) -- correct for ORN 31
- ORN 31 traffic band: T5 (3-6M ESA) -- correct
- ORN 31 Chart A (granular base): surface treatment + 175 mm GB1 + 150 mm GS

**ERA Conversion:**

**Step 1 -- Subgrade class conversion:**
- Consultant used ORN 31 S5 (CBR 15-30%).
- ERA Table 3-1: CBR 18% falls in ERA **S4** (CBR 15-29%).
- The same CBR value maps to a different class number because ERA uses 5 classes.
- **This is a naming difference only** -- the physical CBR is the same.

**Step 2 -- Traffic class:**
- T5 (3-6M ESA) -- identical in both ORN 31 and ERA. No conversion needed.

**Step 3 -- Chart selection:**
- ORN 31 Chart A (granular base) corresponds to ERA Chart A1 (surface treatment + granular base + granular subbase).
- Select ERA **Chart A1**.

**Step 4 -- ERA catalogue lookup (Chart A1, T5, S4):**

| Layer | Material | Thickness |
|-------|----------|-----------|
| Surfacing | Surface treatment (chip seal) | -- |
| Base | GB1 (Graded Crushed Stone) | 175 mm |
| Subbase | GS (Granular Subbase) | 150 mm |
| Capping | Not required (S4 subgrade adequate) | -- |
| **Total** | | **325 mm** |

**Step 5 -- Comparison:**
The ERA structure is very similar to the ORN 31 design (both give 175 mm GB1 + 150 mm GS for this combination). This is expected because ERA is derived from ORN 31 and the adjustments at this traffic/subgrade level are minimal.

**Key differences documented:**
- Subgrade class label differs: ORN 31 S5 = ERA S4 (same CBR, different class numbering)
- Chart reference differs: ORN 31 Chart A = ERA Chart A1
- ERA material codes match ORN 31 codes for this structure

**Result:** ERA Chart A1 structure: surface treatment + 175 mm GB1 + 150 mm GS. Total 325 mm. Virtually identical to ORN 31 design for this combination.

> **All outputs are preliminary/screening level.** Verify structure against ERA Pavement Vol I Chapter 10 design charts.

---

## M.8 References

1. Ethiopian Roads Authority, *Flexible Pavement Design Manual Volume I*, 2013.
2. TRL, *Overseas Road Note 31: A Guide to the Structural Design of Bitumen-Surfaced Roads in Tropical and Sub-Tropical Countries*, 4th Edition, 1993.
3. TRL, *Road Note 31: A Guide to the Structural Design of Surfaced Roads in Tropical and Sub-Tropical Regions*, 5th Edition, December 2022.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- ERA departures from ORN 31 documented, three-country comparison, subgrade class mapping, chart structure comparison |
