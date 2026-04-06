# Bridge Substructure -- Ethiopia Module

> **Parent Skill:** #38 Bridge Substructure
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Bridge Design Manual (BDM) 2013, Part 1 Chapter 4 (Substructure Design), Part 1 Section 3.10 (Earthquake Effects), Part 2 Section 3.7 (Substructures for RC Bridges)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Bridge Design Manual (BDM) Part 1 | 2013 | Ch 4: Substructure Design (Sections 4.1-4.8) | Current (mandatory) |
| ERA Bridge Design Manual (BDM) Part 1 | 2013 | Section 3.10: Earthquake Effects | Current (mandatory) |
| ERA Bridge Design Manual (BDM) Part 2 | 2013 | Section 3.7: Substructures for RC Bridges | Current (mandatory) |
| AASHTO LRFD Bridge Design Specifications | 2010/2012 | Reference basis for ERA BDM substructure and seismic provisions | Reference |

### M.1.2 Institutional Context

ERA approves bridge substructure designs on federal roads (DC5-DC8). Regional Roads Authorities approve on regional roads. For bridges in Seismic Zone 3-4 (Rift Valley corridor), ERA may require independent review of seismic design by a specialist engineer.

### M.1.3 Standard Philosophy

ERA seismic provisions follow AASHTO LRFD with 4 seismic performance zones. Ethiopia has significant seismicity along the Rift Valley -- seismic design is NOT a minor consideration as it may be in Uganda. The East African Rift System produces moderate to strong earthquakes (up to magnitude 7+), and several Ethiopian cities and major road corridors pass through or near the Rift Valley. Foundation design follows AASHTO LRFD principles with bearing capacity, settlement, and lateral load checks.

**Key distinction from Kenya and Uganda:** ERA uses AASHTO Section 3.10 seismic provisions with response modification factors (R). Kenya uses EN 1998 (Eurocode 8) with behaviour factors (q). Uganda's MoWT Vol 4 Section 9 has simplified AASHTO-based provisions for low seismicity. The R-factor and q-factor approaches differ in formulation but serve the same purpose of reducing elastic seismic demands for ductile elements.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table EBSS.1: ERA Seismic Zones and Acceleration Coefficients (BDM Part 1 Section 3.10.2, Verified from PDF)**

| Seismic Performance Zone | Acceleration Coefficient A | Typical Locations in Ethiopia | Design Implications |
|--------------------------|---------------------------|-------------------------------|---------------------|
| Zone 1 | A <= 0.025 | Western Ethiopia (Gambela, Benishangul-Gumuz), southeastern lowlands (Somali Region) | Minimum connection forces only; no seismic analysis required (minimum force = 0.10 x dead load) |
| Zone 2 | 0.025 < A <= 0.10 | Central highlands (Addis Ababa region, Amhara highlands, northern Tigray) | Single-mode spectral (SM) or Uniform Load (UL) analysis |
| Zone 3 | 0.10 < A <= 0.15 | Rift Valley margins (Hawassa, Arba Minch approaches, Debre Zeyt) | SM or UL analysis required; R factors applied |
| Zone 4 | A > 0.15 | Rift Valley corridor (Afar depression, central Rift Valley lakes area), eastern escarpment | Multimode spectral (MM) analysis required for irregular bridges; SM/UL for regular bridges |

PGA range: 0 to 0.18g for 475-year return period across Ethiopia. Reference: ERA BDM Part 1 Figure 3.10.2-1 "Earthquake Zones" (values to be verified from ERA seismic hazard map).

**Important:** The Addis Ababa to Djibouti corridor (major trade route) passes through Seismic Zones 2-4. The Addis Ababa to Hawassa corridor (planned expressway) crosses Zone 2-3 boundaries. Engineers must determine the exact zone from the ERA seismic zone map, not assume low seismicity.

**Table EBSS.2: Site Coefficients (BDM Part 1 Section 3.10.5, Verified from PDF)**

| Soil Profile Type | Description | Site Coefficient S (Zone 1-3) | Site Coefficient S (Zone 4) |
|-------------------|------------|------------------------------|----------------------------|
| Type I | Rock (hard/soft) | 1.0 | 1.0 |
| Type II | Stiff soil (dense sand, stiff clay, depth > 60 m to rock) | 1.2 | 1.2 |
| Type III | Soft-medium clay/sand (depth > 10 m of soft soil) | 1.5 | 1.5 |
| Type IV | Very soft soil (> 10 m of soft clay with PI > 20, w > 40%) | 2.0 | Site-specific study required |

Elastic seismic response coefficient: Cs = (1.2 x A x S) / T^(2/3), with minimum Cs = 0.10 x A (values to be verified).

**Table EBSS.3: Response Modification Factors R (BDM Part 1 Section 3.10.7, Verified from PDF)**

| Substructure Element | Critical Importance | Essential Importance | Other Importance |
|---------------------|--------------------|--------------------|------------------|
| Wall-type piers (larger dimension) | R = 2.0 | R = 3.0 | R = 5.0 |
| Single column piers | R = 2.0 | R = 3.0 | R = 3.0 |
| Multi-column bents | R = 2.0 | R = 3.5 | R = 5.0 |
| Pile bents (vertical piles) | R = 2.0 | R = 3.5 | R = 5.0 |
| Pile bents (one or more battered) | R = 2.0 | R = 2.0 | R = 3.0 |
| Connections (superstructure to abutment) | R = 0.8 | R = 0.8 | R = 0.8 |
| Connections (columns/piers to foundations) | R = 1.0 | R = 1.0 | R = 1.0 |

**Design philosophy:** Seismic force on substructure = Elastic force / R. Lower R values (Critical importance) require the substructure to resist higher fractions of elastic seismic demand, providing additional safety for critical bridges.

**Table EBSS.4: Seismic Analysis Methods (BDM Part 1 Section 3.10.10, Verified from PDF)**

| Bridge Configuration | Zone 1 | Zone 2 | Zone 3 | Zone 4 |
|---------------------|--------|--------|--------|--------|
| Single span | No analysis (minimum seat width only) | No analysis (minimum seat width only) | No analysis (minimum seat width only) | No analysis (minimum seat width only) |
| Multi-span regular | Not required (min force 0.10W) | SM or UL | SM or UL | SM or UL |
| Multi-span irregular | Not required (min force 0.10W) | SM or UL | SM or UL | MM required |
| Critical / Essential in Zone 4 | -- | -- | -- | MM recommended |

Where: SM = Single-Mode Spectral Analysis, UL = Uniform Load Method, MM = Multimode Spectral Analysis.

**Irregularity criteria** (triggers MM in Zone 4): large difference in pier stiffness, significant changes in superstructure weight or cross-section, large skew, curved alignment.

**Table EBSS.5: Substructure Types (BDM Part 2 Section 3.7, Verified from PDF)**

| Element | Types | Typical Application in Ethiopia |
|---------|-------|-------------------------------|
| Abutments | Gravity (stone masonry, mass concrete), cantilever RC, counterfort, spill-through, stub/integral | Gravity masonry common for short spans; cantilever RC for medium spans |
| Piers | Wall pier, column pier (single/multi-column), portal frame | Wall piers common; column piers for wider bridges |
| Foundations | Spread footing (on rock or stiff soil), pile foundation (driven, bored) | Spread footings preferred where competent bearing stratum within 3-5 m; piles for deep alluvium |

**Foundation type selection** references subgrade characterization (Skill #10 Ethiopia module) for bearing capacity parameters, soil classification, and settlement analysis.

**Table EBSS.6: Minimum Seat Width (BDM Part 1 Section 3.10, Verified from PDF)**

Minimum support length N (mm) at expansion bearings and movement joints:
- N = 200 + 0.0017 x L + 0.0067 x H (mm)
- Where L = span length (mm), H = average column height (mm)
- This is the absolute minimum; seismic zones 3-4 may require additional seat width based on expected displacement.

**Table EBSS.7: Cross-Country Comparison -- Bridge Substructure and Seismic Design**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Seismic code | AASHTO Section 3.10 (BDM Part 1) | MoWT Vol 4 Section 9 (AASHTO-based) | EN 1998 (Eurocode 8) |
| Seismic zones | 4 zones (A: 0 to 0.18g) | Low seismicity (A approximately 0.05g nationwide) | 3 zones (PGA: 0 to 2.4 m/s2) |
| Key seismic area | Rift Valley (Zone 3-4) | Minor (nationwide low) | Western Rift Valley, coast (Zone III) |
| Response spectrum | AASHTO elastic response spectrum | Simplified | EN 1998 Type 1 / Type 2 |
| Analysis method | SM / UL / MM per zone and regularity | Simplified static force | EN 1998 lateral force / modal response spectrum |
| Response modification factors | R = 2.0 to 5.0 per element and importance | Not detailed | q = 1.5 to 3.5 (behaviour factor) |
| Foundation design code | AASHTO LRFD Chapter 10 (via BDM Part 1 Ch 4) | CP 2004 / working stress | EN 1997 (Eurocode 7) limit state |
| Foundation partial factors | phi-factors on resistance | Factor of safety (FOS = 2.5-3.0) | gamma_R on resistance |

---

## M.3 Decision Logic

### M.3.1 Substructure Type and Foundation Selection

```
START: Bridge substructure design required
  |
  v
1. RECEIVE INPUTS
   - Superstructure reactions from beam bridge design (Skill #37 Ethiopia module)
   - Load combinations from bridge loading (Skill #36 Ethiopia module) including Extreme Event I
   - Site investigation data from bridge site selection (Skill #35 Ethiopia module)
   - Bearing capacity from subgrade characterization (Skill #10 Ethiopia module)
   |
   v
2. DETERMINE SEISMIC ZONE (from ERA map Figure 3.10.2-1)
   - IF A <= 0.025 -> Zone 1 (minimum provisions)
   - IF 0.025 < A <= 0.10 -> Zone 2
   - IF 0.10 < A <= 0.15 -> Zone 3
   - IF A > 0.15 -> Zone 4 (Rift Valley -- escalate if irregular bridge)
   |
   v
3. SELECT ABUTMENT TYPE
   - Span <= 12 m on rock -> Gravity masonry abutment
   - Span 12-25 m -> RC cantilever abutment
   - Span > 25 m or high abutment -> Counterfort or spill-through
   - Integral abutment for short/medium spans where conditions permit
   |
   v
4. SELECT PIER TYPE (for multi-span bridges)
   - Single column: narrow bridges, circular cross-section
   - Multi-column bent: wide bridges, standard rectangular columns
   - Wall pier: river crossings (hydrodynamic shape reduces scour)
   |
   v
5. SELECT FOUNDATION TYPE
   - IF competent bearing stratum within 3-5 m -> Spread footing
   - IF deep alluvium or poor bearing -> Pile foundation
   - Pile type: bored piles in rock or stiff clay; driven piles in deep alluvial deposits
   - Cross-reference: Skill #10 Ethiopia module for soil parameters
   |
   v
6. SEISMIC DESIGN
   - Select analysis method per Table EBSS.4
   - Apply R factors per Table EBSS.3 and importance category
   - Check minimum seat width per Table EBSS.6
   - Design for seismic force combination (Extreme Event I)
   |
   v
7. CHECK FOUNDATION
   - Bearing capacity: q_applied <= q_allowable (from Skill #10)
   - Settlement: delta <= 25 mm (typical limit for bridge foundations)
   - Sliding: FOS >= 1.5 against sliding
   - Overturning: eccentricity within middle third of foundation
   |
   v
OUTPUT: Substructure design complete
```

**Pipeline cross-reference:** Receives load effects from bridge loading (Skill #36 Ethiopia module) including seismic load combinations (Extreme Event I). Receives superstructure reactions from beam bridge design (Skill #37 Ethiopia module). Foundation design references subgrade characterization (Skill #10 Ethiopia module) for bearing capacity and settlement parameters.

---

## M.4 Defaults & Assumptions

When site-specific data is unavailable, the agent uses these defaults and flags them clearly:

| Parameter | Default Value | Flag |
|-----------|--------------|------|
| Soil bearing capacity | 150 kPa (stiff clay) | MUST verify from site investigation (Skill #35 Ethiopia module); actual values may vary widely |
| Acceleration coefficient A | 0.05 (Zone 1 equivalent) | MUST verify from ERA seismic zone map Figure 3.10.2-1; Rift Valley sites require A >= 0.10 |
| Importance category | Essential | Verify from bridge site selection (Skill #35 Ethiopia module) |
| Soil profile type | Type II (stiff soil) | Verify from site investigation borehole data |
| Allowable settlement | 25 mm | Standard for bridge foundations; may be stricter for continuous spans |
| Minimum foundation depth | 2.0 m below ground or scour level | Whichever is deeper |

All outputs are preliminary/screening level. Always state this.

---

## M.5 Validation Rules

| Check | Rule | Action if Failed |
|-------|------|-----------------|
| Seismic zone | Zone correctly determined from ERA map Figure 3.10.2-1 | Verify zone; incorrect assignment is a safety-critical error |
| R factor | R matches substructure type AND importance category (Table EBSS.3) | Correct R factor; lower R for higher importance |
| Minimum seat width | N >= 200 + 0.0017L + 0.0067H (mm) per Table EBSS.6 | Increase seat width |
| Foundation bearing | q_applied <= q_allowable | Increase foundation size or switch to piles |
| Settlement | delta <= 25 mm | Increase foundation size or improve ground |
| Scour depth | Foundation extends below scour level by >= 2.0 m | Deepen foundation; coordinate with bridge hydraulics (Skill #39 Ethiopia module) |
| Analysis method | Correct method per Table EBSS.4 for zone and regularity | Upgrade analysis method if required |

---

## M.6 Escalation Triggers

| Trigger | Reason | Specialist Required |
|---------|--------|-------------------|
| Seismic Zone 4 | Detailed dynamic analysis required; acceleration coefficient > 0.15g | Structural dynamics / seismic specialist |
| Pile foundation in expansive or collapsible soil | Complex soil-structure interaction; potential for pile heave or negative skin friction | Geotechnical specialist |
| Scour undermining foundations | Total scour > 3 m; foundation adequacy in scour condition critical | Hydraulic engineer + geotechnical specialist |
| Abutment on sloping ground | Slope stability + seismic loading interaction | Geotechnical / slope stability specialist |
| Bridge length > 100 m | Thermal movement, multiple expansion joints, complex seismic response | Senior bridge engineer |
| Liquefaction potential (alluvial sites in Rift Valley) | Seismic liquefaction may reduce bearing capacity and increase lateral spreading | Geotechnical / seismic specialist |

---

## M.7 Worked Example

### RC Cantilever Abutment for 18 m T-Girder Bridge, DC6 Trunk Road, Seismic Zone 2

**Project context:** 18 m single-span RC T-girder bridge (from Skill #37 Ethiopia module worked example). DC6 trunk road, Essential importance, Seismic Zone 2 (A = 0.05, Amhara highlands). Spread footing on weathered basalt (bearing capacity 300 kPa from site investigation).

**Step 1: Determine seismic parameters**
- Seismic Zone 2: A = 0.05 (from ERA seismic zone map, confirmed)
- Essential importance: effective A = 1.2 x 0.05 = 0.06
- Soil Profile Type I (rock): S = 1.0
- Analysis: Zone 2 -> SM or UL method (Table EBSS.4)

**Step 2: Abutment geometry (preliminary)**
- Abutment height: 6.0 m (from founding level to bearing seat)
- Stem thickness: 800 mm (base), 500 mm (top)
- Footing: 4.0 m wide x 1.0 m thick
- Backwall: 1.5 m high x 300 mm thick

**Step 3: Loads on abutment**
- Vertical: superstructure dead load reaction approximately 250 kN/m + live load reaction approximately 350 kN/m (from Strength I)
- Horizontal: active earth pressure (Ka x gamma x H^2 / 2), live load surcharge
- Seismic: incremental earth pressure (Mononobe-Okabe), inertia of abutment mass
- Extreme Event I: 1.25DC + 1.50DW + 0.50(LL+IM) + 1.00EQ

**Step 4: Seismic force (Uniform Load Method)**
- Total dead load W = superstructure weight + abutment self-weight
- Minimum seismic force (Zone 2): F_EQ = Cs x W
- Cs = (1.2 x A x S) / T^(2/3), but minimum Cs = 0.10 x A (for Zone 1-2, often the minimum governs for stiff short-span bridges)
- F_EQ approximately 0.06 x W (preliminary)

**Step 5: R factor selection**
- Cantilever abutment treated as wall-type pier: R = 3.0 (Essential importance, Table EBSS.3)
- Design seismic force = F_EQ / R = 0.06W / 3.0 = 0.02W

**Step 6: Foundation check**
- Bearing pressure under Extreme Event I combination
- q_max = (V/A) x (1 + 6e/B) where e = eccentricity from moment
- Check q_max <= 300 kPa (site investigation value for weathered basalt)
- Check eccentricity within middle third (e <= B/6)

**Step 7: Minimum seat width**
- N = 200 + 0.0017 x 18,000 + 0.0067 x 6,000 = 200 + 30.6 + 40.2 = 271 mm
- Use minimum 300 mm seat width (round up)

*Note: All values are preliminary/screening level. Full seismic analysis requires actual response spectrum, detailed soil-structure interaction, and complete AASHTO LRFD code checks. Verify all parameters against ERA BDM 2013.*

---

## M.8 References

| Reference | Full Citation |
|-----------|-------------|
| ERA BDM Part 1 Ch 4 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1: Design*, 2013, Chapter 4: Substructure Design (Verified from PDF) |
| ERA BDM Part 1 Section 3.10 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1*, 2013, Section 3.10: Earthquake Effects (Verified from PDF) |
| ERA BDM Part 2 Section 3.7 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 2: Design Process*, 2013, Section 3.7: Substructures for RC Bridges |
| AASHTO LRFD | AASHTO, *LRFD Bridge Design Specifications*, 2010/2012, Sections 3.10, 10.5-10.8 (seismic, foundations) |
| ERA BDM Part 1 Figure 3.10.2-1 | Earthquake Zones map of Ethiopia (seismic zone boundaries) |
