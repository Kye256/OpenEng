# Bridge Site Selection -- Ethiopia Module

> **Parent Skill:** #35 Bridge Site Selection
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Bridge Design Manual (BDM) 2013, Part 1 Chapter 2; Part 2 Chapter 1
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Bridge Design Manual (BDM) Part 1 | 2013 | Ch 2: General Design and Location Features (Sections 2.1-2.6) | Current (mandatory) |
| ERA Bridge Design Manual (BDM) Part 2 | 2013 | Ch 1: Planning Stage / Feasibility Study / Site Investigation (Sections 1.1-1.5) | Current (mandatory) |
| ERA Geometric Design Manual | 2013 | Chapter 2 (Design Standards) -- road classification, design speed | Current (cross-reference) |
| ERA Drainage Design Manual (DDM) | 2013 | Hydrology chapters -- design flood estimation for bridge waterway | Current (cross-reference) |

### M.1.2 Institutional Context

Ethiopia's road network is managed under the federal and regional government structure:

- **ERA (Ethiopian Roads Authority):** Federal trunk and link roads (Design Classes DC5-DC8). ERA approves bridge designs on the federal road network.
- **Regional Roads Authorities (RRA):** Regional roads (DC3-DC4). Each of the 11 regional states has an RRA responsible for regional road bridges.
- **Woreda (District) Roads Offices:** Local roads (DC1-DC2). Typically smaller crossings, culverts, and low-level structures.

ERA BDM 2013 is mandatory for all federal road projects. Regional and Woreda roads authorities are expected to follow ERA standards where applicable.

### M.1.3 Standard Philosophy

ERA BDM 2013 follows AASHTO LRFD design philosophy. Bridge site selection integrates alignment (geometric design), hydraulics (flood and scour), geotechnical conditions, and environmental considerations. Part 1 Chapter 2 sets out general design and location features including clearances and site arrangement. Part 2 Chapter 1 provides the planning-stage framework covering feasibility study, desk study, field reconnaissance, and site investigation requirements.

**Key distinction from Kenya and Uganda:** ERA uses AASHTO LRFD terminology and importance classification (Critical/Essential/Other), not the Eurocode Consequence Classes (CC1-CC3) used in Kenya's RDM 4.2 or the simpler BS 5400-based classification in Uganda's MoWT Vol 4.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table EBS.1: ERA Bridge Site Selection Criteria (BDM Part 1 Section 2.3, Verified from PDF)**

| Consideration | ERA Requirements | Source |
|--------------|-----------------|--------|
| Alignment | Bridge should be on a straight reach where possible; skew angle minimised; approach grades limited per ERA GDM | BDM Part 1 Section 2.3 |
| Hydraulic | Normal crossing of waterway preferred; adequate waterway opening for design flood; minimal afflux upstream | BDM Part 1 Section 2.6 |
| Foundation | Adequate bearing stratum within reasonable depth; avoid sites with deep alluvium, expansive clay, or collapsible soils where alternatives exist | BDM Part 2 Section 1.4 |
| Environmental | Minimise disturbance to environmentally sensitive areas; consider sediment transport and aquatic habitat | BDM Part 1 Section 2.3 |
| Construction access | Availability of construction materials (aggregate, water); access road feasibility; temporary works considerations | BDM Part 2 Section 1.3 |

**Table EBS.2: Site Investigation Requirements by Bridge Type (BDM Part 2 Sections 1.3-1.5, Verified from PDF)**

| Investigation Stage | Scope | Applicable Bridge Types |
|--------------------|-------|------------------------|
| Desk study | Existing maps (1:50,000 topographic), geological maps, aerial photos, previous investigation data, river gauge records | All bridges |
| Field reconnaissance | Visual site assessment, river morphology, high flood marks, existing structures condition, foundation exposure mapping | All bridges |
| Preliminary investigation | Trial pits (2-3m depth), hand auger boreholes, basic soil classification | Short span (< 15m) on known geology |
| Detailed investigation | Machine boreholes to competent stratum or 1.5x foundation width below founding level, SPT at 1.5m intervals, lab testing (classification, strength, consolidation) | All bridges > 15m span; all bridges on unknown/poor geology |
| Special investigation | Geophysics (seismic refraction, resistivity), deep boreholes (> 30m), in-situ testing (CPT, pressuremeter), rock coring | Major river crossings, pile foundations, complex geology |

**Table EBS.3: Minimum Clearances (BDM Part 1 Section 2.3, Verified from PDF)**

| Clearance Type | ERA Minimum | Notes |
|---------------|------------|-------|
| Vertical clearance over roadways | 5.1 m | From road surface to lowest bridge member |
| Freeboard over design flood level | 1.5 m (minimum) | For trunk roads DC5-DC8; may be reduced for low-volume roads with ERA approval |
| Horizontal clearance to piers (roadway bridges) | Per ERA GDM shoulder + safety zone | Minimum shy distance from edge of travelled way |
| Navigation clearance | As required by Ethiopian Inland Waterways Authority | Applicable to navigable rivers (e.g., Lake Tana) |

**Table EBS.4: Bridge Importance Categories (BDM Part 1 Section 3.10.3, Verified from PDF)**

| Importance Category | Criteria | Seismic Design Impact |
|--------------------|---------|----------------------|
| Critical | Bridges that must remain open after a design earthquake; lifeline routes; bridges whose failure would cause catastrophe (major river with no alternative crossing, strategic military routes) | Highest seismic design level; Importance Factor multiplied to acceleration coefficient |
| Essential | Bridges on trunk/link roads (DC5-DC8) carrying significant traffic; bridges serving as primary access to hospitals, airports, power plants | Standard seismic design; Importance Factor applied |
| Other | Bridges on lower-class roads (DC1-DC4) where alternative routes exist within reasonable detour distance | Minimum seismic design provisions |

**Table EBS.5: Cross-Country Comparison -- Bridge Site Selection**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Site selection standard | BDM Part 1 Ch 2, Part 2 Ch 1 | MoWT Vol 4 Section 2 | RDM 4.2 Ch 2 |
| Code basis | AASHTO LRFD | BS 5400 | EN/Eurocode |
| Site investigation depth | ERA-specified by bridge type and span (Table EBS.2) | MoWT minimum requirements | RDM 4.2 Section 2.5, RDM 4.1 |
| Importance classification | Critical / Essential / Other (AASHTO) | Not explicitly classified | Consequence Class CC1-CC3 (Eurocode) |
| Design working life | 75 years (standard bridges) | 120 years (BS 5400 tradition) | 100 years (EN 1990, Table 2.1) |
| Seismic consideration at site selection | Yes -- importance category feeds seismic zone design (4 zones, A up to 0.18g) | Minimal -- low seismicity nationwide | Yes -- 3 seismic zones (EN 1998) |

---

## M.3 Decision Logic

### M.3.1 Bridge Site Selection Process

```
START: Bridge crossing required
  |
  v
1. DESK STUDY
   - Obtain 1:50,000 topographic maps and geological maps
   - Review ERA road network data and existing bridge inventory
   - Identify candidate crossing locations from geometric alignment
   - Obtain river gauge records (if available from Ministry of Water, Irrigation and Energy)
   |
   v
2. FIELD RECONNAISSANCE
   - Visit candidate sites; assess river morphology, bank stability, flood marks
   - Identify potential foundation conditions (rock outcrops, alluvium depth)
   - Note environmental constraints (wetlands, protected areas, settlements)
   - Assess construction access and material availability
   |
   v
3. SELECT PREFERRED SITE
   - Score candidates on: alignment, hydraulics, foundation, environment, cost
   - Minimise skew angle (< 20 degrees preferred; > 30 degrees requires escalation)
   - Confirm adequate waterway opening is feasible
   |
   v
4. ASSIGN IMPORTANCE CATEGORY (per BDM Section 3.10.3)
   - IF lifeline route or catastrophic failure consequence -> Critical
   - IF trunk/link road DC5-DC8 with significant traffic -> Essential
   - IF lower-class road with alternative routes -> Other
   |
   v
5. DETERMINE INVESTIGATION SCOPE (per Table EBS.2)
   - Match investigation level to bridge type, span, and geology
   |
   v
OUTPUT: Site selection report with importance category
```

**Pipeline cross-reference:** Bridge site selection (this module) feeds bridge loading (Skill #36 Ethiopia module) -- the selected importance category determines the seismic design level and the return period for hydraulic design. The site investigation data feeds bridge substructure design (Skill #38 Ethiopia module) for foundation type selection.

---

## M.4 Defaults & Assumptions

When site-specific data is unavailable, the agent uses these defaults and flags them clearly:

| Parameter | Default Value | Flag |
|-----------|--------------|------|
| Importance category | Essential | Verify against ERA importance criteria (Table EBS.4); classify as Critical if lifeline route or major river with no alternative crossing |
| Freeboard | 1.5 m above design flood level | Verify for specific site; debris-laden rivers may require more |
| Investigation depth | Detailed investigation (machine boreholes) | Minimum for trunk road bridges; reduce only for short-span bridges on known rock |
| Design flood return period | 100-year for trunk roads (DC5-DC8) | Per ERA DDM 2013; verify from hydrology module (Skill #29 Ethiopia module) |

All outputs are preliminary/screening level. Always state this.

---

## M.5 Validation Rules

| Check | Rule | Action if Failed |
|-------|------|-----------------|
| Investigation scope | Investigation level matches bridge type per Table EBS.2 | Increase investigation scope; flag under-investigated sites |
| Importance category | Category correctly assigned per Table EBS.4 criteria | Re-assess; incorrect category affects all downstream seismic and hydraulic design |
| Clearances | Vertical and horizontal clearances meet ERA minimums (Table EBS.3) | Adjust bridge profile or span arrangement |
| Skew angle | Skew < 30 degrees | If > 30 degrees, escalate for specialist analysis |
| Foundation feasibility | Competent bearing stratum identified within reasonable depth | If not, consider pile foundations or alternative site |

---

## M.6 Escalation Triggers

The following conditions require senior engineer review and may need specialist input:

| Trigger | Reason | Specialist Required |
|---------|--------|-------------------|
| Site on active fault (Rift Valley) | Seismic hazard may exceed Zone 4 provisions; fault rupture potential | Seismologist / geotechnical engineer |
| Major river crossing > 100 m | Complex hydraulics, deep foundations, significant scour potential | Hydraulic engineer / bridge specialist |
| Navigable waterway | Navigation clearance requirements from Ethiopian Inland Waterways Authority | Navigation authority consultation |
| Environmental protected area | Environmental Impact Assessment required; may constrain site selection | Environmental specialist |
| Complex geology (karst, expansive clay, volcanic deposits) | Foundation design uncertainty; potential for differential settlement or ground collapse | Geotechnical specialist |
| Skew angle > 30 degrees | Non-standard load distribution; complex detailing | Bridge design specialist |

---

## M.7 Worked Example

### Bridge Site Selection for DC7 Trunk Road Crossing of Blue Nile Tributary, Amhara Region

**Project context:** A DC7 trunk road requires a new bridge crossing over a perennial tributary of the Blue Nile (Abay) River in the Amhara Region, approximately 40 km northwest of Bahir Dar. Design AADT = 3,500 vpd.

**Step 1: Desk study**
- 1:50,000 topographic map shows the river valley is approximately 80 m wide at the crossing zone with steep basalt cliffs on the eastern bank and a floodplain terrace on the western bank.
- Geological map indicates weathered to fresh basalt bedrock, overlain by alluvial deposits of variable thickness (3-8 m estimated).
- No river gauge at the site; nearest gauge is 25 km downstream. Flood estimation uses methods from hydrology module (Skill #29 Ethiopia module).

**Step 2: Field reconnaissance**
- Three candidate sites identified within a 500 m corridor along the road alignment.
- Site A: 60 m crossing, moderate skew (15 degrees), basalt outcrops visible on both banks.
- Site B: 70 m crossing, near-normal crossing (5 degrees skew), alluvial deposits on western bank (depth unknown).
- Site C: 55 m crossing, significant skew (35 degrees), rock on both banks but confined gorge section.

**Step 3: Preferred site selection**
- Site A selected: reasonable span, low skew, rock foundations likely on both banks.
- Site C rejected: skew > 30 degrees (escalation trigger).
- Site B retained as alternative if Site A investigation shows adverse conditions.

**Step 4: Importance category assignment**
- DC7 trunk road with AADT 3,500 vpd -> **Essential** (per Table EBS.4).
- Not a lifeline route (alternative crossing exists 45 km downstream) -> not Critical.
- Seismic zone check: Amhara Region (highlands) is typically Seismic Zone 1-2 (A <= 0.10). Verify from ERA seismic zone map Figure 3.10.2-1.

**Step 5: Investigation scope**
- Bridge span approximately 60 m (3-4 spans) -> Detailed investigation required (Table EBS.2).
- Scope: 4 machine boreholes (one at each abutment, two at pier locations), SPT at 1.5 m intervals, rock coring where basalt encountered, lab testing for classification and strength.

**Output:** Site selection report recommending Site A, Importance Category: Essential, Seismic Zone 2 (to be confirmed), with detailed investigation programme.

*Note: All values are preliminary/screening level. Verify all parameters against ERA BDM 2013 and site-specific data.*

---

## M.8 References

| Reference | Full Citation |
|-----------|-------------|
| ERA BDM Part 1 Ch 2 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1: Design*, 2013, Chapter 2: General Design and Location Features |
| ERA BDM Part 2 Ch 1 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 2: Design Process*, 2013, Chapter 1: Planning Stage / Feasibility Study / Site Investigation |
| ERA BDM Part 1 Section 3.10.3 | Ethiopian Roads Authority, *Bridge Design Manual -- Part 1*, 2013, Section 3.10.3: Importance Categories |
| ERA GDM | Ethiopian Roads Authority, *Geometric Design Manual*, 2013 |
| ERA DDM | Ethiopian Roads Authority, *Drainage Design Manual*, 2013 |
| AASHTO LRFD | AASHTO, *LRFD Bridge Design Specifications*, 2010/2012 (reference basis for ERA BDM) |
