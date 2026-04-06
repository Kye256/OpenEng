# Simply Supported Beam Bridges -- Ethiopia Module

> **Parent Skill:** #37 Simply Supported Beam Bridges
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Bridge Design Manual (BDM) 2013, Part 1 Chapter 5 (Superstructure Design), Part 1 Chapter 7 (Reinforced Concrete), Part 2 Sections 3.8-3.12, Part 2 Chapter 4 (Approximate Methods of Analysis)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Bridge Design Manual (BDM) Part 1 | 2013 | Ch 5: Superstructure Design; Ch 7: Reinforced Concrete | Current (mandatory) |
| ERA Bridge Design Manual (BDM) Part 2 | 2013 | Sections 3.8-3.12: Bridge types by span; Ch 4: Approximate Methods of Analysis | Current (mandatory) |
| AASHTO LRFD Bridge Design Specifications | 2010/2012 | Reference basis for ERA BDM structural design provisions | Reference |

### M.1.2 Institutional Context

ERA approves bridge designs on federal roads (DC5-DC8). Regional Roads Authorities approve designs on regional roads. For beam bridges, the selection of bridge type (RC slab, T-girder, composite, prestressed) and span arrangement requires ERA approval on federal road projects.

### M.1.3 Standard Philosophy

ERA BDM follows AASHTO LRFD for superstructure design. Structural resistance is expressed using phi-factors (capacity reduction factors) applied to nominal resistance. Load effects come from the LRFD load combination framework (Skill #36 Ethiopia module). Analysis methods for beam bridges use AASHTO distribution factors for typical cross-sections, with more rigorous analysis (grillage, finite element) for non-standard configurations.

**Key distinction from Kenya and Uganda:** ERA uses AASHTO LRFD distribution factors and phi-factor resistance format. Kenya uses EN 1992 strip method analysis and gamma_C/gamma_S material partial factors. Uganda uses BS 5400 grillage/FE analysis tradition with gamma_m material safety factors. The underlying mechanics are the same, but the safety format and analysis methodology differ.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table ESSB.1: ERA Beam Bridge Types by Span Range (BDM Part 2 Sections 3.8-3.12, Verified from PDF)**

| Bridge Type | Typical Span Range | ERA BDM Section | Typical Application |
|-------------|-------------------|-----------------|---------------------|
| RC slab bridge | Up to 12 m | Part 2 Section 3.8 | Short crossings, culvert-replacement structures |
| RC T-girder bridge | 12 m to 25 m | Part 2 Section 3.9 | Most common type for medium-span road bridges in Ethiopia |
| Composite steel-concrete bridge | 25 m to 45 m | Part 2 Section 3.10 | Longer spans where precast not available; urban overpasses |
| Precast/prestressed concrete bridge | 15 m to 40 m | Part 2 Section 3.11 | Where precasting facilities available; standardised spans |
| Steel truss/arch bridge | > 40 m | Part 2 Section 3.12 | Major river crossings; gorge spans |

**Table ESSB.2: Span-to-Depth Ratios -- Minimum Structural Depth (BDM Part 2, Verified from PDF)**

| Bridge Type | Minimum Depth (Simple Span) | Minimum Depth (Continuous Span) | Notes |
|-------------|---------------------------|--------------------------------|-------|
| RC slab | L/20 | L/25 | L = span length |
| RC T-girder | L/14 | L/17 | Overall depth including slab |
| Composite steel-concrete | L/20 (steel beam) | L/25 (steel beam) | Steel section depth |
| Prestressed I-girder | L/18 | L/22 | Overall depth |
| Prestressed box girder | L/25 | L/30 | Overall depth |

**Table ESSB.3: Load Distribution Factors (BDM Part 2 Chapter 4 -- AASHTO LRFD Method, Verified from PDF)**

The agent applies AASHTO LRFD approximate analysis methods per ERA BDM Part 2 Chapter 4:

| Analysis Method | Applicable Bridge Type | Key Parameters |
|----------------|----------------------|----------------|
| Strip method | RC slab bridges | Equivalent strip width per AASHTO LRFD Table 4.6.2.1.3-1 |
| Beam-slab distribution (interior beams) | T-girder, composite, prestressed | g = f(S, L, Kg, ts) per AASHTO LRFD Table 4.6.2.2.2b-1 |
| Beam-slab distribution (exterior beams) | T-girder, composite, prestressed | Lever rule or modified interior factor per AASHTO LRFD Table 4.6.2.2.2d-1 |
| Lever rule | General (conservative) | Direct proportion of wheel loads to beams by position |

Where: S = girder spacing (mm), L = span length (mm), Kg = longitudinal stiffness parameter, ts = slab thickness (mm).

For typical 2-lane bridges with girder spacing 1.8-3.0 m and span 15-25 m, the interior beam distribution factor for moment is approximately 0.5-0.8 lanes per beam (values to be verified for specific geometry using AASHTO distribution factor formulae).

**Table ESSB.4: Resistance Factors (phi) for Superstructure Design (BDM Part 1 Chapter 7, Verified from PDF)**

| Limit State / Condition | phi | Source |
|------------------------|-----|--------|
| Flexure and tension (reinforced concrete) | 0.90 | BDM Part 1 Section 7.5 |
| Flexure and tension (prestressed concrete) | 1.00 | BDM Part 1 Section 7.5 |
| Shear and torsion | 0.90 | BDM Part 1 Section 7.5 |
| Axial compression (with ties) | 0.75 | BDM Part 1 Section 7.5 |
| Axial compression (with spirals) | 0.75 | BDM Part 1 Section 7.5 |
| Bearing on concrete | 0.70 | BDM Part 1 Section 7.5 |

**Design strength:** phi x Rn >= factored load effect (Mu, Vu, etc.)

**Table ESSB.5: Material Properties -- Defaults (BDM Part 1 Chapter 7, Verified from PDF)**

| Material | Property | Default Value | Notes |
|----------|----------|---------------|-------|
| Concrete (superstructure) | f'c | 30 MPa | ERA standard for bridge superstructure; higher for prestressed |
| Concrete (prestressed) | f'c | 35-45 MPa | Verify ERA specification for prestressed elements |
| Reinforcement | fy | 420 MPa | Grade 420 deformed bars |
| Prestressing strand | fpu | 1860 MPa | 7-wire low-relaxation strand |
| Structural steel | Fy | 345 MPa | Grade 50 (A572) equivalent |
| Modulus of elasticity (concrete) | Ec | 4700 x sqrt(f'c) MPa | Per AASHTO LRFD |
| Modulus of elasticity (steel) | Es | 200,000 MPa | |

**Table ESSB.6: Deflection Limits (AASHTO LRFD, Verified from PDF)**

| Condition | Maximum Deflection | Notes |
|-----------|-------------------|-------|
| Vehicular load only | L/800 | L = span length |
| Vehicular + pedestrian | L/1000 | When pedestrian traffic on bridge |
| Cantilever arms (vehicular) | L/300 | L = cantilever length |
| Cantilever arms (vehicular + pedestrian) | L/375 | |

**Table ESSB.7: Cross-Country Comparison -- Beam Bridge Design**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Preferred beam types | RC T-girder, precast I-girder | RC T-beam, steel composite | Precast Y-beam, steel composite |
| Analysis method | AASHTO distribution factors (BDM Part 2 Ch 4) | Grillage/FE (BS 5400) | EN 1992 strip method |
| Resistance format | phi-factor (phi = 0.90 flexure) | gamma_m (1.50 concrete) | gamma_C (1.50 concrete) |
| Concrete design code | AASHTO LRFD Chapter 5/7 (via ERA BDM) | BS 5400 Part 4 / BS 8110 | EN 1992-1-1 / EN 1992-2 |
| Deflection limit (vehicular) | L/800 | L/600 (BS 5400) | L/250 (quasi-permanent, EN 1992) |
| Concrete strength (typical) | f'c = 30 MPa | fcu = 40 MPa (cube) | fck = 35 MPa (cylinder) |
| Steel yield strength | fy = 420 MPa | fy = 460 MPa (BS 4449) | fyk = 500 MPa (EN 10080) |

---

## M.3 Decision Logic

### M.3.1 Bridge Type Selection by Span

```
START: Beam bridge design required -- determine bridge type
  |
  v
1. DETERMINE REQUIRED SPAN
   - From bridge site selection (Skill #35 Ethiopia module): waterway opening, pier locations
   - Account for abutment setback from banks (scour protection zone)
   |
   v
2. SELECT BRIDGE TYPE (per Table ESSB.1)
   - Span <= 12 m -> RC slab bridge
   - 12 m < Span <= 25 m -> RC T-girder bridge (most common in Ethiopia)
   - 25 m < Span <= 45 m -> Composite steel-concrete OR precast prestressed
   - Span > 40 m -> Steel truss, arch, or cable-stayed (escalate to specialist)
   |
   v
3. DETERMINE STRUCTURAL DEPTH
   - Apply minimum span/depth ratios from Table ESSB.2
   - Check headroom constraints (minimum vertical clearance per Skill #35)
   |
   v
4. RECEIVE LOADING (from Skill #36 Ethiopia module)
   - HL-93 live load effects with IM = 33%
   - LRFD load combinations (Strength I governs for most medium-span bridges)
   |
   v
5. ANALYSE CROSS-SECTION
   - Apply AASHTO distribution factors (Table ESSB.3) for beam-slab bridges
   - Determine load effects per girder (moment, shear)
   |
   v
6. DESIGN MEMBERS
   - Flexure: phi x Mn >= Mu (phi = 0.90 for RC)
   - Shear: phi x Vn >= Vu (phi = 0.90)
   - Check deflection limits (Table ESSB.6)
   - Check minimum reinforcement
   |
   v
OUTPUT: Superstructure design -> reactions feed substructure design (Skill #38 Ethiopia module)
```

**Pipeline cross-reference:** This module receives HL-93 loading from bridge loading (Skill #36 Ethiopia module). Superstructure design feeds into substructure design (Skill #38 Ethiopia module) via reactions and load effects at bearings.

---

## M.4 Defaults & Assumptions

When site-specific data is unavailable, the agent uses these defaults and flags them clearly:

| Parameter | Default Value | Flag |
|-----------|--------------|------|
| Concrete f'c (superstructure) | 30 MPa | ERA standard for bridge superstructure; verify for prestressed elements (may require higher) |
| Reinforcement fy | 420 MPa | Grade 420 deformed bars |
| Concrete unit weight | 24 kN/m3 (plain), 25 kN/m3 (reinforced) | Standard values |
| Wearing surface | 75 mm asphalt at 22.5 kN/m3 | Verify actual surfacing specification |
| Girder spacing (T-girder) | 2.0 m to 2.5 m | Optimise for specific bridge width and loading |
| Slab thickness (T-girder) | 200 mm minimum | Check ERA minimum and punching shear |

All outputs are preliminary/screening level. Always state this.

---

## M.5 Validation Rules

| Check | Rule | Action if Failed |
|-------|------|-----------------|
| Span/depth ratio | Structural depth >= minimum per Table ESSB.2 | Increase section depth or consider different bridge type |
| Deflection | Live load deflection <= L/800 (vehicular) or L/1000 (vehicular + pedestrian) | Increase stiffness (deeper section, more girders) |
| Minimum reinforcement | As_min per AASHTO LRFD (typically 1.2 x cracking moment capacity) | Increase reinforcement to meet minimum |
| Maximum reinforcement | c/d <= 0.42 (tension-controlled section for phi = 0.90) | Redesign section (increase depth, reduce steel, or use compression steel) |
| Shear capacity | phi x Vn >= Vu at critical section (d from face of support) | Increase stirrup spacing or section width |
| Distribution factor | g-factor within expected range for bridge type and geometry | Re-check geometry parameters; verify against AASHTO tables |

---

## M.6 Escalation Triggers

| Trigger | Reason | Specialist Required |
|---------|--------|-------------------|
| Span > 25 m | Prestressed or composite design required; beyond standard RC T-girder range | Prestressed concrete or steel-concrete specialist |
| Skew > 30 degrees | Non-standard load distribution; AASHTO correction factors may not be sufficient | Bridge analysis specialist (FE analysis) |
| Curved alignment (R < 500 m) | Torsional effects; AASHTO straight-bridge distribution factors not applicable | Curved bridge specialist |
| Dynamic analysis required | Unusual loading, vibration-sensitive structure, pedestrian resonance | Structural dynamics specialist |
| Seismic Zone 3-4 | Superstructure-to-substructure connection design critical; bearing and restrainer design | Seismic design specialist |
| Non-standard cross-section | Voided slab, through-girder, or other non-typical section not covered by AASHTO tables | Bridge design specialist |

---

## M.7 Worked Example

### 18 m RC T-Girder Bridge for DC6 Trunk Road -- Strength I and Service I Checks

**Project context:** DC6 trunk road, two-lane bridge, clear width 8.4 m, single span 18 m, Essential importance, Seismic Zone 2. RC T-girder superstructure selected per Table ESSB.1.

**Step 1: Preliminary dimensions**
- 5 T-girders at 2.1 m spacing (total width = 4 x 2.1 + 2 x 0.4 barrier = 9.2 m overall)
- Slab thickness: 200 mm
- Girder depth: L/14 = 18,000/14 = 1286 mm -> use 1300 mm overall depth
- Web width: 400 mm
- Flange width (effective): lesser of span/4, girder spacing, 12 x slab thickness + web = 2100 mm

**Step 2: Loading (from Skill #36 Ethiopia module)**
- HL-93 Design Truck + Lane Load governs for 18 m span
- Live load moment per lane (approximate from Skill #36 example, scaled to 18 m):
  - M_truck (18 m) approximately 1000 kN-m (with IM = 33%: 1330 kN-m)
  - M_lane (18 m) = 9.3 x 18^2 / 8 = 377 kN-m
  - M_LL+IM per lane = 1330 + 377 = 1707 kN-m

**Step 3: Distribution factor (interior girder, moment)**
- Using AASHTO LRFD Table 4.6.2.2.2b-1 for concrete deck on concrete beams:
  - g = 0.06 + (S/4300)^0.4 x (S/L)^0.3 x (Kg / (L x ts^3))^0.1
  - With S = 2100 mm, L = 18,000 mm, ts = 200 mm, approximate Kg = 2.5 x 10^11 mm^4
  - g approximately 0.65 lanes/girder (values to be verified with exact section properties)

**Step 4: Design moment per girder**
- M_DC = 14 kN/m x 18^2 / 8 = 567 kN-m (assume 14 kN/m self-weight per girder)
- M_DW = 1.8 kN/m x 18^2 / 8 = 73 kN-m (75 mm asphalt on tributary width)
- M_LL per girder = 0.65 x 1707 = 1110 kN-m

**Step 5: Strength I**
- Mu = 1.25 x 567 + 1.50 x 73 + 1.75 x 1110
- Mu = 709 + 110 + 1943
- **Mu = 2762 kN-m per girder** (preliminary)

**Step 6: Flexural design**
- Required: phi x Mn >= 2762 kN-m
- phi = 0.90 -> Mn required >= 3069 kN-m
- With f'c = 30 MPa, fy = 420 MPa, b_eff = 2100 mm, d = 1230 mm:
  - As approximately 6800 mm^2 (approximately 9 No. 32 mm bars) -- preliminary sizing
  - Check c/d < 0.42: confirmed tension-controlled

**Step 7: Service I deflection check**
- Live load deflection = 5 x w x L^4 / (384 x E x I) + P x L^3 / (48 x E x I) (approximate)
- Limit: L/800 = 18,000/800 = 22.5 mm
- Verify deflection < 22.5 mm with cracked section properties

*Note: All values are preliminary/screening level. Exact design requires detailed analysis with actual section properties, precise load positioning, and full AASHTO LRFD code checks. Verify all parameters against ERA BDM 2013.*

---

## M.8 References

| Reference | Full Citation |
|-----------|-------------|
| ERA BDM Part 1 Ch 5 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1: Design*, 2013, Chapter 5: Superstructure Design |
| ERA BDM Part 1 Ch 7 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1: Design*, 2013, Chapter 7: Reinforced Concrete (Verified from PDF) |
| ERA BDM Part 2 Ch 3 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 2: Design Process*, 2013, Sections 3.8-3.12: Bridge Types by Span |
| ERA BDM Part 2 Ch 4 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 2: Design Process*, 2013, Chapter 4: Approximate Methods of Analysis (Verified from PDF) |
| AASHTO LRFD | AASHTO, *LRFD Bridge Design Specifications*, 2010/2012, Tables 4.6.2.2.2b-1, 4.6.2.2.2d-1 (distribution factors) |
