# Culvert Structural Design -- Uganda Module

> **Parent Skill:** #33 Culvert Structural Design
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol 4 (Bridge Design, January 2010); Vol 2 (Drainage Design, Section 9)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 4 | January 2010 | Section 5.8 (Earth Pressure on Retaining Structures), Table 1 (Load Factors/Combinations), Sections 4-6 (Loading) | Current -- primary standard for all bridges and structures in Uganda |
| MoWT Road Design Manual Vol 2 | January 2010 | Section 9 (Culvert Hydraulics -- cross-reference for culvert details) | Current -- drainage design standard |
| BS 5400 Part 4 | As referenced by MoWT Vol 4 | Concrete design provisions for structural members | Referenced by MoWT Vol 4 for material design |
| CP 2004 | As referenced by MoWT Vol 4, Section 4.7 | Foundation design principles | Older code -- noted as reference specified by MoWT Vol 4 |

### M.1.2 Institutional Context

MoWT Road Design Manual Vol 4 is the national standard for bridge and structural design in Uganda. It is an adaptation of BS 5400: Part 2 (Loading) with Uganda-specific modifications. UNRA applies this standard for all national roads. For culvert structural design, the relevant provisions are:
- Earth pressure and surcharge from Section 5.8
- Load factors and combinations from Table 1
- Foundation design principles from CP 2004 (as referenced by Section 4.7)

### M.1.3 Standard Philosophy

MoWT Vol 4 uses a limit state design approach with partial load factors (gamma_fL). The manual specifies nominal loads multiplied by gamma_fL to obtain design loads. For culvert structural design, the key load factors are:
- Earth pressure: gamma_fL = 1.50 (ULS), 1.00 (SLS) for all five load combinations
- Dead load (concrete): gamma_fL = 1.15 (ULS), 1.00 (SLS)
- Superimposed dead load: gamma_fL = 1.75 (ULS), 1.20 (SLS)

The manual references BS 5400 Part 4 for concrete structural design (reinforcement, detailing) but the loading provisions are self-contained in Vol 4.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Loading Data:** Reference JSON table for culvert-specific loading data.

--> `tables/uganda_culvert_loading.json`

Contains earth pressure factors, live load surcharge values, fill depth classification, and pipe bedding class data extracted from MoWT Vol 4.

**Table UC.1: Live Load Surcharge Values (MoWT Vol 4, Section 5.8.2, Verified)**

| Loading Type | Surcharge (kN/m2) | Source |
|--------------|-------------------|--------|
| HA loading | 10 | MoWT Vol 4, Section 5.8.2 |
| HB 25 units | 10 | MoWT Vol 4, Section 5.8.2 |
| HB 45 units | 20 | MoWT Vol 4, Section 5.8.2 |

**Table UC.2: Earth Pressure Load Factors (MoWT Vol 4, Table 1, Verified)**

| Load Type | ULS gamma_fL | SLS gamma_fL | Applies to |
|-----------|-------------|-------------|------------|
| Earth pressure: retained fill and/or live load surcharge | 1.50 | 1.00 | All 5 combinations |
| Earth pressure: relieving effect | 1.00 | 1.00 | All 5 combinations |
| Dead load (concrete) | 1.15 | 1.00 | All 5 combinations |
| Superimposed dead load | 1.75 | 1.20 | All 5 combinations |

**Table UC.3: Preliminary Sizing Guide for RC Box Culverts (Practice-Based)**

| Span (mm) | Typical Slab Thickness (mm) | Typical Wall Thickness (mm) | Standard Fill Range (m) |
|-----------|----------------------------|----------------------------|------------------------|
| 900-1200 | 200-250 | 200-250 | 0.6-3.0 |
| 1200-2000 | 250-350 | 250-300 | 0.6-3.0 |
| 2000-3000 | 300-450 | 250-350 | 0.6-3.0 |
| 3000-4000 | 400-550 | 300-400 | 0.6-3.0 |

These are approximate starting points for preliminary design. Final sizes depend on loading, fill depth, and detailed analysis.

### M.2.2 Country-Specific Formulas

**Earth pressure on culvert walls (per MoWT Vol 4, Section 5.8):**

The nominal earth pressure from filling material is calculated from soil mechanics principles. MoWT Vol 4 Section 5.8.1 states that the nominal load due to filling material shall be calculated using earth pressure coefficients from soil mechanics. The design load is obtained by multiplying the nominal load by gamma_fL = 1.50 (ULS) or 1.00 (SLS).

```
Design P_h (ULS) = 1.50 x K x gamma_soil x z + 1.50 x K x q_surcharge
Design P_h (SLS) = 1.00 x K x gamma_soil x z + 1.00 x K x q_surcharge
```

**Live load surcharge (per MoWT Vol 4, Section 5.8.2):**

The nominal surcharge is applied as an equivalent uniform load behind the retaining structure. For HA loading: 10 kN/m2. For HB 45 units: 20 kN/m2.

```
Nominal surcharge on wall = K x q_surcharge
Design surcharge on wall (ULS) = 1.50 x K x q_surcharge
```

**Box culvert moment coefficients (simplified method for single-cell, uniform loading):**

For a single-cell box culvert with equal slab and wall thicknesses under uniform vertical load w:

```
Corner moment (hogging): M_corner = w x L^2 / 12 (approximate, fixed-fixed beam)
Mid-span moment (sagging): M_midspan = w x L^2 / 24 (approximate)
```

Where L = clear span of top slab. These are approximate values for preliminary sizing. Detailed analysis using moment distribution or stiffness methods gives more accurate results considering the relative stiffness of slabs and walls.

**Pipe bedding factor method:**

```
Required pipe test strength = Field load / Bedding factor (Fm)
```

Where field load = vertical load per unit length of pipe from earth pressure plus live load surcharge.

### M.2.3 Classification System

MoWT does not have a specific culvert structural classification system beyond the general bridge loading classifications. Culverts are designed for the same HA/HB loading as bridges. The relevant classification for structural design is:
- **Loading class:** HA (normal traffic) or HB (abnormal vehicles, 25-45 units)
- **Fill depth:** Shallow / Standard / Deep (as defined in SKILL.md Section 1.1)
- **Culvert type:** RC box (single/multi-cell), pipe (precast concrete), CMP

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 3 (Uganda): Earth pressure calculation
  |-- Use gamma_fL = 1.50 (ULS) for earth pressure per Table 1
  |-- K0 = 0.5 for at-rest conditions (rigid box culverts)
  |-- gamma_soil: use actual measured value; default 19 kN/m3 if unknown
  +-- Apply surcharge from Table UC.1

Step 4 (Uganda): Live load surcharge
  |-- Default to HA loading (10 kN/m2) for standard roads
  |-- Use HB 45 units (20 kN/m2) for national roads with heavy traffic
  +-- Surcharge applied as uniform pressure behind wall

Step 6 (Uganda): Bearing pressure check
  |-- Use bearing capacity from Skill #10 (MoWT-based subgrade data)
  |-- Foundation design per CP 2004 principles (as referenced by
  |   MoWT Vol 4, Section 4.7)
  |-- For CP 2004: use nominal loads (gamma_fL = 1.0, gamma_f3 = 1.0)
  +-- If bearing inadequate: consider blinding concrete, wider base,
      or geotextile separation (connects to Skill #10)
```

### M.3.2 Professional Judgment (Uganda-Specific)

**RC box culverts are the standard choice for Uganda.** Uganda practice favours RC box culverts for spans greater than 900 mm and pipe culverts for smaller sizes. This is because:
- Local construction capability is well-suited to in-situ RC construction
- Precast pipe availability may be limited outside major centres (Kampala, Jinja)
- Box culverts can be built with locally sourced materials (cement, aggregate, reinforcement)

**Corrugated metal pipes are used on low-volume roads.** CMP culverts are specified by some agencies for rural and district roads where speed of installation is important. Durability concerns exist in acidic soils (common in western Uganda).

**Overloading must be considered.** East African truck corridors routinely carry axle loads 50-100% above legal limits (Skill #4). While MoWT Vol 4 uses HA/HB loading for structural design, the designer should consider HB 45-unit loading (20 kN/m2 surcharge) on major freight corridors rather than HA loading (10 kN/m2).

**MoWT Vol 2, Section 9 provides standard culvert details.** This includes typical cross-sections for RC box culverts at various spans, which can be used as reference for preliminary sizing.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using HA surcharge on national roads carrying heavy freight.** On the Northern Corridor (Kampala-Jinja-Malaba) and other major freight routes, HB 45-unit surcharge (20 kN/m2) is more appropriate than HA (10 kN/m2).
2. **Not referencing CP 2004 for foundation design.** MoWT Vol 4, Section 4.7 explicitly requires foundation design per CP 2004 principles. Use nominal loads (gamma_fL = 1.0) for foundation checks per this reference.
3. **Ignoring the gamma_fL = 1.50 factor on earth pressure.** This is a common error -- applying unfactored earth pressure at ULS. MoWT Vol 4 Table 1 clearly specifies gamma_fL = 1.50 for earth pressure at ULS.
4. **Independently citing BS 5400 Part 4 without referencing MoWT Vol 4.** The correct citation chain is: "BS 5400 Part 4, as referenced by MoWT Vol 4" -- not standalone BS 5400.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Loading class | HA | Standard roads | ASSUMED: HA loading (10 kN/m2 surcharge) | MoWT Vol 4, Section 5.8.2 |
| Loading class | HB 45 units | National roads, heavy freight | ASSUMED: HB 45-unit loading (20 kN/m2 surcharge) for national road | MoWT Vol 4, Section 5.8.2 |
| Earth pressure K | K0 = 0.5 | Box culvert, at-rest | ASSUMED: K0 = 0.5 for rigid box culvert | Standard practice for rigid structures |
| Fill unit weight | 19 kN/m3 | Not specified | ASSUMED: gamma_soil = 19 kN/m3 | Typical compacted fill in Uganda |
| Concrete grade | C25/30 | Not specified | ASSUMED: C25/30 concrete | Common grade for culvert construction in Uganda |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Earth pressure gamma_fL (ULS) | 1.50 | 1.50 | -- | MoWT Vol 4, Table 1 | Reject if != 1.50 |
| Surcharge (HA) | 10 | 10 | kN/m2 | MoWT Vol 4, Section 5.8.2 | Reject if != 10 |
| Surcharge (HB 45) | 20 | 20 | kN/m2 | MoWT Vol 4, Section 5.8.2 | Reject if != 20 |
| Min slab thickness | 200 | -- | mm | Practice minimum | Warn if < 200 mm |
| Min wall thickness | 200 | -- | mm | Practice minimum | Warn if < 200 mm |

### M.5.2 Standards Compliance Checks

- **Check:** Earth pressure load factor gamma_fL = 1.50 at ULS
- **Standard:** MoWT Vol 4, Table 1
- **Pass condition:** gamma_fL = 1.50 applied to all earth pressure loads at ULS
- **Fail action:** SENIOR REVIEW -- Incorrect earth pressure load factor applied.

- **Check:** Live load surcharge correct for loading class
- **Standard:** MoWT Vol 4, Section 5.8.2
- **Pass condition:** HA = 10 kN/m2, HB 25 = 10 kN/m2, HB 45 = 20 kN/m2
- **Fail action:** SENIOR REVIEW -- Incorrect surcharge value for [loading class].

- **Check:** Foundation design uses CP 2004 principles with nominal loads
- **Standard:** MoWT Vol 4, Section 4.7
- **Pass condition:** gamma_fL = 1.0 and gamma_f3 = 1.0 for foundation design
- **Fail action:** NOTE -- MoWT Vol 4 specifies CP 2004 for foundation design. Use nominal loads.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. Where design cannot meet the standard, the engineer documents justification and consults with the Engineer-In-Chief, MoWT. For culvert structural design, departures from standard practice (e.g., reduced cover, non-standard bedding) should be justified in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Fill depth < 600 mm | Shallow cover requires special analysis | SENIOR REVIEW -- Fill depth [H] mm is less than 600 mm (shallow). Concentrated wheel load analysis required per MoWT Vol 4. Consider Class A bedding for pipe culverts. |
| HB 45-unit loading on major corridor | High surcharge design load | NOTE -- HB 45-unit loading specified. Surcharge 20 kN/m2 applied per MoWT Vol 4, Section 5.8.2. |
| Bearing pressure exceeds CBR-based capacity | Foundation concern | SENIOR REVIEW -- Foundation design per CP 2004 (as referenced by MoWT Vol 4, Section 4.7). Bearing pressure [q] kPa exceeds allowable. Consider foundation improvement. |
| Detailed reinforcement required | Beyond preliminary design scope | SENIOR REVIEW -- Preliminary member sizes established. Detailed reinforcement design per BS 5400 Part 4 (as referenced by MoWT Vol 4) required by specialist structural engineer. |

---

## M.7 Worked Example -- Uganda

### Example 1: 2.0m x 1.5m RC Box Culvert, 1.2m Fill, HA Loading

**Source:** MoWT Vol 4 loading provisions applied to standard box culvert

**Given:**
- Culvert size from Skill #31: 2000 mm span x 1500 mm rise (single-cell RC box)
- Fill depth: 1.2 m (standard cover)
- Loading: HA (national road, non-heavy-freight corridor)
- Subgrade: S3 (CBR 6%), bearing capacity 100 kPa (from Skill #10)
- Fill unit weight: 19 kN/m3
- K0 = 0.5 (at-rest, rigid box culvert)

**Solution:**

**Step 1 -- Earth pressure on top slab:**
- Nominal P_v = gamma_soil x H = 19 x 1.2 = 22.8 kN/m2
- Design P_v (ULS) = 1.50 x 22.8 = 34.2 kN/m2

**Step 2 -- Live load surcharge on top slab:**
- HA surcharge (MoWT Vol 4, Section 5.8.2) = 10 kN/m2
- Design surcharge (ULS) = 1.50 x 10 = 15.0 kN/m2

**Step 3 -- Total vertical design load on top slab (ULS):**
- Self-weight of top slab (assume 300 mm thick): 1.15 x 24 x 0.3 = 8.3 kN/m2
- Total = 34.2 + 15.0 + 8.3 = 57.5 kN/m2

**Step 4 -- Horizontal earth pressure at base of wall (ULS):**
- Depth to base = 1.2 + 1.5 + 0.3 (top slab) + 0.3 (base slab) = 3.3 m
- Nominal P_h at base = K0 x gamma_soil x 3.3 + K0 x 10 = 0.5 x 19 x 3.3 + 0.5 x 10 = 31.35 + 5.0 = 36.35 kN/m2
- Design P_h at base (ULS) = 1.50 x 36.35 = 54.5 kN/m2

**Step 5 -- Preliminary slab thickness:**
- Span/12 = 2000/12 = 167 mm (too thin)
- Span/10 = 2000/10 = 200 mm (minimum)
- Select 300 mm (provides adequate depth for bending and shear)

**Step 6 -- Preliminary wall thickness:**
- Select 250 mm (slightly less than slab, adequate for horizontal pressure over 1.5 m height)

**Step 7 -- Approximate mid-span moment in top slab (ULS):**
- Total UDL on top slab = 57.5 kN/m2
- M_midspan = w x L^2 / 24 = 57.5 x 2.0^2 / 24 = 9.6 kNm/m (approx.)
- M_corner = w x L^2 / 12 = 57.5 x 2.0^2 / 12 = 19.2 kNm/m (approx.)

**Step 8 -- Bearing pressure check:**
- Total vertical load per metre run:
  - Earth on top: 22.8 x 2.0 = 45.6 kN/m
  - Surcharge on top: 10 x 2.0 = 20.0 kN/m
  - Self-weight of culvert: approx. 24 x [(2 x 0.3 x 2.0) + (2 x 0.25 x 1.5)] = 24 x [1.2 + 0.75] = 46.8 kN/m
  - Total = 45.6 + 20.0 + 46.8 = 112.4 kN/m (nominal)
- Base width = 2.0 + 2 x 0.25 = 2.5 m
- Bearing pressure = 112.4 / 2.5 = 45.0 kPa
- Allowable = 100 kPa (from Skill #10)
- Status: PASS (45.0 < 100)

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Top slab thickness | 300 mm | Preliminary |
| Bottom slab thickness | 300 mm | Preliminary |
| Wall thickness | 250 mm | Preliminary |
| Corner moment (ULS) | ~19.2 kNm/m | Approximate |
| Mid-span moment (ULS) | ~9.6 kNm/m | Approximate |
| Bearing pressure | 45.0 kPa | PASS (allowable 100 kPa) |

SENIOR REVIEW -- Preliminary member sizes determined. Detailed reinforcement design per BS 5400 Part 4 (as referenced by MoWT Vol 4) required by specialist structural engineer.

### Example 2: 900mm Diameter Pipe Culvert, Class B Bedding, 2.5m Fill

**Source:** Standard bedding factor method

**Given:**
- Culvert size from Skill #31: 900 mm diameter precast concrete pipe
- Fill depth: 2.5 m (standard cover)
- Loading: HA
- Class B bedding selected (granular, 180 degrees, Fm = 2.2)
- Fill unit weight: 19 kN/m3

**Solution:**

**Step 1 -- Vertical earth load on pipe:**
- P_v = gamma_soil x H x D_e = 19 x 2.5 x 0.9 = 42.75 kN/m (per metre of pipe)
  (Note: for a pipe in an embankment, Marston theory may give higher values. Using prism load as preliminary estimate.)

**Step 2 -- Live load surcharge on pipe:**
- Surcharge intensity at surface: 10 kN/m2 (HA)
- Load on pipe: 10 x 0.9 = 9.0 kN/m

**Step 3 -- Total field load:**
- W_field = 42.75 + 9.0 = 51.75 kN/m

**Step 4 -- Required pipe supporting strength:**
- W_required = W_field / Fm = 51.75 / 2.2 = 23.5 kN/m

**Step 5 -- Select pipe class:**
- A standard 900 mm precast concrete pipe (BS 5911 Class S or stronger) with test strength exceeding 23.5 kN/m is required. Standard pipe classes typically provide 25-50 kN/m test strength for this diameter, so Class S or H is likely adequate.

**Result:**

| Parameter | Value |
|-----------|-------|
| Pipe diameter | 900 mm |
| Fill depth | 2.5 m |
| Bedding class | B (Fm = 2.2) |
| Total field load | 51.75 kN/m |
| Required test strength | 23.5 kN/m |
| Selected pipe class | BS 5911 Class S (min.) |

NOTE -- Pipe class selection should be confirmed against locally available precast pipe manufacturer specifications.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 4: Bridge Design*, January 2010, Section 5.8 (Earth Pressure on Retaining Structures), Table 1 (Load Factors/Combinations).
2. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 2: Drainage Design*, January 2010, Section 9 (Culvert Hydraulics and Details).
3. BS 5400: Part 4, *Code of Practice for Design of Concrete Bridges* -- as referenced by MoWT Vol 4 for concrete structural design provisions.
4. CP 2004, *Foundations* -- as referenced by MoWT Vol 4, Section 4.7 for foundation design. Note: this is an older code, superseded by Eurocode 7 in the UK.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- earth pressure gamma_fL = 1.50 verified from MoWT Vol 4 Table 1; surcharge values from Section 5.8.2; CP 2004 foundation reference from Section 4.7 |
