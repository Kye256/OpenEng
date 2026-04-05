# Soil Classification -- Ethiopia Module

> **Parent Skill:** #8 Soil Classification
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geotechnical Design Manual - 2013, Chapter 2; ERA Flexible Pavement Design Manual Vol I - 2013, Chapter 6
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geotechnical Design Manual (GDM) | 2013 | Chapter 2, Section 2.2 (Subgrade characterization), Section 2.3 (Special soils) | Current -- primary for soil classification |
| ERA Flexible Pavement Design Manual Vol I | 2013 | Chapter 6 (Unbound Pavement Materials), Tables 6-1 to 6-7 | Current -- material classification |
| AASHTO M 145 | Current | Standard Specification for Classification of Soils and Soil-Aggregate Mixtures for Highway Construction Purposes | Primary classification standard |
| AASHTO T-88 | Current | Particle size analysis of soils | Reference test standard |
| AASHTO T-89 | Current | Liquid limit of soils | Reference test standard |
| AASHTO T-90 | Current | Plastic limit and plasticity index of soils | Reference test standard |
| ASTM D 2487 | Current | Unified Soil Classification System (USCS) | Supplementary classification |

### M.1.2 Institutional Context

ERA uses the AASHTO soil classification system (A-1 through A-7 with Group Index) as the primary classification system for all road design. This aligns with Uganda MoWT practice but is fundamentally different from Kenya, which uses ESCS (BS EN ISO 14688-2). USCS is accepted as a supplementary system. All test methods reference AASHTO or ASTM designations.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and road classification.
> Cross-reference: See Skill #11 Ethiopia module (M.2) for terrain classification that determines investigation scope.

### M.1.3 Standard Philosophy

ERA GDM Chapter 2 establishes a strength-based approach to soil characterization for road design. Soils are classified by particle size distribution and plasticity characteristics using the AASHTO system. The Group Index (GI) provides a numerical assessment of soil quality within each AASHTO group -- lower GI values indicate better road-building material. ERA test standards are AASHTO/ASTM throughout, not BS or BS EN ISO.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table E.8.1: AASHTO Soil Classification Groups Used by ERA (From AASHTO M 145, applied per ERA GDM 2013 Ch 2) (Verified from PDF)**

| AASHTO Group | General Description | Sieve Analysis (% passing) | Plasticity | GI Range | Rating as Subgrade |
|-------------|--------------------|-----------------------------|-----------|----------|-------------------|
| A-1-a | Stone fragments, gravel and sand | #10: <=50%, #40: <=30%, #200: <=15% | NP or PI <=6 | 0 | Excellent to good |
| A-1-b | Coarse sand | #40: <=50%, #200: <=25% | NP or PI <=6 | 0 | Excellent to good |
| A-2-4 | Silty or clayey gravel and sand | #200: <=35% | LL <=40, PI <=10 | 0 | Excellent to good |
| A-2-5 | Silty or clayey gravel and sand | #200: <=35% | LL >40, PI <=10 | 0 | Excellent to good |
| A-2-6 | Silty or clayey gravel and sand | #200: <=35% | LL <=40, PI >10 | 0-4 | Good to fair |
| A-2-7 | Silty or clayey gravel and sand | #200: <=35% | LL >40, PI >10 | 0-4 | Good to fair |
| A-3 | Fine sand | #200: <=10% | NP | 0 | Excellent to good |
| A-4 | Silty soils | #200: >=36% | LL <=40, PI <=10 | 0-8 | Fair to poor |
| A-5 | Silty soils | #200: >=36% | LL >40, PI <=10 | 0-12 | Fair to poor |
| A-6 | Clayey soils | #200: >=36% | LL <=40, PI >10 | 0-16 | Fair to poor |
| A-7-5 | Clayey soils | #200: >=36% | LL >40, PI <=LL-30 | 0-20 | Fair to poor |
| A-7-6 | Clayey soils | #200: >=36% | LL >40, PI >LL-30 | 0-20+ | Fair to poor |

**Fine/coarse boundary:** 0.075 mm (#200 sieve). Soils with more than 35% passing the #200 sieve are classified as fine-grained (A-4 through A-7).

**Group Index formula:** GI = (F-35)[0.2 + 0.005(LL-40)] + 0.01(F-15)(PI-10), where F = % passing #200 sieve.

### M.2.2 Cross-Country Comparison: Soil Classification Systems

| Feature | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|---------|---------------|---------------|-------------|
| Primary classification | AASHTO (A-1 to A-7) | AASHTO (A-1 to A-7) | ESCS (BS EN ISO 14688-2) |
| Supplementary system | USCS | USCS | None (AASHTO NOT used) |
| Fine/coarse boundary | 0.075 mm (#200 sieve) | 0.075 mm (#200 sieve) | 0.075 mm (Kenya amendment from 63 um) |
| Quality index | Group Index (GI) | Group Index (GI) | None (descriptive) |
| Test standards | AASHTO/ASTM | AASHTO/ASTM | BS/BS EN ISO |
| Plasticity testing | AASHTO T-89, T-90 | AASHTO T-89, T-90 | BS 1377-2:1990 |
| Sieve analysis | AASHTO T-88 | AASHTO T-88 | BS 1377-2:1990 |

**Critical note:** Ethiopia and Uganda both use AASHTO classification. Kenya uses a completely different system (ESCS). Classification results from one system cannot be directly converted to the other. When cross-referencing international projects, always re-classify using the applicable national system.

### M.2.3 Common Ethiopian Soil Types and AASHTO Classification

| Ethiopian Soil Type | Typical Location | Typical AASHTO Group | Typical GI | Subgrade Quality |
|--------------------|-----------------|---------------------|-----------|-----------------|
| Black cotton soil (vertisol) | Central highlands, Rift Valley margins | A-7-5, A-7-6 | 10-20+ | Poor -- high swell potential |
| Red laterite (latosol) | Western Ethiopia, medium altitude | A-2-6, A-2-7, A-6 | 0-8 | Fair to good -- check collapsibility |
| Volcanic ash / scoria | Rift Valley, volcanic regions | A-1-a, A-1-b, A-2-4 | 0 | Good -- lightweight, may be crushable |
| Alluvial deposits | River valleys, flood plains | A-4, A-5, A-6 | 4-16 | Variable -- depends on source |
| Residual granite | Northern highlands | A-2-4, A-2-6 | 0-4 | Good -- when not deeply weathered |
| Aeolian (wind-blown) sand | Afar region, eastern lowlands | A-3, A-2-4 | 0 | Good for subbase -- check collapsibility |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic

**Step 1: Obtain laboratory test results**
- Sieve analysis (AASHTO T-88): % passing #10, #40, #200 sieves.
- Atterberg limits (AASHTO T-89, T-90): Liquid Limit (LL), Plastic Limit (PL), Plasticity Index (PI = LL - PL).

**Step 2: Classify soil using AASHTO M 145**
- If % passing #200 <= 35%: soil is granular (A-1, A-2, or A-3).
- If % passing #200 > 35%: soil is fine-grained (A-4, A-5, A-6, or A-7).
- Proceed left to right through AASHTO classification table -- first match determines group.

**Step 3: Calculate Group Index**
- GI = (F-35)[0.2 + 0.005(LL-40)] + 0.01(F-15)(PI-10).
- GI minimum is 0 (negative results reported as 0).
- GI is reported as a whole number.

**Step 4: Assess for special soil types**
- If A-7-5 or A-7-6 with PI > 25: likely expansive soil -- refer to ERA GDM Section 2.3.1.
- If granular soil with low natural density: check for collapsibility -- refer to ERA GDM Section 2.3.3.
- If sodium-rich soil: check for dispersivity -- refer to ERA GDM Section 2.3.4.

> Next in pipeline: See Skill #9 Ethiopia module for material testing interpretation of classified soils.

### M.3.2 Professional Judgment

- Ethiopian highland vertisols (black cotton soils) often classify as A-7-5 or A-7-6 with very high Group Index (>15). These soils require special treatment regardless of AASHTO classification -- the swell potential is the controlling factor, not the GI.
- Volcanic soils in the Rift Valley may classify as A-1 or A-2 (granular) but can be crushable and break down under compaction. Verify durability with Los Angeles abrasion testing.
- Laterite soils may lose strength when air-dried before testing. ERA practice should test at natural moisture content where possible.

### M.3.3 Common Errors

1. **Do not use ESCS (BS EN ISO 14688-2) for Ethiopian projects.** ERA uses AASHTO classification (A-1 through A-7). Using ESCS group symbols (GrW, SaP, ClH) is incorrect for Ethiopian road design.
2. **Do not omit the Group Index.** ERA requires GI to be reported alongside the AASHTO group designation. A soil classified as "A-6" without a GI is incomplete.
3. **Do not assume AASHTO classification alone captures swell potential.** An A-6 soil with PI of 12 and an A-6 soil with PI of 28 may both classify as A-6 but have very different swell characteristics. Always assess swell potential separately for fine-grained soils.
4. **Do not apply Kenya ESCS classifications to Ethiopian soil data.** The two systems use different parameters and cannot be directly compared. Reclassify using AASHTO if Ethiopian classification is needed.

---

## M.4 Country-Specific Defaults

| Parameter | Default Value | Flag Text | Source |
|-----------|--------------|-----------|--------|
| Classification system | AASHTO M 145 | "STANDARD: AASHTO classification per ERA requirements." | ERA GDM 2013 Ch 2 |
| Supplementary system | USCS (ASTM D 2487) | "OPTIONAL: USCS classification for supplementary reference." | ERA GDM 2013 |
| Fine/coarse boundary | 0.075 mm (#200 sieve) | "STANDARD: 35% passing #200 sieve is fine/coarse threshold for AASHTO." | AASHTO M 145 |
| Swell potential threshold | PI > 25 and LL > 50 | "ASSUMED: Threshold for mandatory swell testing. Verify against ERA GDM Section 2.3.1." | ERA GDM 2013 |
| Minimum tests per sample | Sieve analysis + Atterberg limits | "STANDARD: Minimum for AASHTO classification." | AASHTO M 145 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Flag If Outside |
|-----------|------------|-----------------|
| Liquid Limit (LL) | 10-150% | LL > 100% rare -- verify test procedure |
| Plastic Limit (PL) | 5-80% | PL > 50% unusual -- verify test procedure |
| Plasticity Index (PI) | 0-100 | PI > 60 very rare -- verify test and check for expansive clay |
| Group Index (GI) | 0-40+ | GI > 20 indicates poor subgrade -- escalate |
| % passing #200 sieve | 0-100% | Values must be consistent with #10 and #40 passing percentages |

### M.5.2 Standards Compliance

- Classification shall use AASHTO system (A-1 through A-7) per ERA requirements.
- Test methods shall reference AASHTO or ASTM designations.
- Group Index shall be calculated and reported for all soils.
- USCS classification may be provided as supplementary information.

### M.5.3 Departures Process

Any departure from AASHTO classification requirements (e.g., using an alternative classification system) requires written approval through ERA's regional directorate to the Quality Assurance, Road Inspection and Safety Directorate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Action |
|---------|--------|--------|
| Soil classifies as A-7-5 or A-7-6 with GI > 15 | Likely expansive soil -- common in Ethiopian black cotton soil areas | Expand testing per ERA GDM 2.3.1; swell pressure and free swell index required; escalate to senior geotechnical engineer |
| Soil classifies as A-1 or A-2 but has low natural density | Possible collapsible soil -- common in Ethiopian latosols and aeolian deposits | Collapse potential test per ERA GDM 2.3.3; escalate to senior geotechnical engineer |
| PI > 35 in any soil | Highly plastic soil requiring special treatment | Assess swell potential; may require subgrade improvement or lime stabilization |
| GI > 20 | Very poor subgrade material | Subgrade improvement required; escalate for treatment design |
| Inconsistent classification results (AASHTO vs USCS disagree) | Possible testing error or unusual soil | Verify test results; re-test if necessary |

---

## M.7 Worked Example

### Soil Classification for Addis Ababa - Dire Dawa Corridor

**Project:** Addis Ababa to Dire Dawa highway, soil investigation at km 45+200 (Debre Zeit area, known black cotton soil zone).

**Laboratory Results:**
- Sieve analysis: #10 = 98%, #40 = 87%, #200 = 72%
- Liquid Limit (LL) = 68%
- Plastic Limit (PL) = 25%
- Plasticity Index (PI) = 68 - 25 = 43

**Step 1: Determine granular or fine-grained**
- % passing #200 = 72% > 35%. Soil is fine-grained (A-4, A-5, A-6, or A-7).

**Step 2: Classify within fine-grained groups**
- LL = 68% > 40, PI = 43 > 10.
- Check A-7 subgroups: PI = 43, LL - 30 = 68 - 30 = 38.
- PI (43) > LL - 30 (38), therefore soil is **A-7-6**.

**Step 3: Calculate Group Index**
- GI = (72-35)[0.2 + 0.005(68-40)] + 0.01(72-15)(43-10)
- GI = 37[0.2 + 0.14] + 0.01(57)(33)
- GI = 37(0.34) + 18.81
- GI = 12.58 + 18.81 = 31.39
- **GI = 31** (rounded to whole number)

**Step 4: Classification result**
- **AASHTO: A-7-6 (31)** -- Clayey soil, poor subgrade.

**Step 5: Special soil assessment**
- A-7-6 with PI = 43 (> 25) and LL = 68 (> 50): **expansive soil suspected**.
- Mandatory additional testing per ERA GDM Section 2.3.1: free swell index, shrinkage limit, swell pressure.
- Escalate to senior geotechnical engineer for subgrade treatment design.

> **All outputs are preliminary/screening level.** Verify classification against full laboratory results and ERA GDM requirements.

---

## M.8 References

| Reference | Citation |
|-----------|----------|
| ERA GDM Ch 2 | Ethiopian Roads Authority, *Geotechnical Design Manual*, 2013, Chapter 2: Pavement Subgrade. Section 2.2 (Subgrade characterization), Section 2.3 (Special soils). |
| ERA Pavement Vol I Ch 6 | Ethiopian Roads Authority, *Flexible Pavement Design Manual Vol I*, 2013, Chapter 6: Unbound Pavement Materials. Tables 6-1 to 6-7. |
| AASHTO M 145 | *Standard Specification for Classification of Soils and Soil-Aggregate Mixtures for Highway Construction Purposes*. |
| AASHTO T-88 | *Standard Method of Test for Particle Size Analysis of Soils*. |
| AASHTO T-89 | *Standard Method of Test for Determining the Liquid Limit of Soils*. |
| AASHTO T-90 | *Standard Method of Test for Determining the Plastic Limit and Plasticity Index of Soils*. |
| ASTM D 2487 | *Standard Practice for Classification of Soils for Engineering Purposes (Unified Soil Classification System)*. |
