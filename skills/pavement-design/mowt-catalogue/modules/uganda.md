# MoWT Catalogue Pavement Design -- Uganda Module

> **Parent Skill:** #21 MoWT Catalogue Pavement Design
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol 3 Part I (2010); Vol 3 Part III (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 3 Part I: Flexible Pavements | January 2010 | Sections 2-5, Appendix C | Current |
| MoWT Road Design Manual Vol 3 Part III: Gravel Roads | January 2010 | Sections 2-4 | Current |

### M.1.2 Institutional Context

MoWT Road Design Manual is the national standard for all road design in Uganda. UNRA uses it for national roads; district engineering offices use it for district roads. The pavement design guide is based on the SATCC Draft Code of Practice for Road Pavements (1998), which drew from TRL Road Note 31 and South African TRH4.

### M.1.3 Standard Philosophy

Catalogue-based method: the designer classifies traffic and subgrade, determines wet/dry condition, selects chart type, and looks up the pre-designed structure. The manual emphasises simplicity and practical applicability for Uganda conditions.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table 2.5: Traffic Classes (Verified against PDF p2-7)**

| Class | T1 | T2 | T3 | T4 | T5 | T6 | T7 | T8 |
|-------|----|----|----|----|----|----|----|----|
| ESAs (millions) | < 0.3 | 0.3-0.7 | 0.7-1.5 | 1.5-3 | 3-6 | 6-10 | 10-17 | 17-30 |

--> Full data: `tables/uganda_traffic_classes.json`

**Table 3.1: Subgrade Classes (Verified against PDF p3-1)**

| Class | S1 | S2 | S3 | S4 | S5 | S6 |
|-------|----|----|----|----|----|----|
| CBR (%) | 2 | 3-4 | 5-7 | 8-14 | 15-29 | 30+ |

--> Full data: `tables/uganda_subgrade_classes.json`

**Table 3.3: Minimum Subgrade Depth (Verified against PDF p3-5)**

| Class | S1 | S2 | S3 | S4 | S5 | S6 |
|-------|----|----|----|----|----|----|
| Min Depth (mm) | 250 | 250 | 350 | 450 | 550 | 650 |

**Table 4.1: Guide to Selecting Design Conditions for Wet Regions (Verified against PDF p4-2)**

| Expected Drainage | Good Maintenance | Deficient Maintenance -- Low (T1-T2) | Deficient Maintenance -- High (T3+) |
|-------------------|-----------------|--------------------------------------|-------------------------------------|
| Good, well planned | D | D | W |
| Deficient | D (T1-T2) / W (T3+) | W | W |

Predominantly dry regions: rainfall < 250 mm, no moisture ingress risk. Rainfall > 500 mm almost certainly wet. The wet/dry check MUST be done BEFORE selecting chart type.

**Table 5.1: Nominal Material Strength Classification (Verified against PDF p5-2)**

| Layer | Material | Nominal Strength |
|-------|----------|-----------------|
| Base | Granular | Soaked CBR > 80% @ 98% mod. AASHTO density |
| Base | Cemented | 7-day UCS 1.5-3.0 MPa @ 100% mod. AASHTO density |
| Base | Bituminous | See specification |
| Subbase | Granular | Soaked CBR > 30% @ 95% mod. AASHTO density |
| Subbase | Cemented | 7-day UCS 0.75-1.5 MPa @ 100% mod. AASHTO density |
| Capping | Granular | Soaked CBR > 15% @ 93% mod. AASHTO density |

**Table 5.3: Chart Classification (Verified against PDF p5-7)**

| Chart | Base | Subbase | Notes |
|-------|------|---------|-------|
| D1 & W1 | Granular | Granular | Natural gravel or crushed stone base |
| D2 & W2 | Granular | Cemented | Subbase could be lime/bitumen emulsion treated |
| D3 & W3 | Cemented | Cemented | Cemented base; bitumen emulsion treated base permissible to T3 |
| D4 & W4 | Bituminous | Granular | Hot plant-mix asphalt base |
| D5 & W5 | Bituminous | Cemented | As D4/W4 but cemented subbase |

--> Design catalogue structures: `tables/uganda_design_catalogue.json`

**Gravel Road Design (Vol 3 Part III):**

For unsealed roads, gravel wearing course thickness is typically 150-250 mm depending on traffic volume and subgrade quality. Gravel material should have PI in range 10-25 for tropical areas (too low = ravels; too high = slippery when wet). Shrinkage product should be < 250.

### M.2.2 Country-Specific Formulas

No formulas -- purely catalogue-based.

### M.2.3 Classification System

Uganda road classification:
- Class I: National trunk roads (typically T5-T8)
- Class II: District roads (typically T3-T6)
- Class III: Urban/community roads (typically T1-T4)

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 4 (Uganda): Wet/dry determination
  |-- Use Table 4.1 matrix
  |-- Most of Uganda has rainfall > 250 mm --> check carefully
  |-- Northern Uganda (Karamoja) may be dry
  |-- Lake Victoria basin, western rift valley are typically wet
  +-- When in doubt, use wet (conservative)

Step 5 (Uganda): Chart selection
  |-- Natural gravel available everywhere --> D1/W1 often starting point
  |-- Crushed stone: available near quarries (limited in some districts)
  |-- Cement: available but supply chain can be uncertain
  |-- Hot-mix asphalt: only for major projects near asphalt plants
  +-- Lower traffic roads (T1-T3): D1/W1 or D2/W2 typical
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Material availability varies significantly by region.** Western Uganda has good laterite gravels; northern Uganda has limited natural gravel sources; central Uganda has quartzite aggregate near Kampala.

**T4/T5 boundary (3M ESAs) is the critical transition.** Below T4, granular base designs work well with Uganda's natural gravels. Above T5, cemented or bituminous bases should be considered.

**Overloading is endemic on trunk roads.** Routes to/from Kenya, Tanzania, DRC and South Sudan carry heavily overloaded trucks. Consider using one traffic class higher than calculated if overloading is expected.

### M.3.3 Common Errors (Uganda-Specific)

1. **Assuming dry conditions for areas outside Karamoja.** Most of Uganda receives > 1,000 mm annual rainfall and should be designed as wet unless specific conditions justify dry.
2. **Using natural gravel base for T6+ traffic without cementation.** Natural gravel bases (D1/W1) are generally limited to T6 (6M ESAs) maximum.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Climate condition | Wet | Not specified for Uganda | ASSUMED: Wet conditions (most of Uganda > 1000 mm rainfall) | Conservative for Uganda |
| Design life | 15 years | Not specified | ASSUMED: 15-year design life | MoWT Table 2.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design ESAs | 100,000 | 30,000,000 | ESAs | MoWT Table 2.5 | Reject if > 30M (catalogue limit) |
| Design CBR | 1 | 80 | % | MoWT Table 3.1 | Warn if < 2 (S1 -- improvement needed) |

### M.5.2 Standards Compliance Checks

- **Check:** Traffic class matches ESA per Table 2.5
- **Check:** Subgrade class matches CBR per Table 3.1
- **Check:** Table 4.1 wet/dry assessed before chart selection
- **Check:** Chart type justified per Table 5.3

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. The Engineer documents justifications in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| ESA > 30M | Exceeds MoWT catalogue | SENIOR REVIEW -- Use AASHTO 93 (Skill #22) or mechanistic method |
| CBR < 2% | S1 subgrade | SENIOR REVIEW -- Subgrade improvement required per MoWT Section 5.5 |
| Known overloading route | Accelerated damage | NOTE -- Consider designing to one class higher or using bituminous base |

---

## M.7 Worked Example -- Uganda

### Example 1: Class I Trunk Road, Dry Conditions

**Given:**
- Road: Class I trunk road in northeast Uganda (Karamoja region)
- Design ESAs: 4.5 million (from Skill #5)
- Design CBR: 6% (from Skill #10)
- Climate: Annual rainfall ~600 mm, good drainage provision, good maintenance expected

**Solution:**

**Step 1 -- Traffic class:** 4.5M ESAs falls in T5 (3-6M ESAs range).

**Step 2 -- Subgrade class:** CBR 6% falls in S3 (5-7% range).

**Step 3 -- Wet/dry determination (Table 4.1):**
- Rainfall ~600 mm > 250 mm but region has distinct dry season
- Drainage: good, well planned
- Maintenance: good (programmed defects remedied)
- Table 4.1: Good drainage + Good maintenance = **D (Dry)**
- However, 600 mm is borderline. Engineer should consider W as alternative.

**Step 4 -- Chart selection (Table 5.3):**
- T5 traffic with good crushed stone available
- D3 (cemented base + cemented subbase) or D4 (bituminous base + granular subbase) appropriate for T5
- Select D4 (bituminous base available for trunk road)

**Step 5 -- Catalogue lookup (Appendix C, Chart D4):**
- T5, S3: Surfacing = 50 mm AC, Base = 100 mm bitumen macadam, Subbase = 200 mm natural gravel G30

**Result:**

| Layer | Material | Thickness |
|-------|----------|-----------|
| Surfacing | Asphalt concrete | 50 mm |
| Base | Bitumen macadam | 100 mm |
| Subbase | Natural gravel (CBR >= 30%) | 200 mm |
| Capping | Not required | -- |
| **Total** | | **350 mm** |

### Example 2: Gravel Road, T2 Traffic

**Given:**
- District road in central Uganda
- Design ESAs: 0.5 million (T2)
- Design CBR: 10% (S4)
- To remain as gravel road

**Solution:**
- From MoWT Vol 3 Part III: for T2 traffic on S4 subgrade, gravel wearing course thickness = 175 mm
- Gravel material: natural laterite gravel, PI 12-18, max size 37.5 mm
- Maintenance: annual grading required, regravelling every 5-7 years

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3 Part I: Flexible Pavements*, January 2010.
2. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3 Part III: Gravel Roads Manual*, January 2010.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Tables 2.5, 3.1, 3.3, 4.1, 5.1, 5.3 verified against MoWT Vol 3 Part I PDF |
