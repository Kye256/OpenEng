# Bridge Site Selection -- Kenya Module

> **Parent Skill:** #35 Bridge Site Selection
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 4.2 (2025) Chapter 2; Kenya RDM 2.2 (2025) Section 5.4
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 4.2 -- Bridge and Culvert Design | 2025 | Ch 2 (General Requirements): Sections 2.1-2.10 | Current (mandatory) |
| Kenya RDM 2.2 -- Drainage Design | 2025 | Section 5.4 (Hydraulic Design of Bridges -- bridge location selection) | Current (mandatory) |
| Kenya RDM 4.1 -- Geotechnical Investigation and Design | 2025 | Foundation investigation requirements | Current (mandatory) |
| Kenya RDM 1.3 -- Geometric Design | 2025 | Bridge geometric requirements (cross-reference) | Current (mandatory) |

### M.1.2 Institutional Context

Kenya's road network is managed by multiple authorities under the Ministry of Roads and Transport:

- **KeNHA** (Kenya National Highways Authority): National trunk roads (Classes A and B). KeNHA is the approving authority for bridge locations on the national network.
- **KeRRA** (Kenya Rural Roads Authority): Rural and county roads (Classes C, D, E).
- **KURA** (Kenya Urban Roads Authority): Urban roads within designated municipalities.
- **County Governments**: County roads not classified under KeNHA/KeRRA/KURA.

The RDM series has the status of a Manual -- users "shall apply the contents there-in to fully satisfy the requirements set out" (Document Management, RDM 4.2). The software for bridge analysis and design shall be agreed with the approving authority (Section 2.10).

### M.1.3 Standard Philosophy

RDM 4.2 adopts EN/Eurocode-based limit state design per Kenya Gazette Notice No. 13048 of 14th September 2012. The manual uses UK National Annex values for Nationally Determined Parameters (NDPs) pending development of Kenya-specific NDPs. Chapter 2 provides comprehensive general requirements covering planning, geometry, hydraulics, geotechnics, and foundations. Bridge site selection integrates data from geometric design (RDM 1.3), hydrology (RDM 2.1), drainage design (RDM 2.2), and geotechnical investigation (RDM 4.1).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table KBS.1: Recommended Design Working Life (Table 2.1, Verified)**

| Design Working Life | Type of Structures |
|--------------------|--------------------|
| 10 years | Temporary structures |
| 10 to 30 years | Replaceable structural parts (bearings, expansion joints) |
| 50 years | Culverts |
| 100 years | Bridges, retaining walls |
| 120 years | Special bridges and other structures |

**Note:** A structure with total length up to 6.0 m is treated as a culvert; exceeding 6.0 m is treated as a bridge.

**Table KBS.2: Minimum Width of Bridges (Table 2.2, Verified)**

| Bridge Element | Component | Minimum Width (m) |
|---------------|-----------|-------------------|
| Single Lane Bridge | Carriageway | 1 x 3.5 = 3.5 |
| | Hard strip | 2 x 0.5 = 1 |
| | Walkway | 2 x 1.8 = 3.6 |
| | Railing kerb | 2 x 0.5 = 1 |
| | **Total** | **9.1** |
| Two Lane Bridge | Carriageway | 2 x 3.5 = 7 |
| | Hard strip | 2 x 0.5 = 1 |
| | Walkway | 2 x 1.8 = 3.6 |
| | Railing kerb | 2 x 0.5 = 1 |
| | **Total** | **12.6** |

**Notes from Table 2.2:**
1. Clear width on bridges shall not be less than paved width on approaches.
2. Desirable clear width on single lane bridge is 5.5 m.
3. If approach lane widths are higher, continue higher width on bridge.
4. Hard strip/shoulder width on bridge not less than on approaches.

**Table KBS.3: Minimum Dimensions of Structural Elements (Table 2.3, Verified)**

| Element | Minimum Dimension (mm) |
|---------|----------------------|
| Concrete deck slab thickness (road bridge) | >= 200 |
| Concrete deck slab thickness (footbridge/pedestrian) | >= 150 |
| Stem/head wall/ballast wall of abutment thickness | >= 250 |
| Bearing shelf of abutment or pier | >= 400 |
| Wingwall thickness | >= 200 |
| Pier columns thickness | >= 500 |
| Pier walls thickness | >= 300 |
| Footing thickness | >= 300 |

**Table KBS.4: Type of Superstructure and Suggestive Span Lengths (Table 2.4, Verified)**

| Type of Super Structure | Span Range (m) |
|------------------------|----------------|
| Simply supported RCC slab bridge | up to 10 |
| Simply supported RCC girder bridge | 10 -- 20 |
| Simply supported prestress girder bridge | 25 -- 40 |
| Simply supported RCC box girder | 20 -- 30 |
| Simply supported prestress box girder | 40 -- 60 |
| Integral RCC slab bridge | 10 -- 20 |
| Continuous RCC girder bridge | 15 -- 25 |
| Continuous prestress girder bridge | 25 -- 40 |
| Rolled steel girder bridge | up to 10 |
| Steel plate girder bridge | 25 -- 50 |
| Steel truss bridge | 40 -- 100 |

**Table KBS.5: Design Flow Return Periods (Table 2.5, Verified)**

| Structure Type | Design Frequency (years) | Check Frequency (years) |
|---------------|-------------------------|------------------------|
| Pipe Culverts | 10 | 25 |
| Box Culverts (area <= 6.0 m2) | 25 | 50 |
| Box Culverts (area > 6.0 m2) | 50 | 100 |
| Small and Medium Bridges (6m < length <= 50m) | 50 | 100 |
| Large Bridges (length > 50m) | 100 | 200 |

**Table KBS.6: Minimum Vertical Clearance for River Bridges (Table 2.6, Verified)**

| Structure Type | Minimum Vertical Clearance (m) |
|---------------|-------------------------------|
| Small and medium bridges (6m < length <= 50m) | 1.0* |
| Large bridges (length > 50m) | 1.5 |

*Recommended up to 1.5m if vertical alignment permits. Navigational rivers/canals: clearance per concerned Authority requirements.

**Additional Clearance Requirements (Section 2.5):**
- Overpass vertical clearance: minimum 5.5m (in accordance with RDM 1.3)
- Pedestrian/cycle underpass: minimum 2.4m
- Cattle/wildlife underpass: normal height of animal plus 0.5m
- Railway overbridge: minimum 7.2m (to facilitate future electrification)

**Freeboard and Hydraulic Requirements (Section 2.7):**
- Bearings shall not be less than 0.50m above design high flood level
- Minimum freeboard for approach embankments: 1.50m

### M.2.2 Country-Specific Formulas

No Kenya-specific formulas for site selection beyond the universal methods in Section 1.2. Hydraulic design for bridges follows RDM 2.2 Chapter 5.

**Bridge Classification by Length (Section 2.3.1):**
- Culvert: length <= 6 m
- Small bridge: 6 m < length <= 15 m
- Medium bridge: 15 m < length <= 50 m
- Large bridge: length > 50 m

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 1 (Kenya): Bridge siting principles (Section 2.3.2)
  |-- Site at narrowest width of river with straight stretches
  |-- Ensure stable banks upstream and downstream
  |-- Bridges up to 60m: governed by road alignment
  |-- Bridges 60-300m: selected based on bridge suitability and approach alignment
  |-- Bridges > 300m: bridge suitability has precedence over alignment
  +-- Avoid meandering stretches

Step 2 (Kenya): Investigation requirements (Section 2.8)
  |-- Minimum 2 boreholes per substructure (pier/abutment) for width <= 30m
  |-- Minimum 4 borings per substructure for width > 30m
  |-- Preliminary investigation depth:
  |    >= 10m for box culverts
  |    >= 15m for bridge structures
  |    >= 20m for hardstone investigations
  |-- Shallow foundation depth za >= 6m or >= 3*bF
  |-- Pile foundation depth za >= 5m or >= bg or >= 3*DF
  +-- Geotechnical investigation by qualified Geotechnical Engineer

Step 3 (Kenya): Geometric design (Section 2.6)
  |-- Crossing nearly square; skew preferably <= 30 degrees
  |-- Minimum 0.3% longitudinal gradient for deck drainage
  |-- Bridge approaches: minimum 15m with same horizontal profile
  +-- Design speed consistent with approach road

Step 4 (Kenya): Environmental screening (Section 2.4.6)
  |-- Assess submergence, bank erosion, silting, relocation
  |-- Consider impacts on wildlife, flora, fauna
  |-- EIA for structures within or near water bodies
  +-- Follow NEMA regulations for Kenya
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya has diverse terrain from coastal lowlands to the Rift Valley and highlands.** Bridge sites in the Rift Valley may require seismic design consideration (Zone III per Figure 3.30 with PGA 0.8-2.4 m/s2). Sites along the coast may face tidal and saline exposure conditions requiring enhanced durability provisions.

**Foundation conditions vary significantly across Kenya's geological regions.** The central highlands have volcanic soils, the Rift Valley has complex geology with potential for expansive or collapsible soils, and coastal areas have coral and sandy deposits. Each requires specific geotechnical investigation approaches per RDM 4.1.

**KeNHA approval is required for bridge locations on the national trunk road network.** The software for bridge analysis shall be agreed with the approving authority (Section 2.10). For bridges in seismic Zone III (Rift Valley), the importance category and seismic design approach must be agreed with the authority.

### M.3.3 Common Errors (Kenya-Specific)

- **Using BS 5400 approach for new Kenya bridge design:** RDM 4.2 is EN/Eurocode-based. All new designs must follow limit state partial factor methods per EN 1990, not the legacy BS 5400 approach from the 1989/1993 manual.
- **Ignoring seismic zone classification:** Kenya has three seismic zones. Western Kenya (Rift Valley) is Zone III and requires full seismic consideration for bridges.
- **Insufficient investigation depth:** RDM 4.2 specifies minimum 15m investigation depth for bridge structures (Section 2.8). Preliminary DCP assessments alone are inadequate for final design.

---

## M.4 Country-Specific Defaults

| Parameter | Kenya Default | Condition | Rationale |
|-----------|-------------|-----------|-----------|
| Design working life | 100 years | Bridges | Table 2.1 |
| Design return period | 50 years (design), 100 years (check) | Small/medium bridges | Table 2.5 |
| Design return period | 100 years (design), 200 years (check) | Large bridges (>50m) | Table 2.5 |
| Minimum carriageway width | 3.5m (single lane), 7.0m (two lane) | Road bridges | Table 2.2 |
| Minimum walkway width | 1.8m each side | Road bridges | Table 2.2 |
| Minimum freeboard | 1.0m (small/medium), 1.5m (large) | River bridges | Table 2.6 |
| Approach embankment freeboard | 1.50m | All bridges | Section 2.7.3 |
| Overpass vertical clearance | >= 5.5m | Road overpasses | Section 2.5 |
| Railway clearance | >= 7.2m | Railway crossings | Section 2.5 |
| Maximum skew angle | 30 degrees | Preferred limit | Section 2.6 |
| Maximum settlement -- cohesive | 25 mm | Shallow foundations | Section 2.9.1 |
| Maximum settlement -- cohesionless | 65 mm | Shallow foundations | Section 2.9.1 |
| Minimum foundation depth | 2.0m below max scour | River foundations | Section 2.9 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source |
|-----------|-----------|--------|
| Bridge deck width | >= 9.1m (single lane) or >= 12.6m (two lane) | Table 2.2 |
| Deck slab thickness | >= 200mm (road) or >= 150mm (footbridge) | Table 2.3 |
| Pier column thickness | >= 500mm | Table 2.3 |
| Skew angle | 0 -- 30 degrees preferred | Section 2.6 |
| Approach slab length | >= 3.5m perpendicular to abutment | Section 2.4 |
| Approach slab thickness | >= 300mm | Section 2.4 |
| Safety barrier height | >= 0.90m (road), >= 1.20m (walkway) | Section 2.4.3 |

### M.5.2 Standards Compliance Checks

- Verify bridge width meets Table 2.2 minimums for road classification
- Verify structural element dimensions meet Table 2.3 minimums
- Verify design return period matches Table 2.5 for structure type
- Verify vertical clearance meets Table 2.6 for bridge length category
- Verify geotechnical investigation meets Section 2.8 minimum requirements

### M.5.3 Departures / Relaxations Process

Departures from RDM 4.2 requirements require approval from the Chief Engineer, State Department for Roads. Section 2.6 notes that skew angles exceeding 30 degrees should generally be avoided.

---

## M.6 Country-Specific Escalation

| Trigger | Action | Rationale |
|---------|--------|-----------|
| Bridge in seismic Zone III (Rift Valley) | Flag for seismic specialist review | PGA 0.8-2.4 m/s2 requires detailed seismic design per Section 3.11 |
| Navigational river crossing | Obtain clearance requirements from concerned Authority | Table 2.6 Note 2 |
| Railway crossing | Confirm 7.2m clearance and approval from railway authority | Section 2.5 |
| Bridge length > 300m | Bridge suitability governs alignment | Section 2.3.2 |
| Pile foundations required | Escalate to geotechnical specialist for RDM 4.1/Ch 11 design | Section 2.9.3 |
| Skew angle > 30 degrees | Reassess alignment; consider realignment | Section 2.6 |
| Soft/compressible soil (S1/S2 ground type) | Specialist geotechnical assessment required | Table 3.25 |
| Expressway grade separation | Coordinate with RDM 1.3 and traffic management per RDM 6 | Section 2.3.2 |

---

## M.7 Worked Example -- Kenya

**Scenario:** Assess a bridge site for a Class B road crossing the Tana River in Kenya. The proposed crossing is at a straight reach with firm foundation conditions (dense gravel, N_SPT > 50) on both banks. The river width at normal flow is 40m, expanding to 80m at Q100 = 350 m3/s. The approach road gradient is 3%.

**Step 1 -- Classification:**
- Estimated bridge length approximately 85m (spanning flood plain width with allowance for abutments)
- This exceeds 50m, so classified as a **Large bridge** (Section 2.3.1)

**Step 2 -- Design Parameters (Tables 2.1, 2.5):**
- Design working life: 100 years (Table 2.1)
- Design return period: Q100 (Table 2.5, large bridge design frequency = 100 years)
- Check frequency: Q200 (Table 2.5)

**Step 3 -- Minimum Bridge Width (Table 2.2):**
- Class B road: two-lane bridge
- Minimum total width: 12.6m (carriageway 7.0m + hard strip 1.0m + walkways 3.6m + railing kerb 1.0m)
- Verify approach width is not wider; if so, continue approach width onto bridge

**Step 4 -- Vertical Clearance (Table 2.6):**
- Large bridge (>50m): minimum 1.5m above design flood level with afflux
- Check if Tana River has navigation requirements -- if so, obtain clearance from concerned Authority

**Step 5 -- Foundation Assessment (Section 2.8):**
- Dense gravel with N_SPT > 50 corresponds to Ground Type B (Table 3.25)
- Adequate bearing capacity for shallow foundations likely available
- Minimum investigation depth: 15m for bridge structures
- Minimum 2 boreholes per abutment/pier (width < 30m per pier)
- Foundation depth: minimum 2.0m below maximum scour level

**Step 6 -- Seismic Zone:**
- Tana River flows through central/eastern Kenya -- likely Zone I or II (Figure 3.30)
- Zone I (PGA 0 - 0.2 m/s2): low seismicity, simplified seismic design may apply
- Determine importance category: Class B road = Category II (gamma_I = 1.0)

**Step 7 -- Geometric Compliance (Section 2.6):**
- Crossing at straight reach: skew angle approximately 0 degrees -- acceptable
- Approach gradient 3%: acceptable, consistent with design speed
- Minimum 0.3% longitudinal gradient on deck for drainage

**Conclusion:** Site is suitable for a large bridge. Firm foundation conditions on both banks support shallow foundations if below scour depth. Straight crossing eliminates skew issues. Key items to confirm: scour depth at pier locations, exact flood levels and afflux (RDM 2.2), and navigation clearance if applicable. Escalation: detailed scour analysis required per RDM 2.2 Section 5.6.

---

## M.8 References

- Kenya RDM 4.2 -- Bridge and Culvert Design (2025), Chapter 2: General Requirements
- Kenya RDM 2.2 -- Drainage Design (2025), Section 5.4: Hydraulic Design of Bridges
- Kenya RDM 4.1 -- Geotechnical Investigation and Design (2025)
- Kenya RDM 1.3 -- Geometric Design of Highways, Rural Roads and Urban Roads (2025)
- EN 1997 (Eurocode 7) -- Geotechnical Design (via RDM 4.2 Ch 11)

---

## Module Changelog

| Date | Version | Changes |
|------|---------|---------|
| 2026-04-05 | 0.1 | Initial Kenya module -- RDM 4.2 Ch 2 bridge site selection requirements |
