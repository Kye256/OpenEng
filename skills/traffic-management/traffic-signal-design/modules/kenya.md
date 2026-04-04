# Kenya Module: Traffic Signal Design

> **Parent Skill:** #69 (Traffic Signal Design)
> **Country:** Kenya
> **Standards:** Kenya RDM 6.3 -- Traffic Signals and Communication System (2025)
> **Last Updated:** 2026-04-04

---

## M.1 Standards & Institutional Context

| Standard | Document | Scope |
|----------|----------|-------|
| Kenya RDM 6.3 | Traffic Signals and Communication System (2025) | Signal warrants, data collection, equipment, geometric design, phasing, detection, controllers, electrical, maintenance, coordination, timing |
| Kenya RDM 1.3 | Geometric Design of Highways, Rural and Urban Roads (2025) | Intersection geometric design, roundabout capacity, signal time design methodology |
| Kenya RDM 6.1 | Road Marking (2025) | Marking at signalised intersections |
| Kenya RDM 6.2 | Traffic Signs (2025) | Signs at signalised intersections |

**Institutional context:** Kenya's road network is managed by three road authorities:
- **KeNHA** (Kenya National Highways Authority) -- Class A and B national trunk roads and expressways
- **KeRRA** (Kenya Rural Roads Authority) -- Class C, D, and E rural roads
- **KURA** (Kenya Urban Roads Authority) -- Urban roads within declared urban areas

Signal installations on national roads (Class A and B) require KeNHA approval. Urban signal installations require KURA coordination. RDM 6.3 applies to all road classes.

**Standard philosophy:** RDM 6.3 is a comprehensive 116-page manual covering the complete signal design process from warrant analysis through to maintenance. It is closely aligned with international practice (Austroads, UK, FHWA) and emphasises vehicle-actuated control over fixed-time where detection is feasible. Kenya uses left-hand traffic.

**Cross-references:** RDM 6.3 must be read with RDM 1.3 (geometric design at intersections and signal time methodology), RDM 6.1 (road marking at signal sites), and RDM 6.2 (traffic signs at signal sites). For Skill #13 gateway context, refer to the Kenya module for Design Standards Selection.

---

## M.2 Country-Specific Knowledge

### M.2.1 Signal Warrant Criteria (RDM 6.3 Chapter 2)

Kenya RDM 6.3 defines five warrants for traffic signal installation. Reference `tables/kenya_signal_warrants.json` for specific threshold values.

**Warrant 1 -- Minimum vehicle volumes:** Satisfied when pcu volumes on major and minor approaches exceed Table 2.1 values for 8 or more hours on an average day. Counts are conducted over a 24-hour period, usually on a Tuesday or Thursday during school terms. The highest hourly traffic for the four directions is used.

**Warrant 2 -- Interruption of continuous traffic:** Applied when major road traffic is so heavy that minor road traffic suffers excessive delay or hazard. Uses Table 2.2 thresholds for any 8-hour period.

**Warrant 3 -- Pedestrian volume:** Applied when pedestrians experience excessive delay crossing the major road. Requires 600+ pcu/hr on the major road (both approaches) and 150+ pedestrians/hr crossing. Also applicable with a raised median >= 1.5 m width and 1000+ pcu/hr. Reduced thresholds (70%) apply where the 85th percentile speed exceeds 60 km/h or the intersection is in a built-up area with population less than 150,000.

**Warrant 4 -- Crash experience (RDM 6.3 Section 2.2.2):** Applied when 5 or more crashes with injury and property damage occurred in the previous 12-month period, each of which could have been prevented by a traffic signal, and alternatives were tried but were not effective.

**Warrant 5 -- Combination of warrants (RDM 6.3 Section 2.2.3):** If no single warrant is met, two or more warrants may be considered together if they meet 80% or more of their stated criteria. Adequate trial of other remedial measures should be tried before installing a signal.

**PCU values (RDM 6.3 Table 2.3):** Kenya defines specific PCU values for traffic signal design that differ from the rural standard and roundabout design values. Key values: motorcycle = 0.33, car = 1.0, microbus = 1.2, minibus = 2.0, bus = 2.0, HGV = 2.25, articulated HGV = 3.0. Note that the motorcycle PCU for signal design (0.33) is lower than the rural standard (0.5).

### M.2.2 Phasing (RDM 6.3 Chapter 7)

Kenya RDM 6.3 uses left-hand traffic, so:
- **Right turn (RT)** is the nearside turn (towards the near kerb) -- relatively low conflict
- **Left turn (LT)** is the offside turn (across oncoming traffic) -- high conflict, may require arrow control

**Phase design principles (RDM 6.3 Chapter 7):**
- Start with 2-phase control (simplest, per Figure 7.5)
- Add RT protected phases if RT volumes are high (leading RT, lagging RT, or split-approach)
- LT movements require careful phasing -- complementary LT and RT arrow control at T-junctions (Figure 7.10, 7.11)
- Diamond Overlap phasing (Section 7.15) allows right turns from opposing directions to operate independently
- Lead-Lag RT phasing (Section 7.16) can improve coordination but introduces the "lagging right turn problem" (amber trap)

**Pedestrian movements (RDM 6.3 Section 7.19):**
- Parallel pedestrian movement operates concurrently with vehicle through phases
- Protected pedestrian movements use red arrows to hold turning traffic during the Walk period
- Mid-block pedestrian signal crossings: main road green continues until PBU demand
- Pelican crossings: vehicle-actuated with pedestrian demand, flashing amber after pedestrian clearance
- Crossing width determines the Walk interval: Walk = 7 + (W / 1.2) seconds

### M.2.3 Signal Timing (RDM 6.3 Chapter 14)

**Green times and cycle time (Section 14.2.1):** RDM 6.3 references Webster's formula for optimum cycle length. The manual emphasises that fixed-time plans are the baseline, with vehicle-actuated control providing improved efficiency.

**Key timing parameters per RDM 6.3:**

| Parameter | Kenya RDM 6.3 Value | Reference |
|-----------|---------------------|-----------|
| Amber time | 3 seconds standard; speed-dependent values in Table 14.3 | Section 14.5.9 |
| All-red time | Calculated from clearance distance and approach speed (Figure 14.8) | Section 14.5.10 |
| Minimum green (vehicle) | 7 seconds typical | Section 14.5.2 |
| Variable Initial Green (VIG) | 0-20 seconds in 1-second steps | Section 14.5.4 |
| Maximum extension green | 0-250 seconds in 1-second steps | Table 10.2 |
| Late start | 0-20 seconds in 1-second steps | Table 10.2 |
| Pedestrian Walk (Green Man) | 0-40 seconds in 1-second steps | Table 10.3 |
| Pedestrian Clearance 1 | 0-40 seconds in 1-second steps | Table 10.3 |
| Pedestrian Clearance 2 | 0-40 seconds in 1-second steps | Table 10.3 |

**Amber time by approach speed (Table 14.3):** For deceleration rate of 3.0 m/s:
- 30 km/h: 2.8s
- 40 km/h: 3.1s
- 50 km/h: 3.6s
- 60 km/h: 4.1s
- 70 km/h: 4.7s (use 5.0s in practice)

**All-red time (Section 14.5.10):** Calculated as R = (clearance distance) / (approach speed). Figure 14.8 provides a graphical relationship between speed and clearance distance for the all-red interval.

### M.2.4 Equipment (RDM 6.3 Chapter 4)

**Signal head types:** Full roundel (circular) aspects are standard. Arrow aspects for controlled turns. Pedestrian aspects with Walk (green walking figure) and Don't Walk (red standing figure). Cycle aspects where cycle lanes are provided. Aspect size: 200 mm standard, 300 mm for primary signal heads.

**Signal poles and mast-arms (Section 4.7):** Primary poles at the stop line on the left side of the approach. Secondary poles on the downstream side. Mast-arms required where overhead visibility is needed (heavy vehicle approaches, multi-lane roads). Minimum mounting height: 2.5 m to bottom of lowest signal head (post-mounted); 5.5 m clearance for overhead/mast-arm signals.

**LED vs incandescent:** RDM 6.3 notes that modern signal heads are usually LED type, providing clearer visibility and longer life.

### M.2.5 Detection (RDM 6.3 Chapter 9)

**Inductive loop detectors:** Standard detection method. Loop shape: rectangular or square (2.0 m x 2.0 m typical for stop-line). Placement within 200 mm of lane markings. Standard detection frequency: 20-170 kHz.

**Stop-line loops (Section 9.7.8):** Placed at the stop line for each lane. Used for presence detection (locking demand). Dimensions per Table 9.1 based on lane width.

**Advance/passage detectors (Section 9.7.9):** Placed 30-50 m upstream of the stop line. Used for gap detection and speed measurement in VA control.

**Push Button Units (Section 9.8.3):** Mounted at 1.1 m height, within 1 m of crossing projection and no more than 2 m from kerb line. Each crossing has PBUs on both sides. Audio-tactile facilities where visually impaired pedestrians are expected (spacing > 2 m between audio-tactile PBUs).

### M.2.6 Controller Types (RDM 6.3 Chapter 10)

Kenya RDM 6.3 defines the following operational modes:
1. **Fixed-time mode** -- preset timings, simplest, suitable for basic coordination
2. **Vehicle-actuated (VA) -- isolated mode** -- variable durations from detector inputs
3. **Semi-actuated** -- detection on minor approaches only, main road holds green
4. **Link-isolated mode** -- controller operates isolated but monitored by central computer
5. **Full link mode (cable-less/Flexilink)** -- synchronised clocks for coordination
6. **Hurry call mode** -- emergency vehicle or railway priority
7. **Central computer control** -- central master determines phase durations
8. **Manual control mode** -- police override
9. **Maintenance mode** -- technician access
10. **Fallback mode** -- flashing amber on all approaches (fault condition)

**Conflict monitoring (Section 10.4):** Mandatory in all modern controllers. Any conflicting display triggers flashing amber or switch-off.

### M.2.7 Signal Coordination (RDM 6.3 Chapter 13)

**Coordination methods:** Local interlinking by cable, cable-less linking (Flexilink) by synchronised clocks, and area-wide traffic control (ATC) systems such as SCATS. Time-distance diagrams used for coordination design (Section 13.6).

**ATC systems (Section 13.4):** PC-based ATC systems with SCATS or equivalent software are recommended for urban areas. The central computer determines phase durations, cycle lengths, and offsets based on detector data.

### M.2.8 Electrical Requirements (RDM 6.3 Chapter 11)

Cable specification: KS 194 (PVC insulated). Cables installed underground. Multi-core cables with 20 or 30 cores per run. Earth core: green/yellow striped. Neutral: black or blue. Signal display live feed: white. External equipment live feed: brown.

Main power supply: 32 AMP fuse-unit. UPS backup for critical intersections.

### M.2.9 Maintenance (RDM 6.3 Chapter 12)

Commissioning checklist (Section 12.1) includes alignment checks, lamp testing, conflict monitoring verification, detector calibration, and controller program verification. Monitoring checklist (Section 12.3) for ongoing evaluation. Urgent maintenance required for knocked-down poles, burnt-out lamps, and controller faults.

---

## M.3 Procedure Adjustments

When applying the universal procedure (SKILL.md Section 9) in Kenya:

1. **Warrant analysis:** Use Kenya-specific thresholds from `tables/kenya_signal_warrants.json` (RDM 6.3 Tables 2.1, 2.2). Use Kenya PCU values from Table 2.3 (signal design column).
2. **Phasing:** Kenya drives on the left. Right turn is the nearside turn; left turn is the offside turn (high conflict). Apply RDM 6.3 Chapter 7 phasing rules.
3. **Timing:** Use Kenya amber time values from RDM 6.3 Table 14.3. Calculate all-red from Figure 14.8 or the formula.
4. **Equipment:** Specify signal heads, poles, and mast-arms per RDM 6.3 Chapter 4 and 8. Primary signal face on the left of the approach (left-hand traffic).
5. **Detection:** Specify loop detectors per RDM 6.3 Chapter 9. PBU placement per Section 9.8.3.

---

## M.4 Additional Considerations

**Motorcycle traffic:** Kenya has high motorcycle (boda-boda) volumes. Motorcycles have a PCU value of 0.33 for signal design (lower than the rural standard of 0.5), reflecting their ability to filter through traffic and discharge quickly at signals. However, motorcycle safety at signals is a concern -- consider cycle-specific detection and advanced stop areas.

**BRT and bus priority (Section 4.12.6):** Kenya RDM 6.3 addresses bus/BRT priority at signals through transponder-based detection and special signal phases. Relevant for Nairobi BRT corridors.

**Speed breakers not covered:** Note that RDM 6.3 covers traffic signals only. Speed reduction devices are covered by RDM 6.4 (see Skill #70).

---

## M.5 Limitations & Knowledge Gaps

- RDM 6.3 does not provide explicit signal timing design methodology (e.g., Webster's formula parameters). It refers to RDM 1.3 for signal time design methodology. The universal SKILL.md Section 1.3 provides the necessary formulas.
- Detailed HCM-style capacity analysis is not covered. RDM 6.3 is a design and equipment manual, not a capacity manual.
- SCATS/ATC system design requires specialist input beyond the scope of RDM 6.3 Chapter 13.

---

## M.6 References

- Kenya RDM 6.3: Traffic Signals and Communication System (2025), Ministry of Roads and Transport
- Kenya RDM 1.3: Geometric Design of Highways, Rural and Urban Roads (2025)
- Kenya RDM 6.1: Road Marking (2025)
- Kenya RDM 6.2: Traffic Signs (2025)

---

## M.7 Changelog

| Date | Change | Author |
|------|--------|--------|
| 2026-04-04 | Initial Kenya module created from RDM 6.3 | OpenEng |

---

## M.8 Cross-References

- **Skill #13 Kenya module** -- Road classification, design speed context, institutional framework
- **Skill #19 Kenya module** -- Intersection geometric design, junction visibility
- **Skill #67 Kenya module** -- Road marking at signalised intersections (RDM 6.1)
- **Skill #68 Kenya module** -- Traffic signs at signalised intersections (RDM 6.2)
- **Skill #70 Kenya module** -- Other traffic control devices (RDM 6.4)
