---
name: "road-marking-design"
description: "Use when designing road markings -- selecting marking types (longitudinal, transverse, hazard, arrows), materials (thermoplastic, cold paint, raised profile), dimensions, colours, and placement for a given road class and speed. Requires road class and design speed from Skill #13 (Design Standards Selection) and junction layout from Skill #19 (Intersection Design). Compose with Skill #68 (Traffic Sign Design) for coordinated marking/signage and Skill #69 (Traffic Signal Design) for signalised intersection markings."
---

# Road Marking Design

> **Skill ID:** 67
> **Domain:** Traffic Management
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---
> **Country Modules:** Kenya

## Purpose

Design road markings including longitudinal (centre lines, edge lines, lane lines, barrier lines), transverse (stop lines, give way lines, pedestrian crossings), hazard markings (diagonal hatching, chevrons), directional arrows, junction markings, and road studs. This skill covers the marking specifications -- types, materials, dimensions, colours, placement, and retroreflectivity. It does NOT cover the geometric layout of junctions (Skill #19) or the geometric design of pedestrian crossings (Skill #20). Use traffic-flow-neutral terminology ("nearside"/"offside" not "left"/"right") where possible, except where a country module specifies traffic direction.

## When to Use This Skill

- **Use when:** Designing or specifying road markings for any road. Required for all sealed/paved roads. Use at midblock sections, junctions, pedestrian crossings, and special facilities (bus lanes, parking, toll plazas).
- **Do not use when:** Designing the geometric layout of intersections (Skill #19), geometric design of NMT crossings (Skill #20), or traffic signal timing (Skill #69). This skill provides marking specifications; upstream skills provide the geometry.
- **Prerequisite skills:** Skill #13 (Design Standards Selection) -- road class and design speed determine marking dimensions and material requirements. Skill #19 (Intersection Design) -- junction layout determines junction marking requirements.

---

## 1. Knowledge (Universal)

### 1.1 Marking Classification

Road markings are classified by their orientation and function:

**Longitudinal markings** -- lines running along the direction of travel:
- **Centre line:** Separates opposing traffic flows. Can be broken (overtaking permitted), continuous (no overtaking), or combined (restriction in one direction only). Typically yellow in many jurisdictions.
- **Edge line:** Delineates the edge of the carriageway. Continuous white line. Width typically 100-150 mm (standard roads) or 200 mm (expressways/high-speed roads).
- **Lane line:** Separates lanes travelling in the same direction. Broken white line.
- **Barrier line:** Continuous line prohibiting lane changing or overtaking. Used in combination with broken lines for combined line systems (CLS).

**Transverse markings** -- lines across the direction of travel:
- **Stop line:** Continuous white line 300-400 mm wide. Indicates where vehicles must stop at junctions, signals, or level crossings.
- **Give way line:** Broken white line (typically 500 mm marks with 500 mm gaps, 200-400 mm wide). Indicates where vehicles must yield.
- **No entry marking:** Combined continuous and broken lines with word message "NO ENTRY".
- **Pedestrian crossing:** Zebra bars (white rectangles, typically 500 mm wide with 500 mm gaps, 2.5-4.0 m long).

**Hazard markings:**
- **Diagonal hatching:** Parallel diagonal lines within a bounded area, warning of a hazard or separating traffic streams. White or yellow depending on jurisdiction.
- **Chevron marking:** V-shaped markings pointing in the direction of travel, used on traffic islands and gore areas.

**Arrows and word messages:**
- **Deflection arrows:** Warn of approaching restriction or change of direction. Length varies by speed (4.5 m at <=65 km/h, 6 m at 65-100 km/h, 9 m at >100 km/h).
- **Bifurcation arrows:** Guide vehicles at deceleration lane commencement.
- **Lane indication arrows:** Direct drivers to correct lane for turning movements (straight, left, right, or combinations).
- **Word messages:** STOP, SLOW, KEEP CLEAR, BUS LANE, SCHOOL -- elongated in the direction of travel for legibility.

**Junction markings** combine all the above at intersections. Refer to Skill #19 for geometric layout; this skill specifies the marking types and dimensions to be applied.

**Pedestrian and cycle markings:**
- **Pedestrian crossing bars:** White rectangular blocks (zebra pattern).
- **Cycle lane markings:** Separation lines, cycle symbols (BM08 type).
- For the geometric layout and location of crossings, see Skill #20 (NMT Facilities). This skill provides the marking specifications.

### 1.2 Marking Materials

| Material | Application | Typical Life | Retroreflectivity | Relative Cost | Best For |
|----------|------------|-------------|-------------------|--------------|----------|
| Hot-applied thermoplastic | Machine/hand applied, solidifies on cooling | 2-10 years | High (glass beads embedded) | Medium | Longitudinal markings, high-traffic areas |
| Solvent-based paint | Spray applied | 6-12 months | Moderate (surface beads) | Low | Temporary markings, low-traffic roads |
| Water-based paint | Spray applied | 6-12 months | Moderate (surface beads) | Low | Temporary markings, environmentally preferred |
| Cold-applied plastic | Brush/mechanical application | 3-5 years | High | Medium-High | Edge lines, coloured markings, raised profile |
| Preformed thermoplastic | Heat-applied pre-cut shapes | 2-5 years | High | High | Symbols, arrows, word messages |
| Preformed tape | Adhesive application | 3-6 months (limited) to 1 year (extended) | High | High | High-visibility locations, tunnels, school zones |
| Methyl methacrylate (MMA) | Two-part mixed application | 5-8 years | High | High | Heavy traffic, long-life requirement |

Reference `tables/marking_materials.json` for detailed material comparison data.

### 1.3 Colour Conventions

Colour usage varies by jurisdiction but follows general principles derived from the Vienna Convention and MUTCD:

- **White:** Lane delineation (lane lines, edge lines), transverse markings (stop lines, give way lines, pedestrian crossings), arrows. The most widely used marking colour.
- **Yellow:** Centre line marking separating opposing traffic flows (many jurisdictions). No-parking/restriction markings. Yellow box junction markings.
- **Blue:** Bus lanes, BRT corridors (some jurisdictions including Kenya).
- **Green:** Cycle lanes and NMT facilities at conflict points (some jurisdictions including Kenya).
- **Red:** Hazardous locations, conflict areas (some jurisdictions including Kenya).

**Important:** Specific colour assignments vary by country. Always verify against the applicable country module.

### 1.4 Marking Dimensions

Marking dimensions depend on road class, design speed, and whether the road is in a rural or urban context. Key parameters:

- **Line width:** Standard 100 mm (lower-category roads), 150 mm (higher-category roads), 200 mm (expressways). Stop lines typically 300-400 mm.
- **Mark and gap ratios (broken lines):** For centre lines and lane lines, the mark-to-gap ratio varies with speed. Higher speeds require longer marks and gaps for visibility at speed.
- **Distance between parallel lines:** For double continuous or combined lines, typically 100 mm gap between lines.

Reference `tables/marking_dimensions.json` for universal dimension lookup values.

### 1.5 Retroreflectivity

Road markings must be visible at night. Retroreflectivity is achieved by embedding glass beads in the marking material during application. Key concepts:

- **Glass bead application:** Beads are dropped onto wet marking material and partially embedded. They retroreflect vehicle headlight back to the driver.
- **Dry retroreflectivity:** Measured in mcd/m2/lux. Minimum thresholds depend on road speed: higher-speed roads require higher retroreflectivity.
- **Wet retroreflectivity:** Markings lose retroreflectivity when wet. Large beads (>=1 mm) protrude above the water film and maintain some visibility. Raised profile markings and road studs supplement wet-night visibility.
- **Thresholds:** Typical initial dry retroreflectivity 200-350 mcd/m2/lux depending on speed. Minimum threshold after 2 years typically 80-150 mcd/m2/lux.

### 1.6 Road Studs

Road studs are retro-reflective devices fixed to the road surface to supplement line markings, particularly at night and in wet conditions. Types include:

- **Non-reflective studs:** Raised markers without reflectors, used for tactile delineation.
- **Uni-directional studs:** One reflective face, used on one-way roads and slip roads.
- **Bi-directional studs:** Two reflective faces, used on two-way roads to delineate centre lines and edge lines.
- **Solar studs:** Battery-powered LED studs visible at distances >800 m. Used at hazardous locations (sharp curves, bridges, pedestrian crossings).

**Colour coding:**
- **White:** Lane line delineation.
- **Red:** Nearside edge (shoulder side) -- indicates a line that should not be crossed.
- **Yellow:** Centre line / median side on undivided roads, and offside edge on divided carriageways.
- **Green:** Crossable continuous lines (acceleration/deceleration lanes, lay-by entries).

**Spacing:** Typically 9-18 m depending on road type and section (normal vs no-overtaking). Closer spacing (9 m) in no-overtaking sections and at junctions.

Reference `tables/road_stud_spacing.json` for spacing lookup values.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Road class and design speed (from Skill #13)
  |-- Rural / urban / peri-urban context
  |-- Number of lanes and carriageway width
  |-- Junction layout if applicable (from Skill #19)
  +-- Load country module for standard-specific tables

Step 2: Determine longitudinal marking requirements
  |-- Centre line type (broken, continuous, combined) based on:
  |     |-- Road width (single carriageway vs dual)
  |     |-- Visibility distance vs critical value for road class
  |     +-- Number of lanes
  |-- Edge line type (continuous, broken at junctions)
  |-- Lane line type (broken for normal, continuous where lane change prohibited)
  +-- Width determined by road class and speed from country module

Step 3: Determine marking dimensions
  |-- Mark length, gap length, line width from country module tables
  |-- Rural vs urban dimension sets (higher speeds = longer marks/gaps)
  +-- Reference tables/marking_dimensions.json or country-specific table

Step 4: Select marking material
  |-- Based on traffic volume, required life, budget, climate
  |-- Thermoplastic for permanent high-traffic markings
  |-- Paint for temporary or low-traffic markings
  |-- Cold plastic for raised profile edge lines
  +-- Reference tables/marking_materials.json

Step 5: Determine transverse markings (if at junction or crossing)
  |-- Stop line or give way line based on junction control type
  |-- Pedestrian crossing bars if pedestrian crossing present
  |-- Arrow markings for lane allocation
  +-- Word messages (STOP, SLOW, etc.) where required

Step 6: Determine road stud requirements
  |-- Mandatory at: sharp curves, no-overtaking sections, junctions, expressways
  |-- Desirable on: Class A and B roads, high-speed roads
  |-- Select stud type, colour, and spacing from country module
  +-- Reference tables/road_stud_spacing.json

Step 7: Specify retroreflectivity requirements
  |-- Glass bead specification for marking material
  |-- Initial and threshold retroreflectivity values
  +-- Wet-night visibility provisions (raised profile, studs)

Step 8: Run validation (Section 6 + country module Section M.5)

Step 9: Produce output (Section 10)
```

---

## 3. Professional Judgment

**Material selection is a life-cycle decision.** Paint is cheaper initially but requires frequent reapplication (every 6-12 months). Thermoplastic costs more to apply but lasts 2-10 years. For high-traffic trunk roads, thermoplastic is almost always more economical over the road life. Paint should only be specified where marking is temporary or traffic volumes are very low.

**Retroreflectivity is a safety-critical specification.** Markings that cannot be seen at night provide no guidance to drivers. Always specify the retroreflectivity class and maintenance threshold, not just the marking type. Consider wet-night visibility -- in tropical climates with frequent heavy rain, raised profile markings and road studs are essential supplements to flat markings.

**Road studs are not optional on high-speed roads.** On roads with design speeds >=80 km/h, road studs are a critical night-time safety feature. Omitting them is a common cost-cutting measure with serious safety consequences.

**Marking maintenance is as important as initial design.** Specify maintenance thresholds (minimum retroreflectivity, maximum wear area) and inspection frequency. A well-designed marking scheme that is not maintained becomes ineffective.

---

## 4. Common Errors

1. **Confusing lane line with barrier line.** A broken lane line permits lane changing; a continuous barrier line prohibits it. Using the wrong type creates a safety hazard or unnecessary restriction.
2. **Inadequate retroreflectivity specification.** Specifying "thermoplastic" without requiring glass beads or minimum retroreflectivity values.
3. **Omitting road studs on high-speed roads.** Flat markings alone are inadequate for night-time delineation at >=80 km/h, especially in wet conditions.
4. **Not specifying marking material.** Defaulting to paint where thermoplastic is needed for durability on high-traffic roads.
5. **Wrong colour for centre line.** In jurisdictions using yellow centre lines, specifying white creates confusion about which is the centre and which is the edge.
6. **Stop line placed too far from junction.** The stop line must be close enough for the driver to see approaching traffic on the major road. Excessive setback reduces effectiveness.
7. **Inconsistent marking at junction approaches.** Centre line, edge line, and lane markings must transition smoothly through junctions. Abrupt termination confuses drivers.

---

## 5. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Centre line width | 100 mm | Standard road | WARNING ASSUMED: Centre line width 100 mm. Verify against applicable country standard. | Common default for lower-category roads |
| Edge line width | 100 mm | Standard road | WARNING ASSUMED: Edge line width 100 mm. Verify against applicable country standard. | Common default |
| Centre line mark/gap (rural) | 3 m / 9 m | Speed >=80 km/h | WARNING ASSUMED: Centre line 3 m mark / 9 m gap for rural high-speed. Verify against country standard. | Typical MUTCD-derived pattern |
| Centre line mark/gap (urban) | 2 m / 6 m | Speed <80 km/h | WARNING ASSUMED: Centre line 2 m mark / 6 m gap for urban. Verify against country standard. | Typical urban pattern |
| Stop line width | 400 mm | All junctions | WARNING ASSUMED: Stop line width 400 mm. | Widely used standard |
| Road stud spacing | 12 m | Normal section | WARNING ASSUMED: Road stud spacing 12 m (normal section). Verify against country standard. | Typical for two-way roads |
| Marking material | Thermoplastic | AADT > 1000 | WARNING ASSUMED: Thermoplastic marking for AADT > 1000. | Durability appropriate for moderate-high traffic |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **When in doubt about material, specify thermoplastic.** Over-specifying material is less risky than under-specifying.
3. **Always specify retroreflectivity.** Never assume a marking will be retroreflective without specifying glass bead application.

---

## 6. Validation (Universal)

### 6.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Centre line width | 100 | 200 | mm | Warn if outside range |
| Edge line width | 100 | 200 | mm | Warn if outside range |
| Stop line width | 300 | 500 | mm | Warn if <300 mm |
| Lane line mark length | 1.0 | 5.0 | m | Warn if outside typical range |
| Lane line gap length | 1.0 | 12.0 | m | Warn if outside typical range |
| Pedestrian crossing bar width | 400 | 600 | mm | Warn if outside range |
| Pedestrian crossing length | 2.0 | 6.0 | m | Warn if <2.0 m or >6.0 m |
| Road stud spacing | 6 | 24 | m | Reject if <6 m or >24 m |

### 6.2 Consistency Checks

- **Centre line type vs visibility distance:** If visibility distance is less than the critical value for the road class, a continuous or combined line must be used, not a broken line.
- **Marking material vs traffic volume:** Paint on roads with AADT >5000 will wear rapidly. Flag if paint specified on high-traffic roads.
- **Road stud colour vs marking colour:** White studs on lane lines, yellow on centre lines, red on nearside edge. Mismatch indicates an error.
- **Stop line position vs junction layout:** Stop line must be positioned relative to the visibility splay and signal head position from Skill #19.

### 6.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 7. Escalation (Universal)

### 7.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Non-standard marking type requested | May confuse road users | SENIOR REVIEW -- Non-standard marking [type] requested. Verify conformance with applicable standard. |
| Retroreflectivity below minimum threshold | Night-time safety risk | SENIOR REVIEW -- Retroreflectivity [value] mcd/m2/lux below minimum threshold [threshold]. Marking requires renewal. |
| High-speed road without road studs | Night-time delineation inadequate | SENIOR REVIEW -- Road with design speed [X] km/h has no road stud provision. Studs are required for night-time safety. |
| Complex junction marking conflict | Multiple marking types overlap | SENIOR REVIEW -- Conflicting marking requirements at junction [location]. Requires detailed marking plan review. |
| Marking on unsealed/gravel road | Markings not applicable to unsealed surfaces | NOTE -- Road markings require a sealed (paved) surface. Markings on gravel roads are not effective or durable. Road studs on approaches to junctions may be considered. |

### 7.2 Escalation Behaviour

- **Never suppress.** Continue working but flag prominently.
- **Country module escalations** (Section M.6) merge with these.

---

## 8. Interfaces

### 8.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Road class | category | -- | Yes | Skill #13 | Determines marking dimensions and requirements |
| Design speed | number | km/h | Yes | Skill #13 | Governs mark/gap ratios, stud spacing, material requirements |
| Number of lanes | number | -- | Yes | Skill #17 | Determines centre line, lane line, and edge line requirements |
| Carriageway width | number | m | Yes | Skill #17 | Determines line type applicability (e.g., CLS only if >5.5 m) |
| Junction layout | descriptive | -- | Conditional | Skill #19 | Required for junction marking design |
| Pedestrian crossing location | descriptive | -- | Conditional | Skill #20 | Required for pedestrian crossing marking |
| AADT | number | veh/day | Desirable | User/traffic data | Influences material selection |
| Country/jurisdiction | category | -- | Yes | User | Selects country module |

### 8.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Marking schedule | table | -- | User, Skill #61 | Complete list of markings with type, material, dimensions, colour |
| Road stud schedule | table | -- | User | Stud types, colours, spacing for each road section |
| Material specification | text | -- | User | Material type, retroreflectivity class, glass bead specification |
| Maintenance thresholds | table | -- | User | Minimum retroreflectivity and maximum wear for maintenance |

### 8.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `tables/marking_dimensions.json` | Universal marking dimensions by type | JSON |
| `tables/marking_materials.json` | Material comparison (life, cost, retroreflectivity) | JSON |
| `tables/road_stud_spacing.json` | Road stud spacing by road type | JSON |
| `tables/kenya_marking_dimensions.json` | Kenya RDM 6.1 marking dimensions | JSON |
| `tables/kenya_road_stud_colours.json` | Kenya RDM 6.1 road stud colour/spacing | JSON |
| `modules/kenya.md` | Kenya country module | Markdown |

---

## 9. Procedure

### Step 1: Confirm Design Inputs
Receive road class, design speed, number of lanes, carriageway width, and junction layout from prerequisite skills. Load country module.

### Step 2: Determine Longitudinal Markings
Select centre line, edge line, and lane line types based on road classification, width, and visibility criteria. Determine dimensions from country module tables.

### Step 3: Select Marking Material
Based on traffic volume, required service life, and budget. Specify glass bead application and retroreflectivity class.

### Step 4: Determine Transverse Markings (if applicable)
For junctions: stop line or give way line based on control type. For crossings: pedestrian crossing bars. For special facilities: bus lane, parking bay markings.

### Step 5: Determine Arrow and Word Markings (if applicable)
Lane indication arrows for multi-lane approaches. Word messages (STOP, SLOW) where required. Size based on approach speed.

### Step 6: Determine Road Stud Requirements
Select stud type, colour, and spacing. Mandatory at specific locations (curves, junctions, expressways). Desirable on all Class A and B roads.

### Step 7: Specify Retroreflectivity and Maintenance
Initial and threshold retroreflectivity values. Inspection frequency. Maintenance triggers.

### Step 8: Run Validation
All universal checks (Section 6) plus country-specific checks (country module Section M.5).

### Step 9: Produce Output

---

## 10. Output Format

```
============================================================
ROAD MARKING DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Road Class: [class]
Design Speed: [X] km/h
Context: [Rural / Urban]
Date: [YYYY-MM-DD]
============================================================

LONGITUDINAL MARKINGS
---------------------
Centre line:
  Type:           [Broken / Continuous / Combined]
  Colour:         [Yellow / White]
  Width:          [X] mm
  Mark length:    [X] m
  Gap length:     [X] m
  Code ref:       [LM01 / LM02 / etc.]

Edge line:
  Type:           [Continuous]
  Colour:         [White]
  Width:          [X] mm
  Code ref:       [LM26 / LM27 / etc.]

Lane line:
  Type:           [Broken]
  Colour:         [White]
  Width:          [X] mm
  Mark length:    [X] m
  Gap length:     [X] m
  Code ref:       [LM03 / LM04 / etc.]

TRANSVERSE MARKINGS (if applicable)
-----------------------------------
Stop line:
  Width:          [X] mm
  Position:       [X] m from [reference]
  Code ref:       [TM01]

Give way line:
  Width:          [X] mm
  Mark/gap:       [X] m / [X] m
  Code ref:       [TM07]

Pedestrian crossing:
  Bar width:      [X] mm
  Bar spacing:    [X] mm
  Crossing length: [X] m
  Code ref:       [BM01 / BM02 / BM03]

ARROW MARKINGS (if applicable)
------------------------------
Type:             [Deflection / Bifurcation / Lane indication]
Length:           [X] m
Code ref:         [AM01 / AM02 / etc.]

MARKING MATERIAL
----------------
Material:         [Thermoplastic / Paint / Cold plastic / MMA]
Glass beads:      [Yes / No]
Thickness:        [X] mm
Standard:         [KS EAS 928-1 / AASHTO M249 / etc.]

RETROREFLECTIVITY
-----------------
Initial (dry):    [X] mcd/m2/lux
Threshold (2yr):  [X] mcd/m2/lux
Wet threshold:    [X] mcd/m2/lux

ROAD STUDS
----------
Centre line:
  Type:           [Bi-directional]
  Colour:         [Yellow-Yellow]
  Spacing:        [X] m

Edge line:
  Type:           [Bi-directional / Uni-directional]
  Colour:         [Red-White / Red]
  Spacing:        [X] m

Lane line:
  Type:           [Bi-directional]
  Colour:         [White-White]
  Spacing:        [X] m

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with WARNING flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
============================================================
```

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft with universal marking knowledge from MUTCD/Vienna Convention principles. Kenya module from RDM 6.1. |
