---
name: "nmt-facilities"
description: "Use when designing pedestrian walkways, cycle lanes, crossing facilities, or other non-motorised transport infrastructure. Requires cross-section context from Skill #17 (Cross-Section Design) and junction context from Skill #19 (Intersection Design). Critical for urban and peri-urban roads in East Africa where pedestrian and cyclist volumes are high."
---

# NMT Facilities

> **Skill ID:** 20
> **Domain:** Geometric Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Design non-motorised transport (NMT) facilities including pedestrian footways, cycleways, pedestrian crossings, bus lay-bys, and speed management measures. This skill produces the geometric dimensions and layout of NMT infrastructure that enables safe movement of pedestrians, cyclists, and other non-motorised road users alongside motorised traffic.

## When to Use This Skill

- **Use when:** Designing or reviewing pedestrian, cyclist, or other NMT facilities on any road. Required for all urban and peri-urban roads. Should be considered for rural roads through trading centres, near schools, and near other pedestrian generators.
- **Do not use when:** Designing motorised transport infrastructure only (e.g., motorway with no NMT provision). Not for transport policy, capacity analysis, or network-level NMT planning -- this skill covers geometric design only.
- **Prerequisite skills:** Skill #17 (Cross-Section Design) -- provides the base cross-section within which NMT facilities are accommodated. Skill #19 (Intersection Design) -- junction context for pedestrian crossings at intersections.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Pedestrian Space Requirements:** A single pedestrian requires approximately 0.75 m width for comfortable walking. Two pedestrians passing require 1.5-1.8 m. A wheelchair requires at least 0.90 m clear width, and two wheelchairs passing require 1.80 m. These dimensions drive minimum footway widths.

**Cyclist Dimensions:** A standard bicycle is approximately 0.75 m wide and 2.00 m long, with a rider height of 1.90 m. The dynamic envelope (including wobble at low speed) is approximately 1.0-1.2 m wide. These dimensions determine minimum cycle lane and cycleway widths.

**Crossing Types:** Pedestrian crossings range from uncontrolled (marked zebra crossings relying on driver yielding) to signal-controlled (traffic signals with pedestrian phases) to grade-separated (footbridges and subways). The choice depends on traffic speed, traffic volume, pedestrian volume, and road width.

**Refuge Islands:** A pedestrian refuge island divides the crossing into two stages, allowing pedestrians to wait in the middle of the road. Refuge islands should be at least 1.5 m wide (1.2 m absolute minimum) so that a pedestrian with a pushchair or wheelchair can stand safely. The carriageway width past the refuge must still accommodate traffic (minimum 3.5 m per lane, 4.5 m if cyclists are present).

**Speed Management:** Geometric measures to reduce vehicle speeds in areas with high pedestrian activity. Includes entry gates (narrowing and deflection at town entries), speed humps (circular or plateau profile), and road narrowing. These are geometric design measures, not regulatory measures (speed limits, enforcement).

**Scope Boundary:** This skill covers the geometric design of NMT facilities -- physical dimensions, layout, and placement. It does NOT cover transport policy, NMT capacity analysis, network planning, or detailed accessibility design (tactile paving specifications, wheelchair ramp gradients for building access). Accessibility at the road level (kerb drops, crossing gradients) is included; building-level accessibility is not.

### 1.2 Universal Formulas

**Pedestrian crossing time:**

```
t_cross = W / v_walk
```

Where W = crossing width (m), v_walk = walking speed (typically 1.2 m/s for design, 0.8 m/s for elderly/disabled). This determines the minimum green man period at signalised crossings.

**Speed hump spacing for target speed:**

The relationship between hump spacing and 85th percentile speed is approximately:
- 50 m spacing produces approximately 30 km/h
- 125 m spacing produces approximately 50 km/h

These are approximate and depend on hump profile, road gradient, and context.

### 1.3 Figures & Diagrams

**Footway cross-section:** A typical urban footway is a raised platform separated from the carriageway by a kerb (100-150 mm height). The footway surface slopes gently away from the carriageway (1-2%) for drainage. In rural areas, the footway may be separated from the carriageway by a grass verge (minimum 2.0 m).

**Speed hump profiles:** Circular humps have a gradual rise (100 mm over 3-12 m length). Plateau humps have a flat top (4-6 m long) at 100 mm above the road surface, with ramps at each end. Plateau humps are preferred at pedestrian crossings because the flat top provides a comfortable crossing surface.

**Bus lay-by layout:** A standard bus lay-by consists of an entry taper, a standing area (parallel to the road), and an exit taper. The entry taper angle is gentler than the exit to ease bus departure back into traffic.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Road class and design speed (from Skill #13)
  |-- Urban/rural/peri-urban context
  |-- AADT and pedestrian flow (pedestrians/day if available)
  |-- Cross-section from Skill #17
  +-- Load country module for standard-specific tables

Step 2: Determine footway provision
  |-- See country module, Section M.2 for provision criteria
  |-- Decision: One side, both sides, or none (based on traffic and pedestrian volumes)
  +-- Note: In urban/peri-urban areas, provision on at least one side is nearly always required

Step 3: Determine footway width
  |-- Based on pedestrian volume category
  |-- See country module for width tables
  +-- Check consistency with cross-section (Skill #17)

Step 4: Determine cycleway provision (if applicable)
  |-- See country module for cycleway guidance
  |-- Decision: Separate cycleway, combined cycleway/footway, or cycle lane
  +-- Width based on type and usage level

Step 5: Determine crossing requirements
  |-- Based on pedestrian volume, traffic speed, carriageway width
  |-- Types: uncontrolled (zebra), humped, signal-controlled, grade-separated
  |-- Refuge islands if carriageway is wide
  +-- Link to Skill #19 for junction crossings

Step 6: Speed management (if in trading centre/urban area)
  |-- Gate design at town entries
  |-- Speed humps at appropriate intervals
  +-- See country module for hump profiles and spacing

Step 7: Bus lay-by design (if applicable)
  |-- Taper lengths, standing area, radii
  +-- See country module for dimensions

Step 8: Run validation (Section 4 + country module Section M.5)

Step 9: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Design footways as integral, not afterthought.** Footways should be designed as part of the cross-section from the start, not added as an afterthought when there is already insufficient road reserve width. This is a common error that leads to substandard facilities.

**Pedestrian volumes in developing countries are often underestimated.** In many East African and South Asian contexts, pedestrian volumes on trunk roads through trading centres far exceed what Western design standards assume. Design for the actual users, not for theoretical minimum standards.

**Separate rather than share.** Where space permits, separate pedestrian and cyclist facilities are safer and more comfortable than shared-use paths. Shared use creates conflicts between fast cyclists and slow pedestrians, particularly where volumes of either are high.

**Speed management is a geometric tool.** Physical measures (humps, narrowing, deflection) are more effective than signs alone at reducing vehicle speeds. In areas with high pedestrian activity, geometric speed management is the most important safety intervention.

### 2.3 Common Errors

1. **Designing footways too narrow.** Absolute minimum (1.0 m) is rarely appropriate -- most situations need at least 1.8 m for two people to pass.
2. **Placing crossings where pedestrians will not use them.** Crossings must be on desire lines. A crossing 100 m from where people actually want to cross will be ignored.
3. **Ignoring high pedestrian volumes in rural trading centres.** Rural does not mean low pedestrian volume. Trading centres on rural roads can have very high pedestrian activity.
4. **Providing refuge islands that are too narrow.** A refuge must accommodate a pushchair or wheelchair (minimum 1.2 m, desirable 1.5-2.0 m). Narrow refuges are dangerous.
5. **Not coordinating NMT design with junction design.** Pedestrian crossings at junctions must be integrated with junction geometry (Skill #19), not designed independently.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Walking speed | 1.2 m/s | Design crossing time | WARNING ASSUMED: Walking speed 1.2 m/s. Use 0.8 m/s for elderly/disabled context. | Standard design walking speed |
| Minimum footway width | 1.8 m | Not specified | WARNING ASSUMED: Footway width 1.8 m (desirable minimum). | Two pedestrians can pass |
| Refuge island width | 1.5 m | Not specified | WARNING ASSUMED: Refuge island width 1.5 m. | Adequate for pushchair/wheelchair |
| Cycleway minimum width | 2.0 m | Separate one-way cycleway | WARNING ASSUMED: Cycleway width 2.0 m minimum. | International best practice |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **When in doubt about pedestrian volumes, assume higher.** Under-provision is more dangerous than over-provision.
3. **Urban/peri-urban areas should always have footway provision.** Only in purely rural, low-traffic contexts with negligible pedestrian activity might footways be omitted.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Footway width | 1.0 | 6.0 | m | Reject if < 1.0 m (physically inadequate); warn if < 1.8 m |
| Cycleway width (separate) | 1.5 | 5.0 | m | Reject if < 1.5 m; warn if < 2.0 m |
| Refuge island width | 1.2 | 3.0 | m | Reject if < 1.2 m (wheelchair cannot fit) |
| Speed hump height | 75 | 100 | mm | Reject if > 100 mm (vehicle damage) |
| Crossing width (carriageway) | 3.5 | -- | m per lane past refuge | Warn if < 3.5 m (vehicles cannot pass) |

### 4.2 Consistency Checks

- **Footway width vs cross-section:** Check that footway width is consistent with the cross-section from Skill #17. If cross-section specifies 2.5 m footway, the NMT design should not deviate without justification.
- **Crossing location vs junction layout:** If Skill #19 provides a junction layout, crossings should be at junction approaches, not in the middle of turning lanes.
- **Speed management vs design speed:** If speed humps are specified, the target speed should be achievable (typically 30-50 km/h). Speed humps on a 100 km/h road are inappropriate.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No footway on urban/peri-urban road | Safety risk for pedestrians | SENIOR REVIEW -- No footway provision on [urban/peri-urban] road with AADT [X] and pedestrian flow [Y]. Footway should be provided. |
| Footway width below 1.0 m | Physically inadequate | SENIOR REVIEW -- Footway width [X] m is below absolute minimum 1.0 m. Pedestrians forced into carriageway. |
| High pedestrian volumes near school | Child safety concern | SENIOR REVIEW -- Road near school with [X] pedestrians/day. Recommend: (1) speed management zone, (2) controlled crossing, (3) warning signage. |
| No crossing provision on wide, high-speed road | Pedestrians crossing unprotected | SENIOR REVIEW -- [X] m carriageway at [Y] km/h with pedestrian flow [Z]/day but no crossing provision. Recommend formal crossing with refuge island. |

### 5.2 Escalation Behaviour

- **Never suppress.** Continue working but flag prominently.
- **Country module escalations** (Section M.6) merge with these.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Road class | category | -- | Yes | Skill #13 | Determines NMT provision requirements |
| Design speed | number | km/h | Yes | Skill #13 | Governs crossing design and speed management |
| Urban/rural context | category | -- | Yes | Skill #13 | Key driver of NMT provision |
| AADT | number | veh/day | Yes | User/traffic data | Threshold for footway provision |
| Pedestrian flow | number | ped/day | Desirable | User/survey data | Determines footway width and crossing type |
| Cross-section | descriptive | -- | Yes | Skill #17 | Provides the base within which NMT fits |
| Junction layout | descriptive | -- | Conditional | Skill #19 | For crossing design at junctions |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Footway provision and width | number | m | User, Skill #17 | Which side(s), width |
| Cycleway provision and width | number | m | User, Skill #17 | Type, width |
| Crossing type and location | descriptive | -- | User | Crossing provision recommendations |
| Speed management measures | descriptive | -- | User | Hump type, spacing, gate design |
| Bus lay-by dimensions | number | m | User | Taper lengths, standing area |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda standards and tables (all embedded -- no JSON) | Markdown |
| `modules/uk.md` | UK standards (knowledge-based) | Markdown |

---

## 7. Procedure

### Step 1: Confirm Design Inputs
Receive road class, design speed, urban/rural context, traffic data, pedestrian flow, cross-section, and junction layout from prerequisite skills. Load country module.

### Step 2: Determine Footway Provision
Using traffic volumes and pedestrian flows, determine whether footways are needed and on which side(s) -- from country module provision criteria.

### Step 3: Determine Footway Width
Based on pedestrian volume category (light, moderate, heavy) -- from country module width guidance.

### Step 4: Determine Cycleway Provision
If cyclists are present, determine cycleway type (separate, combined, cycle lane) and width from country module.

### Step 5: Determine Crossing Requirements
Based on traffic speed, pedestrian volume, and carriageway width. Select crossing type (uncontrolled, humped, signal-controlled, grade-separated) from country module. Specify refuge islands if needed.

### Step 6: Design Speed Management (if applicable)
For roads through trading centres or urban areas: gate design, speed humps, and spacing from country module.

### Step 7: Design Bus Lay-bys (if applicable)
If bus stops are needed, specify taper lengths, standing area, and radii from country module.

### Step 8: Run Validation
All universal + country-specific checks.

### Step 9: Produce Output

---

## 8. Output Format

```
============================================================
NMT FACILITIES -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Design Speed: [X] km/h
Context: [Urban / Peri-urban / Rural trading centre]
Date: [YYYY-MM-DD]
============================================================

PEDESTRIAN FACILITIES
---------------------
Footway provision:    [One side / Both sides / None]
Footway width:        [X] m
Separation from road: [Kerbed / Grass verge [X] m]
Kerb height:          [X] mm

CYCLIST FACILITIES
------------------
Provision:            [Separate cycleway / Combined / Cycle lane / None]
Width:                [X] m
Type:                 [One-way / Two-way]

CROSSING FACILITIES
-------------------
Type:                 [Zebra / Humped / Signal / Footbridge / Subway]
Location:             [Description]
Refuge island:        [Yes/No], width [X] m
Carriageway past refuge: [X] m

SPEED MANAGEMENT
----------------
Gate design:          [Yes/No] — entry radius [X] m
Speed humps:          [Type], [X] mm height, [X] m intervals
Target speed:         [X] km/h

BUS FACILITIES
--------------
Bus lay-by:           [Yes/No]
Entry taper:          [X] m
Exit taper:           [X] m
Standing length:      [X] m per bus

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

- **Not covered:** Transport policy and NMT network planning. NMT capacity analysis (Level of Service for pedestrians/cyclists). Detailed accessibility design (tactile paving specifications, building-access ramps, audible signals). Traffic signal timing for pedestrian phases (operations skill). Public transport route planning.
- **Simplifications:** Speed management covers geometric measures only, not enforcement or regulatory measures. Crossing type selection is based on general thresholds, not detailed warranting analysis.
- **Accessibility gap:** MoWT provides minimal accessibility guidance. Detailed design for persons with disabilities (tactile paving, wheelchair ramp gradients, audible crossing signals) is a noted gap that should be addressed in future versions or supplementary guidance.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with MoWT Section 11 NMT parameters and Section 10 speed management. East African NMT context (boda-bodas, handcarts). UK module knowledge-based. |
