# Intersection Design -- Kenya Module

> **Parent Skill:** #19 Intersection & Junction Design
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.3: Geometric Design of Highways, Rural Roads and Urban Roads (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.3 | 2025 | Chapters 8-12 (Junctions, Roundabouts, Interchanges, Traffic Calming, Safety) | Current -- mandatory for all classified roads in Kenya |

### M.1.2 Institutional Context

Same as Skill #13 Kenya module. Kenya junction design is governed by RDM 1.3 Chapters 8-12. The RDM covers at-grade junctions, roundabouts, and grade-separated interchanges.

### M.1.3 Standard Philosophy

Kenya RDM 1.3 provides comprehensive junction design guidance drawn from SANRAL, SATCC, and AASHTO practice. Junction type selection is based on traffic volume warrants, road classification, and design speed. The RDM uses ISD (Intersection Sight Distance) = 0.278 x V_major x t_g, where t_g is the time gap for minor road vehicles. Kenya-specific considerations include matatu stops near junctions, boda-boda staging areas, and high NMT volumes at urban junctions.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Junction visibility distances:** Reference JSON table.

--> `tables/kenya_junction_visibility.json`

Contains intersection sight distances (Table 3.18), decision sight distances (Table 3.19), and pedestrian sight distances (Table 4.13).

**Table KJ.1: Intersection Sight Distance (Table 3.18, RDM 1.3)**

| Design Speed of Major Road (km/h) | 50 | 60 | 70 | 85 | 100 | 120 |
|-----------------------------------|----|----|----|----|-----|-----|
| ISD (m) | 70 | 90 | 120 | 160 | 215 | 295 |

**Source:** Kenya RDM 1.3, Table 3.18 (Verified from PDF)

**Table KJ.2: Decision Sight Distance at Intersections (Table 3.19, RDM 1.3)**

| Design Speed (km/h) | 50 | 60 | 80 | 100 | 120 |
|---------------------|----|----|----|----|-----|
| Sight distance to turn lane (m) | 150 | 200 | 250 | 350 | 400 |

**Source:** Kenya RDM 1.3, Table 3.19 (Verified from PDF)

**Table KJ.3: Pedestrian Sight Distance at Crossings (Table 4.13, RDM 1.3)**

| Design Speed (km/h) | 2-Lane (m) | 3-Lane (m) | 4-Lane (m) |
|---------------------|-----------|-----------|-----------|
| 60 | 85 | 130 | 170 |
| 70 | 100 | 150 | 200 |
| 80 | 115 | 170 | 230 |
| 100 | 140 | 215 | 285 |
| 120 | 170 | 255 | 340 |

**Source:** Kenya RDM 1.3, Table 4.13 (Verified from PDF)

### M.2.2 Junction Type Selection

Kenya RDM Chapter 8 provides junction type selection guidance based on traffic volumes and road classification. The main junction types are:

1. **Simple priority junction** -- low-volume intersections, yield/stop control
2. **Channelised priority junction** -- medium volumes, with traffic islands and turning lanes
3. **Roundabout** -- moderate to high volumes where flow balance exists between approaches
4. **Signalised intersection** -- high volumes in urban areas
5. **Grade-separated interchange** -- expressways and high-volume arterials (Chapter 10)

**Key warrants for channelisation:** Turning lanes (deceleration + storage) are required when turning volumes exceed thresholds. Auxiliary lane width: 3.0 m (Section 4.3.3).

**Roundabout design:** Kenya RDM Chapter 9 covers roundabout design including inscribed circle diameter (minimum 28 m for mini-roundabouts, typical 40-60 m for normal), entry widths, and deflection requirements.

### M.2.3 Kenya-Specific Junction Considerations

**Matatu stops near junctions:** By common practice in Kenya, buses and matatus share mixed traffic lanes (Section 4.11.1). Matatu stages are often located near junctions. The RDM recommends bus stops should not be immediately before intersections (restrict sight distance) but ideally 50 m after (Section 4.12).

**Boda-boda (motorcycle) access at junctions:** Kenya's motorcycle fleet has grown exponentially. At urban junctions (UA, UC), motorcycle staging areas should be considered. Motorcyclists are vulnerable at roundabouts and traffic circles (Section 3.6).

**Pedestrian crossings at junctions:** Refuge islands should be at least 1.5 m wide (preferably 2.0 m) per Section 4.13. Pedestrian sight distances from Table 4.13 must be checked.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Junction type selection
  +-- Low volume (minor/minor) -> simple priority
  +-- Medium volume -> channelised priority with turning lanes
  +-- Balanced flows -> roundabout (inscribed circle >= 28 m)
  +-- High volume urban -> signalised intersection
  +-- Expressway (DR1) -> grade-separated interchange
  \-- Check pedestrian crossing needs per Table 4.13

Step 3 (Kenya): Visibility splay
  +-- ISD from Table 3.18 based on major road design speed
  +-- Decision sight distance from Table 3.19 for complex junctions
  +-- Pedestrian sight distance from Table 4.13 for crossings
  \-- Minimum absolute R at junction = 15 m (Section 5.8)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Matatu and boda-boda traffic significantly affects junction design.** At UC road junctions, matatu boarding/alighting creates pedestrian conflicts. Boda-boda staging areas at junctions create congestion and sight distance obstructions. These are Kenya-specific operational considerations not found in the geometric standard but critical for safe junction operation.

**Speed management at junctions through villages.** The RDM includes Chapter 11 on traffic calming. Entry gates, speed humps, and raised pedestrian crossings at village junctions are essential safety measures.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using Uganda junction visibility values.** Kenya ISD values (Table 3.18) differ from Uganda's visibility splay values (MoWT Figures 8-11/8-12). Use the Kenya table.
2. **Not checking pedestrian sight distance.** Table 4.13 provides specific pedestrian sight distances by design speed and number of lanes. This is often overlooked.
3. **Ignoring matatu stage impacts on junction operation.** A matatu stage within 50 m of a junction creates queuing and sight distance problems.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| ISD time gap (t_g) | Per Table 3.18 | Not specified | ASSUMED: Standard time gap used for ISD calculation per Table 3.18 | RDM 1.3, Section 3.13.5 |
| Minimum junction radius | 15 m | Not specified | ASSUMED: 15 m minimum junction kerb radius per Section 5.8 | RDM 1.3, Section 5.8 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Junction ISD | Per Table 3.18 | -- | m | RDM 1.3, Table 3.18 | Reject if below ISD for major road speed |
| Junction turning radius | 15 | -- | m | RDM 1.3, Section 5.8 | Reject if < 15 m |

### M.5.2 Standards Compliance Checks

- **Check:** ISD available >= ISD required from Table 3.18
- **Pass condition:** Available ISD >= required ISD
- **Fail action:** SENIOR REVIEW -- ISD [X]m below required [Y]m at [speed] km/h. Requires sight triangle clearance or Departure.

### M.5.3 Departures / Relaxations Process

Same formal departures process as other Kenya modules (Section 1.7).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| ISD obstructed | Collision risk from lack of visibility | SENIOR REVIEW -- ISD obstructed to [X]m, required [Y]m. Options: relocate junction, remove obstruction, change type. |
| Matatu stage within 50 m of junction | Operational and safety concern | NOTE -- Matatu stage near junction. Consider relocation to > 50 m from junction per Section 4.12. |
| High motorcycle traffic at roundabout | Motorcycle vulnerability | NOTE -- High motorcycle traffic. Consider motorcycle-specific provisions per Section 3.6. |

---

## M.7 Worked Example -- Kenya

### Example: Priority Junction on Class B Road

**Given:**
- Major road: Class B (KeNHA), design speed 90 km/h
- Minor road: Class D (KeRRA), AADT 400
- Junction type: Priority T-junction
- Flat terrain

**Solution:**

**Step 1 -- ISD requirement:**
From Table KJ.1: At 90 km/h (interpolate between 85 and 100), ISD approximately 185 m

**Step 2 -- Decision sight distance:**
From Table KJ.2: At 90 km/h (interpolate), approximately 300 m to turning lane

**Step 3 -- Minimum junction radius:**
15 m absolute minimum. Design vehicle DV5 (truck + semi-trailer) requires 13.7 m turning radius. 15 m > 13.7 m -- adequate.

**Step 4 -- Turning lane requirement:**
Auxiliary lane width: 3.0 m (Section 4.3.3). Deceleration length based on speed reduction from 90 km/h.

**Result:**

| Parameter | Value |
|-----------|-------|
| ISD required | ~185 m |
| Decision sight distance | ~300 m |
| Minimum junction radius | 15 m |
| Design vehicle | DV5 |
| Junction type | Channelised priority T |

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Geometric Design, Part 3: Geometric Design of Highways, Rural Roads and Urban Roads (RDM 1.3)*, 2025. Chapters 8-12, Section 3.13.5.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- ISD from Table 3.18, decision SD from Table 3.19, pedestrian SD from Table 4.13 verified against Kenya RDM 1.3 PDF. Matatu and boda-boda considerations included. |
