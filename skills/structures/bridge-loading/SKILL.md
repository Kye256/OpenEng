---
name: "bridge-loading"
description: "Use when determining design loads for bridge structures. Provides HA/HB loading per MoWT Vol 4 for Uganda and EN 1991-2 load models for UK. Requires axle load data from Skill #4 (Axle Load Surveys) and design traffic from Skill #5 (ESA/ESAL Calculation). Outputs design loads to Skill #37 (Simply Supported Beam Bridges) and Skill #38 (Bridge Substructure)."
---

# Bridge Loading

> **Skill ID:** 36
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Determine all design loads acting on a bridge structure: dead loads (self-weight), live loads (HA normal traffic and HB abnormal vehicle), wind loads, temperature effects, earth pressure on abutments, and seismic loads. Assemble load combinations with appropriate partial factors for ultimate and serviceability limit states. This skill produces the design loads consumed by superstructure design (Skill #37) and substructure design (Skill #38).

## When to Use This Skill

- **Use when:** A bridge has been sited (Skill #35) and the design loads must be determined for structural design. Required before any structural member sizing.
- **Do not use when:** Designing culverts (see Skill #33 for culvert loading). Not for detailed fatigue loading (specialist).
- **Prerequisite skills:** Skill #35 (Bridge Site Selection) for span estimate and site data. Skill #4 (Axle Load Surveys) for overloading context. Skill #5 (ESA/ESAL) for traffic classification.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Dead Loads:** Self-weight of all structural elements (deck, beams, diaphragms) and superimposed dead loads (surfacing, parapets, services, drainage).

**HA Loading (Normal Traffic):** A formula-based loading representing the effects of all normal traffic on the bridge. Consists of:
- **Uniformly Distributed Load (UDL):** W = 30.0 kN/m per notional lane for loaded lengths L <= 30m. For L > 30m: W = 151(1/L)^0.475 kN/m, but not less than 9.0 kN/m.
- **Knife Edge Load (KEL):** 120 kN per notional lane, applied at one point for maximum effect.

**HB Loading (Abnormal Vehicle):** A single abnormal vehicle with 4 axles:
- 1 unit of HB = 10 kN per axle (2.5 kN per wheel)
- Minimum 25 units for public highways (250 kN total, 62.5 kN/axle)
- May be increased to 45 units (450 kN total, 112.5 kN/axle)
- Inner axle spacing variable: 6, 11, 16, 21, or 26 m (use most severe)
- Overall width: 3.5 m
- Only ONE HB vehicle per superstructure

**Notional Lanes:** The carriageway is divided into notional lanes for load application. The number depends on carriageway width (see country module for table).

**Wind Loading:** Horizontal and vertical wind forces on the bridge structure and live load. Pressures depend on wind velocity, bridge geometry, and terrain category. In Uganda, all pressures must be adjusted for the local base wind speed (see country module).

**Temperature Effects:** Effective bridge temperature range causes expansion/contraction (restraint loads). Temperature difference through the depth causes bending effects.

**Earth Pressure on Abutments:** Active earth pressure plus live load surcharge behind abutments. gamma_fL = 1.50 for ULS per MoWT Vol 4 Table 1, across all five load combinations.

**Seismic Loading:** For bridges in seismically active zones. MoWT Vol 4 Section 9 provides seismic design provisions for Uganda, recognising that western Uganda is on the East African Rift with significant seismic activity.

**Load Combinations:** Five combinations with different partial load factors (gamma_fL) for ULS and SLS:
- Combination 1: Permanent + primary live loads (most common)
- Combination 2: Combination 1 + wind + erection
- Combination 3: Combination 1 + temperature + erection
- Combination 4: Secondary live loads (centrifugal, longitudinal, collision)
- Combination 5: Permanent + bearing friction

### 1.2 Universal Formulas

**HA UDL (two-part formula):**

```
For L <= 30m:  W = 30.0 kN/m per notional lane
For L > 30m:   W = 151 * (1/L)^0.475 kN/m per notional lane (min 9.0 kN/m)
```

Where L = loaded length in metres.

**HA KEL:**

```
KEL = 120 kN per notional lane
```

**HB total load:**

```
Total HB load = Number of units * 10 kN/axle * 4 axles = 40 * units (kN)
```

For 25 units: 250 kN total. For 45 units: 450 kN total.

**Active earth pressure (Rankine):**

```
Ka = (1 - sin(phi)) / (1 + sin(phi))
Pa = 0.5 * Ka * gamma * H^2 + Ka * q * H
```

Where phi = angle of internal friction, gamma = unit weight of soil, H = height of retained earth, q = surcharge.

### 1.3 Figures & Diagrams

**HA loading curve (Figure 10):** The UDL is constant at 30.0 kN/m for loaded lengths up to 30m, then decreases following the formula W = 151(1/L)^0.475 for longer spans, reaching the minimum of 9.0 kN/m at loaded lengths exceeding approximately 380m.

**HB vehicle geometry (Figure 11):** Four axles in two pairs. Outer spacing 1.8m each side. Inner spacing variable (6, 11, 16, 21, or 26m -- designer must use spacing giving worst effect). Width 3.5m between outer wheel faces.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  --> Load the appropriate country module
  --> If no module exists, flag and use closest available

Step 2: Determine notional lane count
  --> From carriageway width, look up number of notional lanes
  --> See country module, Section M.2 for lane table

Step 3: Calculate HA loading
  |-- Determine loaded length (L) from span or influence line length
  |-- If L <= 30m: W = 30.0 kN/m
  |-- If L > 30m: W = 151(1/L)^0.475 (check >= 9.0 kN/m)
  |-- KEL = 120 kN per notional lane
  +-- WARNING: Do not use formula for L <= 30m (Pitfall #2)

Step 4: Determine HB loading
  |-- HB units specified (typically 25 or 45)
  |-- Total load = units * 40 kN
  |-- Inner axle spacing: test all 5 options for worst effect
  +-- Only ONE HB vehicle per superstructure

Step 5: Calculate dead loads
  --> Estimate self-weight from preliminary member sizes
  --> Superimposed dead: surfacing (~2.4 kN/m2 per 100mm), parapets, services

Step 6: Determine wind loads
  --> See country module for wind speed adjustment
  --> Apply terrain coefficients from Table 2
  +-- For Uganda: multiply all pressures by V_Uganda/160 (Section 5.3.1.1)

Step 7: Check seismic requirements
  --> See country module for seismic zone determination
  --> If seismic zone requires design: determine acceleration coefficient
  +-- Seismic forces added to load combinations per Section 9

Step 8: Assemble load combinations
  --> Apply gamma_fL factors from Table 1
  --> Combination 1 is most common for highway bridges
  +-- Include earth pressure with gamma_fL = 1.50 for ULS

Step 9: Check East African overloading context
  --> Compare actual axle loads (from Skill #4) with legal limits
  --> If surveyed P85 axle load exceeds legal limit by > 30%: flag
  +-- Consider increased HB units or actual load spectrum for fatigue

Step 10: Run validation and produce output
```

### 2.2 Professional Judgment (Universal)

**Combination 1 governs most highway bridge designs.** It includes permanent loads and primary live loads (HA/HB). Combination 3 (temperature) is important for continuous structures. Combination 2 (wind) rarely governs for short-span bridges but is critical for tall or exposed structures.

**East African overloading context:** On major freight corridors in East Africa, actual axle loads regularly exceed legal limits by 50-100%. Standard HA/HB loading is calibrated for regulated traffic. Where overloading is prevalent, the designer should consider:
- Increasing HB units to reflect actual conditions
- Using surveyed axle load spectrum from Skill #4 for fatigue assessment
- Applying higher load factors to account for overloading uncertainty

### 2.3 Common Errors

1. **Using the HA UDL formula for loaded lengths under 30m.** For L <= 30m, W is simply 30.0 kN/m -- constant, not calculated from the formula.
2. **Forgetting to adjust wind pressures for Uganda.** All wind pressures in MoWT Vol 4 Tables assume a base wind velocity of 160 km/h (UK conditions). Uganda pressures must be multiplied by V_Uganda/160 as stated in Section 5.3.1.1.
3. **Ignoring East African overloading.** Designing only for legal axle loads when actual loads regularly exceed legal limits by 50-100% on major corridors.
4. **Treating Uganda as non-seismic.** Uganda is on the East African Rift. MoWT Vol 4 Section 9 includes full seismic provisions. Western Uganda (Zone 1) has acceleration coefficient A = 0.15.
5. **Applying more than one HB vehicle per superstructure.** Only ONE HB vehicle shall be considered per superstructure or substructure.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| HB units | 25 | Public highway, not specified | ASSUMED: 25 HB units (minimum for public highways) | MoWT Vol 4 Section 6.3 |
| Surfacing density | 24 kN/m3 | Bituminous surfacing | No flag (standard) | Typical asphalt density |
| Surfacing thickness | 100 mm | Not specified | ASSUMED: 100mm surfacing for dead load calculation | Common bridge surfacing depth |
| gamma_f3 | 1.10 | ULS | No flag (standard) | BS 5400 Part 4, MoWT Vol 4 Section 4.1.3 |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state the HB units used.** HB loading varies significantly between 25 and 45 units.
3. **Conservative direction:** Use higher HB units when in doubt about actual vehicle loads.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| HA UDL (L <= 30m) | 29.0 | 31.0 | kN/m | Must be 30.0 kN/m (constant) |
| HA UDL (L > 30m) | 9.0 | 30.0 | kN/m | Must be >= 9.0 (minimum) |
| HB units | 25 | 45 | units | Warn if < 25 (below public highway minimum) |
| KEL | 119 | 121 | kN | Must be 120 kN per lane |
| Notional lanes | 1 | 6 | count | Check against carriageway width |
| gamma_fL (HA ULS, Comb 1) | 1.45 | 1.55 | -- | Must be 1.50 |

### 4.2 Consistency Checks

- **HA UDL vs loaded length:** If L <= 30m, verify W = 30.0 (not formula). If L > 30m, verify formula used.
- **Notional lanes vs carriageway width:** Verify lane count matches the width-to-lanes table.
- **Load combination completeness:** Verify all load types present in each combination per Table 1.
- **Earth pressure gamma_fL:** Verify 1.50 ULS for all combinations.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Surveyed P85 axle load exceeds legal limit by > 30% | Overloading risk | SENIOR REVIEW -- Surveyed axle loads exceed legal limits by [X]%. Consider increased HB units or actual load spectrum for fatigue. |
| Seismic zone with A > 0.07 | Seismic design required (SPC 2 or 3) | SENIOR REVIEW -- Site in seismic zone with A = [X]. Seismic loading per MoWT Vol 4 Section 9 required. |
| HB > 25 units required | Abnormal load corridor | NOTE -- [X] HB units specified. Verify with road authority. |
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Span estimate | number | m | Yes | Skill #35 | Loaded length for HA UDL calculation |
| Carriageway width | number | m | Yes | Skill #17 | For notional lane determination |
| HB units | number | units | Recommended | User/Authority | Number of HB units (25-45) |
| Axle load spectrum | object | -- | Recommended | Skill #4 | For overloading context assessment |
| Design ESA | number | ESA | Recommended | Skill #5 | For traffic classification |
| Site wind speed | number | km/h | Recommended | User/Site data | For wind load calculation |
| Seismic zone | text | -- | Recommended | Skill #35/User | For seismic load determination |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| design_loads | object | -- | Skill #37 | HA_udl, HA_kel, HB_axle_load, load_factors, wind_loads |
| design_loads | object | -- | Skill #38 | Same + earth_pressure_surcharge |
| load_combinations | object | -- | Skill #37, #38 | Factored load combinations for ULS and SLS |
| seismic_parameters | object | -- | Skill #38 | Acceleration coefficient, SPC, site coefficient, R-factors |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT Vol 4 loading provisions | Markdown |
| `modules/uk.md` | UK EN 1991-2 loading (knowledge-based) | Markdown |
| `tables/uganda_load_combinations.json` | MoWT Vol 4 Table 1 load factors | JSON |
| `tables/uganda_ha_udl.json` | MoWT Vol 4 Table 13 HA UDL values | JSON |
| `tables/uganda_seismic_parameters.json` | MoWT Vol 4 Tables 9.1-9.5 seismic data | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load country module and referenced JSON tables.

### Step 2: Determine Notional Lanes
From carriageway width, determine the number of notional lanes per the lane table in the country module.

### Step 3: Calculate HA Loading
Use the two-part formula: W = 30.0 for L <= 30m; W = 151(1/L)^0.475 for L > 30m (min 9.0). Add KEL = 120 kN per lane.

### Step 4: Determine HB Loading
Apply specified HB units (default 25). Calculate total axle loads and vehicle dimensions.

### Step 5: Calculate Dead Loads
Estimate self-weight from preliminary sizing. Add superimposed dead (surfacing, parapets, services).

### Step 6: Determine Wind Loads
Look up base pressures from Tables 4-6. Apply Uganda adjustment if applicable. Calculate wind forces on structure and live load.

### Step 7: Check Seismic Requirements
Determine seismic zone from Figure 9-1 (Uganda) or equivalent. If seismic design required, determine acceleration coefficient (Table 9.1), SPC (Table 9.2), site coefficient (Table 9.3), and R-factors (Table 9.4).

### Step 8: Assemble Load Combinations
Apply gamma_fL factors from Table 1 for each combination. Report ULS and SLS load effects.

### Step 9: Assess Overloading Context
Compare actual axle loads from Skill #4 with legal limits. Flag if significant overloading documented.

### Step 10: Produce Output

---

## 8. Output Format

```
============================================================
BRIDGE LOADING -- [Bridge Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

BRIDGE GEOMETRY
---------------
Span:                   [X] m
Carriageway Width:      [X] m
Notional Lanes:         [X]

HA LOADING
----------
Loaded Length:          [X] m
HA UDL (W):             [X] kN/m per lane
HA KEL:                 120 kN per lane
Total HA per lane:      W * L + KEL = [X] kN

HB LOADING
----------
HB Units:               [X]
Load per Axle:          [X] kN
Total HB Load:          [X] kN
Inner Axle Spacing:     [most severe] m

DEAD LOADS
----------
Self-weight:            [X] kN/m
Superimposed Dead:      [X] kN/m

WIND LOADS
----------
Base Wind Speed:        [X] km/h
Adjustment Factor:      [X]
Wind on Structure:      [X] kN/m
Wind on Live Load:      [X] kN/m

SEISMIC CHECK
-------------
Seismic Zone:           [zone]
Acceleration (A):       [X]
SPC:                    [X]
[Detailed seismic loads if required]

EARTH PRESSURE (Abutments)
--------------------------
Surcharge (HA):         10 kN/m2
Surcharge (HB [X]u):   [X] kN/m2
gamma_fL (ULS):         1.50

LOAD COMBINATIONS (Combination 1 -- ULS)
-----------------------------------------
Dead (steel):   [X] * 1.05 = [X] kN
Dead (concrete):[X] * 1.15 = [X] kN
Super. Dead:    [X] * 1.75 = [X] kN
HA alone:       [X] * 1.50 = [X] kN
[or HA+HB]:     [X] * 1.30 = [X] kN
Earth pressure: [X] * 1.50 = [X] kN

OVERLOADING ASSESSMENT
----------------------
[Assessment from Skill #4 data or "Not assessed -- no axle load data"]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed fatigue loading analysis. Railway bridge loading (Sections 8, covered by MoWT Vol 4 but not this skill). Detailed wind dynamic response (aeroelastic effects).
- **Simplifications:** Wind loads use simplified approach from Tables 2-6. Temperature effects referenced but not fully calculated (see MoWT Vol 4 Section 5.4). Seismic analysis procedures referenced but detailed spectral analysis is beyond preliminary scope.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with full HA/HB loading system, 5 load combinations, wind adjustment, seismic provisions, East African overloading context. Tables 1, 13, 9.1-9.5 extracted to JSON. |
