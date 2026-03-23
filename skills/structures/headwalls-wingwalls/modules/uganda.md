# Headwalls & Wingwalls -- Uganda Module

> **Parent Skill:** #34 Headwalls & Wingwalls
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol 4 (Bridge Design, January 2010, Section 5.8); Vol 2 (Drainage Design, Section 9)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 4 | January 2010 | Section 5.8 (Earth Pressure on Retaining Structures), Table 1 (Load Factors) | Current |
| MoWT Road Design Manual Vol 2 | January 2010 | Section 9 (Culvert Details and End Structures) | Current |
| BS 5400 Part 4 | As referenced by MoWT Vol 4 | Concrete design for wingwall reinforcement | Referenced |
| CP 2004 | As referenced by MoWT Vol 4, Section 4.7 | Foundation design for wingwall base | Referenced (older code) |

### M.1.2 Institutional Context

Headwall and wingwall design in Uganda follows MoWT Vol 4 for structural loading (earth pressure, surcharge) and MoWT Vol 2 Section 9 for standard culvert end structure details. UNRA uses standard details for culverts up to 1200 mm diameter. Larger culverts and box culverts require designed headwalls and wingwalls.

### M.1.3 Standard Philosophy

MoWT Vol 2, Section 9 provides standard culvert details including end structures (headwalls, wingwalls, apron slabs) for common culvert sizes. These standard details have been proven in practice and should be used where applicable. For non-standard situations (large culverts, deep fill, unusual geometry), the earth pressure provisions of MoWT Vol 4, Section 5.8 apply -- the same gamma_fL = 1.50 (ULS) earth pressure factor used for culvert structural design and bridge abutments.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UH.1: Standard Headwall Configurations (MoWT Vol 2, Section 9, Practice-Based)**

| Culvert Size | Headwall Type | Wingwall | Notes |
|-------------|---------------|----------|-------|
| Pipe <= 600 mm | Standard straight, 200 mm thick | None or short parallel | Standard detail from Vol 2 |
| Pipe 600-1200 mm | Standard straight, 250 mm thick | Short 45-degree flared | Standard detail from Vol 2 |
| Box 900-1500 mm | Designed straight, 300 mm thick | 45-degree flared, designed | Structural design required |
| Box > 1500 mm | Designed (straight or flared) | 45-degree flared, designed | Full structural design required |

**Table UH.2: Earth Pressure Parameters for Wingwall Design (MoWT Vol 4, Section 5.8)**

| Parameter | Value | Source |
|-----------|-------|--------|
| gamma_fL (ULS) | 1.50 | MoWT Vol 4, Table 1 |
| gamma_fL (SLS) | 1.00 | MoWT Vol 4, Table 1 |
| Surcharge (HA) | 10 kN/m2 | MoWT Vol 4, Section 5.8.2 |
| Surcharge (HB 25 units) | 10 kN/m2 | MoWT Vol 4, Section 5.8.2 |
| Surcharge (HB 45 units) | 20 kN/m2 | MoWT Vol 4, Section 5.8.2 |
| Ka (typical, phi' = 30 deg) | 0.33 | Standard soil mechanics |
| gamma_soil (typical fill) | 19 kN/m3 | Typical compacted fill |

### M.2.2 Country-Specific Formulas

**Wingwall earth pressure (per MoWT Vol 4, Section 5.8):**

```
Nominal active earth pressure at depth z:
  P_a(z) = Ka x gamma_soil x z + Ka x q_surcharge

Design earth pressure (ULS):
  P_a_design(z) = gamma_fL x [Ka x gamma_soil x z + Ka x q_surcharge]
                = 1.50 x [Ka x gamma_soil x z + Ka x q_surcharge]
```

**Overturning moment about toe (per unit length of wingwall):**

```
M_overturn = gamma_fL x [0.5 x Ka x gamma_soil x H^3 / 3 + Ka x q_surcharge x H^2 / 2]
```

Where H = retained height of wingwall.

**Restoring moment (using nominal loads per MoWT Vol 4, Section 4.6):**

```
M_restore = W_wall x d_wall + W_base x d_base + W_fill_on_heel x d_heel
```

Where W = weights, d = lever arms from toe. Per MoWT Vol 4, Section 4.6: restoring moment uses unfactored nominal loads; overturning moment uses factored design loads (gamma_fL x nominal).

### M.2.3 Classification System

Uganda classifies culvert end structures as:
- **Standard details:** Pre-designed headwalls and wingwalls from MoWT Vol 2, Section 9 for culverts up to 1200 mm
- **Designed end structures:** Custom-designed headwalls and wingwalls for culverts > 1200 mm or non-standard conditions

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Headwall type selection
  |-- Pipe culvert <= 600 mm --> Standard headwall from MoWT Vol 2
  |-- Pipe culvert 600-1200 mm --> Standard headwall with short wingwalls
  |-- Box culvert or pipe > 1200 mm --> Designed headwall and wingwalls
  +-- Use standard details where available to avoid unnecessary design effort

Step 5 (Uganda): Earth pressure on wingwall
  |-- gamma_fL = 1.50 (ULS) per MoWT Vol 4, Table 1
  |-- Surcharge from Table UH.2 based on loading class
  |-- Ka from site soil data (default 0.33 for phi' = 30 deg)
  +-- Same earth pressure principles as culvert wall design (Skill #33)

Step 6 (Uganda): Wingwall stability
  |-- Overturning: MoWT Vol 4, Section 4.6 approach
  |   (restoring moment from nominal loads > overturning from design loads)
  |-- Sliding: check at base with friction coefficient
  |-- Bearing: check against Skill #10 data, per CP 2004 (gamma_fL = 1.0)
  +-- Foundation design per CP 2004 as referenced by MoWT Vol 4
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Use standard details wherever possible.** MoWT Vol 2, Section 9 provides proven standard details for common culvert end structures. These save design time, are familiar to local contractors, and have a track record of satisfactory performance.

**Uganda soils can be challenging for wingwall foundations.** In areas with expansive clays (common in central Uganda) or soft alluvial soils near watercourses, wingwall foundations may require improvement. Consider blinding concrete, wider bases, or shallow improvement.

**Gabion headwalls are an alternative for remote locations.** In areas where reinforced concrete construction is difficult (remote sites, limited cement supply), gabion basket headwalls and wingwalls provide a viable alternative. These are locally constructed using available stone and wire mesh.

**Erosion at culvert outlets is the most common failure mode.** In Uganda's intense tropical rainfall, outlet scour is a persistent problem. Always specify adequate outlet protection -- gabion baskets, riprap, or concrete apron with energy dissipation. Reference Skill #32 for detailed scour protection design.

### M.3.3 Common Errors (Uganda-Specific)

1. **Designing custom headwalls for small culverts.** Standard details from MoWT Vol 2 are available for culverts up to 1200 mm -- use them rather than designing from scratch.
2. **Forgetting wingwall earth pressure.** Even for moderate fill depths (1-2 m), the earth pressure on wingwalls is significant. They must be designed as retaining walls.
3. **Neglecting outlet erosion protection.** The most common culvert failure in Uganda is outlet scour undermining the headwall. Always specify protection per Skill #32.
4. **Using the wrong gamma_fL for stability check.** MoWT Vol 4, Section 4.6 specifies that the restoring moment uses unfactored loads while the overturning moment uses factored loads (gamma_fL x nominal). Do not factor both sides.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Wingwall angle | 45 degrees | Standard configuration | ASSUMED: 45-degree flared wingwalls | MoWT Vol 2, Section 9 standard detail |
| Wingwall Ka | 0.33 | phi' = 30 degrees | ASSUMED: Ka = 0.33, phi' = 30 deg | Typical compacted fill |
| Surcharge | 10 kN/m2 (HA) | Standard roads | ASSUMED: HA surcharge 10 kN/m2 | MoWT Vol 4, Section 5.8.2 |
| Apron slab thickness | 250 mm | Standard | ASSUMED: 250 mm apron slab | Common practice |
| Concrete grade | C25/30 | Not specified | ASSUMED: C25/30 concrete | Common Uganda practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Earth pressure gamma_fL (ULS) | 1.50 | 1.50 | -- | MoWT Vol 4, Table 1 | Reject if != 1.50 |
| FoS overturning | 2.0 | -- | -- | Standard practice | Flag if < 2.0 |
| FoS sliding | 1.5 | -- | -- | Standard practice | Flag if < 1.5 |

### M.5.2 Standards Compliance Checks

- **Check:** Gamma_fL = 1.50 for earth pressure at ULS
- **Standard:** MoWT Vol 4, Table 1
- **Pass condition:** 1.50 applied to all earth pressure loads
- **Fail action:** SENIOR REVIEW -- Incorrect earth pressure load factor.

- **Check:** Stability analysis per MoWT Vol 4, Section 4.6
- **Standard:** MoWT Vol 4, Section 4.6
- **Pass condition:** Restoring moment (nominal) > overturning moment (factored)
- **Fail action:** SENIOR REVIEW -- Wingwall overturning check fails.

### M.5.3 Departures / Relaxations Process

No formal departures process for culvert end structures. Non-standard configurations should be justified in the design report and approved by the supervising engineer.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Wingwall height > 3 m | Significant retaining wall | SENIOR REVIEW -- Wingwall retained height [H] m. Detailed retaining wall design required per MoWT Vol 4, Section 5.8 principles. |
| Outlet velocity > 4 m/s | Erosion risk | NOTE -- High outlet velocity [V] m/s. Specify erosion protection per Skill #32. Gabion baskets or riprap recommended for Uganda conditions. |
| Expansive clay foundation | Settlement and movement risk | NOTE -- Expansive clay soils at wingwall foundation. Consider lime stabilisation, over-excavation, or flexible gabion construction. |

---

## M.7 Worked Example -- Uganda

### Example: Headwall and Wingwalls for 2.0m x 1.5m Box Culvert, 1.2m Fill

**Source:** MoWT Vol 4 earth pressure provisions

**Given:**
- Culvert from Skill #33: 2000 mm x 1500 mm RC box, slab 300 mm, wall 250 mm
- Fill depth: 1.2 m
- Loading: HA (surcharge 10 kN/m2)
- phi' = 30 degrees (Ka = 0.33), gamma_soil = 19 kN/m3
- Bearing capacity: 100 kPa (from Skill #10)
- 45-degree flared wingwalls selected

**Solution:**

**Step 1 -- Headwall height:**
- H_headwall = fill_depth + culvert_rise + top_slab = 1.2 + 1.5 + 0.3 = 3.0 m
- Headwall extends from culvert invert to road surface level

**Step 2 -- Headwall width:**
- Width at culvert = culvert span + 2 x wall thickness + 2 x 300 mm (overhang) = 2000 + 500 + 600 = 3100 mm
- Headwall thickness: 350 mm (designed, for 3.0 m height)

**Step 3 -- Wingwall configuration:**
- 45-degree flared wingwalls
- Height at headwall junction: 3.0 m (same as headwall)
- Height at tip: 0.6 m (minimum, for channel bank retention)
- Wingwall length: approximately 3.0 m (to achieve taper from 3.0 m to 0.6 m)

**Step 4 -- Earth pressure on wingwall at headwall junction (maximum retained height = 3.0 m):**
- Active earth pressure at base:
  - P_a = Ka x gamma_soil x H + Ka x q_surcharge
  - P_a = 0.33 x 19 x 3.0 + 0.33 x 10 = 18.81 + 3.30 = 22.1 kN/m2 (nominal)
- Design P_a (ULS) = 1.50 x 22.1 = 33.2 kN/m2

**Step 5 -- Overturning check (per metre of wingwall, at maximum height section):**
- Total active force = 0.5 x Ka x gamma_soil x H^2 + Ka x q_surcharge x H
  = 0.5 x 0.33 x 19 x 3.0^2 + 0.33 x 10 x 3.0
  = 28.2 + 9.9 = 38.1 kN/m (nominal)
- Design overturning moment about toe (ULS):
  = 1.50 x [0.5 x 0.33 x 19 x 3.0^3 / 3 + 0.33 x 10 x 3.0^2 / 2]
  = 1.50 x [28.2 + 14.85] = 1.50 x 43.05 = 64.6 kNm/m

- Assume wingwall base width = 2.0 m, wall thickness varying 350 mm (base) to 250 mm (top)
- Restoring moment (nominal, unfactored):
  - Wall self-weight: approx. 24 x 0.3 x 3.0 = 21.6 kN/m, lever arm ~ 0.65 m from toe = 14.0 kNm/m
  - Base slab: 24 x 0.4 x 2.0 = 19.2 kN/m, lever arm = 1.0 m = 19.2 kNm/m
  - Fill on heel: 19 x 3.0 x 1.3 = 74.1 kN/m, lever arm = 1.35 m = 100.0 kNm/m
  - Total restoring = 14.0 + 19.2 + 100.0 = 133.2 kNm/m

- FoS overturning = 133.2 / 64.6 = 2.06 -- PASS (>= 2.0)

**Step 6 -- Bearing pressure:**
- Total vertical load (nominal) = 21.6 + 19.2 + 74.1 = 114.9 kN/m
- Net moment about centre of base: 133.2 - (64.6/1.50 x from nominal) -- simplified check
- Approximate bearing pressure = 114.9 / 2.0 = 57.5 kPa (nominal, uniform estimate)
- Allowable = 100 kPa -- PASS

**Step 7 -- Apron slab:**
- Length = 1.5 x 1.5 m (culvert height) = 2.25 m, use 2.5 m
- Width = headwall width = 3.1 m
- Thickness = 250 mm

**Step 8 -- Erosion protection:**
- Outlet velocity (from Skill #31): assume 2.5 m/s
- Erosion protection: riprap or gabion baskets downstream of apron slab
- Reference Skill #32 for detailed scour protection design

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Headwall type | Designed straight | |
| Headwall height | 3.0 m | |
| Headwall thickness | 350 mm | Preliminary |
| Wingwall angle | 45 degrees | |
| Wingwall height (max) | 3.0 m | |
| Wingwall base width | 2.0 m | |
| FoS overturning | 2.06 | PASS (>= 2.0) |
| Bearing pressure | ~57.5 kPa | PASS (allowable 100 kPa) |
| Apron slab | 2.5 m x 3.1 m x 250 mm | |
| Erosion protection | Riprap/gabion at outlet | Per Skill #32 |

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 4: Bridge Design*, January 2010, Section 5.8 (Earth Pressure on Retaining Structures), Section 4.6 (Overturning), Table 1 (Load Factors).
2. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 2: Drainage Design*, January 2010, Section 9 (Culvert Details and End Structures).
3. BS 5400: Part 4 -- as referenced by MoWT Vol 4 for concrete design of wingwalls.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- earth pressure gamma_fL = 1.50 per MoWT Vol 4 Table 1, surcharge values from Section 5.8.2, standard headwall configurations from MoWT Vol 2 Section 9 |
