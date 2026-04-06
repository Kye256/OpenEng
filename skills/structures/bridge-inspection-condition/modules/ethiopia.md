# Bridge Inspection and Condition Assessment -- Ethiopia Module

> **Parent Skill:** #41 Bridge Inspection and Condition Assessment
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Bridge Design Manual (BDM) 2013, Part 2 Chapter 5: Strength Evaluation of Existing Steel, Concrete and Masonry Arch Bridges
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Bridge Design Manual (BDM) Part 2 | 2013 | Ch 5: Strength Evaluation of Existing Steel, Concrete and Masonry Arch Bridges | Current (mandatory) |
| AASHTO Manual for Bridge Evaluation (MBE) | 2011 | Reference basis for ERA LRFR rating methodology | Reference |
| ERA Bridge Maintenance Manual | Various | Inspection procedures and maintenance planning | Current (cross-reference) |

### M.1.2 Institutional Context

ERA manages bridge inspection and condition assessment on the federal road network (DC5-DC8). ERA's Bridge Management Section maintains the national bridge inventory for federal roads. Regional Roads Authorities are responsible for bridge inspection on regional roads, though capacity varies significantly by region. Many bridges in Ethiopia, particularly masonry arch bridges from the Italian colonial era (1930s-1940s) and early post-war construction, require assessment using the Modified MEXE Method.

### M.1.3 Standard Philosophy

ERA BDM Part 2 Chapter 5 provides two primary assessment methodologies:
1. **LRFR Rating (for modern concrete and steel bridges):** Uses the same AASHTO LRFD format as design, with evaluation-specific load and resistance factors. Rating factor RF > 1.0 means the bridge can carry the rated load.
2. **Modified MEXE Method (for masonry arch bridges):** Empirical method using modification factors applied to an ideal arch capacity. Suitable for stone masonry and brick arch bridges that cannot be easily analysed using modern limit state methods.

**Key distinction from Kenya and Uganda:** ERA uses AASHTO LRFR (Load and Resistance Factor Rating) with rating factors. Kenya uses EN 1991-2 assessment loading with Eurocode format (Ed <= Rd). Uganda uses BD 21/97 assessment live loading with BS 5400 assessment methodology.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table EBIC.1: ERA Bridge Rating Equation -- LRFR Method (BDM Part 2 Chapter 5, Verified from PDF)**

Rating Factor:
```
RF = (phi_c x phi_s x Rn  -  gamma_DC x DC  -  gamma_DW x DW) / (gamma_LL x LL x (1 + IM))
```

Where:
- RF = Rating factor (RF >= 1.0 means adequate)
- phi_c = Condition factor (accounts for structural deterioration)
- phi_s = System factor (accounts for redundancy)
- Rn = Nominal member resistance
- gamma_DC = Dead load factor for structural components
- gamma_DW = Dead load factor for wearing surface/utilities
- gamma_LL = Live load factor for evaluation
- DC, DW = Dead load effects
- LL = Live load effect (HL-93 for design rating, or legal/permit vehicle)
- IM = Dynamic load allowance (same as design: 33% for Strength)

**Table EBIC.2: Evaluation Load Factors (BDM Part 2 Chapter 5, Verified from PDF)**

| Factor | Inventory Level | Operating Level | Notes |
|--------|----------------|-----------------|-------|
| gamma_DC | 1.25 | 1.25 | Same as design |
| gamma_DW | 1.50 | 1.50 | Same as design (1.25 if measured) |
| gamma_LL (Design Load Rating) | 1.75 | 1.35 | HL-93 loading |
| gamma_LL (Legal Load Rating) | 1.45 | -- | Legal trucks (Type 3, 3S2, 3-3) |
| gamma_LL (Permit Load Rating) | -- | 1.15 | Specific permit vehicle |

**Inventory level:** Bridge can carry the load indefinitely (comparable to design level).
**Operating level:** Maximum permissible live load; bridge can carry the load but may experience increased deterioration or reduced service life.

**Table EBIC.3: Condition and System Factors (BDM Part 2 Chapter 5, Verified from PDF)**

| Factor | Value | Condition |
|--------|-------|-----------|
| phi_c (condition factor) | 1.00 | Good or satisfactory condition |
| phi_c | 0.95 | Fair condition |
| phi_c | 0.85 | Poor condition |
| phi_s (system factor) | 1.00 | Redundant members (multi-girder, 4+ girders) |
| phi_s | 0.95 | Moderately redundant (3-girder system) |
| phi_s | 0.85 | Non-redundant members (2-girder, single box, fracture-critical) |

**Table EBIC.4: Modified MEXE Method for Masonry Arch Bridges (BDM Part 2 Chapter 5, Verified from PDF)**

The Modified MEXE Method determines the permissible axle load on a masonry arch bridge through application of modification factors to an ideal arch capacity:

```
Permissible axle load = (Provisional axle load from nomogram) x F_condition x F_material x F_joint x F_depth x F_width
```

| Modification Factor | Range | Description |
|--------------------|-------|-------------|
| F_condition (condition factor) | 0.4 to 1.0 | Based on visual inspection: spalling, cracking, ring separation, vegetation |
| F_material (material factor) | 0.5 to 1.0 | Stone masonry 0.9-1.0; brick 0.7-0.9; poor mortar 0.5-0.7 |
| F_joint (joint factor) | 0.8 to 1.0 | Width and condition of mortar joints |
| F_depth (depth of fill factor) | Varies | Depth of fill over crown relative to span; minimum fill improves distribution |
| F_width (width factor) | 0.9 to 1.0 | Effective width of arch carrying load |

**MEXE provisional axle load** is read from the MEXE nomogram using span and rise of the arch. The nomogram gives the capacity of an "ideal" arch (good condition, full section) which is then reduced by the modification factors.

**Table EBIC.5: Condition State Descriptions for Common Ethiopian Bridge Types (Verified from PDF)**

| Bridge Type | Good | Fair | Poor | Critical |
|------------|------|------|------|----------|
| RC slab | No cracks > 0.3 mm; no spalling; no exposed reinforcement | Hairline cracks; minor surface defects; drainage functional | Cracks > 0.5 mm; some spalling; exposed rebar; drainage blocked | Significant spalling; corroded rebar with section loss; structural cracks |
| RC T-girder | No visible distress; bearings functional; joints intact | Minor cracking in web; some bearing wear; minor joint leakage | Flexural/shear cracks in girders; bearing malfunction; significant joint failure | Severe cracking; rebar section loss > 20%; bearing failure; load restriction needed |
| Masonry arch | Mortar intact; ring stones in good condition; no deformation | Minor mortar loss; some vegetation; minor ring stone displacement | Significant mortar loss; ring separation; vegetation damage; deformation visible | Ring stones missing/severely displaced; barrel deformation > L/100; partial collapse risk |
| Steel girder | No corrosion; section loss < 5%; connections tight | Surface corrosion; section loss 5-10%; minor connection wear | Significant corrosion; section loss 10-20%; connection deterioration | Severe corrosion; section loss > 20%; connection failure risk; load restriction needed |

**Table EBIC.6: Inspection Types (ERA Practice)**

| Inspection Type | Frequency | Scope | Personnel |
|----------------|-----------|-------|-----------|
| Routine / Patrol | Every 6-12 months | Visual from road level; note obvious defects, drainage, vegetation | Trained road inspector |
| Principal / Detailed | Every 3-5 years | Close-range inspection of all elements; access to underside; measurement of defects | Bridge inspection engineer |
| Special / Underwater | As required | After flood, earthquake, vehicle impact; underwater elements; load testing | Specialist inspector / diver |
| Inventory | Once (at construction or first inspection) | Full geometric and structural inventory; material properties; as-built data | Bridge engineer |

**Table EBIC.7: Cross-Country Comparison -- Bridge Inspection and Rating**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Rating method | AASHTO LRFR (rating factor RF) | BD 21/97 (assessment live loading) | EN 1991-2 assessment loading |
| Rating equation format | RF = (phi_c x phi_s x Rn - DC - DW) / LL(1+IM) | Assessed capacity >= applied load | Ed <= Rd (Eurocode format) |
| Rating levels | Inventory / Operating | Assessment / Full SLS check | Characteristic / Frequent |
| Masonry arch method | Modified MEXE (BDM Part 2 Ch 5) | MEXE (BD 21/97) | Modified MEXE (RDM 4.2) |
| Rating live load | HL-93 (design), legal trucks (legal rating) | BD 21/97 assessment loading (reduced HA) | Assessment LM1 (with reduction factors) |
| Condition factor | phi_c = 0.85 to 1.00 | Condition factor in BA 44/96 | Condition factor in assessment | 
| System redundancy factor | phi_s = 0.85 to 1.00 | Not explicitly separated | Not explicitly separated |

---

## M.3 Decision Logic

### M.3.1 Inspection Type and Rating Approach Selection

```
START: Bridge assessment required
  |
  v
1. DETERMINE INSPECTION TYPE (per Table EBIC.6)
   - IF routine check -> Patrol inspection (visual from road level)
   - IF scheduled periodic -> Principal inspection (close-range, all elements)
   - IF post-event (flood, earthquake, impact) -> Special inspection
   - IF no previous record -> Inventory inspection
   |
   v
2. DETERMINE BRIDGE TYPE
   - Modern RC slab, T-girder, or prestressed -> LRFR rating method
   - Steel girder bridge -> LRFR rating method
   - Masonry arch bridge -> Modified MEXE Method
   - IF bridge type unclear -> conduct inventory inspection first
   |
   v
3a. LRFR RATING (for modern bridges)
   - Determine member resistance Rn from drawings, as-built data, or testing
   - Apply condition factor phi_c (Table EBIC.3) from inspection
   - Apply system factor phi_s (Table EBIC.3)
   - Calculate dead loads DC, DW
   - Apply HL-93 loading (from Skill #36 Ethiopia module) with evaluation factors
   - Calculate RF per Table EBIC.1 equation
   - IF RF >= 1.0 at Inventory level -> Adequate for full HL-93 loading
   - IF RF >= 1.0 at Operating only -> Adequate but monitor; restricted for heavy permits
   - IF RF < 1.0 -> Load restriction required (escalate)
   |
   v
3b. MODIFIED MEXE RATING (for masonry arch bridges)
   - Measure span and rise of arch
   - Read provisional axle load from MEXE nomogram
   - Apply modification factors (Table EBIC.4) from inspection findings
   - Calculate permissible axle load
   - Compare with HL-93 design truck axle (145 kN) or legal vehicle axle
   - IF permissible axle >= design axle -> Adequate
   - IF permissible axle < design axle -> Load restriction required
   |
   v
4. REPORT AND RECOMMENDATIONS
   - Document rating factor(s) or permissible load
   - Identify critical elements and maintenance needs
   - Recommend load restriction if RF < 1.0 or permissible load < design load
   |
   v
OUTPUT: Bridge rating report with RF or permissible load, condition assessment, recommendations
```

**Pipeline cross-reference:** Bridge inspection references all bridge modules -- loading (Skill #36 Ethiopia module) for HL-93 and rating loads, superstructure (Skill #37 Ethiopia module) for member resistance, substructure (Skill #38 Ethiopia module) for foundation and seismic assessment, and hydraulics (Skill #39 Ethiopia module) for scour condition.

---

## M.4 Defaults & Assumptions

When site-specific data is unavailable, the agent uses these defaults and flags them clearly:

| Parameter | Default Value | Flag |
|-----------|--------------|------|
| Condition factor phi_c | 0.85 | For bridge > 25 years old with no recent inspection; determine from actual inspection data |
| System factor phi_s | 1.00 | For multi-girder bridges (4+ girders); use 0.85 for non-redundant 2-girder systems |
| MEXE material factor | 0.90 | For stone masonry in fair condition; reduce for brick or poor mortar |
| MEXE condition factor | 0.60 | For arch > 75 years old with no recent inspection; determine from actual inspection |
| MEXE span/rise modification | Per MEXE nomogram | Must have measured span and rise |
| Concrete strength f'c (existing) | 25 MPa | For bridges constructed before 1980; 30 MPa for post-1980; verify by testing |

All outputs are preliminary/screening level. Always state this.

---

## M.5 Validation Rules

| Check | Rule | Action if Failed |
|-------|------|-----------------|
| Rating factor (Inventory) | RF >= 1.0 for all relevant load combinations | Proceed to Operating level; if RF < 1.0 at Operating -> load restriction |
| Rating factor (Operating) | RF >= 1.0 at Operating level | If failed -> immediate load restriction; bridge posting required |
| MEXE permissible axle load | >= 145 kN (HL-93 rear axle) for unrestricted use | If less -> restrict to permissible load; post bridge with weight limit |
| Condition factor assignment | phi_c correctly reflects observed condition (Table EBIC.3) | Re-inspect if condition uncertain; phi_c has significant effect on RF |
| All critical elements rated | Every load-carrying element inspected and assessed | Complete inspection before issuing rating |

---

## M.6 Escalation Triggers

| Trigger | Reason | Specialist Required |
|---------|--------|-------------------|
| RF < 1.0 at Operating level | Load restriction required; bridge may need strengthening or replacement | Senior bridge engineer; ERA Bridge Management Section |
| RF < 0.5 at Inventory level | Closure may be recommended; urgent strengthening or replacement | ERA emergency bridge assessment team |
| Masonry arch with significant cracking or ring separation | Structural integrity compromised; Modified MEXE may underestimate risk | Masonry structures specialist |
| Scour-critical bridge | Foundation undermined; hydraulic inspection required | Hydraulic + geotechnical specialist |
| Post-earthquake inspection (Seismic Zone 3-4) | Seismic damage assessment; hidden damage in substructure | Seismic assessment specialist |
| Bridge on federal road with no rating record | Priority for inventory and rating; many bridges lack records | ERA Bridge Management Section |
| Section loss in steel members > 20% | Load-carrying capacity significantly reduced; fatigue and fracture risk | Steel structures specialist |

---

## M.7 Worked Example

### LRFR Rating of 1970s-era RC T-Girder Bridge on DC8 Trunk Road

**Project context:** 4-span RC T-girder bridge (4 x 15 m) on DC8 trunk road, constructed in 1975. 5 girders per span at 1.8 m spacing. Concrete f'c estimated at 25 MPa (no testing; to be confirmed by coring). Reinforcement assumed Grade 40 (fy = 280 MPa, pre-metric era). Principal inspection reveals fair condition (cracking in exterior girders, some spalling, bearings partially seized).

**Step 1: Determine member resistance**
- From as-built drawings (if available) or field measurement: girder depth 900 mm, web width 350 mm, slab thickness 180 mm, flange width 1800 mm
- Main reinforcement: assume 8 No. 25 mm bars (As = 3927 mm2) -- to be verified from drawings
- Mn = As x fy x (d - a/2) where a = As x fy / (0.85 x f'c x b)
  - a = 3927 x 280 / (0.85 x 25 x 1800) = 28.7 mm
  - d = 900 - 50 (cover) - 12 (stirrup) - 12.5 (half bar) = 825.5 mm
  - Mn = 3927 x 280 x (825.5 - 14.4) / 10^6 = 892 kN-m

**Step 2: Apply condition and system factors**
- phi_c = 0.95 (fair condition, per Table EBIC.3)
- phi_s = 1.00 (5-girder system, redundant)
- phi = 0.90 (resistance factor for flexure)
- Factored resistance = phi_c x phi_s x phi x Mn = 0.95 x 1.00 x 0.90 x 892 = 763 kN-m

**Step 3: Calculate load effects**
- DC (self-weight per girder): approximately 10 kN/m -> M_DC = 10 x 15^2 / 8 = 281 kN-m
- DW (wearing surface per girder): approximately 1.5 kN/m -> M_DW = 1.5 x 15^2 / 8 = 42 kN-m
- LL+IM per girder (HL-93 with g = 0.60 for interior girder, 15 m span):
  - M_LL+IM approximately 0.60 x 1400 = 840 kN-m per girder (preliminary; includes IM = 33%)

**Step 4: Calculate Rating Factor (Inventory Level)**
- RF = (phi_c x phi_s x phi x Rn - gamma_DC x DC - gamma_DW x DW) / (gamma_LL x LL)
- RF = (763 - 1.25 x 281 - 1.50 x 42) / (1.75 x 840)
- RF = (763 - 351 - 63) / 1470
- RF = 349 / 1470
- **RF (Inventory) = 0.24** -- FAILS

**Step 5: Calculate Rating Factor (Operating Level)**
- RF = (763 - 1.25 x 281 - 1.50 x 42) / (1.35 x 840)
- RF = 349 / 1134
- **RF (Operating) = 0.31** -- FAILS

**Step 6: Assessment**
- RF < 1.0 at both Inventory and Operating levels -> **Load restriction required**.
- This result is expected for a 1975 bridge designed to older standards (likely AASHTO Standard Specifications or pre-AASHTO Ethiopian standards) now assessed against HL-93 LRFR loading.
- **Recommendation:** Immediate weight restriction. Conduct material testing (concrete cores, rebar scanning) to refine resistance. Consider strengthening (external post-tensioning, CFRP) or replacement.
- **Escalation:** RF < 0.5 at Inventory -> recommend closure evaluation by ERA Bridge Management Section.

*Note: All values are preliminary/screening level. Actual rating requires confirmed material properties (concrete coring, rebar scanning), verified as-built dimensions, and complete AASHTO LRFR analysis. The low RF is driven by the assumptions of f'c = 25 MPa and fy = 280 MPa; actual testing may improve the result.*

---

## M.8 References

| Reference | Full Citation |
|-----------|-------------|
| ERA BDM Part 2 Ch 5 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 2: Design Process*, 2013, Chapter 5: Strength Evaluation of Existing Steel, Concrete and Masonry Arch Bridges (Verified from PDF) |
| AASHTO MBE | AASHTO, *Manual for Bridge Evaluation*, 2011 (reference basis for ERA LRFR methodology) |
| ERA BDM Part 1 Ch 3 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1*, 2013, Chapter 3: Loads and Load Factors (HL-93 for rating) |
| MEXE Method | Modified MEXE Method as described in ERA BDM Part 2 Chapter 5 and BD 21/97 (original UK source) |
