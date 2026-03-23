# Subgrade Characterization -- Uganda Module

> **Parent Skill:** #10 Subgrade Characterization
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol 3 Part I (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 3 Part I | 2010 | Section 3.0 (Determining Subgrade Strength), Section 4.0 (Wet/Dry Conditions), Appendix C (Design Catalogue) | Current |
| TRL Overseas Road Note 31 | 1993 | Subgrade classification, percentile method | Reference |

### M.1.2 Institutional Context

UNRA (Uganda National Roads Authority) uses the MoWT Vol 3 Part I design catalogue for all national trunk road pavements. The catalogue is entered with two parameters: traffic class (T1-T8) and subgrade class (S1-S6). The subgrade class is determined from the design CBR, which is the primary output of this skill. District roads managed by local governments follow the same system.

### M.1.3 Standard Philosophy

The MoWT manual uses a simple, practical approach to subgrade characterization. The design CBR is determined from field and laboratory testing, classified into one of six subgrade classes, and used to enter the design catalogue in Appendix C. The manual deliberately keeps the process simple, noting that "these guidelines are purposely kept as simple as possible" and recommending TRL RN31 for more detailed guidance.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table U.10.1: MoWT Table 3.1 -- Subgrade Classification**

| Subgrade Class | S1 | S2 | S3 | S4 | S5 | S6 |
|---------------|-----|-----|-----|------|-------|------|
| CBR Range (%) | 2 | 3-4 | 5-7 | 8-14 | 15-29 | 30+ |

*(Verified from MoWT Vol 3 Part I, Table 3.1)*

**Notes on Table 3.1:**
- S1 (CBR = 2%): The minimum subgrade for the design catalogue. CBR < 2% requires subgrade improvement before the catalogue can be used (see MoWT Section 5.5).
- S6 (CBR >= 30%): The strongest subgrade class. Pavement thicknesses do not reduce further above CBR 30%.
- Class boundaries are at CBR 2, 3, 5, 8, 15, 30. When the design CBR falls exactly on a boundary, use the lower class (conservative).

**Table U.10.2: MoWT Table 3.2 -- Method for Classifying Subgrade Design CBR**

| Expected Subgrade Conditions | Sample Conditions for CBR Testing |
|------------------------------|----------------------------------|
| Saturation likely at some periods (high rainfall, distinct wet season, low-lying, flooding, high water table) | Specimens compacted at OMC (AASHTO T-99), to 100% MDD. CBR measured after 4 days soaking. |
| Saturation unlikely but wet conditions will occur periodically (high rainfall, distinct wet season, fluctuating water table) | Specimens compacted at OMC (AASHTO T-99), to 100% MDD. CBR measured with no soaking. |
| Dry conditions (low rainfall areas, water table low) | Specimens compacted at OMC (AASHTO T-99), to 100% MDD. Specimens dried back to design moisture content from Equation 3. CBR measured with no soaking. |

*(Verified from MoWT Vol 3 Part I, Table 3.2)*

**Notes on Table 3.2:**
- A minimum of 6 representative samples per uniform section is required for classification purposes.
- Compaction is at 100% Proctor MDD (AASHTO T-99) -- NOT modified AASHTO. This is for subgrade classification only. (Base/subbase materials use modified AASHTO per Table 5.1.)
- Cohesive materials with PI > 20 should be stored sealed for 24 hours before CBR testing to allow excess pore pressures to dissipate.

**Table U.10.3: MoWT Table 3.3 -- Recommended Minimum Subgrade Depth Meeting Design Strength**

| Subgrade Class | S1 | S2 | S3 | S4 | S5 | S6 |
|---------------|-----|-----|-----|-----|-----|-----|
| Minimum Depth (mm) | 250 | 250 | 350 | 450 | 550 | 650 |

*(Verified from MoWT Vol 3 Part I, Table 3.3)*

**Notes on Table 3.3:**
- These depths are NOT the depths to which recompaction is required. They are the depths to which the Engineer should confirm that the nominal subgrade strength is available.
- The total thickness of pavement layers plus the minimum subgrade depth should be 800 to 1000 mm.
- DCP is recommended to verify subgrade uniformity to these depths during construction.
- For stronger subgrades (S4 and higher), the depth check is to ensure no underlying weak layer would undermine performance.

**Table U.10.4: MoWT Table 4.1 -- Guide to Selecting Design Conditions for Predominantly Wet Regions**

| Expected Drainage Provision | Good Maintenance, Defects Remedied Timeously | Deficient Maintenance |
|----------------------------|---------------------------------------------|----------------------|
| Good, well planned, well constructed | D (Dry catalogue) | Low traffic (T1/T2): D; High traffic (T3+): W |
| Deficient | Low traffic (T1/T2): D; High traffic (T3+): W | W (Wet catalogue) |

*(Verified from MoWT Vol 3 Part I, Table 4.1)*

Where D = use dry region design catalogue (Charts D1-D5) and W = use wet region design catalogue (Charts W1-W5). This affects pavement thickness selection, not the design CBR itself, but the moisture condition determination and Table 4.1 must be reported alongside the design CBR.

**Design CBR Percentile Method (MoWT Section 3.3, p. 3-4):**

The MoWT manual recommends using the 10th percentile cumulative percentage as a guide to the subgrade class:

> "A good rule of thumb is to use the 10 per cent cumulative percentage (percentile) as a guide to the subgrade class, on the basis that only 10 per cent of the actual values would be expected to have a lower CBR than the indicated CBR."

This means:
1. Rank all CBR results from lowest to highest for a section.
2. Plot a cumulative distribution curve (% of samples less than each CBR value vs CBR).
3. Read the CBR at the 10% cumulative level. This is the design CBR.
4. Assign the subgrade class from Table 3.1.

For small sample sizes (6-10 results), the 10th percentile is approximated by the lowest or second-lowest value, depending on sample size.

### M.2.2 Country-Specific Formulas

**Design moisture content for dry conditions (MoWT Equation 3):**

```
Design moisture content (%) = 0.67 * OMC (%) + 0.8
```

Where OMC is from the AASHTO T-99 (Proctor) compaction test.

This formula is used only for the dry condition in Table 3.2 (rainfall < 250 mm/year).

### M.2.3 Classification System

Uganda uses the S1-S6 subgrade classification system from Table 3.1, which is identical to the TRL RN31 system. The subgrade class directly enters the MoWT design catalogue (Appendix C) together with the traffic class (T1-T8) to select the pavement structure.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 3 (Uganda): Determine CBR test condition
  |-- Assess climate and moisture per MoWT Table 3.2:
  |   |-- Most of Uganda: rainfall > 250 mm/year -> soaked (4-day) or unsoaked at OMC
  |   |-- Northern Karamoja dry corridor: may qualify for dry condition (Equation 3)
  |   +-- Specific assessment per MoWT Section 3.2 guidance
  |-- Confirm CBR tested at 100% Proctor (T-99) MDD

Step 4 (Uganda): Determine design CBR
  |-- Minimum 6 samples per uniform section (Table 3.2 note)
  |-- Apply 10th percentile method (Section 3.3):
  |   |-- If >= 10 results: plot cumulative distribution, read 10th percentile
  |   |-- If 6-9 results: use lowest or 2nd lowest value
  |   +-- If < 6 results: flag and use lowest value conservatively
  |-- Assign subgrade class from Table 3.1

Step 5 (Uganda): Determine wet/dry design
  |-- Apply Table 4.1:
  |   |-- Assess expected drainage provision (good vs deficient)
  |   |-- Assess expected maintenance level (good vs deficient)
  |   |-- Assess traffic level (T1-T2 low vs T3+ high)
  |   +-- Select D (dry catalogue) or W (wet catalogue)
  +-- Document the D/W selection with justification

Step 6 (Uganda): Check investigation depth
  |-- Minimum depth per Table 3.3 for the assigned subgrade class
  |-- Total pavement + minimum subgrade depth should be 800-1000 mm
  +-- Flag if investigation depth was insufficient
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Most of Uganda is "wet" for pavement design purposes.** Rainfall exceeds 250 mm/year in almost all regions. Only parts of Karamoja may qualify as "dry." When in doubt, use soaked CBR (4-day soak).

**Laterite subgrades in Uganda** typically fall in the S4-S6 range (CBR 8-30+%) when properly compacted. Black cotton soil (found in Karamoja, parts of eastern Uganda, and some valley bottoms) typically falls in S1-S2 (CBR 2-4%). The transition between these soil types can be abrupt, requiring careful section delineation.

**The design catalogue "stops" at S1 (CBR = 2%).** For weaker subgrades, the MoWT manual (Section 5.5) provides guidance on improvement methods: lime treatment, removal and replacement, geofabrics, or pioneer layers. The design CBR after improvement should be used to re-enter the catalogue.

**UNRA projects typically use the wet catalogue (W series)** unless there is strong evidence of good drainage and maintenance. This is conservative but realistic given Uganda's maintenance constraints.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using modified AASHTO (T-180) MDD for subgrade CBR classification.** MoWT Table 3.2 specifies Standard Proctor (T-99) at 100% MDD for subgrade classification. Modified AASHTO is for base/subbase (Table 5.1).
2. **Not soaking CBR samples in wet regions.** Almost all of Uganda requires soaked CBR for design.
3. **Treating the design catalogue as absolute.** The MoWT preamble notes that the catalogue should be "regarded as sound suggestions for the assumed conditions" and that the Engineer should "make use of other design methods as both a check and a means of possibly refining the structure."
4. **Ignoring Table 3.3 minimum depths.** A thin layer of strong material over weak material does not constitute a strong subgrade. The design strength must be available to the depth in Table 3.3.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| CBR test condition | Soaked (4-day) at 100% T-99 MDD | Not specified | ASSUMED: Soaked CBR per MoWT Table 3.2 (most of Uganda is wet) | Rainfall > 250 mm in most regions |
| Design catalogue | Wet (W series) | Drainage/maintenance uncertain | ASSUMED: Wet region catalogue per MoWT Table 4.1 (conservative for maintenance uncertainty) | UNRA practice |
| Percentile | 10th percentile | Not specified | ASSUMED: 10th percentile per MoWT Section 3.3 guidance | Standard for MoWT design |
| Minimum samples | 6 per uniform section | Not specified | ASSUMED: Minimum 6 per MoWT Table 3.2 note | Required for classification |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design CBR | 2 | 100 | % | MoWT Table 3.1 | If < 2%: subgrade improvement required (Section 5.5). If > 30%: classify as S6, no further benefit. |
| Number of CBR tests per section | 6 | -- | count | MoWT Table 3.2 note | Fewer than 6: classification unreliable. Flag and use lowest value. |
| Investigation depth (S1) | 250 | -- | mm | MoWT Table 3.3 | If less: strength not confirmed at depth. |
| Investigation depth (S4) | 450 | -- | mm | MoWT Table 3.3 | If less: weak underlying material may be missed. |
| Investigation depth (S6) | 650 | -- | mm | MoWT Table 3.3 | If less: flag for deeper investigation. |

### M.5.2 Standards Compliance Checks

- **Check:** CBR tested at correct conditions per Table 3.2.
- **Standard:** MoWT Vol 3 Part I, Table 3.2
- **Pass condition:** CBR tested at OMC (T-99), 100% MDD, with 4-day soaking (for wet conditions)
- **Fail action:** Warn -- "CBR not tested per Table 3.2. Results may not be appropriate for subgrade classification."

- **Check:** Minimum subgrade depth per Table 3.3.
- **Standard:** MoWT Vol 3 Part I, Table 3.3
- **Pass condition:** Investigation depth >= minimum depth for assigned subgrade class
- **Fail action:** Warn -- "Investigation depth [X] mm < minimum [Y] mm for class S[Z]. Confirm strength at depth."

### M.5.3 Departures / Relaxations Process

No formal departures process. The Engineer exercises professional judgment within the framework of the manual. Where the design CBR falls at a class boundary, the Engineer should justify the selected class. For CBR < 2%, the standard process is subgrade improvement, not departure from the catalogue.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Design CBR < 2% | Below catalogue minimum | SENIOR REVIEW -- Design CBR [X]% < 2%. Subgrade improvement required per MoWT Section 5.5. Options: in-situ lime treatment (for clay), removal and replacement, geofabric, pioneer layer. |
| Black cotton soil identified | Highly expansive, very low CBR | SENIOR REVIEW -- Black cotton soil at [location]. Expect very low CBR (1-3%), high swell. Consider removal to 1 m depth and replacement with selected fill. |
| CBR test not per Table 3.2 conditions | Wrong test method for design | SENIOR REVIEW -- CBR tested [condition] but Table 3.2 requires [condition]. Re-test or adjust design conservatively. |
| Fewer than 6 CBR results for section | Unreliable classification | SENIOR REVIEW -- Only [N] CBR results for section. Table 3.2 requires minimum 6. Recommend additional testing before finalising design. |

---

## M.7 Worked Example -- Uganda

### Example: Determine Design CBR and Subgrade Class for a Uganda Trunk Road

**Source:** Based on MoWT Section 3.3 methodology and Figure 3.1.

**Given:**
- Project: Lira-Soroti trunk road, 20 km section (Ch 10+000 to Ch 30+000)
- Terrain: Gently rolling
- Climate: Annual rainfall ~1300 mm, distinct wet season (April-May, September-November)
- Soil type: Lateritic sandy clay (AASHTO A-2-6 to A-6), confirmed by Skill #8
- 10 CBR test results (soaked 4-day, at OMC, 100% Proctor MDD):

| Test No. | Chainage | CBR (%) |
|----------|----------|---------|
| 1 | 12+000 | 12 |
| 2 | 14+000 | 15 |
| 3 | 16+000 | 8 |
| 4 | 18+000 | 20 |
| 5 | 20+000 | 14 |
| 6 | 22+000 | 11 |
| 7 | 24+000 | 18 |
| 8 | 26+000 | 9 |
| 9 | 28+000 | 16 |
| 10 | 30+000 | 13 |

**Solution:**

**Step 1: Verify test conditions**
- All results are soaked 4-day at 100% Proctor MDD. Correct for this climate per Table 3.2 (saturation likely).

**Step 2: Check for uniform section**
- Soil type is consistent (lateritic sandy clay throughout). DCP profiles (not shown) confirm consistent strength profile.
- 10 CBR results for a 20 km section. This meets the minimum of 6.
- Accept as one uniform section.

**Step 3: Rank CBR values from lowest to highest**

| Rank | CBR (%) | Cumulative % |
|------|---------|-------------|
| 1 | 8 | 10% |
| 2 | 9 | 20% |
| 3 | 11 | 30% |
| 4 | 12 | 40% |
| 5 | 13 | 50% |
| 6 | 14 | 60% |
| 7 | 15 | 70% |
| 8 | 16 | 80% |
| 9 | 18 | 90% |
| 10 | 20 | 100% |

**Step 4: Determine 10th percentile**
- With 10 results, the 10th percentile corresponds to the 1st ranked value: **CBR = 8%**.
- Mean = 13.6%, Standard deviation = 3.7%.
- Statistical check: 13.6 - 1.28 * 3.7 = 8.9%. Consistent with the 10th percentile estimate of 8%.
- **Design CBR = 8%**

**Step 5: Assign subgrade class**
- From Table 3.1: CBR 8% falls in S4 (range 8-14%).
- CBR 8% is at the lower boundary of S4. Since 8% is included in the S4 range, S4 is appropriate.
- **Subgrade class = S4**

**Step 6: Check minimum investigation depth**
- Table 3.3: S4 requires minimum 450 mm subgrade depth.
- Test pits were dug to 1.0 m below formation. Formation level is approximately 0.3 m below existing surface.
- Investigation depth below formation = 1.0 - 0.3 = 0.7 m = 700 mm > 450 mm. OK.

**Step 7: Determine wet/dry design condition**
- Rainfall 1300 mm -> wet region.
- Drainage provision: assume good (new construction with full drainage).
- Maintenance level: uncertain (UNRA).
- Per Table 4.1: Good drainage + uncertain maintenance + high traffic -> **W (wet catalogue)** recommended.

**Step 8: Assess moisture sensitivity**
- No unsoaked CBR data available for comparison. Soaked CBR used throughout.
- Lateritic sandy clay is moderately moisture-sensitive. The soaked CBR values (8-20%) are realistic.

**Result:**

| Parameter | Value |
|-----------|-------|
| Uniform section | Ch 10+000 to Ch 30+000 (20 km) |
| Number of CBR tests | 10 |
| CBR range | 8 - 20% |
| Mean CBR | 13.6% |
| Design CBR (10th percentile) | 8% |
| Subgrade class (Table 3.1) | S4 |
| Minimum subgrade depth (Table 3.3) | 450 mm |
| Investigation depth | 700 mm -- OK |
| Moisture condition | Wet |
| Design catalogue | W (wet region) |

**Verification:** The design CBR of 8% (S4) is consistent with the data: only 1 of 10 tests (10%) is below 8%. This matches the 10th percentile rule. A pavement designer would enter the catalogue at S4 and the applicable traffic class to select the pavement structure.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3: Pavement Design, Part I: Flexible Pavements*, January 2010.
2. TRL, *Overseas Road Note 31: A Guide to the Structural Design of Bitumen-Surfaced Roads in Tropical and Sub-Tropical Countries*, 1993.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft -- Tables 3.1, 3.2, 3.3, 4.1 verified against MoWT Vol 3 Part I |
