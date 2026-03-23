# Bridge Loading -- Uganda Module

> **Parent Skill:** #36 Bridge Loading
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual Vol 4 (January 2010), Sections 3-9
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 4 | January 2010 | Sections 3-9, Tables 1-14, Tables 9.1-9.5, Figures 2, 9-1, 10, 11 | Current |

### M.1.2 Institutional Context

MoWT Vol 4 is essentially an adaptation of BS 5400: Part 2 (Loading) with Uganda-specific modifications for wind (Figure 2), temperature, and seismic design (Section 9). The manual states: "This specification for loads should be read in conjunction with the other Part of BS 5400" (Section 1.1). All structural codes referenced by MoWT Vol 4 (BS 5400 Parts 1-10) are applied through the manual, not independently.

### M.1.3 Standard Philosophy

MoWT Vol 4 specifies nominal loads and partial factors (gamma_fL) for deriving design loads. Five load combinations are defined in Table 1, each with specific gamma_fL values for ULS and SLS. The load factor approach separates gamma_fL (accounting for load variability) from gamma_f3 (accounting for structural analysis uncertainty, given in Parts 3, 4, and 5 of BS 5400).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Load Combinations (Table 1):** --> `tables/uganda_load_combinations.json`

Contains gamma_fL factors for all load types across all 5 combinations, for both ULS and SLS. This is the primary reference table for assembling factored loads.

**HA UDL Values (Table 13):** --> `tables/uganda_ha_udl.json`

Tabulated HA UDL values by loaded length from 2m to 380m+. Includes the two-part formula: W = 30.0 for L <= 30m; W = 151(1/L)^0.475 for L > 30m (min 9.0 kN/m).

**Seismic Parameters (Tables 9.1-9.5):** --> `tables/uganda_seismic_parameters.json`

Acceleration coefficients, seismic performance categories, site coefficients, response modification factors, and analysis procedures for Uganda's seismic zones.

**Table UBL.1: Notional Lanes (Section 3.2.9.3, Verified)**

| Carriageway Width (m) | Number of Notional Lanes |
|------------------------|--------------------------|
| 4.6 up to and including 7.6 | 2 |
| Above 7.6 up to and including 11.4 | 3 |
| Above 11.4 up to and including 15.2 | 4 |
| Above 15.2 up to and including 19.0 | 5 |
| Above 19.0 up to and including 22.8 | 6 |

For carriageway width < 4.6m: Number of lanes = width / 3.0 (fractional lane loaded pro rata).

**Source:** MoWT Vol 4, Section 3.2.9.3 (Verified against PDF).

**Table UBL.2: HB Vehicle Dimensions (Section 6.3.1, Figure 11, Verified)**

| Parameter | Value | Unit |
|-----------|-------|------|
| Number of axles | 4 | -- |
| Outer axle spacing (each side) | 1.8 | m |
| Inner axle spacing (variable) | 6, 11, 16, 21, or 26 | m |
| Overall length (6m inner) | 10 | m |
| Overall length (26m inner) | 30 | m |
| Overall width | 3.5 | m |
| Load per unit per axle | 10 | kN |
| Load per unit per wheel | 2.5 | kN |
| Contact area pressure | 1.1 | N/mm2 |
| Minimum units (public highway) | 25 | units |
| Maximum units | 45 | units |

**Source:** MoWT Vol 4, Section 6.3.1 and Figure 11 (Verified).

**Table UBL.3: Wind Terrain Coefficients (Table 2, Verified)**

| Height to top of structure (m) | Open terrain (Cat 1,2) | Built-up areas (Cat 3,4) |
|-------------------------------|------------------------|--------------------------|
| 5 | 0.81 | 0.37 |
| 10 | 0.92 | 0.47 |
| 15 | 1.00 | 0.57 |
| 20 | 1.06 | 0.66 |
| 25 | 1.10 | 0.72 |
| 30 | 1.12 | 0.76 |

Values are velocity pressure coefficients (kN/m2).

**Source:** MoWT Vol 4, Table 2 (Verified).

**Table UBL.4: Base Wind Pressures P_B (Table 4, Verified)**

| Structural Component | Windward Load (MPa) | Leeward Load (MPa) |
|---------------------|---------------------|---------------------|
| Trusses, Columns and Arches | 0.0024 | 0.0012 |
| Beams | 0.0024 | NA |
| Large Flat Surfaces | 0.0019 | NA |

Pressures correspond to V_B = 160 km/h.

**Source:** MoWT Vol 4, Table 4 (Verified).

**Table UBL.5: Wind Components on Live Load (Table 6, Verified)**

| Skew Angle (degrees) | Normal Component (N/mm) | Parallel Component (N/mm) |
|---------------------|------------------------|--------------------------|
| 0 | 1.46 | 0 |
| 15 | 1.28 | 0.18 |
| 30 | 1.20 | 0.35 |
| 45 | 0.96 | 0.47 |
| 60 | 0.50 | 0.55 |

**Source:** MoWT Vol 4, Table 6 (Verified).

**Table UBL.6: Collision Loads on Supports (Table 14, Verified)**

| Load Type | Normal to carriageway (kN) | Parallel to carriageway (kN) | Point of application |
|-----------|---------------------------|-----------------------------|--------------------|
| Load from guard rail | 150 | 50 | Guard rail bracket or 0.75m above carriageway |
| Residual load above guard rail | 100 | 100 | Most severe point 1-3m above carriageway |

**Source:** MoWT Vol 4, Table 14 (Verified).

### M.2.2 Country-Specific Formulas

**HA UDL (MoWT Vol 4, Section 6.2.1, Verified):**

```
For L <= 30m:  W = 30.0 kN/m per notional lane
For L > 30m:   W = 151 * (1/L)^0.475 kN/m per notional lane
               but not less than 9.0 kN/m
```

**HA KEL:** 120 kN per notional lane (Section 6.2.2).

**Wind pressure adjustment for Uganda (Section 5.3.1.1, Verified):**

All pressures in the manual assume base wind velocity V_B = 160 km/h. For Uganda:

```
Adjusted pressure = Tabulated pressure * (V_Uganda / 160)
```

Where V_Uganda is from Figure 2 (Wind Intensity Map of Uganda -- isobars show values from 1.5 to 4.0).

NOTE: The manual states the adjustment as a linear ratio of velocities applied to pressures. This is the authoritative source text. The general wind pressure formula in Section 5.3.2.1 uses P_D = P_B * (V_DZ/V_B)^2 which applies the squared relationship. For consistency, use the linear factor as stated in Section 5.3.1.1 for the simplified approach, or the full formula from Section 5.3.2.1 for detailed calculations.

**Live load surcharge behind abutments (Section 5.8.2, Verified):**

```
For HA loading:              10 kN/m2
For HB loading, 45 units:   20 kN/m2
For HB loading, 25 units:   10 kN/m2 (by interpolation)
```

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Notional lanes
  --> Use Table UBL.1 for carriageway width >= 4.6m
  --> For width < 4.6m: lanes = width / 3.0

Step 6 (Uganda): Wind loads
  |-- Determine Uganda base wind speed from Figure 2
  |    (typical: 100 km/h for most of Uganda)
  |-- Adjustment factor = V_Uganda / 160 = 100/160 = 0.625
  |-- Apply to all tabulated pressures (Tables 4, 5, 6)
  +-- NOTE: Wind rarely governs for short-span bridges in Uganda

Step 7 (Uganda): Seismic requirements
  |-- Determine seismic zone from Figure 9-1 (Seismic Map of Uganda)
  |    |-- Zone 1: Western rift (Kasese, Fort Portal, Bundibugyo) -- A = 0.15
  |    |-- Zone 2: Central/northern (Kampala, Hoima, Arua, Gulu) -- A = 0.07
  |    +-- Zone 3: Eastern (Soroti, Mbale, most of central) -- A = 0.05
  |-- Determine SPC from Table 9.2 using A and IC
  |-- If SPC 1 or 2: no detailed seismic analysis required
  |    (connections designed for 0.20 * dead load reaction)
  +-- If SPC 3: full seismic analysis per Section 9
```

### M.3.2 Professional Judgment (Uganda-Specific)

**East African overloading context:** Actual axle loads on Uganda's freight corridors regularly exceed the legal limits from Skill #4 (10 tonne single axle, 16 tonne tandem axle). The Northern Corridor (Mombasa-Kampala) and other trunk routes carry heavily overloaded vehicles. Design should consider:

- The surveyed axle load spectrum from Skill #4, not just legal limits
- If surveyed P85 axle load exceeds legal limit by > 30%, consider increasing HB units
- For critical bridges on overloaded corridors, use 30 or 45 HB units rather than the minimum 25
- Document the overloading assessment in the design report

**Wind is rarely critical for typical Uganda bridges** (short to medium span, not in exposed locations). The low base wind speed (typically 100 km/h giving factor 0.625) further reduces wind effects. However, wind should still be checked for tall or exposed structures.

**Seismic design is NOT optional for western Uganda.** Fort Portal, Kasese, Bundibugyo and surrounding areas are in Zone 1 with A = 0.15 -- the highest seismicity in Uganda. Bridges in this zone classified as SPC 3 require full seismic analysis. Even in Zone 2 (much of central and northern Uganda), connections must be designed for seismic forces.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using formula for HA UDL when L <= 30m.** For loaded lengths up to 30m, W is simply 30.0 kN/m. The formula W = 151(1/L)^0.475 applies only for L > 30m.
2. **Applying BS 5400 wind pressures without Uganda adjustment.** All pressures must be adjusted by factor V_Uganda/160.
3. **Omitting seismic design for western Uganda bridges.** Zone 1 (rift valley) requires full seismic analysis per Section 9.
4. **Ignoring overloading on freight corridors.** Standard 25 HB units may not represent actual conditions on heavily overloaded routes.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| HB units | 25 | Public highway, standard | ASSUMED: 25 HB units (minimum) | MoWT Vol 4 Section 6.3 |
| Uganda wind speed | 100 km/h | Typical, not near coast | ASSUMED: V_Uganda = 100 km/h (typical). Check Figure 2 for site-specific value | MoWT Vol 4 Figure 2 |
| Wind adjustment factor | 0.625 | V = 100 km/h | No flag if default V used | 100/160 = 0.625 per Section 5.3.1.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| HA UDL (L <= 30m) | 29.5 | 30.5 | kN/m | Table 13 | Must be 30.0 kN/m |
| HA UDL (L = 50m) | 22 | 25 | kN/m | Table 13 (49m = 23.8, 52m = 23.1) | Check against Table 13 |
| HB units | 25 | 45 | units | Section 6.3 | Below 25 not permitted for public highways |
| gamma_fL HA alone ULS Comb 1 | 1.45 | 1.55 | -- | Table 1 | Must be 1.50 |

### M.5.2 Standards Compliance Checks

- **Check:** HA UDL formula domain applied correctly
- **Standard:** MoWT Vol 4, Section 6.2.1
- **Pass condition:** W = 30.0 for L <= 30m; formula used only for L > 30m
- **Fail action:** ERROR -- Wrong HA UDL formula domain. W must be 30.0 kN/m for L = [X]m (<= 30m).

- **Check:** Seismic zone determined for all Uganda bridges
- **Standard:** MoWT Vol 4, Section 9 and Figure 9-1
- **Pass condition:** Seismic zone stated and appropriate provisions applied
- **Fail action:** SENIOR REVIEW -- Seismic zone not determined. Check MoWT Vol 4 Figure 9-1 for site location.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. Where HB units exceed the minimum 25, this must be directed by the appropriate authority (typically UNRA for trunk roads). The engineer documents justification in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Site in seismic Zone 1 (A = 0.15) | Full seismic analysis required | SENIOR REVIEW -- Site in Zone 1 per Figure 9-1. SPC 3 likely. Full seismic analysis per Section 9 required. |
| Overloaded corridor (P85 > 1.3 * legal) | Actual loads exceed design basis | SENIOR REVIEW -- Surveyed P85 axle load [X]t exceeds legal limit [Y]t by [Z]%. Consider HB [units] or actual load spectrum. Refer Skill #4. |
| HB > 25 units specified | Higher abnormal load requirement | NOTE -- [X] HB units specified. Total abnormal vehicle load = [Y] kN. Verify with road authority. |

---

## M.7 Worked Example -- Uganda

### Example: 25m Simply Supported Bridge Loading

**Source:** Practice-based scenario using MoWT Vol 4 provisions.

**Given:**
- 25m simply supported bridge
- Carriageway width: 7.3m (2 notional lanes per Table UBL.1)
- HB: 25 units
- Site wind speed: 100 km/h (typical Uganda)
- Central Uganda (seismic Zone 2, A = 0.07)

**Solution:**

**Step 1 -- Notional lanes:**
Carriageway 7.3m: falls in 4.6-7.6m range --> 2 notional lanes.

**Step 2 -- HA loading:**
Loaded length L = 25m (<= 30m), therefore:
W = 30.0 kN/m per notional lane
KEL = 120 kN per notional lane

Total HA UDL per lane = 30.0 * 25 = 750 kN
Total HA per lane (UDL + KEL) = 750 + 120 = 870 kN
Total HA (2 lanes, full on 2, one-third on others -- but only 2 lanes): 870 * 2 = 1,740 kN

**Step 3 -- HB loading:**
25 units: 25 * 10 = 250 kN per axle, 4 axles = 1,000 kN...

Actually: 1 unit = 10 kN per axle. So 25 units = 250 kN per axle. 4 axles = 1,000 kN total.

Wait -- let me recalculate. 1 unit = 10 kN per axle total. So:
- 25 units means each axle carries 25 * 10 = 250 kN? No.
- 1 unit of HB = 10 kN per axle. The "unit" scales all axles: for N units, each axle = N * 10 kN.
- 25 units: each axle = 250 kN. Total 4 axles = 1,000 kN.

Correction per MoWT Vol 4 Section 6.3.1: "One unit shall be taken as equal to 10 kN per axle (i.e. 2.5 kN per wheel)." So 25 units = 25 * 10 kN/axle = 250 kN per axle, which gives 4 * 250 = 1,000 kN total... but this seems very high. Let me re-read.

The standard practice for HB is: total HB load = 4 * N * 10 kN. For 25 units: 4 * 25 * 10 = 1,000 kN. But conventionally, "25 units of HB" means each axle = 25 * 10 = 250 kN.

Actually, the conventional reading is: 1 unit = 10 kN per axle. 25 units = 250 kN per axle. 4 axles. Total = 1,000 kN.

For preliminary design, this is correct per the manual text.

HB 25 units:
- Per axle: 250 kN (25 * 10)
- Per wheel: 62.5 kN (25 * 2.5)
- Total vehicle: 1,000 kN
- Inner spacing: test 6, 11, 16, 21, 26m for worst effect

**Step 4 -- Load factors (Combination 1 -- ULS):**
From `tables/uganda_load_combinations.json`:

| Load | gamma_fL (ULS) | gamma_fL (SLS) |
|------|---------------|---------------|
| Dead (concrete) | 1.15 | 1.00 |
| Superimposed dead | 1.75 | 1.20 |
| HA alone | 1.50 | 1.20 |
| HA with HB | 1.30 | 1.10 |
| HB | 1.30 | 1.10 |
| Earth pressure | 1.50 | 1.00 |

**Step 5 -- Wind loads:**
Adjustment factor = 100/160 = 0.625
Base pressure (beams) = 0.0024 MPa
Adjusted = 0.0024 * 0.625 = 0.0015 MPa
For 25m span, low bridge height (~5m), wind loads will be small relative to live loads.
Wind is unlikely to govern for this bridge.

**Step 6 -- Seismic check:**
Central Uganda, Zone 2: A = 0.07
IC = II (standard bridge), SPC from Table 9.2: for A = 0.07, IC = II --> SPC = 2
SPC 1 and 2: no detailed seismic analysis required.
Connections must resist horizontal force = 0.20 * dead load reaction.

**Result:**

| Parameter | Value |
|-----------|-------|
| HA UDL | 30.0 kN/m per lane |
| HA KEL | 120 kN per lane |
| Notional lanes | 2 |
| HB units | 25 (250 kN/axle, 1,000 kN total) |
| Combination 1 ULS: gamma_fL HA alone | 1.50 |
| Combination 1 ULS: gamma_fL dead (concrete) | 1.15 |
| Seismic | Zone 2, SPC 2, no detailed analysis |
| Wind adjustment | 0.625 (rarely governs) |

NOTE -- If this bridge is on a heavily overloaded corridor, consider increasing HB units based on Skill #4 axle load survey data.

---

## M.8 References

1. Ministry of Works and Transport, *Road Design Manual, Volume 4: Bridge Design*, January 2010, Sections 3-9.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- HA/HB loading, load factors from Table 1, wind adjustment, seismic zones, overloading context. Tables verified against MoWT Vol 4 PDF. |
