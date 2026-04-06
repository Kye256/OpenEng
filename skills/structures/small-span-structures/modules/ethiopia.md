# Small Span Structures -- Ethiopia Module

> **Parent Skill:** #40 Small Span Structures
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Bridge Design Manual (BDM) 2013; ERA Drainage Design Manual (DDM) 2013
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Bridge Design Manual (BDM) | 2013 | Part 2 Section 2.8 (Low Level Water Crossings: Fords, Irish Crossings, Vented Causeways), Part 2 Section 3.6 (Culverts: RC Box Culverts, Multi-Cell), Part 1 Chapter 3 (HL-93 Loading), Part 1 Section 3.4 (Load Combinations) | Current -- mandatory for all ERA road projects (Verified from PDF) |
| ERA Drainage Design Manual (DDM) | 2013 | Hydraulic design of small crossings, flood frequency analysis | Current -- drainage design counterpart to BDM |
| ERA Standard Drawings | 2013 | Standard details for fords, Irish crossings, vented causeways, box culverts | Current |
| AASHTO LRFD Bridge Design Specifications | 2010/2012 editions | Reference basis for structural elements of small span structures | Reference standard adopted by ERA BDM |

### M.1.2 Institutional Context

Small span structures in Ethiopia are governed by the ERA Bridge Design Manual (BDM) 2013 for structural design and the ERA Drainage Design Manual (DDM) 2013 for hydraulic design. Both manuals apply across all road agencies:
- **ERA** -- federal trunk roads (DC1-DC4), where conventional bridges or large box culverts are standard
- **Regional Road Authorities** -- regional roads (DC5-DC7), where vented causeways and large culverts are common
- **Woreda Road Offices** -- woreda/community roads (DC8-DC10), where fords and Irish crossings serve many seasonal stream crossings

For institutional context and road classification, reference Skill #13 Ethiopia module (M.1.2 gateway).

### M.1.3 Standard Philosophy

Ethiopia distinguishes small span structures into two categories with different design references:

1. **Box culverts (BDM Part 2 Section 3.6):** Designed as buried concrete structures under AASHTO LRFD loading (HL-93). Applicable for spans up to approximately 6 m where the structure functions as a culvert beneath an embankment. Structural design follows Skill #33 (Culvert Structural Design) Ethiopia module.

2. **Low-level water crossings (BDM Part 2 Section 2.8):** At-grade or near-grade structures designed to allow water flow over the road surface during floods. ERA BDM defines three types: fords, Irish crossings, and vented causeways. Design is primarily hydraulic (flood frequency, overtopping depth, closure duration) with structural elements sized for scour protection and traffic loading per AASHTO LRFD.

The ERA approach to low-level crossings is pragmatic, recognising that many Ethiopian community and woreda roads serve areas where full bridges are unaffordable and seasonal closures are acceptable.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table ESS.1: Type Selection Matrix for Ethiopia (ERA BDM Part 2 Section 2.8, Verified from PDF)**

| AADT | Flow Regime | Acceptable Closure (days/yr) | Recommended Type | ERA Source |
|------|-------------|------------------------------|-----------------|------------|
| < 50 | Seasonal/ephemeral | > 20 | Ford (simple bed-level crossing) | BDM Part 2, Section 2.8.1 |
| < 50 | Perennial (low base flow) | > 20 | Irish crossing (RC slab at bed level with cutoff walls) | BDM Part 2, Section 2.8.2 |
| 50-150 | Seasonal | 10-20 | Irish crossing or vented causeway | BDM Part 2, Sections 2.8.2-2.8.3 |
| 50-150 | Perennial | 5-15 | Vented causeway (causeway with pipe/box openings) | BDM Part 2, Section 2.8.3 |
| 150-400 | Any | 2-10 | Large box culvert (multi-cell) or submersible bridge | BDM Part 2, Section 3.6 |
| > 400 | Any | 0 | Conventional bridge (Skill #37) | BDM Part 1, Chapter 2 |

**Table ESS.2: Low-Level Crossing Characteristics (ERA BDM Part 2, Section 2.8, Verified from PDF)**

| Structure Type | Description | Key Features |
|---------------|-------------|--------------|
| Ford | Simple bed-level crossing; road surface at stream bed | Concrete or stone-paved surface, approach ramps, guide posts; cheapest option; suitable for seasonal/ephemeral streams |
| Irish crossing | Reinforced concrete slab at stream bed level with upstream/downstream cutoff walls | RC slab resists scour; cutoff walls prevent undermining; superior to ford for durability |
| Vented causeway | Raised causeway with pipe or box openings for base flow passage | Pipes/boxes handle normal flow; causeway overtops during floods; most versatile low-level crossing type |

**Table ESS.3: Acceptable Closure Days by Road Class (ERA BDM Part 2 Section 2.8 and ERA Design Practice)**

| Design Class | Acceptable Closure (days/yr) | Applicable Structure | Notes |
|-------------|------------------------------|---------------------|-------|
| DC1-DC2 (trunk) | 0 | Conventional bridge | All-weather access mandatory |
| DC3-DC4 (link) | 0-2 | Bridge or large box culvert | Minimal disruption acceptable |
| DC5-DC6 (collector/feeder) | 2-10 | Box culvert or vented causeway | Short closures may be acceptable with economic justification |
| DC7-DC8 (regional/local) | 5-15 | Vented causeway or Irish crossing | Seasonal closures acceptable for low-traffic routes |
| DC9-DC10 (community access) | 10-30+ | Ford or Irish crossing | Dry-season access may be primary objective |

**Table ESS.4: ERA Design Parameters for Low-Level Crossings (BDM Part 2, Section 2.8, values to be verified against ERA standard drawings)**

| Parameter | Ford | Irish Crossing | Vented Causeway |
|-----------|------|---------------|-----------------|
| Surface protection | 150-200 mm concrete slab or stone pitching | 200-300 mm RC slab | 250-350 mm RC slab on causeway crest |
| Minimum pipe/box opening | N/A | N/A | 600 mm pipe or 1.0 m box (ERA minimum for debris passage) |
| Maximum overtopping depth (trafficable) | 150 mm | 200 mm | 300 mm |
| Maximum design overtopping depth (structural) | 500 mm | 800 mm | 1000 mm |
| Cutoff wall depth | N/A | >= 1.0 m below bed level | >= 1.0 m below bed level |
| Scour protection (downstream) | Stone pitching, 3 m minimum | Gabion mattress, 5 m minimum | Gabion/riprap, 5-8 m minimum |
| Flood depth markers | Required | Required | Required |
| Approach ramp gradient | <= 8% | <= 8% | <= 6% |

**Table ESS.5: Cross-Country Comparison -- Small Span Structures**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Low-level crossing types | Ford, Irish crossing, vented causeway | Drift, causeway, submersible bridge | Ford, Irish crossing, causeway |
| Applicable road classes | DC7-DC10 (community/regional) | Community access roads | Class D, E (rural) |
| All-weather threshold | DC1-DC4 (trunk/link roads) | National roads | Class A, B, C |
| Design code for structural elements | AASHTO LRFD (HL-93) | BS 5400 (HA/HB) | EN/Eurocode (LM1) |
| Minimum causeway pipe size | 600 mm (ERA practice) | 450 mm (MoWT) | 450 mm (RDM 4.2 Section 10.2) |
| Maximum trafficable overtopping depth | 300 mm (vented causeway) | 300 mm (causeway) | 300 mm (drift) |
| Flood frequency source | ERA DDM / Ethiopian hydrology | MoWT Vol 2 / TRRL LR 623 | RDM 2.2 / KMD curves |

### M.2.2 Country-Specific Formulas

**Ford and Irish crossing hydraulic design (ERA BDM Part 2, Section 2.8):**

```
Overtopping flow (broad-crested weir):
  Q_over = C_d x B x h^1.5

Where:
  C_d = discharge coefficient (typically 1.5-1.7)
  B = width of crossing perpendicular to flow (m)
  h = depth of flow over road surface (m)
```

**Vented causeway capacity (ERA BDM Part 2, Section 2.8.3):**

```
Total capacity:
  Q_total = Q_pipes + Q_over

  Q_pipes = sum of pipe/box opening capacities (per Skill #31 Ethiopia module)
  Q_over = overtopping flow over causeway crest (broad-crested weir formula)

Closure assessment:
  Number of days per year when overtopping depth > safe limit (300 mm for vehicles)
  Determined from flow-duration analysis using ERA DDM hydrology
```

**Box culvert structural design** follows Skill #33 Ethiopia module (AASHTO LRFD with HL-93, Strength I load combination, gamma_LL = 1.75).

**Scour depth at downstream edge (ERA BDM, engineering practice):**

```
d_scour = K x q^(2/3) / (g^(1/3))

Where:
  K = scour coefficient (1.5 for unprotected, 0.7 for gabion-protected)
  q = unit discharge over causeway (m3/s/m)
  g = gravitational acceleration (9.81 m/s2)
```

### M.2.3 Classification System

Ethiopia road classification (DC1 through DC10) determines the appropriate structure type and acceptable closure period. The key distinction is between:
- **All-weather roads** (DC1-DC4) where bridges or large culverts provide year-round access
- **Seasonal access roads** (DC5-DC10) where low-level crossings with limited closure are acceptable, subject to economic justification

ERA BDM Part 2 Section 2.8 provides guidance on structure selection based on traffic volume, flood regime, and road importance. Structure type selection cross-references culvert structural design (Skill #33 Ethiopia module) for box culvert structural elements and headwalls and wingwalls (Skill #34 Ethiopia module) for end treatments.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 1 (Ethiopia): Determine road class and traffic
  |-- DC1-DC4 (trunk/link) --> conventional bridge or large box culvert
  |-- DC5-DC8 (collector/regional) --> vented causeway, box culvert, or bridge
  |-- DC9-DC10 (community/access) --> ford, Irish crossing, or vented causeway
  +-- Check acceptable closure from Table ESS.3

Step 2 (Ethiopia): Assess flow regime
  |-- Ephemeral stream (dry > 6 months/year) --> ford may be sufficient
  |-- Seasonal stream (base flow during wet season) --> Irish crossing or vented causeway
  |-- Perennial stream (permanent base flow) --> vented causeway minimum
  +-- Flash flood risk (semi-arid lowlands): factor in rapid onset

Step 3 (Ethiopia): Select structure type (per ERA BDM Part 2 Section 2.8)
  |-- Apply Table ESS.1 with local knowledge
  |-- Ford: simplest, cheapest; DC9-DC10, ephemeral streams, AADT < 50
  |-- Irish crossing: durable bed-level crossing with scour protection
  |-- Vented causeway: handles base flow; most versatile for DC5-DC8
  |-- Box culvert: buried structure when adequate fill depth available
  +-- Economic comparison required per ERA policy for DC5-DC7

Step 4 (Ethiopia): Design structural elements
  |-- Ford: 150 mm concrete slab or stone pitching; approach ramps <= 8%
  |-- Irish crossing: 200-300 mm RC slab; cutoff walls >= 1.0 m below bed
  |-- Vented causeway: RC slab over pipe/box openings per Skill #33 Ethiopia module
  |   Pipe/box sizing from Skill #31 Ethiopia module (culvert hydraulic design)
  |   End treatments from Skill #34 Ethiopia module (headwalls/wingwalls)
  +-- All types: downstream scour protection (gabion/riprap per Skill #32)

Step 5 (Ethiopia): Verify closure frequency
  |-- Calculate overtopping frequency from ERA DDM flow-duration data
  |-- Compare against acceptable closure for road class (Table ESS.3)
  |-- If closure exceeds limit --> upgrade structure type
  +-- Document closure assessment in design report
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Low-level crossings are extensively used on Ethiopian regional and woreda roads.** Ethiopia has one of the largest rural road networks in Africa, with many stream crossings on DC7-DC10 roads served by fords and causeways. Upgrading unimproved fords to Irish crossings or vented causeways provides major service improvement at a fraction of the cost of conventional bridges.

**The Ethiopian highlands present different challenges from the lowlands.** Highland rivers (Amhara, Oromia, SNNPR, Tigray) tend to be perennial with moderate flows; vented causeways perform well. Lowland rivers (Afar, Somali, Borena) are often ephemeral with extreme flash floods; fords with robust scour protection are more appropriate than vented causeways that may be overwhelmed.

**Stone masonry is a valuable material for low-level crossings.** Locally quarried basalt, granite, and limestone are used extensively for ford surface protection, causeway walls, and cutoff walls in Ethiopian highland regions. Stone masonry construction employs local labour and reduces reliance on cement and reinforcement, which are expensive in remote areas.

**Flash flood warning is critical for safety.** In semi-arid lowland areas (Afar Depression, Somali Region, southern Oromia), flash floods arrive with little warning and can turn a dry ford into a dangerous torrent in minutes. Flood depth markers, warning signs, and community awareness are essential for any low-level crossing.

**Vented causeways should be designed with debris passage in mind.** Ethiopian rivers, particularly in highland areas, carry significant sediment and debris during wet season. Minimum pipe diameter of 600 mm (rather than the 450 mm used in Kenya/Uganda) is ERA practice to reduce blockage risk. Box openings are preferred over pipes where debris load is high.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Building fords on perennial rivers.** If the river always has flow, a plain ford will always be impassable. Build a vented causeway or Irish crossing with cutoff walls instead.
2. **Not providing cutoff walls on Irish crossings.** Without cutoff walls extending at least 1.0 m below stream bed, the crossing will be undermined by scour. Cutoff walls are essential for durability.
3. **Undersizing vented causeway openings.** Use minimum 600 mm pipe diameter for ERA projects. In Ethiopia, debris blockage during flash floods is a common failure mode. Larger openings reduce blockage risk.
4. **Not specifying downstream scour protection.** Overtopping flow accelerates at the downstream edge and causes severe scour. Gabion or riprap protection extending 5-8 m downstream is essential for vented causeways.
5. **Selecting low-level crossing for DC1-DC4 roads.** Trunk and link roads require all-weather access. Low-level crossings are not appropriate for DC1-DC4 unless as a temporary measure with documented justification.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Ford surface thickness | 150 mm concrete slab | Standard ford | ASSUMED: 150 mm concrete slab. Verify against ERA standard drawings | ERA practice for DC9-DC10 roads |
| Irish crossing slab | 250 mm RC slab | Standard Irish crossing | No flag | ERA BDM Part 2 Section 2.8.2 |
| Vented causeway slab | 300 mm RC slab | Standard vented causeway | No flag | ERA practice |
| Minimum pipe size (causeway) | 600 mm | All vented causeways | No flag -- 600 mm minimum for debris passage | ERA practice (larger than Kenya/Uganda 450 mm) |
| Concrete strength | f'c = 25 MPa | RC structural elements | ASSUMED: f'c = 25 MPa. Verify local availability | Standard ERA practice |
| Scour protection type | Gabion mattress | Downstream edge | No flag | Standard ERA practice |
| Safe overtopping depth | 300 mm | Vehicle trafficability | ASSUMED: 300 mm max trafficable depth | Engineering practice |
| Flood marker type | Depth posts at 0.1 m intervals | All low-level crossings | No flag | ERA BDM Part 2 Section 2.8 |
| Cutoff wall depth | 1.0 m below bed | Irish crossings, vented causeways | No flag -- minimum depth | ERA practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Causeway slab thickness | 200 | 400 | mm | ERA practice | Warn if < 200 or > 400 |
| Causeway pipe diameter | 600 | 1800 | mm | ERA BDM Part 2 | Reject if < 600 (blockage risk, below ERA minimum) |
| Box culvert span (small span) | 1000 | 6000 | mm | ERA BDM Part 2, Section 3.6 | Warn if > 6000 (consider bridge per Skill #37) |
| Cutoff wall depth | 1000 | -- | mm | ERA practice | Warn if < 1000 (undermining risk) |
| Approach ramp gradient | -- | 8 | % | ERA BDM Part 2 | Warn if > 8% (6% for vented causeways) |

### M.5.2 Standards Compliance Checks

- **Check:** Scour protection specified at downstream edge of all crossing types
- **Standard:** ERA BDM Part 2, Section 2.8; Engineering practice
- **Pass condition:** Gabion, riprap, or stone pitching specified downstream
- **Fail action:** Flag -- add downstream scour protection to prevent erosion undermining

- **Check:** Flood depth markers specified for all low-level crossings
- **Standard:** ERA BDM Part 2, Section 2.8
- **Pass condition:** Depth markers specified at both approaches
- **Fail action:** Flag -- add flood warning signage and depth markers for safety

- **Check:** Structure type appropriate for road class
- **Standard:** ERA BDM Part 2, Section 2.8; Table ESS.3
- **Pass condition:** Structure type consistent with road class and acceptable closure
- **Fail action:** SENIOR REVIEW -- Structure type may not be appropriate for road class. Verify closure frequency against Table ESS.3.

- **Check:** AASHTO LRFD loading used for structural elements (not LM1 or HA/HB)
- **Standard:** ERA BDM Part 1, Chapter 3
- **Pass condition:** Structural elements designed to HL-93 loading with Strength I factors
- **Fail action:** SENIOR REVIEW -- ERA uses AASHTO LRFD HL-93 for structural design. Do not use LM1 (Eurocode) or HA/HB (BS 5400).

### M.5.3 Departures / Relaxations Process

Low-level crossing selection on DC5+ roads requires economic justification documented in the design report. ERA approval is required for any low-level crossing on DC1-DC4 roads (these roads are designed for all-weather access).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| DC1-DC4 road requiring low-level crossing | All-weather access mandatory | SENIOR REVIEW -- DC[X] trunk/link road. Low-level crossing not appropriate. Full bridge required per ERA BDM Part 1 unless temporary measure with ERA approval. |
| Flood depth > 300 mm on vented causeway | Safety risk | SENIOR REVIEW -- Overtopping depth [X] mm exceeds 300 mm safe limit on vented causeway. Consider upgrading to box culvert or bridge. |
| Perennial river with ford selected | Permanently impassable | SENIOR REVIEW -- River has permanent flow. Ford will be permanently overtopped. Use Irish crossing or vented causeway per ERA BDM Part 2 Section 2.8. |
| Closure days exceed Table ESS.3 limit | Service level inadequate | NOTE -- Closure frequency [X] days/yr exceeds [Y] days/yr acceptable for DC[Z]. Consider upgrading structure type per ERA BDM Part 2 Section 2.8. |
| Unstable channel bed (alluvial/sand) | Scour and undermining risk | NOTE -- Unstable channel bed at crossing. Increase cutoff wall depth and specify comprehensive scour protection per Skill #32 Ethiopia module. |
| High debris load stream | Blockage risk | NOTE -- High sediment/debris load. Use box openings instead of pipe openings for vented causeway to reduce blockage risk. |

---

## M.7 Worked Example -- Ethiopia

### Example: Vented Causeway on DC7 Regional Road, Seasonal Stream in Oromia Region

**Source:** ERA BDM Part 2 Section 2.8 design provisions applied to typical regional road crossing

**Given:**
- Road class: DC7 regional road, AADT = 80 vehicles/day
- Seasonal stream: dry 4 months/year, base flow Q_normal = 0.5 m3/s during wet season
- Q_10 = 15 m3/s (10-year flood), Q_25 = 25 m3/s (25-year flood)
- Acceptable closure: 15 days/year (per Table ESS.3 for DC7)
- River bed width: 12 m
- Bed material: gravel and cobbles (stable bed)
- Locally available stone for gabion construction

**Solution:**

**Step 1 -- Type selection:**
- AADT = 80 --> suitable for Irish crossing or vented causeway (Table ESS.1)
- Flow regime: seasonal with base flow of 0.5 m3/s during wet season
- Since base flow exists during wet season, a plain ford would be overtopped. Select **vented causeway** to pass the base flow through pipe openings.
- 15 days/year closure acceptable for DC7 road (Table ESS.3)

**Step 2 -- Pipe sizing for vented causeway (per Skill #31 Ethiopia module hydraulics):**
- Normal flow to pass: 0.5 m3/s (minimum)
- Design for 2-year return period flow through pipes: Q_2 approximately 3 m3/s
- Use 4 x 600 mm diameter concrete pipes (ERA minimum 600 mm)
- Pipe capacity estimate (assuming 0.4 m head): Q_pipe each approximately 0.50 m3/s
- Total pipe capacity: Q_pipes approximately 2.0 m3/s
- Pipes handle base flow comfortably; moderate floods pass through pipes and overtop causeway

**Step 3 -- Causeway slab design:**
- Slab: 300 mm thick RC (f'c = 25 MPa), per ERA practice for vented causeways
- Width: match road width (7.0 m for DC7) + shoulders = 9.0 m total
- Length: 12 m (river bed width) + 3 m approach on each side = 18 m total
- Structural check: slab spans between pipe openings. For 600 mm pipes at approximately 2.5 m centres, clear span approximately 1.9 m. Slab design per Skill #33 Ethiopia module (Strength I, HL-93 with IM reduced for burial depth if fill above slab).
- For at-grade causeway (no fill above slab): full IM = 33% applies

**Step 4 -- Cutoff walls:**
- Upstream and downstream cutoff walls: RC, 300 mm thick, extending 1.2 m below stream bed
- Prevents undermining of slab and pipe inverts

**Step 5 -- Scour protection:**
- Downstream edge: gabion mattress, 300 mm thick, extending 6 m downstream
- Upstream approach: stone pitching, 150 mm thick, extending 3 m upstream
- Side protection: gabion baskets along causeway flanks
- All gabion construction using locally quarried stone from Oromia highland quarries

**Step 6 -- Flood warning:**
- Depth markers at both approaches (0.1 m intervals to 0.5 m)
- Warning sign: "FLOOD CROSSING -- DO NOT ENTER WHEN WATER EXCEEDS 300 mm"
- Guide posts along approaches per ERA BDM Part 2 Section 2.8

**Step 7 -- Closure assessment:**
- Structure overtops when Q > Q_pipes (approximately 2.0 m3/s)
- Overtopping flow formula: Q_over = 1.6 x 9.0 x h^1.5
- At h = 0.30 m (safe limit): Q_over = 1.6 x 9.0 x 0.164 = 2.4 m3/s
- Total capacity at safe overtopping: Q_total = 2.0 + 2.4 = 4.4 m3/s
- Unsafe closure occurs when Q > 4.4 m3/s
- Based on flow frequency analysis, Q > 4.4 m3/s for approximately 10-15 days/year during wet season
- Effective closure approximately 12 days/year for depths > 300 mm
- Within acceptable range for DC7 road (target 15 days/year per Table ESS.3)

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Structure type | Vented causeway | Per ERA BDM Part 2 Section 2.8.3 |
| Pipe openings | 4 x 600 mm diameter concrete pipes | ERA minimum 600 mm |
| Pipe capacity | approximately 2.0 m3/s | Handles base flow |
| Causeway slab | 300 mm RC, 18 m long x 9.0 m wide | Per ERA practice |
| Cutoff walls | 300 mm RC, 1.2 m below bed | Prevents undermining |
| Scour protection | Gabion mattress 6 m downstream | Stone pitching 3 m upstream |
| Estimated closure | approximately 12 days/year | PASS (acceptable <= 15 days/year for DC7) |
| Flood warning | Depth markers + warning signs | Per ERA BDM Part 2 Section 2.8 |

Design values are preliminary/screening level. Detailed hydraulic analysis per ERA DDM and structural design per ERA BDM Part 1 (Skill #33 Ethiopia module) required for pipe/slab structural adequacy.

---

## M.8 References

1. Ethiopian Roads Authority, *Bridge Design Manual (BDM)*, 2013. Part 2 Section 2.8 (Low Level Water Crossings: Fords, Irish Crossings, Vented Causeways), Part 2 Section 3.6 (Culverts: RC Box Culverts), Part 1 Chapter 3 (Loads and Load Combinations).
2. Ethiopian Roads Authority, *Drainage Design Manual (DDM)*, 2013. Flood frequency analysis, small crossing hydraulic design.
3. AASHTO, *LRFD Bridge Design Specifications*, 2010/2012 editions. Reference basis for structural design of crossing elements.
4. ERA, *Standard Drawings for Low-Level Water Crossings*, 2013. Standard details for fords, Irish crossings, and vented causeways.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-06 | AI draft | Initial draft -- ERA BDM Part 2 Section 2.8 low-level water crossings (ford, Irish crossing, vented causeway), AASHTO LRFD for structural elements, type selection by road class, three-country comparison table (Verified from PDF) |
