---
name: "traffic-sign-design"
description: "Use when selecting and designing traffic signs -- determining sign types (regulatory, warning, informatory), sizes by road class and speed, positioning, mounting heights, retroreflectivity grades, and sign face design. Requires road class and design speed from Skill #13 (Design Standards Selection). Compose with Skill #67 (Road Marking Design) for coordinated marking/signage at junctions and crossings."
---

# Traffic Sign Design

> **Skill ID:** 68
> **Domain:** Traffic Management
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---
> **Country Modules:** Kenya

## Purpose

Design traffic signs including regulatory (priority, mandatory, prohibitory), warning, informatory (directional, route, facilities), and temporary (roadwork) signs. This skill covers sign type selection, sizing, positioning, mounting, retroreflectivity, and sign face layout. It does NOT cover road markings (Skill #67), traffic signals (Skill #69), or variable message signs (Skill #70). Scope boundary: for roadwork temporary signing, this skill provides general principles. Detailed temporary traffic management plans are a specialist activity.

## When to Use This Skill

- **Use when:** Selecting and specifying traffic signs for any road. Required for all roads with regulated speed limits, hazard locations, junctions, and route guidance needs.
- **Do not use when:** Designing road markings (Skill #67), traffic signals (Skill #69), or detailed construction-phase traffic management plans.
- **Prerequisite skills:** Skill #13 (Design Standards Selection) -- road class and design speed determine sign size and placement distances. Skill #19 (Intersection Design) -- junction layout determines which signs are needed at junctions.

---

## 1. Knowledge (Universal)

### 1.1 Sign Classification

Traffic signs are classified into four main categories:

**Regulatory signs** -- indicate the existence of road regulations and enforce them:
- **Priority signs:** STOP (octagonal, red background with white text), GIVE WAY (inverted triangle, red border on white).
- **Mandatory signs:** Indicate what drivers MUST do (e.g., turn left, keep left). Circular, blue background with white symbol.
- **Prohibitory signs:** Indicate what drivers must NOT do (e.g., no entry, no right turn, speed limit). Circular, white background with red border and cancellation bar.

**Warning signs** -- alert drivers to hazards ahead:
- Triangular shape (equilateral triangle, point up), red border on white background with black symbol.
- Junction warnings, curve warnings, gradient warnings, hazard warnings (school, pedestrian crossing, animals, etc.).
- Warning signs require sufficient advance placement so drivers can react.

**Informatory signs** -- provide information about routes, places, and facilities:
- **Directional signs:** Advance direction signs, route direction signs, route confirmatory signs. Rectangular with one end pointed (direction of travel).
- **Facility signs:** Hospital, airport, parking, tourist attraction. Rectangular with symbols.
- Colour coding depends on road hierarchy (expressway = blue, trunk = green, collector/local = white background).

**Roadwork/temporary signs** -- indicate road works in progress:
- Triangular (warning) or rectangular (informatory), yellow background with black border and symbols.
- Include advance warning, lane closure, speed restriction, and diversion signs.

### 1.2 Sign Shapes and Colours (Vienna Convention)

The Vienna Convention establishes shape-meaning associations:

| Shape | Meaning | Colour |
|-------|---------|--------|
| Octagon | STOP | Red background, white text |
| Inverted triangle | GIVE WAY | White background, red border |
| Circle | Regulatory (mandatory/prohibitory) | Blue (mandatory), White with red border (prohibitory) |
| Triangle (point up) | Warning | White background, red border, black symbol |
| Rectangle/square | Informatory | Varies by road class |
| Diamond | Special warning (MUTCD convention) | Yellow background |

### 1.3 Sign Sizing

Sign size is determined by approach speed and road class. The principle: larger signs for higher speeds to ensure legibility at the required recognition distance. Three standard sizes are common:

- **Small:** 600 mm (low-speed urban/local roads, approach speed <=50 km/h)
- **Normal:** 750 mm (single carriageway, approach speed >50 km/h)
- **Large:** 900 mm (expressways, dual carriageways, high-speed roads)
- **Expressway:** 1200 mm (some jurisdictions specify even larger for expressways)

Reference `tables/sign_sizes_by_speed.json` for detailed size lookup.

### 1.4 Sign Positioning

**Longitudinal placement** -- advance warning distance depends on approach speed:
- Signs must be placed far enough ahead of the hazard/junction for drivers to read, understand, and react.
- Minimum siting distance increases with speed (e.g., 50 m at <=50 km/h, 200-300 m at >80 km/h).
- Signs should be readable within 6 seconds of travel time.

**Lateral placement:**
- Signs are placed on the nearside (left in left-hand traffic, right in right-hand traffic) of the road.
- Offset from carriageway/shoulder edge: minimum 600 mm to 3 m depending on road type.
- For roads with kerbs: minimum 300 mm from kerb face.
- For roads with shoulders: placed outside the shoulder edge.

**Vertical placement (mounting height):**
- Ground-mounted signs (with kerb): bottom edge 2.1 m minimum above footway level.
- Ground-mounted signs (without kerb, rural): bottom edge 1.5 m minimum above pavement surface.
- Overhead signs: minimum 5.5 m clearance above carriageway.
- Signs on traffic islands: bottom edge approximately 1.0 m above paved surface.

**Spacing between signs:** Signs on the same section should be spaced at a minimum of 0.6 x V metres apart (V = 85th percentile speed in km/h) so drivers can read each sign separately.

### 1.5 Retroreflectivity

Signs must be visible at night. Retroreflective sheeting is applied to the sign face:

**Sheeting classes (per ASTM D 4956-09 / KS 814):**

| Class | Grade | Types (ASTM) | Typical Application |
|-------|-------|-------------|---------------------|
| Class A | Engineering / Super-Engineering | Type I, Type II | Collector and local roads |
| Class B | High Intensity Prismatic | Type III, Type IV | Arterial and trunk roads |
| Class C | Micro Prismatic (Diamond Grade) | Type VIII, IX, XI | Expressways, arterials, overhead signs |

Higher grades provide greater retroreflectivity. Higher-speed roads require higher-grade sheeting because drivers need to see signs from greater distances.

Reference `tables/retroreflectivity_grades.json` for detailed sheeting specifications.

### 1.6 Sign Face Design

For informatory/directional signs, the sign face must be designed for legibility:

- **Letter height:** Determined by approach speed. Legibility distance is approximately 6 m per mm of letter height (e.g., 100 mm letters are legible at ~600 m). For road speeds of 80 km/h, x-height of 75-100 mm is typical.
- **Border width:** Proportional to sign size.
- **Symbol sizing:** Symbols should be large enough for recognition at the required distance.
- **Message length:** Maximum 3 lines of text. Short, clear messages.
- **Alphabets:** Upper and lower case mixed is more legible than all capitals for longer messages. Capitals for short messages (STOP, SLOW).

### 1.7 Mounting

| Mount Type | When Used | Sign Area |
|-----------|----------|-----------|
| Single post | Standard ground-mounted signs | Up to 0.9 m2 |
| Double post | Larger signs | >0.9 m2 |
| Overhead gantry | Multi-lane roads, complex interchanges | Any size |
| Portal frame | Overhead spanning one direction | Any size |
| Cantilever | Over one or two lanes | Any size |

Posts are typically galvanised steel (GI) pipes or sections. Foundations are reinforced concrete. Overhead signs must be designed for wind and dead loads.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Road class and design speed (from Skill #13)
  |-- Junction type and layout (from Skill #19, if applicable)
  |-- Number of lanes and road configuration
  +-- Load country module for sign codes and sizing tables

Step 2: Determine regulatory signs required
  |-- Priority signs (STOP or GIVE WAY) at junctions per Skill #19
  |-- Speed limit signs at speed transitions
  |-- Mandatory direction signs where required
  |-- Prohibitory signs (no entry, no overtaking, weight/height restrictions)
  +-- Size based on road class and approach speed

Step 3: Determine warning signs required
  |-- Junction ahead warnings (advance of all junctions)
  |-- Curve/bend warnings
  |-- Gradient warnings
  |-- Hazard warnings (school, pedestrian, animal, level crossing)
  +-- Size and siting distance based on approach speed

Step 4: Determine informatory signs required
  |-- Advance direction signs at approaches to junctions
  |-- Route direction signs at junctions
  |-- Route confirmatory signs after junctions
  |-- Facility signs (hospital, airport, parking) where applicable
  +-- Sign face design (destinations, letter height, colour scheme)

Step 5: Determine sign sizing
  |-- Select size from country module table based on speed and road class
  +-- Apply expressway oversize if applicable

Step 6: Determine sign positioning
  |-- Longitudinal: advance warning distances from country module
  |-- Lateral: offset from carriageway edge
  |-- Vertical: mounting height
  +-- Spacing between consecutive signs

Step 7: Specify retroreflective sheeting
  |-- Grade based on road class (Class A for local, Class B for arterial, Class C for expressway)
  +-- Colour requirements for sign face and borders

Step 8: Determine mounting arrangement
  |-- Single post, double post, overhead, cantilever
  +-- Foundation and structural requirements for large/overhead signs

Step 9: Run validation (Section 6 + country module Section M.5)

Step 10: Produce output (Section 10)
```

---

## 3. Professional Judgment

**Avoid sign clutter.** Too many signs reduce the effectiveness of each individual sign. Drivers cannot absorb multiple messages simultaneously. At a location where many signs are needed, consider consolidating information onto fewer, larger signs. Space signs to allow 6 seconds reading time between them.

**Sign placement drives sign effectiveness.** A correctly specified sign in the wrong location is ineffective. Signs placed too close to a hazard give insufficient reaction time. Signs hidden by vegetation, structures, or other signs are useless. Always verify sight lines.

**Sign size is a safety specification, not a cost item.** Undersized signs save minimal cost but significantly reduce visibility. Always use the size specified for the road class and speed. Use larger sizes where greater emphasis is needed (crash history, unusual hazard).

**Retroreflectivity degrades over time.** Sheeting loses retroreflectivity due to UV exposure, abrasion, and environmental factors. Specify maintenance inspection intervals and replacement criteria. A sign that was retroreflective when installed but has degraded provides a false sense of safety.

---

## 4. Common Errors

1. **Over-signing (sign clutter).** Installing too many signs at one location reduces the effectiveness of all signs. Drivers stop reading when overwhelmed.
2. **Undersized signs for the approach speed.** Using 600 mm signs on a road with 80+ km/h approach speed is dangerous. Drivers cannot read them in time.
3. **Wrong retroreflectivity grade for the road class.** Engineering grade (Class A) sheeting on a high-speed road provides inadequate night-time visibility.
4. **Signs placed at incorrect height.** Signs below minimum height are obscured by parked vehicles. Signs too high are not in the driver's natural sight line.
5. **Missing advance warning signs.** Regulatory and warning signs at the hazard are useless without advance warning signs giving drivers time to prepare.
6. **Not coordinating signs with markings.** A STOP sign must have a stop line (Skill #67). A speed limit sign needs supporting speed management measures where the speed change is large.

---

## 5. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Sign size (regulatory) | 750 mm | Single carriageway, >50 km/h | WARNING ASSUMED: Sign size 750 mm (normal). Verify against country standard. | Standard normal size |
| Sign size (warning) | 750 mm | Single carriageway, >50 km/h | WARNING ASSUMED: Warning sign size 750 mm. Verify against country standard. | Standard normal size |
| Mounting height (with kerb) | 2.1 m | Urban with footway | WARNING ASSUMED: Sign bottom edge at 2.1 m. | Minimum above footway |
| Mounting height (rural) | 1.5 m | Rural without kerb | WARNING ASSUMED: Sign bottom edge at 1.5 m. | Minimum above pavement |
| Retroreflectivity grade | Class B (Type III) | Arterial/trunk road | WARNING ASSUMED: Class B (High Intensity) retroreflective sheeting. | Appropriate for arterial roads |
| Lateral offset | 0.6 m | Minimum from carriageway edge | WARNING ASSUMED: 0.6 m lateral offset. | Minimum safe offset |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **When in doubt about sign size, use the larger option.** Oversizing is safer than undersizing.
3. **Always specify retroreflective sheeting.** Non-reflective signs are ineffective at night.

---

## 6. Validation (Universal)

### 6.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Regulatory sign diameter | 600 | 1200 | mm | Warn if outside standard range |
| Warning sign side length | 600 | 1000 | mm | Warn if outside standard range |
| Mounting height (kerbed) | 2.1 | 5.0 | m | Reject if <2.1 m |
| Mounting height (rural) | 1.5 | 5.0 | m | Reject if <1.5 m |
| Overhead clearance | 5.5 | -- | m | Reject if <5.5 m |
| Lateral offset | 0.3 | 6.0 | m | Warn if <0.3 m (kerbed) or <0.6 m (shouldered) |
| Letter height (informatory) | 50 | 200 | mm | Warn if outside range for approach speed |

### 6.2 Consistency Checks

- **Sign size vs approach speed:** Sign size must be appropriate for the 85th percentile approach speed. Small (600 mm) signs should not be used where approach speed exceeds 50 km/h.
- **Retroreflectivity vs road class:** Class A sheeting should not be used on expressways or trunk roads. Class C is required for expressways.
- **STOP sign vs GIVE WAY:** The choice depends on visibility conditions from Skill #19. If visibility funnel is clear, GIVE WAY is appropriate. If obstructed, STOP must be used.
- **Advance warning distance vs speed:** The siting distance of warning signs must provide adequate reaction time for the approach speed.

### 6.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 7. Escalation (Universal)

### 7.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Non-standard sign design requested | Non-standard signs may confuse drivers | SENIOR REVIEW -- Non-standard sign requested. Verify with road authority. |
| Variable message sign (VMS) required | Specialist design | REFER -- Variable message sign design is outside this skill. Refer to Skill #70. |
| Overhead gantry sign on structure | Structural design required | SENIOR REVIEW -- Overhead sign requires structural design for wind and dead loads. |
| Large speed differential at speed change | Safety concern | SENIOR REVIEW -- Speed change of [X] km/h (from [Y] to [Z]) at [location]. Additional speed management measures may be needed. |
| Sign visibility obstructed | Safety risk | SENIOR REVIEW -- Sign visibility at [location] is obstructed by [obstruction]. Sight line clearance required. |

### 7.2 Escalation Behaviour

- **Never suppress.** Continue working but flag prominently.
- **Country module escalations** (Section M.6) merge with these.

---

## 8. Interfaces

### 8.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Road class | category | -- | Yes | Skill #13 | Determines sign size and sheeting grade |
| Design speed | number | km/h | Yes | Skill #13 | Determines sign size, siting distance, letter height |
| Junction type | category | -- | Conditional | Skill #19 | Determines which regulatory/warning signs are needed |
| Road configuration | descriptive | -- | Yes | Skill #17 | Number of lanes, median type |
| Destinations | list | -- | Conditional | User | Required for informatory/directional sign design |
| Country/jurisdiction | category | -- | Yes | User | Selects country module and sign catalogue |

### 8.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Sign schedule | table | -- | User, Skill #61 | Complete list of signs with type, size, location, code |
| Sign face designs | descriptive | -- | User | Layout of informatory sign faces (text, symbols, colours) |
| Mounting specification | text | -- | User | Post type, height, foundation requirements |
| Retroreflectivity specification | text | -- | User | Sheeting class, warranty period |

### 8.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `tables/sign_sizes_by_speed.json` | Universal sign sizes by speed/road class | JSON |
| `tables/retroreflectivity_grades.json` | Sheeting grades and applications | JSON |
| `tables/kenya_sign_catalogue.json` | Kenya sign categories with representative codes | JSON |
| `tables/kenya_sign_sizes.json` | Kenya-specific sign sizes from RDM 6.2 | JSON |
| `modules/kenya.md` | Kenya country module | Markdown |

---

## 9. Procedure

### Step 1: Confirm Design Inputs
Receive road class, design speed, junction type, road configuration, and destinations from prerequisite skills. Load country module.

### Step 2: Determine Regulatory Signs
Priority signs (STOP/GIVE WAY), speed limit, mandatory direction, prohibitory signs.

### Step 3: Determine Warning Signs
Junction warnings, curve/bend warnings, hazard warnings. Size and siting distance from country module.

### Step 4: Determine Informatory Signs
Advance direction, route direction, route confirmatory, facility signs. Design sign faces with correct letter height, colour scheme, and layout.

### Step 5: Size All Signs
Select size from country module tables based on road class and approach speed.

### Step 6: Position All Signs
Longitudinal placement (advance warning distances), lateral offset, mounting height.

### Step 7: Specify Retroreflective Sheeting
Grade based on road class. Warranty period.

### Step 8: Specify Mounting
Post type, foundation, structural requirements for overhead signs.

### Step 9: Run Validation
All universal checks (Section 6) plus country-specific checks.

### Step 10: Produce Output

---

## 10. Output Format

```
============================================================
TRAFFIC SIGN DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Road Class: [class]
Design Speed: [X] km/h
Date: [YYYY-MM-DD]
============================================================

SIGN SCHEDULE
-------------
| No. | Location (km/chainage) | Sign Type | Sign Code | Size (mm) | Mounting | Sheeting |
|-----|------------------------|-----------|-----------|-----------|----------|----------|
| 1   | [location]             | [type]    | [code]    | [size]    | [mount]  | [grade]  |

REGULATORY SIGNS
----------------
STOP / GIVE WAY:    [Code], [Size] mm, at [location]
Speed limit:        [Value] km/h, [Code], [Size] mm
Prohibitory:        [Description], [Code], [Size] mm

WARNING SIGNS
-------------
Junction ahead:     [Code], [Size] mm, [distance] m in advance
Curve/bend:         [Code], [Size] mm
Hazard:             [Code], [Size] mm

INFORMATORY SIGNS
-----------------
Advance direction:  [Sign face description]
Route direction:    [Sign face description]
Route confirmatory: [Sign face description]

SIGN FACE DESIGN (informatory signs)
------------------------------------
Background colour:  [Green / Blue / White]
Text colour:        [White / Black]
Letter x-height:    [X] mm
Route number colour: [Yellow / Black]

MOUNTING SPECIFICATION
----------------------
Post type:          [GI single / GI double / Overhead gantry]
Mounting height:    [X] m (bottom edge above [reference])
Lateral offset:     [X] m from [reference]
Foundation:         [Concrete M25 / as designed]

RETROREFLECTIVE SHEETING
------------------------
Class:              [A / B / C]
Type (ASTM):        [I / III / VIII / XI]
Warranty:           [5 / 7 / 10] years

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
| 0.1 | 2026-04-04 | AI draft | Initial draft with universal sign design knowledge from MUTCD/Vienna Convention principles. Kenya module from RDM 6.2. |
