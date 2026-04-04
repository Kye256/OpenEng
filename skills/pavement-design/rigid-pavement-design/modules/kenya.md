# Rigid Pavement Design -- Kenya Module

> **Parent Skill:** #71 Rigid Pavement Design
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 3.5: Rigid Pavement Design (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 3.5: Rigid Pavement Design | 2025 | Chapters 1-8, Appendices A-D | Current -- mandatory for all classified roads in Kenya |
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Sections 17 (Concrete Pavement), 18 (Block Paving), 19 (Cobblestone) | Current -- construction specification |
| Kenya Road Design Manual RDM 3.3: Pavement Materials | 2025 | Sections 3-5 (Cement, aggregates, concrete) | Current -- material specifications |
| Kenya Road Design Manual RDM 3.1: Traffic Design | 2025 | Sections 2-4 (CESA calculation, traffic classes) | Current -- traffic loading input |

### M.1.2 Institutional Context

Same institutional framework as Skill #13 Kenya module. The Ministry of Roads and Transport (MoR) has overall responsibility for road design standards in Kenya. Under the MoR, various road authorities implement rigid pavement design:

- **KeNHA** (Kenya National Highways Authority): International trunk roads (Class A) and national trunk roads (Class B). Rigid pavements most commonly used on KeNHA trunk roads carrying heavy traffic, particularly on routes with high axle loads (Northern Corridor, A104, A109).
- **KURA** (Kenya Urban Roads Authority): Urban roads (Class UA, UC, UL). Rigid pavements used on high-traffic urban arterials, bus stops, roundabouts, and industrial access roads in Nairobi, Mombasa, Kisumu.
- **KeRRA** (Kenya Rural Roads Authority): Rural roads (Class C to W). Block paving and cobblestone used on low-volume rural roads, particularly in employment-intensive programmes.
- **County Governments:** Unclassified roads. Block paving and cobblestone common in town centres and market areas.

Kenya uses the Cumulative Equivalent Standard Axle (CESA) system for traffic loading, based on an 80 kN standard axle. CESA values are calculated per RDM 3.1 and are the primary traffic input for rigid pavement design.

### M.1.3 Standard Philosophy

Kenya RDM 3.5 provides a comprehensive approach to rigid pavement design adapted to Kenyan conditions. The manual draws on international practice (AASHTO 1993, PCA, South African TRH4, UK DMRB HD 26) but adapts design parameters for:

- **Kenya's tropical climate:** No frost consideration but high temperature differentials (particularly in highland areas like Nairobi) cause significant curl/warp stresses. Tropical wet/dry seasons affect subgrade moisture.
- **Kenya's traffic loading patterns:** High proportion of overloaded trucks on trunk routes (Northern Corridor vehicles frequently exceed legal axle limits). CESA calculations incorporate overloading factors.
- **Available materials:** Good quality aggregates available in most regions (volcanic rock in Rift Valley, coral limestone at coast). Portland cement widely produced domestically (Bamburi, East African Portland, Savannah).
- **Construction industry capacity:** Slipform paving capability exists for major contractors (KeNHA trunk projects). Fixed-form paving for smaller projects. Labour-intensive block paving and cobblestone for rural/urban local roads.

Kenya classifies rigid pavements into seven types, using both international and locally-adapted terminology:
- JUC (Jointed Unreinforced Concrete) -- equivalent to JPCP
- JRC (Jointed Reinforced Concrete) -- equivalent to JRCP
- CRCP (Continuously Reinforced Concrete Pavement)
- CRCB (Continuously Reinforced Concrete Base)
- RCC (Roller Compacted Concrete)
- Block Paving (BP)
- Cobblestone Paving (CS)

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Rigid Pavement Types and Design Parameters

Reference `tables/kenya_rigid_pavement_structures.json` for complete design structures.

**JUC (Jointed Unreinforced Concrete):**
The standard rigid pavement type for Kenya trunk roads. RDM 3.5 specifies JUC for traffic ranges from 3 to 80 MCESA. Slab thickness 200-275 mm depending on traffic and subgrade. Dowelled transverse joints at 4.5-5.5 m spacing. Lean concrete subbase (150 mm) mandatory for traffic > 10 MCESA; cement-treated subbase (150 mm) for traffic 3-10 MCESA.

**JRC (Jointed Reinforced Concrete):**
Permitted for traffic ranges from 10 to 100 MCESA where wider joint spacing is desired (typically 8-12 m in Kenya practice). Mesh reinforcement 0.12-0.20% of cross-section. Slab thickness 225-300 mm. Lean concrete subbase mandatory.

**CRCP (Continuously Reinforced Concrete Pavement):**
Specified for very heavy traffic (> 50 MCESA) on KeNHA trunk routes where long-term ride quality and minimal maintenance are priorities. Slab thickness 200-300 mm. Minimum 0.62% longitudinal steel (Kenya requirement, slightly above the international 0.60% minimum to account for higher temperature range). Lean concrete subbase mandatory (150 mm).

**CRCB (Continuously Reinforced Concrete Base):**
Used on the highest-traffic corridors (> 80 MCESA) where asphalt surfacing is preferred for maintenance flexibility. Concrete base 200-250 mm with asphalt surfacing >= 180 mm. Same reinforcement requirements as CRCP.

**RCC (Roller Compacted Concrete):**
RDM 3.5 specifies RCC for low-to-moderate traffic (0.5-15 MCESA), industrial pavements, and container yards. Slab thickness 150-225 mm. No dowels. Contraction joints by sawcutting at 3.5-5.0 m spacing. Thin asphalt overlay (40-50 mm) recommended for ride comfort on roads > 60 km/h.

**Block Paving:**
RDM 3.5 Chapter 7 covers block paving for traffic up to 5 MCESA and speeds up to 60 km/h. Block thickness 80 mm for vehicular traffic (60 mm for pedestrian only). Sand bedding 25-30 mm. Structural base as per flexible pavement catalogue for the traffic class. Commonly used in Kenya at bus stops, roundabouts, urban access roads, and through-town sections on Class C/D roads.

**Cobblestone Paving:**
RDM 3.5 Chapter 8 covers cobblestone for low-volume roads (< 2 MCESA) and urban pedestrian areas. Stone thickness 120-150 mm (natural or dressed). Sand or mortar bedding 30-40 mm. Kenya promotes cobblestone as part of the Kenya Rural Roads Authority employment-intensive road maintenance programme. Suitable natural stone available in many parts of Kenya (granite, phonolite, basalt).

### M.2.2 Kenya Slab Thickness Design

RDM 3.5 adopts the AASHTO 1993 method as the primary thickness design approach, with PCA erosion analysis as a supplementary check. Kenya-specific design parameters:

**Traffic loading:** Cumulative Equivalent Standard Axles (CESA) over the design period, calculated per RDM 3.1. Design periods:
- JUC/JRC: 30 years
- CRCP/CRCB: 40 years
- RCC: 20-30 years
- Block paving: 20 years

**Reliability levels (Kenya):**

| Road Class | Reliability R (%) | ZR |
|-----------|-------------------|------|
| Class A (International Trunk) | 95 | -1.645 |
| Class B (National Trunk) | 90 | -1.282 |
| Class C (Primary) | 85 | -1.037 |
| Class D-E / Urban Collector | 80 | -0.842 |

**Standard deviation:** S0 = 0.35 (Kenya standard, accounts for variability in construction and traffic prediction).

**Recommended slab thicknesses (representative values from RDM 3.5):**

| CESA Range (millions) | Subgrade k = 30 MPa/m | Subgrade k = 50 MPa/m | Subgrade k = 80 MPa/m |
|----------------------|----------------------|----------------------|----------------------|
| 3-5 | 225 mm | 200 mm | 200 mm |
| 5-10 | 250 mm | 225 mm | 200 mm |
| 10-30 | 275 mm | 250 mm | 225 mm |
| 30-50 | 300 mm | 275 mm | 250 mm |
| 50-80 | 325 mm (JRC/CRCP) | 300 mm (JRC/CRCP) | 275 mm (JRC/CRCP) |

*Note: Above values assume Sc = 4.5 MPa, J = 3.0 (dowelled), Cd = 1.0, DPSI = 2.0. Verify against RDM 3.5 design charts for project-specific conditions.*

### M.2.3 Joint Design (Kenya)

Reference `tables/kenya_joint_spacing.json` for complete joint design data.

**Transverse contraction joint spacing (Kenya practice from RDM 3.5):**

| Slab Type | Slab Thickness (mm) | Joint Spacing (m) | Dowel Required |
|-----------|--------------------|--------------------|----------------|
| JUC | 200 | 4.5 | Yes (traffic > 5 MCESA) |
| JUC | 225 | 4.5-5.0 | Yes |
| JUC | 250 | 5.0 | Yes |
| JUC | 275 | 5.0-5.5 | Yes |
| JRC | 225-250 | 8.0-10.0 | Yes |
| JRC | 250-300 | 10.0-12.0 | Yes |
| RCC | 150-225 | 3.5-5.0 | No |

**Kenya dowel bar specification:**

| Slab Thickness (mm) | Dowel Diameter (mm) | Dowel Length (mm) | Spacing (mm c/c) |
|---------------------|--------------------|--------------------|-------------------|
| 200 | 25 | 450 | 300 |
| 225-250 | 32 | 450 | 300 |
| 275-300 | 32 | 500 | 300 |
| 300-325 | 38 | 500 | 300 |

**Kenya tie bar specification:**
- Standard: 12 mm deformed bar, 600 mm long, 750 mm c/c at lane joints.
- Wide lanes (> 3.65 m): 16 mm deformed bar, 800 mm long, 600 mm c/c.
- Material: Grade 500 deformed reinforcing bar per KS EAS.

**Sawcut timing:** RDM 3.5 specifies sawcutting within 6-12 hours of placement in Kenya conditions (temperature-dependent). Early-entry saws recommended for trunk road projects.

### M.2.4 Subbase Requirements (Kenya)

RDM 3.5 and RDM 3.3 specify the following subbase options for rigid pavements:

**Lean concrete subbase (LCS):**
- Strength: 7-day UCS 5-10 MPa (Kenya specification -- higher than some international standards).
- Thickness: 150 mm standard.
- Aggregate: 37.5 mm maximum size, from approved quarry.
- Cement content: 150-200 kg/m3 typical.
- Bond-breaker: 200 micron polyethylene sheet or two coats of bituminous emulsion mandatory between LCS and slab.
- Required for: all CRCP, CRCB, and JUC/JRC with traffic > 10 MCESA.

**Cement-treated subbase (CTS):**
- Strength: 7-day UCS 1.5-3.0 MPa.
- Thickness: 150-200 mm.
- Source material: natural gravel or crushed rock with 4-6% cement.
- Bond-breaker required between CTS and slab.
- Permitted for: JUC/JRC with traffic 3-10 MCESA, RCC.

**Granular subbase:**
- CBR: > 30% at 95% Modified AASHTO density.
- Thickness: 150-200 mm.
- Permitted for: Block paving, cobblestone, and RCC with traffic < 5 MCESA.

**Subgrade improvement:**
RDM 3.5 requires a minimum 150 mm improved subgrade layer (selected material, CBR > 15%) beneath the subbase for all rigid pavements where the natural subgrade CBR < 10%. This layer provides a working platform and reduces moisture sensitivity.

### M.2.5 Kenya Concrete Mix Requirements

RDM 3.5 and the Standard Specification for Road and Bridge Construction specify:

**Flexural strength classes (Kenya):**

| Class | 28-day MR (MPa) | Application | Minimum Cement (kg/m3) |
|-------|-----------------|-------------|------------------------|
| FC35 | 3.5 | Block paving bedding concrete, kerbs | 280 |
| FC40 | 4.0 | RCC, light traffic JUC | 300 |
| FC45 | 4.5 | Standard JUC/JRC, CRCP | 340 |
| FC50 | 5.0 | Heavy traffic CRCP, expressways | 360 |

**Mix requirements:**
- Maximum water/cement ratio: 0.45 for exposed pavements, 0.50 for RCC.
- Workability: 30-50 mm slump for slipform paving (per Kenya slipform contractor requirements).
- Coarse aggregate: crushed rock, maximum 37.5 mm for slipform, 25 mm for fixed-form. Kenya sources: Athi River, Mlolongo, Naivasha, Mombasa coral aggregate (with alkali-silica reactivity testing).
- Fine aggregate: river sand or manufactured sand, fineness modulus 2.3-3.1.
- Curing: liquid membrane compound (white-pigmented) at 0.25 litres/m2 immediately after finishing. Wet curing for minimum 7 days. No traffic for 14 days (JUC/JRC) or 28 days (CRCP).

**Alkali-silica reactivity (ASR):**
RDM 3.5 requires ASR testing (ASTM C1260 or C1293) for all pavement concrete aggregate sources in Kenya. Several Kenya volcanic aggregates are potentially reactive. If reactive, use low-alkali cement (< 0.6% Na2O equivalent) or supplementary cementitious materials (fly ash, GGBS).

### M.3 Country-Specific Design Logic

```
Step 1: Determine Kenya road class and context
  |-- Road class (A/B/C/D/E/UA/UC/UL) from Skill #13 Kenya module
  |-- Urban or rural context
  |-- Design speed
  +-- CESA from RDM 3.1 (via Skill #5)

Step 2: Select rigid pavement type (Kenya)
  |-- If Class A/B trunk road AND CESA > 50 MCESA:
  |     --> CRCP (preferred by KeNHA for expressways and high-traffic trunk)
  |     --> CRCB (if asphalt surface maintenance is preferred)
  |-- If Class A/B trunk road AND CESA 10-50 MCESA:
  |     --> JUC (standard KeNHA choice) or JRC (if fewer joints desired)
  |-- If Class A/B/C AND CESA 3-10 MCESA:
  |     --> JUC (standard) or RCC (if rapid construction needed)
  |-- If Class C/D urban AND CESA < 5 MCESA AND speed < 60 km/h:
  |     --> Block paving (bus stops, roundabouts, through-town sections)
  |-- If Class D/E rural AND CESA < 2 MCESA:
  |     --> Cobblestone (if employment-intensive programme and stone available)
  |     --> Block paving (if concrete blocks available locally)
  |-- If industrial/port/container yard:
  |     --> RCC or JUC depending on traffic and speed
  +-- Document rationale per RDM 3.5 Chapter 2

Step 3: Design slab (Kenya parameters)
  |-- Use AASHTO 1993 with Kenya reliability and S0 = 0.35
  |-- k-value from Skill #10 or RDM 3.5 Table 3.1 (CBR-k correlation)
  |-- Concrete MR per Kenya FC class (Section M.2.5)
  |-- J = 3.0 (dowelled JUC), J = 2.5 (CRCP), J = 3.8 (undowelled RCC)
  +-- Cross-check against RDM 3.5 thickness table (Section M.2.2)

Step 4: Design joints and reinforcement (Kenya specifications)
  |-- Joint spacing per RDM 3.5 (Section M.2.3)
  |-- Dowel and tie bar sizing per Kenya specification
  |-- CRCP: minimum 0.62% longitudinal steel (Kenya minimum)
  +-- Specify sawcut timing for Kenya conditions

Step 5: Specify subbase and materials
  |-- Subbase type per traffic level (Section M.2.4)
  |-- Bond-breaker specification
  |-- Concrete class and mix per Section M.2.5
  |-- Check ASR requirement for aggregate source
  +-- Improved subgrade if CBR < 10%
```

---

## M.4 Kenya Defaults

When Kenya site-specific data is not available, use these defaults and **flag each assumption**:

| Parameter | Kenya Default | Source |
|-----------|--------------|--------|
| Reliability (Class A) | 95% | RDM 3.5 Table 2.1 |
| Reliability (Class B) | 90% | RDM 3.5 Table 2.1 |
| Standard deviation S0 | 0.35 | RDM 3.5 Section 2.3 |
| Concrete MR (standard) | 4.5 MPa (FC45) | RDM 3.5 Table 4.1 |
| Concrete Ec | 28,000 MPa | RDM 3.5 Section 4.2 |
| Load transfer J (dowelled JUC) | 3.0 | RDM 3.5 Table 2.3 |
| Load transfer J (CRCP) | 2.5 | RDM 3.5 Table 2.3 |
| Load transfer J (undowelled RCC) | 3.8 | RDM 3.5 Table 2.3 |
| Drainage Cd | 1.0 | RDM 3.5 (fair drainage assumption) |
| Terminal serviceability pt | 2.5 (trunk), 2.0 (local) | RDM 3.5 Section 2.4 |
| CRCP longitudinal steel | 0.62% | RDM 3.5 Section 5.3 |
| Subbase (traffic > 10 MCESA) | Lean concrete, 150 mm | RDM 3.5 Table 3.2 |
| Subbase (traffic 3-10 MCESA) | Cement-treated, 150 mm | RDM 3.5 Table 3.2 |
| Block thickness (vehicular) | 80 mm | RDM 3.5 Section 7.2 |
| Cobblestone thickness | 120 mm (dressed), 150 mm (natural) | RDM 3.5 Section 8.2 |

---

## M.5 Kenya Validation Checks

| Check | Kenya Limit | Action If Exceeded |
|-------|------------|-------------------|
| JUC slab thickness | 200-275 mm | < 200: increase (minimum for Kenya traffic). > 275: consider JRC or CRCP |
| JRC slab thickness | 225-300 mm | > 300: consider CRCP |
| CRCP slab thickness | 200-300 mm | > 300: escalate -- specialist design |
| JUC joint spacing | 4.5-5.5 m | Outside range: recalculate per slab thickness |
| JRC joint spacing | 8-12 m | > 12 m: verify reinforcement percentage |
| CRCP longitudinal steel | >= 0.62% | < 0.62%: increase to Kenya minimum |
| Subgrade k-value for rigid | >= 25 MPa/m | < 25: requires improved subgrade layer per RDM 3.5 |
| Lean concrete subbase UCS | 5-10 MPa | < 5: increase cement content. > 10: reduce (brittleness risk) |
| Block paving traffic | <= 5 MCESA | > 5 MCESA: switch to concrete pavement type |
| Block paving speed | <= 60 km/h | > 60 km/h: not suitable for block paving |
| Cobblestone traffic | <= 2 MCESA | > 2 MCESA: switch to block paving or concrete |

---

## M.6 Kenya Escalation Triggers

In addition to the universal escalation triggers (Skill #71 Section 5), the following Kenya-specific conditions require referral to a senior pavement engineer:

1. **Traffic exceeds 80 MCESA on a single carriageway:** RDM 3.5 recommends CRCB or CRCP with specialist design for these traffic levels. Dual carriageway should also be considered.

2. **Coastal environment (Mombasa, Malindi region):** Chloride exposure from marine environment and potentially reactive coral aggregates require specialist concrete mix design. RDM 3.5 requires enhanced cover (50 mm minimum) and sulfate-resisting cement in coastal zones.

3. **Black cotton soil subgrade (expansive clay):** Common in parts of the Rift Valley, Nairobi, and Western Kenya. k-value may be very low (15-25 MPa/m) and seasonal heave/shrinkage can cause slab rocking. RDM 3.5 requires minimum 300 mm improved subgrade layer over black cotton soils.

4. **Nairobi-Mombasa highway (A109) or Northern Corridor loading:** These corridors carry the heaviest truck traffic in Kenya with significant overloading. CESA calculations must include overloading factors per RDM 3.1 Appendix B.

5. **Heritage or conservation area:** Cobblestone or special paving in areas designated under Kenya's National Museums and Heritage Act requires coordination with heritage authorities.

---

## M.7 Worked Example -- Kenya Class A Urban Road

**Project:** Design a rigid pavement for a new 4-lane divided Class A urban road in Nairobi.

**Given:**
- Traffic: 50 MCESA (from RDM 3.1 calculation, Skill #5)
- Subgrade: Black cotton clay, CBR = 5%, k-value = 35 MPa/m (after 150 mm improved subgrade)
- Concrete: FC45 (MR = 4.5 MPa, Ec = 28,000 MPa)
- Class A road: Reliability R = 95% (ZR = -1.645)
- S0 = 0.35

**Step 1: Select pavement type**
- CESA = 50 MCESA, Class A trunk: CRCP preferred per M.3 logic.
- Alternative: JRC with 250-275 mm slab if CRCP construction capability is a concern.
- Selected: CRCP (KeNHA preference for high-traffic Class A urban).

**Step 2: Design parameters**
- J = 2.5 (CRCP, continuous load transfer)
- Cd = 1.0 (fair drainage -- urban Nairobi, seasonal rainfall)
- DPSI = 4.5 - 2.5 = 2.0
- Design life: 40 years

**Step 3: Slab thickness (AASHTO 1993)**
- Trial D = 275 mm
- Compute W18 using AASHTO equation with Kenya parameters
- Check: computed capacity > 50 MCESA? If yes, 275 mm is adequate.
- Cross-check against RDM 3.5 table: for 50 MCESA, k = 35 MPa/m (between 30 and 50), FC45: ~275 mm confirmed.
- **Design slab thickness: 275 mm CRCP**

**Step 4: Reinforcement**
- Longitudinal: 0.62% x 275 x 1000 = 1,705 mm2/m width
- Use 20 mm bars at 180 mm c/c (1,745 mm2/m -- OK)
- Transverse: 0.07% x 275 x 1000 = 193 mm2/m
- Use 12 mm bars at 575 mm c/c (197 mm2/m -- OK)

**Step 5: Subbase**
- Lean concrete subbase: 150 mm, UCS 5-10 MPa
- Bond-breaker: 200 micron polyethylene sheet
- Improved subgrade: 300 mm over black cotton soil (mandatory per M.6)

**Step 6: Output summary**
- Pavement type: CRCP
- Slab thickness: 275 mm
- Concrete class: FC45 (MR = 4.5 MPa)
- Longitudinal reinforcement: 20 mm at 180 mm c/c (0.63%)
- Transverse reinforcement: 12 mm at 575 mm c/c (0.07%)
- Subbase: 150 mm lean concrete (UCS 5-10 MPa) + polyethylene bond-breaker
- Improved subgrade: 300 mm selected material (CBR > 15%) over black cotton clay
- Terminal treatments: required at all bridges, intersections, and pavement transitions
- ASR testing: required for all aggregate sources (Nairobi area)
- Curing: 7 days wet curing, no traffic for 28 days

*Note: This is a preliminary/screening-level design. Detailed design must verify against RDM 3.5 design charts, confirm subgrade conditions with site investigation (Skill #7), and specify terminal treatment details.*

---

## M.8 References

1. Kenya Road Design Manual RDM 3.5: Rigid Pavement Design, Ministry of Roads and Transport, 2025
2. Kenya Road Design Manual RDM 3.3: Pavement Materials and Mix Design, Ministry of Roads and Transport, 2025
3. Kenya Road Design Manual RDM 3.1: Traffic Design for Pavement, Ministry of Roads and Transport, 2025
4. Standard Specification for Road and Bridge Construction, Ministry of Roads and Transport, 2025
5. AASHTO Guide for Design of Pavement Structures, 4th Edition, 1993
6. PCA Thickness Design for Concrete Highway and Street Pavements, Portland Cement Association
7. KeNHA Pavement Design Guidelines for National Trunk Roads, 2020
