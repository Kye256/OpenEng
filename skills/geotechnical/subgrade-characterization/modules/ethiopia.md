# Subgrade Characterization -- Ethiopia Module

> **Parent Skill:** #10 Subgrade Characterization
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Flexible Pavement Design Manual Vol I - 2013, Chapter 3 (Tables 3-1, 3-2, 3-3); ERA Geotechnical Design Manual - 2013, Section 2.2
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Flexible Pavement Design Manual Vol I | 2013 | Chapter 3 (Subgrade), Table 3-1 (Subgrade classes), Table 3-2 (Water table depth), Table 3-3 (Typical CBR values), Section 3.3 (Design CBR method) | Current -- primary |
| ERA Geotechnical Design Manual (GDM) | 2013 | Section 2.2 (Subgrade strength, stiffness, moisture/density), Section 2.3 (Special soils), Section 2.4 (Subgrade treatment) | Current -- supplementary |
| TRL Overseas Road Note 31 | 1993 | Subgrade classification method (ERA's underlying technical source) | Reference |
| AASHTO T-193 | Current | CBR test method | Reference test standard |
| AASHTO T-99 | Current | Standard Proctor compaction for subgrade CBR | Reference test standard |

### M.1.2 Institutional Context

ERA's subgrade classification feeds directly into the flexible pavement design catalogue (ERA Pavement Vol I Chapter 10). The subgrade class (S1-S5), paired with the traffic class (T1-T8), determines the pavement structure from the design catalogue charts. All ERA, Regional Roads Authority, and Woreda road projects use this classification system.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and design class (DC1-DC8) that determines design period and traffic.

### M.1.3 Standard Philosophy

ERA uses a CBR-based subgrade classification with five classes (S1-S5). The design subgrade CBR is determined using the lower 10th percentile method from the sample population. This is the same statistical approach as Uganda (TRL ORN 31 method) and differs from Kenya (CUSUM average-based method). ERA's system derives from TRL ORN 31 but has been calibrated with five classes instead of six.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table E.10.1: ERA Table 3-1 -- Subgrade Strength Classes (Verified from PDF)**

| Subgrade Class | CBR Range (%) |
|---------------|--------------|
| S1 | 2-4 |
| S2 | 5-7 |
| S3 | 8-14 |
| S4 | 15-29 |
| S5 | 30+ |

**Notes on Table 3-1:**
- ERA has **five** subgrade classes (S1-S5), not six like Uganda (S1-S6) or Kenya (S1-S6).
- S1 (CBR 2-4%): Weakest class in the design catalogue. CBR <2% requires subgrade improvement before the catalogue can be used.
- S5 (CBR 30%+): Strongest class. Pavement thicknesses do not reduce further above CBR 30%.
- ERA S1 includes CBR 2-4%, unlike Uganda where S1 = CBR 2% only.
- When design CBR falls exactly on a class boundary, use the lower class (conservative approach).

**Table E.10.2: ERA Table 3-2 -- Estimated Design Subgrade Class by Water Table Depth (From ERA Pavement Vol I Table 3-2, values to be verified)**

| Soil Type (AASHTO) | Water Table >2 m Below Formation | Water Table 1-2 m Below Formation | Water Table <1 m Below Formation |
|--------------------|----------------------------------|-----------------------------------|----------------------------------|
| A-1 (Gravel/sand) | S5 | S4-S5 | S3-S4 |
| A-2 (Silty/clayey gravel) | S4-S5 | S3-S4 | S2-S3 |
| A-4 (Silty soils) | S3-S4 | S2-S3 | S1-S2 |
| A-6 (Clayey soils) | S2-S3 | S1-S2 | S1 |
| A-7 (Clayey soils, high LL) | S1-S2 | S1 | S1 |

**Note:** Table 3-2 provides preliminary estimates only. Laboratory CBR testing is required for detailed design.

**Table E.10.3: ERA Table 3-3 -- Typical CBR Values for Common Ethiopian Soil Types (From ERA Pavement Vol I Table 3-3, values to be verified)**

| Soil Type | Typical AASHTO Class | Typical CBR Range (%) | Typical ERA Subgrade Class |
|-----------|---------------------|----------------------|---------------------------|
| Black cotton soil (vertisol) | A-7-5, A-7-6 | 2-5 | S1-S2 |
| Red laterite | A-2-6, A-6 | 8-25 | S3-S4 |
| Volcanic ash/scoria | A-1, A-2-4 | 20-50+ | S4-S5 |
| Alluvial silt/clay | A-4, A-5 | 3-10 | S1-S3 |
| Residual granite | A-2-4, A-2-6 | 10-30 | S3-S5 |
| Weathered basalt | A-2-6, A-7-5 | 5-15 | S2-S3 |

### M.2.2 Cross-Country Comparison: Subgrade Classification

| Class | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-------|---------------|---------------|-------------|
| S1 | CBR 2-4% | CBR 2% | CBR 2-5% |
| S2 | CBR 5-7% | CBR 3-4% | CBR 5-10% |
| S3 | CBR 8-14% | CBR 5-7% | CBR 7-13% |
| S4 | CBR 15-29% | CBR 8-14% | CBR 10-18% |
| S5 | CBR 30%+ | CBR 15-29% | CBR 15-30% |
| S6 | (does not exist) | CBR 30%+ | CBR 30-60% |

**Key differences:**
- ERA has 5 classes; Uganda and Kenya have 6.
- ERA S1 covers a range (CBR 2-4%), while Uganda S1 is a single value (CBR 2%).
- ERA S5 upper bound is open (30%+), combining Uganda's S5 and S6 into one class.
- ERA and Uganda subgrade boundaries are similar but not identical -- both derive from TRL ORN 31.
- Kenya uses fundamentally different CBR ranges with overlapping class boundaries and a CUSUM method rather than 10th percentile.

### M.2.3 Cross-Country Comparison: Design CBR Method

| Feature | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|---------|---------------|---------------|-------------|
| Statistical method | Lower 10th percentile | Lower 10th percentile (TRL ORN 31) | CUSUM average with minimum check |
| Minimum samples | 6 per uniform section | Not explicitly stated | 6 per uniform section |
| CBR test standard | AASHTO T-193 at T-99 | AASHTO T-193 at T-99 | BS 1377 |
| Soaking requirement | 4-day soaked | 4-day soaked | 4-day soaked |
| Section delineation | Geological boundaries, visual assessment | Geological boundaries | CUSUM method |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic

**Step 1: Compile CBR test results for the alignment section**
- Collect all soaked CBR results from the alignment section.
- Group results by uniform geological sections (visual assessment and soil classification).
> Cross-reference: See Skill #8 Ethiopia module for AASHTO soil classification that feeds section delineation.

**Step 2: Determine design CBR using lower 10th percentile method**
- Rank all CBR values in ascending order for each uniform section.
- The design CBR is the value at the lower 10th percentile of the sample distribution.
- For n samples: design CBR position = 0.10 x (n + 1). Interpolate if necessary.
- Minimum 6 samples per section recommended for statistical validity.

**Step 3: Assign ERA subgrade class from Table 3-1**
- S1: CBR 2-4%
- S2: CBR 5-7%
- S3: CBR 8-14%
- S4: CBR 15-29%
- S5: CBR 30%+
- If design CBR <2%: subgrade improvement required before catalogue entry.

**Step 4: Cross-check against Table 3-2 (water table depth)**
- If water table depth is known, verify subgrade class is consistent with Table 3-2 estimate.
- If Table 3-2 estimate is lower than test result: investigate moisture conditions during testing.

**Step 5: Enter design catalogue**
- Subgrade class (S1-S5) and traffic class (T1-T8) together determine the pavement structure.
> Cross-reference: See Skill #13 Ethiopia module for design class (DC) that determines design period and traffic class.

### M.3.2 Professional Judgment

- The lower 10th percentile method is conservative. For sections with fewer than 10 samples, the lowest value may be used as the design CBR (effectively 0th percentile).
- Ethiopian black cotton soils (A-7-5, A-7-6) commonly give CBR 2-5% at soaked condition. Sections through black cotton soil areas typically classify as S1 or S2.
- Volcanic scoria and cinder areas in the Rift Valley often give CBR >30% (S5), but these materials may be crushable -- verify durability.
- In semi-arid areas (Afar, Somali regions), soaked CBR may be significantly lower than natural moisture CBR. Always use soaked values for design.

### M.3.3 Common Errors

1. **ERA has 5 subgrade classes (S1-S5), not 6 like Uganda and Kenya.** Never use S6 for Ethiopian projects. If CBR exceeds 30%, the subgrade class is S5 (the maximum).
2. **Do not use Uganda CBR boundaries for ERA classes.** ERA S1 is CBR 2-4%, not CBR 2% only. ERA S3 is CBR 8-14%, not CBR 5-7%. The class numbers are similar but the CBR ranges differ.
3. **Do not use CUSUM method for Ethiopian design CBR.** ERA uses the lower 10th percentile method (same as Uganda/TRL ORN 31), not the average-based CUSUM method used by Kenya.
4. **Do not accept unsoaked CBR for design.** ERA requires 4-day soaked CBR at Standard Proctor (AASHTO T-99) for subgrade classification.

---

## M.4 Country-Specific Defaults

| Parameter | Default Value | Flag Text | Source |
|-----------|--------------|-----------|--------|
| Design CBR method | Lower 10th percentile | "STANDARD: ERA uses 10th percentile method per ERA Pavement Vol I Section 3.3." | ERA Section 3.3 |
| CBR test condition | 4-day soaked at T-99 | "STANDARD: Soaked CBR at Standard Proctor per ERA requirements." | ERA / AASHTO T-193 |
| Minimum subgrade class | S1 (CBR 2%) | "STANDARD: CBR <2% requires subgrade improvement." | ERA Table 3-1 |
| Water table depth | >2 m below formation | "ASSUMED: Water table >2 m. Verify from borehole data or site investigation." | ERA Table 3-2 |
| Section length | Uniform geology | "ASSUMED: Section boundaries based on geological uniformity. Verify from Skill #7 investigation results." | ERA Section 3.3 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Flag If Outside |
|-----------|------------|-----------------|
| Design CBR | 2-100% | CBR <2% requires subgrade improvement; CBR >60% unusual for natural soils |
| Number of samples per section | 3-50 | Fewer than 6 samples reduces statistical confidence |
| Section length | 200 m - 5000 m | Very short or very long uniform sections may indicate incorrect delineation |
| Subgrade class | S1-S5 only | S6 does not exist in ERA system |
| Water table depth | 0-20 m | Shallow water table (<1 m) triggers escalation |

### M.5.2 Standards Compliance

- Subgrade class shall be S1 through S5 only (ERA Table 3-1).
- Design CBR shall be determined using the lower 10th percentile method (not CUSUM, not average).
- CBR shall be tested at Standard Proctor compaction (AASHTO T-99), 4-day soaked.
- Section delineation shall consider AASHTO soil classification and geological boundaries.

### M.5.3 Departures Process

Any departure from ERA subgrade classification (e.g., using a higher percentile for design CBR, accepting unsoaked CBR) requires written approval through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Action |
|---------|--------|--------|
| Design CBR <2% (below S1) | Subgrade too weak for design catalogue | Subgrade improvement required (lime/cement stabilization, removal and replacement); escalate to senior geotechnical engineer |
| Expansive subgrade (A-7-5/A-7-6 with PI >25) | Swell potential may override CBR classification | Additional swell testing per ERA GDM 2.3.1; subgrade treatment design required; escalate |
| High water table (<1.5 m below formation) | Subgrade strength likely reduced from Table 3-2 defaults | Drainage investigation required; verify soaked CBR represents worst-case; escalate |
| High CBR variability (CV >40%) | Uniform section assumption invalid | Subdivide section; additional testing; escalate to senior engineer |
| Collapsible soil suspected (latosols, aeolian) | CBR may be misleadingly high at natural moisture | Collapse potential test required per ERA GDM 2.3.3; soaked CBR essential; escalate |

---

## M.7 Worked Example

### Design CBR Determination for Jimma - Mizan Teferi Road

**Project:** Jimma to Mizan Teferi road upgrade, Section km 25+000 to km 28+000 (uniform red laterite section).

**CBR Test Results (4-day soaked at AASHTO T-99):**

| Sample | Location | CBR (%) | AASHTO Class |
|--------|----------|---------|-------------|
| 1 | km 25+200 | 12 | A-2-6 |
| 2 | km 25+500 | 9 | A-6 |
| 3 | km 26+000 | 15 | A-2-6 |
| 4 | km 26+500 | 11 | A-2-6 |
| 5 | km 26+800 | 8 | A-6 |
| 6 | km 27+000 | 14 | A-2-6 |
| 7 | km 27+500 | 10 | A-6 |
| 8 | km 27+800 | 13 | A-2-6 |
| 9 | km 28+000 | 11 | A-2-6 |

**Step 1: Rank CBR values in ascending order**
8, 9, 10, 11, 11, 12, 13, 14, 15

**Step 2: Determine 10th percentile position**
- n = 9 samples.
- Position = 0.10 x (9 + 1) = 1.0.
- 10th percentile value = 1st ranked value = 8%.

**Step 3: Assign ERA subgrade class**
- Design CBR = 8%.
- ERA Table 3-1: CBR 8-14% = **S3**.

**Step 4: Cross-check against Table 3-2**
- AASHTO classification predominantly A-2-6 (silty clayey gravel).
- Water table >2 m below formation (confirmed from boreholes).
- Table 3-2 estimate for A-2 with deep water table: S4-S5.
- Test result (S3) is lower than Table 3-2 estimate -- this is conservative and acceptable.

**Step 5: Design catalogue entry**
- Subgrade class: **S3**
- Traffic class determined from Skill #13 Ethiopia module (design class and design period).
- Enter ERA Pavement Vol I Chapter 10 design catalogue with S3 and applicable traffic class.

**Result:** Design CBR = 8%, ERA Subgrade Class S3.

> **All outputs are preliminary/screening level.** Verify subgrade classification against full laboratory programme and ERA Pavement Vol I Section 3.3.

---

## M.8 References

| Reference | Citation |
|-----------|----------|
| ERA Pavement Vol I Ch 3 | Ethiopian Roads Authority, *Flexible Pavement Design Manual Vol I*, 2013, Chapter 3: Subgrade. Table 3-1 (Subgrade classes), Table 3-2 (Water table depth estimates), Table 3-3 (Typical CBR values), Section 3.3 (Design CBR method). |
| ERA GDM Section 2.2 | Ethiopian Roads Authority, *Geotechnical Design Manual*, 2013, Section 2.2: Subgrade strength (2.2.1), stiffness (2.2.2), moisture/density (2.2.3). |
| ERA GDM Section 2.3 | Ethiopian Roads Authority, *Geotechnical Design Manual*, 2013, Section 2.3: Special soils -- expansive (2.3.1), compressible (2.3.2), collapsible (2.3.3), dispersive (2.3.4). |
| ERA GDM Section 2.4 | Ethiopian Roads Authority, *Geotechnical Design Manual*, 2013, Section 2.4: Subgrade treatment methods. |
| TRL ORN 31 | Transport Research Laboratory, *Overseas Road Note 31: A Guide to the Structural Design of Bitumen-Surfaced Roads in Tropical and Sub-Tropical Countries*, 5th Edition, 1993. Subgrade classification and percentile method. |
| AASHTO T-193 | Standard Method of Test for The California Bearing Ratio (CBR). |
| AASHTO T-99 | Standard Method of Test for Moisture-Density Relations (Standard Proctor). |
