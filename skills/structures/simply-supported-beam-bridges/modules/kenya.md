# Simply Supported Beam Bridges -- Kenya Module

> **Parent Skill:** #37 Simply Supported Beam Bridges
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 4.2 (2025) Chapter 4 (Concrete Structures), Table 2.4 (Superstructure Types); EN 1992-1-1 (Eurocode 2)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 4.2 -- Bridge and Culvert Design | 2025 | Ch 4 (Concrete Structures): Sections 4.1-4.10, Table 2.4 (span types) | Current (mandatory) |
| EN 1992-1-1 (Eurocode 2) | Via RDM 4.2 | Concrete structural design | Adopted via Gazette Notice 13048 |
| EN 1992-2 (Eurocode 2 Part 2) | Via RDM 4.2 | Concrete bridges | Adopted via Gazette Notice 13048 |
| Kenya RDM 4.2 Ch 3 | 2025 | Loading (LM1-LM4), load combinations | Cross-reference to Skill #36 |

### M.1.2 Institutional Context

KeNHA/KeRRA/KURA and County Governments as described in Skill #35 Kenya module. The concrete structures chapter (Ch 4) provides EN 1992-based design for reinforced and prestressed concrete bridges. All material design uses EN partial factor approach -- NOT BS 5400 Part 4 methods. The approving authority must agree on the bridge analysis software used (Section 2.10).

### M.1.3 Standard Philosophy

RDM 4.2 Chapter 4 follows EN 1992 (Eurocode 2) for concrete bridge design. The design approach uses:
- **Material partial factors** (gamma_c for concrete, gamma_s for steel) per Table 4.1
- **Characteristic material properties** from Table 4.2 (concrete) and Table 4.5/4.7 (reinforcement)
- **ULS verification** for bending, shear, torsion, and punching (Section 4.6)
- **SLS verification** for cracking, deflection, and stress limits (Section 4.7)
- **Durability** provisions per exposure class (Section 4.4, Tables 4.8-4.12)

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table KSSB.1: Superstructure Types and Suggestive Span Lengths (Table 2.4, Verified)**

| Type of Super Structure | Span Range (m) |
|------------------------|----------------|
| Simply supported RCC slab bridge | up to 10 |
| Simply supported RCC girder bridge | 10 -- 20 |
| Simply supported prestress girder bridge | 25 -- 40 |
| Simply supported RCC box girder | 20 -- 30 |
| Simply supported prestress box girder | 40 -- 60 |

**Table KSSB.2: Material Partial Factors (Table 4.1, Verified)**

| Design Situation | gamma_c (concrete) | gamma_s (reinforcement) |
|-----------------|--------------------|------------------------|
| ULS -- persistent and transient | 1.50 | 1.15 |
| ULS -- accidental | 1.20 | 1.0 |
| SLS | 1.0 | 1.0 |

**Table KSSB.3: Concrete Strength Properties (Table 4.2, Selected Grades, Verified)**

| Property | C25/30 | C30/37 | C35/45 | C40/50 | C50/60 |
|----------|--------|--------|--------|--------|--------|
| f_ck (MPa) | 25 | 30 | 35 | 40 | 50 |
| f_cm (MPa) | 33 | 38 | 43 | 48 | 58 |
| f_ctm (MPa) | 2.6 | 2.9 | 3.2 | 3.5 | 4.1 |
| E_cm (GPa) | 31 | 33 | 34 | 35 | 37 |
| epsilon_cu2 (per mille) | 3.5 | 3.5 | 3.5 | 3.5 | 3.5 |

**Design compressive strength:** f_cd = alpha_cc * f_ck / gamma_c, where alpha_cc = 0.85 (UK NA value).

**Reinforcing Steel Properties (Table 4.5/4.7):**
- f_yk = 500 MPa (characteristic yield strength, B500 grade)
- E_s = 200 GPa
- Design yield strength: f_yd = f_yk / gamma_s = 500 / 1.15 = 435 MPa

**Durability Requirements:**
- Exposure classes from Table 4.8 (XC, XD, XS, XF, XA categories)
- Minimum cover from Table 4.9 (C_min,b for bond)
- Tables 4.10 and 4.11 provide durability recommendations for 50-year and 100-year working life respectively

**Minimum Structural Dimensions (Table 2.3):**
- Deck slab thickness: >= 200mm (road bridge)
- Pier columns: >= 500mm
- Footing thickness: >= 300mm

### M.2.2 Country-Specific Formulas

**Design Approach for Simply Supported Beams under EN 1992:**

**ULS Bending (Section 4.6):**
```
Design moment capacity: M_Rd = f_cd * b * x * (d - 0.4x)
where x = neutral axis depth
f_cd = 0.85 * f_ck / 1.50

Alternatively using moment coefficient K:
K = M_Ed / (b * d^2 * f_ck)
If K <= K_bal (approximately 0.167 for singly reinforced), no compression steel needed
z = d * (0.5 + sqrt(0.25 - K/1.134))
A_s = M_Ed / (f_yd * z)
```

**ULS Shear (Section 4.6):**
```
V_Rd,c = [C_Rd,c * k * (100 * rho_l * f_ck)^(1/3) + k_1 * sigma_cp] * b_w * d
where:
C_Rd,c = 0.18 / gamma_c = 0.12
k = 1 + sqrt(200/d) <= 2.0 (d in mm)
```

If V_Ed > V_Rd,c, provide shear reinforcement:
```
V_Rd,s = (A_sw / s) * z * f_ywd * cot(theta)
where theta = strut angle (21.8 to 45 degrees)
```

**Factored design moment (STR Set B, from Skill #36 module):**
```
M_Ed = gamma_G * M_dead + gamma_Q * (M_UDL,LM1 + M_TS,LM1)
     = 1.35 * M_dead + 1.35 * M_live
```

Where M_dead and M_live are characteristic moments from dead load and LM1 loading respectively.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 1 (Kenya): Bridge type selection (Table 2.4)
  |-- RCC slab bridge for spans up to 10m (simplest construction)
  |-- RCC girder bridge for spans 10-20m (most common for Kenya)
  |-- Prestressed girder for spans 25-40m (requires specialist design)
  |-- RCC box girder for spans 20-30m
  +-- Consider precast if crane access and precasting facilities available

Step 2 (Kenya): Material selection
  |-- Concrete grade: typically C30/37 to C40/50 for bridges
  |-- Reinforcing steel: B500 grade (f_yk = 500 MPa)
  |-- Cover: per exposure class from Table 4.8-4.9
  +-- Design working life: 100 years for bridges (Table 2.1)

Step 3 (Kenya): Load effects from Skill #36
  |-- Use LM1 loading (NOT HA/HB)
  |-- Apply alpha adjustment factors (Table 3.3)
  |-- Use STR Set B combination (Table 3.32)
  +-- gamma_G = 1.35 (concrete), gamma_Q = 1.35 (traffic)

Step 4 (Kenya): Section sizing
  |-- Span-to-depth ratios:
  |    RCC slab: L/15 to L/20
  |    RCC girder (T-beam): L/12 to L/16
  |    Prestressed: L/18 to L/25
  +-- Verify minimum dimensions per Table 2.3
```

### M.3.2 Professional Judgment (Kenya-Specific)

**RCC girder bridges are the most practical choice for 10-20m spans in Kenya.** Similar to Uganda, most Kenyan contractors have experience with in-situ concrete construction. The RDM 4.2 span ranges (Table 2.4) differ slightly from Uganda practice, with RCC girder bridges recommended up to 20m (vs 25m in Uganda for T-beams).

**Prestressed concrete is gaining prominence in Kenya.** The RDM 4.2 Preface notes increasing use of prestress concrete. For spans above 25m, prestressed options should be considered. The manual provides detailed prestressing provisions in Sections 4.8 and 4.10.

**Seismic detailing is required for bridges in Zone III.** Section 4.10 provides specific seismic detailing requirements for concrete structures. This includes confinement reinforcement, capacity design principles, and ductility provisions not present in the BS 5400 Part 4 approach.

### M.3.3 Common Errors (Kenya-Specific)

- **Using BS 5400 Part 4 methods:** Kenya uses EN 1992 (Eurocode 2) for concrete design. The partial factor format differs (gamma_c = 1.50, gamma_s = 1.15, not the BS 5400 Part 4 values).
- **Wrong material partial factors:** EN 1992 uses gamma_c = 1.50 and gamma_s = 1.15 for ULS (Table 4.1), not the BS 5400 values.
- **Ignoring alpha_cc factor:** The design compressive strength f_cd = alpha_cc * f_ck / gamma_c uses alpha_cc = 0.85 (UK NA), not just f_ck / gamma_c.
- **Using BS concrete grades:** Kenya/EN uses C25/30, C30/37, C40/50 notation (cylinder/cube), not the BS system of grade 30, grade 40 etc.
- **Omitting seismic detailing:** For bridges in Zone III, Section 4.10 seismic detailing requirements are mandatory, including confinement spacing and capacity design.

---

## M.4 Country-Specific Defaults

| Parameter | Kenya Default | Condition | Rationale |
|-----------|-------------|-----------|-----------|
| Bridge type (10-20m) | RCC girder bridge | Default for Kenya | Table 2.4 |
| Bridge type (up to 10m) | RCC slab bridge | Short spans | Table 2.4 |
| Concrete grade | C30/37 to C40/50 | Bridge decks | Section 4.3, durability |
| Reinforcing steel | B500 (f_yk = 500 MPa) | Standard | Section 4.3 |
| gamma_c | 1.50 | ULS persistent/transient | Table 4.1 |
| gamma_s | 1.15 | ULS persistent/transient | Table 4.1 |
| alpha_cc | 0.85 | Design compressive strength | UK NA (pending Kenya NDP) |
| Surfacing density | 24-25 kN/m3 | Asphalt concrete | Table 3.1 |
| Surfacing thickness | 120mm minimum | New concrete decks | Section 2.4 |
| Cover (XC3/XC4) | 35-45mm (C_min) + delta_c_dev | 100-year life | Tables 4.9-4.11 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source |
|-----------|-----------|--------|
| Deck slab thickness | >= 200mm | Table 2.3 |
| Span-depth ratio (RCC slab) | L/15 to L/20 | Engineering practice |
| Span-depth ratio (RCC girder) | L/12 to L/16 | Engineering practice |
| gamma_c | 1.50 (ULS) | Table 4.1 |
| gamma_s | 1.15 (ULS) | Table 4.1 |
| K factor (singly reinforced) | <= 0.167 | EN 1992 |
| Concrete grade for bridges | C25/30 to C50/60 | Table 4.2 |

### M.5.2 Standards Compliance Checks

- Verify EN 1992 design approach used (not BS 5400 Part 4)
- Verify material partial factors from Table 4.1
- Verify concrete properties from Table 4.2
- Verify minimum structural dimensions from Table 2.3
- Verify durability provisions from Tables 4.8-4.12 for 100-year design life
- Verify LM1 loading from Skill #36 Kenya module used (not HA/HB)

---

## M.6 Country-Specific Escalation

| Trigger | Action | Rationale |
|---------|--------|-----------|
| Span > 25m requiring prestressing | Escalate for specialist prestressed concrete design | Beyond preliminary scope; Sections 4.8-4.9 |
| Seismic Zone III | Apply Section 4.10 seismic detailing requirements | Enhanced ductility and confinement needed |
| Composite steel-concrete section | Refer to Chapter 6 (Composite Structures) | Different design approach |
| Deep beams or complex geometry | Specialist structural analysis required | Section 4.5 |
| Aggressive exposure (XD, XS) | Enhanced durability provisions | Tables 4.10-4.11 |

---

## M.7 Worked Example -- Kenya

**Scenario:** Preliminary design for a 15m simply supported reinforced concrete beam bridge in Kenya on a Class B road. Carriageway width 7.3m. EN/Eurocode design per RDM 4.2.

**Step 1 -- Bridge Type Selection (Table 2.4):**
- 15m span falls in RCC girder bridge range (10-20m)
- Select T-beam cross section

**Step 2 -- Preliminary Sizing:**
- Beam depth: L/14 = 15/14 = 1.07m, round to **1.1m** (range L/12 to L/16 = 1.25m to 0.94m)
- Deck slab: 200mm minimum (Table 2.3)
- Assume 4 beams at approximately 1.8m centres for 7.3m carriageway

**Step 3 -- Dead Load Estimate:**
- Beam self-weight (approx 0.3m x 0.9m web): 0.3 * 0.9 * 25 = 6.75 kN/m per beam x 4 = 27 kN/m
- Slab: 0.2 * 7.3 * 25 = 36.5 kN/m
- Surfacing: 0.12 * 7.3 * 24 = 21.0 kN/m
- Parapets/barriers: ~2.0 kN/m (both sides)
- Total dead load estimate: ~86.5 kN/m
- M_dead = 86.5 * 15^2 / 8 = **2,434 kNm**

**Step 4 -- Live Load (LM1 from Skill #36 module):**
- 2 notional lanes (w = 7.3m, Int(7.3/3) = 2)
- Lane 1 UDL: 0.61 * 9.0 * 3.0 = 16.47 kN/m
- Lane 2 UDL: 2.2 * 2.5 * 3.0 = 16.50 kN/m
- Remaining: 2.2 * 2.5 * 1.3 = 7.15 kN/m
- Total UDL = 40.12 kN/m
- M_UDL = 40.12 * 15^2 / 8 = **1,129 kNm**

- Lane 1 Tandem: 2 axles of 300 kN at 1.2m spacing positioned for max moment
- M_TS = approximately 300 * 15/4 + 300 * (15/4 - 0.6) = 300 * 3.75 + 300 * 3.15 = **2,070 kNm**

**Step 5 -- Design Moment (STR Set B, Table 3.32):**
```
M_Ed = gamma_G * M_dead + gamma_Q * (M_UDL + M_TS)
     = 1.35 * 2,434 + 1.35 * (1,129 + 2,070)
     = 3,286 + 4,319
     = 7,605 kNm
```

**Step 6 -- Preliminary Reinforcement (EN 1992):**
- Concrete C35/45: f_cd = 0.85 * 35 / 1.50 = 19.8 MPa
- Steel B500: f_yd = 500 / 1.15 = 435 MPa
- Effective depth d = 1100 - 60 (cover) - 12 (link) - 16 (bar radius) = ~1012mm
- Distribute M_Ed across 4 beams: M_Ed per beam = 7,605 / 4 = 1,901 kNm (simplified)
- K = M_Ed / (b * d^2 * f_ck) = 1,901 * 10^6 / (300 * 1012^2 * 35) = 0.177
- K > K_bal (0.167): compression steel required or increase section size
- **Escalation:** Increase beam width to 350mm or add compression steel -- detailed design by specialist

**Step 7 -- Shear Check (Section 4.6):**
- V_Ed at support = (gamma_G * 86.5 + gamma_Q * 40.12) * 15/2 + gamma_Q * 600 / 2
- Shear verification per EN 1992 Section 4.6

**Conclusion:** Preliminary design gives a 15m RCC girder bridge with approximately 1.1m beam depth, C35/45 concrete, B500 reinforcement. The K factor marginally exceeds K_bal, requiring section adjustment. Escalation for detailed reinforcement design by specialist structural engineer.

---

## M.8 References

- Kenya RDM 4.2 -- Bridge and Culvert Design (2025), Chapter 4: Concrete Structures
- Kenya RDM 4.2 -- Bridge and Culvert Design (2025), Table 2.4: Type of Superstructure
- EN 1992-1-1 (Eurocode 2) -- Design of Concrete Structures (via RDM 4.2)
- EN 1992-2 (Eurocode 2 Part 2) -- Concrete Bridges (via RDM 4.2)

---

## Module Changelog

| Date | Version | Changes |
|------|---------|---------|
| 2026-04-05 | 0.1 | Initial Kenya module -- EN 1992 beam bridge design from RDM 4.2 Ch 4 |
