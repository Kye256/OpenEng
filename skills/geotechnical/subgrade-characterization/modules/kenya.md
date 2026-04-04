# Subgrade Characterization -- Kenya Module

> **Parent Skill:** #10 Subgrade Characterization
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual (RDM) 3.3: Pavement Foundation and Materials Design (2025), Chapter 4
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 3.3 | 2025 | Chapter 4 (Classification of Alignment Soils), Section 4.2 (Subgrade Strength), Section 4.3 (Subgrade Class for Road Section), Chapter 7 (Pavement Foundations) | Current -- mandatory |
| Kenya RDM 3.1 | 2025 | Section 3.3 (Subgrade Soils), Table 3.2 (Subgrade Bearing Strength Classes) | Current |
| Kenya RDM 3.4 | 2025 | Traffic classes (MESA-based) that pair with subgrade classes | Current |

### M.1.2 Institutional Context

Kenya's subgrade classification feeds directly into the pavement design method specified in RDM 3.4 (flexible pavement) and RDM 3.5 (rigid pavement). The subgrade class, paired with the traffic class, determines the pavement structure. KeNHA, KeRRA, KURA, and County Governments all use this classification system.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

### M.1.3 Standard Philosophy

Kenya uses a CBR-based subgrade classification with six classes (S1-S6). The design subgrade class is determined using the CUSUM (Cumulative Sum) method to identify uniform subgrade sections, then selecting the subgrade class whose median is equal to or just below the average CBR of the section. This is different from Uganda's 10th percentile approach -- Kenya uses an average-based method with a minimum value check.

The 2025 RDM introduced a significant climate resilience measure: subgrade class S3 (CBR 7-13%) is the minimum material for pavement foundation, replacing the previous S2 minimum. This avoids using lower subgrade materials that are more susceptible to moisture variation (RDM 3.3 Section 3.4).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table K.10.1: RDM 3.3 Table 4.1 -- Subgrade Strength Classes (Verified against PDF p21)**

| Subgrade Class | CBR Range (%) | Median CBR (%) |
|----------------|--------------|----------------|
| S1 | 2-5 | 3.5 |
| S2 | 5-10 | 7.5 |
| S3 | 7-13 | 10 |
| S4 | 10-18 | 14 |
| S5 | 15-30 | 22.5 |
| S6 | 30-60 | 45 |

**CRITICAL DIFFERENCES FROM UGANDA:**
- Kenya class boundaries overlap (S2: 5-10, S3: 7-13, S4: 10-18, S5: 15-30). This is intentional -- the selection procedure uses mean CBR and class median comparison.
- Uganda S1 = CBR 2%, S2 = CBR 3-4%, S3 = CBR 5-7%. Kenya boundaries are fundamentally different.
- Kenya S3 (CBR 7-13%) is the MINIMUM for paved road pavement foundations. S1 and S2 subgrades require improvement.

**Key Notes on Table 4.1 (from RDM 3.3 Section 4.2.2):**
1. The subgrade categories overlap intentionally. The average CBR for a section should be >= the median of the selected class, and no individual result shall be below the lowest value of the range.
2. No provision for subgrade CBR below 2% -- economically unviable to construct pavement on such soils (saturated expansive clays, mud, soft clay).
3. S1 subgrade (CBR 2-5) requires improvement per Chapters 6 and 7.
4. S2 subgrade may only be used for unpaved roads. All paved pavements require minimum S3 subgrade.
5. S5 range is wide (15-30%) because the pavement thickness difference is small within this range.
6. S6 covers CBR 30-60% and materials meeting plasticity requirements for natural sub-base. No sub-base needed for low/medium traffic (< 10 MCESA).

**Table K.10.2: RDM 3.3 Table 4.2 -- Common Kenyan Subgrade Materials (Verified against PDF p24)**

| Type of Material | Subgrade Class (After 4 days soak) | Subgrade Class (At OMC, AASHTO T99) |
|------------------|-----------------------------------|--------------------------------------|
| Black cotton soils | S1 | S5 |
| Micaceous silts (decomposed rock) | S1 | S3 |
| Other eluvial silts (decomposed rock) | S2 | S4 |
| Red friable clays | S3 | S5 |
| Sandy clays on volcanics | S3 or S4 | S5 |
| Ash and pumice soils* | S3 or S4 | S5 |
| Silty loams on gneiss and granite | S4 | S5 |
| Calcareous sandy soils | S4 | S5 |
| Sandy clays on basement | S4 | S5 |
| Clayey sands on basement | S4 or S5 | S5 or S6 |
| Dune sands | S4 | S4 or S5 |
| Coastal sands | S4 | S5 |
| Weathered lava | S4 or S5 | S5 or S6 |
| Quartzitic gravels | S4-S6 | S5 or S6 |
| Soft (weathered) tuffs | S4-S6 | S5 or S6 |
| Calcareous gravels | S4-S6 | S5 or S6 |
| Lateritic gravels | S5 or S6 | S6 |
| Coral gravels | S5 or S6 | S6 |

*Note: Ash/pumice soils with Standard Compaction MDD < 1400 kg/m3 cannot be classified by CBR alone. Particle size distribution and ACV are important. Must conform to GCS-E minimum per RDM 3.3 Section 8.9.*

**Table K.10.3: RDM 3.3 Table 7.4 -- Pavement Foundation Classes and Applicability**

| Foundation Class | Subgrade Class | Applicability |
|-----------------|---------------|---------------|
| F1 | S1, S2 | Requires improved subgrade (capping) |
| F2 | S1, S2, S3 | Requires improved subgrade (capping) |
| F3 | S3, S4 | May use capping or improved subgrade |
| F4 | S4, S5 | Direct foundation possible for some structures |
| F5 | S5, S6 | Direct foundation; no capping required for most structures |

### M.2.2 Country-Specific Formulas

**Design CBR Selection Method (RDM 3.3 Section 4.3 -- CUSUM Method):**

Kenya uses the Cumulative Sum (CUSUM) method to determine uniform subgrade sections:

1. List all CBR values with chainages in a spreadsheet
2. Compute the mean CBR for the entire road
3. Subtract the mean from each individual CBR value (column 3)
4. Cumulatively sum the values in column 3 (column 4 -- CUSUMs)
5. Plot CUSUMs against chainage
6. Identify inflection points -- these mark section boundaries
7. For each section, compute the average CBR
8. Select the subgrade class whose median is equal to or just less than the average CBR
9. **Check:** No individual CBR result shall be below the lowest value of the selected class range

This is different from Uganda's 10th percentile (statistical) method. Kenya uses an average-based method with visual CUSUM section identification.

**Subgrade Surface Modulus (RDM 3.1 Table 3.2):**

| Subgrade Class | Median CBR (%) | Surface Modulus (MPa) |
|----------------|---------------|----------------------|
| S1 | 3.5 | 40 |
| S2 | 7.5 | 65 |
| S3 | 10 | 75 |
| S4 | 14 | 95 |
| S5 | 22.5 | 130 |
| S6 | 45 | 200 |

### M.2.3 Classification System

Kenya's S1-S6 subgrade classification feeds into the RDM 3.4 flexible pavement design and RDM 3.5 rigid pavement design. The subgrade class, combined with the traffic class (MESA/CESA-based), determines the pavement structure from the standard structure types.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
IF Kenya project:
  1. Obtain CBR test results (soaked 4-day, 100% MDD AASHTO T99) from Skill #9
  2. Classify soils per ESCS (BS EN ISO 14688-2:2018) from Skill #8
  3. Divide road into uniform sections:
     a. First by soil type (ESCS classification)
     b. Then by CBR strength using CUSUM method (RDM 3.3 Section 4.3.1)
  4. For each uniform section:
     a. Compute average CBR
     b. Select subgrade class from Table 4.1:
        - Class whose median <= average CBR of section
        - Check: lowest individual CBR >= lowest class range value
     c. If individual CBR falls below class range --> reclassify to next lower class
        OR separate short section with different class
  5. Apply climate resilience check:
     - Minimum S3 for paved road pavement foundations
     - S1 and S2 require improvement (capping per Chapter 7)
  6. Determine foundation class per Table 7.4
  7. If S6 with plasticity meeting sub-base requirements --> no sub-base needed
     for traffic < 10 MCESA
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Regional subgrade expectations:**
- **Rift Valley:** Black cotton soils (S1 soaked), volcanic ash/pumice (S3-S4), weathered lava (S4-S5)
- **Central Highlands:** Red friable clays (S3), lateritic gravels (S5-S6)
- **Western Kenya (Lake Victoria basin):** Sandy clays on volcanics (S3-S4), silty loams on granite (S4)
- **Coastal Strip:** Coral gravels (S5-S6), coastal sands (S4), saline soils
- **Northern Kenya (Arid/Semi-Arid):** Calcareous gravels (S4-S6), dune sands (S4)

**The S3 minimum rule:** The 2025 RDM establishes S3 (CBR 7-13%) as the minimum subgrade class for paved road foundations. This is a climate resilience measure: lower subgrade materials (S1, S2) are more moisture-susceptible and require capping/improvement. This differs from Uganda where S1 is the minimum for the design catalogue.

**Overlapping class boundaries:** The intentional overlap in Kenya subgrade classes (e.g., S3: 7-13%, S4: 10-18%) means that CBR values of 10-13% could be classified as either S3 or S4. The CUSUM method resolves this by comparing the section average to the class median, with the minimum value check as a safeguard.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using Uganda S1-S6 class boundaries for Kenya projects.** Kenya S1 = CBR 2-5%, Uganda S1 = CBR 2%. The systems are completely different despite using the same S1-S6 naming.
2. **Applying the 10th percentile method instead of CUSUM.** Kenya uses the CUSUM method (RDM 3.3 Section 4.3.1) for section identification and average-based class selection, not the Uganda/TRL 10th percentile statistical approach.
3. **Designing on S1 or S2 subgrade without improvement.** The 2025 Kenya RDM requires minimum S3 for paved road pavement foundations. S1/S2 subgrades require capping or improvement (Chapter 7).
4. **Ignoring the minimum CBR check.** After selecting a class based on average CBR, the designer must verify that no individual CBR falls below the lowest value of the class range.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| CBR test condition | 100% MDD (AASHTO T99), 4-day soak | Not specified | ASSUMED: Soaked at standard compaction | RDM 3.3 Section 4.2.1 |
| Minimum subgrade class (paved) | S3 | Not specified | No flag -- mandatory minimum | RDM 3.3 Section 3.4 |
| Design method | CUSUM for section identification | Not specified | No flag | RDM 3.3 Section 4.3.1 |
| CBR soak period | 4 days or until no further swell | Not specified | No flag | RDM 3.1 Section 6.3.2 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source | Error if Outside |
|-----------|-----------|--------|-----------------|
| Subgrade CBR (soaked) | 2-60% | Table 4.1 | Below 2%: subgrade improvement required. Above 60%: verify test |
| Subgrade class | S1-S6 | Table 4.1 | Invalid class designation |
| Minimum class for paved road | S3 or higher | Section 3.4 | S1/S2 requires capping/improvement |
| Surface Modulus | 40-200 MPa | Table 3.2 (RDM 3.1) | Outside valid subgrade class range |

### M.5.2 Standards Compliance Checks

- CBR tested at 100% MDD (AASHTO T99) for subgrade -- NOT Modified AASHTO
- 4-day soak required for all subgrade CBR (even in dry areas -- climate resilience)
- Soils classified per ESCS (BS EN ISO 14688-2:2018) before subgrade classification
- CUSUM method used for section identification (not arbitrary section lengths)

### M.5.3 Departures / Relaxations Process

Departure from the S3 minimum subgrade requirement requires Chief Engineer for Roads approval (Section 1.5). Use of S2 subgrade for unpaved roads does not require a departure.

---

## M.6 Country-Specific Escalation

| Trigger | Action | Source |
|---------|--------|--------|
| Subgrade CBR < 2% | Economically unviable for pavement; subgrade replacement or specialist treatment required | Section 4.2.2 note 2 |
| Subgrade class S1 or S2 on paved road | Mandatory improvement: capping per Chapter 7, improved subgrade per Section 7.4 | Section 3.4, Section 4.2.2 note 4 |
| Ash/pumice soils with MDD < 1400 kg/m3 | CBR classification not valid; must meet GCS-E requirements and be assessed by particle size and ACV | Table 4.2 note |
| High variability in CBR results within a short section | Consider subdividing into additional uniform sections or designing conservatively for worst condition | Section 4.2.2 note 1 |
| Black cotton soil identified | S1 when soaked but S5 at OMC -- design for soaked condition. Treatment per Chapter 6 | Table 4.2 |
| CUSUM plot shows no clear inflection points | Section may be relatively uniform; use single subgrade class for entire length | Professional judgment |

---

## M.7 Worked Example -- Kenya

**Scenario:** Characterize the subgrade for a 25 km Class D road in Western Kenya. DCP survey results show CBR values: 8, 12, 6, 15, 9, 11, 7, 14, 10, 8.

**Step 1: Calculate mean CBR**
- CBR values: 8, 12, 6, 15, 9, 11, 7, 14, 10, 8
- Mean = (8+12+6+15+9+11+7+14+10+8) / 10 = 100/10 = 10.0%

**Step 2: Apply CUSUM method**
| Chainage (km) | CBR | CBR - Mean | CUSUM |
|---------------|-----|-----------|-------|
| 2.5 | 8 | -2 | -2 |
| 5.0 | 12 | +2 | 0 |
| 7.5 | 6 | -4 | -4 |
| 10.0 | 15 | +5 | +1 |
| 12.5 | 9 | -1 | 0 |
| 15.0 | 11 | +1 | +1 |
| 17.5 | 7 | -3 | -2 |
| 20.0 | 14 | +4 | +2 |
| 22.5 | 10 | 0 | +2 |
| 25.0 | 8 | -2 | 0 |

**Step 3: Identify uniform sections from CUSUM plot**
- No strong inflection point -- CUSUM oscillates around zero without clear trend change
- Treat as single uniform section (CBR varies but no clear boundary)
- Average CBR for entire road = 10.0%

**Step 4: Select subgrade class (Table 4.1)**
- Average CBR = 10.0%
- Compare with class medians: S3 median = 10, S4 median = 14
- Average (10.0) equals S3 median (10.0) --> select S3
- **Minimum value check:** Lowest CBR = 6%. S3 range lower bound = 7%. CBR 6% < 7% --> FAIL

**Step 5: Resolve minimum value failure**
- Option A: Reclassify entire road to S2 (median 7.5, range 5-10). Average 10.0 > median 7.5 -- passes. Minimum 6% >= 5% -- passes. But S2 requires improvement for paved road (Section 3.4 -- S3 minimum).
- Option B: Separate km 7.5 (CBR 6%) as a short weak section requiring localised treatment, classify remainder as S3.
- **Recommendation:** Adopt S3 for the road but flag CBR 6% at km 7.5 as requiring subgrade improvement (capping to raise effective subgrade to S3 equivalent). This is more economical than designing the entire road for S2.

**Step 6: Foundation class**
- S3 subgrade --> Foundation class F2 or F3 (Table 7.4)
- Capping required for F2 (per Chapter 7)

**Step 7: Climate check**
- Western Kenya: equatorial/wet-tropical climate, rainfall > 1200 mm/year
- 4-day soaked CBR confirmed appropriate
- S3 is the minimum for paved foundations -- SATISFIED (with localised treatment at km 7.5)

**Output:** Subgrade class S3 for 25 km Class D road, with localised improvement at km 7.5 (CBR 6%). Foundation class F2-F3 per RDM 3.3 Table 7.4. Capping layer required.

---

## M.8 References

1. Kenya RDM 3.3: Pavement Foundation and Materials Design (2025). Ministry of Roads and Transport, Republic of Kenya. Chapter 4, Chapter 7.
2. Kenya RDM 3.1: Ground Investigations and Material Prospecting (2025). Section 3.3, Table 3.2.
3. Kenya RDM 3.4: Flexible Pavement Design (2025). Traffic classes and pavement structure selection.

---

**Module Changelog**
- 0.1 (2026-04-04): Initial Kenya module created from RDM 3.3 Chapter 4 (2025). Subgrade classes verified against PDF Table 4.1. CUSUM method documented from Section 4.3.
