# Site Investigation Planning -- Kenya Module

> **Parent Skill:** #7 Site Investigation Planning
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual (RDM) 3.1: Ground Investigations and Material Prospecting (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 3.1 | 2025 | Chapters 2-12 (Investigation planning, soil types, field tests, alignment investigations, structures, materials prospecting) | Current -- mandatory for all classified roads |
| Kenya RDM 3.2 | 2025 | Field and laboratory test standards | Current |
| Kenya RDM 3.3 | 2025 | Chapter 4 (Subgrade classification), Chapter 7 (Pavement foundations) | Current |
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Material acceptance requirements | Current |
| BS EN ISO 14688-1 | Current | Soil identification and description | Reference |
| BS EN ISO 14688-2:2018 | Current | ESCS soil classification for engineering purposes | Reference |
| BS 5930 | Current | Code of practice for ground investigations | Reference |

### M.1.2 Institutional Context

Kenya has three road authorities under the Ministry of Roads and Transport (MoRT), plus 47 County Governments. All use the Kenya Road Design Manual:

- **KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A and B).
- **KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class C, D, E, and specialist classes).
- **KURA (Kenya Urban Roads Authority):** Manages urban roads (Class UA, UC, UL).
- **47 County Governments:** Manage county roads under devolved functions.
- **MTRD (Materials Testing and Research Division):** The national reference laboratory under the State Department for Roads. Previous investigation reports are held at the MTRD or the respective road agency.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

### M.1.3 Standard Philosophy

The Kenya RDM 3.1 uses mandatory "shall" language throughout. The manual states: "Users shall apply the contents there-in to fully satisfy the requirements set out." Where the designer departs from a standard, written approval must be obtained from the **Chief Engineer for Roads** (RDM 3.1 Section 1.5). The departure request must include: (1) road section details, (2) parameter for departure, (3) description of standard vs departure value, (4) reason, (5) mitigation, (6) justification.

The investigation philosophy is phased: desk study, site reconnaissance, preliminary test plan (feasibility and preliminary design stage), and detailed investigation test plan (detailed design stage). The manual emphasises that "investigations approved in the detailed investigation plan are adequate to produce a reliable design" (Section 2.6).

Soils shall be classified according to the European Soil Classification System (ESCS) per BS EN ISO 14688-2:2018, with Kenya amendments (sand soils have gradation 2 mm to 75 um; fine soils are those passing 75 um). This is a fundamental difference from Uganda which uses AASHTO classification.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table K.7.1: RDM 3.1 Table 6.1 -- Testing Interval at Detailed Design Stage (Verified against PDF p27)**

| Road Classification | Test Pit Excavation Interval | Dynamic Cone Penetration (DCP) Interval |
|---------------------|-----------------------------|-----------------------------------------|
| Trunk roads and Primary roads | 250 m | 250 m |
| Secondary and Tertiary roads | 500 m | 500 m |

**Notes on Table 6.1:**
- At preliminary design stage, test pit excavation and sampling shall be at 2.5 km intervals, with DCP at 1 km intervals (Section 6.2.1, 6.3.2).
- For the chosen route option, Table 6.1 intervals apply at detailed design stage.
- DCP tests supplement test pit information and should be located equidistant between test pits.

**Table K.7.2: RDM 3.1 Table 5.1 -- Applicable Field Tests for Various Ground Conditions (Verified against PDF p22)**

| Device | Hard Rock | Soft Rock | Gravel | Sand | Silt | Clay | Peat |
|--------|-----------|-----------|--------|------|------|------|------|
| Dynamic Probing | - | 3 | 2 | 1 | 1 | 1 | 2 |
| Mechanical CPT (CPTM) | - | - | - | 1 | 1 | 1 | 1 |
| SPT | - | 3 | 3 | 3 | 1 | 1 | 1 |
| Resistivity Probe | - | 1 | - | 2 | 1 | 1 | 2 |
| Self-boring Pressuremeter | - | - | - | 2 | 2 | 1 | - |
| FDP | - | - | - | 2 | 2 | 1 | 2 |
| Vane | - | - | - | - | 1 | 2 | - |
| Plate Load | - | 1 | 1 | 2 | 1 | 1 | 2 |
| Borehole Permeability | - | 1 | 1 | 1 | 1 | 1 | 3 |
| Hand/Mechanical Auger | 1 | 2 | 2 | 2 | 2 | 2 | 2 |

*Applicability: 1 = high, 2 = moderate, 3 = low, - = none. (Verified from RDM 3.1 Table 5.1)*

**Table K.7.3: RDM 3.1 Table 7.1 -- Selection Criteria for Ground Investigation Methods (Verified against PDF p40)**

| Soil Type | Preliminary Investigations | Detailed Investigations |
|-----------|--------------------------|------------------------|
| **Fine Soil** | Field: CPT, DP, FVT, SPT; Sampling: OS, TP, PS | Pile fdn: CPT, DP, FVT, SPT, PIL, PMT; Sampling: PS, OS, CS. Shallow fdn: CPT, DP, FVT, PMT; Sampling: PS, OS, CS, TP |
| **Coarse Soil** | Field: CPT, DP, SPT; Sampling: AS, OS, TP | Pile fdn: CPT, DP, SPT, PIL; Sampling: OS, TP. Shallow fdn: CPT, DP, SPT, PMT, PLT; Sampling: OS, TP |
| **Rock** | Field: CPT, MWD, PLT; Sampling: CS | Pile/Shallow fdn: MWD, mapping, discontinuities, PMT; Sampling: CS |

**Table K.7.4: RDM 3.1 Table 3.2 -- Subgrade Bearing Strength Classes (from RDM 3.1 Section 3.3.1, verified p11)**

| Subgrade Class | CBR Range (%) at 100% MDD & 4 days soak | Median CBR (%) | Surface Modulus (MPa) |
|----------------|------------------------------------------|----------------|----------------------|
| S1 | 2-5 | 3.5 | 40 |
| S2 | 5-10 | 7.5 | 65 |
| S3 | 7-13 | 10 | 75 |
| S4 | 10-18 | 14 | 95 |
| S5 | 15-30 | 22.5 | 130 |
| S6 | 30-60 | 45 | 200 |

**CRITICAL NOTE:** Kenya subgrade classes S1-S6 have DIFFERENT boundaries from Uganda S1-S6. Kenya S1 = CBR 2-5%, Kenya S2 = CBR 5-10%, Kenya S3 = CBR 7-13%. The overlapping ranges are intentional -- see RDM 3.3 Section 4.2.2 for the class selection procedure.

**Table K.7.5: RDM 3.1 Table 3.3 -- Classification of Common Kenyan Subgrade Materials (Verified against PDF p12)**

| Type of Material | CBR Strength Class (After 4 days soak) | CBR Strength Class (At OMC, AASHTO T99) |
|------------------|----------------------------------------|----------------------------------------|
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

*Note: Ash and pumice soils with MDD (Standard Compaction) < 1400 kg/m3 cannot be classified for pavement design based on CBR only.*

**Kenya DCP Specification (RDM 3.1 Section 6.2.1, RDM 3.2 Chapter 3):**
- DCP tests at 1 km intervals at preliminary design stage.
- DCP tests at intervals per Table 6.1 at detailed design stage (250 m for trunk/primary, 500 m for secondary/tertiary).
- DCP test procedure and equipment described in RDM 3.2 (references ISO 22476-2 for dynamic probing).
- The DCP-CBR correlation is covered in RDM 3.3 Section 7.2.6 for subgrade resilient modulus estimation.

**Borrow Pit Investigation (RDM 3.1 Chapter 8):**
- Test pits on a 50 m grid, reduced to 25 m if material is highly variable.
- Minimum 5 test pits per proposed borrow pit.
- Minimum workable deposit thickness: 1 m (300 mm in arid areas with no overburden).
- Laboratory testing per large sample: grading to 0.075 mm, Atterberg limits, compaction (modified, 4.5 kg rammer), CBR and swell at 4 days soak at 3 compaction levels (90%, 95%, 100% MDD), LAA and ACV for gravelly materials.

### M.2.2 Country-Specific Formulas

No Kenya-specific investigation planning formulas. DCP-CBR correlation is covered in Skill #10 Kenya module (subgrade characterization). The standard TRL DCP correlation is:

```
log10(CBR) = 2.48 - 1.057 * log10(DN)
```

where DN = DCP penetration rate in mm/blow. RDM 3.1 references the DCP as a standard field test (Table 5.1) with apparatus per RDM 3.2. The DCP apparatus used in Kenya follows ISO 22476-2 for dynamic probing.

### M.2.3 Classification System

Kenya uses the European Soil Classification System (ESCS) per BS EN ISO 14688-2:2018 with Kenya amendments:
- Sand soils: gradation 2 mm to 75 um (not 63 um as in BS EN ISO)
- Fine soils: passing 75 um sieve (not 63 um)
- Coarse soils: > 50% of material coarser than 0.075 mm retained

This is a fundamental difference from Uganda (AASHTO classification) and UK (BS 5930/BS EN ISO 14688 without Kenya amendments). See Skill #8 Kenya module for full ESCS classification details.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
IF Kenya project:
  1. Identify road class (A/B = trunk/primary, C/D/E = secondary/tertiary)
  2. Identify project stage (feasibility, preliminary, detailed design)
  3. Apply RDM 3.1 Table 6.1 intervals for detailed design:
     - Trunk/Primary: TP at 250 m, DCP at 250 m
     - Secondary/Tertiary: TP at 500 m, DCP at 500 m
  4. For preliminary stage: TP at 2.5 km, DCP at 1 km
  5. For structures: apply Table 7.1 investigation methods
  6. Check for problematic soils (Section 6.7):
     - Expansive clays (Section 6.7.1) -- common in Rift Valley, SE Nairobi, Kisumu, Coastal Strip
     - Dispersive soils (Section 6.7.2) -- low-lying areas with rolling topography
     - Collapsible soils (Section 6.7.3) -- areas with loess and windblown silts
     - Saline soils (Section 6.7.4) -- coastal areas and saline lake vicinity
     - Halloysite (Section 6.7.6) -- volcanic ash/weathered feldspathic rock areas
  7. Classify soils using ESCS (BS EN ISO 14688-2:2018), NOT AASHTO
  8. Classify subgrade per RDM 3.1 Table 3.2 / RDM 3.3 Table 4.1
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Seven major subgrade soil categories in Kenya:** Red friable clays, sandy clays on volcanic rocks, ash and pumice soils, sandy clays on basement rocks, silty loams on gneiss and granite, coastal sands, and black heavy clays (expansive clays). Knowledge of regional geology is essential for planning investigations.

**Expansive clay locations in Kenya:** South-east Nairobi, south-east Kisumu, west of Nanyuki, plains around Soit Ololol escarpment, and the Coastal Strip. These areas require extended investigation per Section 6.7.1 including Shrinkage Limit (ASTM D4943-89), weighted PI test, and activity determination.

**Climate considerations:** Kenya has 6 climate zones (Afro-alpine, Equatorial, Wet-tropical, Semi-arid, Arid, Very arid). In wet areas (rainfall > 500 mm/year), subgrade strength shall be assessed at 4-day soaked CBR. In dry areas (rainfall < 500 mm/year), CBR shall still be measured after 4-day soak to ensure resilience to climate change effects (RDM 3.3 Section 3.4).

### M.3.3 Common Errors (Kenya-Specific)

1. **Using AASHTO soil classification instead of ESCS.** Kenya uses ESCS (BS EN ISO 14688-2:2018) for soil classification, not AASHTO. This is a fundamental difference from Uganda practice.
2. **Applying Uganda DCP spacing (100 m) to Kenya projects.** Kenya uses 250 m DCP spacing for trunk roads and 500 m for secondary roads at detailed design (Table 6.1). Preliminary stage uses 1 km DCP intervals.
3. **Failing to investigate for problematic soils.** Kenya has specific provisions for expansive clays, dispersive soils, collapsible soils, saline soils, organic soils, and halloysite (Section 6.7). Each has prescribed field and laboratory investigation requirements.
4. **Using Uganda subgrade class boundaries.** Kenya S1-S6 classes have different CBR boundaries from Uganda S1-S6. For example, Kenya S3 = CBR 7-13% vs Uganda S3 = CBR 5-7%.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| DCP spacing (detailed, trunk) | 250 m | Not specified | No flag | Table 6.1 |
| DCP spacing (detailed, secondary) | 500 m | Not specified | No flag | Table 6.1 |
| Test pit spacing (detailed, trunk) | 250 m | Not specified | No flag | Table 6.1 |
| Test pit spacing (detailed, secondary) | 500 m | Not specified | No flag | Table 6.1 |
| Test pit depth | >= 0.5 m below expected formation level, min 1.5 m | Not specified | ASSUMED: 1.5 m minimum | Section 6.2.2 |
| Borrow pit grid spacing | 50 m | Not specified | No flag | Section 8.2 |
| Minimum borrow pit test pits | 5 per borrow pit | Not specified | No flag | Section 8.2 |
| CBR soak condition | 4 days soak | Not specified | ASSUMED: Soaked CBR | Section 6.3.2, climate resilience |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source | Error if Outside |
|-----------|-----------|--------|-----------------|
| DCP spacing (trunk, detailed) | 200-300 m | Table 6.1 | Spacing outside RDM 3.1 recommendation |
| DCP spacing (secondary, detailed) | 400-600 m | Table 6.1 | Spacing outside RDM 3.1 recommendation |
| Test pit depth | >= 1.5 m | Section 6.2.2 | Test pits shallower than RDM 3.1 minimum |
| Borehole depth at bridges | >= 6 m or >= 3*bF below foundation | Section 7.13.1 | Insufficient borehole depth per RDM 3.1 |
| Borehole depth at deep foundations | >= bF, >= 5 m, >= 3*DF below foundation | Section 7.13.2 | Insufficient depth for pile design |
| Subgrade CBR | 2-60% | Table 3.2 | CBR < 2% requires subgrade improvement (RDM 3.3 Ch6/7) |

### M.5.2 Standards Compliance Checks

- Soil description and classification per BS EN ISO 14688-1 and -2:2018 with Kenya amendments (Section 3.2.2)
- Test methods per RDM 3.2 (referenced throughout RDM 3.1)
- Investigation reports shall include factual report and interpretative report (Section 12.4)
- KENAS calibration required for all laboratory equipment (RDM 3.2 Section 2.3)

### M.5.3 Departures / Relaxations Process

Where the designer departs from a standard, written approval from the Chief Engineer for Roads is required (Section 1.5). The 6-point departure request format applies: section details, parameter, standard vs departure value, reason, mitigation, justification.

---

## M.6 Country-Specific Escalation

| Trigger | Action | Source |
|---------|--------|--------|
| Black cotton soil (expansive clay) encountered | Extended investigation: Shrinkage Limit, weighted PI (>20%), Activity determination. Design measures per RDM 3.3 Chapter 6 | Section 6.7.1 |
| Dispersive soils suspected | Crumb test, ESP, Pinhole test, Double Hydrometer, pH, Dissolved Salts, pore water tests | Section 6.7.2 |
| Collapsible soils (loess, windblown silts) | Double oedometer test for collapse potential | Section 6.7.3 |
| Saline soils (coastal, saline lake areas) | Electrical conductivity, chemical analysis for NaCl, Na2CO3, NaHCO3 | Section 6.7.4 |
| Halloysite suspected (volcanic ash areas) | Check PI/LL plot position (right of A-line), OMC 20-35%, X-ray diffraction confirmation | Section 6.7.6 |
| Ash/pumice soils with MDD < 1400 kg/m3 | Cannot classify by CBR alone; must conform to material class GCS-E (RDM 3.3 Section 8.9) | Table 3.3 note |
| Cut depth > 5 m | Specific study including boreholes/test pits to formation level required | Section 6.4 |
| Embankment height > 3 m | Geotechnical analysis required (stability, settlement) per RDM 4.3 | Section 5.3.4 |
| Budget insufficient for recommended investigation scope | Escalate -- flag risk of inadequate data; recommend prioritising problem areas | Professional judgment |

---

## M.7 Worked Example -- Kenya

**Scenario:** Plan a ground investigation for a 40 km Class B road upgrade in the Rift Valley, Kenya. The route passes through black cotton soil areas and crosses two seasonal rivers. The project is at detailed design stage.

**Step 1: Identify standards and classification**
- Road class: B (trunk road, managed by KeNHA)
- Standard: Kenya RDM 3.1 (2025)
- Project stage: Detailed design

**Step 2: Determine investigation intervals (Table 6.1)**
- Trunk road at detailed design: Test pits at 250 m, DCP at 250 m
- Number of test pits: 40,000 m / 250 m = 160 test pits
- Number of DCP tests: 40,000 m / 250 m = 160 DCP tests

**Step 3: Structure investigations**
- Two seasonal river crossings require bridge/culvert investigations per Chapter 7
- Minimum 2 boreholes per substructure (abutments <= 30 m wide) per Section 7.13.1
- Borehole depth: >= 6 m or >= 3*bF below foundation level
- Estimate 4-6 boreholes per river crossing = 8-12 boreholes total

**Step 4: Identify problematic soils**
- **Black cotton soil areas identified** -- ESCALATION TRIGGER
- Rift Valley location -- known for expansive clays (Section 6.7.1)
- Extended investigation required: Shrinkage Limit, weighted PI, Activity determination
- Table 6.2 features checklist: dry consistency (hard clods), wet consistency (very sticky), structure (wide cracks), appearance (shiny/greasy)

**Step 5: Laboratory testing programme (Section 6.3.2)**
For each test pit sample:
- Grading to 75 um (Kenya amendment)
- Atterberg Limits
- Compaction test (specified per material/layer)
- Natural moisture content
- CBR: 3-point at 93%, 95%, 100% MDD with 4-day soak (subgrade assessment)
- Swell measured during CBR soaking

For black cotton soil areas, add:
- Shrinkage Limit (ASTM D4943-89)
- Sedimentation test (hydrometer analysis per BS EN ISO 17892-4)
- Activity calculation

**Step 6: Borrow pit investigation**
- Identify laterite/gravel sources within economic haul distance
- Test pits on 50 m grid, minimum 5 per borrow pit
- Large samples tested for grading, Atterberg limits, compaction (modified), CBR at 3 levels, LAA, ACV

**Step 7: Reporting (Chapter 12)**
- Factual Report: field logs, test results, photographs
- Interpretative Report: ground model, subgrade classification per ESCS, design recommendations
- Soil classification per BS EN ISO 14688-2:2018 with Kenya amendments

**Output:** 160 test pits, 160 DCP tests, 8-12 boreholes at river crossings, borrow pit investigation programme, extended investigation for black cotton soil areas. Total investigation is a comprehensive programme appropriate for a Class B trunk road upgrade.

---

## M.8 References

1. Kenya RDM 3.1: Ground Investigations and Material Prospecting (2025). Ministry of Roads and Transport, Republic of Kenya.
2. Kenya RDM 3.2: Materials Field and Laboratory Testing (2025). Ministry of Roads and Transport, Republic of Kenya.
3. Kenya RDM 3.3: Pavement Foundation and Materials Design (2025). Ministry of Roads and Transport, Republic of Kenya.
4. BS EN ISO 14688-2:2018: Geotechnical investigation and testing -- Identification and classification of soil -- Part 2: Principles for a classification.
5. Kenya Standard Specification for Road and Bridge Construction (2025). Ministry of Roads and Transport, Republic of Kenya.

---

**Module Changelog**
- 0.1 (2026-04-04): Initial Kenya module created from RDM 3.1 (2025). All design values verified against PDF.
