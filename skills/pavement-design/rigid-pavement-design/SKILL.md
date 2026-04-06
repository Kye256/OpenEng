---
name: "rigid-pavement-design"
description: "Use when designing concrete/rigid pavements -- determining slab thickness, joint layout, dowel/tie bar design, reinforcement, and subbase requirements for jointed plain concrete (JPCP/JUC), jointed reinforced concrete (JRCP/JRC), continuously reinforced concrete (CRCP/CRCB), roller compacted concrete (RCC), block paving, and cobblestone pavements. Requires traffic loading (CESA/ESALs from Skill #5), subgrade characterisation (Skill #10), and material properties. Outputs: slab thickness, joint spacing, dowel specifications, construction requirements."
---

# Rigid Pavement Design

> **Skill ID:** 71
> **Domain:** Pavement Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---
> **Country Modules:** Kenya, Ethiopia

## Purpose

Design rigid (concrete) pavements including slab thickness determination, joint layout, dowel and tie bar design, reinforcement requirements, and subbase specification. This skill covers all rigid pavement types: jointed plain concrete (JPCP/JUC), jointed reinforced concrete (JRCP/JRC), continuously reinforced concrete pavement (CRCP), continuously reinforced concrete base (CRCB), roller compacted concrete (RCC), block paving, and cobblestone paving. It uses AASHTO Design of Pavement Structures (1993) and PCA (Portland Cement Association) thickness design methods as universal approaches, with country modules providing jurisdiction-specific adaptations.

All outputs are preliminary/screening level. Professional review is required before construction.

## When to Use This Skill

- **Use when:** Designing new rigid pavement structures for any road where concrete pavement is being considered. Use when traffic loading exceeds the practical range of flexible pavements, when long design life is required, when rigid pavement is specified by the client or road authority, or when local conditions favour concrete (e.g. limited bitumen supply, high cement availability).
- **Do not use when:** Designing flexible pavements (use Skills #21-23). Not for pavement rehabilitation overlay design (use Skill #25). Not for airfield pavements (different loading and methodology).
- **Prerequisite skills:** Skill #5 (ESA/ESAL Calculation) for traffic loading, Skill #10 (Subgrade Characterization) for subgrade k-value, Skill #13 (Design Standards Selection) for method selection.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Rigid vs flexible pavement behaviour:** Rigid pavements distribute loads over a wide area through the stiffness of the concrete slab itself. Unlike flexible pavements (which rely on progressive load distribution through granular layers), a rigid pavement slab acts as a structural plate, transferring load to the subgrade through a relatively uniform pressure. This means the pavement performance depends primarily on the concrete slab properties (thickness, strength, stiffness) and the subgrade support, with less sensitivity to intermediate layers.

**Modulus of rupture (MR):** The flexural strength of concrete, measured by third-point loading of a beam specimen. Typical values for pavement concrete range from 3.5 to 5.0 MPa (500 to 725 psi). This is the primary concrete strength parameter for rigid pavement design -- it governs fatigue life under repeated load applications.

**Modulus of subgrade reaction (k-value):** The ratio of applied pressure to resulting deflection on the subgrade surface, expressed in MPa/m (or pci). Determined from plate load tests or estimated from CBR. Typical values range from 15 MPa/m (very weak clay) to over 150 MPa/m (rock or stabilised subgrade). The k-value can be increased by providing a treated subbase (composite k-value).

**Load transfer:** The mechanism by which load applied to one slab panel is shared with the adjacent panel across a joint. Effective load transfer reduces edge stresses and deflections. Methods include:
- **Aggregate interlock:** Interlocking of rough faces of a crack or joint. Effective for tight joints (<0.6 mm opening) but degrades with wider openings and repeated loading.
- **Dowel bars:** Smooth round steel bars placed across transverse joints to transfer shear load while allowing horizontal movement. The primary load transfer mechanism for high-traffic pavements.
- **Tie bars:** Deformed steel bars placed across longitudinal joints to hold lane slabs together. They resist lane separation but do not transfer load like dowels.
- **Keyways:** Formed or sawn trapezoidal keys at the joint face. Less effective than dowels; primarily used in low-traffic applications.

**Fatigue failure:** Progressive cracking of the concrete slab caused by repeated application of wheel loads. The stress ratio (applied stress divided by modulus of rupture) determines the number of allowable load repetitions before fatigue cracking. Stress ratios below approximately 0.45 allow essentially unlimited load applications.

**Erosion failure:** Pumping of fine material from beneath the slab at joints and edges caused by water infiltration and repeated deflection. Erosion leads to loss of support, increased deflections, and eventual faulting (differential settlement across joints). Erosion is controlled by drainage, joint sealing, and erosion-resistant subbases.

### 1.2 Rigid Pavement Types

Reference `tables/rigid_pavement_types.json` for detailed comparison data.

**JPCP -- Jointed Plain Concrete Pavement (also called JUC -- Jointed Unreinforced Concrete):**
The most common rigid pavement type worldwide. Unreinforced concrete slabs with transverse contraction joints at 4-6 m spacing (generally limited to 24-30 times slab thickness). Load transfer by dowel bars at transverse joints and tie bars at longitudinal joints. Aggregate interlock provides some additional load transfer. Crack control is achieved through close joint spacing rather than reinforcement. Typical slab thickness 150-300 mm. Suitable for all traffic levels with appropriate thickness and joint design.

**JRCP -- Jointed Reinforced Concrete Pavement (also called JRC -- Jointed Reinforced Concrete):**
Concrete slabs with distributed mesh or bar reinforcement (typically 0.10-0.25% of cross-section) and wider joint spacing (8-15 m, sometimes up to 25 m). The reinforcement does not increase slab capacity -- it holds cracks tightly together to maintain aggregate interlock and load transfer. Dowel bars are used at transverse joints. Longer slab panels reduce the number of joints (reducing construction and maintenance cost) but require more reinforcement. Steel is placed at mid-depth or slightly above.

**CRCP -- Continuously Reinforced Concrete Pavement:**
No transverse joints (except at structures, intersections, and end anchors). Continuous longitudinal reinforcement (0.60-0.70% of cross-section for deformed bars) controls natural cracking to produce tight, closely-spaced transverse cracks (typically 0.5-2.5 m spacing, <0.5 mm width). Transverse reinforcement (0.05-0.10%) controls longitudinal cracking. CRCP provides excellent ride quality due to the absence of joints and is suited to very high-traffic corridors. Terminal treatments (wide-flange beams, sleeper slabs, or approach slabs) are required at ends.

**CRCB -- Continuously Reinforced Concrete Base:**
Similar to CRCP in reinforcement and crack control, but designed as a base layer with a thick asphalt surfacing (typically >=180 mm). The asphalt provides the riding surface and additional structural capacity. CRCB combines the structural rigidity of concrete with the surface characteristics of asphalt. Used on very heavy traffic routes where surface maintenance (milling and overlay) is preferred over concrete surface repair.

**RCC -- Roller Compacted Concrete:**
Zero-slump concrete placed with conventional asphalt paving equipment and compacted with vibratory rollers. No dowels, no forms, rapid placement. Contraction joints are formed by early sawcutting. RCC has lower flexural strength than conventional concrete but is much faster and cheaper to place. Typical slab thickness 150-250 mm. Commonly used for industrial pavements, intermodal yards, low-speed roads, and as a base for thin asphalt surfacing. Surface texture is rough; an asphalt overlay may be applied for riding comfort.

**Block Paving (BP):**
Interlocking concrete blocks (typically 60-80 mm thick for vehicular traffic) laid on a 25-40 mm sand bedding layer over a structural base. Load distribution depends on the interlock between blocks and the base/subbase system. Suited to low and medium traffic (generally <5 MCESA) and low speeds (<60 km/h). Advantages: can be laid by hand (labour-intensive construction), individual blocks replaceable, no curing period, no joints. Commonly used in urban areas, bus stops, parking, container yards, and developing countries where labour is available.

**Cobblestone Paving:**
Natural or dressed stone blocks (typically 100-150 mm thick) laid on a sand or mortar bedding layer. Similar in structural concept to block paving but uses natural stone. Suited to low-volume roads and urban contexts. Advantages include local material sourcing, labour-intensive construction suitable for employment-intensive programmes, and very long durability (50+ year life). Limitations include rough ride quality, noise, low speed suitability, and difficulty of underground service access.

### 1.3 Slab Thickness Design

#### 1.3.1 AASHTO 1993 Method

The AASHTO Design of Pavement Structures (1993) provides an empirical-mechanistic method based on the AASHO Road Test data. The design equation relates slab thickness to traffic loading, material properties, and desired reliability:

**Design equation (simplified form):**

log10(W18) = ZR x S0 + 7.35 x log10(D + 1) - 0.06 + [log10(DPSI / (4.5 - 1.5))] / [1 + (1.624 x 10^7) / (D + 1)^8.46] + (4.22 - 0.32 x pt) x log10[(Sc x Cd x (D^0.75 - 1.132)) / (215.63 x J x (D^0.75 - (18.42 / (Ec/k)^0.25)))]

Where:
- **W18** = predicted number of 80 kN (18-kip) equivalent single axle load applications
- **ZR** = standard normal deviate for reliability level R (e.g. ZR = -1.282 for R = 90%)
- **S0** = combined standard error of traffic prediction and performance prediction (typically 0.30-0.40)
- **D** = slab thickness (mm or inches) -- the design variable to be solved
- **DPSI** = design serviceability loss = p0 - pt (initial serviceability minus terminal serviceability, typically 4.5 - 2.5 = 2.0 for major roads)
- **pt** = terminal serviceability index (typically 2.0-2.5)
- **Sc** = concrete modulus of rupture (MPa or psi)
- **Cd** = drainage coefficient (0.70-1.25, depending on drainage quality and time-to-drain)
- **J** = load transfer coefficient (2.5-3.2 for dowelled joints, 3.6-4.2 for undowelled)
- **Ec** = concrete elastic modulus (typically 27,000-31,000 MPa)
- **k** = effective modulus of subgrade reaction (MPa/m)

**Solution:** The equation is implicit in D and must be solved iteratively or by nomograph. The agent should assume a trial thickness, compute both sides, and adjust until the equation balances. Standard practice is to solve for D in 25 mm increments.

**Inputs required:**
1. Design traffic W18 (from Skill #5, converted to 80 kN ESALs)
2. Reliability R and standard deviation S0 (from road importance -- see Section 3)
3. Subgrade k-value (from Skill #10 or plate load test)
4. Concrete properties: Sc (modulus of rupture) and Ec (elastic modulus)
5. Load transfer coefficient J (depends on joint type -- dowelled vs undowelled)
6. Drainage coefficient Cd (from drainage conditions)
7. Serviceability loss DPSI

#### 1.3.2 PCA Method

The Portland Cement Association (PCA) thickness design method uses two independent failure criteria. The slab must satisfy BOTH:

**Fatigue analysis:**
1. Calculate the edge stress for each axle load and configuration using influence charts or equations based on slab thickness, k-value, and concrete Ec.
2. Compute the stress ratio = edge stress / modulus of rupture.
3. Look up the allowable number of load repetitions for that stress ratio from the PCA fatigue curve.
4. Compute the fatigue damage ratio = expected repetitions / allowable repetitions.
5. Sum the fatigue damage ratios for all axle load groups. Total must be <= 1.0 (100% consumed fatigue life).

**Erosion analysis:**
1. Calculate the corner deflection for each axle load and configuration.
2. Compute the power factor based on corner deflection, slab thickness, and load transfer type.
3. Look up the allowable number of load repetitions from the PCA erosion curve.
4. Compute the erosion damage ratio = expected repetitions / allowable repetitions.
5. Sum the erosion damage ratios for all axle load groups. Total must be <= 1.0.

**Trial slab approach:**
1. Assume an initial slab thickness (start with 200 mm for moderate traffic).
2. Perform both fatigue and erosion analyses.
3. If either criterion exceeds 1.0, increase thickness by 25 mm and repeat.
4. If both criteria are well below 1.0 (say <0.5), decrease thickness by 25 mm and check.
5. The design thickness is the minimum that satisfies both criteria with total damage <= 1.0.

The PCA method is particularly useful for checking designs where the traffic load spectrum (different axle loads and configurations) is known in detail, as it evaluates each load increment separately.

### 1.4 Joint Design

#### 1.4.1 Transverse Contraction Joints

**Purpose:** Control the location of natural shrinkage cracks that form as concrete cures and as temperature/moisture cycles occur.

**Spacing rules:**
- JPCP/JUC: 4.0-6.0 m (rule of thumb: 24-30 times slab thickness, with maximum 6 m). Shorter spacing for thinner slabs and drier climates.
- JRCP/JRC: 8-15 m (longer panels permitted due to reinforcement holding cracks tight). Some agencies permit up to 25 m.
- CRCP: no contraction joints (reinforcement controls cracking).
- RCC: 3-6 m by early sawcutting (within 4-24 hours of placement depending on conditions).

**Sawcut details:**
- Depth: one-quarter to one-third of slab thickness (creates a weakened plane).
- Width: initial sawcut 3-4 mm; widened for sealant to 6-10 mm.
- Timing: sawcutting must begin as soon as the concrete can support the saw weight without ravelling -- typically 4-12 hours after placement. Late sawcutting risks uncontrolled cracking.

**Sealant requirements:**
- Hot-pour rubberised asphalt, silicone, or preformed compression seals.
- Joint reservoir (widened groove) must allow +/-25% movement of the sealant width.
- Backer rod installed to control sealant depth and shape factor.

#### 1.4.2 Transverse Construction Joints

Formed at the end of each paving day or when paving is interrupted for more than 30 minutes. Must be dowelled to ensure load transfer. Located at planned contraction joint locations where possible to avoid additional joints.

#### 1.4.3 Longitudinal Joints

Located at lane edges and shoulder interfaces. Tie bars (deformed steel) hold adjacent slabs together and prevent lane separation. Longitudinal joints can be formed by sawcutting (centre joint in a two-lane pave) or by header construction (lane-at-a-time paving).

#### 1.4.4 Expansion Joints

Full-depth joints with a compressible filler (typically 20-25 mm wide) and dowels in expansion caps. Required at:
- Bridge approaches and abutments.
- Intersection approaches (where rigid meets flexible).
- Around structures (manholes, drainage inlets) in the pavement.
- At the start and end of CRCP terminal treatments.

Modern practice minimises expansion joints because they are maintenance-intensive and can cause load transfer problems. Many agencies use them only at structures.

#### 1.4.5 Dowel Bar Design

Dowels are smooth round steel bars that transfer shear load across transverse joints while allowing horizontal movement (expansion/contraction).

**Typical sizing by slab thickness:**

| Slab Thickness (mm) | Dowel Diameter (mm) | Dowel Length (mm) | Dowel Spacing (mm c/c) |
|---------------------|--------------------|--------------------|------------------------|
| 150-175 | 25 | 450 | 300 |
| 200-225 | 32 | 450 | 300 |
| 250-275 | 32 | 450 | 300 |
| 300-325 | 38 | 450 | 300 |
| 350 | 38 | 500 | 300 |

Reference `tables/joint_design_parameters.json` for complete dowel and tie bar sizing tables.

**Dowel requirements:**
- Material: smooth round steel (Grade 300 or 500), epoxy-coated or stainless steel in corrosive environments.
- Alignment tolerance: +/-6 mm vertically and horizontally, +/-10 mm longitudinally. Misaligned dowels can lock the joint and cause cracking.
- One end greased or capped to allow free movement.
- Placed at slab mid-depth.

#### 1.4.6 Tie Bar Design

Tie bars are deformed steel bars placed across longitudinal joints to prevent lane separation.

**Typical sizing:**

| Lane Configuration | Tie Bar Diameter (mm) | Tie Bar Length (mm) | Tie Bar Spacing (mm c/c) |
|--------------------|-----------------------|---------------------|--------------------------|
| Lane-lane joint | 12 | 600 | 750 |
| Lane-shoulder joint | 12 | 600 | 900 |
| Wide lane (>4.5 m) | 16 | 900 | 600 |

**Tie bar requirements:**
- Material: deformed reinforcing bar (Grade 500).
- Placed at slab mid-depth.
- Must be deformed (ribbed) to develop bond with concrete on both sides.

### 1.5 Reinforcement

#### 1.5.1 Distributed Steel in JRCP

The purpose of distributed reinforcement in JRCP is to hold cracks tightly closed, not to increase structural capacity. The required steel percentage is determined by the subgrade drag theory:

**Percentage steel (Ps):**

Ps = (gamma x f x L) / (2 x fs)

Where:
- gamma = unit weight of concrete (typically 23.5 kN/m3)
- f = friction factor between slab and subbase (1.0-2.0; typically 1.5 for granular subbase, 2.0 for stabilised)
- L = joint spacing (m)
- fs = allowable steel stress (typically 75% of yield strength)

**Typical values:** 0.10-0.25% of cross-sectional area for joint spacings of 8-15 m.

**Placement:** At or slightly above mid-depth. Can be welded wire fabric (mesh) or individual deformed bars. Minimum cover 50 mm from surface.

#### 1.5.2 Continuous Reinforcement in CRCP

CRCP requires continuous longitudinal steel to control transverse cracking:

- **Minimum longitudinal steel:** 0.60-0.70% of cross-sectional area (deformed bars, Grade 500). Higher percentages (up to 0.80%) may be used in cold climates.
- **Bar diameter:** 16 mm or 20 mm typical.
- **Bar spacing:** 150-200 mm c/c.
- **Lap splices:** Staggered over a minimum 3 m length; lap length per reinforcement design standards.
- **Transverse steel:** 0.05-0.10% of cross-sectional area. 12 mm bars at 600-900 mm c/c typical.
- **Placement:** Longitudinal steel at or slightly above mid-depth (55-65 mm from surface for 200 mm slab).

**Crack control criteria for CRCP:**
- Mean crack spacing: 0.5-2.5 m (target).
- Maximum crack width: 0.5 mm (tight enough for aggregate interlock).
- If cracks are too far apart (>2.5 m), increase steel percentage.
- If cracks are too close (<0.5 m), decrease steel percentage or increase slab thickness.

### 1.6 Subbase Requirements

#### 1.6.1 Purpose of Subbase

The subbase under a rigid pavement serves several functions:
- Provides uniform support to the slab (prevents localised settlement).
- Prevents pumping and erosion of fine-grained subgrade material.
- Acts as a working platform during construction.
- Provides drainage (if permeable).
- Increases the effective k-value (composite k).

#### 1.6.2 Subbase Types

**Untreated granular subbase:**
- Crushed rock or natural gravel, typically 150-200 mm thick.
- CBR > 30% (compacted).
- Adequate for low to moderate traffic (< 10 MCESA).
- Does not significantly increase composite k-value.

**Cement-treated subbase (CTS):**
- Granular material stabilised with 3-6% cement.
- UCS 0.75-1.5 MPa (7-day).
- Typical thickness 150-200 mm.
- Significantly increases composite k-value.
- Requires a bond-breaker (separation membrane) between CTS and slab to prevent reflection cracking.

**Lean concrete subbase (LCS):**
- Low-strength concrete (UCS 3-7 MPa).
- Typical thickness 100-150 mm.
- Provides the highest composite k-value increase.
- Requires bond-breaker between LCS and slab.
- Standard practice for heavy-traffic rigid pavements.

**Bituminous-treated subbase:**
- Asphalt-bound granular material, typically 100-150 mm.
- Erosion-resistant.
- Used where recycled asphalt or surplus bituminous material is available.

#### 1.6.3 Separation Membrane and Bond-Breaker

A polyethylene sheet (typically 0.2 mm thickness) or two coats of bituminous emulsion is placed between the treated subbase and the concrete slab. Purpose:
- Prevents bond between slab and subbase (allows free slab movement).
- Reduces friction (lowers restraint stresses).
- Prevents moisture loss from fresh concrete into the subbase.

Without a bond-breaker on a treated subbase, reflection cracks will propagate from the subbase into the slab, causing premature cracking between joints.

#### 1.6.4 Subbase Thickness Selection

| Traffic Level | Subbase Type | Typical Thickness |
|--------------|-------------|-------------------|
| Low (<5 MCESA) | Granular | 150 mm |
| Moderate (5-30 MCESA) | Cement-treated | 150-200 mm |
| High (30-100 MCESA) | Lean concrete | 150 mm |
| Very high (>100 MCESA) | Lean concrete | 150-200 mm |

### 1.7 Construction Considerations

#### 1.7.1 Concrete Mix Design

**Flexural strength classes:** Concrete for rigid pavements is specified by flexural strength (modulus of rupture), not compressive strength. Typical classes:

| Class | 28-day MR (MPa) | Approximate fc (MPa) | Application |
|-------|-----------------|---------------------|-------------|
| F3.5 | 3.5 | 30 | Light traffic, RCC |
| F4.0 | 4.0 | 35 | Moderate traffic |
| F4.5 | 4.5 | 40 | Heavy traffic, standard |
| F5.0 | 5.0 | 45 | Very heavy traffic, CRCP |

**Mix requirements:**
- Minimum cement content: 300-360 kg/m3 (depending on exposure).
- Maximum water/cement ratio: 0.45-0.50.
- Workability: 25-50 mm slump for slipform paving, 50-75 mm for fixed-form.
- Air entrainment: 4-7% for frost-susceptible environments (not typically required in tropical climates).
- Maximum aggregate size: 37.5 mm (slipform) or 25 mm (fixed-form with reinforcement).

#### 1.7.2 Curing

Curing is critical for rigid pavements because premature drying causes shrinkage cracking and reduced surface strength.

- **Curing compound:** Applied immediately after finishing. White-pigmented liquid membrane-forming compound at minimum 0.2 litres/m2.
- **Wet curing:** Continuous water application or wet hessian covers for minimum 7 days.
- **Duration:** Minimum 7 days, preferably 14 days. Traffic not permitted for at least 14 days (28 days for CRCP).

#### 1.7.3 Surface Texture

- **Transverse tining:** Uniformly spaced grooves (3 mm deep, 20 mm spacing) applied to fresh concrete for skid resistance.
- **Longitudinal tining:** Alternative to transverse, produces less tyre noise.
- **Burlap drag:** Used for lower-speed roads.
- **Diamond grinding:** Post-construction treatment to achieve ride quality and texture requirements.

#### 1.7.4 Quality Control

| Test | Frequency | Requirement | Standard |
|------|-----------|-------------|----------|
| Flexural strength (beam test) | 1 per 250 m3 or daily minimum | >= specified MR | ASTM C78 / BS EN 12390-5 |
| Compressive strength (cores) | When beams unavailable | Correlation to MR | ASTM C39 / BS EN 12390-3 |
| Slab thickness | 1 core per 500 m of lane | >= design thickness - 5 mm | ASTM C174 |
| Ride quality (IRI) | Continuous profiling | <= 1.5 m/km (new construction) | ASTM E1926 |
| Dowel alignment | Pulse velocity / MIT scan | Within tolerance | Manufacturer spec |

---

## 2. Reasoning (Universal)

### 2.1 Pavement Type Selection

```
Step 1: Determine project context
  |-- Design traffic (CESA/ESALs from Skill #5)
  |-- Design speed
  |-- Road class and function (highway, urban arterial, local, industrial)
  |-- Available materials and construction capability
  +-- Load country module for jurisdiction-specific guidance

Step 2: Select pavement type
  |-- If traffic > 50 MCESA AND high-speed highway:
  |     --> CRCP (best ride, lowest maintenance) or JPCP (simpler construction)
  |-- If traffic 5-50 MCESA AND standard road:
  |     --> JPCP/JUC (most common, well-understood) or JRCP/JRC (fewer joints)
  |-- If traffic < 5 MCESA AND low speed (<60 km/h):
  |     --> Block paving (if labour available, urban context)
  |     --> Cobblestone (if natural stone available, very low traffic)
  |     --> RCC (if rapid construction needed)
  |-- If very heavy traffic AND surface maintenance preferred:
  |     --> CRCB (concrete base + asphalt surface)
  |-- If rapid construction AND industrial/low-speed application:
  |     --> RCC
  +-- Document selection rationale with all factors

Step 3: Determine slab thickness
  |-- Select design method (AASHTO 1993 or PCA)
  |-- Gather inputs: traffic, k-value, concrete properties, reliability
  |-- Perform iterative design (see Section 1.3)
  +-- Round up to nearest 25 mm increment

Step 4: Design joints
  |-- Select joint spacing based on pavement type (Section 1.4)
  |-- Size dowel bars based on slab thickness (Section 1.4.5)
  |-- Size tie bars for longitudinal joints (Section 1.4.6)
  |-- Specify joint sealant type
  +-- Layout expansion joints at structures

Step 5: Design reinforcement (if JRCP, CRCP, or CRCB)
  |-- JRCP: calculate distributed steel by subgrade drag theory
  |-- CRCP: specify minimum 0.6% longitudinal, 0.05% transverse
  +-- Specify bar sizes, spacing, cover, and lap details

Step 6: Specify subbase
  |-- Select subbase type based on traffic and subgrade
  |-- Determine subbase thickness
  |-- Specify bond-breaker if treated subbase
  +-- Calculate composite k-value for slab design

Step 7: Validate and produce output
  |-- Check all values against Section 4 validation rules
  |-- Check escalation triggers (Section 5)
  |-- Produce complete pavement design specification
  +-- Flag all assumptions made
```

### 2.2 Slab Thickness Iteration Strategy

The agent should use the following iteration strategy for AASHTO 1993:

1. Start with an initial estimate: D = 200 mm for traffic < 10 MCESA, D = 250 mm for 10-50 MCESA, D = 300 mm for > 50 MCESA.
2. Evaluate the AASHTO equation for trial D.
3. If computed W18 > design W18, the trial thickness is adequate.
4. Seek the minimum D (in 25 mm increments) where computed W18 >= design W18.
5. Show the iteration table: trial D, computed W18, design W18, pass/fail.

### 2.3 Joint Spacing Optimisation

Shorter joint spacing reduces curl/warp stresses but increases construction cost and number of joints to maintain. The optimum balances:
- Maximum spacing: 24-30 x slab thickness for JPCP.
- Minimum spacing: approximately 15 x slab thickness (below this, load transfer by aggregate interlock may be inadequate due to small joint opening).
- Consider climate: drier and more extreme temperature ranges require closer spacing.
- Consider subbase type: rough-textured subbase increases friction and requires closer spacing.

### 2.4 Subbase Type Decision

```
If traffic < 5 MCESA:
  --> Granular subbase (150 mm)
If traffic 5-30 MCESA:
  --> Cement-treated subbase (150-200 mm)
  --> Bond-breaker required
If traffic > 30 MCESA:
  --> Lean concrete subbase (150 mm)
  --> Bond-breaker required
If pumping risk is high (fine-grained subgrade + wet climate):
  --> Always use treated subbase regardless of traffic
  --> Consider permeable base drainage layer
```

---

## 3. Defaults

When site-specific data is not available, the agent should use these default values and **flag each assumption clearly** in the output.

### 3.1 Reliability and Statistical Parameters

| Road Classification | Reliability R (%) | ZR | Standard Deviation S0 |
|--------------------|--------------------|-------|------------------------|
| Interstate / expressway | 95-99.9 | -1.645 to -3.090 | 0.30-0.35 |
| Trunk / national road | 90-95 | -1.282 to -1.645 | 0.30-0.35 |
| Collector / distributor | 85-90 | -1.037 to -1.282 | 0.35-0.40 |
| Local / access road | 75-85 | -0.674 to -1.037 | 0.35-0.40 |

### 3.2 Load Transfer and Drainage Coefficients

| Joint Type | Load Transfer Coefficient J |
|------------|----------------------------|
| Dowelled joint (JPCP/JRCP) | 2.5-3.2 |
| Undowelled joint | 3.6-4.2 |
| CRCP (continuous) | 2.2-2.6 |
| Tied concrete shoulder | Reduce J by 0.2 |

| Drainage Quality | Cd (% time near saturation) |
|-----------------|-----------------------------|
| Excellent (water removed within 2 hours, <1% saturated) | 1.20-1.25 |
| Good (water removed within 1 day, 1-5% saturated) | 1.10-1.15 |
| Fair (water removed within 1 week, 5-25% saturated) | 0.95-1.00 |
| Poor (water not fully removed, >25% saturated) | 0.70-0.90 |

### 3.3 Concrete Properties

| Property | Typical Range | Default (if unknown) |
|----------|--------------|---------------------|
| Modulus of rupture Sc | 3.5-5.0 MPa | 4.5 MPa |
| Elastic modulus Ec | 27,000-31,000 MPa | 28,000 MPa |
| Unit weight | 23.0-24.0 kN/m3 | 23.5 kN/m3 |
| Poisson's ratio | 0.15-0.20 | 0.15 |

### 3.4 Subgrade k-value Ranges

| Subgrade Type | CBR Range (%) | k-value Range (MPa/m) | Default k (MPa/m) |
|--------------|--------------|----------------------|-------------------|
| Soft clay | 2-3 | 15-25 | 20 |
| Stiff clay | 4-7 | 25-50 | 40 |
| Sandy gravel | 8-20 | 50-100 | 75 |
| Crusite / rock | 20-50 | 100-150 | 120 |
| Stabilised subgrade | -- | 80-200 | Depends on treatment |

### 3.5 Serviceability

| Parameter | Default Value |
|-----------|--------------|
| Initial serviceability p0 | 4.5 |
| Terminal serviceability pt (major roads) | 2.5 |
| Terminal serviceability pt (minor roads) | 2.0 |
| Design serviceability loss DPSI | 2.0 (major) to 2.5 (minor) |

---

## 4. Validation

The agent must check design outputs against these sanity ranges. Values outside these ranges require engineering justification.

### 4.1 Slab Thickness

| Pavement Type | Minimum (mm) | Maximum (mm) | Alert If |
|--------------|-------------|-------------|----------|
| JPCP / JUC | 150 | 300 | > 300 (consider CRCP) |
| JRCP / JRC | 175 | 325 | > 325 (consider CRCP) |
| CRCP | 200 | 350 | > 350 (escalate) |
| CRCB | 200 | 300 | > 300 (check asphalt contribution) |
| RCC | 150 | 250 | > 250 (consider conventional concrete) |
| Block paving | 60 | 100 | > 100 (unusual for blocks) |
| Cobblestone | 100 | 200 | > 200 (consider blocks) |

### 4.2 Joint Spacing

| Pavement Type | Minimum Spacing (m) | Maximum Spacing (m) |
|--------------|--------------------|--------------------|
| JPCP / JUC | 3.0 | 6.0 |
| JRCP / JRC | 6.0 | 25.0 |
| RCC | 3.0 | 6.0 |

### 4.3 Reinforcement Checks

| Parameter | Minimum | Maximum | Alert If |
|-----------|---------|---------|----------|
| JRCP distributed steel | 0.10% | 0.25% | Outside range |
| CRCP longitudinal steel | 0.60% | 0.80% | < 0.60% (crack control inadequate) |
| CRCP transverse steel | 0.05% | 0.10% | < 0.05% |
| CRCP crack spacing | 0.5 m | 2.5 m | Outside range |
| CRCP crack width | -- | 0.5 mm | > 0.5 mm |

### 4.4 Dowel Compatibility

| Slab Thickness (mm) | Minimum Dowel Diameter (mm) | Maximum Dowel Diameter (mm) |
|---------------------|----------------------------|-----------------------------|
| 150-175 | 25 | 25 |
| 200-250 | 25 | 32 |
| 275-325 | 32 | 38 |
| 350+ | 38 | 44 |

---

## 5. Escalation Triggers

The following conditions require referral to a senior pavement engineer. The agent must flag these clearly and NOT proceed with a standard design:

1. **Slab thickness exceeds 350 mm:** This indicates extreme loading or very weak subgrade. Consider CRCP, composite pavement (CRCB), or ground improvement before accepting a thick slab. A slab thicker than 350 mm is uneconomical and may indicate a design error.

2. **Subgrade k-value below 20 MPa/m:** Very weak subgrade (CBR < 3%) provides insufficient support for a rigid pavement. Ground improvement (stabilisation, replacement, or surcharging) is required before rigid pavement construction. The agent should flag this and recommend Skill #10 and Skill #26 review.

3. **Traffic exceeds 100 MCESA (100 million cumulative equivalent standard axles):** This is beyond the range of standard design methods and requires specialist pavement engineering input. Finite element analysis and/or accelerated pavement testing data may be needed.

4. **Aggressive environment -- sulfate attack risk:** Sulfate-bearing soils or groundwater (>0.2% SO3 in soil or >300 mg/l in water) require sulfate-resisting cement or special concrete mix design. The agent should flag this and recommend materials specialist input.

5. **Frost-susceptible subgrade (where applicable):** In climates with frost penetration, the total pavement depth (slab + subbase) should exceed the frost penetration depth, or non-frost-susceptible fill must be provided. Requires climate data and frost depth analysis.

6. **Settlement-prone subgrade:** Organic soils, recent fill, collapsible soils, or areas with mining subsidence are unsuitable for rigid pavements without ground treatment. CRCP or flexible pavement may be preferred. Requires geotechnical investigation (Skill #7).

7. **Heavy or abnormal loading:** Concentrated loads from industrial operations, container handling, or abnormal transport vehicles exceed the standard axle load assumptions. Specialist analysis required.

8. **CRCP terminal treatment at structures:** The design of CRCP terminal treatments (anchor lugs, sleeper slabs, wide-flange beams) at bridges, intersections, and pavement type transitions requires specialist detailing beyond this skill's scope.

---

## 6. Cross-References

| Skill | Relationship | Data Exchanged |
|-------|-------------|----------------|
| #5 ESA/ESAL Calculation | **Input** | Cumulative design traffic (W18/CESA/ESALs) for slab thickness design |
| #10 Subgrade Characterization | **Input** | Subgrade k-value (from CBR correlation or plate load test) and subgrade classification |
| #13 Design Standards Selection | **Input** | Road class and design standard selection (determines reliability level and design method) |
| #21 MoWT Catalogue | **Compare** | Flexible pavement alternative for cost comparison -- flexible vs rigid analysis |
| #22 AASHTO 93 (Flexible) | **Compare** | AASHTO flexible pavement design for comparison where both options viable |
| #24 Pavement Material Specs | **Output** | Concrete and subbase material specifications for the designed rigid pavement |
| #26 Earthworks Calculation | **Input** | Subgrade preparation requirements, cut/fill earthworks for formation level |
| #67 Road Marking Design | **Output** | Surface marking specifications for the completed rigid pavement surface |
