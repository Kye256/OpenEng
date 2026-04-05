# Rigid Pavement Design -- Ethiopia Module

> **Parent Skill:** #71 Rigid Pavement Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Pavement Design Manual Volume II - 2013 (Rigid Pavements), Chapters 1-6, Appendix A
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Pavement Design Manual Volume II: Rigid Pavements | 2013 | Chapters 1-6, Appendix A | Current -- primary for rigid pavement design |
| ERA Flexible Pavement Design Manual Vol I | 2013 | Chapter 2 (Traffic), Chapter 3 (Subgrade) | Current -- shared traffic and subgrade inputs |
| ERA Site Investigation Manual | 2013 | Foundation investigation methods | Current -- supplementary |

**Note:** ERA Pavement Vol II is a separate manual from Vol I (Flexible Pavements). Vol II covers rigid (concrete) pavement design using a TRL/AASHTO hybrid approach adapted for Ethiopian conditions.

### M.1.2 Institutional Context

ERA is the sole national roads agency responsible for rigid pavement design standards for all federal roads. Rigid pavements in Ethiopia are used primarily on:

- **Heavy-traffic trunk routes** (DC1-DC3) where long-term structural performance and reduced maintenance justify the higher initial cost
- **Urban roads** in Addis Ababa and regional capitals where utility access and high traffic loads favour concrete
- **Industrial access roads** and bus/truck terminals where channelised heavy loading occurs
- **Altitude-affected routes** where temperature differentials and limited bitumen supply favour concrete

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and design class (DC1-DC8) system.

### M.1.3 Standard Philosophy

ERA Vol II uses a TRL/AASHTO hybrid approach for rigid pavement design. The manual draws on both TRL overseas practice and AASHTO 1993 methodology, adapted for Ethiopian conditions including:
- Ethiopian traffic loading (T1-T8 classification from Vol I, with n = 4.5 damage exponent)
- Ethiopian subgrade conditions (S1-S5 classification from Vol I)
- Limited construction industry experience with concrete paving (addressed in construction guidance)
- High-altitude temperature differentials in Ethiopian highlands (affects curl/warp stresses)

Three concrete pavement types are covered: JUCP (Jointed Unreinforced), JRCP (Jointed Reinforced), and CRCP (Continuously Reinforced).

---

## M.2 Country-Specific Knowledge

### M.2.1 Concrete Pavement Types (Chapter 2, Section 2.2)

ERA Vol II defines three concrete pavement types:

**JUCP (Jointed Unreinforced Concrete Pavement):**
- No distributed reinforcement in the slab
- Contraction joints at short spacing (typically 4.5-6.0 m) to control cracking
- Dowel bars at transverse joints for load transfer
- Tie bars at longitudinal joints
- Most common type for Ethiopian conditions due to simpler construction
- Suitable for all traffic levels covered by Vol II

**JRCP (Jointed Reinforced Concrete Pavement):**
- Distributed steel reinforcement (mesh or bars) to hold cracks tight
- Wider joint spacing than JUCP (typically 8-15 m)
- Dowel bars at transverse joints
- Tie bars at longitudinal joints
- Two variants: with tied concrete shoulders and without tied concrete shoulders
- Suitable for higher traffic where reduced joint maintenance is desired

**CRCP (Continuously Reinforced Concrete Pavement):**
- Continuous longitudinal reinforcement (no transverse contraction joints)
- Transverse cracks form naturally at close spacing (1-2 m) and are held tight by reinforcement
- Construction joints only (no contraction joints)
- Highest initial cost but lowest maintenance
- Suitable for the highest traffic levels on trunk routes

### M.2.2 Pavement Characteristics (Chapter 2)

**Concrete Strength (Verified from PDF):**

| Parameter | ERA Requirement | Notes |
|-----------|----------------|-------|
| Characteristic compressive strength | 30-40 MPa (cube) at 28 days | Depends on traffic level |
| Characteristic flexural strength | 4.0-5.0 MPa (beam, third-point loading) at 28 days | Primary design parameter |
| Minimum cement content | 300 kg/m3 | For durability |
| Maximum water/cement ratio | 0.50 | For durability |
| Minimum slab thickness | 150 mm | Practical minimum |

**Subbase Requirements (Appendix A) (Verified from PDF):**

| Foundation Component | Material | Thickness | Application |
|---------------------|----------|-----------|-------------|
| Lean concrete subbase (LCSB) | Cement-bound material, 7-day UCS 3.5-10 MPa | 150 mm | Required for all JUCP/JRCP/CRCP with traffic > T5 |
| Cement-treated subbase (CTSB) | Cement-treated granular, 7-day UCS 1.5-3.5 MPa | 150-200 mm | For traffic T3-T5, or below LCSB |
| Granular subbase | GS material (CBR >= 30%) | 150-200 mm | For traffic T1-T3 only |
| Capping layer | GC material (CBR >= 15%) | 150-250 mm | Required when subgrade is S1 or S2 |

**Drainage Requirements:**
- Concrete pavements require positive drainage to prevent water accumulation at slab/subbase interface
- Edge drainage (longitudinal drain at pavement edge) recommended for all rigid pavements
- Permeable subbase layer may be specified in wet areas

### M.2.3 Stress and Design Criteria (Chapter 3)

ERA Chapter 3 covers the stress analysis basis for rigid pavement design:

| Stress Type | Description | ERA Treatment |
|------------|-------------|---------------|
| Load stress | Stress from wheel loads at slab edge or interior | Primary design criterion -- controlled by slab thickness |
| Temperature curl stress | Stress from temperature gradient through slab | Significant in Ethiopian highlands (large diurnal temperature range) |
| Warping stress | Stress from moisture gradient through slab | Secondary consideration |
| Load transfer stress | Stress reduction from dowels and aggregate interlock | Accounted in design charts through tied/untied shoulder options |

### M.2.4 Joint Design (Chapter 4)

**Joint Types and Spacing (Verified from PDF):**

| Joint Type | JUCP | JRCP | CRCP |
|-----------|------|------|------|
| Transverse contraction | 4.5-6.0 m | 8-15 m | Not applicable (no joints) |
| Transverse construction | As needed | As needed | Daily construction limits |
| Longitudinal | 3.5-4.5 m (lane width) | 3.5-4.5 m | 3.5-4.5 m |
| Expansion | At structures, intersections only | At structures only | At structures only |

**Joint Components:**

| Component | Specification | Function |
|-----------|--------------|----------|
| Dowel bars | Mild steel, 32 mm diameter, 450 mm long, at 300 mm spacing | Load transfer at transverse joints |
| Tie bars | Deformed bars, 16 mm diameter, 700 mm long, at 600-900 mm spacing | Hold longitudinal joints together |
| Joint sealant | Hot-poured or silicone sealant | Prevent water and debris infiltration |
| Sawcut depth | 1/3 to 1/4 of slab thickness | Control crack location |

### M.2.5 Pavement Type Selection (Chapter 5)

**Decision Criteria for JUCP vs JRCP vs CRCP:**

| Factor | JUCP | JRCP | CRCP |
|--------|------|------|------|
| Traffic level | T3-T8 | T5-T8 | T7-T8 |
| Initial cost | Lowest | Medium | Highest |
| Maintenance cost | Highest (joints) | Medium | Lowest |
| Construction complexity | Simplest | Medium | Most complex |
| Ethiopian construction capability | Most practical | Requires steel fixing skills | Requires specialist contractor |
| Joint maintenance burden | High (many joints) | Medium (fewer joints) | Minimal (no contraction joints) |
| Recommended application | General use, especially where maintenance resources available | Long-life trunk roads, urban arterials | Highest-traffic trunk routes, expressways |

### M.2.6 Thickness Design (Chapter 6)

ERA Chapter 6 provides design charts for determining slab thickness based on traffic loading, concrete strength, and foundation class. The design charts are:

**ERA Design Charts (Verified from PDF):**

| Figure | Pavement Type | Shoulder Condition | Application |
|--------|--------------|-------------------|-------------|
| Figure 6-2a | JUCP | With tied concrete shoulders | JUCP with tied shoulders -- thinnest slab for given traffic |
| Figure 6-2b | JUCP | Without tied concrete shoulders | JUCP without shoulders -- thicker slab required |
| Figure 6-3 | JRCP | With tied concrete shoulders | JRCP with tied shoulders |
| Figure 6-4 | JRCP | Without tied concrete shoulders | JRCP without tied shoulders |
| Figure 6-5 | CRCP | With tied concrete shoulders | CRCP with tied shoulders |

**Chart Parameters:**
- **X-axis:** Design traffic (cumulative ESA in millions, using n = 4.5 from ERA Vol I)
- **Y-axis:** Slab thickness (mm)
- **Curves:** Concrete flexural strength (typically 4.0, 4.5, 5.0 MPa lines)
- **Foundation class:** Incorporated through subbase type selection (Appendix A)

**Typical Slab Thickness Ranges (from design charts):**

| Pavement Type | Traffic Range | Slab Thickness Range |
|--------------|--------------|---------------------|
| JUCP with tied shoulders | T3-T8 (0.7-30M ESA) | 175-275 mm |
| JUCP without tied shoulders | T3-T8 | 200-300 mm |
| JRCP with tied shoulders | T5-T8 (3-30M ESA) | 200-275 mm |
| JRCP without tied shoulders | T5-T8 | 225-300 mm |
| CRCP with tied shoulders | T7-T8 (10-30M ESA) | 200-275 mm |

**Note:** Tied concrete shoulders reduce slab thickness by approximately 25-50 mm compared to untied/no shoulders, because edge loading is reduced.

**Cross-Country Comparison: Rigid Pavement Design**

| Feature | ERA Vol II (Ethiopia) | RDM 3.5 (Kenya) |
|---------|----------------------|------------------|
| Pavement types | JUCP, JRCP, CRCP | JUC, JRC, CRCP, CRCB, RCC, Block, Cobblestone |
| Design approach | TRL/AASHTO hybrid charts | AASHTO/PCA/TRH4/DMRB hybrid |
| Traffic input | ESA (millions) with n = 4.5 | CESA (millions) with n = 4.5 |
| Design charts | Figures 6-2 to 6-5 | Country-specific charts with 7 pavement types |
| Foundation | Appendix A (LCSB, CTSB, granular) | Lean concrete subbase mandatory for >10 MCESA |
| Block paving | Not covered in Vol II | Covered (Chapter 7, up to 5 MCESA) |
| Cobblestone | Not covered in Vol II | Covered (Chapter 8, < 2 MCESA) |
| CRCP min steel | Not specified as percentage | 0.62% longitudinal (Kenya-specific) |
| Construction guidance | Chapter 6 construction notes | Detailed construction chapters |

**Note:** Uganda's MoWT does not include a comprehensive rigid pavement design manual. ERA Vol II and Kenya RDM 3.5 are the primary East African references for rigid pavement design.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 1: Confirm rigid pavement is appropriate
  |-- Is traffic sufficiently high (typically T5+) to justify concrete?
  |-- Is life-cycle cost analysis favourable vs flexible pavement?
  |-- Are materials available (cement, aggregates, steel)?
  |-- Is construction capability available (concrete paving experience)?
  +-- If NO to multiple criteria: consider flexible pavement (Skill #21)

Step 2: Determine design inputs
  |-- Traffic class (T1-T8) from Skill #21 Ethiopia module (same traffic input)
  |-- Subgrade class (S1-S5) from Skill #10 Ethiopia module
  |-- Concrete flexural strength (from available aggregates and mix design)
  +-- Shoulder type (tied concrete or untied/asphalt)

Step 3: Select pavement type (Chapter 5)
  |-- T3-T6 traffic, standard construction: JUCP (simplest)
  |-- T5-T8 traffic, reduced maintenance desired: JRCP
  |-- T7-T8 traffic, expressway/highest class: CRCP
  +-- Consider Ethiopian construction capability

Step 4: Select foundation (Appendix A)
  |-- Determine subbase type from traffic and subgrade:
  |     |-- T1-T3: granular subbase may be adequate
  |     |-- T3-T5: cement-treated subbase (CTSB)
  |     +-- T5-T8: lean concrete subbase (LCSB) required
  |-- Determine capping requirement:
  |     |-- S1-S2 subgrade: capping layer (GC) required
  |     +-- S3-S5 subgrade: no capping (subgrade adequate)

Step 5: Determine slab thickness (Chapter 6)
  |-- Select appropriate design chart:
  |     |-- JUCP with tied shoulders: Figure 6-2a
  |     |-- JUCP without tied shoulders: Figure 6-2b
  |     |-- JRCP with tied shoulders: Figure 6-3
  |     |-- JRCP without tied shoulders: Figure 6-4
  |     +-- CRCP with tied shoulders: Figure 6-5
  |-- Enter chart at design traffic (ESA millions)
  |-- Read slab thickness for specified concrete flexural strength
  +-- Round up to nearest 25 mm

Step 6: Design joints (Chapter 4)
  |-- Specify joint spacing, dowel bars, tie bars
  |-- Specify sealant type
  |-- Specify sawcut timing and depth
  +-- Detail expansion joints at structures

Step 7: Verify and produce output
  |-- Check slab thickness within practical range (150-300 mm)
  |-- Check foundation is adequate for subgrade and traffic
  |-- Cross-reference traffic class with flexible pavement design (Skill #21)
  +-- Produce pavement cross-section with all layer details
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Concrete paving in Ethiopia is growing but still limited.** Most Ethiopian road construction experience is with flexible pavements. Rigid pavements require specialist contractors with concrete batching, placing, and finishing capability. For major projects, this capability exists (typically international contractors). For lower-class roads, flexible pavements are more practical.

**Ethiopian highlands experience large diurnal temperature ranges.** Addis Ababa and highland routes (2,000-3,000+ m altitude) can experience 20-25 C temperature differentials between day and night. This creates significant curl stresses in concrete slabs and must be accounted for in design (ERA Chapter 3).

**Cement is produced domestically in Ethiopia.** Multiple cement plants (Derba Midroc, Dangote, Habesha, National) provide adequate supply for major projects. This makes concrete pavements more viable than in countries where cement must be imported.

**Tied concrete shoulders significantly reduce slab thickness.** ERA Figures 6-2a vs 6-2b show 25-50 mm thickness reduction with tied shoulders. For trunk roads where shoulder construction is feasible, tied shoulders provide substantial savings over the pavement life.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Using flexible pavement traffic classes without converting to rigid pavement design traffic.** The traffic class (T1-T8) is the same, but ensure ESA is calculated with n = 4.5 per ERA Equation 2.4.
2. **Selecting CRCP without confirming specialist construction capability.** CRCP requires continuous steel placement and experienced concrete paving crews. Verify contractor capability before specifying.
3. **Not specifying lean concrete subbase for high-traffic rigid pavements.** ERA Appendix A requires LCSB for traffic > T5. Granular subbase alone is inadequate for high-traffic concrete pavements.
4. **Ignoring temperature effects in Ethiopian highlands.** Large diurnal temperature ranges increase curl stresses. The design charts account for this, but construction practices (curing, sawcutting timing) are also critical.
5. **Reading the wrong design chart (e.g., using Figure 6-3 for JUCP).** Each figure corresponds to a specific pavement type and shoulder condition. Verify the correct chart before reading thickness.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Concrete flexural strength | 4.5 MPa | Not specified | ASSUMED: 4.5 MPa flexural strength (28-day, third-point loading). | Mid-range for Ethiopian conditions |
| Pavement type | JUCP | Not specified | DEFAULT: JUCP selected as most practical for Ethiopian construction capability. | Simplest rigid pavement type |
| Shoulder type | Without tied shoulders | Not specified | ASSUMED: No tied concrete shoulders. Use Figure 6-2b (JUCP) or 6-4 (JRCP). | Conservative -- tied shoulders reduce thickness |
| Subbase type | LCSB (150 mm) | Traffic > T5 | STANDARD: Lean concrete subbase per ERA Appendix A for traffic > T5. | ERA Appendix A requirement |
| Damage exponent | n = 4.5 | All ERA projects | STANDARD: ERA Equation 2.4. | Shared with flexible pavement design |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Slab thickness | 150 | 300 | mm | ERA Chapter 6 | Warn if < 150 mm (below practical minimum); reject if > 300 mm (redesign needed) |
| Flexural strength | 3.5 | 5.5 | MPa | ERA Chapter 2 | Warn if outside typical range |
| Joint spacing (JUCP) | 4.0 | 6.5 | m | ERA Chapter 4 | Reject if outside specified range |
| Dowel diameter | 25 | 40 | mm | ERA Chapter 4 | Warn if non-standard |
| Design ESA | 100,000 | 30,000,000 | ESAs | ERA Table 2-8 | Same limits as flexible pavement |

### M.5.2 Standards Compliance Checks

- **Check:** Pavement type (JUCP/JRCP/CRCP) appropriate for traffic level per Chapter 5
- **Check:** Correct design chart used (Figure 6-2 to 6-5) for pavement type and shoulder condition
- **Check:** Foundation meets Appendix A requirements for traffic and subgrade
- **Check:** Joint design complete with dowels, tie bars, sealant per Chapter 4
- **Check:** ESA calculated with n = 4.5 per ERA Equation 2.4
- **Check:** Concrete strength specified and achievable with available materials

### M.5.3 Departures / Relaxations Process

Any departure from ERA Vol II rigid pavement design (e.g., using thinner slab than charts indicate, non-standard joint spacing) requires written approval through ERA's Quality Assurance, Road Inspection and Safety Directorate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Traffic > 30M ESA (T8 limit) | ERA charts extend to T8 only | SENIOR REVIEW -- Extrapolation beyond T8 requires specialist analysis. Consider CRCP with maximum slab thickness. |
| Subgrade S1 (CBR 2-4%) | Very weak foundation | SENIOR REVIEW -- Thick capping layer required. Consider ground improvement or alternative alignment. |
| CRCP specified | High construction complexity | NOTE -- Confirm specialist contractor availability and steel supply chain. |
| No tied shoulders on DC1-DC2 road | Thicker slab required | NOTE -- Tied concrete shoulders would reduce slab thickness by 25-50 mm. Consider cost-benefit. |
| Highland route (>2500 m altitude) | High temperature differentials | NOTE -- Verify construction timing (avoid placing concrete during extreme temperature differentials). Early sawcutting critical. |

---

## M.7 Worked Example -- Ethiopia

### Example: DC2 Trunk Road, Addis Ababa Ring Road Extension

**Given:**
- DC2 trunk road, Addis Ababa ring road extension (urban trunk)
- Design traffic: 22M ESA over 20-year design period (T8, calculated with n = 4.5)
- Design CBR: 10% (S3 subgrade from Skill #10 Ethiopia module)
- Concrete flexural strength: 4.5 MPa (from mix design with local basalt aggregate)
- Tied concrete shoulders feasible (urban road with full cross-section)
- Cement available from Derba Midroc plant (50 km from site)

**Solution:**

**Step 1 -- Confirm rigid pavement appropriate:**
- T8 traffic (22M ESA): high -- rigid pavement justified
- Urban route: concrete preferred for durability and utility access
- Materials available: cement, basalt aggregate, steel
- Construction capability: international contractor engaged

**Step 2 -- Select pavement type (Chapter 5):**
- T8 traffic, urban trunk road, long design life desired
- JUCP: adequate but high joint maintenance burden in urban setting
- JRCP: wider joint spacing reduces maintenance, steel available
- Select **JRCP** -- fewer joints reduce urban disruption for maintenance

**Step 3 -- Select foundation (Appendix A):**
- Traffic T8: lean concrete subbase (LCSB) required
- Subgrade S3 (CBR 10%): no capping required

Foundation:
- LCSB: 150 mm lean concrete (7-day UCS 3.5-10 MPa)
- No capping layer (S3 adequate)

**Step 4 -- Determine slab thickness (Figure 6-3: JRCP with tied shoulders):**
- Design traffic: 22M ESA
- Flexural strength: 4.5 MPa
- From Figure 6-3: slab thickness approximately **250 mm**

**Step 5 -- Joint design (Chapter 4):**
- Transverse contraction joints: 10 m spacing (JRCP allows wider spacing)
- Dowel bars: 32 mm diameter, 450 mm long, 300 mm spacing
- Longitudinal joints: 3.75 m (lane width)
- Tie bars: 16 mm deformed, 700 mm long, 750 mm spacing
- Joint sealant: silicone (urban environment, durability preferred)
- Sawcut: 80 mm depth (1/3 of 250 mm slab)

**Step 6 -- Reinforcement (JRCP):**
- Distributed mesh reinforcement to hold cracks tight between joints
- Steel area per ERA Chapter 5 guidance for 10 m joint spacing

**Step 7 -- Complete pavement structure:**

| Layer | Material | Thickness |
|-------|----------|-----------|
| Slab | JRCP concrete (4.5 MPa flexural) | 250 mm |
| Subbase | Lean concrete (LCSB) | 150 mm |
| Capping | Not required (S3 subgrade) | -- |
| **Total** | | **400 mm** |

**Validation:**
- Slab thickness 250 mm within range (150-300 mm)
- JRCP appropriate for T8 traffic per Chapter 5
- LCSB per Appendix A requirement for T8 traffic
- Joint design per Chapter 4 specifications
- Figure 6-3 correct for JRCP with tied shoulders
- ESA calculated with n = 4.5

**Result:** JRCP pavement with 250 mm reinforced concrete slab on 150 mm lean concrete subbase. 10 m joint spacing with 32 mm dowels. Tied concrete shoulders. Total depth 400 mm.

> **All outputs are preliminary/screening level.** Verify slab thickness against ERA Pavement Vol II Figure 6-3 design chart and confirm concrete mix design with trial mixes.

> Cross-reference: See Skill #21 Ethiopia module for traffic class (T8) determination. The same T1-T8 classification applies for both flexible and rigid pavement design.

---

## M.8 References

1. Ethiopian Roads Authority, *Pavement Design Manual Volume II: Rigid Pavements*, 2013, Chapters 1-6, Appendix A.
2. Ethiopian Roads Authority, *Flexible Pavement Design Manual Volume I*, 2013, Chapter 2 (Traffic) and Chapter 3 (Subgrade).
3. AASHTO, *Guide for Design of Pavement Structures*, 1993 (referenced approach for rigid pavement design).
4. TRL, *Overseas Road Note 31*, 1993 (heritage method).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- ERA Vol II rigid pavement design with JUCP/JRCP/CRCP, design charts Figures 6-2 to 6-5, foundation requirements, joint design, cross-country comparison |
