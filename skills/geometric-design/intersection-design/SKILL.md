---
name: "intersection-design"
description: "Use when designing at-grade intersections, selecting junction types, determining visibility splays, specifying turning lanes, or designing channelisation and roundabout geometry. Requires design speed from Skill #13, turning radii from Skill #18 (Design Vehicle), and SSD from Skill #16 (Sight Distance). Outputs feed into Skill #20 (NMT Facilities) for pedestrian crossing design at junctions."
---

# Intersection & Junction Design

> **Skill ID:** 19
> **Domain:** Geometric Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Design at-grade intersections including junction type selection, visibility splay determination, turning lane specification (deceleration and storage lengths), channelisation with traffic islands, and basic roundabout geometry. This skill produces the geometric layout of an intersection that safely manages conflicting traffic movements while maintaining adequate capacity.

## When to Use This Skill

- **Use when:** Designing a new at-grade intersection, modifying an existing junction, or checking the geometric adequacy of a proposed junction layout. Required whenever a road connects to another road at the same level.
- **Do not use when:** Designing grade-separated interchanges (flyovers, underpasses) -- these require specialist interchange design. Also not for signalling/traffic signal timing (operations skill) or roundabout capacity analysis (traffic engineering skill).
- **Prerequisite skills:** Skill #13 (Design Standards Selection) -- design speed and road class. Skill #16 (Sight Distance) -- SSD values feed visibility splay dimensions. Skill #18 (Design Vehicle) -- turning radii determine junction geometry.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Junction Types:** At-grade intersections fall into five broad categories: (A) unchannelised priority T-junction, (B) partly channelised T-junction, (C) fully channelised T-junction, (D) roundabout, and (E) signalised intersection. The selection depends on traffic volumes on major and minor roads, design speed, and the balance of flows between approaches.

**Visibility Splays:** A visibility splay is a triangular area at a junction that must be kept clear of obstructions so that drivers on the minor road can see approaching traffic on the major road. Two measurement conditions exist, and they use different setback distances:

- **Approach/Yield condition (20 m setback):** The driver on the minor road approaches at low speed and yields if necessary. The measurement point is 20 m back from the nearside edge of the major road carriageway. The required visibility distance along the major road (LA) depends on the junction design speed.
- **Stop condition (3.0 m setback):** The driver on the minor road has stopped at a stop line. The measurement point is 3.0 m back from the nearside edge of the major road carriageway. The required visibility distance (LS) is longer than the approach condition because the driver must judge a gap from a standing start.

**Critical distinction:** The approach condition uses a 20 m setback and the stop condition uses a 3.0 m setback. Confusing these produces incorrect splay dimensions. The stop condition requires longer visibility distances because of the time needed to accelerate from rest.

**Turning Lanes:** A turning lane removes decelerating and waiting vehicles from through traffic. It consists of three elements:
1. **Diverging (taper) section:** Where the turning vehicle moves laterally from the through lane into the auxiliary lane.
2. **Deceleration section:** Where the vehicle slows from the main road speed to the turning speed.
3. **Storage section:** Where vehicles queue while waiting for a gap (right turns) or a signal phase.

For left turns (in left-hand-drive countries like Uganda), the turning vehicle leaves the through lane to the left. For right turns, the vehicle must cross oncoming traffic, making the storage section critical.

**Channelisation:** Traffic islands physically separate traffic streams at an intersection. Raised islands must have a minimum area of 4.5 m2 to be visible and functional. Islands are set back 0.30 m from lane edges. Common island shapes are elongated (splitter islands between opposing flows) and triangular (directing left-turn movements).

**Roundabouts:** A circular intersection where traffic circulates in one direction around a central island. Roundabouts eliminate head-on and right-angle collisions but require adequate geometry: central island radius, entry width, entry angle, and deflection. They are preferred when minor road traffic is 10-15% or more of total incoming traffic, as they distribute right-of-way more equitably than priority junctions.

### 1.2 Universal Formulas

**Junction spacing:** The minimum distance between consecutive junctions is a function of design speed to allow weaving and decision-making:

```
Spacing_min = 10 x VD
```

Where VD = design speed in km/h, and spacing is in metres. For example, at 80 km/h, minimum spacing = 800 m.

**Junction design speed:** The design speed within the junction should be within +/-20 km/h of the major road design speed.

**Visibility splay geometry:** The visibility splay is a right triangle with the setback distance (X) measured along the minor road and the visibility distance (LA or LS) measured along the major road. All objects within this triangle above a specified height must be removed or controlled.

**Turning lane total length:**

```
L_total = L_diverging + L_deceleration + L_storage
```

Each component depends on design speed and traffic volumes -- see country modules for specific values.

### 1.3 Figures & Diagrams

**Visibility splay triangle:** The minor road centreline intersects the major road edge. From the minor road, measure the setback distance (X = 20 m for approach, X = 3 m for stop). From this point, a line extends along the major road at the required visibility distance (LA or LS). The triangular area between the minor road, the major road, and this sightline must be clear.

**Turning lane layout:** Starting from the main carriageway, the diverging section tapers the lane outward (typically at 1:15 to 1:20), followed by the deceleration section at full auxiliary lane width (typically 3.0 m), followed by the storage section at the same width.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Design speed of major road (from Skill #13)
  |-- AADT of major road and minor road
  |-- Design vehicle (from Skill #18)
  |-- Road class (from Skill #13)
  |-- SSD values (from Skill #16)
  +-- Load country module for standard-specific tables

Step 2: Select junction type
  |-- Determine traffic volumes on major and minor roads
  |-- See country module, Section M.3 for type selection thresholds
  |-- If minor road AADT < threshold for priority T --> Type A, B, or C
  |-- If minor road AADT is high relative to major --> Consider roundabout (D)
  |-- If signal warrant met --> Type E (signalised)
  +-- Note: Selection is approximate for graphical standards; flag as such

Step 3: Determine junction design speed
  +-- Within +/-20 km/h of major road design speed

Step 4: Calculate visibility splays
  |-- Determine control type (approach/yield or stop)
  |-- Look up LA or LS from country module tables
  |-- Check that the visibility triangle is achievable (no obstructions)
  +-- If obstructed --> Escalation (Section 5)

Step 5: Determine turning lane requirements
  |-- Right turn lane: needed when through traffic speed >= 70 km/h
  |     or when right-turning traffic causes unacceptable delay
  |-- Left turn lane: needed on high-speed roads (>= 80 km/h)
  |     or when left-turn deceleration in the through lane is unsafe
  |-- Look up deceleration and storage lengths from country module
  +-- Apply gradient adjustment if junction is on a slope

Step 6: Design channelisation (if applicable)
  |-- Splitter islands on minor road approach
  |-- Triangular islands for left-turn channelisation
  |-- Raised islands minimum 4.5 m2, set back 0.30 m
  +-- See country module for specific channelisation guidance

Step 7: Roundabout geometry (if selected)
  |-- Central island radius >= 10 m (normal roundabout)
  |-- Entry width, circulating width, entry angle
  |-- Note: Detailed roundabout design may require supplementary guidance
  +-- See country module for available roundabout parameters

Step 8: Check pedestrian facilities at junction
  +-- Link to Skill #20 (NMT Facilities) for pedestrian crossings,
      refuge islands, and dropped kerbs at junction approaches

Step 9: Run validation (Section 4 + country module Section M.5)

Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Design for the conflict, not just the geometry.** An intersection is where traffic streams conflict. The geometric design must manage these conflicts by separating them in space (channelisation) or time (signals), providing adequate sight distance for conflict detection, and giving turning vehicles space to decelerate and store without blocking through traffic.

**Avoid over-providing lanes.** Additional lanes increase crossing distance for pedestrians and can confuse drivers. A right turn lane is valuable on a high-speed road, but multiple auxiliary lanes at a rural T-junction may be unnecessary and counterproductive.

**Roundabout preference.** Where traffic volumes are moderate and the major/minor split is not extreme, roundabouts generally provide better safety outcomes than priority junctions because they eliminate head-on and right-angle collisions. However, roundabouts require land and may not suit very constrained sites.

**Junction spacing discipline.** Closely spaced junctions create short weaving sections that reduce safety and capacity. Maintain the minimum spacing (10 x VD) wherever possible.

### 2.3 Common Errors

1. **Confusing approach and stop visibility splay setbacks.** Approach uses 20 m, stop uses 3.0 m. Using the wrong setback produces incorrect splay dimensions.
2. **Omitting the storage section from turning lane length.** The deceleration section alone is not sufficient -- vehicles waiting to turn need queuing space.
3. **Designing visibility splays but not controlling development within them.** The splay must be kept permanently clear -- not just at construction but through land-use control.
4. **Using through-road design speed for the junction design speed.** Junction design speed is related to but not identical to the main road design speed (within +/-20 km/h).
5. **Ignoring pedestrian movements at junctions.** Intersections concentrate pedestrian crossings. NMT facilities (Skill #20) must be integrated, not retrofitted.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Junction control type | Priority (give way) | Not specified | WARNING ASSUMED: Priority junction assumed. Confirm junction control type. | Most common for rural T-junctions |
| Turning lane width | 3.0 m | Not specified | WARNING ASSUMED: Turning lane width 3.0 m. Confirm with standard. | Common value across standards |
| Traffic island minimum area | 4.5 m2 | Not specified | WARNING ASSUMED: Min island area 4.5 m2. | MoWT and international practice |
| Island offset from lane edge | 0.30 m | Not specified | WARNING ASSUMED: Island set back 0.30 m from lane edge. | Standard safety offset |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Never assume a junction type without traffic data.** If volumes are unknown, flag and recommend traffic survey.
3. **Conservative direction:** When in doubt about visibility splay condition (approach vs stop), use the stop condition (longer distances, safer).

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Visibility splay distance | 50 | 600 | m | Warn if outside range -- check speed and setback |
| Turning lane total length | 30 | 300 | m | Warn if outside range for design speed |
| Central island radius (roundabout) | 4 | 50 | m | Warn if < 10 m (mini-roundabout); reject if < 4 m |
| Traffic island area | 4.5 | -- | m2 | Reject if < 4.5 m2 (too small to be visible) |
| Junction spacing | 10 x VD | -- | m | Warn if below minimum spacing |

### 4.2 Consistency Checks

- **Visibility splay vs junction control:** Approach splays for give-way junctions, stop splays for stop-controlled junctions. Check consistency.
- **Turning lane length vs design speed:** Deceleration length should increase with design speed. If a high-speed junction has a short deceleration section, flag.
- **Junction type vs traffic volumes:** If minor road traffic exceeds priority junction thresholds, flag for upgrade consideration.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Visibility splay obstructed | Drivers cannot see approaching traffic | SENIOR REVIEW -- Visibility splay at junction is obstructed by [obstruction]. Required LA/LS = [X] m, available = [Y] m. Consider relocating junction, removing obstruction, or changing junction control. |
| Minor road traffic exceeds priority junction capacity | Safety and capacity concern | SENIOR REVIEW -- Minor road AADT [X] exceeds typical priority junction threshold for [speed] km/h. Consider roundabout or signalised junction. |
| Junction spacing below minimum | Weaving distance inadequate | SENIOR REVIEW -- Junction spacing [X] m is below minimum [Y] m for [speed] km/h. Consider consolidating accesses or providing an auxiliary lane. |
| No traffic data available | Cannot select junction type reliably | SENIOR REVIEW -- No traffic volumes provided. Junction type selection requires AADT data. Recommend traffic survey before finalising junction design. |

### 5.2 Escalation Behaviour

- **Never suppress.** Continue working but flag prominently.
- **Country module escalations** (Section M.6) merge with these.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Design speed (major road) | number | km/h | Yes | Skill #13 | Governs visibility splays and turning lane lengths |
| Road class | category | -- | Yes | Skill #13 | Determines applicable junction standards |
| AADT (major road) | number | veh/day | Yes | User/traffic data | For junction type selection |
| AADT (minor road) | number | veh/day | Yes | User/traffic data | For junction type selection |
| Design vehicle | category | -- | Yes | Skill #18 | Turning radii determine junction geometry |
| SSD | number | m | Yes | Skill #16 | Feeds into visibility splay calculation |
| Right-turning traffic | number | pcu/h | Conditional | User/traffic data | Required for storage length calculation |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Junction type | category | -- | User | Selected junction type (A-E) |
| Visibility splay dimensions | number | m | User | LA or LS with setback distance |
| Turning lane lengths | number | m | User | Diverging + deceleration + storage |
| Channelisation layout | descriptive | -- | User | Island type, dimensions, placement |
| Pedestrian crossing requirements | descriptive | -- | Skill #20 | Crossing needs at junction approaches |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda standards and tables | Markdown |
| `modules/uk.md` | UK standards (knowledge-based) | Markdown |
| `tables/uganda_junction_visibility.json` | Visibility splays for approach and stop conditions | JSON |
| `../design-vehicle/tables/uganda_design_vehicles.json` | Design vehicle turning radii (Skill #18) | JSON |

---

## 7. Procedure

### Step 1: Confirm Design Inputs
Receive design speed, road class, traffic volumes (major and minor), design vehicle, and SSD from prerequisite skills. Load country module.

### Step 2: Select Junction Type
Using traffic volumes and design speed, determine the appropriate junction type from country module decision logic (Section M.3). For graphical selection charts, use approximate thresholds and flag as approximate.

### Step 3: Determine Junction Design Speed
Junction design speed = major road design speed +/-20 km/h (typically the same or slightly lower).

### Step 4: Calculate Visibility Splays
From country module tables, look up the required LA (approach condition, 20 m setback) or LS (stop condition, 3.0 m setback) for the junction design speed. Check achievability.

### Step 5: Specify Turning Lanes
If turning lanes are required (based on speed and traffic), look up diverging section, deceleration section, and storage section lengths from country module. Apply gradient adjustment factors if the junction is on a grade.

### Step 6: Design Channelisation
If channelisation is appropriate for the selected junction type (Type B or C), specify island types, dimensions, and placement per country module.

### Step 7: Check Roundabout Geometry (if applicable)
If a roundabout is selected, specify central island radius, entry geometry, and circulating width per country module.

### Step 8: Integrate Pedestrian Facilities
Link to Skill #20 for pedestrian crossing design at junction approaches. Identify crossing locations and refuge island needs.

### Step 9: Run Validation
All universal + country-specific checks.

### Step 10: Produce Output

---

## 8. Output Format

```
============================================================
INTERSECTION DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Major Road Design Speed: [X] km/h
Date: [YYYY-MM-DD]
============================================================

TRAFFIC DATA
------------
Major road AADT:     [X] veh/day
Minor road AADT:     [Y] veh/day
Right-turning:       [Z] pcu/h (if applicable)

JUNCTION TYPE SELECTION
-----------------------
Selected type:       [A/B/C/D/E] -- [description]
Basis:               [traffic volumes, speed, or other criteria]

VISIBILITY SPLAYS
-----------------
Control type:        [Approach/Yield | Stop]
Setback distance:    [20 m | 3 m]
Required visibility: [LA or LS] m
Achievable:          [Yes/No]

TURNING LANES
-------------
Left turn lane:      [Required/Not required]
  Diverging:         [X] m
  Deceleration:      [X] m
Right turn lane:     [Required/Not required]
  Deceleration:      [X] m
  Storage:           [X] m
Gradient adjustment: [factor, if applicable]
Auxiliary lane width: [X] m

CHANNELISATION
--------------
[Island descriptions, dimensions, placement]

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

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Grade-separated interchanges (flyovers, underpasses). Traffic signal timing and phasing. Roundabout capacity analysis. Detailed swept path analysis at junctions (use Skill #18 for turning radii, CAD software for detailed swept paths).
- **Simplifications:** Junction type selection from graphical charts is encoded as approximate thresholds, not exact boundaries. Roundabout geometric design is covered at basic level only -- detailed roundabout design (ICD, entry path curvature, deflection check) may require supplementary guidance beyond the primary standard.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with MoWT Section 8 intersection parameters. Visibility splays, turning lanes, channelisation, basic roundabout geometry. |
