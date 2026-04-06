# Headwalls & Wingwalls -- Ethiopia Module

> **Parent Skill:** #34 Headwalls & Wingwalls
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
| ERA Bridge Design Manual (BDM) | 2013 | Part 1 Section 4.6 (Wingwall and Retaining Wall Design), Part 2 Section 3.7.4 (Wingwalls), Part 1 Section 3.11 (Earth Pressure -- AASHTO LRFD EH, LS), Part 1 Section 3.4 (Load Factors and Combinations) | Current -- mandatory for all ERA road projects (Verified from PDF) |
| ERA Standard Drawings | 2013 | Standard headwall and wingwall details for common culvert sizes | Current |
| AASHTO LRFD Bridge Design Specifications | 2010/2012 editions | Section 3.11 (Earth Pressure), Section 11.5 (Abutments and Conventional Retaining Walls), Section 11.6 (Stability), Section 3.4 (Load Combinations) | Reference standard adopted by ERA BDM |

### M.1.2 Institutional Context

Headwall and wingwall design in Ethiopia follows ERA BDM 2013 for structural loading and earth pressure analysis, with ERA Standard Drawings providing standard details for common culvert sizes. The BDM applies to all road agencies (ERA, Regional Road Authorities, Woreda Road Offices).

ERA BDM uses AASHTO LRFD earth pressure methodology (Rankine or Coulomb approach per Section 3.11), which is distinct from Kenya's EN 1997 (Eurocode 7) approach and Uganda's BS 5400/BS 8002 approach. For institutional context and road classification, reference Skill #13 Ethiopia module (M.1.2 gateway).

### M.1.3 Standard Philosophy

ERA BDM Part 1 Section 4.6 addresses wingwall and retaining wall design using AASHTO LRFD principles. Part 2 Section 3.7.4 provides guidance on wingwall geometry and standard configurations. Key aspects:

- Earth pressure is treated as a permanent load (EH) with load factor gamma_EH = 1.50 (Strength I, maximum)
- Live load surcharge is treated as a variable load (LS) with load factor gamma_LS = 1.75 (Strength I)
- Stability is checked using LRFD load combinations, not working stress factors of safety
- Resistance factors (phi) are applied to geotechnical resistance (bearing, sliding) rather than factoring loads differently for each check as in EN/Eurocode EQU/STR/GEO limit states

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table EH.1: Standard Headwall Configurations (ERA BDM Part 2, Section 3.7.4 and Standard Drawings, Verified from PDF)**

| Culvert Type/Size | Headwall Type | Wingwall | Notes |
|-------------------|---------------|----------|-------|
| Pipe <= 600 mm | Standard straight, 200 mm thick | None or short parallel | ERA Standard Drawing detail |
| Pipe 600-1200 mm | Standard straight, 250 mm thick | Short 30-45 degree flared | ERA Standard Drawing detail |
| Box 1000-2000 mm | Designed straight, 300 mm thick | 45-degree flared, designed | Full structural design per BDM Part 1 Section 4.6 |
| Box > 2000 mm | Designed (straight or flared) | 45-degree flared, designed | Full structural design; headwall may be integral with box |

**Table EH.2: AASHTO LRFD Load Factors for Wingwall Design (ERA BDM Part 1, Section 3.4, Verified from PDF)**

| Load Type | Strength I (max) | Strength I (min) | Service I |
|-----------|-----------------|-----------------|-----------|
| EH (horizontal earth pressure) | 1.50 | 0.90 | 1.00 |
| EV (vertical earth pressure/self-weight of soil) | 1.35 | 0.90 | 1.00 |
| DC (structural dead load -- wall, base slab) | 1.25 | 0.90 | 1.00 |
| LS (live load surcharge) | 1.75 | -- | 1.00 |

Note: For overturning and sliding stability, both maximum and minimum load factors must be checked. The maximum factors increase destabilising effects; the minimum factors reduce stabilising effects (e.g., EV = 0.90 for the stabilising weight of soil on the heel).

**Table EH.3: Earth Pressure Parameters (ERA BDM Part 1, Section 3.11 per AASHTO LRFD, Practice-Based)**

| Soil Type | Ka (active) | K0 (at-rest) | gamma_soil (kN/m3) | phi' (degrees) |
|-----------|-------------|-------------|-------------------|---------------|
| Compacted granular fill | 0.33 | 0.50 | 19 | 30 |
| Laterite (Ethiopian highland) | 0.30-0.35 | 0.45-0.50 | 18-20 | 28-32 |
| Residual volcanic soil | 0.35-0.45 | 0.50-0.60 | 16-18 | 25-30 |
| Expansive clay (black cotton) | 0.40-0.55 | 0.55-0.75 | 17-19 | 18-25 |

**Table EH.4: AASHTO LRFD Resistance Factors for Stability (ERA BDM Part 1, per AASHTO LRFD 11.5.6, Verified from PDF)**

| Stability Check | Resistance Factor (phi) | AASHTO LRFD Reference |
|----------------|------------------------|----------------------|
| Bearing on rock | phi_b = 0.55 | AASHTO LRFD 10.5.5.2.2 |
| Bearing on soil (semi-empirical) | phi_b = 0.45 | AASHTO LRFD 10.5.5.2.2 |
| Sliding (soil on soil) | phi_tau = 0.80 | AASHTO LRFD 10.5.5.2.3 |
| Sliding (soil on rock) | phi_tau = 0.80 | AASHTO LRFD 10.5.5.2.3 |
| Sliding (concrete on soil) | phi_tau = 0.80 | AASHTO LRFD 10.5.5.2.3 |
| Passive resistance (only when key present) | phi_ep = 0.50 | AASHTO LRFD 10.5.5.2.3 |

**Table EH.5: Cross-Country Comparison -- Headwall and Wingwall Design**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Earth pressure method | AASHTO LRFD (Rankine/Coulomb, Section 3.11) | BS 8002 / BS 5400 | EN 1997 (Eurocode 7) |
| Stability check format | LRFD -- factored loads vs phi x nominal resistance | Working stress FoS (overturning >= 2.0, sliding >= 1.5) | EN 1990 partial factors (EQU/STR/GEO limit states) |
| EP load factor (active) | gamma_EH = 1.50 (Strength I max) | gamma_fL = 1.50 (Comb 1) | gamma_G,sup = 1.35 (STR Set B) |
| Surcharge load factor | gamma_LS = 1.75 | gamma_fL = 1.50 | gamma_Q = 1.50 (STR Set B) |
| Resistance reduction | phi = 0.80 (sliding), 0.45 (bearing soil) | Implicit in FoS | Partial factors gamma_R on resistance (Design Approach 1) |
| Standard drawings | ERA BDM Standard Drawings | MoWT Standard Drawings | RDM 4.2 / Standard Specification |

### M.2.2 Country-Specific Formulas

**Horizontal earth pressure on wingwall (ERA BDM Part 1, Section 3.11, per AASHTO LRFD):**

```
Active earth pressure coefficient (Rankine):
  Ka = tan^2(45 - phi'/2)

Characteristic active earth pressure at depth z:
  EH(z) = Ka x gamma_soil x z

Factored earth pressure (Strength I, max):
  EH_d(z) = gamma_EH x Ka x gamma_soil x z = 1.50 x Ka x gamma_soil x z

Live load surcharge (Strength I):
  LS_d = gamma_LS x Ka x q_surcharge = 1.75 x Ka x q_surcharge

Where q_surcharge = equivalent surcharge from HL-93 loading:
  q_surcharge = HL-93 lane load = 9.3 kN/m2 (conservative approximation)
  or h_eq x gamma_soil per AASHTO LRFD Table 3.11.6.4-1
```

**AASHTO LRFD equivalent surcharge height (Table 3.11.6.4-1):**

```
For retaining walls:
  Wall height <= 1.5 m: h_eq = 1.5 m (equivalent surcharge height)
  Wall height = 3.0 m: h_eq = 0.9 m
  Wall height = 6.0 m: h_eq = 0.6 m
  Wall height >= 9.0 m: h_eq = 0.6 m

Equivalent surcharge: q_LS = gamma_soil x h_eq
```

**Overturning stability (LRFD, Strength I):**

```
Factored overturning moment about toe:
  M_OT = gamma_EH x [0.5 x Ka x gamma_soil x H^2 x H/3]
       + gamma_LS x [Ka x q_LS x H x H/2]
       = 1.50 x [0.5 x Ka x gamma_soil x H^3 / 3]
       + 1.75 x [Ka x q_LS x H^2 / 2]

Factored restoring moment about toe:
  M_R = gamma_DC(min) x [W_wall x d_wall + W_base x d_base]
      + gamma_EV(min) x [W_fill x d_fill]
      = 0.90 x [wall/base restoring moment]
      + 0.90 x [fill restoring moment]

Check: e = B/2 - (M_R - M_OT) / V_total
  e <= B/6 for soil foundations (middle third rule)
  e <= B/4 for rock foundations
```

Note: AASHTO LRFD uses eccentricity limits rather than a simple FoS for overturning. The resultant must fall within the middle third (soil) or middle half (rock).

**Sliding stability (LRFD, Strength I):**

```
Factored sliding force:
  H_d = gamma_EH x [0.5 x Ka x gamma_soil x H^2]
      + gamma_LS x [Ka x q_LS x H]

Factored sliding resistance:
  R_d = phi_tau x V_d x tan(delta)
  Where:
    phi_tau = 0.80 (resistance factor for sliding)
    V_d = gamma_DC(min) x W_structure + gamma_EV(min) x W_fill (minimum vertical load)
    delta = friction angle at base (typically 2/3 x phi' for concrete on soil)

Check: H_d <= R_d
```

### M.2.3 Classification System

Ethiopia classifies culvert end structures similarly to the universal categories:
- **Standard details:** ERA Standard Drawing headwalls and wingwalls for pipe culverts up to 1200 mm and small box culverts
- **Designed end structures:** Custom-designed headwalls and wingwalls for box culverts > 2000 mm span or non-standard conditions
- **Stone masonry headwalls:** Common on regional and woreda roads where stone is locally available
- **Gabion headwalls:** Used in erosion-prone areas, particularly in highland regions with steep terrain

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 2 (Ethiopia): Headwall type selection
  |-- Pipe culvert <= 600 mm --> Standard headwall from ERA Standard Drawings
  |-- Pipe culvert 600-1200 mm --> Standard headwall with short wingwalls
  |-- Box culvert 1000-2000 mm --> Designed headwall and wingwalls per BDM Part 1 Section 4.6
  |-- Box culvert > 2000 mm --> Full wingwall design; consider integral headwall
  +-- Stone masonry headwall for DC7-DC10 roads where appropriate

Step 5 (Ethiopia): Earth pressure on wingwall
  |-- Use AASHTO LRFD approach (Rankine/Coulomb) per ERA BDM Part 1 Section 3.11
  |-- Ka from site soil data (default 0.33 for phi' = 30 deg)
  |-- gamma_EH = 1.50 for earth pressure (Strength I, max)
  |-- Live load surcharge: gamma_LS = 1.75, use equivalent height from Table 3.11.6.4-1
  +-- NOT Eurocode gamma_G/gamma_Q or BS 5400 gamma_fL approach

Step 6 (Ethiopia): Wingwall stability
  |-- Overturning: eccentricity check (middle third for soil, middle half for rock)
  |   Use minimum factors for stabilising loads (gamma_DC=0.90, gamma_EV=0.90)
  |   Use maximum factors for destabilising loads (gamma_EH=1.50, gamma_LS=1.75)
  |-- Sliding: phi_tau x V x tan(delta) >= H_d (phi_tau = 0.80)
  |-- Bearing: phi_b x q_n >= q_applied (phi_b = 0.45 soil, 0.55 rock)
  +-- Foundation per ERA BDM and AASHTO LRFD Section 10
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**ERA Standard Drawings should be used wherever possible.** Standard headwall and wingwall details are familiar to Ethiopian contractors and have been designed for typical conditions. Custom designs should only be prepared for non-standard sizes or unusual site conditions.

**Expansive soils are a major concern in the Ethiopian Rift Valley and lowland areas.** Black cotton soils (vertisols) are widespread in the Rift Valley, the Awash River basin, and parts of the western lowlands. Wingwall foundations on expansive soils require special attention -- consider deeper foundations, inert fill replacement, or flexible gabion construction.

**Stone masonry headwalls are appropriate for regional and woreda roads.** In highland Ethiopia (Amhara, Tigray, Oromia highlands), locally quarried basalt and granite provide excellent building stone for headwall construction. Stone masonry headwalls are durable, locally maintainable, and cost-effective for culverts up to approximately 2.0 m span.

**Outlet erosion protection is critical in Ethiopian conditions.** Ethiopian roads frequently traverse steep terrain with erodible soils. Scour undermining headwalls is one of the most common failure modes for culverts. Always specify downstream protection -- stone pitching, gabion mattresses, or riprap per Skill #32 Ethiopia module.

**Scour at wingwall foundations from seasonal flash floods.** Many Ethiopian rivers experience extreme seasonal flow variations. Cutoff walls (toe walls) below wingwall foundations should be specified to prevent undermining during flood events, particularly in semi-arid areas (Afar, Somali Region, Borena Zone) subject to flash flooding.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Using Eurocode partial factors or BS 5400 gamma_fL for ERA wingwall design.** ERA BDM uses AASHTO LRFD load factors: gamma_EH = 1.50 for earth pressure and gamma_LS = 1.75 for live load surcharge. Do not use gamma_G = 1.35 (Eurocode) or gamma_fL = 1.50 (BS 5400).
2. **Using simple factor of safety for stability instead of LRFD eccentricity checks.** AASHTO LRFD checks overturning via eccentricity limits (middle third rule), not a FoS ratio. The method uses both maximum and minimum load factors.
3. **Neglecting the AASHTO LRFD equivalent surcharge height (Table 3.11.6.4-1).** The equivalent surcharge height varies with wall height and is not a fixed value. Using a fixed surcharge intensity without reference to this table may underestimate or overestimate the horizontal surcharge force.
4. **Not specifying outlet erosion protection.** Scour undermining headwalls is the most common culvert failure mode in Ethiopian conditions. Always specify downstream protection per Skill #32.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Wingwall angle | 45 degrees | Standard configuration | ASSUMED: 45-degree flared wingwalls | ERA BDM Part 2 Section 3.7.4 standard layout |
| Wingwall Ka | 0.33 | phi' = 30 degrees | ASSUMED: Ka = 0.33, phi' = 30 deg | Typical compacted granular fill |
| Soil unit weight | 18 kN/m3 | Not specified | ASSUMED: gamma_soil = 18 kN/m3. Verify against site investigation | Conservative default for Ethiopian soils |
| Friction angle phi' | 30 degrees | Granular backfill | ASSUMED: phi' = 30 deg for granular backfill | Common practice value |
| Concrete strength | f'c = 25 MPa | Not specified | ASSUMED: f'c = 25 MPa. Verify local availability | Common grade in Ethiopia |
| Apron slab thickness | 250 mm | Standard | ASSUMED: 250 mm apron slab | Common practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| gamma_EH (Strength I, max) | 1.50 | 1.50 | -- | ERA BDM Part 1, Section 3.4 | Reject if != 1.50 |
| gamma_LS (Strength I) | 1.75 | 1.75 | -- | ERA BDM Part 1, Section 3.4 | Reject if != 1.75 |
| gamma_DC (Strength I, min for stability) | 0.90 | 0.90 | -- | ERA BDM Part 1, Section 3.4 | Reject if != 0.90 for stability checks |
| phi_tau (sliding) | 0.80 | 0.80 | -- | AASHTO LRFD 10.5.5.2.3 | Reject if != 0.80 |
| Headwall min thickness | 200 | -- | mm | Practice | Warn if < 200 mm |
| Eccentricity (soil foundation) | -- | B/6 | m | AASHTO LRFD 11.6.3.3 | Reject if e > B/6 |

### M.5.2 Standards Compliance Checks

- **Check:** AASHTO LRFD earth pressure method used (not EN 1997 or BS 8002)
- **Standard:** ERA BDM Part 1, Section 3.11
- **Pass condition:** Earth pressure calculated using AASHTO LRFD notation (EH, LS loads with gamma_EH, gamma_LS)
- **Fail action:** SENIOR REVIEW -- ERA BDM uses AASHTO LRFD earth pressure. Do not use EN 1997 (Eurocode 7) or BS 8002 for ERA designs.

- **Check:** Stability verified using LRFD eccentricity/resistance factor method
- **Standard:** ERA BDM Part 1; AASHTO LRFD 11.6.3
- **Pass condition:** Overturning checked via eccentricity limit (e <= B/6 soil). Sliding checked via phi_tau x resistance >= factored force.
- **Fail action:** SENIOR REVIEW -- AASHTO LRFD does not use simple FoS ratios for stability. Use LRFD load factors with resistance factors per Section 11.6.

- **Check:** Outlet erosion protection specified
- **Standard:** Engineering practice; ERA BDM Part 2
- **Pass condition:** Stone pitching, gabion, or riprap specified at outlet
- **Fail action:** Flag -- add outlet erosion protection per Skill #32 Ethiopia module.

### M.5.3 Departures / Relaxations Process

Departures from ERA BDM design standards require approval from ERA (federal roads) or the respective Regional Road Authority. All departures must be documented with full technical justification in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Wingwall height > 3 m | Significant retaining wall | SENIOR REVIEW -- Wingwall retained height [H] m exceeds 3.0 m. Full retaining wall design required per ERA BDM Part 1 Section 4.6 and AASHTO LRFD Section 11. |
| Outlet velocity > 4 m/s | Erosion risk | NOTE -- High outlet velocity [V] m/s. Specify erosion protection per Skill #32 Ethiopia module. Stone pitching, gabion mattress, or riprap required. |
| Expansive clay (black cotton) foundation | Settlement and heave risk | NOTE -- Expansive clay soils at wingwall foundation. Consider deeper foundations, inert fill replacement, lime stabilisation, or gabion construction. |
| Seismic zone 3 or 4 (Rift Valley, Afar) | Seismic earth pressure | NOTE -- Site in seismic zone 3 or 4 per ERA BDM. Check Extreme Event I load combination with seismic earth pressure increment per AASHTO LRFD 11.6.5. |
| Poor foundation conditions | Inadequate bearing capacity | SENIOR REVIEW -- Foundation bearing capacity insufficient. Consider foundation improvement, spread footing widening, or pile foundation per ERA BDM. |

---

## M.7 Worked Example -- Ethiopia

### Example: Headwall and Wingwalls for 1500mm RC Box Culvert, 2.0m Fill, DC4 Trunk Road

**Source:** ERA BDM Part 1 Section 4.6 and Section 3.11 earth pressure provisions applied to culvert end structure

**Given:**
- Culvert from Skill #33 Ethiopia module: 1500 mm span x 1200 mm rise (single-cell RC box)
- Fill depth: H_c = 2.0 m
- Road class: DC4 trunk road (HL-93 loading)
- phi' = 30 degrees (Ka = 0.33), gamma_soil = 18 kN/m3
- Bearing capacity: 120 kPa (from Skill #10)
- 45-degree flared wingwalls selected

**Solution:**

**Step 1 -- Headwall height:**
- H_headwall = fill_depth + culvert_rise + top_slab + base_slab = 2.0 + 1.2 + 0.25 + 0.25 = 3.7 m
- Headwall extends from base slab to road surface level

**Step 2 -- Headwall type:**
- 1500 mm box culvert with 3.7 m retained height --> Designed headwall per ERA BDM Part 1 Section 4.6
- Headwall thickness: 300 mm

**Step 3 -- Wingwall configuration:**
- 45-degree flared wingwalls per ERA BDM Part 2 Section 3.7.4
- Height at headwall junction: 3.7 m
- Height at tip: 0.6 m (minimum)
- Wingwall length: approximately 4.0 m

**Step 4 -- AASHTO LRFD equivalent surcharge height:**
- Wall height H = 3.7 m (interpolating from Table 3.11.6.4-1)
- h_eq approximately 0.83 m (interpolated between 0.9 m at 3.0 m and 0.6 m at 6.0 m)
- q_LS = gamma_soil x h_eq = 18 x 0.83 = 14.9 kN/m2

**Step 5 -- Factored earth pressure on wingwall (Strength I, at max height 3.7 m):**
- Factored active earth pressure at base:
  EH_d = gamma_EH x Ka x gamma_soil x H = 1.50 x 0.33 x 18 x 3.7 = 32.9 kN/m2
- Factored surcharge:
  LS_d = gamma_LS x Ka x q_LS = 1.75 x 0.33 x 14.9 = 8.6 kN/m2
- Total factored horizontal pressure at base: 32.9 + 8.6 = 41.5 kN/m2

**Step 6 -- Overturning check (eccentricity, Strength I):**
- Factored overturning moment about toe:
  - EH: gamma_EH x [0.5 x Ka x gamma_soil x H^2] x (H/3)
    = 1.50 x [0.5 x 0.33 x 18 x 3.7^2] x (3.7/3)
    = 1.50 x 40.7 x 1.233 = 75.3 kNm/m
  - LS: gamma_LS x [Ka x q_LS x H] x (H/2)
    = 1.75 x [0.33 x 14.9 x 3.7] x (3.7/2)
    = 1.75 x 18.2 x 1.85 = 58.9 kNm/m
  - M_OT = 75.3 + 58.9 = 134.2 kNm/m

- Factored restoring moment (assume wingwall base width B = 2.5 m):
  - Wall (300 mm thick, 3.7 m high): DC = 24 x 0.30 x 3.7 = 26.6 kN/m
    - Moment = gamma_DC(min) x DC x d = 0.90 x 26.6 x 0.65 = 15.6 kNm/m
  - Base slab (400 mm thick, 2.5 m wide): DC = 24 x 0.40 x 2.5 = 24.0 kN/m
    - Moment = 0.90 x 24.0 x 1.25 = 27.0 kNm/m
  - Fill on heel (width 1.8 m, height 3.7 m): EV = 18 x 1.8 x 3.7 = 119.9 kN/m
    - Moment = gamma_EV(min) x EV x d = 0.90 x 119.9 x 1.60 = 172.7 kNm/m
  - M_R = 15.6 + 27.0 + 172.7 = 215.3 kNm/m

- Total vertical load (factored, min): V = 0.90 x (26.6 + 24.0) + 0.90 x 119.9 = 45.5 + 107.9 = 153.4 kN/m
- Eccentricity: e = B/2 - (M_R - M_OT)/V = 2.5/2 - (215.3 - 134.2)/153.4 = 1.25 - 0.529 = 0.721 m
- B/6 = 2.5/6 = 0.417 m
- e (0.721) > B/6 (0.417) -- FAIL: resultant outside middle third
- **Action:** Increase base width to B = 3.0 m and recalculate

- Revised with B = 3.0 m, heel width = 2.3 m:
  - Fill on heel: EV = 18 x 2.3 x 3.7 = 153.2 kN/m
  - M_R(fill) = 0.90 x 153.2 x 1.85 = 255.1 kNm/m
  - M_R(base) = 0.90 x (24 x 0.40 x 3.0) x 1.50 = 0.90 x 28.8 x 1.50 = 38.9 kNm/m
  - M_R(wall) = 15.6 kNm/m (unchanged)
  - M_R(total) = 15.6 + 38.9 + 255.1 = 309.6 kNm/m
  - V = 0.90 x (26.6 + 28.8) + 0.90 x 153.2 = 49.9 + 137.9 = 187.8 kN/m
  - e = 3.0/2 - (309.6 - 134.2)/187.8 = 1.50 - 0.934 = 0.566 m
  - B/6 = 3.0/6 = 0.500 m
  - e (0.566) > B/6 (0.500) -- still marginal
  - **Action:** Increase base width to B = 3.3 m or add shear key. For preliminary design, B = 3.3 m adopted.

**Step 7 -- Sliding check (Strength I, with B = 3.3 m):**
- Factored sliding force:
  H_d = 1.50 x [0.5 x 0.33 x 18 x 3.7^2] + 1.75 x [0.33 x 14.9 x 3.7]
  = 1.50 x 40.7 + 1.75 x 18.2 = 61.1 + 31.9 = 93.0 kN/m
- Factored vertical load (min): V_d approximately 200 kN/m (with wider base and more fill)
- Sliding resistance: phi_tau x V_d x tan(delta) = 0.80 x 200 x tan(20) = 0.80 x 200 x 0.364 = 58.2 kN/m
- H_d (93.0) > R_d (58.2) -- FAIL without shear key
- **Action:** Add shear key or deeper toe embedment. With 500 mm deep shear key, passive resistance contribution provides additional resistance.

**Step 8 -- Bearing pressure check (Service I):**
- Total vertical load (unfactored): approximately 190 kN/m
- Bearing pressure = 190 / 3.3 = 57.6 kPa (unfactored, uniform)
- Factored bearing resistance = phi_b x q_n = 0.45 x 120 = 54.0 kPa
- Marginal -- SENIOR REVIEW for detailed bearing capacity assessment

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Headwall type | Designed straight | Per BDM Part 1 Section 4.6 |
| Headwall height | 3.7 m | |
| Headwall thickness | 300 mm | Preliminary |
| Wingwall angle | 45 degrees | |
| Wingwall base width | 3.3 m | Preliminary (increased from 2.5 m) |
| Eccentricity check | Marginal at B = 3.3 m | Requires detailed analysis |
| Sliding check | FAIL without shear key | Shear key required |
| Bearing (Service I) | Marginal | SENIOR REVIEW |
| Erosion protection | Stone pitching/gabion at outlet | Per Skill #32 |

SENIOR REVIEW -- Wingwall height 3.7 m exceeds 3.0 m trigger. Stability checks marginal with 3.3 m base width. Detailed retaining wall design per AASHTO LRFD Section 11 (as adopted in ERA BDM Part 1 Section 4.6) required by specialist structural/geotechnical engineer. Shear key recommended for sliding resistance. Design values are preliminary/screening level.

---

## M.8 References

1. Ethiopian Roads Authority, *Bridge Design Manual (BDM)*, 2013. Part 1 Section 4.6 (Wingwall and Retaining Wall Design), Part 2 Section 3.7.4 (Wingwalls), Part 1 Section 3.11 (Earth Pressure), Part 1 Section 3.4 (Load Factors and Combinations).
2. AASHTO, *LRFD Bridge Design Specifications*, 2010/2012 editions. Section 3.11 (Earth Pressure: EH, LS), Section 11.5 (Abutments and Conventional Retaining Walls), Section 11.6 (Stability of Retaining Walls), Section 10.5 (Resistance Factors), Table 3.11.6.4-1 (Equivalent Height of Soil for Vehicular Loading).
3. ERA, *Standard Drawings for Bridges and Culverts*, 2013. Standard headwall and wingwall details.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-06 | AI draft | Initial draft -- AASHTO LRFD earth pressure from ERA BDM Part 1 Section 3.11, Strength I load factors (gamma_EH=1.50, gamma_LS=1.75), LRFD stability checks with eccentricity limits and resistance factors, three-code comparison table (Verified from PDF) |
