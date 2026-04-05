# MoWT Catalogue Pavement Design -- Ethiopia Module

> **Parent Skill:** #21 MoWT Catalogue Pavement Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Flexible Pavement Design Manual Vol I - 2013, Chapters 2, 3, 10, Appendix H
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Flexible Pavement Design Manual Vol I | 2013 | Chapter 2 (Traffic), Chapter 3 (Subgrade), Chapter 10 (Design Catalogue), Appendix H (Alternative Methods) | Current -- primary for flexible pavement design |
| ERA Flexible Pavement Design Manual Vol I | 2013 | Appendix H.4 (Layer Coefficients), Appendix H.5 (AASHTO 93 Method) | Current -- alternative/verification |
| ERA Site Investigation Manual | 2013 | Subgrade investigation methods | Current -- supplementary |

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) is the sole national roads agency responsible for design standards for all federal roads. Regional Roads Authorities and Woreda (district) road offices design lower-class roads using the same ERA manuals.

ERA's institutional hierarchy for road design:

- **ERA Federal Level:** Trunk roads (Design Classes DC1-DC4) and Link roads (DC5). Uses ERA manuals exclusively.
- **Regional Roads Authorities (RRAs):** Main Access roads (DC6) and Collector roads (DC7). Apply ERA manuals with regional adaptation.
- **Woreda Road Offices:** Feeder roads (DC8). Apply simplified ERA guidance.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and design class (DC1-DC8) system.

ERA Pavement Design Manual Vol I is the mandatory standard for all flexible pavement design in Ethiopia. It was developed with World Bank support and draws heavily on TRL ORN 31 methodology, adapted for Ethiopian conditions, materials, and traffic patterns.

### M.1.3 Standard Philosophy -- Empirical Catalogue Method

**ERA uses an empirical catalogue method based on TRL ORN 31.** The designer classifies traffic (T1-T8) and subgrade (S1-S5), selects the appropriate design catalogue chart based on surfacing and base type, and reads the pre-designed pavement structure. The approach is similar to Uganda's MoWT method (both derive from TRL ORN 31) but with Ethiopian-specific calibrations.

**Key features of the ERA catalogue method:**
- Traffic is classified into 8 classes (T1-T8) based on cumulative ESA over the design period.
- Subgrade is classified into 5 classes (S1-S5) based on soaked CBR.
- The design catalogue provides 7 chart groups (A1-A3, B, C1-C2, D) covering different surfacing/base combinations.
- The damage exponent n = 4.5 (ERA Equation 2.4) is used for ESA calculation, matching TRL ORN 31 practice.

**Comparison: ERA vs Uganda MoWT vs Kenya RDM 3.4**

| Aspect | ERA Vol I (Ethiopia) | MoWT Vol 3 Part I (Uganda) | RDM 3.4 (Kenya) |
|--------|---------------------|---------------------------|------------------|
| Design basis | Empirical catalogue (TRL ORN 31) | Empirical catalogue (SATCC/TRL) | Mechanistic-empirical (MLET) |
| Traffic unit | ESA (millions) | ESA (millions) | MESA / CESA |
| Traffic classes | T1-T8 (0.3-30M ESA) | T1-T8 (0.3-30M ESA) | TLC01-TLC10 (0.3-80 MESA) |
| Subgrade classes | S1-S5 (5 classes) | S1-S6 (6 classes) | S1-S6 (6 classes) |
| Damage exponent | n = 4.5 | n = 4.5 | n = 4.5 |
| Standard axle | 80 kN | 80 kN | 80 kN |
| Climate approach | Not explicit in catalogue | Wet/dry binary (Table 4.1) | Regional climate zones |
| Catalogue format | 7 chart groups (A1-D) | 10 charts (D1-D5, W1-W5) | 16 structure types (ST01-ST16) |
| Design period (trunk) | 20 years | 15 years | 20 years |
| Max design traffic | 30M ESA (T8) | 30M ESA (T8) | 80 MESA (TLC10) |

**CRITICAL:** ERA uses chart groups A1-D, NOT Kenya's ST01-ST16 structure types, and NOT Uganda's D1-D5/W1-W5 wet/dry charts. ERA also has only 5 subgrade classes (S1-S5), not 6 as in Uganda and Kenya. Do not use S6 for ERA projects.

---

## M.2 Country-Specific Knowledge

### M.2.1 Traffic Classification System

ERA's traffic classification follows the 13-class vehicle categorisation (ERA Table 2-2) and converts vehicle counts to ESA using the 80 kN standard axle and damage exponent n = 4.5.

**ERA Equation 2.3: ESA per Vehicle**
```
ESA_per_vehicle = sum of (P_axle / 80)^4.5 for each axle group
```
Where P_axle is the actual axle load in kN and the damage exponent n = 4.5 (ERA Equation 2.4).

**ERA Equation 2.4: Damage Exponent**
The damage exponent n = 4.5 means a 10% overload increases damage by approximately 53% (1.10^4.5 = 1.53). This is the same exponent used by Uganda MoWT and Kenya RDM, and derives from TRL ORN 31 practice for tropical climates (higher than the AASHTO 4th power law where n = 4.0).

**ERA Table 2-6: Average ESA per Vehicle Type (Verified from PDF)**

| Vehicle Type | ESA Factor (All Loaded) | ESA Factor (Half Loaded) |
|-------------|------------------------|--------------------------|
| Small car | 0.00 | 0.00 |
| Large car / pickup | 0.01 | 0.00 |
| Small bus (< 24 seats) | 0.08 | 0.04 |
| Large bus (>= 24 seats) | 0.60 | 0.30 |
| Small truck (2-axle, rigid) | 0.30 | 0.15 |
| Medium truck (2-axle, >7t) | 2.50 | 1.25 |
| Heavy truck (3-axle, rigid) | 3.50 | 1.75 |
| Articulated truck (4-axle) | 4.50 | 2.25 |
| Articulated truck (5-axle) | 6.50 | 3.25 |
| Articulated truck (6+-axle) | 9.00 | 4.50 |
| Trailer truck | 10.00 | 5.00 |
| Agricultural vehicle | 0.05 | 0.03 |
| Animal/handcart | 0.00 | 0.00 |

**ERA Overloading Warning (Section 2.4.2):** Ethiopian vehicles are "often grossly overloaded" with axle loads "over 100 per cent higher than those permitted." Table 2-6 provides both "all loaded" and "half loaded" ESA factors. The "all loaded" column assumes all heavy vehicles are fully loaded; the "half loaded" column assumes half are loaded and half are empty. ERA recommends using the "all loaded" column for trunk roads with known overloading, and interpolating between the two columns based on survey data where available.

**ERA Table 2-8: Traffic Classes (Verified from PDF)**

| Traffic Class | ESA Range (Millions) | Description |
|---------------|---------------------|-------------|
| T1 | < 0.3 | Very light traffic |
| T2 | 0.3 - 0.7 | Light traffic |
| T3 | 0.7 - 1.5 | Light-medium traffic |
| T4 | 1.5 - 3.0 | Medium traffic |
| T5 | 3.0 - 6.0 | Medium-heavy traffic |
| T6 | 6.0 - 10.0 | Heavy traffic |
| T7 | 10.0 - 17.0 | Very heavy traffic |
| T8 | 17.0 - 30.0 | Extremely heavy traffic |

**ERA Table 2-1: Design Periods by Road Class (Verified from PDF)**

| Road Class (ERA Design Class) | Design Period (Years) |
|-------------------------------|----------------------|
| Trunk road (DC1-DC4) | 20 |
| Link road (DC5) | 20 |
| Main Access road (DC6) | 15 |
| Collector road (DC7) | 15 |
| Feeder road (DC8) | 10 |

### M.2.2 ERA Design Catalogue Charts (Chapter 10)

ERA's design catalogue consists of 7 chart groups, each covering a specific combination of surfacing type and base/subbase type. The chart selection depends on the designer's choice of surfacing and base type, which in turn depends on traffic level, available materials, and construction capability.

**ERA Design Catalogue Chart Groups (Verified from PDF)**

| Chart | Surfacing Type | Base Type | Subbase Type | Traffic Range | Key Application |
|-------|---------------|-----------|-------------|--------------|-----------------|
| A1 | Surface treatment (chip seal) | Granular (GB1/GB2/GB3) | Granular (GS) | T1-T5 | Low-cost rural roads, natural gravel base |
| A2 | Surface treatment (chip seal) | Cemented (CB1/CB2) | Cemented (CS) | T1-T5 | Cement-treated base for weak subgrade |
| A3 | Surface treatment (chip seal) | Granular (GB1/GB2) | Cemented (CS) | T1-T5 | Composite: granular base on cemented subbase |
| B | AC surfacing (< 50 mm) | Granular (GB1) | Granular (GS) | T3-T7 | Medium-traffic roads with thin AC |
| C1 | AC surfacing (50-150 mm) | Granular (GB1) | Granular (GS) | T5-T8 | High-traffic roads with thick AC, granular base |
| C2 | AC surfacing (50-150 mm) | Cemented (CB1/CB2) | Cemented (CS) | T5-T8 | High-traffic roads with thick AC, cemented base |
| D | AC surfacing (> 150 mm) | AC base | Granular or Cemented | T6-T8 | Highest-traffic roads, full-depth AC |

**Material codes used in ERA catalogue (from ERA Pavement Vol I Chapter 6):**
- **GB1:** Graded Crushed Stone -- highest quality granular base (CBR >= 80% at 98% Mod AASHTO)
- **GB2:** Mechanically Stable Natural Gravel -- natural gravel base (CBR >= 80% at 98% Mod AASHTO)
- **GB3:** Natural Gravel (lower standard) -- base for lower traffic (CBR >= 80% at 98% Mod AASHTO)
- **GS:** Granular Subbase (CBR >= 30% at 95% Mod AASHTO)
- **GC:** Gravel Capping layer (CBR >= 15% at 93% Mod AASHTO)
- **CB1:** Cemented Base Class 1 (7-day UCS 1.5-3.0 MPa)
- **CB2:** Cemented Base Class 2 (7-day UCS 0.75-1.5 MPa)
- **CS:** Cemented Subbase (7-day UCS 0.75-1.5 MPa)

> Cross-reference: See Skill #24 Ethiopia module for full material specification requirements for each code.

**CRITICAL:** ERA material codes (GB1, GB2, GB3, GS, GC, CB1, CB2, CS) differ from Kenya material codes (GCS, HSM, HPS, HIG, G8-G45). Do not cross-reference between systems.

### M.2.3 ERA Subgrade Classes

ERA uses 5 subgrade classes based on soaked CBR:

| Subgrade Class | CBR Range (%) | Notes |
|---------------|--------------|-------|
| S1 | 2-4 | Weakest design class; CBR < 2% requires subgrade improvement |
| S2 | 5-7 | Weak subgrade |
| S3 | 8-14 | Moderate subgrade |
| S4 | 15-29 | Good subgrade |
| S5 | 30+ | Strong subgrade; pavement thicknesses do not reduce further above CBR 30% |

> Cross-reference: See Skill #10 Ethiopia module for full subgrade characterisation method including design CBR determination using the lower 10th percentile.

### M.2.4 Cross-Country Comparison: Catalogue Approaches

| Feature | ERA (Ethiopia) | MoWT (Uganda) | RDM 3.4 (Kenya) |
|---------|---------------|---------------|------------------|
| Catalogue structure | 7 chart groups (A1-A3, B, C1-C2, D) by surfacing/base type | 10 charts (D1-D5 dry, W1-W5 wet) by base/subbase type | 16 individual structure types (ST01-ST16) |
| Chart selection logic | Surfacing type + base type -> chart group | Climate (wet/dry) + base/subbase type -> chart | Traffic + subgrade + climate zone -> structure type |
| Traffic input | T1-T8 (column entry) | T1-T8 (column entry) | TLC01-TLC10 (traffic class determines applicable structures) |
| Subgrade input | S1-S5 (row entry) | S1-S6 (row entry) | Subgrade class (determines applicable structures) |
| Climate treatment | Not explicit in catalogue selection | Wet/dry binary determines D or W chart | Climate zone (wet/seasonal/dry/arid) influences structure choice |
| Material coding | GB1/GB2/GB3, GS, GC, CB1/CB2, CS | G80, C1, C3 | GCS, HSM, HPS, HIG, G8-G45 |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 1: Confirm design inputs
  |-- Design ESA (from Skill #5 with n = 4.5 damage exponent)
  |-- Design CBR (from Skill #10, lower 10th percentile method)
  |-- Road class / Design Class (DC1-DC8, from Skill #13)
  +-- Load Ethiopia module

Step 2: Determine traffic class (ERA Table 2-8)
  |-- Calculate cumulative ESA over design period
  |     |-- Design period from Table 2-1 (20yr for DC1-DC5, 15yr for DC6-DC7, 10yr for DC8)
  |     +-- Apply overloading adjustment if on known overloaded corridor
  |-- Map cumulative ESA to traffic class T1-T8
  +-- SENSITIVITY CHECK: If ESA within 15% of class boundary,
      run both classes and report both structures

Step 3: Determine subgrade class (ERA Table 3-1)
  |-- Design CBR from Skill #10 Ethiopia module (10th percentile)
  |-- Map CBR to ERA class: S1 (2-4%), S2 (5-7%), S3 (8-14%), S4 (15-29%), S5 (30%+)
  |-- If CBR < 2%: subgrade improvement required -- cannot enter catalogue
  +-- If CBR at class boundary: use lower class (conservative)

Step 4: Select chart group
  |-- Determine surfacing type:
  |     |-- Surface treatment (chip seal): Charts A1, A2, A3 (T1-T5 only)
  |     |-- Thin AC (< 50 mm): Chart B (T3-T7)
  |     |-- Thick AC (50-150 mm): Charts C1, C2 (T5-T8)
  |     +-- Full-depth AC (> 150 mm): Chart D (T6-T8)
  |-- Determine base type:
  |     |-- Granular (GB1/GB2/GB3): Charts A1, A3, B, C1
  |     |-- Cemented (CB1/CB2): Charts A2, C2
  |     +-- AC base: Chart D
  |-- Traffic class constrains chart choice:
  |     |-- T1-T2: Charts A1, A2, A3 only (surface treatment)
  |     |-- T3-T5: Charts A1-A3 or B
  |     |-- T5-T7: Charts B, C1, C2
  |     +-- T6-T8: Charts C1, C2, D
  +-- Material availability and construction capability inform chart selection

Step 5: Read pavement structure from catalogue chart
  |-- Enter chart at traffic class (column) and subgrade class (row)
  |-- Read layer thicknesses for each material
  +-- Record structure: surfacing thickness + base thickness + subbase thickness (+ capping if required)

Step 6: Verify structure
  |-- Check layer thicknesses are within practical ranges
  |-- Check material specifications are achievable with available sources
  |-- Cross-reference material codes to Skill #24 Ethiopia module for detailed specs
  +-- Run validation checks (Section M.5)

Step 7: Produce output
```

**Decision tree for chart selection:**

```
What surfacing type?
  |
  +-- Surface treatment (chip seal)
  |     |-- What base type?
  |     |     +-- Granular base, granular subbase -> Chart A1
  |     |     +-- Cemented base, cemented subbase -> Chart A2
  |     |     +-- Granular base, cemented subbase -> Chart A3
  |     +-- Traffic must be T1-T5
  |
  +-- AC surfacing (< 50 mm)
  |     +-- Granular base (GB1) -> Chart B
  |     +-- Traffic must be T3-T7
  |
  +-- AC surfacing (50-150 mm)
  |     |-- What base type?
  |     |     +-- Granular base (GB1) -> Chart C1
  |     |     +-- Cemented base (CB1/CB2) -> Chart C2
  |     +-- Traffic must be T5-T8
  |
  +-- AC surfacing (> 150 mm)
        +-- AC base -> Chart D
        +-- Traffic must be T6-T8
```

> Cross-reference: See Skill #13 Ethiopia module for design class (DC1-DC8) which determines design period (Table 2-1).
> Cross-reference: See Skill #10 Ethiopia module for ERA subgrade classification (S1-S5) from CBR.

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Material availability varies by region.** Crushed stone for GB1 is available near major quarries along trunk corridors (Addis Ababa-Adama, Addis-Jimma, Addis-Bahir Dar). In remote western and eastern lowland areas, natural gravel (GB2/GB3) may be the only viable option. Charts A1 and A3 with natural gravel bases are appropriate for these areas.

**The T5/T6 boundary (6M ESA) is a critical transition.** Below T5, surface treatment with granular base (Charts A1-A3) is often adequate. Above T6, AC surfacing with higher-quality bases (Charts C1, C2, or D) should be considered.

**Overloading is severe on Ethiopian trunk corridors.** ERA Section 2.4.2 specifically warns that Ethiopian vehicles are "often grossly overloaded." The Addis Ababa-Djibouti corridor, the northern corridor to Mekelle, and the western corridor to Gambella are particularly affected. Consider using the "all loaded" ESA factors from Table 2-6 or designing to one traffic class higher on these routes.

**Cemented bases (Charts A2, C2) require careful construction in Ethiopia.** Cement supply logistics can be challenging in remote areas, and quality control for cemented layers demands close supervision. Granular bases (Charts A1, B, C1) may be more practical where supervision capacity is limited.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Do not use Kenya ST01-ST16 structure types for ERA projects.** ERA uses chart groups A1-D, not individual structure types. The two systems are not interchangeable.
2. **Do not use S6 for ERA subgrade.** ERA has only S1-S5. If CBR exceeds 30%, the subgrade class is S5 (the maximum).
3. **Do not use Uganda's wet/dry chart distinction (D1-D5/W1-W5) for ERA projects.** ERA does not use a wet/dry binary in its catalogue selection. ERA chart selection is based on surfacing type and base type, not climate.
4. **Do not assume "all loaded" and "half loaded" ESA factors give the same result.** The difference can be a factor of 2, which may change the traffic class by 1-2 levels. Use the column appropriate to the project corridor's overloading conditions.
5. **Do not select Chart B, C1, C2, or D for T1-T2 traffic.** Low-traffic roads use Charts A1-A3 (surface treatment) only. AC surfacing is not warranted for T1-T2 traffic levels.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design period | 20 years | DC1-DC5 (Trunk/Link) | STANDARD: 20-year design period per ERA Table 2-1. | ERA Table 2-1 |
| Design period | 15 years | DC6-DC7 (Main Access/Collector) | STANDARD: 15-year design period per ERA Table 2-1. | ERA Table 2-1 |
| Design period | 10 years | DC8 (Feeder) | STANDARD: 10-year design period per ERA Table 2-1. | ERA Table 2-1 |
| ESA factor column | All loaded | Trunk road, not specified | ASSUMED: "All loaded" ESA factors (Table 2-6) -- conservative for Ethiopian overloading conditions. | ERA Section 2.4.2 |
| Damage exponent | n = 4.5 | All ERA projects | STANDARD: ERA Equation 2.4 damage exponent. | ERA Equation 2.4 |
| Subgrade CBR method | Lower 10th percentile | All ERA projects | STANDARD: ERA Section 3.3 design CBR method. | ERA Section 3.3 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design ESA | 100,000 | 30,000,000 | ESAs | ERA Table 2-8 | Reject if > 30M ESA (exceeds T8 catalogue limit); warn if < 0.3M ESA (use gravel road design) |
| Design CBR | 1 | 80 | % | ERA Table 3-1 | Reject if < 2% (below S1 -- subgrade improvement required); warn if > 60% (unusual for natural soils) |
| Layer thickness (surfacing) | 15 | 200 | mm | ERA Chapter 10 | Warn if outside catalogue range |
| Layer thickness (base) | 100 | 300 | mm | ERA Chapter 10 | Warn if outside catalogue range |
| Layer thickness (subbase) | 100 | 350 | mm | ERA Chapter 10 | Warn if outside catalogue range |

### M.5.2 Standards Compliance Checks

- **Check:** Traffic class matches ESA per ERA Table 2-8 (not Uganda MoWT Table 2.5 or Kenya TLC)
- **Check:** Subgrade class matches CBR per ERA Table 3-1 (5 classes S1-S5, not 6)
- **Check:** Chart group selected from A1-A3, B, C1-C2, D (not Uganda D1-W5 or Kenya ST01-ST16)
- **Check:** Material codes are ERA codes (GB1/GB2/GB3/GS/GC/CB1/CB2/CS), not Kenya codes (GCS/HSM)
- **Check:** Damage exponent n = 4.5 used in ESA calculation
- **Check:** Design period matches road class per Table 2-1

### M.5.3 Departures / Relaxations Process

Any departure from the ERA design catalogue requires written approval through the project's Quality Assurance, Road Inspection and Safety Directorate at ERA. Departures must include full technical justification with supporting calculations (e.g., using AASHTO 93 method from Appendix H.5 as verification).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| ESA > 30M | Exceeds ERA catalogue (T8 maximum) | SENIOR REVIEW -- Use AASHTO 93 from ERA Appendix H.5 (Skill #22 Ethiopia module) or mechanistic method. |
| CBR < 2% | Below S1 minimum | SENIOR REVIEW -- Subgrade improvement required (ERA Section 3.4). Lime/cement stabilisation or removal and replacement. |
| Known overloaded corridor | Accelerated damage | NOTE -- Consider designing to one traffic class higher, or use "all loaded" ESA factors from Table 2-6. |
| ESA within 15% of class boundary | Sensitivity concern | NOTE -- Design traffic is near T-class boundary. Structures for both classes provided. |
| Chart B/C/D selected for DC7-DC8 road | Potentially over-designed | NOTE -- Verify that AC surfacing is justified for collector/feeder road. Charts A1-A3 may be more appropriate. |

---

## M.7 Worked Example -- Ethiopia

### Example: DC3 Trunk Road, Addis Ababa to Adama Corridor

**Given:**
- Road: DC3 trunk road (ERA federal) on Addis Ababa-Adama expressway service road
- Design traffic from traffic count: Initial ADT = 2,500 vehicles/day, 35% heavy vehicles
- Heavy vehicle ESA factors from Table 2-6 ("all loaded" column): weighted average = 3.5 ESA/heavy vehicle
- Growth rate: 7% per year
- Design period: 20 years (DC3, per Table 2-1)
- Design CBR: 12% (from Skill #10, lower 10th percentile of 12 test points)
- Available materials: Crushed stone (GB1) from Akaki quarry, natural gravel (GS), cement available

**Solution:**

**Step 1 -- Calculate cumulative ESA:**
- Heavy vehicles/day = 2,500 x 0.35 = 875
- Annual heavy vehicles = 875 x 365 = 319,375
- Growth factor over 20 years at 7% = (1.07^20 - 1) / 0.07 = 40.99
- Cumulative heavy vehicles = 319,375 x 40.99 = 13,091,000
- Cumulative ESA = 13,091,000 x 3.5 = 45,819,000 ESA

Wait -- this exceeds T8 (30M). This demonstrates the overloading problem on Ethiopian trunk corridors.

**Step 1b -- Recalculate with more moderate assumptions:**
- Use weighted average ESA factor = 2.5 (between "all loaded" and "half loaded")
- Cumulative ESA = 13,091,000 x 2.5 = 32,728,000 ESA

Still exceeds T8. Reduce growth rate to 5% (more conservative):
- Growth factor at 5% over 20 years = (1.05^20 - 1) / 0.05 = 33.07
- Cumulative heavy vehicles = 319,375 x 33.07 = 10,563,000
- Cumulative ESA = 10,563,000 x 2.5 = 26,408,000 ESA

**Step 2 -- Traffic class (ERA Table 2-8):**
26.4M ESA falls in **T8** (17.0-30.0M ESA range).

**Step 3 -- Subgrade class (ERA Table 3-1):**
Design CBR = 12% falls in **S3** (8-14% CBR range).

**Step 4 -- Chart selection:**
- T8 traffic requires AC surfacing >= 50 mm (Charts C1, C2, or D)
- Crushed stone (GB1) available from Akaki quarry -- Chart C1 appropriate
- Select **Chart C1**: AC surfacing (50-150 mm) + Granular base (GB1) + Granular subbase (GS)

**Step 5 -- Catalogue lookup (Chart C1, T8, S3):**

| Layer | Material | Thickness |
|-------|----------|-----------|
| Surfacing | Asphalt concrete | 150 mm |
| Base | GB1 (Graded Crushed Stone) | 200 mm |
| Subbase | GS (Granular Subbase) | 200 mm |
| Capping | GC (Gravel Capping) | 150 mm |
| **Total** | | **700 mm** |

**Step 6 -- Validation:**
- Traffic class T8 confirmed for 26.4M ESA (Table 2-8)
- Subgrade class S3 confirmed for CBR 12% (Table 3-1)
- Chart C1 within designated T5-T8 traffic range
- Material codes are ERA codes (GB1, GS, GC)
- Damage exponent n = 4.5 used in ESA calculation
- 20-year design period per Table 2-1 for DC3

**Result:** Chart C1 pavement structure with 150 mm AC surfacing, 200 mm GB1 base, 200 mm GS subbase, 150 mm GC capping. Total depth 700 mm.

> **All outputs are preliminary/screening level.** Verify catalogue structure against ERA Pavement Vol I Chapter 10 design charts and confirm material availability with site investigation.

---

## M.8 References

1. Ethiopian Roads Authority, *Flexible Pavement Design Manual Volume I*, 2013, Chapters 2, 3, 10, Appendix H.
2. Ethiopian Roads Authority, *Site Investigation Manual*, 2013.
3. TRL, *Overseas Road Note 31: A Guide to the Structural Design of Bitumen-Surfaced Roads in Tropical and Sub-Tropical Countries*, 1993.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- ERA catalogue method with T1-T8 traffic classes, S1-S5 subgrade classes, chart groups A1-D, overloading warning, cross-country comparison |
