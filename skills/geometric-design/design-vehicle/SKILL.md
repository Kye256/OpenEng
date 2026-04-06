---
name: "design-vehicle"
description: "Use when selecting a design vehicle, determining turning radii, checking swept path requirements, or specifying curve widening based on vehicle dimensions. Independent of other skill inputs. Outputs feed into Skill #14 (curve widening), Skill #17 (lane widths), and Skill #19 (turning radii at intersections)."
---

# Design Vehicle & Swept Path

> **Skill ID:** 18
> **Domain:** Geometric Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Select the appropriate design vehicle for a road project and determine the geometric implications of that selection -- minimum turning radius, swept path envelope, and curve widening requirements. The design vehicle defines the largest vehicle that the road geometry must accommodate. Its dimensions determine lane widths (Skill #17), curve widening (Skill #14), and turning radii at intersections (Skill #19).

## When to Use This Skill

- **Use when:** Selecting a design vehicle for a new road or road improvement project. Required before intersection design (Skill #19) and when checking curve widening (Skill #14). Also needed when evaluating whether existing geometry can accommodate a specified vehicle type.
- **Do not use when:** Designing for non-motorised traffic only (pedestrians, cyclists, handcarts) -- these are addressed in Skill #20 (NMT Facilities). Note: boda-bodas (motorcycle taxis) and handcarts are common in East Africa but are NOT standard design vehicles -- they are addressed as NMT in Skill #20.
- **Prerequisite skills:** None mandatory -- design vehicle selection is often project-specific or determined by the road's functional classification. However, Skill #13 (Design Standards Selection) provides the road class which informs the likely design vehicle.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Design Vehicle:** A hypothetical vehicle whose dimensions represent the largest vehicle type that a road must accommodate. The design vehicle is not the average vehicle -- it is the largest vehicle that will use the road with reasonable frequency. All geometric design elements (lane width, curve radius, intersection geometry) must accommodate the design vehicle.

**Vehicle Dimensions:** The critical dimensions for geometric design are:
- **Overall length** -- affects storage lane requirements and queuing calculations
- **Overall width** -- affects lane width requirements (Skill #17)
- **Overall height** -- affects vertical clearance under bridges and in tunnels
- **Wheelbase** -- the distance between front and rear axles (or between the steering axle and the rearmost axle of the rearmost unit for articulated vehicles). Wheelbase is the primary determinant of turning radius and off-tracking.
- **Front overhang** -- the distance from the front axle to the front of the vehicle
- **Rear overhang** -- the distance from the rear axle to the rear of the vehicle

**Minimum Turning Radius:** The smallest circle that the outer front wheel of the design vehicle can follow at very low speed. This is a geometric property of the vehicle, not a dynamic property -- it does not depend on speed. The minimum turning radius determines the tightest turn the vehicle can physically make.

**Swept Path (Turning Path):** The area swept by a vehicle as it makes a turn. The swept path is wider than the vehicle itself because the rear wheels track inside the front wheels (off-tracking). The swept path envelope defines the minimum space required for the vehicle to complete a turn without encroaching on kerbs, islands, or opposing traffic.

**Off-Tracking:** When a vehicle turns, the rear wheels follow a path inside the front wheels. The amount of off-tracking increases with:
- Longer wheelbase (more off-tracking)
- Smaller turning radius (more off-tracking)
- Articulated vehicles (each unit off-tracks independently, compounding the effect)

For a simple vehicle on a circular path, the off-tracking (OT) can be approximated as:
```
OT = R - sqrt(R^2 - WB^2)
```
Where R = turn radius, WB = wheelbase.

**Curve Widening:** On horizontal curves, additional lane width is provided to compensate for off-tracking. The design vehicle's wheelbase is the primary input to the curve widening calculation (Skill #14).

**Standard Vehicle Designations:** Different standards use different naming conventions:
- **AASHTO/MoWT:** P (passenger car), SU (single-unit truck), BUS, WB-15/WB-19/WB-20 (semitrailers, number = approximate wheelbase in metres)
- **UK/EU:** Maximum legal dimensions by vehicle category (articulated vehicle, rigid vehicle, car)
- The designations are NOT interchangeable between standards.

### 1.2 Universal Formulas

**Off-tracking approximation (single-unit vehicle, low speed):**
```
OT = R - sqrt(R^2 - WB^2)
```
Where: OT = off-tracking (m), R = curve/turn radius (m), WB = wheelbase (m).

For small WB/R ratios, this simplifies to:
```
OT approximately = WB^2 / (2 x R)
```

**Swept path width (approximation for simple vehicle):**
```
SW = vehicle_width + OT
```

For articulated vehicles, the swept path must be calculated segment by segment (each unit off-tracks relative to the one ahead). This requires turning templates or swept path analysis software -- simple formulas are not adequate for articulated vehicles.

**Curve widening (AASHTO/MoWT approach -- also used in Skill #14):**
```
w = n x (R - sqrt(R^2 - L^2)) / R + V / (10 x sqrt(R))
```
Where: w = total widening (m), n = number of lanes, L = wheelbase of design vehicle (m), R = curve radius (m), V = design speed (km/h).

### 1.3 Figures & Diagrams

**Turning path template:** A plan view showing the swept path of the design vehicle as it makes a 180-degree turn at minimum radius. The outer boundary is traced by the front outside corner of the vehicle. The inner boundary is traced by the rear inside wheel. The difference between these boundaries is the swept path width.

**Off-tracking diagram:** Shows a vehicle on a circular curve. The front axle follows the curve radius R. The rear axle follows a smaller radius R - OT. The lane must be wide enough to accommodate both the vehicle width and the off-tracking.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine design vehicle selection criteria
  +-- Road function (arterial, collector, local, access)
  +-- Dominant heavy vehicle type (freight corridor, bus route, local access)
  +-- Regulatory requirements (legal vehicle dimensions)
  +-- Load country module for standard vehicle dimensions

Step 2: Select design vehicle
  +-- Trunk/freight routes --> Semitrailer (WB-15 or larger)
  +-- Bus routes --> Bus (BUS)
  +-- Urban collector --> Single Unit Truck (SU)
  +-- Local/residential --> Passenger Car (P) or SU
  +-- If unsure --> SU is a safe default for most roads
  --> See country module for standard vehicle types

Step 3: Look up vehicle dimensions
  --> See country module, Section M.2 for dimensions tables
  +-- Overall length, width, height
  +-- Wheelbase
  +-- Minimum turning radius

Step 4: Determine geometric implications
  +-- Minimum turning radius at intersections --> Skill #19
  +-- Wheelbase for curve widening --> Skill #14
  +-- Vehicle width for lane width adequacy --> Skill #17
  +-- Vehicle height for vertical clearance

Step 5: Check swept path at critical locations
  +-- Intersections (can the vehicle complete the turn?)
  +-- Tight curves (is the lane wide enough with widening?)
  +-- Roundabout entries/exits
  +-- Access roads and driveways
  --> For detailed swept path analysis: use turning templates or software

Step 6: Run validation (Section 4 + country module Section M.5)

Step 7: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Select the design vehicle based on the road's function, not just the most common vehicle.** A road serving an industrial estate must accommodate semitrailers even if cars are the most common traffic. A road serving a bus depot must accommodate buses. The design vehicle represents the critical case, not the average case.

**The minimum turning radius is a physical limit, not a design target.** Drivers do not always achieve the minimum turning radius -- they may approach the turn at an angle or not use full lock. Provide a margin above the theoretical minimum where possible, especially at intersections.

**Swept path analysis is more accurate than simple off-tracking formulas for articulated vehicles.** The formula-based approach works for single-unit vehicles but underestimates the swept path for multi-unit combinations. For critical locations (tight intersections, roundabouts), use turning templates or swept path software.

**Consider future vehicle trends.** Freight vehicles are getting longer in some jurisdictions (longer combination vehicles, road trains). If the road has a 20-year design life, consider whether larger vehicles may be permitted in future.

### 2.3 Common Errors

1. **Using the wrong vehicle designation across standards.** AASHTO WB-15 is not the same as a UK 16.5m articulated vehicle. The dimensions differ. Always use the design vehicle from the applicable standard.
2. **Applying car dimensions to truck-critical locations.** Intersections, roundabouts, and access points must accommodate the design vehicle, not a car. Designing for car dimensions at intersections creates safety hazards when trucks cannot complete turns within the lane.
3. **Forgetting that minimum turning radius is for low speed only.** At higher speeds, vehicles need a larger radius to maintain stability. The minimum turning radius applies only to very low speed manoeuvres (junctions, parking).
4. **Not accounting for rear overhang swing-out.** When an articulated vehicle turns, the rear overhang swings outward. This can encroach on adjacent lanes or kerbs. The swept path includes this swing-out.
5. **Assuming all semitrailers have the same turning radius.** WB-15, WB-19, and WB-20 have different wheelbases and different off-tracking characteristics, even though their minimum turning radii may be similar.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Design vehicle | SU (Single Unit Truck) | Not specified | WARNING ASSUMED: Design vehicle SU (verify for truck/bus routes) | Conservative for most roads; upgrade to WB-15+ for freight routes |
| Minimum turning radius | 12.8 m | SU default | WARNING ASSUMED: Min turning radius 12.8m (SU vehicle) | From standard SU dimensions |
| Vehicle width | 2.6 m | Truck/bus | WARNING ASSUMED: Vehicle width 2.6m (standard truck/bus width) | Standard for SU, BUS, WB vehicles |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **When the road function suggests larger vehicles, default up, not down.** A trunk road should default to WB-15 or larger, not SU.
3. **Always state the design vehicle explicitly in output.** The design vehicle choice affects multiple skills.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Minimum turning radius | 5 | 20 | m | Warn if outside range; very small values suggest car only |
| Wheelbase | 2.0 | 15.0 | m | Warn if outside range |
| Vehicle width | 1.5 | 3.5 | m | Warn if outside range |
| Vehicle length | 3.0 | 25.0 | m | Warn if outside range |

### 4.2 Consistency Checks

- **Design vehicle vs road class:** Verify that the design vehicle is appropriate for the road's functional class. A motorway should not have a passenger car as its design vehicle.
- **Turning radius vs intersection geometry:** Verify that the minimum turning radius of the design vehicle can be accommodated at all intersections along the route.
- **Vehicle width vs lane width:** Verify that lane width (Skill #17) provides adequate lateral clearance for the design vehicle width.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot determine standard vehicle dimensions | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. Verify vehicle dimensions. |
| Available turning radius below design vehicle minimum | Vehicle cannot complete turn | SENIOR REVIEW -- Available turning radius [X]m is below the minimum [Y]m for the design vehicle [type]. Increase radius, reduce speed, or consider alternative geometry. |
| Design vehicle mismatch with road function | Safety concern | SENIOR REVIEW -- Design vehicle [type] may be inadequate for [road function]. Verify with traffic analysis. |
| Junction radius below 15m (MoWT minimum) | Standard non-compliance | SENIOR REVIEW -- Junction turning radius [X]m is below the 15m minimum per MoWT Section 8.3.1(c). |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | --- | Yes | User | Determines which country module to load |
| Road class / function | category | --- | No | Skill #13 | Informs design vehicle selection |
| Specified design vehicle | text | --- | No | User / project brief | If the design vehicle is pre-determined |
| Critical turn locations | list | --- | No | User | Intersections or curves where swept path must be checked |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Design vehicle type | text | --- | Skills #14, #17, #19, User | Selected design vehicle designation |
| Overall length | number | m | Skill #19, User | Vehicle length |
| Overall width | number | m | Skill #17, User | Vehicle width for lane width check |
| Overall height | number | m | User | Vehicle height for clearance check |
| Wheelbase | number | m | Skill #14, User | For curve widening calculation |
| Minimum turning radius | number | m | Skill #19, User | For intersection design |
| Swept path width | number | m | User | At specified turn radius (if calculated) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda design vehicles (MoWT Table 5-1) | Markdown |
| `modules/uk.md` | UK design vehicles (knowledge-based) | Markdown |
| `tables/uganda_design_vehicles.json` | MoWT Table 5-1 vehicle dimensions | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: Determine Design Vehicle
Based on road class/function and project requirements, select the appropriate design vehicle. If a specific vehicle is specified in the project brief, use that. Otherwise, follow the selection logic in the country module.

### Step 3: Look Up Vehicle Dimensions
From the country module tables or JSON data file, retrieve the complete set of dimensions for the selected design vehicle.

### Step 4: Determine Geometric Implications
Calculate or note:
- Minimum turning radius (from table)
- Wheelbase (for curve widening in Skill #14)
- Vehicle width (for lane width check in Skill #17)
- Off-tracking at specified curve radii (if requested)

### Step 5: Check Swept Path at Critical Locations
If specific intersection or curve geometries are provided, check whether the design vehicle can negotiate them. Use turning templates or the off-tracking formula for simple cases.

### Step 6: Run Validation
All universal + country-specific checks from Section 4 and the country module.

### Step 7: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
DESIGN VEHICLE -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

DESIGN VEHICLE SELECTION
------------------------
Road class / function:        [class / function]
Selected design vehicle:      [type and designation]
Selection basis:              [project brief / road function / standard requirement]

VEHICLE DIMENSIONS
------------------
Overall length:               [X] m
Overall width:                [X] m
Overall height:               [X] m
Wheelbase:                    [X] m
Front overhang:               [X] m
Rear overhang:                [X] m
Minimum turning radius:       [X] m

GEOMETRIC IMPLICATIONS
----------------------
Curve widening wheelbase:     [X] m (input to Skill #14)
Lane width check:             Vehicle width [X]m vs lane width [Y]m -- [adequate / inadequate]
Junction turning radius:      Minimum [X]m required (input to Skill #19)

SWEPT PATH CHECK [if applicable]
---------------------------------
Location:                     [description]
Available radius:             [X] m
Required radius:              [X] m
Status:                       [adequate / inadequate]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with WARNING flags]

VALIDATION
----------
[Universal checks -- PASS or FAIL]
[Country-specific checks -- PASS or FAIL]

ESCALATION FLAGS
----------------
[SENIOR REVIEW items or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed swept path analysis using CAD software (Autodesk Vehicle Tracking, AutoTURN). Abnormal load vehicles (require project-specific analysis). Non-motorised transport vehicles (boda-bodas, handcarts, bicycles) -- these are covered by Skill #20 (NMT Facilities). Vehicle dynamics at speed (braking distances, stability on curves at speed -- these belong to Skills #14 and #16).
- **Simplifications:** Off-tracking formulas are approximations. For articulated vehicles at tight radii, turning templates or swept path software provide more accurate results. This skill provides the design vehicle dimensions and turning radius -- detailed swept path analysis is a CAD exercise, not a manual calculation.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with YAML frontmatter. Uganda module with MoWT Table 5-1 verified values. UK module drafted from knowledge (flagged for review). |
