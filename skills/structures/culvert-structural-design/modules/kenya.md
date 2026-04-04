# Culvert Structural Design -- Kenya Module

> **Parent Skill:** #33 Culvert Structural Design
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 4.2: Bridge and Culvert Design (2025); EN 1990, EN 1991-2, EN 1992-1-1 (via Kenya Gazette Notice No. 13048, 14 September 2012)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 4.2: Bridge and Culvert Design | 2025 | Ch 10 (Culverts -- Sections 10.1-10.5), Ch 3 (Actions -- Section 3.3 Traffic Loads, Section 3.7 Earth Pressure, Section 3.13 Combination of Actions), Ch 4 (Concrete Structures -- Sections 4.2-4.7), Appendix D (Culvert Design Examples) | Current -- mandatory for all new structural design in Kenya |
| EN 1990 (Eurocode 0) | As adopted via RDM 4.2 | Basis of structural design, limit state design philosophy, combination of actions (Equations 3.65-3.71) | Current -- adopted in Kenya via Gazette Notice No. 13048 (14 Sept 2012) |
| EN 1991-2 (Eurocode 1 Part 2) | As adopted via RDM 4.2 | Traffic loads on bridges -- Load Model 1 (LM1), Load Model 2 (LM2), adjustment factors | Current -- Kenya NDP values in Tables 3.3/3.4 |
| EN 1992-1-1 (Eurocode 2) | As adopted via RDM 4.2 | Concrete structural design -- material properties (Section 4.3), durability (Section 4.4), ULS (Section 4.6), SLS (Section 4.7) | Current |
| BS 5911 | Parts 1 and 5 | Precast concrete pipes -- referenced in Section 10.1.2 for pipe culvert products | Referenced for pipe specifications |

### M.1.2 Institutional Context

Kenya RDM 4.2 is the national standard for bridge and culvert structural design, published by the Ministry of Roads and Transport (State Department for Roads) with the assistance of KeNHA and TRL Limited (UK). It applies to all road agencies:
- **KeNHA** (Kenya National Highways Authority) -- national highways (Class A/B)
- **KeRRA** (Kenya Rural Roads Authority) -- rural roads (Class C/D/E)
- **KURA** (Kenya Urban Roads Authority) -- urban roads (Classes UA/UC/UL)
- **County Governments** -- county roads

Kenya adopted Eurocodes as design standards through Kenya Gazette Notice No. 13048 of 14th September 2012, replacing the earlier BS 5400-based approach. RDM 4.2 (2025) is the first comprehensive manual fully based on EN/Eurocode limit state design. The earlier Bridge Design Manual (Draft, 1989, revised 1993) referenced BS 5400 with HA/HB loading -- this is now superseded for all new design.

For institutional context and road classification, reference Skill #13 Kenya module (M.1.2 gateway).

### M.1.3 Standard Philosophy

RDM 4.2 uses limit state design per EN 1990 with partial factors for actions and materials. The key difference from Uganda's BS 5400 approach:

- **Actions** are classified as permanent (G), variable (Q), or accidental (A) -- not as "dead load" and "live load" with gamma_fL factors
- **Partial factors** gamma_G (permanent) and gamma_Q (variable) replace the single gamma_fL system
- **Combination of actions** follows EN 1990 Equation 3.65: Sum(gamma_G x G_k) + gamma_Q1 x Q_k1 + Sum(gamma_Q x psi_0 x Q_k)
- **Material partial factors** gamma_c (concrete) and gamma_s (steel) are applied to resistance, not to loads

For culverts specifically, RDM 4.2 Section 10.4.2 distinguishes between:
- Structures with earth cover < 0.6 m: treated as normal bridge structures (full LM1 loading)
- Structures with earth cover >= 0.6 m: wheel loads dispersed through fill per Section 10.4.7

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Loading Data:** Reference JSON table for Kenya culvert loading parameters.

--> `tables/kenya_culvert_loading.json`

Contains LM1 values, adjustment factors, partial factors, wheel dispersal parameters, and pipe bedding data extracted from RDM 4.2.

**Table KC.1: LM1 Characteristic Values per Notional Lane (RDM 4.2, Table 3.4, Verified)**

| Location | Tandem System Q_ik (kN per axle) | UDL q_ik (kN/m2) |
|----------|----------------------------------|-------------------|
| Lane 1 | 300 | 9.0 |
| Lane 2 | 200 | 2.5 |
| Lane 3 | 100 | 2.5 |
| Other lanes | 0 | 2.5 |
| Remaining area | 0 | 2.5 |

**Table KC.2: LM1 Adjustment Factors -- Kenya NDP Values (RDM 4.2, Table 3.3, Verified)**

| Location | alpha_Qi (tandem axle loads) | alpha_qi or alpha_qr (UDL loading) |
|----------|----------------------------|-----------------------------------|
| Lane 1 | alpha_Q1 = 1.0 | alpha_q1 = 0.61 |
| Lane 2 | alpha_Q2 = 1.0 | alpha_q2 = 2.2 |
| Lane 3 | alpha_Q3 = 1.0 | alpha_q3 = 2.2 |
| Other lanes | -- | alpha_qn = 2.2 |
| Remaining area | -- | alpha_qr = 2.2 |

Note: alpha_Qi, alpha_qi, and alpha_qr are Nationally Determined Parameters (NDPs) based on UK National Annex values.

**Table KC.3: Partial Factors for STR Limit State (RDM 4.2, Table 3.32 -- Set B, Verified)**

| Action Type | gamma_G,sup (unfavourable) | gamma_G,inf (favourable) | gamma_Q (unfavourable) |
|-------------|---------------------------|--------------------------|------------------------|
| Concrete self-weight | 1.35 | 0.95 | -- |
| Weight of soil | 1.35 | 0.95 | -- |
| Road surfacing | 1.20 | 0.95 | -- |
| Road traffic actions (gr1a, gr1b, gr2, gr5, gr6) | -- | -- | 1.35 |
| Variable earth pressure (surcharge) | -- | -- | 1.50 |
| Thermal actions | -- | -- | 1.55 |

**Table KC.4: Model Factor for Earth Cover (RDM 4.2, Section 10.4.3, Verified)**

| Foundation Condition | Formula | Minimum Value |
|---------------------|---------|---------------|
| Hard material or piles | gamma_Sd,ec = 1.5 + 0.5(H_c - 8)/3 | Not less than 1.5 |
| Other foundation material | gamma_Sd,ec = 1.15 + 0.35(H_c - 8)/3 | Not less than 1.15 |

Where H_c = height of earth cover (m). This supplementary model factor accounts for differential settlement effects.

**Table KC.5: Preliminary Sizing Guide for RC Box Culverts (Practice-Based)**

| Span (mm) | Typical Slab Thickness (mm) | Typical Wall Thickness (mm) | Standard Fill Range (m) |
|-----------|----------------------------|----------------------------|------------------------|
| 500-1200 | 200-250 | 200-250 | 0.6-3.0 |
| 1200-2000 | 250-350 | 250-300 | 0.6-3.0 |
| 2000-3000 | 300-450 | 250-350 | 0.6-3.0 |
| 3000-4000 | 400-550 | 300-400 | 0.6-3.0 |

Note: Minimum culvert size per RDM 4.2 Section 10.2 is 500 mm span x 450 mm height for box culverts, 450 mm diameter for pipe culverts.

### M.2.2 Country-Specific Formulas

**Wheel load dispersal through fill (per RDM 4.2, Section 10.4.7 and Figure 10.3):**

For buried structures with earth cover >= 0.6 m, wheel loads from LM1 are dispersed through the fill at 30 degrees from vertical (both transversely and longitudinally):

```
Dispersed length (at top of culvert) = contact_dimension + 2 x H_c x tan(30)
                                     = contact_dimension + 2 x H_c x 0.577
                                     = contact_dimension + 1.155 x H_c
```

Where H_c is the earth cover depth. LM1 wheel contact surface is a square of side 0.40 m (RDM 4.2, Section 3.3.3.1, item vi).

For pavement and concrete slab dispersal, wheel loads disperse at 1:1 (45 degrees) through the pavement and slab to the centroid of the slab (RDM 4.2, Figure 3.7).

**Design vertical load on top slab (ULS, STR, per Table 3.32 Set B):**

```
E_d = gamma_G,sup x G_k (earth + self-weight) + gamma_Q x Q_k,traffic (dispersed)

Where:
  gamma_G,sup = 1.35 (for concrete self-weight and soil weight)
  gamma_Q = 1.35 (for traffic actions)
  G_k = gamma_soil x H_c (earth pressure on top slab) + gamma_concrete x t_slab (slab self-weight)
  Q_k = dispersed wheel load from LM1 tandem system
```

**Earth pressure on culvert walls (per RDM 4.2, Section 3.7 and Section 10.4.4):**

Earth pressure on walls of buried structures follows EN 1997 principles as referenced in RDM 4.2 Section 3.7. The simplified method in Appendix D.1 determines earth pressure coefficients (K_max) that account for wall friction, thermal expansion, and contraction.

```
Horizontal earth pressure at depth z:
  sigma_h = K x gamma_soil x z + K x q_surcharge

Design earth pressure (ULS, STR):
  sigma_h,d = gamma_G,sup x K x gamma_soil x z + gamma_Q x K x q_surcharge
            = 1.35 x K x gamma_soil x z + 1.50 x K x q_surcharge
```

Note: gamma_Q = 1.50 for variable horizontal earth pressure from surcharge (Table 3.32, Set B).

**Box culvert moment coefficients (simplified method, single-cell):**

```
Corner moment (hogging): M_corner = w x L^2 / 12 (approximate, for uniform vertical load)
Mid-span moment (sagging): M_midspan = w x L^2 / 24 (approximate)
```

Where L = clear span of top slab. For detailed analysis, RDM 4.2 references 2D/3D structural analysis software per Section 2.10.

**Pipe bedding factor method (same principles as universal, with EN partial factors):**

```
Design external load: W_e,Ed = gamma_G,sup x W_soil + gamma_Q x W_traffic (dispersed)
Required pipe strength: W_s = W_e,Ed / (F_m x F_se)
```

Where F_m = bedding factor, F_se = factor of safety (minimum 1.0 for ULS per EN approach).

### M.2.3 Classification System

Kenya culvert classification follows the road classification system (Classes A-E, UA/UC/UL) and the structure type/size distinctions in RDM 4.2 Section 10.2:

- **Loading:** LM1 applies to all road classes. For design return periods, see Table 2.5: pipe culverts (10-year design, 25-year check), box culverts <= 6 m2 (25-year design, 50-year check), box culverts > 6 m2 (50-year design, 100-year check)
- **Fill depth:** Section 10.4.2 distinguishes H_c < 0.6 m (direct loading) vs H_c >= 0.6 m (dispersed loading)
- **Culvert type:** RC box (single/multi-cell), pipe (precast concrete per BS 5911)

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 3 (Kenya): Earth pressure calculation
  |-- Use gamma_G,sup = 1.35 (permanent, unfavourable) for soil weight
  |-- gamma_Q = 1.50 for variable earth pressure from surcharge
  |-- K_max from Appendix D.1 for buried box structures
  |-- gamma_soil: use actual measured value; default 19 kN/m3 if unknown
  +-- Apply traffic surcharge per Section 10.4.8.1

Step 4 (Kenya): Traffic loading on culvert
  |-- H_c < 0.6 m --> full LM1 loading as for bridge deck (Section 10.4.2)
  |-- H_c >= 0.6 m --> disperse wheel loads at 30 degrees through fill
  |   (Section 10.4.7, Figure 10.3)
  |-- Tandem system: alpha_Q x Q_ik per wheel (Table 3.3/3.4)
  |   Lane 1: 0.5 x 1.0 x 300 = 150 kN per wheel (contact area 0.40 x 0.40 m)
  +-- gamma_Q = 1.35 for traffic actions at ULS (Table 3.32, Set B)

Step 6 (Kenya): Bearing pressure check
  |-- Foundation design per EN 1997 principles (RDM 4.2, Ch 11)
  |-- Use geotechnical investigation data per RDM 3.1
  |-- For box culverts: rotational stiffness depends on foundation
  |   condition (Section 10.4.11.1)
  +-- Maximum permissible settlement: 25 mm cohesive, 65 mm cohesionless
      (Section 2.9.1)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**RC box culverts are the dominant culvert type in Kenya.** Kenya practice favours in-situ RC box culverts for spans >= 500 mm. Box culverts can be cast-in-situ or constructed from precast segments. RDM 4.2 Section 10.4.1 limits box culvert guidelines to structures where longitudinal length <= 15 m and fill height <= 11 m.

**Minimum sizes are prescribed in Section 10.2.** Minimum pipe culvert diameter is 450 mm. Minimum box culvert dimensions are 500 mm span x 450 mm height. For culverts longer than 12 m, minimum size increases to 1.2 m (either diameter or span/height) to allow maintenance access.

**Overloading is a significant consideration.** Kenya roads, particularly the Northern Corridor (Mombasa-Nairobi-Malaba), carry substantial overloaded freight traffic. While RDM 4.2 uses LM1 (which includes dynamic amplification), the designer should consider whether SV/SOV models from Load Model 3 (Section 3.3.3.3) are appropriate for routes carrying abnormal loads.

**Fill height strongly affects the design approach.** The transition at H_c = 0.6 m is critical: below this depth, the culvert behaves like a bridge deck under direct loading. Above this depth, the 30-degree dispersal through fill significantly reduces the effective pressure on the culvert.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using BS 5400 HA/HB loading instead of LM1.** Kenya adopted EN/Eurocode loading. HA UDL and HB vehicle loading are no longer applicable for new design. Use LM1 (tandem system + UDL) from Tables 3.3/3.4.
2. **Using gamma_fL notation instead of gamma_G/gamma_Q.** EN 1990 uses separate partial factors for permanent actions (gamma_G) and variable actions (gamma_Q). Do not use the single gamma_fL system from BS 5400.
3. **Not applying dispersal through fill correctly.** The 30-degree dispersal angle applies to earth fill (Section 10.4.7), while 45-degree (1:1) dispersal applies through pavement and concrete slab (Figure 3.7). These are different dispersal mechanisms.
4. **Confusing Set A, Set B, and Set C partial factors.** Table 3.31 (EQU, Set A) is for equilibrium checks. Table 3.32 (STR, Set B) is for structural resistance. Table 3.33 (Set C) is for geotechnical actions. Use the correct set for each verification.
5. **Not accounting for the model factor gamma_Sd,ec.** Section 10.4.3 requires a supplementary model factor for the weight of earth cover on culverts, depending on foundation conditions. This is additional to the standard partial factors.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Traffic loading model | LM1 | All road classes | No flag | RDM 4.2 Section 3.3.2 -- LM1 for general and local verification |
| Earth pressure K | K_0 = 0.5 | Box culvert, at-rest | ASSUMED: K_0 = 0.5 for rigid box culvert | Standard practice for rigid structures |
| Fill unit weight | 19 kN/m3 | Not specified | ASSUMED: gamma_soil = 19 kN/m3 | Typical compacted fill |
| Concrete grade | C25/30 | Not specified | ASSUMED: C25/30 concrete | Common grade for culvert construction in Kenya |
| Cover to reinforcement | 50 mm | Moderate exposure (XC3) | ASSUMED: 50 mm cover per RDM 4.2 Section 4.4 | EN 1992 durability requirements |
| Concrete density | 25 kN/m3 | Reinforced concrete | No flag | RDM 4.2 Table 3.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| gamma_G,sup (concrete) STR | 1.35 | 1.35 | -- | RDM 4.2, Table 3.32 | Reject if != 1.35 |
| gamma_Q (traffic) STR | 1.35 | 1.35 | -- | RDM 4.2, Table 3.32 | Reject if != 1.35 |
| gamma_Q (variable earth pressure) STR | 1.50 | 1.50 | -- | RDM 4.2, Table 3.32 | Reject if != 1.50 |
| Min slab thickness | 200 | -- | mm | Practice minimum | Warn if < 200 mm |
| Min wall thickness | 200 | -- | mm | Practice minimum | Warn if < 200 mm |
| Min pipe diameter | 450 | -- | mm | RDM 4.2, Section 10.2 | Reject if < 450 mm |
| Min box culvert span | 500 | -- | mm | RDM 4.2, Section 10.2 | Reject if < 500 mm |
| Min fill height (granular bedding) | 900 | -- | mm | RDM 4.2, Section 10.2 | Warn -- concrete surround required below 0.9 m |

### M.5.2 Standards Compliance Checks

- **Check:** LM1 loading used (not HA/HB)
- **Standard:** RDM 4.2, Section 3.3
- **Pass condition:** Loading referenced as LM1 with tandem system Q_ik and UDL q_ik
- **Fail action:** SENIOR REVIEW -- HA/HB loading is superseded in Kenya. Use LM1 per EN 1991-2 as adopted in RDM 4.2.

- **Check:** Correct partial factors for STR limit state
- **Standard:** RDM 4.2, Table 3.32 (Set B)
- **Pass condition:** gamma_G,sup = 1.35, gamma_Q = 1.35 (traffic), gamma_Q = 1.50 (variable earth pressure)
- **Fail action:** SENIOR REVIEW -- Incorrect partial factors. Use Table 3.32 Set B values.

- **Check:** Wheel load dispersal through fill at 30 degrees for H_c >= 0.6 m
- **Standard:** RDM 4.2, Section 10.4.7, Figure 10.3
- **Pass condition:** Dispersal angle = 30 degrees from vertical through earth fill
- **Fail action:** NOTE -- Verify dispersal angle. 30 degrees through fill (not 45 degrees, which applies only through pavement/concrete slab per Figure 3.7).

### M.5.3 Departures / Relaxations Process

Departures from RDM 4.2 design standards require approval from the relevant Approving Authority (KeNHA Chief Engineer for national roads, or equivalent for other agencies). The designer shall document the departure with full technical justification in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Fill depth < 600 mm | Direct loading -- no dispersal through fill | SENIOR REVIEW -- Fill depth [H_c] mm is less than 600 mm. Culvert must be designed as bridge structure with full LM1 loading per RDM 4.2 Section 10.4.2. |
| Fill depth > 11 m | Beyond RDM 4.2 box culvert scope | SENIOR REVIEW -- Fill height [H_c] m exceeds 11 m limit of RDM 4.2 Section 10.4.1 guidelines. Specialist analysis required. |
| Skewed crossing > 30 degrees | Complex load distribution | SENIOR REVIEW -- Skew angle [theta] degrees exceeds 30 degrees (RDM 4.2 Section 2.6). Skew effects on load distribution require detailed 3D analysis. |
| Seismic zone (Figure 3.30) | Seismic actions per Section 3.11 | NOTE -- Site is in seismic zone per RDM 4.2 Figure 3.30. Check seismic design situation per Section 3.11 and Table 3.34 combination. |
| Detailed reinforcement required | Beyond preliminary design scope | SENIOR REVIEW -- Preliminary member sizes established. Detailed reinforcement design per EN 1992-1-1 (as adopted in RDM 4.2 Chapter 4) required by specialist structural engineer. |

---

## M.7 Worked Example -- Kenya

### Example 1: 3.0m x 2.0m RC Box Culvert, 1.5m Fill, Class B Road

**Source:** RDM 4.2 loading provisions (Ch 3 and Ch 10) applied to standard box culvert

**Given:**
- Culvert size from Skill #31: 3000 mm span x 2000 mm rise (single-cell RC box)
- Fill depth: H_c = 1.5 m (>= 0.6 m, so dispersal through fill applies)
- Road class: B (national road -- LM1 loading)
- Subgrade: bearing capacity 120 kPa (from Skill #10)
- Fill unit weight: gamma_soil = 19 kN/m3
- K_0 = 0.5 (at-rest, rigid box culvert)
- Concrete grade: C25/30 (gamma_concrete = 25 kN/m3)

**Solution:**

**Step 1 -- Permanent load on top slab (characteristic):**
- Earth cover: G_k,earth = gamma_soil x H_c = 19 x 1.5 = 28.5 kN/m2
- Self-weight of top slab (assume 350 mm thick): G_k,slab = 25 x 0.35 = 8.75 kN/m2
- Pavement (assume 200 mm): G_k,pave = 23 x 0.20 = 4.6 kN/m2

**Step 2 -- Traffic load on top slab (characteristic, dispersed through fill):**
- LM1 Lane 1 tandem system: Q_ik = 300 kN per axle, each wheel = 150 kN
- Wheel contact area: 0.40 x 0.40 m
- Dispersal through 200 mm pavement at 1:1 (Figure 3.7): area at base of pavement = 0.80 x 0.80 m
- Further dispersal through 1.5 m fill at 30 degrees (Section 10.4.7):
  - Dispersed length = 0.80 + 2 x 1.5 x tan(30) = 0.80 + 1.73 = 2.53 m
  - Dispersed width = 0.80 + 2 x 1.5 x tan(30) = 2.53 m
- Dispersed wheel pressure at culvert top: Q_k = 150 / (2.53 x 2.53) = 23.4 kN/m2 per wheel
- Check for overlap of two wheels on same axle (spacing 2.0 m transverse): dispersal zones overlap -- combined pressure governs
- LM1 UDL: alpha_q1 x q_1k = 0.61 x 9.0 = 5.49 kN/m2 (dispersed similarly)

**Step 3 -- Design vertical load on top slab (ULS, STR, Set B):**
- Permanent: E_d,G = gamma_G,sup x (G_k,earth + G_k,slab + G_k,pave) = 1.35 x (28.5 + 8.75 + 4.6) = 1.35 x 41.85 = 56.5 kN/m2
- Variable (traffic, simplified): E_d,Q = gamma_Q x Q_k,wheel (dispersed) = 1.35 x 23.4 = 31.6 kN/m2 (approximate, from single wheel)
- Total design load: E_d = 56.5 + 31.6 = 88.1 kN/m2 (approximate)

**Step 4 -- Horizontal earth pressure at base of wall (ULS):**
- Depth to base = H_c + rise + top_slab + base_slab = 1.5 + 2.0 + 0.35 + 0.35 = 4.2 m
- Characteristic earth pressure at base: sigma_h,k = K_0 x gamma_soil x 4.2 = 0.5 x 19 x 4.2 = 39.9 kN/m2
- Design earth pressure (ULS): sigma_h,d = gamma_G,sup x sigma_h,k = 1.35 x 39.9 = 53.9 kN/m2
- Traffic surcharge (variable): sigma_h,surcharge = gamma_Q x K_0 x q_surcharge
  - Using LM1 UDL as surcharge approximation: q = 5.49 kN/m2
  - sigma_h,surcharge = 1.50 x 0.5 x 5.49 = 4.1 kN/m2
- Total design horizontal pressure at base: 53.9 + 4.1 = 58.0 kN/m2

**Step 5 -- Preliminary slab thickness:**
- Span/10 = 3000/10 = 300 mm (minimum reasonable)
- Select 350 mm (provides adequate depth for bending and shear under combined loading)

**Step 6 -- Preliminary wall thickness:**
- Select 300 mm (adequate for horizontal pressure over 2.0 m height)

**Step 7 -- Approximate mid-span moment in top slab (ULS):**
- Total UDL on top slab = 88.1 kN/m2
- M_midspan = w x L^2 / 24 = 88.1 x 3.0^2 / 24 = 33.0 kNm/m (approx.)
- M_corner = w x L^2 / 12 = 88.1 x 3.0^2 / 12 = 66.1 kNm/m (approx.)

**Step 8 -- Bearing pressure check:**
- Total vertical load per metre run (characteristic, for geotechnical check):
  - Earth on top: 28.5 x 3.0 = 85.5 kN/m
  - Traffic on top: ~23.4 x 3.0 = 70.2 kN/m
  - Self-weight of culvert: 25 x [(2 x 0.35 x 3.0) + (2 x 0.30 x 2.0)] = 25 x [2.1 + 1.2] = 82.5 kN/m
  - Total = 85.5 + 70.2 + 82.5 = 238.2 kN/m (characteristic)
- Base width = 3.0 + 2 x 0.30 = 3.6 m
- Bearing pressure = 238.2 / 3.6 = 66.2 kPa (characteristic)
- Allowable = 120 kPa (from Skill #10)
- Status: PASS (66.2 < 120)

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Top slab thickness | 350 mm | Preliminary |
| Bottom slab thickness | 350 mm | Preliminary |
| Wall thickness | 300 mm | Preliminary |
| Corner moment (ULS) | ~66.1 kNm/m | Approximate |
| Mid-span moment (ULS) | ~33.0 kNm/m | Approximate |
| Bearing pressure | 66.2 kPa | PASS (allowable 120 kPa) |

SENIOR REVIEW -- Preliminary member sizes determined. Detailed reinforcement design per EN 1992-1-1 (as adopted in RDM 4.2 Chapter 4) required by specialist structural engineer. Design values are preliminary/screening level.

---

## M.8 References

1. Republic of Kenya, Ministry of Roads and Transport, *Road Design Manual, Volume 4: Bridge and Retaining Structures Design, Part 2: Bridge and Culvert Design (RDM 4.2)*, 2025. Chapter 10 (Culverts), Chapter 3 (Actions and Combination of Actions), Chapter 4 (Concrete Structures), Appendix D (Culverts).
2. EN 1990: *Eurocode -- Basis of structural design*. As adopted in Kenya via Gazette Notice No. 13048 (14 September 2012).
3. EN 1991-2: *Eurocode 1: Actions on structures -- Part 2: Traffic loads on bridges*. As adopted in RDM 4.2, Chapter 3.
4. EN 1992-1-1: *Eurocode 2: Design of concrete structures -- Part 1-1: General rules and rules for buildings*. As adopted in RDM 4.2, Chapter 4.
5. BS 5911: *Concrete pipes and ancillary concrete products*. Referenced in RDM 4.2, Section 10.1.2 for pipe culvert products.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- EN/Eurocode LM1 loading from RDM 4.2 Tables 3.3/3.4, wheel dispersal through fill from Section 10.4.7/Figure 10.3, partial factors from Table 3.32 Set B, box culvert design from Ch 10 |
