# Bridge Substructure -- Kenya Module

> **Parent Skill:** #38 Bridge Substructure
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 4.2 (2025) Ch 11 (Foundations), Section 3.11 (Seismic Actions), Section 3.7 (Earth Pressure); EN 1997 (Eurocode 7); EN 1998 (Eurocode 8)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 4.2 -- Bridge and Culvert Design | 2025 | Ch 11 (Foundations): Sections 11.1-11.6; Section 3.11 (Seismic Actions); Section 3.7 (Earth Pressure); Appendix E (Foundation examples) | Current (mandatory) |
| EN 1997 (Eurocode 7) | Via RDM 4.2 | Geotechnical design principles | Adopted via Gazette Notice 13048 |
| EN 1998 (Eurocode 8) | Via RDM 4.2 | Seismic design of foundations | Adopted via Gazette Notice 13048 |
| Kenya RDM 4.1 -- Geotechnical Investigation | 2025 | Investigation requirements | Current (mandatory) |

### M.1.2 Institutional Context

KeNHA/KeRRA/KURA and County Governments as described in Skill #35 Kenya module. RDM 4.2 Chapter 11 provides EN 1997-based foundation design. Seismic actions from Section 3.11 are critical for substructure design in western Kenya (Zone III). Earth pressure on abutments follows Section 3.7 using EN 1997 principles, not the BS 5400 approach.

### M.1.3 Standard Philosophy

RDM 4.2 Chapter 11 uses EN 1997 (Eurocode 7) limit state approach for foundation design. Foundation verification is performed at ULS (Section 11.3) and SLS (Section 11.4) with partial factors from Tables 11.1-11.10. This replaces the CP 2004 working stress approach referenced in Uganda's MoWT Vol 4.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Foundation Partial Factors (Chapter 11, Verified):**

EQU Limit State (Tables 11.1-11.2):
- Partial factors on actions gamma_f: per Table 11.1
- Partial factors on soil parameters gamma_m: per Table 11.2

STR/GEO Limit State (Tables 11.3-11.4):
- Partial factors on actions: per Table 11.3 (same structure as Table 3.32 for STR)
- Partial factors on soil parameters gamma_m: per Table 11.4

Spread Foundation Resistance (Table 11.5):
- gamma_R for bearing: 1.0 (STR/GEO)
- gamma_R for sliding: 1.0 (STR/GEO)

Pile Foundation Resistance -- Driven (Table 11.6), Bored (Table 11.7):
- Factors depend on test method (static load test, ground test results, dynamic impact tests)

**Seismic Parameters:** --> `skills/structures/bridge-loading/tables/kenya_seismic_parameters.json`

Kenya seismic zones (Figure 3.30):
- **Zone I:** PGA 0-0.2 m/s2 (eastern Kenya) -- low seismicity
- **Zone II:** PGA 0.2-0.8 m/s2 (central Kenya including Nairobi) -- moderate
- **Zone III:** PGA 0.8-2.4 m/s2 (western Rift Valley) -- high seismicity

Importance factors (Table 3.24): Cat I = 0.85, Cat II = 1.0, Cat III = 1.3
Ground types A-E, S1, S2 (Table 3.25) with shear wave velocity classification
Behaviour factors (Table 3.28) for ductile/limited ductile members
Elastic response spectrum parameters (Table 3.26)

**Earth Pressure (Section 3.7):**
Earth pressure on abutments and retaining structures follows EN 1997 principles. At-rest, active, and passive earth pressure coefficients are calculated using standard geotechnical methods. Traffic surcharge from LM1 loading is applied as equivalent earth pressure per Appendix A (Tables A.1 and A.2 for simplified surcharge models).

**Foundation Requirements (Section 2.9, Verified):**

| Parameter | Requirement | Source |
|-----------|------------|--------|
| Minimum depth of shallow foundations | 2.0m below max scour level | Section 2.9 |
| Minimum embedment in weak rock (UCS 5-25 MPa) | 1.5m | Section 2.9 |
| Minimum embedment in medium/strong rock (UCS > 25 MPa) | 0.6m | Section 2.9 |
| Maximum settlement -- cohesive soils | 25 mm | Section 2.9.1 |
| Maximum settlement -- cohesionless soils | 65 mm | Section 2.9.1 |
| Minimum pile diameter (river bridges) | 1.0m | Section 2.9.3 |
| Minimum pile diameter (beyond water/on land) | 0.75m | Section 2.9.3 |
| Pile spacing (friction piles) | >= 3 x diameter | Section 2.9.3 |

### M.2.2 Country-Specific Formulas

**Screening-Level Seismic Design Procedure:**

```
Step 1: Determine seismic zone from Figure 3.30
  --> Zone I, II, or III with reference PGA (a_gR)

Step 2: Select importance factor (Table 3.24)
  --> Cat I (0.85), Cat II (1.0), Cat III (1.3)
  --> Design ground acceleration: a_g = gamma_I * a_gR

Step 3: Classify ground type (Table 3.25)
  --> Based on v_s30, N_SPT, or c_u

Step 4: Check if simplified methods apply
  --> Low seismicity: a_g <= 0.78 m/s2 on Type A (T_NCR=475)
  --> Very low seismicity: a_g <= 0.39 m/s2 on Type A (T_NCR=475)

Step 5: Calculate design spectrum acceleration
  --> S_d(T) from Equations 3.43-3.46 using Table 3.26 parameters

Step 6: Estimate seismic force (fundamental mode method)
  --> F = M * S_d(T) where M = effective mass, T = fundamental period
```

**NOTE:** Full response spectrum analysis and time-history analysis are beyond OpenEng's screening-level scope. These require specialist seismic engineering input.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 1 (Kenya): Foundation type selection
  |-- Shallow foundations (spread, strip, raft) per Section 11.5
  |    if bearing capacity adequate at shallow depth above scour
  |-- Deep foundations (piles) per Section 11.6
  |    if shallow bearing capacity inadequate or deep scour
  +-- Selection guidance from Table 2.7

Step 2 (Kenya): Seismic zone assessment
  |-- Determine zone from Figure 3.30
  |-- Zone I: simplified seismic check sufficient
  |-- Zone II: screening-level seismic check
  |-- Zone III: full seismic design required -- ESCALATE
  +-- Cross-reference kenya_seismic_parameters.json

Step 3 (Kenya): Earth pressure on abutments
  |-- Active/passive/at-rest per EN 1997 (Section 3.7)
  |-- Traffic surcharge from LM1 per Appendix A
  |-- Use gamma_Q = 1.50 for variable earth pressure (STR Set B, Table 3.32)
  +-- NOT gamma_fL = 1.50 (BS 5400 notation)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya's Rift Valley presents the most significant seismic design challenge in East Africa.** Zone III (PGA 0.8-2.4 m/s2) requires ductile detailing per Section 4.10 and proper foundation design to resist seismic forces. Bridges on the Nairobi-Nakuru-Eldoret corridor traverse Zone II/III boundaries.

**Foundation conditions are highly variable across Kenya's geological regions.** Volcanic soils in the central highlands, black cotton soils in western Kenya, coral formations along the coast, and alluvial deposits in river valleys each require specific geotechnical approaches per RDM 4.1.

### M.3.3 Common Errors (Kenya-Specific)

- **Using CP 2004 for foundation design:** Kenya uses EN 1997 (Eurocode 7) via RDM 4.2 Ch 11, not CP 2004 as referenced in Uganda's MoWT Vol 4.
- **Ignoring seismic zone for substructure design:** Western Kenya bridges require seismic design per Section 3.11.
- **Using gamma_fL for earth pressure:** Kenya uses gamma_Q per EN 1990 notation (1.50 for variable earth pressure in STR Set B), not gamma_fL.

---

## M.4 Country-Specific Defaults

| Parameter | Kenya Default | Condition | Rationale |
|-----------|-------------|-----------|-----------|
| Foundation type (good bearing) | Spread footing | Bearing capacity adequate | Section 11.5 |
| Seismic importance | Category II (gamma_I = 1.0) | Standard road bridges | Table 3.24 |
| Earth pressure gamma_Q | 1.50 | STR Set B variable earth pressure | Table 3.32 |
| Minimum foundation depth | 2.0m below max scour | River bridges | Section 2.9 |
| Pile diameter (river) | >= 1.0m | River bridge piles | Section 2.9.3 |
| Damping ratio (RC) | 5% | For response spectrum | Section 3.11.5.3 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source |
|-----------|-----------|--------|
| Foundation depth below scour | >= 2.0m | Section 2.9 |
| Pile diameter (river) | >= 1.0m | Section 2.9.3 |
| Pile spacing (friction) | >= 3 x diameter | Section 2.9.3 |
| Settlement (cohesive) | <= 25mm | Section 2.9.1 |
| Settlement (cohesionless) | <= 65mm | Section 2.9.1 |
| Seismic zone PGA | 0 to 2.4 m/s2 | Figure 3.30 |

### M.5.2 Standards Compliance Checks

- Verify EN 1997 approach used (not CP 2004)
- Verify EN notation (gamma_G, gamma_Q) used, not BS 5400 notation
- Verify seismic zone determined from Figure 3.30
- Verify foundation partial factors from Tables 11.1-11.8

---

## M.6 Country-Specific Escalation

| Trigger | Action | Rationale |
|---------|--------|-----------|
| Seismic Zone III (Rift Valley) | Full seismic analysis by specialist | PGA 0.8-2.4 m/s2 exceeds screening level |
| Pile foundations required | Geotechnical specialist for RDM 4.1/Ch 11 design | Section 11.6 |
| Soft ground (S1/S2 type) | Special ground conditions study | Table 3.25 |
| Deep scour (> 5m) | Specialist scour and foundation assessment | Combined hydraulic/geotechnical |
| High axial force on piers (eta_k > 0.30) | Reduced behaviour factor per Equation 3.48 | Section 3.11.5.6 |

---

## M.7 Worked Example -- Kenya

**Scenario:** Preliminary substructure design for a bridge in Kenya's Rift Valley (near Nakuru) with 2 spans of 20m on spread foundations in stiff clay.

**Step 1 -- Seismic Zone:** Nakuru is in Zone II/III boundary. Conservatively adopt Zone III, a_gR = 1.0 m/s2 (mid-range Zone III).

**Step 2 -- Importance and Ground Type:**
- Class B road bridge: Category II, gamma_I = 1.0
- Design ground acceleration: a_g = 1.0 * 1.0 = 1.0 m/s2
- Stiff clay: Ground Type C (v_s30 = 180-360 m/s, Table 3.25)

**Step 3 -- Seismic Check:**
- a_g = 1.0 m/s2 > 0.78 m/s2 threshold for low seismicity
- Full seismic design required -- simplified methods insufficient
- **Escalation:** Seismic specialist required for detailed analysis

**Step 4 -- Foundation Preliminary Assessment:**
- Stiff clay bearing capacity typically 100-200 kPa
- Spread foundations feasible if scour is manageable
- Minimum depth: 2.0m below maximum scour level
- Check settlement: cohesive soil limit 25mm

**Step 5 -- Earth Pressure on Abutments:**
- Active earth pressure with LM1 traffic surcharge (Appendix A)
- gamma_Q = 1.50 for variable earth pressure (STR Set B)
- EN notation: gamma_G * G_k(soil) + gamma_Q * Q_k(surcharge)

**Conclusion:** Site requires full seismic design due to Zone III location. Spread foundations feasible in stiff clay subject to scour depth confirmation. Escalation for seismic specialist and detailed geotechnical design per RDM 4.2 Ch 11.

---

## M.8 References

- Kenya RDM 4.2 -- Bridge and Culvert Design (2025), Chapter 11: Foundations
- Kenya RDM 4.2 -- Bridge and Culvert Design (2025), Section 3.11: Seismic Actions
- Kenya RDM 4.2 -- Bridge and Culvert Design (2025), Section 3.7: Earth Pressure
- EN 1997 (Eurocode 7) -- Geotechnical Design (via RDM 4.2)
- EN 1998 (Eurocode 8) -- Design of Structures for Earthquake Resistance (via RDM 4.2)

---

## Module Changelog

| Date | Version | Changes |
|------|---------|---------|
| 2026-04-05 | 0.1 | Initial Kenya module -- EN 1997/1998 substructure design with seismic zones from RDM 4.2 |
