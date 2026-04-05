# Bridge Loading -- Kenya Module

> **Parent Skill:** #36 Bridge Loading
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 4.2 (2025) Chapter 3: Actions and Combination of Actions; EN 1990; EN 1991-2; EN 1998
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 4.2 -- Bridge and Culvert Design | 2025 | Ch 3 (Actions and Combination of Actions): Sections 3.1-3.13 | Current (mandatory) |
| EN 1990 (Eurocode 0) | Via RDM 4.2 | Basis of structural design, combination of actions | Adopted via Gazette Notice 13048 |
| EN 1991-2 (Eurocode 1 Part 2) | Via RDM 4.2 | Traffic loads on bridges (LM1-LM4) | Adopted via Gazette Notice 13048 |
| EN 1998 (Eurocode 8) | Via RDM 4.2 | Seismic actions (Section 3.11) | Adopted via Gazette Notice 13048 |

### M.1.2 Institutional Context

Kenya adopted the Eurocode standards EN 1990 to EN 1999 as design standards through **Kenya Gazette Notice No. 13048 of 14th September 2012**. EN/Eurocode replaced BS 5400 for all new Kenya bridge design. KEBS (Kenya Bureau of Standards) is the regulatory authority and adopted the UK National Annex pending development of Kenya-specific Nationally Determined Parameters (NDPs).

RDM 4.2 Note 1 (Section 1.3): *"Kenya adopted the Eurocode standards EN 1990 to EN 1999 vide Gazette Notice no. 13048 of 14th Sep 2012. Eurocodes have many Nationally Determined Parameters (NDPs) that are yet to be determined. KEBS is the regulatory authority and adopted the UK National Annex in the intervening period."*

RDM 4.2 Note 2: *"This Manual is prepared primarily based on Eurocodes using UK National Annex for NDPs. After availability of Kenya national parameters, the UK NDPs may be replaced with the Kenya NDPs."*

**Approving authorities:** KeNHA (national trunk roads), KeRRA (rural roads), KURA (urban roads), County Governments. The use of specific SV or SOV model vehicles for LM3 shall be approved by the authority for each project (Table 3.5).

### M.1.3 Standard Philosophy

RDM 4.2 Chapter 3 uses the EN/Eurocode partial factor approach for load combinations. Actions are classified as permanent (G), variable (Q), and accidental (A). The design uses characteristic values with partial factors (gamma_G, gamma_Q) and combination factors (psi_0, psi_1, psi_2) to derive design values of actions. This is fundamentally different from the BS 5400 gamma_fL approach used in Uganda's MoWT Vol 4.

**Key distinction from BS 5400:** LM1 (UDL + tandem system per lane) replaces HA/HB loading. The partial factor format uses gamma_G and gamma_Q (not gamma_fL and gamma_f3). Load combinations are structured as EQU, STR, and GEO limit state checks (not the 5-combination table of BS 5400).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Self-Weight of Construction Materials (Table 3.1, Verified):**

| Material | Unit Weight (kN/m3) |
|----------|-------------------|
| Normal weight concrete | 24 |
| Reinforced concrete | 25 |
| Pre-stressed concrete | 25 |
| Steel | 78.5 |
| Asphalt concrete | 24-25 |
| Hot rolled asphalt | 23 |
| Sand (dry) | 15-16 |
| Ballast, gravel (loose) | 15-16 |

**Notional Lanes (Table 3.2, Verified):** --> `tables/kenya_lm1_load_model.json`

| Carriageway Width (w) | Number of Notional Lanes | Lane Width | Remaining Area |
|----------------------|--------------------------|------------|----------------|
| w < 5.4 m | 1 | 3 m | w - 3 |
| 5.4 <= w < 6 | 2 | w/2 | 0 |
| w >= 6 | Int(w/3) | 3 m | w - 3*n |

**LM1 Adjustment Factors (Table 3.3, Kenya NDP -- UK NA values, Verified):** --> `tables/kenya_lm1_load_model.json`

| Location | alpha_Qi (tandem) | alpha_qi (UDL) |
|----------|------------------|----------------|
| Lane 1 | 1.0 | 0.61 |
| Lane 2 | 1.0 | 2.2 |
| Lane 3 | 1.0 | 2.2 |
| Other lanes | -- | 2.2 |
| Remaining area | -- | 2.2 (alpha_qr) |

**Note:** These are NDPs based on UK National Annex. When Kenya NDPs become available, these values may change.

**LM1 Characteristic Values (Table 3.4, Verified):** --> `tables/kenya_lm1_load_model.json`

| Location | Tandem Axle Q_ik (kN) | UDL q_ik (kN/m2) |
|----------|-----------------------|-------------------|
| Lane 1 | 300 | 9.0 |
| Lane 2 | 200 | 2.5 |
| Lane 3 | 100 | 2.5 |
| Other lanes | 0 | 2.5 |
| Remaining area | 0 | 2.5 |

Tandem system: axle spacing 1.2m, wheel contact area 0.40m x 0.40m. Values include dynamic amplification.

**LM2 -- Single Axle (Section 3.3.3.2):**
- Q_ak = 400 kN (single axle), adjustment factor beta_Q = alpha_Q1
- Wheel spacing 2.0m, contact area 0.40m x 0.40m

**LM3 -- Special Vehicles (Table 3.5, Verified):** --> `tables/kenya_lm1_load_model.json`

| Road Class | SV Models Required |
|-----------|-------------------|
| Motorway and all-purpose trunk road | SV80, SV100, SV196 |
| Principal roads (as agreed) | SV80, SV100 |
| Other public roads (as agreed) | SV80 |

SOV models: SOV-250, SOV-350, SOV-450, SOV-600 (for heavy load routes).

**LM4 -- Crowd Loading (Section 3.3.5):**
- UDL = 5.0 kN/m2 on bridge deck areas excluding carriageway

**Seismic Parameters (Section 3.11):** --> `tables/kenya_seismic_parameters.json`

Kenya has **three seismic zones** per Figure 3.30:
- **Zone I:** PGA 0-0.2 m/s2 (eastern Kenya -- low seismicity)
- **Zone II:** PGA 0.2-0.8 m/s2 (central Kenya including Nairobi -- moderate)
- **Zone III:** PGA 0.8-2.4 m/s2 (western Rift Valley -- high seismicity)

Importance factors (Table 3.24): Category I = 0.85, Category II = 1.0, Category III = 1.3.

**Load Combinations (Section 3.13):** --> `tables/kenya_load_combinations.json`

The EN 1990 combination framework uses:
- **EQU (Set A, Table 3.31):** Verification of equilibrium -- gamma_G_sup = 1.05, gamma_G_inf = 0.95
- **STR Set B (Table 3.32):** Verification of structural resistance -- gamma_G_sup = 1.35 (concrete), gamma_Q = 1.35 (traffic)
- **STR Set C (Table 3.33):** Alternative resistance verification -- gamma_G = 1.00, gamma_Q = 1.15
- **Accidental/Seismic (Table 3.34):** All gamma = 1.0, with psi_1 or psi_2 for variable actions
- **SLS (Table 3.35):** Characteristic, frequent, and quasi-permanent combinations with all gamma = 1.0

**Combination Formula (Equation 3.65 -- persistent/transient ULS):**

```
E_d = sum(gamma_G * G_k) + gamma_P * P + gamma_Q1 * Q_k1 + sum(gamma_Qi * psi_0i * Q_ki)
```

**psi Factors for Road Bridges (Table 3.29, Verified):**

| Action | Group | psi_0 | psi_1 | psi_2 |
|--------|-------|-------|-------|-------|
| LM1 Tandem System | gr1a | 0.75 | 0.75 | 0 |
| LM1 UDL System | gr1a | 0.75 | 0.75 | 0 |
| Walkway & cycle-track | gr1a | 0.40 | 0.40 | 0 |
| LM2 Single axle | gr1b | 0 | 0.75 | 0 |
| Horizontal forces | gr2 | 0 | 0 | 0 |
| Pedestrian loads | gr3 | 0 | 0.40 | 0 |
| LM4 Crowd loading | gr4 | 0 | -- | 0 |
| Wind (persistent) | F_Wk | 0.50 | 0.20 | 0 |
| Thermal | T_k | 0.60 | 0.60 | 0.50 |
| Construction loads | Q_c | 1.0 | -- | 1.0 |

**Wind Loading (Section 3.9):**
- Basic wind velocity from Figure 3.18 (Kenya wind map)
- Wind force: F_wx = (1/2) * rho * v_b^2 * C * A_ref (Equation 3.20)
- Simplified wind load factor C from Table 3.19

**Thermal Actions (Section 3.10):**
- Temperature zones from Figure 3.28 (Kenya temperature map, 9 zones)
- Bridge deck types: Type 1 (steel), Type 2 (composite), Type 3 (concrete)
- Linear temperature difference from Table 3.22
- Coefficient of thermal expansion: concrete 10 x 10^-6 /C, steel 12 x 10^-6 /C

### M.2.2 Country-Specific Formulas

**Design Effect (EN 1990 approach):**

```
E_d = gamma_G * G_k + gamma_Q,1 * Q_k,1 + sum(gamma_Q,i * psi_0,i * Q_k,i)
```

Where:
- gamma_G = partial factor for permanent action (1.35 for concrete self-weight in STR Set B)
- gamma_Q = partial factor for variable action (1.35 for traffic in STR Set B)
- psi_0 = combination factor for accompanying variable actions

**Applied LM1 Design Load per lane (for simply supported beam):**

```
Adjusted tandem load = alpha_Qi * Q_ik  (per axle)
Adjusted UDL = alpha_qi * q_ik  (per m2 of notional lane)

For Lane 1: Tandem = 1.0 * 300 = 300 kN/axle; UDL = 0.61 * 9.0 = 5.49 kN/m2
For Lane 2: Tandem = 1.0 * 200 = 200 kN/axle; UDL = 2.2 * 2.5 = 5.50 kN/m2
For Lane 3: Tandem = 1.0 * 100 = 100 kN/axle; UDL = 2.2 * 2.5 = 5.50 kN/m2
```

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 1 (Kenya): Determine notional lanes
  |-- Calculate n = Int(w/3) where w = carriageway width (Table 3.2)
  |-- For w < 5.4m: 1 lane of 3m width
  |-- For 5.4 <= w < 6: 2 lanes of w/2 width
  +-- Lane giving most adverse effect = Lane 1

Step 2 (Kenya): Select load model
  |-- LM1 for all permanent structures (general and local verification)
  |-- LM2 for local verification of short structural members
  |-- LM3 for routes carrying special/abnormal vehicles
  |    Road class determines SV model required (Table 3.5)
  +-- LM4 for crowd loading situations

Step 3 (Kenya): Apply adjustment factors (Table 3.3)
  |-- alpha_Qi and alpha_qi are NDPs (currently UK NA values)
  |-- Lane 1 UDL factor alpha_q1 = 0.61 (reduces 9.0 to 5.49 kN/m2)
  |-- Lanes 2+ UDL factor alpha_qi = 2.2 (increases 2.5 to 5.50 kN/m2)
  +-- Alpha_Q1 shall be taken as 1.0 for Section 3.3.5.1

Step 4 (Kenya): Assemble load combinations
  |-- Use Table 3.32 (STR Set B) for structural member design
  |-- Use Table 3.31 (EQU Set A) for equilibrium checks
  |-- gamma_G_sup = 1.35 (concrete), gamma_Q = 1.35 (traffic)
  +-- Apply psi_0 factors from Table 3.29 for accompanying actions

Step 5 (Kenya): Check seismic loading
  |-- Determine seismic zone from Figure 3.30
  |-- Assign importance category (Table 3.24)
  |-- If Zone III: full seismic design per Section 3.11
  +-- If Zone I with very low seismicity: may neglect seismic effects
```

### M.3.2 Professional Judgment (Kenya-Specific)

**The transition from BS 5400 to EN/Eurocode is the single most important technical change in Kenya bridge design.** Engineers trained on the 1989/1993 manual must adapt to new load models (LM1-LM4), new partial factor notation (gamma_G, gamma_Q, psi factors), and new combination framework (EQU/STR/GEO sets). The underlying philosophy is the same (limit state design), but the implementation differs fundamentally.

**Kenya NDP values are interim.** The alpha factors in Table 3.3 and psi factors in Table 3.29 are currently based on the UK National Annex. When KEBS develops Kenya-specific NDPs, these values may change. Designers should check for updates to the Kenya National Annex.

**Seismic design is mandatory in western Kenya.** Unlike Uganda where seismic zones are relatively low (Zone 2/3), Kenya's Zone III (Rift Valley) has PGA up to 2.4 m/s2. Bridges on key routes through the Rift Valley (e.g., Nairobi-Nakuru-Eldoret corridor) require proper seismic design per Section 3.11.

### M.3.3 Common Errors (Kenya-Specific)

- **Using HA/HB loading for new Kenya bridges:** HA/HB loading is from BS 5400 (old standard). Kenya now uses LM1-LM4 per EN 1991-2. LM1 is NOT equivalent to HA -- it uses a different format (UDL + tandem per lane vs continuous UDL + KEL).
- **Using gamma_fL notation:** Kenya uses gamma_G and gamma_Q (EN 1990 notation), NOT gamma_fL and gamma_f3 (BS 5400 notation). Mixing notations leads to incorrect factored loads.
- **Not applying NDP adjustment factors:** The alpha factors (Table 3.3) must be applied to LM1 characteristic values. Without alpha factors, Lane 1 UDL would be 9.0 kN/m2 instead of the correct 5.49 kN/m2.
- **Using BS 5400 Combination 1-5 format:** Kenya uses EQU/STR Set B/STR Set C/Accidental/Seismic combination sets (Tables 3.31-3.35), not the five-combination table from BS 5400.
- **Ignoring seismic design in Rift Valley:** Zone III seismicity requires full EN 1998 analysis. Simplified methods only apply in Zone I/II with low seismicity conditions.

---

## M.4 Country-Specific Defaults

| Parameter | Kenya Default | Condition | Rationale |
|-----------|-------------|-----------|-----------|
| Load model | LM1 | All permanent bridges | Section 3.3.2 |
| SV model (trunk roads) | SV80, SV100, SV196 | Motorway/all-purpose trunk | Table 3.5 |
| SV model (principal roads) | SV80, SV100 | As agreed by Authority | Table 3.5 |
| gamma_G_sup (concrete) | 1.35 | STR Set B | Table 3.32 |
| gamma_G_inf | 0.95 | STR Set B | Table 3.32 |
| gamma_Q (traffic) | 1.35 | STR Set B | Table 3.32 |
| gamma_Q (wind) | 1.70 | STR Set B | Table 3.32 |
| Seismic importance (general bridge) | Category II (gamma_I = 1.0) | Standard road bridges | Table 3.24 |
| Concrete density | 25 kN/m3 | Reinforced/prestressed | Table 3.1 |
| Surfacing thickness | 120mm minimum | New concrete decks | Section 2.4 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source |
|-----------|-----------|--------|
| Lane 1 tandem axle load | 300 kN | Table 3.4 (before alpha) |
| Lane 1 UDL | 9.0 kN/m2 (before alpha) | Table 3.4 |
| gamma_G_sup for STR Set B | 1.20 to 1.35 | Table 3.32 |
| gamma_Q for traffic (STR Set B) | 1.35 | Table 3.32 |
| psi_0 for LM1 TS and UDL | 0.75 | Table 3.29 |
| Seismic zone PGA | 0 to 2.4 m/s2 | Figure 3.30 |

### M.5.2 Standards Compliance Checks

- Verify LM1 applied (not HA/HB loading)
- Verify alpha adjustment factors from Table 3.3 applied to LM1
- Verify correct combination set used (STR Set B for member design)
- Verify psi factors from Table 3.29 used for accompanying actions
- Verify EN notation (gamma_G, gamma_Q) used, not BS 5400 notation
- Verify seismic zone determined from Figure 3.30 for bridge location

---

## M.6 Country-Specific Escalation

| Trigger | Action | Rationale |
|---------|--------|-----------|
| Seismic Zone III (Rift Valley) | Full seismic design per Section 3.11 with specialist review | PGA 0.8-2.4 m/s2 |
| LM3 required (abnormal loads) | Confirm SV/SOV models with approving authority | Table 3.5 |
| Bridge on heavy load route | Apply SOV-250/350/450/600 as agreed | Section 3.3.3.3 |
| Military vehicle routes | Confirm special vehicle requirements with authority | Beyond standard models |
| Wind speed zones with high exposure | Detailed wind analysis per Section 3.9 | Exposed coastal/highland sites |
| Temperature Zone 1 or 9 (extremes) | Check thermal effects carefully | Figure 3.28 |

---

## M.7 Worked Example -- Kenya

**Scenario:** Determine the design traffic loading for a 25m span bridge on a Class B road in Kenya. The carriageway width is 7.3m. Apply Kenya RDM 4.2 EN/Eurocode loading for STR limit state.

**Step 1 -- Determine Notional Lanes (Table 3.2):**
- w = 7.3m, w >= 6, so n = Int(7.3/3) = 2 notional lanes
- Lane width = 3.0m each
- Remaining area width = 7.3 - 2*3.0 = 1.3m

**Step 2 -- Apply LM1 with Adjustment Factors:**

*Tandem System (Tables 3.3 and 3.4):*
- Lane 1: alpha_Q1 * Q_1k = 1.0 * 300 = 300 kN per axle (600 kN total per lane)
- Lane 2: alpha_Q2 * Q_2k = 1.0 * 200 = 200 kN per axle (400 kN total per lane)

*UDL System (Tables 3.3 and 3.4):*
- Lane 1: alpha_q1 * q_1k = 0.61 * 9.0 = 5.49 kN/m2 over 3.0m width = 16.47 kN/m per lane
- Lane 2: alpha_q2 * q_2k = 2.2 * 2.5 = 5.50 kN/m2 over 3.0m width = 16.50 kN/m per lane
- Remaining area: alpha_qr * q_rk = 2.2 * 2.5 = 5.50 kN/m2 over 1.3m = 7.15 kN/m

**Step 3 -- Calculate UDL Moment (Simply Supported, 25m span):**
- Total UDL per metre = 16.47 + 16.50 + 7.15 = 40.12 kN/m
- M_UDL = w * L^2 / 8 = 40.12 * 25^2 / 8 = 3,134 kNm

**Step 4 -- Calculate Tandem System Moment:**
- Position tandem systems for maximum effect at midspan
- Lane 1 tandem: M_TS1 = 300 * 25/4 + 300 * (25/4 - 1.2/2) = approximately 3,570 kNm (two axles)
- More precisely for maximum moment: position one axle at midspan offset
- Simplified: M_TS1 approx = 600 * 25/4 * (1 - 1.2/(2*25)) = approximately 3,636 kNm

**Step 5 -- Apply STR Set B Partial Factors (Table 3.32):**
- Dead load (assume 20 kN/m self-weight estimate):
  - M_dead = 20 * 25^2 / 8 = 1,563 kNm
  - gamma_G_sup = 1.35 (concrete self-weight)
  - Factored dead moment = 1.35 * 1,563 = 2,110 kNm

- Live load (UDL + Tandem):
  - gamma_Q = 1.35 (road traffic actions)
  - Factored UDL moment = 1.35 * 3,134 = 4,231 kNm
  - Factored TS moment = 1.35 * 3,636 = 4,909 kNm
  - **Note:** UDL and TS from LM1 act simultaneously (same load group gr1a)

- Total design moment (STR Set B):
  - M_Ed = 2,110 + 4,231 + 4,909 = **11,250 kNm** (approximate, for preliminary design)

**Step 6 -- Seismic Check:**
- Location: Class B road in Kenya -- determine zone from Figure 3.30
- If in Zone I/II: simplified seismic check may suffice
- Importance Category II (gamma_I = 1.0) for general road bridge

**Result:** The design loading uses EN/Eurocode LM1 (not HA/HB). The STR Set B combination with gamma_G = 1.35 and gamma_Q = 1.35 gives preliminary design moment of approximately 11,250 kNm for a 25m span bridge with 7.3m carriageway.

---

## M.8 References

- Kenya RDM 4.2 -- Bridge and Culvert Design (2025), Chapter 3: Actions and Combination of Actions
- Kenya Gazette Notice No. 13048, 14 September 2012 (Eurocode adoption)
- EN 1990 (Eurocode 0) -- Basis of Structural Design
- EN 1991-2 (Eurocode 1 Part 2) -- Traffic Loads on Bridges
- EN 1998 (Eurocode 8) -- Design of Structures for Earthquake Resistance

---

## Module Changelog

| Date | Version | Changes |
|------|---------|---------|
| 2026-04-05 | 0.1 | Initial Kenya module -- EN/Eurocode bridge loading from RDM 4.2 Ch 3 |
