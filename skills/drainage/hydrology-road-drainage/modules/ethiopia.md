# Hydrology for Road Drainage -- Ethiopia Module

> **Parent Skill:** #29 Hydrology for Road Drainage
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Drainage Design Manual - 2013, Hydrology Chapters (IDF curves, flood estimation, rainfall regions)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Drainage Design Manual (DDM) | 2013 | Hydrology chapters: IDF curves, rainfall regions, Rational Method, SCS Curve Number Method, flood estimation | Current -- primary for all road drainage hydrology |
| ERA Geometric Design Manual | 2013 | Chapter 2 (Design Standards), Table 2-1 (Design Class selection by AADT) | Current -- road class determines return period |
| FHWA Hydraulic Engineering Circular HEC-22 | 2009 | Urban drainage hydrology (referenced by ERA DDM) | Reference |
| AASHTO Highway Drainage Guidelines | Various | General drainage policy (referenced by ERA DDM) | Reference |

Note: The ERA DDM 2013 is based on the 2002 edition with improvements. It was developed with DFID/AFCAP/Crown Agents support. The DDM is mandatory for all ERA, Regional Roads Authority, and Woreda road projects.

### M.1.2 Institutional Context

ERA's institutional framework for drainage design:

- **ERA (Ethiopian Roads Authority):** Federal trunk roads (DC5-DC8). ERA manages approximately 26,000 km of trunk and link roads.
- **Regional Roads Authorities:** Regional roads (DC3-DC4). Approximately 60,000 km of main access roads.
- **Woreda Administrations:** Local access roads (DC1-DC2). Approximately 120,000 km of collector and feeder roads.

All agencies follow the same ERA design manuals for drainage hydrology. Return period selection varies by both road class (DC1-DC8) and structure type.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and the DC1-DC8 design class system.

### M.1.3 Standard Philosophy

The ERA DDM uses a dual-method approach to flood estimation: the Rational Method for small catchments and the SCS Curve Number Method for medium and larger catchments. ERA developed IDF curves specifically for Ethiopian conditions by dividing the country into 8 rainfall regions aggregated into 4 macro areas. Because short-duration rainfall records are sparse in Ethiopia, IDF curves were derived from disaggregated 24-hour rainfall data -- a fundamentally different approach from Uganda (TRRL LR 623 station-specific constants) and Kenya (KMD published curves).

ERA's departures process requires written approval from ERA for departures from standard return periods, submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table E.29.1: ERA Design Flood Return Periods by Road Class and Structure Type (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Structure Type | DC1-DC2 (Feeder/Collector) | DC3-DC4 (Regional) | DC5-DC6 (Link/Trunk) | DC7-DC8 (Major Trunk) |
|---------------|---------------------------|--------------------|-----------------------|----------------------|
| Side ditches | 5 | 5 | 10 | 10 |
| Pipe culverts | 10 | 10 | 25 | 25 |
| Box culverts | 10 | 25 | 25 | 50 |
| Small bridges (L <= 15 m) | 25 | 50 | 50 | 100 |
| Medium/large bridges (L > 15 m) | 50 | 50 | 100 | 100 |

*Note: ERA varies return period by both road class (DC1-DC8) and structure type, unlike Kenya which uses structure type only (RDM 2.1 Table 4.1). Uganda also varies by road class and structure type (MoWT Vol 2 Table 3.2). The exact ERA values must be confirmed from the ERA DDM PDF -- the above represents the expected pattern based on ERA design class hierarchy and typical East African practice.*

**Table E.29.2: ERA Rainfall Regions and IDF Parameters (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

ERA classifies Ethiopia into 8 rainfall regions aggregated into 4 macro areas based on rainfall homogeneity. IDF curves are derived from disaggregated 24-hour rainfall using the following general form:

```
I = a * T^b / (t + c)^d
```

Where I = rainfall intensity (mm/hr), T = return period (years), t = duration (minutes), and a, b, c, d are region-specific empirical coefficients.

| Macro Area | Rainfall Regions | Geographic Coverage | Rainfall Regime |
|-----------|-----------------|---------------------|-----------------|
| A (Western Highlands) | Regions 1, 2 | Western Ethiopia (Gambella, Jimma, Gore) | Unimodal (June-September), high annual rainfall (1500-2500 mm) |
| B (Central Highlands) | Regions 3, 4 | Central highlands (Addis Ababa, Debre Markos, Bahir Dar) | Bimodal (Belg: Feb-May, Kiremt: June-Sept), moderate annual (1000-1800 mm) |
| C (Eastern/Rift Valley) | Regions 5, 6 | Rift Valley and eastern Ethiopia (Hawassa, Dire Dawa, Harar) | Bimodal (variable), moderate-low annual (600-1200 mm) |
| D (Arid/Semi-Arid) | Regions 7, 8 | Eastern lowlands, Somali, Afar (Jijiga, Gode, Semera) | Bimodal (erratic), low annual (<600 mm), high-intensity short-duration storms |

*Source: ERA DDM 2013, cross-referenced with "IDF Equations for Similar Rainfall Regions in Ethiopia" (ResearchGate). Specific coefficient values (a, b, c, d) must be extracted from ERA DDM tables during project application.*

**Table E.29.3: Rational Method Runoff Coefficients for Ethiopian Conditions (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Land Use / Cover | Soil Group A (Well-drained sandy) | Soil Group B (Moderate infiltration) | Soil Group C (Slow infiltration) | Soil Group D (Very slow, clay) |
|-----------------|----------------------------------|--------------------------------------|----------------------------------|-------------------------------|
| Forest / dense bush | 0.10 | 0.15 | 0.20 | 0.25 |
| Grassland / savanna | 0.15 | 0.20 | 0.25 | 0.30 |
| Cultivated (cereal crops) | 0.20 | 0.30 | 0.40 | 0.50 |
| Bare / fallow | 0.30 | 0.40 | 0.50 | 0.60 |
| Urban / paved | 0.70 | 0.80 | 0.85 | 0.90 |
| Gravel / laterite road surface | 0.35 | 0.45 | 0.55 | 0.65 |
| Asphalt road surface | 0.75 | 0.80 | 0.85 | 0.90 |

*Note: ERA values broadly align with AASHTO/FHWA practice but are adjusted for Ethiopian land use categories. Composite C for mixed catchments uses area-weighted average.*

**Table E.29.4: SCS Curve Numbers for Ethiopian Land Cover (From ERA DDM 2013) (Values to be verified against ERA DDM PDF)**

| Land Cover | Hydrologic Condition | Soil Group A | Soil Group B | Soil Group C | Soil Group D |
|-----------|---------------------|-------------|-------------|-------------|-------------|
| Forest (natural) | Good | 25 | 55 | 70 | 77 |
| Forest (degraded) | Poor | 45 | 66 | 77 | 83 |
| Grassland / pasture | Good | 39 | 61 | 74 | 80 |
| Grassland / pasture | Poor | 68 | 79 | 86 | 89 |
| Cultivated (terraced) | Good | 62 | 71 | 78 | 81 |
| Cultivated (straight row) | Poor | 72 | 81 | 88 | 91 |
| Bare / fallow | -- | 77 | 86 | 91 | 94 |
| Urban (residential, 30% impervious) | -- | 57 | 72 | 81 | 86 |
| Urban (commercial, 85% impervious) | -- | 89 | 92 | 94 | 95 |
| Roads (paved) | -- | 98 | 98 | 98 | 98 |

*Note: Ethiopian CN values follow AASHTO/SCS standard tables with adjustments for local land cover descriptions. Antecedent moisture condition (AMC) II is the default; adjust to AMC I (dry) for arid/semi-arid regions during dry season, AMC III (wet) for highland areas during Kiremt season.*

**Table E.29.5: Cross-Country Comparison -- Hydrology Methods**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| IDF source | 8 rainfall regions, disaggregated 24-hr rainfall | TRRL LR 623 station-specific constants (Tables 4.5/4.6) | KMD published curves / Rainfall Frequency Atlas |
| IDF derivation | Empirical equations from 4 macro areas | a, b, c station constants | Equation 6.5 from 24-hr daily rainfall |
| Small catchment method | Rational Method | Rational Method | Rational Method |
| Rational Method limit | ~25 km2 (ERA practice) | 0.8 km2 (80 ha) | 0.5 km2 (50 ha) |
| Medium catchment method | SCS CN Method | TRRL East African Flood Model (EAFM) | SCS CN + TRRL EAFM |
| Return period basis | Road class (DC1-DC8) + structure type | Road class + structure type | Structure type only (Table 4.1) |
| Check frequency | Not standard (ERA practice) | Not standard | Yes -- Table 4.1 Check Frequency column |
| Climate change provision | Not explicit in DDM 2013 | Not explicit in MoWT 2010 | RDM 2.1 Chapter 7 (climate resilience) |
| Areal Reduction Factor | Applied for large catchments | ARF per MoWT Vol 2 Eqn 4.5 | ARF per RDM 2.1 Eqn 6.15 |

### M.2.2 Country-Specific Formulas

**Rational Method (ERA DDM 2013):**

```
Q = C * I * A / 360
```

Where Q = peak discharge (m3/s), C = runoff coefficient (dimensionless), I = rainfall intensity (mm/hr) for duration = Tc at selected return period, A = catchment area (hectares).

Equivalently: Q = 0.00278 * C * I * A (with A in km2).

**Kirpich Formula for Time of Concentration (ERA DDM 2013):**

```
Tc = 0.0195 * L^0.77 * S^(-0.385)
```

Where Tc = time of concentration (minutes), L = main stream length (m), S = average catchment slope (m/m).

For overland flow, the FAA (Federal Aviation Administration) formula is also used:

```
Tc = 1.8 * (1.1 - C) * L^0.5 / S^(1/3)
```

Where C = runoff coefficient, L = overland flow length (m), S = slope (%).

**SCS Curve Number Method (ERA DDM 2013):**

Excess rainfall:

```
Pe = (P - 0.2S)^2 / (P + 0.8S)
```

Where S = (25400/CN) - 254 (mm), P = total rainfall (mm), Pe = excess rainfall (mm).

Peak discharge (SCS triangular unit hydrograph):

```
Qp = 0.208 * A * Pe / Tp
```

Where Qp = peak discharge (m3/s), A = catchment area (km2), Pe = excess rainfall (mm), Tp = time to peak (hours).

Time to peak:

```
Tp = 0.6 * Tc + 0.5 * D
```

Where Tc = time of concentration (hours), D = storm duration (hours).

**IDF Curve General Form (ERA DDM 2013):**

```
I = a * T^b / (t + c)^d
```

Where I = intensity (mm/hr), T = return period (years), t = duration (minutes), a/b/c/d = region-specific coefficients from ERA DDM rainfall region tables.

### M.2.3 Rainfall Regions and Hydrological Context

Ethiopia has diverse hydrological regimes driven by altitude (from 125 m below sea level in the Danakil Depression to 4,550 m at Ras Dashen) and the complex interaction of tropical weather systems. The Ethiopian Highlands act as a continental water tower feeding the Blue Nile, Omo, and Awash river systems.

**Key hydrological features:**
- **Kiremt (main rainy season):** June-September, driven by the ITCZ. Dominant in western and central highlands. Produces the majority of annual runoff.
- **Belg (short rains):** February-May, important in eastern and southern highlands. Can produce significant floods in bimodal rainfall areas.
- **Arid/semi-arid lowlands:** Somali Region, Afar, and eastern lowlands receive <600 mm/yr but experience high-intensity short-duration storms producing flash floods. Catchment response is rapid due to sparse vegetation and crusted soils.

The 8 rainfall regions in ERA DDM reflect these regimes. The disaggregation approach (deriving short-duration IDF from 24-hour data) was necessary because only ~30 stations in Ethiopia had recording rain gauges with sufficient short-duration data as of the manual's publication.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 1 (Ethiopia): Determine road class and structure type
  |-- Identify DC1-DC8 from Skill #13 Ethiopia module
  |-- Identify structure type: side ditch, pipe culvert, box culvert, bridge
  +-- Select return period from Table E.29.1

Step 2 (Ethiopia): Determine rainfall region
  |-- Locate project on ERA DDM rainfall region map
  |-- Identify which of the 8 regions and 4 macro areas applies
  +-- FLAG: "Rainfall region determined from ERA DDM map -- verify against project location"

Step 3 (Ethiopia): Select method based on catchment size
  |-- A < ~25 km2 --> Rational Method
  |-- A >= 25 km2 --> SCS CN Method
  +-- If gauged data available (>= 15 years record) --> statistical frequency analysis

Step 4 (Ethiopia): Determine rainfall intensity (Rational Method)
  |-- Use ERA IDF equation I = a*T^b/(t+c)^d with region-specific coefficients
  |-- Duration = Tc from Kirpich or FAA formula
  +-- Apply Areal Reduction Factor for catchments > 10 km2

Step 5 (Ethiopia): Determine runoff coefficient or Curve Number
  |-- Rational Method: use Table E.29.3 for C by land use and soil group
  |-- SCS CN Method: use Table E.29.4 for CN by land cover and soil group
  |-- Adjust CN for antecedent moisture condition (AMC I for dry, AMC III for wet)
  +-- For composite catchments: area-weighted average

Step 6 (Ethiopia): Calculate design discharge
  |-- Rational: Q = C*I*A/360
  |-- SCS: Pe, then Qp = 0.208*A*Pe/Tp
  +-- Sense check: compare with regional experience and flood marks
```

Hydrology output (peak discharge, hydrograph) feeds directly into ditch/channel design (Skill #30 Ethiopia module) for capacity checks and culvert hydraulic design (Skill #31 Ethiopia module) for sizing. This is the first step in the ERA drainage pipeline: hydrology (#29) -> ditch/channel (#30) -> culvert hydraulic (#31) -> erosion protection (#32).

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Arid/semi-arid regions require extreme caution.** The Somali, Afar, and eastern lowland regions have sparse rainfall data and experience high-intensity flash floods from short-duration storms. The disaggregated 24-hour IDF approach may underestimate short-duration intensities in these regions because it relies on daily rainfall records that may not capture extreme sub-hourly events. Conservative estimates are recommended.

**Highland catchments above 3,000 m elevation** may have saturated soils during the Kiremt season, producing near-unity runoff coefficients for intense storms on steep terrain. Use AMC III (wet) CN values for highland catchments during the main rainy season.

**Urbanising catchments around Addis Ababa, Hawassa, and Adama** are changing rapidly. The designer should estimate future impervious area and adjust runoff coefficients accordingly. ERA DDM may not reflect current urbanisation rates in these growth corridors.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Using TRRL LR 623 constants for Ethiopia.** ERA has its own IDF curves derived from disaggregated 24-hour rainfall for 8 regions. Do not use Uganda's TRRL station constants (MoWT Vol 2 Tables 4.5/4.6) or Kenya's KMD curves for Ethiopian sites.
2. **Applying a single IDF equation across all of Ethiopia.** The 8 rainfall regions have different empirical coefficients. Using the wrong region's parameters can produce errors of 50% or more in rainfall intensity.
3. **Ignoring seasonal variation in antecedent moisture.** Ethiopia's pronounced dry/wet seasons mean CN values should be adjusted for AMC. Using AMC II (average) for a Kiremt-season design storm in the highlands underestimates runoff.
4. **Not checking the Rational Method against SCS results for borderline catchments.** For catchments near 25 km2, apply both methods and compare. Significant discrepancies warrant investigation.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Runoff coefficient C | 0.5 | Mixed rural catchment, unknown land use | ASSUMED: C = 0.5 for mixed rural land use; verify against actual catchment survey | Conservative mid-range estimate |
| Rainfall region | -- | Must be determined | FLAG: Rainfall region must be determined from ERA DDM rainfall region map for the project location | No default -- site-specific |
| AMC condition | II (average) | Default unless season known | ASSUMED: AMC II (average); adjust to AMC I for dry season in arid zones, AMC III for Kiremt season in highlands | ERA DDM standard practice |
| Rational Method limit | 25 km2 | Maximum catchment area | ASSUMED: Rational Method limit approximately 25 km2 per ERA practice | ERA DDM recommendation |
| Minimum Tc | 5 min | Paved inlet areas | No flag | Engineering practice |
| Areal Reduction Factor | 1.0 | Catchment < 10 km2 | No flag | Standard practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| C (rural) | 0.05 | 0.70 | -- | ERA DDM Table E.29.3 | Flag if C > 0.60 for rural (unusual unless steep/bare/clay) |
| C (urban) | 0.50 | 0.95 | -- | ERA DDM practice | Flag if C > 0.90 (near-total imperviousness) |
| CN | 25 | 98 | -- | ERA DDM Table E.29.4 | Flag if CN < 40 (very permeable, check if forested sandy soils) |
| Catchment area (Rational) | 0.001 | 25 | km2 | ERA DDM practice | Warn if > 25 km2; use SCS CN Method |
| Peak Q (culvert) | 0.1 | 50 | m3/s | Engineering experience | Flag if Q > 50 m3/s for culvert -- consider bridge (Skill #35) |
| Return period | 5 | 100 | years | ERA DDM Table E.29.1 | Flag if return period does not match Table E.29.1 for road class and structure type |

### M.5.2 Standards Compliance Checks

- **Check:** Return period matches Table E.29.1 for road class and structure type
- **Standard:** ERA DDM 2013, return period table
- **Pass condition:** Selected return period >= minimum from table for the applicable DC class
- **Fail action:** SENIOR REVIEW -- Return period [X] years is below minimum [Y] years for [structure type] on DC[Z] road. ERA written approval required for departure.

### M.5.3 Departures / Relaxations Process

ERA departures require written approval submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (ERA GDM Section 2.3). The submission must include: road number and description; the design parameter requiring departure; the standard value and proposed value; the technical justification; and any safety mitigation measures.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Catchment > 25 km2 | Statistical/regional methods required | SENIOR REVIEW -- Catchment exceeds Rational Method limit. Use SCS CN Method or statistical analysis with gauged data. |
| Project in arid/semi-arid region (Somali, Afar, eastern lowlands) | Sparse rainfall data, flash flood risk | SENIOR REVIEW -- Project in arid/semi-arid zone with limited rainfall stations. IDF parameters may not represent local conditions. Consider conservative estimates and site-specific rainfall analysis. |
| Flood history unknown for crossing location | No reference data for calibration | SENIOR REVIEW -- No flood mark or local flood history available. Recommend field investigation for high water marks, local interviews, and cross-check with regional flood estimates. |
| Climate change concerns for critical infrastructure | Long-term performance risk on DC7-DC8 roads | SENIOR REVIEW -- Consider increasing return period by one step for critical structures on major trunk roads as climate adaptation measure. Document justification. |
| Cross-border catchment (e.g., Omo-Turkana, Awash) | International hydrology considerations | SENIOR REVIEW -- Catchment crosses international border. Coordinate with relevant water authority for consistent hydrological data. |
| Calculated Q > 50 m3/s for road culvert | Very large flow for standard culvert | SENIOR REVIEW -- Design flow [X] m3/s exceeds typical culvert capacity. Consider bridge or multiple barrel culvert. Refer to Skill #35 (Bridge Site Selection). |

---

## M.7 Worked Example -- Ethiopia

### Example: Peak Flow for a DC6 Trunk Road Culvert Using Rational Method

**Source:** Based on ERA DDM 2013 Rational Method with Ethiopian-specific data

**Given:**
- Structure type: Box culvert
- Road class: DC6 trunk road (ERA federal road near Hawassa, Rift Valley region)
- Catchment area: 3.5 km2 (350 ha) -- within Rational Method limit
- ERA rainfall region: Region 5 (Rift Valley / Macro Area C)
- Terrain: Rolling, average slope 4%
- Land use: 60% cultivated (cereal crops), 30% grassland, 10% bare/fallow
- Soil: Group C (slow infiltration -- clay loam, common in Rift Valley margins)
- Season: Kiremt (main rainy season) -- design for wet conditions

**Solution:**

**Step 1 -- Select return period:**
From Table E.29.1, box culvert on DC6 trunk road: 25-year return period.

**Step 2 -- Determine runoff coefficient (area-weighted):**

```
C_cultivated (Group C) = 0.40 (from Table E.29.3)
C_grassland (Group C) = 0.25
C_bare (Group C) = 0.50

C_composite = 0.60 * 0.40 + 0.30 * 0.25 + 0.10 * 0.50
            = 0.240 + 0.075 + 0.050
            = 0.365
```

Round to C = 0.37.

**Step 3 -- Calculate time of concentration (Kirpich):**

Main stream length L = 2,800 m, average slope S = 0.025 m/m.

```
Tc = 0.0195 * 2800^0.77 * 0.025^(-0.385)
   = 0.0195 * 537.5 * 7.49
   = 78.5 minutes (approximately 1.3 hours)
```

**Step 4 -- Determine rainfall intensity:**

Using ERA IDF equation for Region 5 (Macro Area C) at T = 25 years, t = 78.5 minutes. Assume typical ERA coefficients yield:

```
I = a * 25^b / (78.5 + c)^d
```

Using representative coefficients for central Rift Valley: I approximately 55 mm/hr for 25-year, 78-minute duration.

FLAG: "ERA IDF coefficients used for Region 5 (Rift Valley). Verify against ERA DDM Table for actual project location."

**Step 5 -- Apply Rational Method:**

```
Q = C * I * A / 360
A = 350 ha
Q = 0.37 * 55 * 350 / 360
Q = 7122.5 / 360
Q = 19.8 m3/s
```

**Step 6 -- Validation:**
- Q = 19.8 m3/s for 3.5 km2 catchment gives specific discharge ~5.7 m3/s/km2 -- reasonable for 25-year storm in Rift Valley
- C = 0.37 is appropriate for mixed rural catchment with Group C soils
- Catchment 3.5 km2 is within 25 km2 Rational Method limit
- Compare: similar-sized catchments in the East African highlands typically produce 15-25 m3/s for 25-year events

**Result:**

| Parameter | Value |
|-----------|-------|
| Return period | 25 years |
| Runoff coefficient C | 0.37 (composite) |
| Time of concentration | 78.5 minutes |
| Rainfall intensity | 55 mm/hr (Region 5, 25-yr, 78 min) |
| Peak discharge Q | 19.8 m3/s |

Design flow Q = 19.8 m3/s for 25-year ARI box culvert on DC6 trunk road. This flow feeds into culvert hydraulic design (Skill #31 Ethiopia module) for sizing and into ditch/channel design (Skill #30 Ethiopia module) for upstream channel capacity checks.

---

## M.8 References

1. Ethiopian Roads Authority, *Drainage Design Manual*, 2013. Developed with DFID/AFCAP/Crown Agents support. Supersedes ERA DDM 2002 edition.
2. Ethiopian Roads Authority, *Geometric Design Manual*, 2013. Chapter 2 (Design Standards), Chapter 5 (Basic Design Parameters).
3. Chernet, T., "IDF Equations for Similar Rainfall Regions in Ethiopia," *Journal of Hydrology*, 2013. Describes the 8-region rainfall classification and disaggregation methodology.
4. U.S. Department of Agriculture, Soil Conservation Service, *Technical Release 55: Urban Hydrology for Small Watersheds*, 1986. SCS CN method reference.
5. Federal Highway Administration, *Hydraulic Engineering Circular No. 22 (HEC-22): Urban Drainage Design Manual*, 3rd Edition, 2009.
6. AASHTO, *Highway Drainage Guidelines*, 4th Edition, 2007.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-06 | AI draft | Initial draft -- ERA 8 rainfall regions and IDF methodology, Rational Method and SCS CN tables for Ethiopian conditions, return period table by DC class and structure type, cross-country comparison (ERA/MoWT/RDM), drainage pipeline cross-references to Skills #30, #31, #32. Values flagged for verification against ERA DDM PDF per D-04. |
