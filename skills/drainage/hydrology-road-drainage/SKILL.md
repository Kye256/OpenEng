---
name: "hydrology-road-drainage"
description: "Use when estimating design peak flow for road drainage structures. Produces design flow consumed by Skill #30 (Ditch & Channel Design), Skill #31 (Culvert Hydraulic Design), and Skill #32 (Erosion Protection). Uses Rational Method for small catchments (<25 km2) or SCS Curve Number for larger areas."
---

# Hydrology for Road Drainage

> **Skill ID:** 29
> **Domain:** Drainage
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK

## Purpose

Estimate the design peak flow (Q in m3/s) for sizing road drainage structures, using the appropriate hydrological method based on catchment size, data availability, and design requirements. This skill produces the design flow that is consumed by downstream drainage skills for sizing ditches (Skill #30), culverts (Skill #31), and erosion protection (Skill #32).

## When to Use This Skill

- **Use when:** Estimating design peak flow for any road drainage structure -- side drains, cross-drainage culverts, or bridge waterway openings. Required before sizing any drainage structure.
- **Do not use when:** Flow data is available from gauged records with sufficient length for frequency analysis (use Section 6 frequency analysis methods instead). Not for detailed flood routing or dam design.
- **Prerequisite skills:** Skill #13 (Design Standards Selection) -- establishes road class for return period selection. Optionally Skill #17 (Cross-Section Design) -- provides pavement drainage area for small catchment calculations.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Rational Method:** The most widely used method for estimating peak runoff from small catchments. It relates peak discharge to rainfall intensity, catchment area, and a runoff coefficient.

**Runoff Coefficient (C):** A dimensionless factor representing the proportion of rainfall that becomes surface runoff. C depends on land use, soil type, slope, and antecedent moisture conditions. Values range from 0.05 (dense forest, permeable soil) to 0.95 (paved surfaces). For composite catchments, a weighted average C is calculated based on the area and coefficient of each land use.

**Rainfall Intensity (I):** The average rainfall rate (mm/hr) for a storm duration equal to the time of concentration, at the selected return period. Derived from Intensity-Duration-Frequency (IDF) curves specific to the project location.

**Time of Concentration (Tc):** The time required for runoff to travel from the hydraulically most distant point in the catchment to the design point. Tc determines the critical storm duration -- the storm that produces maximum peak flow occurs when its duration equals Tc. Methods for estimating Tc include Kirpich formula, SCS method, velocity method, and others.

**Design Return Period:** The average recurrence interval (ARI) of the flood event used for design. Higher-class roads and larger structures require longer return periods (higher design flows). Typical values: 10 years for side drains, 25-50 years for culverts, 50-100 years for bridges.

**SCS Curve Number Method:** An alternative rainfall-runoff method suitable for larger catchments (>25 km2) or where antecedent moisture conditions are important. Uses a curve number (CN) based on land use, soil group, and hydrologic condition to estimate excess rainfall, which is then converted to peak discharge using a unit hydrograph approach.

**Catchment Delineation:** The process of identifying watershed boundaries upstream of the drainage structure location, using topographic maps or digital elevation models (DEM). The catchment area and characteristics (slope, land use, soil type) are the primary inputs for flow estimation.

**Areal Reduction Factor (ARF):** For catchments larger than approximately 10 km2, the point rainfall intensity is reduced to account for the spatial variability of rainfall. ARF = 1 - 0.044 * A^0.275 (MoWT Vol 2 Eqn 4.5), where A is the catchment area in km2.

### 1.2 Universal Formulas

**Rational Method (MoWT Vol 2, Eqn 4.10):**

```
Q = C * I * A / 360
```

Equivalently:

```
Q = 0.00278 * C * I * A
```

Where:
- Q = peak discharge (m3/s)
- C = runoff coefficient (dimensionless)
- I = design rainfall intensity (mm/hr) for duration = Tc at the selected return period
- A = catchment area (hectares)
- The factor 1/360 (= 0.00278) handles unit conversion from mm/hr * ha to m3/s

**CRITICAL:** The factor 0.00278 (or equivalently 1/360) is required when I is in mm/hr and A is in hectares. Using different units without adjusting this factor is a common source of error.

**Weighted Runoff Coefficient (MoWT Vol 2, Eqn 4.6):**

```
C_w = (A1*C1 + A2*C2 + ... + An*Cn) / A
```

Where A1, A2, ..., An are sub-areas of uniform land use, C1, C2, ..., Cn are the corresponding runoff coefficients, and A is the total catchment area.

**Kirpich Formula for Time of Concentration:**

```
Tc = (0.87 * L^3 / H)^0.385
```

Where:
- Tc = time of concentration (hours)
- L = length of main watercourse (km)
- H = elevation difference between the most distant point and the outlet (m)

**SCS Method for Time of Concentration (MoWT Vol 2, Table 4.1, Method 3):**

```
Tc = (0.87 * L^3 / H)^0.385
```

Where L is flow path length in km and H is elevation difference in m. Tc is in hours.

**IDF Relationship (MoWT Vol 2, Eqn 4.1):**

```
i = a / (b + td)^c
```

Where:
- i = rainfall intensity (mm/hr)
- a, b, c = regional constants for the return period
- td = storm duration (hours)
- b = 0.33 hrs for East African stations (MoWT Vol 2 standard value)

**SCS Rainfall-Runoff (MoWT Vol 2, Eqn 4.17):**

```
Q = (P - 0.2S)^2 / (P + 0.8S)
```

Where:
- Q = direct runoff depth (mm)
- P = rainfall depth (mm)
- S = potential maximum retention (mm) = 25400/CN - 254
- CN = SCS Curve Number

### 1.3 Figures & Diagrams

**IDF Curves:** Graphs showing rainfall intensity (y-axis, mm/hr) versus storm duration (x-axis, minutes or hours) for multiple return periods. For a given location and return period, enter with Tc to read the design intensity. The curves are derived from long-term rainfall records and are location-specific.

**Catchment Map:** Shows watershed boundaries, flow paths, land use zones, and the design point (drainage structure location). The longest flow path determines Tc. Sub-catchments may be delineated for composite C calculation.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  --> Load the appropriate country module
  --> If no module exists, flag and use closest available

Step 2: Determine catchment area
  |-- Delineate catchment upstream of the design point
  |-- Measure area (hectares for Rational Method, km2 for SCS)
  +-- If area > 25 km2 --> Consider SCS method instead of Rational

Step 3: Select return period
  --> See country module, Section M.2 for return period by structure type
  |-- Side drains: typically 10-year
  |-- Culverts: typically 25-50 year
  +-- Bridges: typically 50-100 year

Step 4: Estimate time of concentration (Tc)
  |-- Select appropriate method from Table 4.1
  |-- Kirpich or SCS method for rural catchments
  |-- Velocity method for composite flow paths
  +-- Minimum Tc: 5 min for road inlet pits, 10 min for small areas < 0.4 ha

Step 5: Determine rainfall intensity
  --> See country module for IDF data
  |-- Use IDF curve/equation for the location and return period
  +-- Apply ARF if catchment > 10 km2

Step 6: Determine runoff coefficient
  --> See country module for C values
  |-- Single land use: select C from table
  |-- Mixed land use: calculate weighted C
  +-- Apply frequency multiplier for return periods > 10 years if required

Step 7: Calculate design flow
  |-- Rational Method: Q = 0.00278 * C * I * A
  +-- SCS Method: compute runoff depth, then peak flow via unit hydrograph

Step 8: Run validation (Section 4)

Step 9: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Select the method appropriate to the catchment size.** The Rational Method is suitable for catchments up to about 25 km2 (some authorities limit to 12 km2 or 80 hectares). For larger catchments, storage and timing effects become significant, and hydrograph methods (SCS, TRRL East African Flood Model) should be used.

**Conservative C values are appropriate for design.** When in doubt, use higher C values. The consequences of underestimating flow (structure undersized, road damaged) are more severe than overestimating (structure slightly oversized, marginally higher cost).

**Verify Tc is reasonable.** Very short Tc values (<10 minutes) produce very high intensities that may overestimate flow. Very long Tc values for small catchments suggest an error in flow path delineation.

**Check flows against regional data where available.** Compare calculated Q against flood marks, local knowledge, or regional flood envelopes. Unreasonable results should trigger investigation.

### 2.3 Common Errors

1. **Wrong units in the Rational Method.** Using I in mm/hr and A in km2 without adjusting the conversion factor. The formula Q = CIA/360 requires A in hectares. If A is in km2, multiply by 100 first (1 km2 = 100 ha).
2. **Using a single C value for a composite catchment.** Mixed land use requires weighted C calculation using Eqn 4.6.
3. **Using the Rational Method for catchments > 25 km2.** Storage effects make the Rational Method unreliable for large catchments.
4. **Not applying frequency correction factors.** For return periods > 10 years, some standards require multiplying C by a frequency factor (Table 4.8).
5. **Confusing rainfall depth and intensity.** IDF curves give intensity (mm/hr). If using rainfall depth (mm), divide by duration (hours) to get intensity.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Method | Rational Method | Catchment < 25 km2 | No flag | Standard for small catchments |
| Minimum Tc | 10 min | Catchment < 0.4 ha | ASSUMED: Min Tc = 10 min per Table 4.4 | MoWT Vol 2 minimum Tc for small areas |
| ARF | 1.0 | Catchment < 10 km2 | No flag | No areal reduction for small catchments |
| Frequency factor | 1.0 | Return period 2-10 years | No flag | MoWT Table 4.8 -- no adjustment for 2-10 yr |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state the method used** in output. Never silently switch between methods.
3. **Conservative direction:** Use higher C and longer return period when in doubt.
4. **Flag for investigation:** Every assumed value includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Q (design flow) | 0.01 | 500 | m3/s | Warn if > 50 (very large for road drainage); reject if negative |
| C (runoff coefficient) | 0.01 | 1.0 | -- | Reject if outside range |
| I (rainfall intensity) | 5 | 300 | mm/hr | Warn if > 200 (extreme); reject if < 0 |
| A (catchment area) | 0.01 | 2500 | ha | Warn if > 2500 ha (25 km2) for Rational Method |
| Tc (time of concentration) | 5 | 600 | min | Warn if < 10 min (very small, may overestimate I); warn if > 360 min (6 hr) |

### 4.2 Consistency Checks

- **Q magnitude check:** For small side drain catchments (< 5 ha), Q typically < 1 m3/s. Flag if Q > 2 m3/s for A < 5 ha.
- **C vs land use check:** If C > 0.9 and land use is not paved/impervious, flag for review.
- **Return period vs structure type:** Flag if return period < recommended minimum for structure type (e.g., < 25 years for a culvert on a paved road).

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Catchment area > 25 km2 | Rational Method may be unreliable | SENIOR REVIEW -- Catchment area [X] km2 exceeds 25 km2 limit for Rational Method. Consider SCS or TRRL East African Flood Model. |
| No IDF data for location | Cannot determine design rainfall intensity | SENIOR REVIEW -- No IDF data available for [location]. Use nearest station with regional adjustment or commission rainfall analysis. |
| C > 0.8 for rural catchment | Unusually high runoff coefficient | SENIOR REVIEW -- Runoff coefficient [C] is very high for rural catchment. Verify soil type and land use assumptions. |
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
| Catchment area | number | hectares or km2 | Yes | User / survey | Contributing drainage area upstream of design point |
| Land use | text or list | -- | Yes | User / survey | Land use type(s) for C selection |
| Soil type | text | -- | Yes | User / Skill #8 | Soil classification for C or CN selection |
| Slope | number | % or m/m | Yes | User / survey | Average catchment slope for Tc calculation |
| Location | text/coordinates | -- | Yes | User | For selecting IDF data |
| Road class | category | -- | Yes | Skill #13 | For return period selection |
| Structure type | text | -- | Yes | User | Side drain, culvert, bridge -- determines return period |
| Pavement drainage area | number | m2 | No | Skill #17 | For small catchment pavement drainage calculations |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| design_flow | number | m3/s | Skill #30 (Ditch Design), Skill #31 (Culvert Design), Skill #32 (Erosion Protection) | Peak design flow for the selected return period |
| return_period | number | years | Skill #30, Skill #31, Skill #32 | Selected design return period (ARI) |
| catchment_area | number | hectares | Skill #30, Skill #31 | Contributing catchment area |
| time_of_concentration | number | minutes | Skill #30, Skill #31 | Tc for the design point |
| runoff_coefficient | number | -- | Documentation | Weighted C used in calculation |
| rainfall_intensity | number | mm/hr | Documentation | Design rainfall intensity used |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT Vol 2 standards and tables | Markdown |
| `modules/uk.md` | UK DMRB CG 501 standards (knowledge-based) | Markdown |
| `tables/uganda_runoff_coefficients.json` | Runoff coefficients from MoWT Vol 2 | JSON |
| `tables/uganda_idf_parameters.json` | IDF curve parameters for East African stations | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: Delineate Catchment
Determine the catchment area upstream of the drainage structure. Identify land use types, soil types, and flow path characteristics.

### Step 3: Select Return Period
Based on structure type and road class, select the design return period from the country module (Table 3.2 for Uganda).

### Step 4: Estimate Time of Concentration
Select the appropriate Tc method based on catchment characteristics. Calculate Tc from flow path length, slope, and surface characteristics. Enforce minimum Tc (5 min for inlet pits, 10 min for small areas < 0.4 ha).

### Step 5: Determine Rainfall Intensity
Use IDF data from the country module for the project location. Enter IDF equation/curve with Tc as storm duration at the selected return period. Apply ARF if catchment > 10 km2.

### Step 6: Determine Runoff Coefficient
Select C from country module tables based on land use, soil type, and slope. Calculate weighted C for composite catchments. Apply frequency factor for return periods > 10 years if required.

### Step 7: Calculate Design Flow
Apply the Rational Method: Q = 0.00278 * C * I * A (A in hectares, I in mm/hr).
For large catchments (> 25 km2), use SCS method and flag the method change.

### Step 8: Validate Results
Run all universal and country-specific checks. Compare Q against reasonable ranges for the catchment size.

### Step 9: Produce Output
Format results per Section 8.

---

## 8. Output Format

```
============================================================
HYDROLOGY FOR ROAD DRAINAGE -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

DESIGN PARAMETERS
-----------------
Structure type:              [side drain / culvert / bridge]
Design return period:        [X] years
Method:                      [Rational Method / SCS]

CATCHMENT DATA
--------------
Catchment area:              [X] hectares ([Y] km2)
Land use:                    [description]
Soil type:                   [description]
Weighted runoff coefficient: [C]
Average slope:               [X]%

TIME OF CONCENTRATION
---------------------
Method:                      [Kirpich / SCS / Velocity]
Flow path length:            [X] m
Elevation difference:        [X] m
Tc:                          [X] minutes

DESIGN RAINFALL
---------------
Location / IDF source:      [station name or coordinates]
Rainfall intensity (I):      [X] mm/hr for [Tc] min duration, [RP]-year ARI
Areal reduction factor:      [X] (1.0 if < 10 km2)

DESIGN FLOW CALCULATION
-----------------------
Q = 0.00278 * C * I * A
Q = 0.00278 * [C] * [I] * [A]
Q = [X] m3/s

ASSUMPTIONS & DEFAULTS
---------------------
[All assumed values with flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

ESCALATION FLAGS
---------------
[Flags or "None"]

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

- **Not covered:** Flood frequency analysis from gauged data (Section 6 of MoWT Vol 2). Dam break or flood routing analysis. Urban storm sewer network design (pipe sizing). Detention basin sizing (Section 7 of MoWT Vol 2).
- **Simplifications:** Uses point-estimate approach (single Q value) rather than full hydrograph analysis. Rational Method assumes uniform rainfall intensity over the catchment. SCS method presented at knowledge level without detailed tabular hydrograph computation.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with Rational Method (MoWT Vol 2 Eqn 4.10), SCS CN method, IDF parameters, runoff coefficients |
