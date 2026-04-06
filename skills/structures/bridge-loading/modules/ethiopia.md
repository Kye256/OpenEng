# Bridge Loading -- Ethiopia Module

> **Parent Skill:** #36 Bridge Loading
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Bridge Design Manual (BDM) 2013, Part 1 Chapter 3: Loads and Load Factors; AASHTO LRFD 2010/2012 (reference basis)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Bridge Design Manual (BDM) Part 1 | 2013 | Ch 3: Loads and Load Factors (Sections 3.1-3.11) | Current (mandatory) |
| ERA Bridge Design Manual (BDM) Part 1 | 2013 | Section 3.10: Earthquake Effects | Current (mandatory) |
| AASHTO LRFD Bridge Design Specifications | 2010/2012 | Reference basis for ERA BDM load provisions | Reference |

### M.1.2 Institutional Context

ERA (Ethiopian Roads Authority) is the approving authority for bridge designs on federal trunk and link roads (DC5-DC8). Regional Roads Authorities approve bridge designs on regional roads. ERA BDM 2013 is the mandatory design standard; it adopts the AASHTO LRFD framework for loads and load combinations.

### M.1.3 Standard Philosophy

ERA BDM uses AASHTO LRFD load factors and combinations. The HL-93 live load model governs vehicular loading. Seismic loading follows Section 3.10 with Ethiopian-specific acceleration coefficients and a 4-zone seismic classification. Load combinations are expressed in the LRFD format (Strength I-V, Service I-IV, Extreme Event I-II) with load factors applied to permanent loads (DC, DW), live loads (LL+IM), and environmental loads (WA, WS, WL, EQ).

**Key distinction from Kenya and Uganda:** ERA uses AASHTO LRFD terminology (HL-93, Strength I, phi-factors). Kenya uses EN/Eurocode actions (LM1-LM4, gamma_G/gamma_Q, EQU/STR/GEO). Uganda uses BS 5400 loading (HA/HB, gamma_fL, 5 load combinations). These are fundamentally different frameworks -- do not mix terminology.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table EBL.1: HL-93 Design Truck (BDM Part 1 Section 3.6.1.2, Verified from PDF)**

| Parameter | Value | Notes |
|-----------|-------|-------|
| Front axle load | 35 kN | |
| Rear axle 1 load | 145 kN | 4.3 m behind front axle |
| Rear axle 2 load | 145 kN | 4.3 m to 9.0 m behind rear axle 1 (variable spacing for maximum effect) |
| Total truck weight | 325 kN | |
| Transverse wheel spacing | 1.8 m | Centre to centre |
| Tire contact area | 510 mm x 250 mm | Per AASHTO LRFD |
| Design lane width | 3.6 m | |

**Table EBL.2: HL-93 Design Tandem (BDM Part 1 Section 3.6.1.3, Verified from PDF)**

| Parameter | Value |
|-----------|-------|
| Axle 1 load | 110 kN |
| Axle 2 load | 110 kN |
| Axle spacing | 1.2 m |
| Total tandem weight | 220 kN |
| Transverse wheel spacing | 1.8 m |

**Table EBL.3: Design Lane Load (BDM Part 1 Section 3.6.1.4, Verified from PDF)**

| Parameter | Value |
|-----------|-------|
| Uniform load intensity | 9.3 kN/m |
| Lane width | 3.0 m |
| Application | Over full length of influence line, concurrent with design truck or design tandem |

**HL-93 Loading Application:** The HL-93 live load is the greater of:
- Design Truck (325 kN) + Design Lane Load (9.3 kN/m), OR
- Design Tandem (220 kN) + Design Lane Load (9.3 kN/m)

For negative moment and interior pier reactions of continuous spans: 90% of two Design Trucks (minimum 15 m apart) + 90% of Design Lane Load.

**Table EBL.4: Dynamic Load Allowance IM (BDM Part 1 Section 3.6.2, Verified from PDF)**

| Component | IM (%) | Notes |
|-----------|--------|-------|
| Deck joints -- all limit states | 75 | |
| All other components -- Fatigue and Fracture limit state | 15 | |
| All other components -- all other limit states (Strength, Service) | 33 | |

Dynamic load allowance is NOT applied to: pedestrian loads, design lane load (9.3 kN/m), centrifugal and braking forces already factored.

**Table EBL.5: AASHTO LRFD Load Combination Factors (BDM Part 1 Section 3.4, Verified from PDF)**

| Limit State | DC | DW | LL+IM | WA | WS | WL | EQ | Notes |
|------------|----|----|-------|----|----|----|----|-------|
| Strength I | 1.25 | 1.50 | 1.75 | 1.00 | -- | -- | -- | Basic load combination for vehicular loading |
| Strength II | 1.25 | 1.50 | 1.35 | 1.00 | -- | -- | -- | Owner-specified special vehicles (permit) |
| Strength III | 1.25 | 1.50 | -- | 1.00 | 1.40 | -- | -- | Wind on structure (no live load) |
| Strength IV | 1.50 | 1.50 | -- | 1.00 | -- | -- | -- | Dead load dominant (long-span bridges) |
| Strength V | 1.25 | 1.50 | 1.35 | 1.00 | 0.40 | 1.00 | -- | Vehicular + wind combination |
| Service I | 1.00 | 1.00 | 1.00 | 1.00 | 0.30 | 1.00 | -- | Normal operational; deflection and crack width |
| Service II | 1.00 | 1.00 | 1.30 | 1.00 | -- | -- | -- | Steel yielding and slip-critical bolts |
| Service III | 1.00 | 1.00 | 0.80 | 1.00 | -- | -- | -- | Tension in prestressed concrete |
| Extreme Event I | 1.25 | 1.50 | gamma_EQ | 1.00 | -- | -- | 1.00 | Earthquake; gamma_EQ determined per importance |
| Extreme Event II | 1.25 | 1.50 | 0.50 | 1.00 | -- | -- | -- | Vehicle collision, vessel collision, ice |

**Notes on load factors:**
- DC (dead load -- structural components) minimum factor 0.90 when dead load stabilises (e.g., overturning check).
- DW (dead load -- wearing surface/utilities) minimum factor 0.65 when stabilising.
- gamma_EQ for Extreme Event I: per AASHTO LRFD, partial live load concurrent with earthquake. ERA BDM uses 0.50 for gamma_EQ (values to be verified against specific ERA edition).
- FR (friction) factor = 1.00 in all combinations (not shown for brevity).

**Table EBL.6: ERA Seismic Parameters (BDM Part 1 Section 3.10, Verified from PDF)**

| Seismic Performance Zone | Acceleration Coefficient A | Typical Locations in Ethiopia |
|--------------------------|---------------------------|-------------------------------|
| Zone 1 | A <= 0.025 | Western Ethiopia (Gambela), southeastern lowlands (Somali Region) |
| Zone 2 | 0.025 < A <= 0.10 | Central highlands (Addis Ababa region, northern highlands) |
| Zone 3 | 0.10 < A <= 0.15 | Rift Valley margins (Hawassa, Arba Minch approaches) |
| Zone 4 | A > 0.15 | Rift Valley corridor (Afar, central Rift Valley lakes area), eastern escarpment |

PGA range: 0 to 0.18g for 475-year return period across Ethiopia (values to be verified from ERA seismic hazard map Figure 3.10.2-1).

**Importance Category Multipliers for Acceleration Coefficient:**

| Importance Category | Multiplier | Effective A |
|--------------------|-----------|-------------|
| Critical | 1.5 | 1.5 x A |
| Essential | 1.2 | 1.2 x A |
| Other | 1.0 | 1.0 x A |

Seismic acceleration coefficients from Section 3.10 feed the Extreme Event I load combination. For bridges in the Rift Valley region (Zone 3-4), seismic loading often governs substructure design.

**Table EBL.7: Cross-Country Comparison -- Bridge Loading**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Code basis | AASHTO LRFD 2010/2012 | BS 5400 | EN 1991-2 (Eurocode 1) |
| Design live load | HL-93 (325 kN truck + 9.3 kN/m lane) | HA (UDL+KEL) / HB 45 units | LM1 (UDL + tandem per lane) |
| Design truck weight | 325 kN (3 axles) | HB: 1800 kN (4 axles) | 600 kN tandem (alpha_Q adjusted) |
| Lane load | 9.3 kN/m (single loaded length) | HA: 10-48 kN/m (varies with loaded length) | 9.0 kN/m2 (alpha_q adjusted) |
| Dynamic allowance | 33% (IM) | 25% standard | Included in LM1 characteristic values |
| Load combination format | LRFD (Strength I-V, Service I-IV, Extreme Event I-II) | 5 combinations (gamma_fL x gamma_f3) | Partial factor (EQU / STR / GEO) |
| LL factor (ULS) | 1.75 (Strength I) | 1.50 (gamma_fL Combination 1) | 1.35 (gamma_Q) |
| Resistance format | phi-factors (capacity reduction) | gamma_m (material safety factor) | gamma_C, gamma_S (material partial factors) |
| Seismic load combination | Extreme Event I (gamma_EQ x LL + 1.00 EQ) | MoWT Vol 4 Section 9 (simplified) | Seismic design situation (EN 1998) |
| Seismic zones | 4 zones (A up to 0.18g) | Low seismicity (A approximately 0.05g) | 3 zones (Eurocode 8) |

---

## M.3 Decision Logic

### M.3.1 Load Combination Selection

```
START: Bridge design -- determine governing load combinations
  |
  v
1. DETERMINE LIVE LOAD
   - Apply HL-93: greater of (Design Truck + Lane Load) or (Design Tandem + Lane Load)
   - For continuous spans: also check 90% x 2 trucks (min 15m apart) + 90% Lane Load
   - Apply IM per Table EBL.4 (33% for Strength/Service, 75% for deck joints)
   - Number of design lanes = INT(clear roadway width / 3.6 m)
   - Multiple presence factors: 1 lane = 1.20, 2 lanes = 1.00, 3 lanes = 0.85, >3 lanes = 0.65
   |
   v
2. DETERMINE PERMANENT LOADS
   - DC: self-weight of structural components (concrete, steel, barriers, diaphragms)
   - DW: wearing surface, utilities, future overlay allowance
   |
   v
3. DETERMINE ENVIRONMENTAL LOADS
   - WA: water pressure and buoyancy (if applicable)
   - WS: wind on structure (per BDM Section 3.8)
   - WL: wind on live load (per BDM Section 3.8)
   |
   v
4. DETERMINE SEISMIC LOADS (per BDM Section 3.10)
   - Identify seismic zone from ERA map (Table EBL.6)
   - Obtain acceleration coefficient A
   - Apply importance multiplier (Table EBL.6 notes)
   - Determine analysis method (per Skill #38 Ethiopia module)
   |
   v
5. CHECK ALL APPLICABLE LIMIT STATES (Table EBL.5)
   - Strength I: governs for most medium-span bridges
   - Strength III/V: check if wind exposure is significant
   - Strength IV: check if dead load dominant (long-span, heavy concrete superstructure)
   - Service I: deflection, crack width
   - Service III: prestressed concrete tension check
   - Extreme Event I: seismic -- CRITICAL for Rift Valley bridges
   |
   v
OUTPUT: Governing load effects for each member and limit state
```

**Pipeline cross-reference:** Bridge loading (this module) provides load effects for beam bridge design (Skill #37 Ethiopia module) and substructure design (Skill #38 Ethiopia module). Seismic acceleration coefficients from Section 3.10 feed the Extreme Event I load combination.

---

## M.4 Defaults & Assumptions

When site-specific data is unavailable, the agent uses these defaults and flags them clearly:

| Parameter | Default Value | Flag |
|-----------|--------------|------|
| Importance category | Essential | Verify from bridge site selection (Skill #35 Ethiopia module) |
| Acceleration coefficient A | 0.05 (Zone 1) | MUST verify from ERA seismic zone map Figure 3.10.2-1; Rift Valley sites may be Zone 3-4 with A >= 0.10 |
| Wearing surface DW | 75 mm asphalt at 22.5 kN/m3 | Verify actual surfacing depth and material |
| gamma_EQ (Extreme Event I) | 0.50 | Per AASHTO LRFD; verify against ERA BDM specific provision |
| Multiple presence factor | 1.00 (2 lanes loaded) | Adjust for actual number of lanes loaded |

All outputs are preliminary/screening level. Always state this.

---

## M.5 Validation Rules

| Check | Rule | Action if Failed |
|-------|------|-----------------|
| HL-93 application | Both (truck + lane) and (tandem + lane) checked; greater value used | Recalculate with correct combination |
| IM application | IM = 33% applied to truck/tandem, NOT to lane load | Correct IM application |
| All limit states checked | Minimum: Strength I, Service I, Extreme Event I (if seismic zone >= 2) | Add missing limit state checks |
| Seismic zone | Zone correctly determined from ERA map Figure 3.10.2-1 | Verify zone; incorrect zone assignment is a safety-critical error |
| Multiple presence | Correct factor applied for number of loaded lanes | Adjust factor per AASHTO LRFD Table 3.6.1.1.2-1 |
| Load factor signs | Minimum DC factor (0.90) used when dead load stabilises (e.g., overturning) | Apply correct minimum factors |

---

## M.6 Escalation Triggers

| Trigger | Reason | Specialist Required |
|---------|--------|-------------------|
| Seismic Zone 4 | Detailed dynamic analysis required; acceleration coefficient > 0.15g; multimode spectral analysis | Structural dynamics specialist |
| Permit vehicle heavier than HL-93 | Strength II combination with special vehicle; ERA approval required | ERA bridge division |
| Bridge importance classified as Critical | 1.5x importance multiplier on acceleration coefficient; may govern all design | Senior bridge engineer |
| Unusual span arrangement (continuous, curved, high skew) | Non-standard load distribution; standard HL-93 application may not govern | Bridge analysis specialist |
| Fatigue-sensitive details | Fatigue limit state with IM = 15% and single design truck; steel and prestressed concrete | Fatigue specialist |

---

## M.7 Worked Example

### HL-93 Loading and Strength I Combination for a 20 m Simply Supported Beam Bridge

**Project context:** DC6 trunk road bridge, Essential importance, Seismic Zone 2, single span 20 m, two-lane road (clear width 8.4 m).

**Step 1: Determine number of design lanes**
- Number of lanes = INT(8.4 / 3.6) = 2 lanes
- Multiple presence factor for 2 lanes = 1.00

**Step 2: Calculate live load effects (for one lane, midspan moment)**

*Design Truck + Lane Load:*
- Truck positioned for maximum midspan moment on 20 m span
- Truck moment (approximate): M_truck = (145 x 20/4) + (145 x (20/4 - 4.3)) + (35 x (20/4 - 8.6))
  - M_truck approximately = 725 + 391.5 + 50.1 = 1166.6 kN-m (simplified; exact positioning by influence line)
- Lane load moment: M_lane = 9.3 x 20^2 / 8 = 465.0 kN-m
- Total with IM: M_LL = 1166.6 x 1.33 + 465.0 = 1551.6 + 465.0 = 2016.6 kN-m

*Design Tandem + Lane Load:*
- Tandem moment: M_tandem = 110 x 20/4 + 110 x (20/4 - 1.2) = 550 + 418 = 968 kN-m (approximate)
- Lane load moment: 465.0 kN-m
- Total with IM: M_LL = 968 x 1.33 + 465.0 = 1287.4 + 465.0 = 1752.4 kN-m

*Governing:* Design Truck + Lane Load controls: **M_LL+IM = 2016.6 kN-m per lane** (approximate).

**Step 3: Calculate permanent load effects (assume RC T-girder)**
- DC (self-weight): assume 18 kN/m per girder (including slab tributary width)
  - M_DC = 18 x 20^2 / 8 = 900 kN-m
- DW (wearing surface): assume 75 mm asphalt, 2.2 kN/m per girder
  - M_DW = 2.2 x 20^2 / 8 = 110 kN-m

**Step 4: Apply Strength I load combination**
- M_u = 1.25 x M_DC + 1.50 x M_DW + 1.75 x M_LL+IM
- M_u = 1.25 x 900 + 1.50 x 110 + 1.75 x 2016.6
- M_u = 1125 + 165 + 3529.1
- **M_u = 4819.1 kN-m per girder** (approximate, preliminary screening)

**Step 5: Check Extreme Event I (seismic)**
- Zone 2, A = 0.05 (to be confirmed from ERA map)
- Essential importance: effective A = 1.2 x 0.05 = 0.06
- For simply supported bridges in Zone 2, seismic is typically not governing for superstructure but must be checked for substructure connections and seat widths.
- EQ load = 0.06 x W_dead (applied horizontally) -- feeds into substructure design (Skill #38 Ethiopia module).

*Note: All values are preliminary/screening level. Exact load effects require detailed structural analysis with actual member properties and influence line positioning. Verify all parameters against ERA BDM 2013.*

---

## M.8 References

| Reference | Full Citation |
|-----------|-------------|
| ERA BDM Part 1 Ch 3 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1: Design*, 2013, Chapter 3: Loads and Load Factors |
| ERA BDM Part 1 Section 3.4 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1*, 2013, Section 3.4: Load Factors and Combinations (Verified from PDF) |
| ERA BDM Part 1 Section 3.6 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1*, 2013, Section 3.6: Live Loads -- HL-93 (Verified from PDF) |
| ERA BDM Part 1 Section 3.6.2 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1*, 2013, Section 3.6.2: Dynamic Load Allowance (Verified from PDF) |
| ERA BDM Part 1 Section 3.10 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1*, 2013, Section 3.10: Earthquake Effects (Verified from PDF) |
| AASHTO LRFD | AASHTO, *LRFD Bridge Design Specifications*, 2010/2012 (reference basis for ERA BDM) |
