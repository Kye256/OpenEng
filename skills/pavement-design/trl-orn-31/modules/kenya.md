# TRL ORN 31 Pavement Design -- Kenya Module

> **Parent Skill:** #23 TRL ORN 31 Pavement Design
> **Country/Jurisdiction:** Kenya
> **Standards:** TRL Road Note 31, 5th Edition (December 2022); Kenya RDM 3.4: Flexible Pavement Design (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| TRL Road Note 31 | 5th Edition, December 2022 | Chapters 2-3, 8-9 | Reference -- superseded by RDM 3.4 for Kenya projects |
| Kenya RDM 3.4: Flexible Pavement Design | 2025 | Chapters 2-5 | Current -- Kenya's PRIMARY design method |
| Kenya RDM 3.3: Pavement Foundation and Materials Design | 2025 | Chapters 4, 7, 8 | Current |

**TRL authored BOTH ORN 31 and the Kenya RDM series.** This is the closest technical lineage of any country module in the OpenEng library. TRL Limited (UK) developed ORN 31 as a general tropical pavement design guide, and subsequently developed the Kenya RDM 3.4 as a Kenya-specific evolution of the TRL approach, calibrated for Kenya conditions, materials, and climate. The Kenya RDM was commissioned by the Ministry of Roads and Transport (MoRT) with African Development Bank funding.

### M.1.2 Institutional Context

Kenya has three road authorities under the Ministry of Roads and Transport (MoRT), plus 47 County Governments. All use the Kenya Road Design Manual:

- **KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A and B).
- **KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class C, D, E, and specialist classes).
- **KURA (Kenya Urban Roads Authority):** Manages urban roads (Class UA, UC, UL).
- **47 County Governments:** Manage county roads under devolved functions.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

**RDM 3.4 supersedes ORN 31 for all Kenya road projects.** ORN 31 is only relevant in Kenya for: (1) understanding the technical heritage of RDM 3.4, (2) cross-country comparison where other East African countries still reference ORN 31, or (3) where RDM 3.4 does not cover a specific scenario (rare -- RDM 3.4 is comprehensive).

### M.1.3 TRL Lineage: ORN 31 to RDM 3.4

ORN 31 (5th Edition, 2022) is a general guide for structural design of surfaced roads in tropical and sub-tropical regions. Kenya RDM 3.4 (2025) is the TRL-lineage evolution specifically calibrated for Kenya. The relationship:

**Evolution path:**
1. **ORN 31 (1st-4th editions):** General tropical pavement design guide by TRL, used across Africa, Asia, Caribbean
2. **SATCC Draft Code of Practice (1998):** Southern Africa adaptation (also influenced Uganda MoWT)
3. **ORN 31 5th Edition (2022):** Major update extending to 80 MESA, adding climate resilience chapter
4. **Kenya RDM 3.4 (2025):** Kenya-specific TRL product -- M-E analysis calibrated for Kenya materials, climate zones, and traffic patterns

**Key advancement in RDM 3.4 over ORN 31:**
- ORN 31 uses empirical catalogue with DCP/CBR-based subgrade assessment
- RDM 3.4 uses mechanistic-empirical analysis (MLET + transfer functions) to derive structures
- RDM 3.4 structures have been analytically verified, not just empirically observed

---

## M.2 Country-Specific Knowledge

### M.2.1 Technical Comparison: ORN 31 vs Kenya RDM 3.4

| Aspect | ORN 31 (5th Edition) | Kenya RDM 3.4 |
|--------|----------------------|----------------|
| **Authorship** | TRL Limited | TRL Limited (for Kenya MoRT) |
| **Scope** | General tropical/sub-tropical | Kenya-specific |
| **Design basis** | Empirical catalogue | Mechanistic-empirical (MLET) |
| **Traffic unit** | MESA (Million ESAs) | MESA / CESA |
| **Traffic range** | T1-T10 (0.1-80 MESA) | TLC01-TLC10 (0.1-80 MESA) |
| **Traffic class naming** | T1-T10 | TLC01-TLC10 |
| **Subgrade classes** | S1-S6 (Table 3-9) | Kenya-specific classes (RDM 3.3 Table 4.2.2) |
| **S1 boundary** | CBR < 3% | Defined in RDM 3.3 (may differ) |
| **Foundation classes** | F1-F4 (Table 8-1) | Incorporated in structure type selection |
| **Catalogue format** | Charts A-D by base material type | 16 individual standard structure types (ST01-ST16) |
| **Climate treatment** | General tropical guidance (Ch 7) | Kenya regional climate zones (wet/seasonal/dry/arid) |
| **Material specification** | Generic tropical materials (GB1-GB3, etc.) | Kenya material codes (GCS, HSM, HPS, HIG, G8-G45) |
| **DCP emphasis** | Strong -- central to ORN 31 approach | Less central -- lab CBR preferred, DCP supplementary |

### M.2.2 Subgrade Class Comparison

**ORN 31 Table 3-9 Subgrade Classes:**

| Class | S1 | S2 | S3 | S4 | S5 | S6 |
|-------|----|----|----|----|----|----|
| CBR Range | < 3% | 3-4% | 5-7% | 8-14% | 15-30% | > 30% |

**Kenya RDM 3.3 Subgrade Classes:**
Kenya uses its own subgrade classification from RDM 3.3 Table 4.2.2. The CBR boundaries differ from ORN 31. The Kenya subgrade class boundaries are optimised for Kenya soil conditions and the mechanistic-empirical design approach.

**CRITICAL:** Do not use ORN 31 S1-S6 subgrade class boundaries when designing with RDM 3.4. The Kenya boundaries from RDM 3.3 apply. For example, ORN 31 S1 covers CBR < 3%, while the equivalent Kenya class boundary may differ.

### M.2.3 Traffic Class Comparison

ORN 31 traffic bands T1-T10 have numerically identical MESA boundaries to Kenya TLC01-TLC10. The difference is naming convention only (T vs TLC). When comparing designs:
- ORN 31 T1 = Kenya TLC01 (< 0.3 MESA)
- ORN 31 T10 = Kenya TLC10 (50-80 MESA)

### M.2.4 Structure Catalogue Comparison

| ORN 31 Catalogue | Kenya RDM 3.4 Equivalent | Key Difference |
|------------------|--------------------------|----------------|
| Chart A: Granular base (GB1-GB3) | ST01, ST02, ST15, ST16 | Kenya uses GCS instead of GB1, more structure variants |
| Chart B: Cemented base (CB1-CB2) | ST05, ST06 | Kenya uses HSM, not CB1/CB2 codes |
| Chart C: Bituminous base | ST07, ST08, ST09, ST10, ST13, ST14 | Kenya has 6 bituminous-base variants vs ORN 31's single chart |
| Chart D: Composite | ST03, ST04, ST11, ST12 | Kenya has labour-intensive options (HPS, HIG) not in ORN 31 |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
ORN 31 vs RDM 3.4 in Kenya:
  --> RDM 3.4 ALWAYS governs for Kenya road projects
  --> ORN 31 is relevant ONLY for:
       |-- Understanding technical heritage/lineage
       |-- Cross-country comparison (e.g., Kenya vs Tanzania road corridor)
       |-- When RDM 3.4 does not cover a specific scenario
       +-- Historical reference for pre-2025 designs

If user asks for ORN 31 design in Kenya context:
  --> Perform the ORN 31 design as requested
  --> NOTE that RDM 3.4 has superseded ORN 31 for Kenya projects
  --> RECOMMEND also designing with RDM 3.4 (Skill #21 Kenya module)
  --> Present both results for comparison
```

### M.3.2 Professional Judgment (Kenya-Specific)

**ORN 31 and RDM 3.4 will generally give similar results.** Since TRL authored both, the underlying engineering principles are consistent. However, RDM 3.4 structures have been specifically calibrated for Kenya conditions, so they should be preferred.

**ORN 31's DCP-heavy approach remains useful in Kenya.** While RDM 3.4 prefers laboratory CBR, many Kenya rural road projects rely heavily on DCP testing (especially KeRRA projects). ORN 31's DCP-based design approach can supplement RDM 3.4 where lab data is limited.

**The 5th Edition climate chapter (ORN 31 Chapter 7) provides useful supplementary guidance.** Kenya's RDM 3.4 addresses climate through regional zones, but ORN 31 Chapter 7's climate resilience framework provides additional depth on climate change adaptation that engineers may find valuable.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using ORN 31 as the primary design standard for Kenya projects.** RDM 3.4 governs. ORN 31 is reference only.
2. **Mixing ORN 31 subgrade classes with Kenya RDM 3.3 subgrade classes.** Different boundaries. Use Kenya classes for RDM 3.4 designs.
3. **Assuming ORN 31 material codes (GB1, CB1) are equivalent to Kenya codes (GCS, HSM).** Different specification systems -- do not cross-reference.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design method | RDM 3.4 (Skill #21) | Kenya project | DEFAULT: Use RDM 3.4 as primary method. ORN 31 for reference only. | RDM 3.4 is mandatory for Kenya |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design MESA | 0.01 | 80.0 | MESA | ORN 31 5th Ed / RDM 3.4 | Warn if > 80 MESA |

### M.5.2 Standards Compliance Checks

- **Check:** If Kenya project, confirm RDM 3.4 design also performed (ORN 31 is reference only)
- **Check:** Subgrade classes from RDM 3.3 used (not ORN 31 Table 3-9) when designing with RDM 3.4
- **Check:** Kenya material codes used in final design (not ORN 31 codes)
- **Check:** MESA/CESA terminology used throughout

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| ORN 31 structure differs significantly from RDM 3.4 structure | Method disagreement | NOTE -- Present both results. RDM 3.4 governs for Kenya. |
| DCP-only data on Class A/B road | Reduced confidence | SENIOR REVIEW -- Lab CBR recommended for KeNHA trunk roads per RDM 3.3. |

---

## M.7 Worked Example -- Kenya

### Example: Comparing ORN 31 and RDM 3.4 for Class C Road

**Given:**
- Class C road (KeRRA) in western Kenya
- Design traffic: 2 MCESA
- Design CBR: 10% (from DCP profiles, TRL standard cone)
- Climate zone: Wet (> 1000 mm annual rainfall)

**ORN 31 Design:**

**Step 1 -- Traffic band:** 2 MESA falls in T4 (1.5-3 MESA).

**Step 2 -- Subgrade class (ORN 31 Table 3-9):** CBR 10% falls in S4 (8-14%).

**Step 3 -- Foundation class (Table 8-1):** CBR 10% is F3 (8-14%, 50-100 MPa). Capping NOT required.

**Step 4 -- Structure from Chapter 9 (Chart A, granular base):**
- T4, S4, F3: surface dressing + 175 mm GB1 (crushed stone) + 150 mm granular subbase

**ORN 31 Result:**

| Layer | Material | Thickness |
|-------|----------|-----------|
| Surfacing | Surface dressing | -- |
| Roadbase | GB1 (crushed stone) | 175 mm |
| Subbase | GS1 (granular) | 150 mm |
| **Total** | | **325 mm** |

**RDM 3.4 Design (Skill #21 Kenya module):**

**Step 1 -- Traffic class:** 2 MESA falls in TLC04 (1.5-3.0 MESA).

**Step 2 -- Subgrade class:** CBR 10% per Kenya RDM 3.3 classes -- S4 equivalent.

**Step 3 -- Structure selection:**
For TLC04 in wet zone with S4 subgrade:
- ST01 (granular/granular): applicable for TLC01-TLC04, S4-S6
- Select ST01 as suitable for this traffic/subgrade combination

**RDM 3.4 Result (ST01):**

| Layer | Material | Thickness |
|-------|----------|-----------|
| Surfacing | Surface dressing | -- |
| Base | GCS (Graded Crushed Stone) | 150 mm |
| Subbase | G45 (natural gravel CBR >= 45%) | 150 mm |
| **Total** | | **300 mm** |

**Comparison:**
- ORN 31: 325 mm total (175 mm base + 150 mm subbase)
- RDM 3.4 (ST01): 300 mm total (150 mm base + 150 mm subbase)
- Difference: 25 mm (8%) -- within normal variation between methods
- Both methods give similar structures. RDM 3.4 governs for Kenya.

NOTE: DCP-CBR correlation used for subgrade assessment. Lab CBR confirmation recommended for formal design.

> **Cross-reference:** For Kenya's current TRL-lineage pavement design method, see Skill #21 Kenya module (RDM 3.4).

---

## M.8 References

1. TRL, *Road Note 31: A Guide to the Structural Design of Surfaced Roads in Tropical and Sub-Tropical Regions*, 5th Edition, December 2022.
2. Kenya Ministry of Roads and Transport, *Road Design Manual Part 3.4: Flexible Pavement Design*, 2025.
3. Kenya Ministry of Roads and Transport, *Road Design Manual Part 3.3: Pavement Foundation and Materials Design*, 2025.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- TRL lineage documentation, ORN 31 vs RDM 3.4 comparison, structure comparison |
