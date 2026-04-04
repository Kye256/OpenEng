# MoWT Catalogue Pavement Design -- Kenya Module

> **Parent Skill:** #21 MoWT Catalogue Pavement Design
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual (RDM) 3.4: Flexible Pavement Design (2025); RDM 3.3: Pavement Foundation and Materials Design (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 3.4: Flexible Pavement Design | 2025 | Chapters 2-5, Appendix A | Current -- mandatory for all classified roads |
| Kenya RDM 3.3: Pavement Foundation and Materials Design | 2025 | Chapters 4, 7, 8 | Current -- subgrade and material classification |
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Material acceptance clauses | Current |

### M.1.2 Institutional Context

Kenya has three road authorities under the Ministry of Roads and Transport (MoRT), plus 47 County Governments. All use the Kenya Road Design Manual:

- **KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A and B).
- **KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class C, D, E, and specialist classes).
- **KURA (Kenya Urban Roads Authority):** Manages urban roads (Class UA, UC, UL).
- **47 County Governments:** Manage county roads under devolved functions.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

RDM 3.4 is mandatory for all classified road pavement design in Kenya. It was developed by TRL Limited (UK) for MoRT with African Development Bank funding, and represents a second-generation road design manual replacing earlier first-generation manuals.

### M.1.3 Standard Philosophy -- Mechanistic-Empirical Method

**Kenya RDM 3.4 uses a mechanistic-empirical (M-E) approach**, fundamentally different from Uganda's purely empirical MoWT catalogue method. The key distinction:

- **Mechanistic component (RDM 3.4 Chapter 3 and Appendix A):** Multi-Layer Elastic Theory (MLET) is used to calculate stresses and strains at critical points within the pavement structure under a standard axle load. The critical responses are: (1) horizontal tensile strain at the bottom of the bound layers, and (2) vertical compressive strain at the top of the subgrade.
- **Empirical component:** Transfer functions (performance models) relate the calculated strains to the number of load repetitions to failure. These functions have been calibrated for Kenya conditions, materials, and climate.
- **Result:** The 16 standard structure types in RDM 3.4 Sections 4.5.1-4.5.16 were derived from M-E analysis, not from purely empirical observation. Each structure has been verified to perform adequately for its designated traffic and subgrade class range.

Although the designer selects from a catalogue of pre-designed structures (like Uganda's MoWT), the structures themselves were developed using a more rigorous analytical basis. The designer does NOT need to perform M-E calculations -- the catalogue captures the results.

**Comparison: Uganda MoWT vs Kenya RDM 3.4**

| Aspect | Uganda MoWT Vol 3 Part I | Kenya RDM 3.4 |
|--------|--------------------------|----------------|
| Design basis | Empirical (SATCC/TRL heritage) | Mechanistic-empirical (MLET + transfer functions) |
| Traffic unit | ESA (Equivalent Standard Axles) | MESA (Million ESA) / CESA (Cumulative ESA) |
| Traffic classes | T1-T8 (0.1-30M ESA) | Based on MESA ranges from Table 2.2 |
| Subgrade classes | S1-S6 (MoWT Table 3.1, CBR-based) | RDM 3.3 Table 4.2.2 (CBR-based, different boundaries) |
| Climate determination | Wet/dry binary (Table 4.1: rainfall + drainage + maintenance) | Regional climate zones (Chapter 3) |
| Catalogue format | 10 charts (D1-D5, W1-W5) by base/subbase type | 16 individual standard structure types (Sections 4.5.1-4.5.16) |
| Structure derivation | Empirical -- structures based on field performance | M-E analysis -- structures verified by MLET strain calculations |
| Standard axle | 80 kN | 80 kN (same) |
| ESA terminology | Plain "ESA" | Always "MESA" (millions) or "CESA" (cumulative) -- never plain "ESA" |

**CRITICAL:** In Kenya context, always use MESA or CESA terminology. Never use plain "ESA" without prefix when referring to Kenya traffic loading (Pitfall 1).

---

## M.2 Country-Specific Knowledge

### M.2.1 Traffic Classes (MESA-Based)

Kenya RDM 3.4 uses MESA (Million Equivalent Standard Axles) as the traffic loading unit. Traffic classes are defined in Table 2.2.

**RDM 3.4 Table 2.2: Traffic Classes (Verified against PDF)**

| Traffic Class | MESA Range | Description |
|---------------|------------|-------------|
| TLC01 | < 0.3 | Very light traffic |
| TLC02 | 0.3 - 0.7 | Light traffic |
| TLC03 | 0.7 - 1.5 | Light-medium traffic |
| TLC04 | 1.5 - 3.0 | Medium traffic |
| TLC05 | 3.0 - 6.0 | Medium-heavy traffic |
| TLC06 | 6.0 - 10.0 | Heavy traffic |
| TLC07 | 10.0 - 17.0 | Very heavy traffic |
| TLC08 | 17.0 - 30.0 | Extremely heavy traffic |
| TLC09 | 30.0 - 50.0 | Ultra-heavy traffic |
| TLC10 | 50.0 - 80.0 | Maximum design traffic |

--> Full data: `tables/kenya_traffic_classes.json`

Note: Kenya extends to TLC10 (80 MESA), compared to Uganda T8 (30M ESA). The MESA boundaries for TLC01-TLC08 numerically match Uganda T1-T8 ranges but use different terminology.

### M.2.2 Standard Structure Types (Sections 4.5.1-4.5.16)

Kenya RDM 3.4 defines 16 standard pavement structure types, each designed for specific traffic and subgrade class combinations. Each structure type has been verified by mechanistic-empirical analysis.

**Summary of 16 Standard Structure Types**

| Structure | Description | Surfacing | Base | Subbase | Applicable Traffic | Applicable Subgrade |
|-----------|-------------|-----------|------|---------|-------------------|---------------------|
| ST01 | Granular base, granular subbase | Surface dressing | GCS (150 mm) | G45 (150 mm) | TLC01-TLC04 | S4-S6 |
| ST02 | Granular base, granular subbase (heavy) | AC (40 mm) | GCS (175 mm) | G45 (175 mm) | TLC04-TLC06 | S4-S6 |
| ST03 | Granular base, cemented subbase | Surface dressing | GCS (150 mm) | HSM (150 mm) | TLC01-TLC04 | S3-S5 |
| ST04 | Granular base, cemented subbase (heavy) | AC (40 mm) | GCS (175 mm) | HSM (175 mm) | TLC04-TLC06 | S3-S5 |
| ST05 | Cemented base, cemented subbase | Surface dressing | HSM-base (150 mm) | HSM-sub (150 mm) | TLC01-TLC05 | S2-S4 |
| ST06 | Cemented base, cemented subbase (heavy) | AC (50 mm) | HSM-base (175 mm) | HSM-sub (200 mm) | TLC05-TLC08 | S2-S5 |
| ST07 | Bituminous base, granular subbase | AC (50 mm) | AC-base (80 mm) | GCS (200 mm) | TLC04-TLC07 | S3-S6 |
| ST08 | Bituminous base, granular subbase (heavy) | AC (60 mm) | AC-base (100 mm) | GCS (225 mm) | TLC07-TLC10 | S4-S6 |
| ST09 | Bituminous base, cemented subbase | AC (50 mm) | AC-base (80 mm) | HSM (175 mm) | TLC04-TLC07 | S3-S5 |
| ST10 | Bituminous base, cemented subbase (heavy) | AC (60 mm) | AC-base (120 mm) | HSM (200 mm) | TLC07-TLC10 | S3-S6 |
| ST11 | Hand-packed stone base | Surface dressing | HPS (200 mm) | G30 (150 mm) | TLC01-TLC03 | S3-S5 |
| ST12 | Hydraulically improved gravel base | Surface dressing | HIG (175 mm) | G30 (150 mm) | TLC01-TLC04 | S3-S5 |
| ST13 | Full-depth bituminous | AC (70 mm) | AC-base (150 mm) | AC-subbase (150 mm) | TLC08-TLC10 | S4-S6 |
| ST14 | Inverted structure (bituminous over cemented) | AC (60 mm) | AC-base (100 mm) | HSM (250 mm) | TLC06-TLC09 | S3-S5 |
| ST15 | Composite with capping | AC (40 mm) | GCS (175 mm) | G30 (150 mm) | TLC03-TLC06 | S1-S3 |
| ST16 | Low-volume sealed | Surface dressing | G45 (150 mm) | G15 (125 mm) | TLC01-TLC02 | S2-S4 |

--> Full data: `tables/kenya_standard_structures.json`

**Material codes (Kenya):**
- **GCS:** Graded Crushed Stone -- high-quality crushed aggregate base/subbase
- **HSM:** Hydraulically Stabilised Material -- cement or lime treated material
- **HPS:** Hand-Packed Stone -- labour-intensive base construction
- **HIG:** Hydraulically Improved Gravel -- improved natural gravel
- **G45/G30/G15:** Natural gravel with minimum soaked CBR of 45%, 30%, 15%
- **AC:** Asphalt concrete
- **AC-base:** Asphalt concrete designed as base layer (higher binder content)

**CRITICAL:** Kenya material codes (GCS, HSM, HPS, HIG, G8-G45) are NOT equivalent to Uganda codes (G80, C1, C3). Do not cross-reference between systems (per D-04).

### M.2.3 Pavement Cross-Section Types (Section 4.6)

RDM 3.4 Section 4.6 defines pavement cross-section types that determine shoulder treatment and edge detail:

| Type | Description | Application |
|------|-------------|-------------|
| Type A | Full-width paved shoulders | Class A and B roads, high traffic (TLC06+) |
| Type B | Partially paved shoulders | Class A and B roads, medium traffic (TLC04-TLC06) |
| Type C | Unpaved shoulders with edge strip | Class B and C roads, lower traffic |
| Type D | Unpaved shoulders, no edge strip | Class C, D, E roads |
| Type E | Gravel shoulders on sealed road | Rural roads, low traffic |
| Type X | Special urban cross-section | Urban roads (KURA) |

### M.2.4 Low-Volume Road Structures (Chapter 5)

RDM 3.4 Chapter 5 provides structures for low-volume roads (< 0.3 MCESA):

| Structure | Description | Surfacing | Base | Subbase | Traffic Range |
|-----------|-------------|-----------|------|---------|---------------|
| LV1 | Gravel wearing course | None | G30 gravel (175 mm) | G15 (125 mm) | < 0.1 MCESA |
| LV2 | Improved gravel | None | G45 gravel (150 mm) | G15 (125 mm) | < 0.1 MCESA |
| LV3 | Sealed gravel | Surface dressing | G45 (150 mm) | G15 (125 mm) | < 0.3 MCESA |
| LV4 | Sealed with HPS base | Surface dressing | HPS (175 mm) | G15 (125 mm) | < 0.3 MCESA |
| LV5 | Block paving on gravel | Block paving | G30 (150 mm) | G15 (100 mm) | < 0.1 MCESA |
| LV6 | Cobblestone surface | Cobblestone | G30 (150 mm) | G15 (100 mm) | < 0.1 MCESA |
| LV7 | Stabilised gravel sealed | Surface dressing | HIG (150 mm) | G15 (125 mm) | < 0.3 MCESA |
| LV8 | Dressed stone surface | Dressed stone | G30 (150 mm) | G15 (125 mm) | < 0.1 MCESA |
| LV9 | Thin bituminous on HIG | Slurry seal | HIG (175 mm) | G30 (150 mm) | 0.1-0.3 MCESA |
| LV10 | Engineered natural surface | None | Engineered gravel (200 mm) | In-situ (improved) | < 50 vpd |
| LV11 | Track road | None | Spot improvements only | In-situ | < 20 vpd |

### M.2.5 Climate Zone Approach (Chapter 3)

Kenya RDM 3.4 uses a regional climate zone approach rather than Uganda's binary wet/dry determination.

**Kenya Climate Zones for Pavement Design:**

| Zone | Description | Annual Rainfall | Moisture Regime | Design Impact |
|------|-------------|----------------|-----------------|---------------|
| Wet | Lake Victoria basin, western highlands, coastal strip | > 1000 mm | Perennially wet, short dry season | Thicker structures, moisture-resistant materials |
| Seasonal | Central highlands, rift valley margins | 500-1000 mm | Distinct wet/dry seasons | Standard structures, drainage critical |
| Dry/Semi-arid | Northern Kenya, eastern lowlands | 250-500 mm | Prolonged dry, short intense rains | Reduced thickness possible, but flash flood drainage needed |
| Arid | Northeast frontier, Turkana | < 250 mm | Very dry, episodic rainfall | Thinnest structures, but design for episodic saturation |

The climate zone affects both the structure selection and the material specification. In wet zones, moisture-susceptible materials (e.g., unbound natural gravel base) require additional protection or replacement with moisture-resistant alternatives.

**Key difference from Uganda:** Uganda uses a binary wet/dry determination (MoWT Table 4.1) based on rainfall, drainage provision, and maintenance level. Kenya uses a more nuanced regional climate zone approach that accounts for seasonal patterns and geographic variation across the country.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 1: Confirm design inputs
  |-- Design CESA/MESA (from Skill #5, converted to MESA)
  |-- Design CBR (from Skill #10)
  |-- Climate zone (from project location)
  |-- Road class (A/B/C/D/E/UA/UC/UL)
  +-- Load Kenya module

Step 2: Determine traffic class
  --> Use RDM 3.4 Table 2.2 (kenya_traffic_classes.json)
  |-- Map design MESA to traffic class (TLC01-TLC10)
  +-- SENSITIVITY CHECK: If MESA within 15% of class boundary,
      run both classes and report both structures

Step 3: Determine subgrade class
  --> Use RDM 3.3 Table 4.2.2 (Kenya subgrade classes)
  |-- Map design CBR to Kenya subgrade class
  +-- If CBR at class boundary, use lower class (conservative)

Step 4: Determine climate zone
  |-- Identify project location within Kenya climate zones
  |-- Wet zone: prioritise moisture-resistant structures (ST05-ST10)
  |-- Dry zone: granular structures (ST01-ST02) may be adequate
  +-- Seasonal zone: standard selection with drainage consideration

Step 5: Select structure type (ST01-ST16)
  |-- Match traffic class + subgrade class to applicable structure types
  |-- Consider material availability in project region
  |-- Consider construction capability (HPS for labour-intensive areas)
  |-- For low-volume roads: consider LV1-LV11
  +-- Select cross-section type (A-E/X) per Section 4.6

Step 6: Verify structure
  |-- Check structure is within its designated traffic/subgrade range
  |-- Check material compatibility
  |-- Check layer thickness practicality (min 100 mm, max 250 mm per lift)
  +-- Run validation checks (Section M.5)

Step 7: Produce output
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Material availability varies by region.** Crushed stone (GCS) is readily available near quarries in central Kenya and along major corridors. In remote areas (northern Kenya, coast hinterland), natural gravel or hand-packed stone may be the only viable option.

**Hand-packed stone (HPS) is a Kenya-specific innovation.** ST11 uses HPS base, which is a labour-intensive construction method particularly suited to areas with limited plant equipment but available manual labour. This is common for KeRRA rural road projects.

**The TLC05/TLC06 boundary (6 MCESA) is a critical transition in Kenya.** Below TLC05, granular base structures (ST01-ST02) work well. Above TLC06, bituminous or cemented bases (ST06-ST10) should be considered.

**Overloading on transit corridors.** The Northern Corridor (Mombasa-Nairobi-Malaba) and the Mombasa-Nairobi-Moyale corridor carry heavily overloaded trucks. Consider using one traffic class higher than calculated for these routes.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using plain "ESA" instead of "MESA" or "CESA" in Kenya design.** RDM 3.4 uses MESA and CESA exclusively. Always include the prefix.
2. **Applying Uganda subgrade classes (S1-S6 with MoWT boundaries) to Kenya designs.** Kenya subgrade classes from RDM 3.3 have different CBR boundaries.
3. **Treating RDM 3.4 as a purely empirical method.** The 16 standard structures were derived from mechanistic-empirical analysis. Describe the method correctly.
4. **Using Uganda material codes (G80, C1, C3) in Kenya context.** Kenya uses GCS, HSM, HPS, HIG, G8-G45 -- these are distinct systems.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design life | 20 years | Class A/B roads, not specified | ASSUMED: 20-year design life per RDM 3.4 | Kenya standard for national roads |
| Design life | 15 years | Class C/D/E roads, not specified | ASSUMED: 15-year design life per RDM 3.4 | Kenya standard for lower class roads |
| Climate zone | Wet | Not specified | ASSUMED: Wet climate zone (conservative) | Conservative default |
| Structure type | ST01 | Low traffic, not specified | ASSUMED: Granular structure ST01 -- verify material availability | Most common starting point |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design MESA | 0.01 | 80.0 | MESA | RDM 3.4 Table 2.2 | Reject if > 80 MESA (beyond TLC10); warn if < 0.1 (use LV structures) |
| Design CBR | 1 | 80 | % | RDM 3.3 | Warn if < 3 (lowest subgrade class -- improvement needed) |

### M.5.2 Standards Compliance Checks

- **Check:** Traffic class matches MESA per RDM 3.4 Table 2.2 (not Uganda MoWT Table 2.5)
- **Check:** Subgrade class matches CBR per RDM 3.3 Table 4.2.2 (not Uganda MoWT Table 3.1)
- **Check:** Climate zone identified before structure selection
- **Check:** Selected structure type is within its designated traffic/subgrade range
- **Check:** MESA/CESA terminology used throughout (no plain "ESA")
- **Check:** Kenya material codes used (GCS, HSM, not G80, C1)

### M.5.3 Departures / Relaxations Process

Departures from RDM 3.4 standard structures require approval from the Chief Engineer Roads (KeNHA), the relevant authority's chief engineer (KeRRA/KURA), or the County Engineer. All departures must be documented with technical justification.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Design MESA > 80 | Exceeds RDM 3.4 TLC10 range | SENIOR REVIEW -- Design traffic exceeds Kenya catalogue range. Use mechanistic-empirical analysis from first principles (RDM 3.4 Appendix A). |
| CBR < 3% | Below minimum Kenya subgrade class | SENIOR REVIEW -- Subgrade improvement essential. Consider lime stabilisation, removal and replacement, or geotextile reinforcement per RDM 3.3 Chapter 7. |
| MESA within 15% of class boundary | Sensitivity concern | NOTE -- Design MESA is within 15% of TLC boundary. Structures for both classes provided. |
| Northern/Mombasa corridor | Known overloading route | NOTE -- Consider designing to one traffic class higher due to overloading risk. |

---

## M.7 Worked Example -- Kenya

### Example: Class B Road, Wet Climate Zone

**Given:**
- Road: Class B trunk road (KeNHA) in western Kenya near Lake Victoria
- Design traffic: 12 MCESA over 20-year design life
- Design CBR: 8% (from laboratory testing, 10th percentile of 15 samples)
- Climate zone: Wet (Lake Victoria basin, > 1200 mm annual rainfall)
- Available materials: GCS from local quarry, natural gravel G30, cement for stabilisation

**Solution:**

**Step 1 -- Traffic class (RDM 3.4 Table 2.2):**
12 MCESA = 12 MESA falls in TLC07 (10.0-17.0 MESA range).

**Step 2 -- Subgrade class (RDM 3.3 Table 4.2.2):**
CBR 8% -- classified per Kenya subgrade classes. Falls in the S4 equivalent range (8-14% CBR).

**Step 3 -- Climate zone:**
Western Kenya, Lake Victoria basin: Wet climate zone. Moisture-resistant structures preferred.

**Step 4 -- Structure selection:**
For TLC07 traffic in wet zone with S4 subgrade:
- ST07 (bituminous base, granular subbase) covers TLC04-TLC07 with S3-S6 -- applicable but at its upper traffic limit
- ST09 (bituminous base, cemented subbase) covers TLC04-TLC07 with S3-S5 -- applicable and provides better moisture protection
- Select **ST09** for wet climate: cemented subbase resists moisture ingress better than granular subbase

**Step 5 -- Structure from RDM 3.4 Section 4.5.9 (ST09):**

| Layer | Material | Thickness |
|-------|----------|-----------|
| Surfacing | Asphalt concrete (AC14) | 50 mm |
| Base | Asphalt concrete base (AC20) | 80 mm |
| Subbase | Hydraulically Stabilised Material (HSM) | 175 mm |
| Capping | Not required (CBR 8% adequate) | -- |
| **Total** | | **305 mm** |

**Step 6 -- Cross-section type:**
Class B road with TLC07 traffic: Type B (partially paved shoulders) per Section 4.6.

**Step 7 -- Sensitivity check:**
12 MESA is not within 15% of either TLC06/TLC07 boundary (10 MESA) or TLC07/TLC08 boundary (17 MESA). No sensitivity flag.

**Step 8 -- Validation:**
- Traffic class TLC07 confirmed for 12 MESA (Table 2.2)
- Subgrade class confirmed for CBR 8% (RDM 3.3)
- ST09 within designated TLC04-TLC07 range
- MESA terminology used throughout
- Kenya material codes used (GCS, HSM)

**Result:** ST09 pavement structure with 50 mm AC surfacing, 80 mm AC base, 175 mm HSM subbase. Total depth 305 mm. Type B cross-section. Wet climate zone design with cemented subbase for moisture resistance.

---

## M.8 References

1. Kenya Ministry of Roads and Transport, *Road Design Manual Part 3.4: Flexible Pavement Design*, 2025.
2. Kenya Ministry of Roads and Transport, *Road Design Manual Part 3.3: Pavement Foundation and Materials Design*, 2025.
3. Kenya Ministry of Roads and Transport, *Standard Specification for Road and Bridge Construction*, 2025.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- RDM 3.4 mechanistic-empirical method, 16 standard structure types, MESA traffic classes, climate zones, low-volume structures |
