---
name: "culvert-structural-design"
description: "Use when designing the structural elements of a culvert (reinforced concrete box or pipe) given hydraulic sizing from Skill #31 (Culvert Hydraulic Design). Requires soil properties from Skill #10 (Subgrade Characterization) and axle loads from Skill #4 (Axle Load Surveys). Outputs headwall/wingwall requirements to Skill #34 (Headwalls & Wingwalls)."
---

# Culvert Structural Design

> **Skill ID:** 33
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Design the structural elements of a culvert -- wall thickness, slab thickness, and reinforcement concept -- to resist earth pressure and traffic loading for a culvert whose size has already been determined by Skill #31 (Culvert Hydraulic Design). This skill covers both reinforced concrete (RC) box culverts and pipe culverts, producing preliminary member sizes suitable for quantity estimation and feasibility assessment. Detailed reinforcement design requires specialist structural engineer review.

## When to Use This Skill

- **Use when:** The culvert size (span, rise, type) has been determined by Skill #31 and structural design of the culvert barrel is required. Applicable to RC box culverts (single and multi-cell), precast concrete pipe culverts, and corrugated metal pipe (CMP) culverts.
- **Do not use when:** Hydraulic sizing is needed (use Skill #31). Not for bridge-scale structures (use Skill #37). Not for headwall/wingwall design (use Skill #34).
- **Prerequisite skills:** Skill #31 (Culvert Hydraulic Design) -- provides culvert size, type, headwater. Skill #10 (Subgrade Characterization) -- provides soil properties and bearing capacity. Skill #4 (Axle Load Surveys) -- provides axle load data for live load assessment.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Culvert Types for Structural Design:**

- **RC Box Culvert (single-cell):** Rectangular cross-section with top slab, bottom slab, and two walls forming a rigid frame. Most common for spans 900 mm to 6000 mm. Analysed as a rigid portal frame under earth pressure and traffic loading.
- **RC Box Culvert (multi-cell):** Two or more cells side by side, sharing intermediate walls. Used when a single opening would be too wide or when multiple smaller openings are preferred. Each cell is sized by Skill #31.
- **Precast Concrete Pipe Culvert:** Circular cross-section, manufactured to standard diameters (300-2400 mm). Structural capacity depends on pipe class (strength), bedding conditions, and fill depth. Designed using the bedding factor method.
- **Corrugated Metal Pipe (CMP):** Flexible structure that relies on soil-structure interaction for structural capacity. Used on low-volume roads. Design depends on corrugation profile, gauge thickness, and fill depth.

**Loading on Buried Structures:**

- **Dead load (earth pressure):** The weight of fill material above and around the culvert creates vertical and horizontal earth pressures. Vertical earth pressure = gamma_soil x H (unit weight of soil times fill depth). Horizontal earth pressure = K x gamma_soil x H + surcharge (where K is the coefficient of lateral earth pressure, typically K0 = 0.5 for at-rest conditions or Ka = 0.33 for active conditions).
- **Live load (traffic surcharge):** Traffic loading on the road surface above the culvert creates additional pressure on the culvert structure. The magnitude depends on fill depth -- shallow fill transmits concentrated wheel loads; deep fill distributes loads more uniformly. MoWT Vol 4 Section 5.8.2 specifies live load surcharge values.
- **Fill depth effects:** Fill depth is the critical parameter determining the load regime:
  - Shallow cover (<600 mm): Concentrated wheel loads dominate. Wheel load distribution through fill is limited. Critical for structural design.
  - Standard cover (600-3000 mm): Both earth pressure and distributed traffic surcharge are significant. Most common design condition.
  - Deep cover (>3000 mm): Earth pressure dominates. Traffic surcharge becomes negligible relative to earth load. Self-weight of structure becomes important.

**Bedding Classes for Pipe Culverts:**

Pipe culverts derive their structural capacity from the interaction between the pipe and its bedding. The bedding class determines the bedding factor (Fm), which relates the field supporting strength to the factory test strength:

- **Class A:** Concrete surround (360 degrees) -- Fm = 3.4. Provides maximum support. Used for shallow cover or heavy loading.
- **Class B:** Granular bedding (180 degrees) -- Fm = 2.2. Good support with selected granular material under and around the pipe haunch.
- **Class C:** Granular bedding (90 degrees) -- Fm = 1.5. Granular material under the pipe only.
- **Class D:** Flat subgrade -- Fm = 1.1. Pipe laid directly on flat trench bottom. Minimum support.

The required pipe strength class = field load / bedding factor. Higher bedding factors reduce the required pipe strength class.

**Structural Analysis of Box Culverts:**

- **Rigid frame analysis:** A single-cell box culvert is a rectangular portal frame with fixed joints. Under symmetrical loading (vertical earth pressure + surcharge), the frame analysis yields moments at the corners, mid-span of top slab, mid-span of bottom slab, and mid-height of walls.
- **Simplified coefficient method:** For preliminary design, moments in a single-cell box culvert under uniform loading can be estimated using: M = coefficient x w x L^2, where w is the load intensity and L is the span or height. Standard coefficients exist for various support conditions.
- **Marston-Spangler theory:** For pipe culverts, the earth load on a buried pipe depends on the installation type (trench vs embankment) and the ratio of trench width to pipe diameter. This theory gives the Marston load, which is then compared against the pipe supporting strength adjusted by the bedding factor.

### 1.2 Universal Formulas

**Vertical earth pressure on culvert top slab:**

```
P_v = gamma_soil x H
```

Where P_v = vertical earth pressure (kN/m2), gamma_soil = unit weight of fill (kN/m3, typically 18-20), H = fill depth from road surface to top of culvert (m).

**Horizontal earth pressure on culvert wall:**

```
P_h = K x gamma_soil x z + K x q_surcharge
```

Where K = coefficient of lateral earth pressure (K0 ~ 0.5 for at-rest, Ka ~ 0.33 for active), z = depth below ground surface (m), q_surcharge = live load surcharge intensity (kN/m2).

**Bearing pressure under culvert base slab:**

```
q_base = (W_culvert + W_fill + W_surcharge) / A_base
```

Where W = total vertical loads, A_base = base slab area. Must not exceed allowable bearing capacity from Skill #10.

**Pipe culvert supporting strength required:**

```
W_required = W_field / Fm
```

Where W_field = total vertical load on pipe per unit length (kN/m), Fm = bedding factor for selected bedding class.

### 1.3 Figures & Diagrams

**Box culvert loading diagram:** A rectangular cross-section with: (a) uniform vertical pressure on top slab from earth + surcharge, (b) triangular + uniform horizontal pressure on walls from earth + surcharge, (c) upward reaction from base slab (uniform if bearing is uniform). The resulting bending moment diagram shows hogging at corners and sagging at mid-span of slabs.

**Pipe culvert bedding classes:** Cross-sections showing Class A (concrete encasement surrounding entire pipe), Class B (granular cradle to pipe springline with compacted backfill), Class C (granular bed to 90 degrees of pipe), Class D (flat trench bottom).

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Receive culvert size and type from Skill #31
  |-- culvert_size: {span_mm, rise_mm} for box; {diameter_mm} for pipe
  |-- culvert_type: "box" | "pipe" | "cmp"
  |-- headwater_m, outlet_velocity_ms (for context)
  +-- Load country module for standard-specific tables

Step 2: Determine fill depth and classify cover
  |-- Shallow (<600 mm): concentrated wheel loads, special attention
  |-- Standard (600-3000 mm): normal design condition
  +-- Deep (>3000 mm): earth pressure dominates

Step 3: Calculate earth pressure
  --> See country module, Section M.2 for load factors
  |-- Vertical: P_v = gamma_soil x H
  |-- Horizontal: P_h = K x gamma_soil x z + K x q_surcharge
  +-- Apply gamma_fL per MoWT Vol 4 Table 1

Step 4: Determine live load surcharge
  --> See country module, Section M.2 for surcharge values
  |-- Select HA or HB surcharge based on loading class
  +-- For shallow cover: check concentrated wheel load distribution

Step 5: Structural analysis (type-dependent)
  |-- Box culvert --> Rigid frame analysis (Step 5a)
  |-- Pipe culvert --> Bedding factor method (Step 5b)
  +-- CMP --> Manufacturer design tables (Step 5c)

Step 5a: Box culvert rigid frame analysis
  |-- Calculate moments at corners, mid-span
  |-- Determine preliminary slab and wall thickness
  +-- Check shear at critical sections

Step 5b: Pipe culvert bedding factor method
  |-- Calculate total vertical load on pipe
  |-- Select bedding class
  |-- Determine required pipe strength class
  +-- Check against available pipe classes

Step 5c: CMP design
  |-- Refer to manufacturer tables for corrugation profile and gauge
  +-- Flag as specialist item if outside standard range

Step 6: Check bearing pressure
  --> Soil data from Skill #10
  |-- Calculate total load on base
  |-- Compare against allowable bearing capacity
  +-- If exceeded --> increase base width or improve foundation

Step 7: Determine headwall/wingwall requirements
  --> Outputs to Skill #34
  |-- Provide culvert_dimensions, loading_summary
  +-- Note fill depth and loading for headwall/wingwall design

Step 8: Run validation (Section 4 + country module Section M.5)

Step 9: Produce output (Section 8)
  +-- Include escalation for detailed reinforcement design
```

### 2.2 Professional Judgment (Universal)

**Conservative preliminary sizing.** For RC box culverts, a preliminary slab thickness of span/12 to span/10 provides a reasonable starting point. Wall thickness is typically equal to or slightly less than slab thickness. These ratios assume moderate fill depths and standard loading.

**Bedding class selection is an economic decision.** Higher bedding classes (A, B) cost more to construct but allow weaker (cheaper) pipe classes. Lower bedding classes (C, D) are cheaper to build but require stronger (more expensive) pipes. The optimum depends on local material and labour costs.

**Foundation conditions often govern.** In Uganda, many culvert sites have weak subgrade soils (CBR < 5%). The bearing pressure check may require a wider base slab or foundation improvement even when the culvert structure itself is adequate.

**Detailed reinforcement design is beyond preliminary scope.** This skill determines member sizes (slab thickness, wall thickness) and loading. The detailed calculation of reinforcement areas, bar spacing, cover, and detailing requires a specialist structural engineer using BS 5400 Part 4 (as referenced by MoWT Vol 4) or equivalent.

### 2.3 Common Errors

1. **Performing hydraulic sizing in this skill.** Culvert size comes from Skill #31. This skill only designs the structure for the given size. Do NOT check inlet control, outlet control, or headwater.
2. **Ignoring fill depth classification.** Shallow cover (<600 mm) fundamentally changes the load distribution -- concentrated wheel loads rather than distributed surcharge. Missing this leads to unconservative designs.
3. **Using wrong earth pressure coefficient.** At-rest (K0 ~ 0.5) is appropriate for rigid culverts that do not deflect enough to mobilise active conditions. Using Ka (0.33) is unconservative for rigid box culverts.
4. **Forgetting to check bearing pressure.** The culvert may be structurally adequate but the foundation may be overstressed. Always check base bearing against Skill #10 data.
5. **Applying traffic surcharge without depth reduction.** Surcharge values assume the loading is at the surface. For very deep fills, the surcharge effect is already captured in the earth pressure calculation.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Fill unit weight | 19 kN/m3 | Not specified | ASSUMED: gamma_soil = 19 kN/m3 (compacted fill) | Typical compacted fill density |
| Earth pressure coeff (K) | 0.5 (at-rest, K0) | Box culvert, not specified | ASSUMED: K0 = 0.5 for rigid box culvert | Conservative for rigid structures |
| Pipe bedding class | Class B | Not specified | ASSUMED: Class B bedding (granular, 180 degrees) | Common default for road culverts |
| Concrete density | 24 kN/m3 | Not specified | No flag (standard value) | Standard reinforced concrete density |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Use higher earth pressure coefficient (K0 rather than Ka) when uncertain.
4. **Flag for investigation:** Every assumed value includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Fill depth | 0.3 | 15 | m | Warn if < 0.6 (shallow cover); warn if > 10 (very deep) |
| Slab thickness (box) | 150 | 1000 | mm | Warn if < 200 mm; reject if < 150 mm |
| Wall thickness (box) | 150 | 800 | mm | Warn if < 200 mm; reject if < 150 mm |
| Bearing pressure | 0 | 600 | kPa | Flag if > allowable from Skill #10 |
| Box culvert span | 600 | 6000 | mm | Warn if > 4000 (consider multi-cell) |
| Pipe diameter | 300 | 2400 | mm | Warn if > 1800 (consider box culvert) |

### 4.2 Consistency Checks

- **Fill depth vs. surcharge model:** If fill < 600 mm, verify concentrated wheel load analysis is used rather than uniform surcharge.
- **Bearing pressure vs. Skill #10:** Calculated base pressure must not exceed allowable bearing capacity from geotechnical data.
- **Pipe class vs. bedding:** Verify selected pipe class provides adequate strength for the bedding factor and loading.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Detailed reinforcement design required | Beyond preliminary scope | SENIOR REVIEW -- Preliminary member sizes determined. Detailed reinforcement design (bar sizes, spacing, cover, detailing) requires specialist structural engineer using BS 5400 Part 4 or equivalent. |
| Fill depth < 600 mm | Shallow cover -- concentrated wheel loads | SENIOR REVIEW -- Shallow fill depth [H] mm. Concentrated wheel load analysis required. Consider concrete surround (Class A bedding) for pipe culverts. |
| Bearing pressure exceeds allowable | Foundation inadequate | SENIOR REVIEW -- Base bearing pressure [q] kPa exceeds allowable [q_allow] kPa from Skill #10. Foundation improvement or wider base slab required. |
| Multi-cell box culvert | Increased complexity | NOTE -- Multi-cell box culvert requires analysis of intermediate wall loads and differential loading between cells. |
| CMP culvert design | Specialist manufacturer input | NOTE -- CMP structural design should be verified against manufacturer design tables for the specific corrugation profile and gauge. |
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. Verify all standard-specific parameters. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| culvert_size | object | mm | Yes | Skill #31 | {span_mm, rise_mm} for box; {diameter_mm} for pipe |
| culvert_type | text | -- | Yes | Skill #31 | "box" or "pipe" or "cmp" |
| headwater_m | number | m | No | Skill #31 | Headwater depth (for context) |
| outlet_velocity_ms | number | m/s | No | Skill #31 | Outlet velocity (for context, feeds Skill #32) |
| soil_profile | object | -- | Yes | Skill #10 | Soil classification and properties at culvert site |
| bearing_capacity_kPa | number | kPa | Yes | Skill #10 | Allowable bearing capacity of foundation soil |
| axle_load_spectrum | object | -- | No | Skill #4 | Measured axle loads (for loading assessment) |
| legal_limits | object | kN | No | Skill #4 | Legal axle load limits |
| fill_depth_m | number | m | Yes | User / survey | Depth of fill from road surface to top of culvert |
| number_of_cells | integer | -- | No | User | Number of cells for multi-cell box culvert (default 1) |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| culvert_dimensions | object | mm | Skill #34 | Structural dimensions: slab thickness, wall thickness |
| loading_summary | object | kN/m2 | Skill #34 | Earth pressure and surcharge summary for headwall/wingwall design |
| slab_thickness_mm | number | mm | Documentation | Top and bottom slab thickness |
| wall_thickness_mm | number | mm | Documentation | Wall thickness for box culvert |
| bearing_pressure_kPa | number | kPa | Documentation | Calculated base bearing pressure |
| pipe_class | text | -- | Documentation | Required pipe strength class (for pipe culverts) |
| bedding_class | text | -- | Documentation | Selected bedding class (for pipe culverts) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT standards for culvert structural design | Markdown |
| `modules/uk.md` | UK DMRB/Eurocode standards (knowledge-based) | Markdown |
| `tables/uganda_culvert_loading.json` | Culvert loading data from MoWT Vol 4 | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: Receive Culvert Size from Skill #31
Confirm culvert_size, culvert_type, and number_of_cells. Verify the culvert has been hydraulically sized -- do NOT perform hydraulic sizing in this skill.

### Step 3: Determine Fill Depth and Cover Classification
Classify fill depth: shallow (<600 mm), standard (600-3000 mm), or deep (>3000 mm). For shallow cover, flag the need for concentrated wheel load analysis.

### Step 4: Calculate Earth Pressure
Using country module load factors (gamma_fL = 1.50 ULS for earth pressure per MoWT Vol 4 Table 1):
- Vertical earth pressure: P_v = gamma_fL x gamma_soil x H
- Horizontal earth pressure on walls: P_h = gamma_fL x K x gamma_soil x z + gamma_fL x K x q_surcharge

### Step 5: Determine Live Load Surcharge
From country module: select surcharge intensity based on loading class (HA, HB 25-unit, HB 45-unit). For shallow cover, calculate wheel load dispersal through fill.

### Step 6: Structural Analysis
**For box culverts:** Perform rigid frame analysis or use simplified moment coefficients. Determine preliminary slab thickness (span/12 to span/10) and wall thickness. Calculate moments, shears at critical sections.

**For pipe culverts:** Calculate total vertical load. Select bedding class. Determine required pipe supporting strength = field load / bedding factor. Select pipe class.

### Step 7: Check Bearing Pressure
Calculate total vertical load on base. Divide by base area to get bearing pressure. Compare against allowable bearing capacity from Skill #10.

### Step 8: Prepare Outputs for Skill #34
Package culvert_dimensions and loading_summary for headwall/wingwall design.

### Step 9: Run Validation
All universal + country-specific checks.

### Step 10: Produce Output
Include escalation trigger for detailed reinforcement design.

---

## 8. Output Format

```
============================================================
CULVERT STRUCTURAL DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

DESIGN INPUTS (from Skill #31)
------------------------------
Culvert type:                [box / pipe / cmp]
Culvert size:                [span x rise mm / diameter mm]
Number of cells:             [X]
Fill depth:                  [X] m ([shallow / standard / deep])
Soil unit weight:            [X] kN/m3
Fill material:               [description]

GEOTECHNICAL DATA (from Skill #10)
-----------------------------------
Subgrade class:              [SX]
Bearing capacity:            [X] kPa
Soil profile:                [summary]

LOADING ANALYSIS
----------------
Earth pressure (vertical):
  Nominal P_v:               [X] kN/m2
  Design P_v (ULS):          [X] kN/m2 (gamma_fL = [X])

Earth pressure (horizontal at base):
  Nominal P_h:               [X] kN/m2
  Design P_h (ULS):          [X] kN/m2

Live load surcharge:
  Type:                      [HA / HB XX units]
  Nominal surcharge:         [X] kN/m2
  Design surcharge (ULS):    [X] kN/m2

STRUCTURAL DESIGN
-----------------
[For box culvert:]
  Preliminary slab thickness:    [X] mm (top and bottom)
  Preliminary wall thickness:    [X] mm
  Design moments (ULS):
    Corner (hogging):            [X] kNm/m
    Mid-span top slab (sagging): [X] kNm/m
    Mid-span base slab:          [X] kNm/m

[For pipe culvert:]
  Bedding class:                 [A / B / C / D]
  Bedding factor (Fm):           [X]
  Total vertical load:           [X] kN/m
  Required supporting strength:  [X] kN/m
  Selected pipe class:           [Class X]

BEARING PRESSURE CHECK
----------------------
Total vertical load:         [X] kN/m
Base width:                  [X] m
Bearing pressure:            [X] kPa
Allowable:                   [X] kPa (from Skill #10)
Status:                      [PASS / FAIL]

OUTPUTS TO SKILL #34
--------------------
culvert_dimensions:          [summary]
loading_summary:             [summary]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

ESCALATION FLAGS
----------------
SENIOR REVIEW -- Preliminary member sizes determined. Detailed
reinforcement design requires specialist structural engineer.
[Additional flags as applicable]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed reinforcement design (bar sizes, spacing, detailing). Hydraulic sizing of culverts (Skill #31). Headwall and wingwall design (Skill #34). Precast segment joints. Jacking/thrust boring installation loads. Fatigue assessment for high-cycle traffic.
- **Simplifications:** Uses simplified moment coefficients for box culvert analysis rather than full finite element analysis. Bedding factor method for pipe culverts is a simplified approach. Does not account for construction sequence effects or time-dependent loading.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with earth pressure and bedding factor methods per MoWT Vol 4 Section 5.8 and standard structural engineering practice |
