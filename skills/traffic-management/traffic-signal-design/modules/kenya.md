# Kenya Module: Traffic Signal Design

> **Parent Skill:** #69 (Traffic Signal Design)
> **Country:** Kenya
> **Standards:** Kenya RDM 6.3 -- Traffic Signals and Communication System (2025)
> **Last Updated:** 2026-04-05

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

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Signal warrant analysis
  +-- Count traffic volumes using Kenya PCU values (Table 2.3)
  |     +-- Motorcycle = 0.33, car = 1.0, minibus = 2.0, HGV = 2.25
  |
  +-- Check Warrant 1 (minimum vehicle volumes)
  |     +-- Compare major and minor pcu/hr against Table 2.1
  |     +-- Must satisfy for 8+ hours on average day
  |
  +-- Check Warrant 2 (interruption of continuous traffic)
  |     +-- Compare major road volume and minor road delay against Table 2.2
  |
  +-- Check Warrant 3 (pedestrian volume)
  |     +-- Major road >= 600 pcu/hr AND pedestrians >= 150/hr?
  |     +-- Apply 70% reduction if 85th percentile speed > 60 km/h
  |
  +-- Check Warrant 4 (crash experience)
  |     +-- 5+ preventable crashes in 12 months?
  |
  +-- Check Warrant 5 (combination)
  |     +-- Any two warrants at >= 80%?
  |
  +-- Any warrant satisfied?
        +-- Yes: proceed to phasing design
        +-- No: document warrants not met, consider alternative treatments

Step 3 (Kenya): Phasing design
  +-- Start with 2-phase (Figure 7.5)
  +-- Left turn volume high?
  |     +-- Yes: add protected LT phase (arrow control)
  +-- Pedestrian demand?
  |     +-- Yes: add Walk phase, calculate Walk = 7 + (W / 1.2) seconds
  +-- T-junction?
        +-- Yes: consider complementary LT/RT arrow control (Figures 7.10/7.11)

Step 4 (Kenya): Timing calculation
  +-- Amber time from Table 14.3 based on approach speed
  +-- All-red from Figure 14.8 (clearance distance / approach speed)
  +-- Minimum green = 7 seconds
  +-- Pedestrian Walk = 7 + (crossing width / 1.2) seconds
  +-- Cycle time from Webster's formula or practical constraints (30-120s)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Motorcycle traffic:** Kenya has high motorcycle (boda-boda) volumes. Motorcycles have a PCU value of 0.33 for signal design (lower than the rural standard of 0.5), reflecting their ability to filter through traffic and discharge quickly at signals. However, motorcycle safety at signals is a concern -- consider cycle-specific detection and advanced stop areas.

**BRT and bus priority (Section 4.12.6):** Kenya RDM 6.3 addresses bus/BRT priority at signals through transponder-based detection and special signal phases. Relevant for Nairobi BRT corridors.

**Vehicle-actuated control preference:** RDM 6.3 emphasises VA control over fixed-time wherever detection infrastructure is feasible. Fixed-time should be considered only where detection is impractical or where coordination with adjacent signals requires fixed cycle lengths.

**Speed breakers not covered:** Note that RDM 6.3 covers traffic signals only. Speed reduction devices are covered by RDM 6.4 (see Skill #70).

### M.3.3 Common Errors (Kenya-Specific)

1. **Using fixed-time when vehicle-actuated control is feasible.** RDM 6.3 strongly favours VA control. Specifying fixed-time without justifying why VA is not practical is a design deficiency.
2. **Wrong PCU value for motorcycles.** The signal design PCU for motorcycles is 0.33 (Table 2.3), not the rural standard of 0.5. Using 0.5 overestimates motorcycle traffic load at signals.
3. **Omitting pedestrian phases at high-pedestrian intersections.** Where pedestrian volumes exceed 150/hr crossing the major road, Warrant 3 applies and a pedestrian phase must be evaluated.
4. **Not checking all five warrants.** Warrant 5 (combination) allows signals where no single warrant is met but two or more are at 80%. Checking only Warrants 1-2 and stopping misses valid installations.
5. **Using wrong amber time.** Amber time depends on approach speed (Table 14.3), not a blanket 3 seconds. At 60 km/h the correct value is 4.1 seconds.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Minimum green (vehicle) | 7 s | All approaches | ASSUMED: 7 s minimum green per Section 14.5.2 | RDM 6.3, Section 14.5.2 |
| Amber time | 3.6 s | 50 km/h approach speed | ASSUMED: 3.6 s amber per Table 14.3 at 50 km/h | RDM 6.3, Table 14.3 |
| Motorcycle PCU | 0.33 | Signal warrant analysis | ASSUMED: motorcycle PCU 0.33 per Table 2.3 | RDM 6.3, Table 2.3 |
| Pedestrian Walk time | 7 + (W / 1.2) s | Crossing width W in metres | ASSUMED: Walk formula per Section 7.19 | RDM 6.3, Section 7.19 |
| PBU mounting height | 1.1 m | All crossings | ASSUMED: 1.1 m PBU height per Section 9.8.3 | RDM 6.3, Section 9.8.3 |
| Cycle length range | 30-120 s | Fixed-time or VA maximum | ASSUMED: practical cycle length range | RDM 6.3, Section 14.2.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Cycle length | 30 | 120 | s | RDM 6.3, Section 14.2.1 | Warn if outside practical range; cycles >120 s indicate capacity problem |
| Minimum green (vehicle) | 7 | -- | s | RDM 6.3, Section 14.5.2 | Reject if <7 s; insufficient for driver perception-reaction |
| Amber time | 2.8 | 5.0 | s | RDM 6.3, Table 14.3 | Must match Table 14.3 for approach speed; reject if outside range |
| Pedestrian Walk | 7 | 40 | s | RDM 6.3, Table 10.3 | Minimum 7 s; maximum 40 s per controller limits |
| All-red | 0.1 | -- | s | RDM 6.3, Section 14.5.10 | Must be >0; calculated from clearance distance / approach speed |
| PBU height | 1.0 | 1.2 | m | RDM 6.3, Section 9.8.3 | Nominal 1.1 m; reject if outside accessible range |

### M.5.2 Standards Compliance Checks

- **Check:** All five warrants evaluated before recommending signals
- **Standard:** RDM 6.3, Section 2.2
- **Pass condition:** Warrant analysis documents all five warrant types (volume, interruption, pedestrian, crash, combination)
- **Fail action:** NOTE -- Incomplete warrant analysis. All five Kenya warrants must be evaluated per RDM 6.3 Section 2.2.

- **Check:** PCU values match Kenya signal design table
- **Standard:** RDM 6.3, Table 2.3
- **Pass condition:** Motorcycle PCU = 0.33; bus/minibus PCU = 2.0; HGV PCU = 2.25
- **Fail action:** SENIOR REVIEW -- PCU values do not match RDM 6.3 Table 2.3 signal design column. Verify correct column used.

- **Check:** Amber time matches approach speed
- **Standard:** RDM 6.3, Table 14.3
- **Pass condition:** Amber time within 0.2 s of Table 14.3 value for the stated approach speed
- **Fail action:** NOTE -- Amber time [X] s does not match Table 14.3 for [speed] km/h approach (expected [Y] s).

### M.5.3 Departures / Relaxations Process

Non-standard signal timing or phasing requires approval from the relevant road authority (KeNHA for Class A/B, KURA for urban roads).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Signal warrant not met but political pressure to install | Risk of unjustified installation | SENIOR REVIEW -- No warrant satisfied per RDM 6.3 Section 2.2. Document alternative treatments tried. Signal installation without warrant justification requires road authority approval. |
| Motorcycle volume >30% of traffic | Detection and safety concerns | NOTE -- High motorcycle proportion. Consider motorcycle-specific loop detection (smaller loops per Section 9.7) and advanced stop areas for motorcycles. |
| Controller fallback mode triggered | Safety-critical fault | SENIOR REVIEW -- Flashing amber fallback mode activated. Investigate conflict monitor fault. Intersection operates as all-way give-way during fallback. |
| Coordination with adjacent signals needed | Network efficiency | NOTE -- Adjacent signals within 800 m. Evaluate coordination using time-distance diagrams (Section 13.6) or ATC system connection. |
| Pedestrian crossing width >15 m | Extended Walk phase needed | NOTE -- Wide crossing requires Walk = 7 + (W/1.2) seconds. Consider median refuge to split crossing into two stages. |

---

## M.7 Worked Example -- Kenya

### Example: Signal Warrant Analysis and Timing for 4-Arm Intersection

**Given:**
- Road: Class B urban road, 50 km/h design speed
- Intersection: 4-arm, no existing signal
- Major road (N-S): 800 pcu/hr (both approaches combined)
- Minor road (E-W): 200 pcu/hr (both approaches combined)
- Pedestrians: 100/hr crossing major road
- Crossing width: 10 m (kerb to kerb)
- No crash history requiring Warrant 4

**Solution:**

**Step 1 -- Warrant analysis:**

*Warrant 1 (Minimum vehicle volumes):* Check major road 800 pcu/hr and minor road 200 pcu/hr against Table 2.1. For a 4-arm intersection: Table 2.1 requires major >= 500 pcu/hr and minor >= 150 pcu/hr for 8 hours. Major road 800 > 500 and minor road 200 > 150. **Warrant 1 satisfied** (subject to 8-hour confirmation from count data).

*Warrant 2 (Interruption):* Check Table 2.2. With major road 800 pcu/hr, minor road 200 pcu/hr exceeds Table 2.2 threshold of approximately 75 pcu/hr for this major road volume. **Warrant 2 likely satisfied.**

*Warrant 3 (Pedestrian):* Requires 600+ pcu/hr on major road (satisfied: 800) AND 150+ pedestrians/hr (not satisfied: 100). **Warrant 3 not satisfied.**

*Warrant 4 (Crash):* No crash data provided. **Warrant 4 not assessed.**

*Warrant 5 (Combination):* Not required since Warrants 1 and 2 are individually satisfied.

**Conclusion:** Signals warranted per Warrants 1 and 2.

**Step 2 -- Phasing:**

Start with 2-phase control (Figure 7.5):
- Phase A: N-S through and right turns (major road)
- Phase B: E-W through and right turns (minor road)
- Parallel pedestrian movement concurrent with through phases

Left turn volumes not specified as high, so no protected LT phase needed initially.

**Step 3 -- Timing calculation:**

*Amber time:* Approach speed 50 km/h. From Table 14.3: amber = 3.6 seconds.

*All-red time:* Clearance distance approximately 18 m (intersection width + vehicle length). At 50 km/h (13.9 m/s): all-red = 18 / 13.9 = 1.3 seconds. Use 1.5 seconds.

*Pedestrian Walk:* Crossing width W = 10 m. Walk = 7 + (10 / 1.2) = 7 + 8.3 = 15.3 seconds. Round up to 16 seconds.

*Minimum green:* 7 seconds (Section 14.5.2). Since pedestrian Walk = 16 s, the vehicle green on the major road phase must be at least 16 s to accommodate parallel pedestrian movement.

*Intergreen:* Amber (3.6 s) + all-red (1.5 s) = 5.1 s per phase change. Two phase changes per cycle = 10.2 s total intergreen.

*Available green:* Assuming 60 s cycle: 60 - 10.2 = 49.8 s effective green. Split proportional to demand: major road 800/(800+200) = 80% = 39.8 s; minor road 20% = 10.0 s. Major road green (39.8 s) > Walk requirement (16 s). Minor road green (10.0 s) > minimum green (7 s).

**Result:**

| Parameter | Value | Reference |
|-----------|-------|-----------|
| Warrant | Satisfied (Warrants 1 and 2) | RDM 6.3 Tables 2.1, 2.2 |
| Phasing | 2-phase (N-S / E-W) | RDM 6.3 Figure 7.5 |
| Cycle length | 60 s | Webster's formula |
| Amber time | 3.6 s | RDM 6.3 Table 14.3, 50 km/h |
| All-red | 1.5 s | RDM 6.3 Section 14.5.10 |
| Major road green | 39.8 s | Proportional split |
| Minor road green | 10.0 s | Proportional split |
| Pedestrian Walk | 16 s | 7 + (10 / 1.2), rounded up |

---

## M.8 References

### Standards

- Kenya RDM 6.3: Traffic Signals and Communication System (2025), Ministry of Roads and Transport
- Kenya RDM 1.3: Geometric Design of Highways, Rural and Urban Roads (2025)
- Kenya RDM 6.1: Road Marking (2025)
- Kenya RDM 6.2: Traffic Signs (2025)

### Limitations

- RDM 6.3 does not provide explicit signal timing design methodology (e.g., Webster's formula parameters). It refers to RDM 1.3 for signal time design methodology. The universal SKILL.md Section 1.3 provides the necessary formulas.
- Detailed HCM-style capacity analysis is not covered. RDM 6.3 is a design and equipment manual, not a capacity manual.
- SCATS/ATC system design requires specialist input beyond the scope of RDM 6.3 Chapter 13.

### Cross-References

- **Skill #13 Kenya module** -- Road classification, design speed context, institutional framework
- **Skill #19 Kenya module** -- Intersection geometric design, junction visibility
- **Skill #67 Kenya module** -- Road marking at signalised intersections (RDM 6.1)
- **Skill #68 Kenya module** -- Traffic signs at signalised intersections (RDM 6.2)
- **Skill #70 Kenya module** -- Other traffic control devices (RDM 6.4)
