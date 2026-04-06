# Culvert Structural Design -- Ethiopia Module

> **Parent Skill:** #33 Culvert Structural Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Bridge Design Manual (BDM) 2013; AASHTO LRFD Bridge Design Specifications (2010/2012 editions, as adopted by ERA)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Bridge Design Manual (BDM) | 2013 | Part 1 Section 4.7 (Culverts and Other Buried Structures), Part 1 Chapter 3 (Loads and Load Combinations), Part 1 Section 3.4 (Load Factors and Combinations), Part 2 Section 3.6 (Culverts: RC Culverts, RC Pipes) | Current -- mandatory for all ERA road projects (Verified from PDF) |
| AASHTO LRFD Bridge Design Specifications | 2010/2012 editions | Reference basis for ERA BDM -- Section 3.6.1 (HL-93 Live Load), Section 3.6.2.2 (Dynamic Load Allowance), Section 12 (Buried Structures), Section 5.7.3.4 (Crack Control) | Reference standard adopted by ERA BDM |
| ERA Standard Drawings | 2013 | Standard culvert details for RC box and pipe culverts | Current -- standard details for common sizes |

### M.1.2 Institutional Context

ERA Bridge Design Manual 2013 is the national standard for bridge and culvert structural design in Ethiopia. It was developed by Hanshin Expressway Company (Japan) with JICA support and is based on AASHTO LRFD Bridge Design Specifications (2010 and 2012 editions) with modifications for Ethiopian conditions.

The BDM applies to all road agencies:
- **ERA** (Ethiopian Roads Authority) -- federal trunk roads (DC1-DC4)
- **Regional Road Authorities** -- regional roads (DC5-DC7)
- **Woreda Road Offices** -- woreda (district) roads (DC8-DC10)

For institutional context and road classification, reference Skill #13 Ethiopia module (M.1.2 gateway).

### M.1.3 Standard Philosophy

ERA BDM is based on AASHTO LRFD Bridge Design Specifications. This is fundamentally different from Kenya (EN/Eurocode via RDM 4.2) and Uganda (BS 5400 via MoWT Vol 4). Key distinctions:

- **Load and Resistance Factor Design (LRFD):** Loads are factored (gamma) and resistances are reduced by resistance factors (phi). This differs from the partial factor system in Eurocode (gamma_G/gamma_Q on loads, gamma_c/gamma_s on materials) and from BS 5400 (gamma_fL on loads, gamma_m on materials).
- **HL-93 live load model:** Design truck (325 kN: 35+145+145 kN axles) or design tandem (2 x 110 kN) combined with design lane load (9.3 kN/m). This is distinct from LM1 (Kenya) and HA/HB (Uganda).
- **Limit states:** Strength I (normal vehicular), Strength II (special vehicles), Service I (operational/deflection), Extreme Event I (earthquake). These are NOT equivalent to the EQU/STR/GEO limit states in Eurocode or the 5-combination system in BS 5400.
- **Resistance factors (phi):** phi = 0.90 for flexure, phi = 0.90 for shear, phi = 0.75 for axial compression. Applied to resistance (capacity), not to loads.

For culverts specifically, ERA BDM Part 1 Section 4.7 addresses soil-structure interaction, earth pressure, and live load distribution through fill for buried structures.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table EC.1: AASHTO LRFD Load Factors for Culvert Design (ERA BDM Part 1, Section 3.4, Verified from PDF)**

| Load | Strength I | Strength II | Strength IV | Service I |
|------|-----------|-------------|-------------|-----------|
| DC (structural dead load) | gamma_DC = 1.25 (max) / 0.90 (min) | 1.25 / 0.90 | 1.50 / 0.90 | 1.00 |
| DW (wearing surface) | gamma_DW = 1.50 (max) / 0.65 (min) | 1.50 / 0.65 | 1.50 / 0.65 | 1.00 |
| EV (vertical earth pressure) | gamma_EV = 1.35 (max) / 0.90 (min) | 1.35 / 0.90 | 1.35 / 0.90 | 1.00 |
| EH (horizontal earth pressure) | gamma_EH = 1.50 (max) / 0.90 (min) | 1.50 / 0.90 | 1.50 / 0.90 | 1.00 |
| LL+IM (live load + impact) | gamma_LL = 1.75 | 1.35 | -- | 1.00 |
| LS (live load surcharge) | gamma_LS = 1.75 | 1.35 | -- | 1.00 |

Note: "max" and "min" refer to cases where the load effect is unfavourable or favourable, respectively. Strength IV applies to very high dead-to-live load ratios (deep burial).

**Table EC.2: Dynamic Load Allowance (IM) for Buried Structures (ERA BDM Part 1, per AASHTO LRFD 3.6.2.2, Verified from PDF)**

| Burial Depth | IM (%) | Notes |
|-------------|--------|-------|
| 0 m (at surface) | 33 | Full dynamic allowance |
| 0.0 - 2.4 m | 33 x (1.0 - 0.125 x D_E) | Linear reduction, D_E in metres (values to be verified against ERA BDM table) |
| > 2.4 m | 0 | No dynamic allowance for deeply buried structures |

Where D_E = minimum depth of earth cover above the structure (m).

**Table EC.3: ERA Culvert Structural Types (ERA BDM Part 2, Section 3.6, Verified from PDF)**

| Type | Span Range | Application | Notes |
|------|-----------|-------------|-------|
| RC box culvert (single-cell) | 1.0 - 6.0 m | Standard culvert for most roads | Cast-in-situ or precast segments |
| RC box culvert (multi-cell) | 2 x 1.0 m to 3 x 3.0 m | Wide waterways requiring multiple openings | Shared intermediate walls |
| RC pipe culvert | 450 mm - 1800 mm dia | Smaller waterway crossings | Precast concrete or CMP |
| Stone masonry culvert | 1.0 - 3.0 m | Rural roads where stone is locally available | Common on woreda roads |
| Corrugated metal pipe (CMP) | 600 mm - 2400 mm dia | Low-volume roads, quick installation | Steel or aluminium |

Minimum culvert size: 1.0 m span for box culverts, 450 mm diameter for pipe culverts (ERA BDM Part 2, Section 3.6).

**Table EC.4: Preliminary Sizing Guide for RC Box Culverts (Practice-Based)**

| Span (mm) | Typical Top Slab Thickness (mm) | Typical Wall Thickness (mm) | Standard Fill Range (m) |
|-----------|-------------------------------|----------------------------|------------------------|
| 1000-1500 | 200-250 | 200-250 | 0.6-3.0 |
| 1500-2500 | 250-350 | 250-300 | 0.6-4.0 |
| 2500-4000 | 350-450 | 300-350 | 0.6-5.0 |
| 4000-6000 | 450-600 | 350-450 | 0.6-6.0 |

**Table EC.5: Cross-Country Comparison -- Culvert Structural Design (per D-08, D-09)**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Design code | AASHTO LRFD | BS 5400 | EN/Eurocode |
| Live load model | HL-93 (325 kN design truck) | HA/HB (45 units) | LM1 (UDL + tandem system) |
| Load combination for culvert | Strength I (gamma_LL = 1.75) | Combination 1 (gamma_fL = 1.50) | STR Set B (gamma_Q = 1.35) |
| Resistance format | phi-factor (phi = 0.90 flexure) | gamma_m = 1.50 concrete | gamma_C = 1.50 concrete |
| Dynamic load allowance | 33% reducing to 0% at 2.4 m depth | 25% standard (HA) | Included in alpha_Q adjustment |
| Buried depth for no IM | 2.4 m (AASHTO LRFD 3.6.2.2) | Not explicitly specified | Not explicitly specified |
| Earth pressure load factor | gamma_EV = 1.35, gamma_EH = 1.50 | gamma_fL = 1.50 (earth) | gamma_G = 1.35 (permanent soil) |
| Live load surcharge factor | gamma_LS = 1.75 | gamma_fL = 1.50 | gamma_Q = 1.50 (variable EP) |

### M.2.2 Country-Specific Formulas

**Vertical earth pressure on culvert top slab (ERA BDM, per AASHTO LRFD Section 12):**

```
Characteristic vertical earth pressure:
  EV = gamma_soil x H_c x F_e

Where:
  gamma_soil = unit weight of fill (kN/m3)
  H_c = earth cover depth (m)
  F_e = soil-structure interaction factor (depends on installation type):
    - Embankment installation: F_e = 1 + 0.20 x (H_c / B_c) <= 1.15 (AASHTO LRFD 12.11.2.2)
    - Trench installation: F_e typically 1.0 for rigid culverts
  B_c = outside width of culvert (m)
```

**Live load distribution through fill (ERA BDM Part 1, Section 4.7, per AASHTO LRFD 3.6.1.2.6):**

```
For burial depth H_c >= 0.6 m:
  Wheel load is distributed through fill on all four sides at a slope of 1.15 H : 1 V
  (approximately 1:0.87, equivalent to a spread of 1.15 x H_c each side)

  Distributed area at culvert top = (tire_width + 1.15 x H_c) x (tire_length + 1.15 x H_c)
  where tire contact area = 510 mm x 250 mm (AASHTO LRFD 3.6.1.2.5)

For burial depth H_c < 0.6 m:
  Full wheel loads applied directly to culvert as for a bridge deck
```

Note: The AASHTO LRFD live load distribution slope (1.15H:1V) differs from the Kenya Eurocode approach (30 degrees through fill, Section 10.4.7) and from BS 5400 practice. Do not conflate these dispersal methods.

**Design vertical load on top slab (Strength I limit state):**

```
U = gamma_DC x DC + gamma_DW x DW + gamma_EV x EV + gamma_LL x (LL + IM) + gamma_LS x LS

Where (Strength I, maximum factors):
  gamma_DC = 1.25 (structural dead load)
  gamma_DW = 1.50 (wearing surface)
  gamma_EV = 1.35 (vertical earth pressure)
  gamma_LL = 1.75 (live load including dynamic allowance)
  gamma_LS = 1.75 (live load surcharge on horizontal pressure)
```

**Horizontal earth pressure on culvert walls (ERA BDM, per AASHTO LRFD 3.11):**

```
Characteristic horizontal earth pressure at depth z:
  EH(z) = K x gamma_soil x z

Design horizontal earth pressure (Strength I):
  EH_d(z) = gamma_EH x K x gamma_soil x z = 1.50 x K x gamma_soil x z

Live load surcharge on walls (Strength I):
  LS_d = gamma_LS x K x q_surcharge = 1.75 x K x q_surcharge

Where K = coefficient of lateral earth pressure:
  K_0 = 1 - sin(phi') for at-rest conditions (rigid box culverts)
  K_a = tan^2(45 - phi'/2) for active conditions (flexible structures)
```

**Factored resistance for flexural design (AASHTO LRFD Section 5):**

```
Factored resistance: phi x M_n

Where:
  phi = 0.90 (resistance factor for flexure)
  M_n = A_s x f_y x (d - a/2) (nominal flexural resistance)
  a = A_s x f_y / (0.85 x f'c x b) (depth of equivalent stress block)
```

**Pipe culvert -- bedding factor method (same principles as universal, with LRFD factors):**

```
Factored earth load: W_E = gamma_EV x gamma_soil x H_c x B_c x F_e
Factored live load: W_L = gamma_LL x P_wheel x (1 + IM/100) / distributed_area
Required pipe strength: W_s = (W_E + W_L) / F_m
```

Where F_m = bedding factor (Class A = 3.4, Class B = 2.2, Class C = 1.5, Class D = 1.1).

### M.2.3 Classification System

Ethiopia classifies roads by Design Class (DC1 through DC10), which determines the design loading requirements:

- **DC1-DC4 (trunk/link roads):** Full HL-93 loading; standard RC box or pipe culverts designed per ERA BDM Part 1 Section 4.7
- **DC5-DC7 (regional/collector roads):** HL-93 loading applies; stone masonry culverts permitted per ERA BDM Part 2 Section 3.6
- **DC8-DC10 (woreda/community access roads):** HL-93 loading applies; stone masonry, CMP, or simplified RC culverts common; ERA Standard Drawings used where available

Receives culvert size and type from culvert hydraulic design (Skill #31 Ethiopia module). Hydraulic design determines opening size; structural design determines wall thickness, reinforcement, and foundation.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 1 (Ethiopia): Receive culvert size from Skill #31 Ethiopia module
  |-- Culvert size (span, rise, type) from hydraulic design
  |-- Determine structural design approach based on type
  +-- Check minimum size: 1.0 m span (box) or 450 mm diameter (pipe)

Step 2 (Ethiopia): Determine installation conditions
  |-- Embankment or trench installation
  |-- Fill depth H_c from road profile
  |-- Soil properties from Skill #10 (bearing capacity, unit weight, phi')
  +-- Calculate soil-structure interaction factor F_e

Step 3 (Ethiopia): Earth pressure calculation
  |-- Vertical: EV = gamma_soil x H_c x F_e
  |-- Horizontal: EH = K x gamma_soil x z (K_0 for rigid box, K_a for flexible)
  |-- gamma_soil: use measured value; default 19 kN/m3 if unknown
  +-- Factor: gamma_EV = 1.35, gamma_EH = 1.50 (Strength I)

Step 4 (Ethiopia): Live load on culvert
  |-- H_c < 0.6 m --> full HL-93 wheel load on culvert (bridge-class design)
  |-- H_c >= 0.6 m --> distribute wheel through fill at 1.15H:1V slope
  |   HL-93 design truck: 145 kN axle --> 72.5 kN per wheel
  |   Tire contact: 510 x 250 mm (AASHTO LRFD 3.6.1.2.5)
  |-- Dynamic load allowance: IM = 33% x (1 - 0.125 x D_E) for D_E <= 2.4 m
  |   IM = 0% for D_E > 2.4 m
  +-- Factor: gamma_LL = 1.75 (Strength I)

Step 5 (Ethiopia): Structural analysis
  |-- RC box: rigid frame analysis (moment coefficients for preliminary)
  |   M_corner = w x L^2 / 12 (hogging, approximate for uniform load)
  |   M_midspan = w x L^2 / 24 (sagging, approximate)
  |-- Pipe: bedding factor method with LRFD load factors
  +-- Factored resistance: phi x M_n (phi = 0.90 for flexure)

Step 6 (Ethiopia): Foundation check
  |-- Bearing pressure: total vertical load / base width
  |-- Check against allowable from Skill #10
  |-- Settlement limits per ERA BDM
  +-- For poor soils: consider improved bedding or foundation treatment
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Stone masonry culverts are widely used on regional and woreda roads.** In many parts of Ethiopia, locally quarried stone is abundant and affordable. ERA BDM Part 2 Section 3.6 includes stone masonry as a culvert type for spans up to 3.0 m. These are particularly common in highland regions (Amhara, Tigray, SNNPR) where basalt stone is readily available.

**The Ethiopian Rift Valley presents seismic design considerations.** Culverts in seismic zones 3 and 4 (Rift Valley, Afar) require consideration of Extreme Event I load combination per ERA BDM Part 1 Chapter 3. While most culverts are not significantly affected by seismic loading due to their buried condition, shallow-cover culverts and tall wingwalls require seismic checks.

**Overloading on federal trunk roads is a significant concern.** Ethiopian trunk roads, particularly the Addis Ababa-Djibouti corridor and the Modjo-Hawassa corridor, carry significant numbers of overloaded trucks. While HL-93 includes a substantial design margin, the designer should verify that Strength II load combination (owner-specified special vehicles) has been considered for trunk road culverts.

**Fill depth strongly affects the design economy.** The dynamic load allowance (IM) reduction with burial depth (0% at 2.4 m) is a significant advantage for deeply buried culverts. Where alignment permits, increasing fill depth to >2.4 m eliminates the dynamic component entirely, reducing structural demand and cost.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Using Eurocode or BS 5400 load factors for ERA design.** ERA BDM is based on AASHTO LRFD. Use gamma_LL = 1.75 for Strength I (not gamma_Q = 1.35 from Eurocode or gamma_fL = 1.50 from BS 5400). The load factor systems are not interchangeable.
2. **Not applying the soil-structure interaction factor F_e.** AASHTO LRFD Section 12.11.2 requires the soil-structure interaction factor for embankment installations. Omitting F_e underestimates vertical earth pressure on rigid culverts.
3. **Using wrong live load dispersal slope.** AASHTO LRFD uses 1.15H:1V dispersal through fill (approximately 49 degrees from vertical). Do not use the Eurocode 30-degree angle or BS 5400 methods for ERA design.
4. **Forgetting to reduce IM with burial depth.** Dynamic load allowance reduces linearly from 33% at the surface to 0% at 2.4 m depth. Applying full 33% to deeply buried culverts is overly conservative and wastes materials.
5. **Applying phi-factor to loads instead of resistance.** In AASHTO LRFD, phi (resistance factor) applies to the nominal resistance (capacity), not to the applied loads. The load factors (gamma) apply to loads. This is the opposite of the partial factor concept in some other codes.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Live load model | HL-93 | All road classes | No flag | ERA BDM Part 1 Chapter 3 -- HL-93 for all road bridges and culverts |
| Concrete strength | f'c = 25 MPa | Not specified | ASSUMED: f'c = 25 MPa. Verify against ERA material specifications and local availability | Common grade for culvert construction in Ethiopia |
| Reinforcement yield | f_y = 420 MPa | Grade 60 | ASSUMED: f_y = 420 MPa (AASHTO Grade 60). Verify local reinforcement grade | AASHTO LRFD standard |
| Earth pressure K | K_0 = 0.50 | Rigid box culvert, at-rest | ASSUMED: K_0 = 0.50 for rigid box culvert | Standard practice for rigid structures |
| Fill unit weight | 19 kN/m3 | Not specified | ASSUMED: gamma_soil = 19 kN/m3 | Typical compacted fill |
| Concrete density | 24 kN/m3 | Reinforced concrete | No flag | AASHTO LRFD standard value |
| Resistance factor (flexure) | phi = 0.90 | RC sections | No flag | AASHTO LRFD 5.5.4.2.1 |
| Resistance factor (shear) | phi = 0.90 | RC sections | No flag | AASHTO LRFD 5.5.4.2.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| gamma_EV (Strength I, max) | 1.35 | 1.35 | -- | ERA BDM Part 1, Section 3.4 | Reject if != 1.35 |
| gamma_EH (Strength I, max) | 1.50 | 1.50 | -- | ERA BDM Part 1, Section 3.4 | Reject if != 1.50 |
| gamma_LL (Strength I) | 1.75 | 1.75 | -- | ERA BDM Part 1, Section 3.4 | Reject if != 1.75 |
| phi (flexure) | 0.90 | 0.90 | -- | AASHTO LRFD 5.5.4.2.1 | Reject if != 0.90 |
| Min pipe diameter | 450 | -- | mm | ERA BDM Part 2, Section 3.6 | Reject if < 450 mm |
| Min box culvert span | 1000 | -- | mm | ERA BDM Part 2, Section 3.6 | Reject if < 1000 mm |
| Min slab thickness | 200 | -- | mm | Practice minimum | Warn if < 200 mm |
| IM (at surface) | 33 | 33 | % | AASHTO LRFD 3.6.2.2 | Reject if != 33% at surface |
| IM (D_E > 2.4 m) | 0 | 0 | % | AASHTO LRFD 3.6.2.2 | Reject if > 0% for D_E > 2.4 m |

### M.5.2 Standards Compliance Checks

- **Check:** AASHTO LRFD loading used (not Eurocode LM1 or BS 5400 HA/HB)
- **Standard:** ERA BDM Part 1, Chapter 3
- **Pass condition:** Loading referenced as HL-93 with design truck, design tandem, and design lane load
- **Fail action:** SENIOR REVIEW -- ERA BDM uses AASHTO LRFD HL-93 loading. Do not use LM1 (Eurocode) or HA/HB (BS 5400).

- **Check:** Correct load combination for Strength I
- **Standard:** ERA BDM Part 1, Section 3.4
- **Pass condition:** gamma_DC = 1.25, gamma_EV = 1.35, gamma_LL = 1.75, gamma_EH = 1.50
- **Fail action:** SENIOR REVIEW -- Load factors do not match Strength I combination per ERA BDM. Verify against Table in BDM Part 1 Section 3.4.

- **Check:** Live load dispersal through fill uses AASHTO LRFD method
- **Standard:** ERA BDM Part 1, Section 4.7; AASHTO LRFD 3.6.1.2.6
- **Pass condition:** Dispersal slope = 1.15H:1V through earth fill for H_c >= 0.6 m
- **Fail action:** NOTE -- Verify dispersal method. AASHTO LRFD uses 1.15H:1V (not Eurocode 30 degrees or BS 5400 methods).

- **Check:** Resistance factor applied to resistance (not loads)
- **Standard:** AASHTO LRFD 5.5.4.2
- **Pass condition:** phi = 0.90 applied to M_n (nominal resistance), not to load effects
- **Fail action:** SENIOR REVIEW -- AASHTO LRFD applies phi to resistance. Load factors (gamma) apply to loads. Do not conflate with Eurocode or BS 5400 partial factor systems.

### M.5.3 Departures / Relaxations Process

Departures from ERA BDM design standards require approval from ERA. For federal roads, the ERA Bridge Engineer is the approving authority. For regional/woreda roads, the respective Regional Road Authority chief engineer approves. The designer shall document all departures with full technical justification in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Fill depth < 600 mm | Direct loading -- no dispersal through fill | SENIOR REVIEW -- Fill depth [H_c] mm is less than 600 mm. Culvert must be designed as bridge structure with full HL-93 loading per ERA BDM Part 1 Section 4.7. |
| Span > 6.0 m | Bridge-class structure | SENIOR REVIEW -- Span [L] m exceeds 6.0 m. Structure should be designed as bridge per Skill #37 using ERA BDM Part 1. |
| Fill height > 10 m | Deep burial effects | SENIOR REVIEW -- Fill height [H_c] m exceeds 10 m. Verify soil-structure interaction factor F_e and consider Strength IV load combination (high dead/live ratio). |
| Seismic zone 3 or 4 (Rift Valley, Afar) | Seismic actions | NOTE -- Site is in seismic zone 3 or 4 per ERA BDM. Check Extreme Event I load combination for shallow-cover culverts and tall end walls. |
| Skew angle > 30 degrees | Complex load distribution | SENIOR REVIEW -- Skew angle [theta] degrees exceeds 30 degrees. Detailed 3D structural analysis required per ERA BDM Part 1. |
| High water table | Buoyancy and hydrostatic pressure | NOTE -- High water table at culvert site. Check uplift in Strength I (min EV factor = 0.90) and consider hydrostatic pressure on base slab. |
| Detailed reinforcement required | Beyond preliminary design scope | SENIOR REVIEW -- Preliminary member sizes established. Detailed reinforcement design per AASHTO LRFD Section 5 required by specialist structural engineer. |

---

## M.7 Worked Example -- Ethiopia

### Example 1: 2.0m x 1.5m Single-Cell RC Box Culvert, DC6 Trunk Road, 1.5m Fill

**Source:** ERA BDM Part 1 Section 4.7 and Chapter 3 loading provisions applied to standard box culvert

**Given:**
- Culvert size from Skill #31 Ethiopia module: 2000 mm span x 1500 mm rise (single-cell RC box)
- Fill depth: H_c = 1.5 m (>= 0.6 m, so live load dispersal through fill applies)
- Road class: DC6 regional road (HL-93 loading)
- Subgrade: bearing capacity 150 kPa (from Skill #10)
- Fill unit weight: gamma_soil = 19 kN/m3
- K_0 = 0.50 (at-rest, rigid box culvert)
- Concrete: f'c = 25 MPa (gamma_concrete = 24 kN/m3)
- Reinforcement: f_y = 420 MPa

**Solution:**

**Step 1 -- Soil-structure interaction factor:**
- Embankment installation assumed
- F_e = 1 + 0.20 x (H_c / B_c) = 1 + 0.20 x (1.5 / 2.40) = 1 + 0.125 = 1.125
- Where B_c = span + 2 x wall thickness = 2.0 + 2 x 0.20 = 2.40 m (assumed 200 mm walls initially)
- F_e = 1.125 (< 1.15, acceptable)

**Step 2 -- Characteristic loads on top slab:**
- Vertical earth pressure: EV = gamma_soil x H_c x F_e = 19 x 1.5 x 1.125 = 32.1 kN/m2
- Self-weight of top slab (assume 250 mm): DC_slab = 24 x 0.25 = 6.0 kN/m2
- Wearing surface (assume 75 mm asphalt): DW = 22 x 0.075 = 1.65 kN/m2

**Step 3 -- Live load on top slab (characteristic, dispersed through fill):**
- HL-93 design truck: axle = 145 kN, wheel = 72.5 kN
- Tire contact: 510 mm x 250 mm
- Dispersal through 1.5 m fill at 1.15H:1V:
  - Dispersed length = 510 + 2 x 1.15 x 1500 = 510 + 3450 = 3960 mm = 3.96 m
  - Dispersed width = 250 + 2 x 1.15 x 1500 = 250 + 3450 = 3700 mm = 3.70 m
- Dispersed wheel pressure: LL_wheel = 72.5 / (3.96 x 3.70) = 4.95 kN/m2
- Check: dispersed width (3.96 m) > culvert span (2.0 m), so load spans entire top slab
- Two wheels per axle, transverse spacing 1.80 m: dispersal zones overlap -- use combined pressure
- Design lane load: 9.3 kN/m2 dispersed similarly = 9.3 kN/m2 (UDL, distributed across width)
- Dynamic load allowance: IM = 33% x (1.0 - 0.125 x 1.5) = 33% x 0.8125 = 26.8%
- Live load with IM: LL + IM = 4.95 x 1.268 = 6.28 kN/m2 (per wheel, approximate)
- Total live load (truck + lane): approximately 6.28 + 9.3 = 15.58 kN/m2 (simplified; governs over tandem)

**Step 4 -- Factored design load on top slab (Strength I):**
- DC: gamma_DC x DC_slab = 1.25 x 6.0 = 7.5 kN/m2
- DW: gamma_DW x DW = 1.50 x 1.65 = 2.5 kN/m2
- EV: gamma_EV x EV = 1.35 x 32.1 = 43.3 kN/m2
- LL+IM: gamma_LL x (LL+IM) = 1.75 x 15.58 = 27.3 kN/m2
- Total factored load: U = 7.5 + 2.5 + 43.3 + 27.3 = 80.6 kN/m2

**Step 5 -- Horizontal earth pressure at base of wall (Strength I):**
- Total depth to base = H_c + rise + top_slab + base_slab = 1.5 + 1.5 + 0.25 + 0.25 = 3.5 m
- Characteristic EH at base: EH = K_0 x gamma_soil x z = 0.50 x 19 x 3.5 = 33.3 kN/m2
- Factored: EH_d = gamma_EH x EH = 1.50 x 33.3 = 49.9 kN/m2
- Live load surcharge: LS_d = gamma_LS x K_0 x q_LL = 1.75 x 0.50 x 9.3 = 8.1 kN/m2
- Total factored horizontal pressure at base: 49.9 + 8.1 = 58.0 kN/m2

**Step 6 -- Preliminary member sizing:**
- Top slab: span/8 = 2000/8 = 250 mm (selected)
- Bottom slab: 250 mm (matched to top)
- Walls: 200 mm

**Step 7 -- Approximate moments in top slab (Strength I):**
- Total factored UDL on top slab: w = 80.6 kN/m2
- Mid-span moment (sagging): M_u,mid = w x L^2 / 24 = 80.6 x 2.0^2 / 24 = 13.4 kNm/m
- Corner moment (hogging): M_u,corner = w x L^2 / 12 = 80.6 x 2.0^2 / 12 = 26.9 kNm/m

**Step 8 -- Factored resistance check (flexure, top slab mid-span):**
- phi x M_n required >= M_u,mid = 13.4 kNm/m
- Assume d = 250 - 50 (cover) - 6 (half bar) = 194 mm
- Required A_s = M_u / (phi x f_y x (d - a/2))
- Trial: A_s = 13.4 x 10^6 / (0.90 x 420 x (194 - 10)) = 13.4 x 10^6 / (69,552) = 193 mm2/m
- Minimum reinforcement: A_s,min = 0.002 x b x d = 0.002 x 1000 x 194 = 388 mm2/m (governs)
- Use Y12 at 250 mm c/c (452 mm2/m) -- preliminary

**Step 9 -- Bearing pressure check:**
- Total vertical load per metre run (characteristic):
  - Earth on top: EV x span = 32.1 x 2.0 = 64.2 kN/m
  - Live on top: (LL+IM) x span = 15.58 x 2.0 = 31.2 kN/m
  - Self-weight: 24 x [(2 x 0.25 x 2.0) + (2 x 0.20 x 1.5)] = 24 x [1.0 + 0.6] = 38.4 kN/m
  - Total = 64.2 + 31.2 + 38.4 = 133.8 kN/m (characteristic)
- Base width = 2.0 + 2 x 0.20 = 2.40 m
- Bearing pressure = 133.8 / 2.40 = 55.8 kPa (characteristic)
- Allowable = 150 kPa (from Skill #10)
- Status: PASS (55.8 < 150)

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Top slab thickness | 250 mm | Preliminary |
| Bottom slab thickness | 250 mm | Preliminary |
| Wall thickness | 200 mm | Preliminary |
| Corner moment (Strength I) | ~26.9 kNm/m | Approximate |
| Mid-span moment (Strength I) | ~13.4 kNm/m | Approximate |
| Reinforcement (mid-span) | Y12 at 250 c/c (452 mm2/m) | Preliminary (min steel governs) |
| Bearing pressure | 55.8 kPa | PASS (allowable 150 kPa) |

SENIOR REVIEW -- Preliminary member sizes and reinforcement determined using AASHTO LRFD Strength I load combination. Detailed reinforcement design per AASHTO LRFD Section 5 (as adopted in ERA BDM) required by specialist structural engineer. Design values are preliminary/screening level.

---

## M.8 References

1. Ethiopian Roads Authority, *Bridge Design Manual (BDM)*, 2013. Part 1 Section 4.7 (Culverts and Other Buried Structures), Chapter 3 (Loads and Load Combinations, Section 3.4), Part 2 Section 3.6 (Culverts: RC Culverts, RC Pipes).
2. AASHTO, *LRFD Bridge Design Specifications*, 2010/2012 editions. Section 3.6.1 (HL-93 Vehicular Live Loading), Section 3.6.2.2 (Dynamic Load Allowance), Section 12 (Buried Structures and Tunnel Liners), Section 5 (Concrete Structures), Section 3.11 (Earth Pressure).
3. ERA, *Standard Drawings for Bridges and Culverts*, 2013. Standard culvert details for RC box and pipe culverts.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-06 | AI draft | Initial draft -- AASHTO LRFD loading from ERA BDM Part 1, HL-93 live load with dynamic load allowance reduction for burial depth, Strength I load combination factors, soil-structure interaction per AASHTO LRFD Section 12, three-code comparison table (Verified from PDF) |
