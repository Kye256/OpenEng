---
name: "traffic-control-devices"
description: "Use when recommending traffic control devices -- selecting and sizing speed humps, barriers, delineators, rumble strips, guardrails, crash cushions, and variable message signs (VMS) for a given road context. Requires road class and design speed from Skill #13 (Design Standards Selection). Compose with Skill #20 (NMT Facilities) for speed management in trading centres and Skill #67 (Road Marking Design) for device marking requirements."
---

# Traffic Control Devices

> **Skill ID:** 70
> **Domain:** Traffic Management
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---
> **Country Modules:** Kenya

## Purpose

Select and specify traffic control devices including speed reduction measures (speed humps, speed tables, rumble strips), roadside safety barriers (guardrails, concrete barriers, crash cushions, end terminals), delineation devices (delineator posts, chevron signs, object markers), and variable message signs (VMS). This skill covers the device selection, sizing, and specifications -- the physical device parameters.

**Scope boundary:** For speed management zone layout and pedestrian crossing placement, see Skill #20 (NMT Facilities). This skill provides the physical device specifications that Skill #20 references. For road markings on or near devices, see Skill #67 (Road Marking Design). For signs warning of devices, see Skill #68 (Traffic Sign Design). For traffic signals, see Skill #69 (Traffic Signal Design).

## When to Use This Skill

- **Use when:** Selecting traffic control devices for any road. Common contexts include: speed reduction in villages/trading centres, roadside safety on high-speed roads, delineation on curves, VMS on expressways/motorways.
- **Do not use when:** Designing the geometric layout of speed management zones (Skill #20), road markings (Skill #67), traffic signs (Skill #68), or traffic signals (Skill #69). Not for detailed barrier structural design (escalation trigger).
- **Prerequisite skills:** Skill #13 (Design Standards Selection) -- road class and design speed determine device selection. Skill #20 (NMT Facilities) -- provides the speed management zone layout context.

---

## 1. Knowledge (Universal)

### 1.1 Speed Reduction Measures

Speed reduction devices physically force drivers to slow down. They are used where regulatory speed limits alone are insufficient, typically in villages, trading centres, school zones, and residential areas.

**Circular speed humps:** A raised section of pavement with a circular (arc) profile. The standard speed reduction device.
- Height: typically 75-100 mm (rise). Humps with a rise less than 75 mm are ineffective. Rises greater than 100 mm may damage vehicles.
- Chord length: 3.0-9.5 m depending on target speed (shorter chord = lower speed)
- Target speed: 20-30 km/h for short-chord humps, up to 50 km/h for long-chord humps
- Profile: the cross-section is a circular arc. The radius determines the severity.
- Reference `tables/speed_hump_geometry.json`

**Trapezoidal speed humps (plateau/flat-top):** A raised flat section with approach ramps on each side.
- Height: 50-100 mm
- Flat-top length: minimum 2.5 m (longer for bus routes -- extend to full bus wheelbase)
- Ramp gradients: 1:7 to 1:25 depending on target speed
- Target speed: 30-50 km/h (higher than circular humps due to flat-top comfort)
- Preferred over circular humps for bus routes and near pedestrian crossings (the flat top provides a comfortable crossing surface)

**Speed tables / raised pedestrian crossings:** A trapezoidal hump installed at a pedestrian crossing location. The flat top serves as the crossing surface, raised to footway level. Standard dimensions: 100 mm rise, 5.0 m flat top, 1.7 m ramps.

**Sinusoidal speed humps:** S-curve profile with a flatter initial rise than circular humps. More comfortable for cyclists. Standard dimensions: 100 mm total rise, 3.7 m total length (4 x 0.925 m quarter-wavelengths). Effect on vehicle speed is similar to circular humps.

**Rumble strips (transverse bar markings):** Raised bars across the carriageway to create noise and vibration alerting drivers. NOT a physical barrier -- they alert, not force.
- Types: milled (cut into the surface), raised (applied thermoplastic or epoxy), cast-in (concrete)
- Bar dimensions: typically 300 mm wide, 5-10 mm high, spaced 600-1000 mm apart
- One set = 6 bars. Number of sets depends on approach speed (1 set for <= 50 km/h, up to 4 sets for > 80 km/h)
- Used as advance warning of hazards, junctions, or speed reduction zones
- Colour: yellow on high-class roads, white on other roads (varies by country)

**Speed bumps (NOT recommended for most applications):** Short, abrupt raised sections (76-152 mm high, 0.3-1.0 m long). Reduce speed to approximately 5-10 km/h. Cause significant discomfort and potential vehicle damage. Only appropriate for car parks, private roads, and very low-speed areas. Not recommended on public roads carrying bus traffic or emergency vehicle routes.

### 1.2 Roadside Safety Barriers

Barriers prevent errant vehicles from leaving the road into hazardous areas. A barrier is itself a hazard -- it should only be installed when the consequences of hitting the barrier are less severe than the consequences of leaving the road.

**Barrier types:**

| Type | Flexibility | Deflection | Typical Use |
|------|-----------|-----------|-------------|
| W-beam guardrail | Flexible | 1.0-2.5 m | Embankments, fixed objects, standard rural roads |
| Thrie-beam guardrail | Semi-rigid | 0.6-1.5 m | Higher containment needs, bridge approaches |
| Wire rope barrier | Flexible | 1.5-3.0 m | Medians (wide), roadside with space |
| Concrete barrier (New Jersey/F-shape) | Rigid | 0 m | Medians (narrow), bridges, high-speed roads |
| Steel box beam | Semi-rigid | 0.5-1.0 m | Urban areas with limited space |

Reference `tables/barrier_types.json`

**Containment levels:** Barriers are rated by their ability to contain and redirect an impacting vehicle.
- EN 1317 system: N1 (lowest, light vehicles), N2, H1, H2, H3, H4a, H4b (highest, heavy vehicles)
- MASH/NCHRP 350 system: TL-1, TL-2, TL-3, TL-4, TL-5, TL-6
- Selection depends on: design speed, traffic volume, proportion of heavy vehicles, consequences of barrier penetration

**Barrier warrant analysis:** A barrier is warranted when a hazard exists within the clear zone and cannot be removed, relocated, or made breakaway. Common hazards: steep embankments (height > 3 m or slope steeper than 1V:3H), fixed objects (bridge piers, sign supports, utility poles), water bodies, opposing traffic (median barriers).

**Barrier length:** Must extend beyond the hazard in both directions. The length of need includes the hazard length plus runout length (the distance a vehicle travels from the edge of the road to the hazard at a shallow angle). Insufficient barrier length allows vehicles to travel behind the barrier and strike the hazard.

**End terminals and crash cushions:** The upstream end of a barrier is the most dangerous part. An unprotected barrier end acts as a spear. Types of end treatment:
- **Flared end:** The barrier curves away from the road. Acceptable for low-speed roads.
- **Turned-down end:** The barrier turns down into the ground. NOT recommended for speeds > 60 km/h (vehicles can launch off the ramp).
- **Energy-absorbing terminal (EAT):** The end section telescopes or deforms, absorbing impact energy. Required for high-speed roads.
- **Crash cushion / impact attenuator:** A freestanding device that absorbs energy from a head-on impact. Used at fixed objects (bridge piers, gore areas).

### 1.3 Delineation Devices

Delineation guides drivers by making the road alignment and boundaries visible, especially at night and in poor weather.

**Delineator posts:** Retroreflective posts placed at the road edge. Typically 1.0-1.2 m high with a retroreflective strip or lens. Spacing decreases on tighter curves:
- Tangent sections: 100-200 m spacing
- Curves: spacing based on curve radius, typically R/10 to R/3 (where R is the curve radius in metres), with a minimum of 10-15 m on sharp curves

**Chevron signs:** Arrow boards placed on the outside of horizontal curves, pointing in the direction of travel. They indicate the direction and severity of the curve. Multiple chevrons are used on sharp curves, spaced to maintain continuous visibility.

**Object markers:** Retroreflective markers placed on or near fixed objects close to the roadway (bridge piers, abutments, traffic islands, median noses). Types:
- Type 1: striped marker (diagonal stripes indicating which side to pass)
- Type 2: reflective marker on the object itself
- Type 3: delineator post with reflective element

### 1.4 Variable Message Signs (VMS)

VMS are electronic signs that display changeable messages for real-time traffic management.

**Types:**
- **Fixed LED matrix:** Permanently installed on overhead gantries or roadside poles. High-resolution, full colour or amber/red/green.
- **Portable/trailer-mounted:** Temporary signs used for construction zones, events, or incident management. Solar-powered or generator-powered.
- **Fibre-optic or rotating prism:** Older technology, being replaced by LED.

**Content principles:**
- Maximum 3 units of information per message (a unit = a discrete piece of information the driver needs to process)
- Message length: maximum 8 words, 4-8 characters per word
- Display time: minimum 1 second per word unit, minimum 4 seconds per message phase
- Legibility distance: 200-300 m depending on approach speed and letter height (minimum 400 mm character height)
- Messages should be in English and the applicable local language

**Applications:** Incident management, speed advisory, lane control, diversion routing, travel time information, weather warnings, construction zone warnings.

**Placement:** Must be visible from all traffic lanes. Not obstructing other traffic control devices. On expressways: 2 km ahead of interchange/exit, repeated every 500 m. Tilt 5-10 degrees from perpendicular to the road centreline for visibility.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Identify the need
  |-- Speed management needed? (village, school zone, trading centre)
      |--> Go to speed reduction device selection
  |-- Roadside hazard present? (embankment, fixed object, water)
      |--> Go to barrier warrant analysis
  |-- Curve delineation needed? (horizontal curves, visibility)
      |--> Go to delineation device selection
  |-- Real-time information needed? (expressway, incident management)
      |--> Go to VMS specification

Step 2: Speed reduction device selection
  |-- Determine target speed and approach speed
  |-- IF target speed <= 30 km/h AND short zone
      |--> Circular speed humps (spacing 50-75 m)
  |-- IF target speed 30-50 km/h OR bus route
      |--> Trapezoidal/plateau humps (preferred for bus comfort)
  |-- IF pedestrian crossing required at the device
      |--> Speed table / raised pedestrian crossing
  |-- IF advance warning only (no physical speed reduction)
      |--> Rumble strips / transverse bar markings
  |-- Always specify: advance warning signs (Skill #68), hump markings (Skill #67)

Step 3: Barrier warrant analysis
  |-- Determine clear zone width available
  |-- Determine hazard type and severity (embankment height, fixed object size)
  |-- IF hazard is within clear zone AND cannot be removed/relocated/breakaway
      |--> Barrier warranted
  |-- Select containment level based on design speed and traffic
  |-- Select barrier type based on containment level and working width available
  |-- Determine barrier length (hazard length + runout length both ends)
  |-- Specify end terminal treatment (EAT for > 60 km/h)

Step 4: Delineation device selection
  |-- Determine curve radius
  |-- Select delineator post spacing (tighter curves = closer spacing)
  |-- IF sharp curve (R < 200 m) --> add chevron signs on outside
  |-- IF fixed objects near road --> add object markers
  |-- Specify retroreflective grade for the design speed (higher speed = higher grade)

Step 5: VMS specification
  |-- Determine application (permanent or temporary)
  |-- Determine message content requirements
  |-- Select VMS type (fixed LED or portable)
  |-- Determine placement location and legibility distance
  |-- Specify mounting structure and power requirements
  |--> ESCALATE if system design (multiple VMS, central control) needed
```

---

## 3. Professional Judgment (Universal)

### 3.1 Speed Hump Appropriateness

Speed humps should NOT be used on:
- Emergency vehicle routes (unless plateau type agreed with emergency services)
- Bus routes (unless plateau type with flat-top length >= bus wheelbase, typically 6-8 m)
- Roads with design speed > 60 km/h (use rumble strips or geometric measures instead)
- Roads with high heavy vehicle proportion (vehicles may detour through adjacent areas)
- Grades > 8% (drainage concerns and braking distance on descent)

Speed humps are most effective when:
- Approach speed is 40-60 km/h (transition zone into a lower-speed area)
- Combined with entry gates (narrowing) at zone entry points
- Spacing maintains the target speed between humps (typically 50-125 m depending on target speed)
- Associated with pedestrian crossing facilities

### 3.2 Barrier vs Clear Zone

The first option is always to remove the hazard. If a fixed object can be relocated or made breakaway (e.g., frangible sign support), this is preferred over installing a barrier. A barrier is warranted only when the hazard cannot be eliminated and the barrier reduces overall crash severity.

**Cost-effectiveness:** Barrier installation and maintenance costs should be proportional to the risk. Low-volume roads may not justify expensive barrier systems -- consider lower-cost alternatives such as delineation improvement, embankment flattening, or clear zone widening.

### 3.3 VMS Message Design

Messages must be clear, concise, and actionable. Avoid:
- Advertising or non-safety messages during peak periods
- Complex sentences requiring high reading time
- Messages that contradict fixed signs
- Displaying information that is no longer current

---

## 4. Common Errors (Universal)

1. **Speed humps without warning signs/markings:** Every speed hump requires advance warning signs (Skill #68) and hump markings (Skill #67). Unmarked humps are a safety hazard, especially at night.
2. **Guardrail too short:** The barrier must extend beyond the hazard in both directions by at least the runout length. Short barriers allow vehicles to travel behind and strike the hazard.
3. **Crash cushion omitted at barrier ends:** The upstream end of any barrier on a high-speed road (> 60 km/h) must have an energy-absorbing terminal. Untreated barrier ends are a spearing hazard.
4. **Delineator spacing too wide on sharp curves:** On curves with R < 100 m, delineator spacing should be 10-15 m maximum. Wider spacing creates gaps in driver guidance.
5. **Speed bumps on public roads:** Speed bumps (abrupt, short devices) cause vehicle damage and are not recommended on any public road. Use properly designed speed humps instead.
6. **VMS message too long:** More than 3 units of information or 8 words cannot be read at driving speed. Drivers who cannot read the message may slow suddenly or ignore it.
7. **Turned-down barrier end at high speed:** Turned-down ends on roads with speeds > 60 km/h can launch vehicles. Use energy-absorbing terminals instead.

---

## 5. Defaults (Universal)

When site-specific data is unavailable, use the following defaults. Flag all defaults clearly in outputs.

| Parameter | Default Value | Notes |
|-----------|---------------|-------|
| Circular hump height | 100 mm | Standard rise for 30 km/h target |
| Circular hump chord | 3.7 m | Standard for 25-30 km/h target |
| Trapezoidal hump height | 75-100 mm | Lower values for bus routes |
| Trapezoidal flat-top length | 2.5 m minimum | Extend for bus wheelbase |
| Rumble strip height | 5-10 mm | Thermoplastic or cold-applied |
| Rumble strip bar width | 300 mm | Standard |
| Rumble strip bar spacing | 600 mm | For approach speeds <= 50 km/h |
| W-beam deflection distance | 1.0-2.5 m | Working width behind barrier |
| Delineator post spacing (tangent) | 100-200 m | Rural roads |
| Delineator post spacing (curves) | R/10 to R/3 | Minimum 10 m |
| VMS character height | 400 mm | For 200-300 m legibility |
| VMS min display time | 4 seconds | Per message phase |

---

## 6. Validation (Universal)

Before finalising device specifications, check:

1. **Hump height within range:** 50-100 mm for humps. > 100 mm causes vehicle damage.
2. **Barrier length exceeds hazard:** Barrier length >= hazard length + runout length at both ends.
3. **End terminal appropriate for speed:** Energy-absorbing terminal required for speeds > 60 km/h.
4. **Delineator spacing appropriate for curve:** Spacing decreases with tighter curves. Minimum 10 m.
5. **VMS message readable at speed:** Message length <= 3 information units. Display time >= 4 seconds.
6. **Containment level matches design speed:** Higher speeds require higher containment levels.
7. **Speed humps not on restricted routes:** Confirm the road is not an emergency vehicle primary route.
8. **Warning signs specified for all devices:** Every speed hump, barrier end, and hazard requires appropriate warning signs (Skill #68).
9. **Device markings specified:** All humps and barriers require reflective markings (Skill #67).

---

## 7. Escalation Triggers (Universal)

Refer to a specialist when:

- **High-containment barrier (H2 or above / TL-4+):** Requires structural design and crash testing verification
- **Barrier on bridge or structure:** Barrier-to-bridge rail transitions require specialist design
- **VMS system design:** Multiple VMS with central control, communications design, and software
- **Speed humps on roads with design speed > 60 km/h:** Alternative geometric or regulatory measures should be considered
- **Crash cushion selection:** Impact attenuator selection for gore areas or bridge piers at high speed
- **Barrier in median with narrow working width:** May need rigid barrier with zero deflection
- **Community dispute over speed humps:** Political/social decision, not purely engineering

---

## 8. Interfaces (Universal)

### 8.1 Inputs From Other Skills

| Source Skill | Data Received |
|-------------|---------------|
| Skill #13 (Design Standards Selection) | Road class, design speed, speed limit |
| Skill #20 (NMT Facilities) | Speed management zone layout, crossing locations, trading centre boundaries |
| Skill #17 (Cross-Section Design) | Road width, clear zone width, shoulder width |

### 8.2 Outputs To Other Skills

| Destination Skill | Data Provided |
|-------------------|---------------|
| Skill #67 (Road Marking Design) | Device marking requirements (hump markings, barrier delineation) |
| Skill #68 (Traffic Sign Design) | Warning sign requirements (advance warning of humps, barriers, VMS) |
| Skill #69 (Traffic Signal Design) | VMS coordination with signal systems (if applicable) |
| Skill #61 (Road Safety Audit) | Device specifications for safety review |

---

## 9. Procedure (Universal)

1. **Identify the need:** Determine which category of device is required (speed reduction, barrier, delineation, VMS) based on the road context and design inputs.
2. **Select the device:** Use Section 2.1 decision logic to select the appropriate device type.
3. **Size the device:** Apply the specifications from Section 1 and the JSON tables. Use country module values where available.
4. **Specify associated treatments:** For every device, specify the required warning signs (reference Skill #68), device markings (reference Skill #67), and any geometric adjustments (reference Skill #20 for speed management zones).
5. **Check validation criteria:** Apply Section 6 checks.
6. **Document:** Produce device specification with dimensions, materials, placement, and associated treatments.

---

## 10. Output Format (Universal)

### Device Specification

```
ROAD: [Name/ID]
ROAD CLASS: [from Skill #13]
DESIGN SPEED: [km/h]
LOCATION: [chainage or description]
DEVICE CATEGORY: [speed reduction / barrier / delineation / VMS]

DEVICE SPECIFICATION:
  Type: [e.g., trapezoidal speed hump, W-beam guardrail, delineator posts]
  Dimensions: [height, length, width, spacing as applicable]
  Material: [e.g., asphalt, W-beam steel, retroreflective sheeting grade]
  Standard: [reference applicable standard]

PLACEMENT:
  [Location details, spacing, extent]

ASSOCIATED TREATMENTS:
  Warning signs: [type and placement per Skill #68]
  Markings: [type per Skill #67]
  Other: [e.g., lighting, PBU, drainage]

NOTES / ASSUMPTIONS:
  [List all assumptions, defaults used, and flags]

ESCALATION:
  [Any escalation triggers identified]
```

**Preliminary design disclaimer:** All device specifications are preliminary/screening level. Detailed design requires site-specific surveys, geotechnical investigation (for barrier foundations), and compliance verification with the applicable national standard. Professional review is required before implementation.
