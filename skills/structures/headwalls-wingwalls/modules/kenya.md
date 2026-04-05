# Headwalls & Wingwalls -- Kenya Module

> **Parent Skill:** #34 Headwalls & Wingwalls
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 4.2: Bridge and Culvert Design (2025); Standard Specification for Road and Bridge Construction (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 4.2: Bridge and Culvert Design | 2025 | Ch 10 Section 10.3 (Layout of Culverts -- headwall/wingwall layout), Section 3.7 (Earth Pressure on Abutments and Retaining Structures), Ch 11 (Foundations), Section 3.13 (Combination of Actions) | Current -- mandatory for all new structural design |
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Standard Drawings for culvert end structures | Current |
| EN 1997-1 (Eurocode 7) | As adopted via RDM 4.2 | Geotechnical design principles for retaining structures | Current -- referenced in Ch 11 |
| EN 1992-1-1 (Eurocode 2) | As adopted via RDM 4.2 | Concrete structural design for wingwall reinforcement | Current |

### M.1.2 Institutional Context

Headwall and wingwall design in Kenya follows RDM 4.2 for structural loading and earth pressure, with reference to the Standard Specification and Standard Drawings for standard culvert end structure details. All road agencies (KeNHA, KeRRA, KURA, County Governments) apply these standards. For institutional context and road classification, reference Skill #13 Kenya module (M.1.2 gateway).

Kenya uses EN/Eurocode earth pressure principles per RDM 4.2 Section 3.7, not BS 5400 Part 2 earth pressure coefficients. The partial factor system uses gamma_G and gamma_Q (EN 1990), not gamma_fL (BS 5400).

### M.1.3 Standard Philosophy

RDM 4.2 Section 10.3 provides layout requirements for culvert end structures including headwalls and wingwalls (see Figure 10.1 showing typical sections with wing walls, gabion mattress protection, and stone pitching). Earth pressure calculations follow the EN framework:

- Earth pressure determined using characteristic soil parameters and appropriate K coefficients per Section 3.7
- Partial factors gamma_G (permanent earth pressure) and gamma_Q (variable surcharge) from Tables 3.31-3.33 depending on verification type (EQU, STR, or GEO)
- For wingwall stability (overturning/sliding): use EQU verification (Table 3.31, Set A) or STR/GEO verification (Table 3.32/3.33, Set B/Set C)
- Foundation design per EN 1997 principles (Ch 11)

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table KH.1: Standard Headwall Configurations (RDM 4.2, Section 10.3, Practice-Based)**

| Culvert Size | Headwall Type | Wingwall | Notes |
|-------------|---------------|----------|-------|
| Pipe <= 600 mm | Standard straight, 200 mm thick | None or short parallel | Standard Drawing detail |
| Pipe 600-1200 mm | Standard straight, 250 mm thick | Short 45-degree flared | Standard Drawing detail |
| Box 500-1500 mm | Designed straight, 300 mm thick | 45-degree flared, designed | Structural design required |
| Box > 1500 mm | Designed (straight or flared) | 45-degree flared, designed | Full structural design per RDM 4.2 |

**Table KH.2: Earth Pressure Parameters for Wingwall Design (RDM 4.2, Section 3.7 and Tables 3.31-3.32)**

| Parameter | EQU (Set A, Table 3.31) | STR (Set B, Table 3.32) | GEO (Set C, Table 3.33) |
|-----------|------------------------|------------------------|------------------------|
| gamma_G,sup (soil weight, unfavourable) | 1.05 | 1.35 | 1.00 |
| gamma_G,inf (soil weight, favourable) | 0.95 | 0.95 | 1.00 |
| gamma_Q (variable earth pressure/surcharge) | 1.35 | 1.50 | 1.30 |
| gamma_Q (traffic actions) | 1.35 | 1.35 | 1.15 |

**Table KH.3: Typical Soil Parameters for Earth Pressure (Practice-Based)**

| Soil Type | Ka (active) | K0 (at-rest) | gamma_soil (kN/m3) | phi' (degrees) |
|-----------|-------------|-------------|-------------------|---------------|
| Compacted granular fill | 0.33 | 0.50 | 19 | 30 |
| Laterite (typical Kenya) | 0.30-0.35 | 0.45-0.50 | 18-20 | 28-32 |
| Stiff clay (expansive) | 0.35-0.50 | 0.50-0.70 | 18-20 | 20-25 |

### M.2.2 Country-Specific Formulas

**Wingwall earth pressure (per RDM 4.2, Section 3.7 -- EN 1997 principles):**

```
Characteristic active earth pressure at depth z:
  sigma_a,k(z) = Ka x gamma_soil x z + Ka x q_surcharge

Design earth pressure (ULS, STR, Set B):
  sigma_a,d(z) = gamma_G,sup x Ka x gamma_soil x z + gamma_Q x Ka x q_surcharge
              = 1.35 x Ka x gamma_soil x z + 1.50 x Ka x q_surcharge
```

**Overturning stability (EQU verification, Set A):**

```
Destabilising: E_d,dst = gamma_G,sup x [0.5 x Ka x gamma_soil x H^2] + gamma_Q x [Ka x q_surcharge x H]
             = 1.05 x [0.5 x Ka x gamma_soil x H^2] + 1.35 x [Ka x q_surcharge x H]

Stabilising: E_d,stb = gamma_G,inf x [W_wall x d_wall + W_base x d_base + W_fill x d_fill]
           = 0.95 x [restoring moment from self-weight]

Verify: E_d,dst <= E_d,stb
```

Note: Unlike Uganda (which uses unfactored restoring moment vs factored overturning moment with gamma_fL), Kenya applies separate partial factors to both sides per EN 1990 EQU verification.

**Sliding stability (GEO verification, Set C):**

```
Design sliding force: H_d = gamma_G,sup x [0.5 x Ka x gamma_soil x H^2] + gamma_Q x [Ka x q_surcharge x H]
                    = 1.00 x [0.5 x Ka x gamma_soil x H^2] + 1.30 x [Ka x q_surcharge x H]

Design sliding resistance: R_d = V_d x tan(delta_k) / gamma_R,h
Where V_d = gamma_G,inf x total vertical load, gamma_R,h = partial factor on sliding resistance (1.0 for DA1-C2)

Verify: H_d <= R_d
```

### M.2.3 Classification System

Kenya classifies culvert end structures similarly to Uganda:
- **Standard details:** Pre-designed headwalls and wingwalls from Standard Drawings for culverts up to 1200 mm
- **Designed end structures:** Custom-designed for culverts > 1200 mm or non-standard conditions
- **Gabion headwalls:** Alternative for rural/remote locations where RC construction is difficult

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Headwall type selection
  |-- Pipe culvert <= 600 mm --> Standard headwall from Standard Drawings
  |-- Pipe culvert 600-1200 mm --> Standard headwall with short wingwalls
  |-- Box culvert or pipe > 1200 mm --> Designed headwall and wingwalls
  +-- Use standard details where available per Standard Specification

Step 5 (Kenya): Earth pressure on wingwall
  |-- Determine verification type: EQU (overturning), STR (structural), GEO (geotechnical)
  |-- Apply appropriate partial factors from Tables 3.31/3.32/3.33
  |-- Ka from site soil data (default 0.33 for phi' = 30 deg)
  |-- Traffic surcharge from LM1 UDL (not HA/HB surcharge)
  +-- Consistent with EN earth pressure approach per Section 3.7

Step 6 (Kenya): Wingwall stability
  |-- Overturning: EQU verification (Table 3.31 Set A)
  |   gamma_G,sup = 1.05 (destabilising), gamma_G,inf = 0.95 (stabilising)
  |-- Sliding: GEO verification (Table 3.33 Set C)
  |   gamma_G,sup = 1.00, gamma_Q = 1.30
  |-- Bearing: Foundation design per EN 1997 (Ch 11)
  +-- Maximum permissible settlement: 25 mm cohesive, 65 mm cohesionless
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Use standard details from Standard Drawings wherever possible.** The Standard Specification and Standard Drawings provide proven details for common culvert end structures, familiar to Kenya contractors.

**Kenya's expansive "black cotton" soils are challenging for wingwall foundations.** In the Rift Valley and parts of western Kenya, expansive clays (black cotton soils) can cause significant heave and settlement. Consider deeper foundations, lime stabilisation, or flexible gabion construction.

**Gabion headwalls are widely used in rural Kenya.** KeRRA and County roads commonly use gabion basket headwalls and wingwalls. These are cost-effective, use locally available stone, and tolerate settlement better than rigid RC structures. Reference Skill #32 for erosion protection design.

**Outlet erosion protection is critical.** RDM 4.2 Figure 10.1 shows gabion mattress protection at culvert outlets and stone pitching at inlets as standard practice. Always specify outlet protection -- scour undermining headwalls is a common failure mode.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using BS 5400 Part 2 earth pressure approach.** Kenya uses EN 1997 principles for earth pressure (RDM 4.2 Section 3.7). Do not reference BS 5400 Part 2 for new Kenya designs.
2. **Applying a single global factor of safety for stability.** EN 1990 EQU verification applies separate partial factors to destabilising and stabilising actions. Do not use a single FoS approach.
3. **Neglecting outlet erosion protection.** RDM 4.2 Figure 10.1 shows gabion mattress as standard outlet protection. Always specify protection per Skill #32.
4. **Designing custom headwalls for small culverts.** Standard details from the Standard Specification are available for culverts up to 1200 mm -- use them to save design effort and ensure proven performance.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Wingwall angle | 45 degrees | Standard configuration | ASSUMED: 45-degree flared wingwalls | RDM 4.2 Figure 10.1 standard layout |
| Wingwall Ka | 0.33 | phi' = 30 degrees | ASSUMED: Ka = 0.33, phi' = 30 deg | Typical compacted fill |
| Traffic surcharge | LM1 UDL (5.49 kN/m2 for Lane 1) | Standard roads | ASSUMED: LM1 UDL surcharge | RDM 4.2, Section 10.4.8.1 |
| Apron slab thickness | 250 mm | Standard | ASSUMED: 250 mm apron slab | Common practice |
| Concrete grade | C25/30 | Not specified | ASSUMED: C25/30 concrete | Common Kenya practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| gamma_G,sup (EQU, destabilising) | 1.05 | 1.05 | -- | RDM 4.2, Table 3.31 | Reject if != 1.05 |
| gamma_G,inf (EQU, stabilising) | 0.95 | 0.95 | -- | RDM 4.2, Table 3.31 | Reject if != 0.95 |
| gamma_G,sup (STR) | 1.35 | 1.35 | -- | RDM 4.2, Table 3.32 | Reject if != 1.35 |

### M.5.2 Standards Compliance Checks

- **Check:** EN earth pressure approach used (not BS 5400 Part 2)
- **Standard:** RDM 4.2, Section 3.7
- **Pass condition:** Earth pressure calculated using gamma_G/gamma_Q notation with EN partial factors
- **Fail action:** SENIOR REVIEW -- BS 5400 earth pressure is superseded. Use EN 1997 approach per RDM 4.2 Section 3.7.

- **Check:** Stability verification uses EQU partial factors for overturning
- **Standard:** RDM 4.2, Table 3.31 (Set A)
- **Pass condition:** Destabilising actions factored by gamma_G,sup = 1.05, stabilising by gamma_G,inf = 0.95
- **Fail action:** SENIOR REVIEW -- Stability check must use EN 1990 EQU verification, not single global factor of safety.

### M.5.3 Departures / Relaxations Process

Departures from RDM 4.2 design standards require approval from the relevant Approving Authority. Non-standard configurations should be justified in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Wingwall height > 3 m | Significant retaining wall | SENIOR REVIEW -- Wingwall retained height [H] m. Detailed retaining wall design required per RDM 4.2 Section 3.7 and Ch 11 principles. |
| Outlet velocity > 4 m/s | Erosion risk | NOTE -- High outlet velocity [V] m/s. Specify erosion protection per Skill #32 and RDM 4.2 Figure 10.1 (gabion mattress). |
| Expansive clay (black cotton soil) foundation | Settlement and movement risk | NOTE -- Expansive clay soils at wingwall foundation. Consider lime stabilisation, deeper foundations, or flexible gabion construction per local practice. |
| Poor foundation conditions | Inadequate bearing capacity | SENIOR REVIEW -- Foundation design per EN 1997 (RDM 4.2 Ch 11). Bearing capacity insufficient. Consider foundation improvement. |

---

## M.7 Worked Example -- Kenya

### Example: Headwall and Wingwalls for 1200mm Pipe Culvert, 2.0m Fill, Class C Road

**Source:** RDM 4.2 earth pressure provisions (Section 3.7) and culvert layout (Section 10.3)

**Given:**
- Culvert from Skill #33: 1200 mm diameter pipe culvert
- Fill depth: 2.0 m
- Road class: C (KeRRA road -- LM1 loading)
- phi' = 30 degrees (Ka = 0.33), gamma_soil = 19 kN/m3
- Bearing capacity: 100 kPa (from Skill #10)
- 45-degree flared wingwalls selected

**Solution:**

**Step 1 -- Headwall height:**
- H_headwall = fill_depth + pipe_diameter + bedding = 2.0 + 1.2 + 0.15 = 3.35 m
- Headwall extends from pipe invert to road surface level

**Step 2 -- Headwall type:**
- 1200 mm pipe --> at the threshold for standard details. Use designed headwall for 3.35 m retained height.
- Headwall thickness: 300 mm

**Step 3 -- Wingwall configuration:**
- 45-degree flared wingwalls
- Height at headwall junction: 3.35 m
- Height at tip: 0.6 m (minimum)
- Wingwall length: approximately 3.5 m

**Step 4 -- Earth pressure on wingwall (ULS, STR, Set B, at max height 3.35 m):**
- Characteristic active pressure at base:
  sigma_a,k = Ka x gamma_soil x H + Ka x q_surcharge
  = 0.33 x 19 x 3.35 + 0.33 x 5.49 = 21.0 + 1.8 = 22.8 kN/m2
- Design pressure (STR):
  sigma_a,d = 1.35 x 0.33 x 19 x 3.35 + 1.50 x 0.33 x 5.49
  = 28.4 + 2.7 = 31.1 kN/m2

**Step 5 -- Overturning check (EQU verification, Set A):**
- Destabilising moment about toe:
  - Active force = 0.5 x Ka x gamma_soil x H^2 + Ka x q x H
    = 0.5 x 0.33 x 19 x 3.35^2 + 0.33 x 5.49 x 3.35 = 35.2 + 6.1 = 41.3 kN/m
  - Overturning moment (factored):
    M_dst = 1.05 x [0.5 x 0.33 x 19 x 3.35^3/3] + 1.35 x [0.33 x 5.49 x 3.35^2/2]
    = 1.05 x 39.3 + 1.35 x 10.2 = 41.3 + 13.8 = 55.1 kNm/m

- Stabilising moment (assume wingwall base width 2.2 m):
  - Wall self-weight: 25 x 0.30 x 3.35 = 25.1 kN/m, lever arm ~0.7 m = 17.6 kNm/m
  - Base slab: 25 x 0.40 x 2.2 = 22.0 kN/m, lever arm = 1.1 m = 24.2 kNm/m
  - Fill on heel: 19 x 3.35 x 1.5 = 95.5 kN/m, lever arm = 1.45 m = 138.5 kNm/m
  - M_stb (factored) = 0.95 x (17.6 + 24.2 + 138.5) = 0.95 x 180.3 = 171.3 kNm/m

- Check: E_d,dst (55.1) <= E_d,stb (171.3) -- PASS

**Step 6 -- Bearing pressure check:**
- Total vertical load (characteristic): 25.1 + 22.0 + 95.5 = 142.6 kN/m
- Bearing pressure = 142.6 / 2.2 = 64.8 kPa
- Allowable = 100 kPa -- PASS

**Step 7 -- Apron slab and erosion protection:**
- Apron slab: 2.0 m long, matching headwall width, 250 mm thick
- Erosion protection: gabion mattress at outlet per RDM 4.2 Figure 10.1 and Skill #32

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Headwall type | Designed straight | |
| Headwall height | 3.35 m | |
| Headwall thickness | 300 mm | Preliminary |
| Wingwall angle | 45 degrees | |
| Wingwall height (max) | 3.35 m | |
| Wingwall base width | 2.2 m | |
| EQU check | E_d,dst 55.1 <= E_d,stb 171.3 | PASS |
| Bearing pressure | 64.8 kPa | PASS (allowable 100 kPa) |
| Erosion protection | Gabion mattress at outlet | Per Skill #32 |

SENIOR REVIEW -- Wingwall height 3.35 m exceeds 3.0 m trigger. Detailed retaining wall design required by specialist structural engineer.

---

## M.8 References

1. Republic of Kenya, Ministry of Roads and Transport, *Road Design Manual, Volume 4: Bridge and Retaining Structures Design, Part 2: Bridge and Culvert Design (RDM 4.2)*, 2025. Section 10.3 (Layout of Culverts), Section 3.7 (Earth Pressure), Chapter 11 (Foundations).
2. Republic of Kenya, Ministry of Roads and Transport, *Standard Specification for Road and Bridge Construction*, 2025. Standard Drawings for culvert end structures.
3. EN 1997-1: *Eurocode 7: Geotechnical design*. As adopted in RDM 4.2 Chapter 11.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- EN earth pressure approach per RDM 4.2 Section 3.7, EQU/STR/GEO partial factors from Tables 3.31-3.33, culvert layout from Section 10.3 |
