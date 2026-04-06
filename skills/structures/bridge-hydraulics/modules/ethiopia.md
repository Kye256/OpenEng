# Bridge Hydraulics -- Ethiopia Module

> **Parent Skill:** #39 Bridge Hydraulics
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Bridge Design Manual (BDM) 2013, Part 1 Sections 2.6 and 4.8; Part 2 Sections 2.6 and 2.18
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Bridge Design Manual (BDM) Part 1 | 2013 | Section 2.6: Hydrology and Hydraulics; Section 4.8: Scour | Current (mandatory) |
| ERA Bridge Design Manual (BDM) Part 2 | 2013 | Section 2.6: Scour/Erosion, Riprap, Sheet Piling, River Training; Section 2.18: Backwater | Current (mandatory) |
| ERA Drainage Design Manual (DDM) | 2013 | Hydrology chapters (flood estimation) | Current (cross-reference) |
| FHWA HEC-18 | 5th Edition | Evaluating Scour at Bridges (reference methodology adopted by ERA) | Reference |
| FHWA HEC-20 | 4th Edition | Stream Stability at Highway Structures | Reference |

### M.1.2 Institutional Context

ERA is responsible for bridge hydraulic design standards on federal roads (DC5-DC8). The Ministry of Water, Irrigation and Energy (MoWIE) holds river gauge data and may require coordination for bridges on major rivers. For bridges affecting irrigation schemes or hydropower facilities, MoWIE consultation is mandatory.

### M.1.3 Standard Philosophy

ERA BDM hydraulic provisions follow AASHTO/FHWA methodology for scour estimation. The design flood is determined from the hydrology module (Skill #29 Ethiopia module) using ERA DDM methods (Rational, SCS, or regional flood frequency analysis). Scour assessment uses the HEC-18 framework (general scour + local scour) as adapted in ERA BDM. Freeboard and backwater requirements protect the bridge and upstream areas from flooding.

**Ethiopian context:** Many Ethiopian rivers exhibit highly seasonal flow (wet season June-September in most of the country), steep gradients in highland areas, and heavy sediment transport. Flash floods on tributaries in the Rift Valley and lowland rivers in Afar/Somali regions present significant hydraulic design challenges. River morphology can change rapidly, particularly in alluvial reaches.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table EBH.1: Design Flood Return Periods for Bridges (ERA BDM and DDM, Verified from PDF)**

| Road Class | Design Flood Return Period | Check Flood Return Period | Source |
|-----------|---------------------------|--------------------------|--------|
| DC7-DC8 (trunk roads, high AADT) | 100-year | 500-year (recommended) | ERA BDM Part 1 Section 2.6 |
| DC5-DC6 (link roads) | 50-year to 100-year | 200-year | ERA BDM Part 1 Section 2.6 |
| DC3-DC4 (regional roads) | 25-year to 50-year | 100-year | ERA DDM 2013 |
| DC1-DC2 (local roads) | 10-year to 25-year | 50-year | ERA DDM 2013 |

Cross-reference: Design flood discharge (Q) determined using methods from hydrology module (Skill #29 Ethiopia module).

**Table EBH.2: ERA Freeboard Requirements (BDM Part 1 Section 2.6, Verified from PDF)**

| Bridge Type / Road Class | Minimum Freeboard Above Design Flood Level | Notes |
|--------------------------|-------------------------------------------|-------|
| Trunk road bridges (DC5-DC8) | 1.5 m | Minimum vertical clearance from design flood water surface to lowest bridge soffit |
| Regional road bridges (DC3-DC4) | 1.0 m | May be reduced to 0.6 m for low-volume roads with ERA/RRA approval |
| Bridges on debris-prone rivers | 2.0 m or more | Additional clearance for floating debris; site-specific assessment required |
| Low-level crossings (submersible) | Not applicable | Designed to be overtopped; see ERA BDM Part 2 Section 2.8 |

**Table EBH.3: Scour Estimation Components (BDM Part 1 Section 4.8, Verified from PDF)**

Total scour = Long-term degradation + Contraction scour + Local scour (pier + abutment)

| Scour Component | Method | Key Parameters | Source |
|----------------|--------|----------------|--------|
| Long-term degradation | Engineering judgment + historical evidence | River grade history, upstream dams/mining, aggradation/degradation trends | HEC-20 (as adopted in ERA BDM) |
| Contraction scour | Modified Laursen equation (live-bed or clear-water) | Upstream flow depth y1, contracted flow depth y2, contraction ratio, median bed material D50 | HEC-18, ERA BDM Section 4.8 |
| Pier scour (local) | CSU/HEC-18 equation | Pier width b, approach flow depth y, approach velocity V, correction factors K1-K4 | HEC-18, ERA BDM Section 4.8 |
| Abutment scour (local) | Froehlich equation or HIRE equation | Abutment length, flow depth, correction factors | HEC-18, ERA BDM Section 4.8 |

**Pier Scour Equation (CSU/HEC-18 as in ERA BDM):**
- ys/y1 = 2.0 x K1 x K2 x K3 x K4 x (b/y1)^0.65 x Fr^0.43
- Where: ys = scour depth, y1 = approach flow depth, b = pier width, Fr = Froude number
- K1 = pier nose shape factor (1.0 for square, 0.9 for round, 0.7 for sharp)
- K2 = angle of attack factor
- K3 = bed condition factor (1.1 for plane bed, varies for dune bed)
- K4 = bed armouring factor

**Table EBH.4: Riprap Protection Sizing (BDM Part 2 Section 2.6, Verified from PDF)**

| Location | Minimum Riprap Thickness | Median Stone Size D50 | Extent |
|----------|------------------------|----------------------|--------|
| Abutment protection | 1.5 x D50 or 300 mm minimum | Sized for design velocity; D50 = 0.073 x V^2 / (Ss-1)^0.5 (approximate, values to be verified) | Extend 2.0 m beyond abutment toe, minimum 1.0 m below scour level |
| Pier protection | 1.5 x D50 or 300 mm minimum | Sized for contraction velocity | Extend 2 x pier width around pier base |
| Channel bank | As per ERA DDM erosion protection provisions | Based on channel velocity and bank material | Full height of bank in scour zone |

**Table EBH.5: Backwater Requirements (BDM Part 2 Section 2.18, Verified from PDF)**

| Parameter | ERA Requirement | Notes |
|-----------|----------------|-------|
| Maximum allowable afflux (backwater rise) | 0.5 m (typical) | For rural areas without significant upstream development |
| Maximum allowable afflux (urban/developed) | 0.3 m or less | Where upstream flooding would affect buildings/infrastructure |
| Analysis method | Energy equation (HEC-RAS or equivalent) | One-dimensional analysis acceptable for most bridges; 2D for complex situations |

**Table EBH.6: River Training Works (BDM Part 2 Section 2.6, Verified from PDF)**

| Structure | Purpose | Typical Application in Ethiopia |
|-----------|---------|-------------------------------|
| Guide banks | Direct flow through bridge opening, reduce abutment scour | Wide floodplain rivers (e.g., Awash River, Wabi Shebelle) |
| Spurs/groynes | Redirect river course away from abutments or banks | Meandering rivers with active lateral migration |
| Revetments | Protect river banks from erosion upstream/downstream of bridge | All major river crossings where banks are erodible |
| Gabion/reno mattress protection | Flexible erosion protection for banks and bed | Common in Ethiopian construction; locally available materials |

**Table EBH.7: Cross-Country Comparison -- Bridge Hydraulics**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Scour method | HEC-18 / HEC-20 (FHWA) | HEC-18 (FHWA) | HEC-18 + EN approach |
| Freeboard minimum (trunk roads) | 1.5 m | 1.2 m | 1.2 m (RDM 4.2 Section 2.7) |
| Design flood return period (trunk) | 100-year | 50-100 year | 50-100 year (RDM 4.2) |
| Check flood return period | 500-year (recommended) | 200-year | 200-year |
| Backwater analysis | HEC-RAS or equivalent (BDM Part 2 Section 2.18) | HEC-RAS or manual | HEC-RAS (RDM 2.2) |
| River training guidance | BDM Part 2 Section 2.6 (guide banks, spurs, revetments) | MoWT Vol 4 limited guidance | RDM 2.2 Section 5.4 |

---

## M.3 Decision Logic

### M.3.1 Scour Assessment and Protection Selection

```
START: Bridge hydraulic design required
  |
  v
1. DETERMINE DESIGN FLOOD
   - Obtain Q_design from hydrology module (Skill #29 Ethiopia module)
   - Return period per Table EBH.1 (100-year for trunk roads)
   - Also determine Q_check (500-year recommended)
   |
   v
2. ESTABLISH HYDRAULIC CONDITIONS
   - Channel geometry (cross-sections upstream, at bridge, downstream)
   - Manning's n for main channel and floodplain
   - Design water surface elevation using backwater analysis
   - Check backwater rise <= maximum allowable afflux (Table EBH.5)
   |
   v
3. VERIFY FREEBOARD
   - Freeboard = bridge soffit elevation - design flood water surface
   - Check >= 1.5 m for trunk roads (Table EBH.2)
   - IF debris-prone -> require >= 2.0 m
   |
   v
4. ASSESS SCOUR COMPONENTS (per Table EBH.3)
   a. Long-term degradation: review historical records, aerial photos, upstream activity
   b. Contraction scour: Modified Laursen equation
   c. Pier scour: CSU/HEC-18 equation
   d. Abutment scour: Froehlich or HIRE equation
   - Total scour = sum of all components
   |
   v
5. CHECK FOUNDATION ADEQUACY
   - Foundation must extend below total scour level by minimum 2.0 m
   - IF total scour > 3 m -> ESCALATE (deep foundation likely required)
   - Cross-reference: substructure design (Skill #38 Ethiopia module)
   |
   v
6. DESIGN SCOUR COUNTERMEASURES
   - Riprap protection per Table EBH.4
   - River training works per Table EBH.6 if needed
   - Guide banks for wide floodplain crossings
   |
   v
OUTPUT: Hydraulic design report with scour depths, freeboard, and protection measures
```

**Pipeline cross-reference:** Bridge hydraulics interfaces with all bridge modules -- scour affects foundation design (Skill #38 Ethiopia module), freeboard affects vertical alignment, and design flood comes from hydrology (Skill #29 Ethiopia module). Bridge site selection (Skill #35 Ethiopia module) provides waterway characteristics and river morphology data.

---

## M.4 Defaults & Assumptions

When site-specific data is unavailable, the agent uses these defaults and flags them clearly:

| Parameter | Default Value | Flag |
|-----------|--------------|------|
| Manning's n (main channel) | 0.035 | Verify from site survey; Ethiopian highland rivers may have different roughness (rocky channels 0.040-0.060; sandy channels 0.025-0.030) |
| Manning's n (floodplain) | 0.060 | Varies greatly with vegetation; use 0.080-0.120 for heavily vegetated floodplains |
| Design flood return period | 100-year (trunk roads) | Per Table EBH.1; verify road class |
| Pier scour K1 (nose shape) | 1.0 (square nose) | Use 0.9 for round, 0.7 for sharp; verify actual pier shape |
| Bed material D50 | 2 mm (medium gravel) | MUST verify from bed material sampling; Ethiopian highland rivers often have coarser material |

All outputs are preliminary/screening level. Always state this.

---

## M.5 Validation Rules

| Check | Rule | Action if Failed |
|-------|------|-----------------|
| Scour depth | Total scour within foundation depth (foundation extends >= 2.0 m below scour level) | Deepen foundation or add scour countermeasures |
| Freeboard | Clearance >= ERA minimum per Table EBH.2 | Raise bridge profile or increase waterway opening |
| Backwater | Afflux <= 0.5 m (rural) or 0.3 m (urban) per Table EBH.5 | Increase waterway opening, lengthen bridge |
| Riprap sizing | D50 adequate for design velocity | Increase stone size or use alternative protection |
| Check flood | Bridge survives Q_check (500-year) without collapse (scour countermeasures may fail, but foundation adequate) | Increase foundation depth for check flood scour |

---

## M.6 Escalation Triggers

| Trigger | Reason | Specialist Required |
|---------|--------|-------------------|
| Total scour > 3 m | Deep foundation required; scour countermeasures alone insufficient | Geotechnical + hydraulic specialist |
| Meandering river with active lateral migration | Long-term channel movement may bypass bridge; guide banks needed | River morphology specialist |
| Debris-prone catchment | Large woody debris can block waterway, cause damming; requires debris deflectors | Hydraulic specialist |
| Bridge on alluvial fan | Rapidly shifting channel; conventional scour methods may not apply | Geomorphology specialist |
| River with upstream mining activity | Altered sediment regime; potential for increased scour or aggradation | Environmental / hydraulic specialist |
| Backwater affects upstream infrastructure | Flood risk to buildings, roads, or agricultural land upstream | Hydraulic modelling specialist (2D) |

---

## M.7 Worked Example

### Scour Assessment for 4-Span Bridge over Perennial River in Oromia, Q100 = 450 m3/s

**Project context:** DC7 trunk road bridge over a perennial river in Oromia Region. 4-span bridge (4 x 20 m = 80 m total), 3 river piers (wall-type, 1.5 m wide), RC cantilever abutments. Design flood Q100 = 450 m3/s (from Skill #29 Ethiopia module). Check flood Q500 = 620 m3/s.

**Step 1: Hydraulic conditions**
- Channel width at bridge: 60 m (main channel) + 20 m (floodplain terrace on left bank)
- Average channel depth (at Q100): y1 = 3.5 m
- Average velocity (at Q100): V1 = 450 / (60 x 3.5) = 2.14 m/s
- Froude number: Fr = V1 / sqrt(g x y1) = 2.14 / sqrt(9.81 x 3.5) = 0.37

**Step 2: Freeboard check**
- Design flood level: say 1520.5 m ASL
- Bridge soffit: 1522.2 m ASL
- Freeboard = 1522.2 - 1520.5 = 1.7 m >= 1.5 m (OK, per Table EBH.2)

**Step 3: Contraction scour**
- Contraction ratio: 80 m bridge opening / 85 m natural channel = 0.94 (slight contraction)
- Live-bed contraction scour (Laursen): ys_contraction approximately 0.5 m (preliminary)

**Step 4: Pier scour (CSU/HEC-18 equation)**
- ys/y1 = 2.0 x K1 x K2 x K3 x K4 x (b/y1)^0.65 x Fr^0.43
- K1 = 0.9 (round nose wall pier), K2 = 1.0 (flow parallel to pier), K3 = 1.1 (plane bed), K4 = 1.0 (no armouring)
- ys/3.5 = 2.0 x 0.9 x 1.0 x 1.1 x 1.0 x (1.5/3.5)^0.65 x 0.37^0.43
- ys/3.5 = 2.0 x 0.9 x 1.1 x 0.546 x 0.662
- ys/3.5 = 0.715
- **ys_pier = 2.5 m** (preliminary)

**Step 5: Abutment scour**
- Left abutment extends into floodplain: use Froehlich equation
- ys_abutment approximately 1.5 m (preliminary; depends on embankment length and flow conditions)

**Step 6: Total scour at critical pier**
- Long-term degradation: assume 0.5 m (engineering judgment; stable basalt bed)
- Contraction scour: 0.5 m
- Pier scour: 2.5 m
- **Total scour at pier = 3.5 m**
- This exceeds 3.0 m escalation trigger -- recommend deep foundation (bored piles into basalt) or aggressive scour protection.

**Step 7: Foundation depth requirement**
- Foundation must extend >= 2.0 m below total scour level
- If spread footing: founding level = river bed - 3.5 m (scour) - 2.0 m (safety) = bed - 5.5 m
- Alternatively: pile foundation with tip in competent basalt below scour zone

**Step 8: Riprap protection at piers**
- D50 required: approximately 300 mm (for V = 2.5 m/s contracted velocity)
- Riprap extent: 2 x pier width = 3.0 m around each pier base
- Thickness: 1.5 x D50 = 450 mm

*Note: All values are preliminary/screening level. Detailed hydraulic analysis requires HEC-RAS modelling with surveyed cross-sections. Verify all parameters against ERA BDM 2013 and site-specific data.*

---

## M.8 References

| Reference | Full Citation |
|-----------|-------------|
| ERA BDM Part 1 Section 2.6 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1: Design*, 2013, Section 2.6: Hydrology and Hydraulics |
| ERA BDM Part 1 Section 4.8 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1*, 2013, Section 4.8: Scour (Verified from PDF) |
| ERA BDM Part 2 Section 2.6 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 2: Design Process*, 2013, Section 2.6: Scour/Erosion, Riprap, Sheet Piling, River Training (Verified from PDF) |
| ERA BDM Part 2 Section 2.18 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 2*, 2013, Section 2.18: Backwater |
| FHWA HEC-18 | Federal Highway Administration, *Evaluating Scour at Bridges*, 5th Edition (HEC-18) |
| FHWA HEC-20 | Federal Highway Administration, *Stream Stability at Highway Structures*, 4th Edition (HEC-20) |
| ERA DDM | Ethiopian Roads Authority, *Drainage Design Manual*, 2013 (design flood estimation) |
