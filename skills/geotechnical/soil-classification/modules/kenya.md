# Soil Classification -- Kenya Module

> **Parent Skill:** #8 Soil Classification
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual (RDM) 3.1: Ground Investigations and Material Prospecting (2025), Chapter 3; BS EN ISO 14688-2:2018
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 3.1 | 2025 | Chapter 3 (Types of Soils and Rocks in Kenya), Section 3.2 (Classification), Section 3.3 (Subgrade Soils) | Current -- mandatory |
| BS EN ISO 14688-2:2018 | Current | Principles for classification of soil (ESCS) | Primary classification standard |
| BS EN ISO 14688-1 | Current | Identification and description of soil | Companion standard |
| Kenya RDM 3.2 | 2025 | Chapter 5 (Test standards for soils and gravels) | Test methods |
| Kenya RDM 3.3 | 2025 | Section 4.2 (Subgrade strength classification) | Subgrade classes |

### M.1.2 Institutional Context

Soil classification for road projects in Kenya uses the European Soil Classification System (ESCS) per BS EN ISO 14688-2:2018 with Kenya amendments. This is mandated by RDM 3.1 Section 3.2.2: "Alignment soils shall be described and classified in accordance with BS EN ISO 14688-2." Kenya does NOT use AASHTO or USCS as the primary classification system for road design.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

### M.1.3 Standard Philosophy

The Kenya RDM adopts the European Soil Classification System (ESCS) as a deliberate policy choice for international alignment. The ESCS classifies soils based on particle size distribution and plasticity using the Casagrande plasticity chart, consistent with BS EN ISO 14688-2:2018, with one key Kenya amendment: the boundary between sand and fine soils is set at 75 um (0.075 mm) rather than the European standard 63 um. This aligns Kenya practice with AASHTO sieve sizes while using the European classification framework.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table K.8.1: RDM 3.1 Table 3.1 -- Kenya Classification of Soil Purposes Based on BS EN ISO 14688-2:2018 (Verified against PDF p8)**

**COARSE SOILS (less than 35% finer than 0.075 mm):**

| Division | Primary Fraction | Composite Fraction | Group Symbol | Fine (% < 0.075 mm) | Uniformity & Curvature Coefficient | Liquid Limit (%) | Name |
|----------|-----------------|-------------------|-------------|---------------------|-----------------------------------|-----------------|------|
| **GRAVELS** (> 50% coarse material is gravel size > 2 mm) | | Slightly silty or clayey GRAVEL | | 0 to 5 | Cu >= 15 & 1 <= Cc <= 3 | | GrW (Well graded GRAVEL) |
| | | | | 0 to 5 | 6 <= Cu < 15 & Cc < 1 | | GrM (Medium graded GRAVEL) |
| | | | | 0 to 5 | 3 <= Cu < 6 & Cc < 1 | | GrP (Poorly graded GRAVEL) |
| | | | | 0 to 5 | Cu < 3 & Cc < 1 | | GrU (Uniformly graded GRAVEL) |
| | | | | 0 to 5 | Cu >= 15 & Cc < 0.5 | | GrG (Gap graded GRAVEL) |
| | | Silty GRAVEL | Gr | 5 to 15 | | | siGr (subdivide as for Gr) |
| | | Clayey GRAVEL | | 5 to 15 | | | clGr (subdivide as for Gr) |
| | | Very silty GRAVEL | | 15 to 35 | | | siGrL (Very silty GRAVEL of Low Plasticity) |
| | | Very Clayey GRAVEL | | 15 to 35 | | < 35 | clGrL (Low Plasticity) |
| | | | | | | 35-50 | clGrM (Medium Plasticity) |
| | | | | | | 50-70 | siGrH (High Plasticity) |
| | | | | | | > 70 | clGrV (Very High Plasticity) |
| **SANDS** (> 50% coarse material is sand size 0.075-2 mm) | | Slightly silty or clayey SAND | Sa | 0 to 5 | (same Cu/Cc criteria as gravel) | | SaW, SaM, SaP, SaU, SaG |
| | | Silty/Clayey SAND | | 5 to 15 | | | siSa, clSa |
| | | Very silty/clayey SAND | | 15 to 35 | | (as above) | clSaL/M/H/V |

**FINE SOILS (more than 35% finer than 0.075 mm):**

| Division | Composite Fraction | Group Symbol | Fine (% < 0.075 mm) | Liquid Limit (%) | Symbol | Name |
|----------|-------------------|-------------|---------------------|-----------------|--------|------|
| **SILTS** | Gravelly SILT | gaSi | 35 to 65 | < 35 | gaSiL | Very Silty SAND of Low Plasticity |
| | | | | 35-50 | gaSiM | of Medium Plasticity |
| | | | | 50-70 | gaSiH | of High Plasticity |
| | | | | > 70 | gaSiV | of Very High Plasticity |
| | Sandy SILT | saSi | 35 to 65 | | | (subdivide as for gaSi) |
| | SILTS | Si | 65 to 100 | | | (subdivide as for gaSi) |
| **CLAYS** | Gravelly CLAY | gaCl | 35 to 65 | < 35 | gaClL | Very gravelly CLAY of Low Plasticity |
| | | | | 35-50 | gaClM | of Medium Plasticity |
| | | | | 50-70 | gaClH | of High Plasticity |
| | | | | > 70 | gaClV | of Very High Plasticity |
| | Sandy CLAY | saCl | 35 to 65 | | | (subdivide as for gaCl) |
| | CLAYS | Cl | 65 to 100 | | | (subdivide as for gaCl) |
| **ORGANIC SOILS** | | | | | | |
| **PEAT** | | | | | | |

**Kenya Amendment (RDM 3.1 Section 3.2.2, bold text):** "Except that sand soils shall have a gradation of 2 mm to 75 um, and fine soils shall be classified as soils passing the 75 um."

**Key ESCS Notes (from RDM 3.1 Table 3.1 notes):**
- If the pair (wL, IP) in the plasticity diagram is above the A-line and 4 <= IP <= 7, classify as CIL-SiL (silty CLAY)
- If soil contains >= 15% coarse fraction, add 'sa' or 'gr' prefix
- If fine particles contain organic matter, add 'or' prefix
- Cu = D60/D10 (uniformity coefficient), Cc = (D30)^2 / (D10 x D60) (curvature coefficient)

**Figure 3.1: ESCS Plasticity Diagram (BS EN ISO 14688-2)**

The A-line equation: IP = 0.73 * (wL - 20)

Plasticity zones:
- L (Low plasticity): LL < 35%
- I (Intermediate plasticity): 35% <= LL < 50%
- H (High plasticity): 50% <= LL < 70%
- V (Very high plasticity): LL > 70%

Above A-line = Clay (Cl); Below A-line = Silt (Si)

### M.2.2 Country-Specific Formulas

**Group Index (GI) -- NOT used in Kenya ESCS classification.** The AASHTO Group Index formula is not part of the ESCS. Kenya uses the plasticity-based classification from BS EN ISO 14688-2:2018 instead.

**Uniformity Coefficient:** Cu = D60 / D10
**Curvature Coefficient:** Cc = (D30)^2 / (D10 x D60)

These are used to classify coarse-grained soils into well-graded (W), medium-graded (M), poorly graded (P), uniformly graded (U), or gap-graded (G).

### M.2.3 Classification System

Kenya uses ESCS (BS EN ISO 14688-2:2018), NOT AASHTO or USCS. Key differences:

| Feature | Kenya (ESCS) | Uganda (AASHTO) |
|---------|-------------|-----------------|
| Primary division | Coarse (< 35% fines) vs Fine (> 35% fines) | Granular (< 35% passing #200) vs Silt-clay (>= 35% passing #200) |
| Fine/coarse boundary | 0.075 mm (Kenya amendment) | 0.075 mm (#200 sieve) |
| Sand/gravel boundary | 2 mm | 2 mm (#10 sieve) |
| Fine-grained subdivision | Plasticity chart (A-line) with L/I/H/V zones | A-4 through A-7 groups |
| Coarse-grained subdivision | Cu and Cc coefficients (W/M/P/U/G) | A-1, A-2, A-3 subgroups |
| Quality index | None (descriptive classification) | Group Index (GI = 0 to 20+) |
| Plasticity zones | L (< 35%), I (35-50%), H (50-70%), V (> 70%) | Based on LL and PI with group boundaries |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
IF Kenya project:
  1. Determine particle size distribution (grading to 0.075 mm per Kenya amendment)
  2. Calculate % passing 0.075 mm sieve:
     IF < 35% --> COARSE SOIL
       IF > 50% of coarse fraction is > 2 mm --> GRAVEL (Gr)
       ELSE --> SAND (Sa)
       Calculate Cu and Cc from grading curve
       Classify as W, M, P, U, or G based on Cu/Cc criteria
       IF fines 5-15% --> add si/cl prefix
       IF fines 15-35% --> add "Very silty/clayey" and plasticity suffix (L/I/H/V)
     IF >= 35% --> FINE SOIL
       Plot (wL, IP) on plasticity chart
       IF above A-line --> CLAY (Cl)
       IF below A-line --> SILT (Si)
       Add plasticity suffix: L/I/H/V based on LL
       IF coarse fraction >= 15% --> add ga/sa prefix
  3. DO NOT calculate AASHTO Group Index
  4. DO NOT assign AASHTO groups (A-1 through A-7)
  5. Report classification with full ESCS symbol and descriptive name
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Common Kenya soil types and typical ESCS classifications:**

| Soil Type | Typical Location | Likely ESCS Group | Typical CBR (soaked) | Engineering Notes |
|-----------|-----------------|------------------|---------------------|-------------------|
| Lateritic gravel | Western, Central Kenya (semi-arid) | siGr to clGr (silty/clayey GRAVEL) | S5-S6 (15-60%) | Excellent road material; ESCS grading depends on weathering degree |
| Black cotton soil | Rift Valley, SE Nairobi, Kisumu | ClH to ClV (CLAY of High/Very High Plasticity) | S1 (2-5% soaked) | Expansive; plot above A-line; LL > 50% typical; requires treatment |
| Red friable clay | Various highland areas | ClI to ClH (CLAY of Intermediate/High Plasticity) | S3 (7-13% soaked) | Common subgrade; erodible at 1:1 cut slopes > 4-5 m |
| Quartzitic gravel | Gneiss/quartzite hills | GrW to GrM (Well/Medium graded GRAVEL) | S4-S6 (10-60%) | Excellent base/subbase when properly graded |
| Coral gravel | Coast (Lamu, Kilifi, Mombasa) | clGr to siGr (clayey/silty GRAVEL) | S5-S6 (15-60%) | Composite of coral fragments and silt matrix |
| Calcareous gravel | Arid regions | GrW to siGr | S4-S6 (10-60%) | Formed by lime concentration; impermeable |
| Volcanic ash/pumice | Rift Valley, highland areas | SiH to SiV or special | S3-S4 (7-18%) | Very low MDD; may not classify by CBR alone if MDD < 1400 kg/m3 |
| Coastal sand | Coast | SaW to SaP (SAND) | S4 (10-18%) | Non-plastic; low bearing when loose |

### M.3.3 Common Errors (Kenya-Specific)

1. **Using AASHTO classification (A-1 through A-7) for Kenya projects.** Kenya mandates ESCS per BS EN ISO 14688-2:2018. AASHTO groups should not appear in Kenya soil classification reports.
2. **Using 63 um (0.063 mm) as the fine/coarse boundary.** Kenya amends BS EN ISO 14688-2 to use 75 um (0.075 mm). This aligns with AASHTO sieve sizes while maintaining the ESCS framework.
3. **Calculating Group Index (GI) for Kenya soils.** GI is an AASHTO concept. ESCS uses descriptive classification with plasticity suffixes (L/I/H/V) instead.
4. **Confusing ESCS plasticity zones with AASHTO A-6/A-7 boundaries.** ESCS has 4 plasticity zones (L < 35%, I 35-50%, H 50-70%, V > 70%) while AASHTO uses different LL/PI boundaries for its groups.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Classification system | ESCS (BS EN ISO 14688-2:2018) | Always | No flag | RDM 3.1 Section 3.2.2 |
| Fine/coarse boundary | 0.075 mm (75 um) | Kenya amendment | No flag | RDM 3.1 Section 3.2.2 |
| Sand/gravel boundary | 2 mm | Standard | No flag | BS EN ISO 14688-2 |
| CBR soak condition | 4 days soak at 100% MDD (AASHTO T99) | Not specified | ASSUMED: Soaked CBR | RDM 3.1 Section 3.3.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source | Error if Outside |
|-----------|-----------|--------|-----------------|
| Fines content (ESCS) | 0-100% | BS EN ISO 14688-2 | Invalid grading data |
| Liquid Limit | 0-200% (typical 15-80% for Kenya soils) | RDM 3.1 Table 3.1 | Verify test result if outside typical range |
| Plasticity Index | 0-100% (typical 5-55% for Kenya soils) | RDM 3.1 Table 3.1 | Verify test result; PI > 55% suggests highly expansive clay |
| Cu (uniformity coefficient) | > 1 | BS EN ISO 14688-2 | Invalid grading curve |

### M.5.2 Standards Compliance Checks

- Classification report shall use ESCS symbols (GrW, SaP, ClH, SiL, etc.) not AASHTO groups
- Grading analysis shall be to 0.075 mm (Kenya amendment), not 0.063 mm
- Plasticity shall be plotted on the ESCS plasticity diagram (Figure 3.1) with A-line IP = 0.73*(wL-20)
- If fine particles plot as CIL-SiL (4 <= IP <= 7, above A-line), classify as silty CLAY

### M.5.3 Departures / Relaxations Process

Chief Engineer for Roads approval required for any departure from classification standards (Section 1.5).

---

## M.6 Country-Specific Escalation

| Trigger | Action | Source |
|---------|--------|--------|
| Soil plots above A-line with LL > 50% and PI > 25% | Flag as potentially expansive clay; recommend extended investigation per RDM 3.1 Section 6.7.1 | Table 3.1, Section 6.7.1 |
| Volcanic ash/pumice with MDD < 1400 kg/m3 | Cannot classify by CBR alone; must test for GCS-E conformity per RDM 3.3 Section 8.9 | Table 3.3 note |
| Soil type cannot be conclusively identified from visual description alone | Laboratory testing mandatory: grading, Atterberg limits at minimum | Section 3.2.2 |
| Significant organic content detected | Classify as organic soil; flag for loss-on-ignition test | Section 6.7.5 |

---

## M.7 Worked Example -- Kenya

**Scenario:** Classify soil samples from a Kenya Class C road project: Sample A (PI=28, LL=52, sand 15%, fines 85%), Sample B (gravel 60%, sand 30%, fines 10%, CBR=35).

**Sample A:**
1. Fines content = 85% (> 35%) --> FINE SOIL
2. LL = 52% --> High plasticity zone (H: 50-70%)
3. PI = 28; A-line value at LL=52 = 0.73*(52-20) = 23.4. Since PI (28) > A-line (23.4) --> CLAY
4. Sand content = 15% (>= 15% of coarse fraction) --> add 'sa' prefix
5. **ESCS Classification: saClH (Sandy CLAY of High Plasticity)**
6. From Table 3.3: Red friable clays or sandy clays --> likely S3-S4 when soaked
7. Engineering assessment: Moderate to poor subgrade. PI = 28 indicates moisture sensitivity. If LL > 50% and PI > 20%, check for expansive potential per Section 6.7.1.

**Sample B:**
1. Fines content = 10% (< 35%) --> COARSE SOIL
2. Coarse fraction = gravel 60% + sand 30% = 90%. Gravel is 60/90 = 67% of coarse --> GRAVEL
3. Fines 10% (5-15%) --> silty or clayey GRAVEL
4. Need plasticity data of fines to determine si vs cl prefix. Assume non-plastic fines --> siGr (Silty GRAVEL)
5. Need Cu and Cc from grading curve to determine W/M/P/U/G suffix
6. CBR = 35% --> S5 or S6 class (depending on soaked/unsoaked)
7. **ESCS Classification: siGr (Silty GRAVEL) -- further subdivision requires Cu/Cc data**
8. Engineering assessment: Good subgrade/subbase material. CBR 35% at S6 range if soaked. Suitable for G30 or G45 class per RDM 3.3 Table 8.8.

**Note:** This classification uses ESCS (BS EN ISO 14688-2:2018) as mandated by Kenya RDM 3.1. AASHTO classification (A-7-5, A-2-4, etc.) is NOT used for Kenya projects.

---

## M.8 References

1. Kenya RDM 3.1: Ground Investigations and Material Prospecting (2025). Ministry of Roads and Transport, Republic of Kenya. Chapter 3.
2. BS EN ISO 14688-2:2018: Geotechnical investigation and testing -- Identification and classification of soil -- Part 2: Principles for a classification.
3. BS EN ISO 14688-1: Geotechnical investigation and testing -- Identification and description of soil.
4. Kenya RDM 3.3: Pavement Foundation and Materials Design (2025). Chapter 4.

---

**Module Changelog**
- 0.1 (2026-04-04): Initial Kenya module created from RDM 3.1 Chapter 3 (2025). ESCS classification system verified against PDF Table 3.1.
