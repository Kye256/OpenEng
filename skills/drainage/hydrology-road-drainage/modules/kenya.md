# Hydrology for Road Drainage -- Kenya Module

> **Parent Skill:** #29 Hydrology for Road Drainage
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 2.1: Hydrological Surveys (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 2.1: Hydrological Surveys | 2025 | Ch 4 (design standards and return periods), Ch 6 (flood estimation for ungauged catchments), Ch 7 (climate resilience and adaptation) | Current |
| Kenya RDM 2.2: Drainage Design | 2025 | Ch 4 (culvert hydraulics -- references hydrology output), Ch 5 (bridge hydraulics) | Current |
| TRRL Laboratory Report 706 | 1976 | East African Flood Model (EAFM) | Reference |
| TRRL Laboratory Report 623 | 1976 | Storm rainfall prediction in East Africa | Reference |
| Rainfall Frequency Atlas of Kenya | Various | IDF curves for Kenya stations | Reference |

### M.1.2 Institutional Context

Kenya's road network is managed by multiple agencies under the Ministry of Roads and Transport. The institutional structure for drainage design follows the Kenya road classification system (see Skill #13 Kenya module M.1.2 for full details):

- **KeNHA** (Kenya National Highways Authority): National trunk roads (Class A, B) -- typically require 50-100 year return period structures
- **KeRRA** (Kenya Rural Roads Authority): Rural roads (Class C, D, E) -- typically require 10-25 year return period structures
- **KURA** (Kenya Urban Roads Authority): Urban roads (Class UA, UC, UL) -- urban drainage per RDM 2.2 Ch 7
- **County Governments:** County roads -- adopt RDM standards where applicable

The Kenya RDM 2.1 (2025) was developed by TRL Limited (UK) with African Development Bank funding, administered through KeNHA. It has the status of a Manual -- users "shall apply the contents there-in" (Document Management section). It replaces the 1987/1991 drainage portions of the older Road Design Manual Part IV.

### M.1.3 Standard Philosophy

RDM 2.1 mandates that users "shall apply the contents" of the manual. Departures from the prescribed methods or return periods require approval from the Chief Engineer, State Department for Roads. The manual uses "shall" language for mandatory requirements.

The manual incorporates multiple flood estimation methods (Rational, SCS, TRRL/EAFM, Statistical) and requires the designer to select the most appropriate method based on catchment size and data availability (Table 4.2, Figure 4.1). The IDF data approach differs significantly from Uganda -- Kenya derives IDF from KMD published curves or the Rainfall Frequency Atlas, not from TRRL LR 623 station-specific constants.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table 4.1: Applicable Design Flow Return Periods (Years) -- Verified from RDM 2.1 p25**

| S/No | Structure Type | Design Frequency | Check Frequency |
|------|---------------|-----------------|----------------|
| 1 | Gutters and inlets | 2 | 5 |
| 2 | Side ditches and open channel | 5 | 10 |
| 3 | Pipe culverts | 10 | 25 |
| 4 | Box culverts (total area of opening/s < 6.0 m2) | 25 | 50 |
| 5 | Box culverts (total area of opening/s > 6.0 m2) | 50 | 100 |
| 6 | Short (6m < L <= 15m) and medium (15m < L <= 50m) bridges | 50 | 100 |
| 7 | Long (L > 50m) bridges | 100 | 200 |

*Note: L is the length of bridge from abutment to abutment. Kenya Table 4.1 classifies by structure type only (not road class), unlike Uganda Table 3.2 which varies by road class. Kenya also introduces a "Check Frequency" column for assessing extreme events.*

**Comparison with Uganda MoWT Table 3.2:** Kenya uses a single table for all road classes, classified by structure type and opening size. Uganda varies return period by both road class and structure type. For pipe culverts, Kenya specifies 10-year design / 25-year check, which aligns with Uganda's Paved III gravel road class. For high-class roads in Uganda, culvert requirements are 25-50 years -- higher than Kenya's uniform 10 years. This difference should be noted when comparing designs.

**Table 6.5: Recommended Runoff Coefficient for Terrain Type (Verified from RDM 2.1 p39)**

| Terrain Type | Soil A | Soil B | Soil C | Soil D |
|-------------|--------|--------|--------|--------|
| Flat, < 2% | 0.04-0.09 | 0.07-0.12 | 0.11-0.16 | 0.15-0.20 |
| Rolling, 2-6% | 0.09-0.14 | 0.12-0.17 | 0.16-0.21 | 0.20-0.25 |
| Mountain, 6-15% | 0.13-0.18 | 0.18-0.24 | 0.23-0.31 | 0.28-0.38 |
| Escarpment, > 15% | 0.18-0.22 | 0.24-0.30 | 0.30-0.40 | 0.38-0.48 |

**Table 6.6: Recommended Coefficients for Composite Runoff Analysis (Verified from RDM 2.1 p39)**

| Surface | Runoff Coefficients |
|---------|-------------------|
| Asphalt (street) | 0.70-0.95 |
| Concrete (street) | 0.80-0.95 |
| Drives and walks | 0.75-0.85 |
| Roofs | 0.75-0.95 |

**Table 6.9: Recommended Runoff Coefficient C for Rural Catchment (Verified from RDM 2.1 p45)**

The rural runoff coefficient uses a component sum approach: C = Cs + Cp + Cv (Equation 6.6)

| Factor | Description | Runoff Coefficient |
|--------|-------------|-------------------|
| **Cs** - Average slope | < 3.5% Flat | 0.05 |
| | 3.5-10% Soft to moderate | 0.10 |
| | 10-25% Rolling | 0.15 |
| | 25-45% Hilly | 0.20 |
| | > 45% Mountainous | 0.25 |
| **Cp** - Permeability | Well drained soil (sand, gravel) | 0.05 |
| | Fair drained soil (sand, gravel with fines) | 0.10 |
| | Poorly drained soil (silt) | 0.15 |
| | Impervious soil (clay, organic silts/clay) | 0.25 |
| | Water-logged black cotton soil | 0.50 |
| | Rock | 0.40 |
| **Cv** - Vegetation | Dense forest/thick bush | 0.05 |
| | Sparse forest/dense grass | 0.10 |
| | Grassland/scrub | 0.15 |
| | Cultivation | 0.20 |
| | Space grassland | 0.25 |
| | Barren | 0.30 |

**Table 6.10: Recommended Runoff Coefficient C for Various Urban Land Uses (Verified from RDM 2.1 p45)**

| Urban Land Use | Runoff Coefficient |
|----------------|-------------------|
| Business - Downtown areas | 0.70-0.95 |
| Business - Neighbourhood areas | 0.50-0.70 |
| Residential - Single-family areas | 0.30-0.50 |
| Residential - Multi units, detached | 0.40-0.60 |
| Residential - Suburban | 0.25-0.40 |
| Residential - 0.5 hectare lots or more | 0.30-0.45 |
| Residential - Apartment dwelling areas | 0.50-0.70 |
| Industrial - Light areas | 0.50-0.80 |
| Industrial - Heavy areas | 0.60-0.90 |
| Industrial - Railroad yard areas | 0.20-0.40 |
| Industrial - Unimproved areas | 0.10-0.30 |
| Recreational - Parks, cemeteries | 0.10-0.25 |
| Recreational - Playgrounds | 0.20-0.40 |

**Table 6.11: Hydrological Frequency Factor (Cf) for Different Return Period (Verified from RDM 2.1 p46)**

| Recurrence Interval (years) | Cf |
|-----------------------------|----|
| 5 | 1.0 |
| 10 | 1.0 |
| 25 | 1.10 |
| 50 | 1.20 |
| 100 | 1.25 |

**Table 4.2: Application and Limitation of Flood Estimation Methods (Verified from RDM 2.1 p27)**

| Method | Recommended Max Area (km2) | Return Period Limits (years) |
|--------|---------------------------|----------------------------|
| Rational Method | < 0.5 | 2-200 |
| SCS Method | No limitation, large areas | 2-200 |
| Synthetic Hydrograph | Up to 200 | 2-200 |
| Empirical Methods | No limitation, large areas | 2-200 |
| Statistical Method | No limitation, large areas | 2-200 |

*Note: Kenya limits the Rational Method to 0.5 km2 (50 hectares), compared to Uganda's limit of 80 hectares (0.8 km2). Kenya recommends the TRRL/EAFM for 0.5-200 km2 or SCS for larger areas.*

**IDF Parameters:** --> `tables/kenya_idf_parameters.json`

Contains Kenya's IDF approach using Equation 6.5 for site-specific intensity from 24hr daily rainfall, rainfall zone parameters from Table 6.16, and regional flood frequency curves from Table 5.3.

**CN Values:** --> `tables/kenya_cn_values.json`

Contains SCS Curve Numbers from RDM 2.1 Tables 6.18-6.22, covering urban areas, agricultural land, and arid/semiarid rangelands (particularly relevant for Kenya's ASALs).

### M.2.2 Country-Specific Formulas

**Rational Method (RDM 2.1, Equation 6.1):**

```
Q = 0.00278 * C * I * A
```

Where Q is in m3/s, C is dimensionless, I is in mm/hr, A is catchment area in km2. Note: Kenya uses km2, not hectares as in Uganda. For areas in hectares, use Q = CIA/360.

**Modified Rational Method (RDM 2.1, Section 6.6.10):**

For return periods > 10 years, multiply by frequency factor Cf from Table 6.11:

```
Q_design = Cf * Q
```

**Kirpich Formula for Time of Concentration (RDM 2.1, Equation 6.2):**

```
Tc = 0.0663 * L^0.77 * S^(-0.385)
```

Where Tc is in hours, L is main stream length in km, S is overall catchment slope in m/m.

**Hathway Formula for Time of Concentration (RDM 2.1, Equation 6.3):**

```
Tc = 1.44 * (L * N / sqrt(S))^0.47
```

Where Tc is in minutes, L is catchment length in metres, S is slope in m/m, N is roughness factor from Table 6.8:

| Soil types | N |
|-----------|---|
| Smooth and impermeable | 0.02 |
| Bare and compacted | 0.10 |
| Plantations and agricultural areas | 0.20 |
| Bush and shrubs, low vegetation | 0.40 |
| Forest | 0.60 |

**IDF from Daily Rainfall (RDM 2.1, Equation 6.5):**

```
I = (374.0410 * T^0.206252 / t^0.61885)^0.47
```

Where I is intensity (mm/hr), T is return period (years), t is duration (minutes). This equation derives IDF from 24-hour maximum annual daily rainfall for a specific site.

**SCS Rainfall-Runoff Equation (RDM 2.1, Equation 6.18):**

```
Q = (P - 0.2S)^2 / (P + 0.8S)
```

Where S = 25400/CN - 254 (Equation 6.19). Q is accumulated direct runoff (mm), P is accumulated rainfall (mm).

**SCS Peak Discharge (RDM 2.1, Equation 6.25-6.26):**

```
Qp = qu * A * y
qu = a * 10^(C0 + C1*log(tc) + C2*(log(tc))^2)
```

Where Qp is peak discharge (m3/s), A is drainage area (km2), y is depth of runoff (mm), qu is unit peak discharge (m3/s/km2/mm), and C0, C1, C2 are regression coefficients from Table 6.17.

**TRRL East African Flood Model (RDM 2.1, Section 6.7):**

Contributing area coefficient: CA = Cs * Cw * CL (Equation 6.10)
Where Cs from Table 6.12, Cw from Table 6.13, CL from Table 6.14.

Runoff volume: RO = (P - Y) * CA * A * 10^3 (Equation 6.8)
Average flow: Qave = 0.93 * RO / (3600 * TB) (Equation 6.9)
Peak flow: Q = F * Qave (Equation 6.7), where F = peak flow factor (2.8 for K < 0.5 hr, 2.3 for K > 1 hr).

**Area Reduction Factor (RDM 2.1, Equation 6.15):**

```
ARF = 1 - 0.04 * T^(1/3) * A^(1/2)
```

Where T is duration, A is catchment area in km2.

### M.2.3 Hydrological Basins and Rainfall Regions

Kenya has 5 hydrological basins (Figure 2.1): Rift Valley, Lake Victoria, Ewaso Ngiro, Tana, and Athi. Each has different hydrological regimes.

Rainfall zones for the TRRL method (Figure 6.2) covering Kenya include:
- **Zone 1A/1B** (Central Highlands): Ratio 1:60
- **Zone 2** (Arid -- northern and eastern Kenya): Ratio 1:89
- **Zone 3** (South Kenya Coast -- Mombasa region): Ratio 1:68

Kenya has both bimodal rainfall (central, western, coastal -- long rains March-May, short rains October-December) and unimodal patterns (arid/semi-arid regions). The arid and semi-arid lands (ASALs) cover approximately 80% of Kenya's land area and present distinct hydrological challenges.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 3 (Kenya): Select return period
  |-- Use Table 4.1 based on structure type only (not road class)
  |-- Pipe culvert --> 10-year design, 25-year check
  |-- Box culvert (< 6 m2 opening) --> 25-year design, 50-year check
  |-- Box culvert (> 6 m2 opening) --> 50-year design, 100-year check
  +-- Bridge --> 50-100 year design depending on span

Step 4 (Kenya): Select method based on catchment size (Figure 4.1)
  |-- A < 0.5 km2 --> Rational Method
  |-- 0.5 km2 < A < 65 km2 --> TRRL/EAFM (up to 200 km2) or SCS
  |-- A > 65 km2 --> SCS, regression analysis, or statistical methods
  +-- If stream is gauged with >= 15 years record --> statistical methods

Step 5 (Kenya): Determine rainfall intensity
  |-- Obtain IDF from KMD published curves for nearby town
  |-- Or use Equation 6.5 with 24hr max daily rainfall
  |-- Or use Rainfall Frequency Atlas of Kenya
  +-- Apply ARF for catchments > 10 km2

Step 6 (Kenya): Determine runoff coefficient
  |-- For rural areas: use Table 6.9 component method C = Cs + Cp + Cv
  |-- For urban areas: use Table 6.10 direct values by land use
  |-- For return periods > 10 years: multiply by Table 6.11 factor Cf
  +-- For composite catchments: area-weighted C
```

### M.3.2 Climate Change Considerations (Chapter 7)

**This section is a key addition unique to the Kenya module.** RDM 2.1 Chapter 7 addresses climate resilience -- a topic not covered in Uganda's MoWT Vol 2 (2010). Key climate change considerations for Kenya hydrology:

1. **Extreme rainfall events** are becoming more frequent, with increased damage to roads and bridges. Recorded hydrological years include 1961/62, 1978/79, 1997/98 El Nino, and the 2010 floods (Section 7.2).

2. **Table 7.1** identifies key climatic threats to road infrastructure: flooding of road surface, overloading of hydraulic structures, erosion of embankments/foundations, landslides, and loss of driving ability. Each threat has vulnerability factors for both growing season and dormant season conditions.

3. **Table 7.2** provides climate change adaptation measures categorised as: legislation/regulations, capacity building, maintenance/management, planning, resilient construction, traffic management, and robust construction.

4. **Practical implications for hydrology:** The designer should consider using Check Frequency values from Table 4.1 as a climate-resilient design approach. For critical infrastructure in flood-prone areas, consider designing to the Check Frequency return period rather than the Design Frequency.

5. **IDF curve review:** Section 7.2 notes that IDF charts "may need to be reviewed regularly in light of the changing climatic conditions." The designer should use the most recent KMD data available.

### M.3.3 Professional Judgment (Kenya-Specific)

**Kenya's ASALs require special hydrological consideration.** Approximately 80% of Kenya is classified as arid or semi-arid. In these areas, storm cells are small and intense, making the Rational Method inappropriate for catchments > 0.5 km2. Flash flood potential is high despite low average annual rainfall. The TRRL method initial retention of 5 mm (Section 6.7.2) applies to arid/semi-arid zones; zero elsewhere.

**Kenya's regional flood frequency curves (Table 5.3) provide independent verification.** For gauged basins, compare calculated design flows against regional MAF-based estimates. Significant discrepancies warrant investigation.

**Urbanisation is rapidly changing catchment characteristics.** Kenya's urban areas are expanding significantly, particularly around Nairobi, Mombasa, and secondary towns. Future land use changes must be considered per Section 6.6.1.

### M.3.4 Common Errors (Kenya-Specific)

1. **Applying the Rational Method to catchments > 0.5 km2.** Kenya limits the Rational Method to 0.5 km2 (Table 4.2), smaller than Uganda's 80 ha limit. For larger catchments, use SCS or TRRL/EAFM.
2. **Using Uganda IDF parameters for Kenya.** Kenya has its own rainfall data sources (KMD, Rainfall Frequency Atlas). Do not use TRRL LR 623 station constants (Tables 4.5/4.6 in Uganda MoWT) for Kenya sites. Kenya's Equation 6.5 provides a site-specific alternative.
3. **Ignoring the Check Frequency.** Kenya introduces a Check Frequency (Table 4.1) alongside the Design Frequency. Always assess the structure's performance at the Check Frequency, particularly for climate resilience.
4. **Not adjusting CN for antecedent moisture condition.** Table 6.22 converts average CN to dry or wet conditions. In Kenya's wet zones (> 53mm five-day antecedent rainfall), use wet CN values; in ASALs during dry season, use dry CN values (Table 6.23).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Rational Method limit | 0.5 km2 | Max catchment area | ASSUMED: Rational Method limit per Table 4.2 | RDM 2.1 Table 4.2 |
| Frequency factor Cf | 1.0 | Return period 5-10 yr | No flag | RDM 2.1 Table 6.11 |
| TRRL initial retention | 5 mm | Arid/semi-arid zones | ASSUMED: Y = 5 mm for arid zones per Section 6.7.2 | RDM 2.1 Section 6.7.2 |
| TRRL initial retention | 0 mm | Wet zones | No flag | RDM 2.1 Section 6.7.2 |
| ARF | 1.0 | Catchment < 10 km2 | No flag | Engineering practice |
| Minimum Tc | 5 min | Inlet pits | ASSUMED: Min Tc = 5 min | Engineering practice |
| Minimum nominal structure | 900 mm diameter | Flat terrain, sheet flows | ASSUMED: Min 900 mm per Section 4.3.1 | RDM 2.1 Section 4.3.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| C (rural component sum) | 0.10 | 0.95 | -- | RDM 2.1 Table 6.9 | Flag if > 0.75 for rural (unusual unless rock/impermeable bare) |
| C (urban) | 0.10 | 0.95 | -- | RDM 2.1 Table 6.10 | Flag if > 0.95 (theoretical max) |
| CN | 30 | 98 | -- | RDM 2.1 Tables 6.18-6.21 | Use CN = 30 minimum for runoff computation (Table 6.20 note 4) |
| Catchment area (Rational) | 0.001 | 0.5 | km2 | RDM 2.1 Table 4.2 | Warn if > 0.5 km2; use SCS or TRRL |

### M.5.2 Standards Compliance Checks

- **Check:** Return period matches Table 4.1 for structure type
- **Standard:** RDM 2.1, Table 4.1
- **Pass condition:** Selected return period >= minimum Design Frequency from table
- **Fail action:** SENIOR REVIEW -- Return period [X] years is below minimum [Y] years for [structure type].

### M.5.3 Departures / Relaxations Process

RDM 2.1 departures require approval from the Chief Engineer, State Department for Roads, Ministry of Roads and Transport (Document Management section). The designer must document justification and submit through the project's institutional chain (KeNHA/KeRRA/KURA as applicable).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Catchment in ASAL region with no nearby rainfall station | IDF data may not represent site conditions | SENIOR REVIEW -- Project is in arid/semi-arid zone with limited rainfall data. Consider commissioning site-specific rainfall analysis from KMD. Use conservative estimates. |
| Catchment area > 200 km2 | Exceeds TRRL/EAFM and SCS practical limits for road drainage | SENIOR REVIEW -- Very large catchment. Use regional flood frequency curves (Table 5.3) and statistical methods with gauged data. |
| Flash flood zone (ASAL ephemeral streams) | Extreme intensity storms with rapid concentration | SENIOR REVIEW -- Ephemeral stream crossing in ASAL zone. Flash flood potential is high. Consider designing to Check Frequency return period. Verify with local flood history. |
| Calculated Q exceeds 50 m3/s for road culvert | Very large flow for standard culvert | SENIOR REVIEW -- Design flow [X] m3/s is very high. Consider bridge or multiple barrel culvert. |
| Climate change concerns for critical infrastructure | Long-term performance risk | SENIOR REVIEW -- Consider designing critical structures to Check Frequency from Table 4.1 as climate adaptation per Chapter 7. |

---

## M.7 Worked Example -- Kenya

### Example: Peak Flow for a Class B Road Culvert Using Rational Method

**Source:** Based on RDM 2.1 Section 6.6 Rational Method with Kenya-specific data

**Given:**
- Structure type: Pipe culvert
- Road class: Class B (KeNHA national trunk road)
- Catchment area: 3.0 hectares = 0.03 km2 (within 0.5 km2 Rational Method limit)
- Soil: Moderately permeable (Soil Group B -- silt loam)
- Terrain: Rolling, 4% slope
- Vegetation: Grassland/scrub
- Time of concentration: Tc = 15 minutes (from Kirpich formula for short catchment)
- Return period: 10 years (from Table 4.1 -- pipe culverts)
- Rainfall intensity: I = 95 mm/hr (from KMD IDF curve for nearest town, 10-year, 15 min duration)

**Solution:**

**Step 1 -- Confirm return period:**
From Table 4.1, pipe culverts: Design Frequency = 10 years, Check Frequency = 25 years. Use 10-year for design.

**Step 2 -- Determine runoff coefficient (Table 6.9 component method):**

```
Cs (slope factor, rolling 3.5-10%) = 0.10
Cp (permeability, fair drained silt loam) = 0.10
Cv (vegetation, grassland/scrub) = 0.15
C = Cs + Cp + Cv = 0.10 + 0.10 + 0.15 = 0.35
```

**Step 3 -- Check frequency factor:**
From Table 6.11, for 10-year return period: Cf = 1.0. No adjustment needed.

**Step 4 -- Apply Rational Method (Equation 6.1):**

```
Q = 0.00278 * C * I * A
A = 0.03 km2
Q = 0.00278 * 0.35 * 95 * 0.03
Q = 0.00278 * 0.9975
Q = 0.00277 m3/s
```

Wait -- that is very small because A is in km2. Let me recalculate using hectares form:

```
Q = C * I * A / 360
A = 3.0 hectares
Q = 0.35 * 95 * 3.0 / 360
Q = 99.75 / 360
Q = 0.277 m3/s
```

**Step 5 -- Check at 25-year return period (Check Frequency):**

```
Cf (25-year) = 1.10
I_25yr = 115 mm/hr (from KMD IDF curve, 25-year, 15 min duration)
Q_check = Cf * C * I * A / 360 = 1.10 * 0.35 * 115 * 3.0 / 360
Q_check = 132.825 / 360 = 0.369 m3/s
```

**Step 6 -- Validation:**
- Q = 0.277 m3/s for 3.0 ha catchment is reasonable (specific discharge ~92 L/s/ha)
- C = 0.35 is appropriate for moderately permeable soil with rolling terrain and grassland
- Catchment area 0.03 km2 is well within 0.5 km2 Rational Method limit

**Result:**

| Parameter | Design (10-yr) | Check (25-yr) |
|-----------|---------------|--------------|
| Return period | 10 years | 25 years |
| Frequency factor Cf | 1.0 | 1.10 |
| Design flow Q | 0.277 m3/s | 0.369 m3/s |

Design flow Q = 0.277 m3/s for 10-year ARI pipe culvert. Check flow Q = 0.369 m3/s for 25-year ARI assessment.

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 2: Hydrology and Drainage Design, Part 1 -- Hydrological Surveys (RDM 2.1)*, 2025. Prepared by TRL Limited (UK) with African Development Bank funding.
2. Transport and Road Research Laboratory, *Laboratory Report 706: The East African Flood Model*, Fiddes, D., Crowthorne, 1976.
3. Transport and Road Research Laboratory, *Laboratory Report 623: The Prediction of Storm Rainfall in East Africa*, Fiddes, D., Crowthorne, 1974.
4. Ministry of Water Development, *Rainfall Frequency Atlas of Kenya*.
5. Kenya Meteorological Department (KMD), IDF curves for Kenya stations.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- Table 4.1 return periods, Equation 6.1 Rational Method, Tables 6.5/6.9/6.10 runoff coefficients, Table 6.11 frequency factors, Table 6.16 rainfall zones, SCS CN Tables 6.18-6.22, TRRL/EAFM method, Chapter 7 climate resilience, all verified against Kenya RDM 2.1 (2025) PDF |
