# Kenya Module: Traffic Control Devices

> **Parent Skill:** #70 (Traffic Control Devices)
> **Country:** Kenya
> **Standards:** Kenya RDM 6.4 -- Other Traffic Control Devices (2025); Kenya RDM 1.3 -- Geometric Design of Highways, Rural and Urban Roads (2025), Chapter 13 (Safety)
> **Last Updated:** 2026-04-05

---

## M.1 Standards & Institutional Context

| Standard | Document | Scope |
|----------|----------|-------|
| Kenya RDM 6.4 | Other Traffic Control Devices (2025) | Speed reduction measures (speed breakers, circular humps, trapezoidal humps, speed bumps, speed tables, sinusoidal humps, transverse bar markings) and Variable Message Signs (VMS) |
| Kenya RDM 1.3 | Geometric Design of Highways, Rural and Urban Roads (2025), Chapter 13 | Safety barriers, guardrails, clear zones, roadside safety |
| Kenya RDM 6.1 | Road Marking (2025) | Marking requirements for speed humps and barriers |
| Kenya RDM 6.2 | Traffic Signs (2025) | Warning signs for speed humps and hazards |
| KS 774 | Specifications for road speed bump | Kenya Standard for speed bump product specification |

**CRITICAL scope note:** Kenya RDM 6.4 covers only speed reduction measures (Chapter 2) and Variable Message Signs (Chapter 3). It does NOT cover barriers, delineators, guardrails, or crash cushions. For Kenya safety barrier guidance, refer to RDM 1.3 Chapter 13 (Safety). The universal SKILL.md Section 1.2 provides comprehensive barrier design guidance applicable in Kenya.

**Institutional context:** Kenya's road network is managed by three road authorities:
- **KeNHA** (Kenya National Highways Authority) -- Class A and B national trunk roads and expressways
- **KeRRA** (Kenya Rural Roads Authority) -- Class C, D, and E rural roads
- **KURA** (Kenya Urban Roads Authority) -- Urban roads within declared urban areas

Speed hump installations on national roads require KeNHA approval. VMS systems on expressways are managed by KeNHA. Speed humps in urban areas are coordinated by KURA.

**Standard philosophy:** RDM 6.4 emphasises that properly designed speed humps should be used rather than abrupt speed breakers. The manual explicitly distinguishes between speed humps (designed, safe) and speed breakers (crude, potentially damaging). Speed breakers are not recommended -- only properly designed humps meeting Tables 2.1 and 2.2 should be used.

---

## M.2 Country-Specific Knowledge

### M.2.1 Speed Reduction Measures (RDM 6.4 Chapter 2)

**Circular humps (Section 2.2):** The standard speed reduction device. Profile is a circular arc with a standard rise of 100 mm. Geometry per Table 2.1 (extracted to `tables/kenya_speed_hump_geometry.json`):

| Desired Speed (km/h) | Radius (m) | Chord Length (m) | Bus Speed (km/h) |
|----------------------|-----------|-----------------|-------------------|
| 20 | 11 | 3.0 | 5 |
| 25 | 15 | 3.5 | 10 |
| 30 | 20 | 4.0 | 15 |
| 35 | 31 | 5.0 | 20 |
| 40 | 53 | 6.5 | 25 |
| 45 | 80 | 8.0 | 30 |
| 50 | 113 | 9.5 | 35 |

Key design notes:
- Rise less than 100 mm is not effective in speed reduction
- Rise greater than 100 mm may cause damage to vehicles
- For roads with bus traffic, select chord length to achieve an acceptable bus passage speed (Table 2.1 column 4)
- For buses to pass at 40 km/h, radius must be at least 180 m and chord length 12 m

**Trapezoidal humps (Section 2.3):** Flat section (minimum 2.5 m) with approach ramps. Geometry per Table 2.2:

| Desired Speed (km/h) | Ramp Length (m) | Gradient (%) | Bus Speed (km/h) |
|----------------------|----------------|-------------|-------------------|
| 20 | 0.7 | 14.0 | Near zero |
| 25 | 0.8 | 12.5 | 5 |
| 30 | 1.0 | 10.0 | 10 |
| 35 | 1.3 | 7.5 | 15 |
| 40 | 1.7 | 6.0 | 20 |
| 45 | 2.0 | 5.0 | 25 |
| 50 | 2.5 | 4.0 | 30 |

Height range: 50-100 mm. Flat-top minimum 2.5 m; extend for bus routes.

**Speed bumps (Section 2.4):** Bumps have steeper rise and tighter curvature than humps. Height 76-152 mm, length 0.3-1.0 m. Made of plastic or rubber in modular design. Reduce speed to around 5-10 km/h. RDM 6.4 stipulates:
- Permanent bumps only for local and collector streets with approach speed < 50 km/h
- If approach speed > 30 km/h, bumps should be near street lights for visibility
- Minimum width 900 mm, height not more than 100 mm (25 mm minimum)
- Speed bumps per KS 774 specification

**Speed table / raised pedestrian crossing (Section 2.5):** Standard dimensions per Figure 2.4: 100 mm rise, 5.0 m flat top, 1.7 m ramps each side (8.4 m total length). Used at mid-block pedestrian crossings and residential areas. Flat-top length increased for bus routes.

**Sinusoidal hump (Section 2.6):** S-curve profile. 100 mm rise, 3.7 m total length (4 x 0.925 m quarter wavelengths). More comfortable for cyclists. Source: TRL Report 377.

**Transverse bar markings (Section 2.7):** Softer treatment than humps. Set of 6 bars, each 300 mm wide, 5-10 mm high. Spacing: 600 mm for roads up to 50 km/h, 1000 mm for higher speeds. Thermoplastic material. Colour: yellow on Class A and B roads, white on other classes. Number of sets by approach speed per Table 2.3:
- Up to 50 km/h: 1 set at 50 m from hazard
- 51-65 km/h: 2 sets at 50 m and 80 m
- 66-80 km/h: 3 sets at 50 m, 80 m, and 120 m
- 81-100 km/h: 4 sets at 50 m, 80 m, 120 m, and 180 m

**Hump markings (RDM 6.4 Figure 2.1):** Two rows of chequered markings (alternate black and white bands, 500 mm width) on tapering sections. Triangular markings on round-top and flat-top humps (base 750 mm, height to apex 1.85 m). Retro-reflective material with road studs for night visibility. Refer to RDM 6.1 for marking details (LM04, LM05, LM23, LM24).

### M.2.2 Variable Message Signs (RDM 6.4 Chapter 3)

**VMS types (Section 3.1):** Continuous signs (roller blinds, rotating prisms) and discontinuous signs (LED matrix, fibre optic). LED matrix recommended for traffic management.

**Message principles (Section 3.2):** Messages must serve a need, command attention, be clear and simple, give sufficient response time, be reliable and credible.

**Content and timing (Sections 3.5):**
- Reading time = time for driver to read message. Exposure time = time within legible distance. Exposure time must exceed reading time.
- Legibility distance: 300 m on expressways, 200 m on other roads (Table 3.1)
- Message display time by approach speed (Table 3.1): 30 km/h = 24.0s (200m), 60 km/h = 12.0s (200m), 100 km/h = 7.2s (200m), 120 km/h = 6.0s (200m)
- For expressways: minimum display time 20 seconds for reading and understanding
- For other roads: minimum 15 seconds
- Character height: minimum 400 mm. Aspect ratio 7:5 (height:width).
- Message panels by speed (Table 3.2): 70-90 km/h = 3 panels max, 100-120 km/h = 2 panels max
- Message units: each unit is 1-4 words answering one driver question (What happened? Where? What's closed? What's the effect? Who is it for? What action?) -- Table 3.3
- Each line: 12-15 characters. Two lines per panel. English first line, local language second line (Section 3.6.3).
- Blinking: 2 seconds on, 1 second off. Maximum 1 line blinking.
- Series of messages: minimum 4 seconds per message.

**Placement (Sections 3.7, 3.8):**
- Urban area VMS: pole-mounted away from shoulder and emergency traffic lanes
- Expressway: 2 km ahead of interchange/exit, repeated every 500 m
- Portable VMS: 50 m before point of decision, visible for at least 200 m
- Tilt 5-10 degrees from perpendicular to road centreline
- Minimum 5.5 m vertical clearance under overhead signs

**Equipment (Sections 3.9, 3.10):**
- Housing: weathertight aluminium alloy, IP55 protection, modular design
- Display: LED pixel pitch 22-25 mm, character height 400 mm min, luminance >= 12,000 cd/m2
- Mounting structure: minimum 5.5 m hexagonal/octagonal MS pole (300 mm diameter, 5 mm thick), base plate 520 mm x 520 mm x 16 mm
- Power: 230V AC 50Hz single phase. UPS with 12-hour battery backup.
- Design life: minimum 10 years
- Wind resistance: up to 150 km/h (structure), 200 km/h (housing)
- Controller: microprocessor-based CPU, 400 MHz+, 20 MB SRAM, USB expandable
- Communication: NTCIP or equivalent, Ethernet/UDP/IP, RS-232
- Temperature range: -34 to +65 degrees C operating; auto switch-off at +65 degrees C

### M.2.3 Safety Barriers (RDM 1.3 Chapter 13)

Kenya RDM 6.4 does not cover barriers, delineators, guardrails, or crash cushions. For Kenya-specific barrier guidance, reference RDM 1.3 Chapter 13 (Safety). The universal SKILL.md Section 1.2 provides the comprehensive barrier design framework applicable in Kenya.

Where RDM 1.3 Chapter 13 provides Kenya-specific clear zone widths, barrier warrant criteria, or containment level requirements, those values should be used. Otherwise, apply the universal guidance from Section 1.2 of the parent SKILL.md.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Speed reduction device selection
  +-- Target speed?
  |     +-- 20-30 km/h (trading centre, school zone)?
  |     |     +-- Bus route?
  |     |     |     +-- Yes: circular hump R=20m, chord=4.0m (Table 2.1, 30 km/h target)
  |     |     |     +--       Check bus speed acceptable (15 km/h for 30 km/h target)
  |     |     |     +-- No: trapezoidal hump, ramp 1.0m, 10% gradient (Table 2.2)
  |     |     +--           or sinusoidal hump for high-cyclist areas
  |     +-- 35-50 km/h (transition zone)?
  |     |     +-- Use circular hump with larger radius (Table 2.1)
  |     |     +-- Bus route: chord >= 6.5 m for 40 km/h target
  |     +-- Approach warning only (no physical device)?
  |           +-- Transverse bar markings per Table 2.3
  |           +-- Number of sets based on approach speed
  |
  +-- Location type?
  |     +-- Mid-block pedestrian crossing: speed table (Figure 2.4)
  |     +-- Car park / private road: speed bumps per KS 774
  |     +-- Public road: humps only (not bumps, not speed breakers)
  |
  +-- Hump markings required?
  |     +-- Yes: specify per Figure 2.1 and RDM 6.1
  |     +-- Warning signs per RDM 6.2
  |
  +-- VMS required?
        +-- Expressway or managed motorway: LED matrix per Chapter 3
        +-- Character height >= 400 mm, bilingual display
        +-- UPS backup required
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Speed breakers are not recommended:** RDM 6.4 Section 2.1 describes speed breakers as crude devices that cause driver discomfort and potential vehicle damage. The manual provides properly designed hump geometries (Tables 2.1, 2.2) as the correct alternative. If existing speed breakers are encountered, recommend replacement with properly designed humps.

**Motorcycle (boda-boda) safety:** Speed humps should be designed with consideration for motorcycle stability. Circular humps with abrupt profiles are more hazardous for motorcycles than trapezoidal or sinusoidal humps. In areas with high motorcycle traffic, consider sinusoidal profiles (Section 2.6) which are more comfortable for two-wheelers.

**Hump drainage:** The raised walkway detail in Figure 2.1 prevents vehicles from using the shoulder to avoid the hump. Ensure adequate drainage around humps -- water ponding at humps is a common problem.

**VMS bilingual requirement:** Section 3.6.3 requires displays in at least two languages -- English and the applicable local language. The first line should be in English, the second in the local language.

### M.3.3 Common Errors (Kenya-Specific)

1. **Specifying speed breakers instead of properly designed humps.** RDM 6.4 Section 2.1 explicitly discourages speed breakers. Only humps meeting Tables 2.1/2.2 specifications should be used.
2. **Wrong hump geometry for bus routes.** Circular humps for bus routes must have larger radii to achieve acceptable bus passage speeds. Using a 30 km/h hump (R=20m, chord=4.0m) on a bus route gives only 15 km/h bus speed, which may be unacceptable.
3. **Omitting hump markings and warning signs.** Every hump must have markings per Figure 2.1 and advance warning signs per RDM 6.2. Unmarked humps are a serious safety hazard, especially at night.
4. **Hump rise exceeding 100 mm.** RDM 6.4 limits circular hump rise to 100 mm. Greater rise causes vehicle damage and is not compliant.
5. **Using speed bumps on arterial or trunk roads.** Speed bumps (Section 2.4) are restricted to local and collector streets with approach speed <50 km/h. Bumps on trunk roads are non-compliant.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Hump rise | 100 mm | Circular and trapezoidal humps | ASSUMED: 100 mm standard rise per Section 2.2 | RDM 6.4, Section 2.2 |
| Transverse bar width | 300 mm | All bar marking installations | ASSUMED: 300 mm bar width per Section 2.7 | RDM 6.4, Section 2.7 |
| VMS character height | 400 mm | All VMS installations | ASSUMED: 400 mm minimum character height per Section 3.5 | RDM 6.4, Section 3.5 |
| VMS legibility distance | 200 m | Non-expressway roads | ASSUMED: 200 m legibility distance per Table 3.1 | RDM 6.4, Table 3.1 |
| Speed bump max height | 100 mm | Permanent bumps on local streets | ASSUMED: 100 mm maximum bump height per Section 2.4 | RDM 6.4, Section 2.4 |
| Speed table flat-top length | 5.0 m | Standard raised pedestrian crossing | ASSUMED: 5.0 m flat top per Figure 2.4 | RDM 6.4, Section 2.5 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Circular hump rise | 50 | 100 | mm | RDM 6.4, Section 2.2 | Rise <50 mm ineffective; rise >100 mm causes vehicle damage |
| Circular hump chord length | 3.0 | 9.5 | m | RDM 6.4, Table 2.1 | Must match Table 2.1 for target speed |
| Trapezoidal hump height | 50 | 100 | mm | RDM 6.4, Section 2.3 | Reject if outside range |
| Transverse bar spacing | 600 | 1000 | mm | RDM 6.4, Section 2.7 | 600 mm for <=50 km/h; 1000 mm for higher speeds |
| VMS character height | 400 | -- | mm | RDM 6.4, Section 3.5 | Reject if <400 mm; illegible at design distance |
| Speed bump height | 25 | 100 | mm | RDM 6.4, Section 2.4 | Per KS 774; reject if outside range |
| Speed bump width | 900 | -- | mm | RDM 6.4, Section 2.4 | Minimum 900 mm per Section 2.4 |

### M.5.2 Standards Compliance Checks

- **Check:** Speed reduction device type is a properly designed hump (not a speed breaker)
- **Standard:** RDM 6.4, Section 2.1
- **Pass condition:** Device specified as circular hump, trapezoidal hump, speed table, sinusoidal hump, or speed bump per KS 774
- **Fail action:** SENIOR REVIEW -- Speed breaker specified. RDM 6.4 Section 2.1 discourages speed breakers. Replace with properly designed hump per Tables 2.1/2.2.

- **Check:** Hump markings and warning signs specified
- **Standard:** RDM 6.4, Figure 2.1; RDM 6.2
- **Pass condition:** Hump marking schedule and warning sign schedule included in design
- **Fail action:** NOTE -- Hump design missing markings per Figure 2.1 and/or warning signs per RDM 6.2. Both are mandatory.

- **Check:** Speed bumps restricted to appropriate road classes
- **Standard:** RDM 6.4, Section 2.4
- **Pass condition:** Speed bumps specified only for local/collector streets with approach speed <50 km/h
- **Fail action:** SENIOR REVIEW -- Speed bump specified on [road class] with approach speed [X] km/h. Bumps only permitted on local/collector streets <50 km/h.

### M.5.3 Departures / Relaxations Process

Non-standard speed hump geometries or installations on trunk roads require approval from the relevant road authority (KeNHA for Class A/B, KURA for urban roads).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Speed breaker requested instead of designed hump | Non-compliant device | NOTE -- RDM 6.4 Section 2.1 discourages speed breakers. Specify a properly designed hump per Tables 2.1/2.2. If existing speed breaker, recommend replacement. |
| Hump on bus route without bus-speed check | Disruption to public transport | SENIOR REVIEW -- Speed hump on bus route. Verify bus passage speed from Table 2.1 column 4 or Table 2.2 column 4 is acceptable. Consider larger radius or trapezoidal hump. |
| VMS in area without reliable power | System reliability risk | NOTE -- VMS requires 230V AC supply with 12-hour UPS backup (Section 3.10). Verify power supply reliability and UPS sizing for the location. |
| Hump rise >100 mm requested | Vehicle damage risk | SENIOR REVIEW -- Hump rise [X] mm exceeds 100 mm maximum per RDM 6.4 Section 2.2. Rise >100 mm causes vehicle damage. Reduce to 100 mm or use alternative speed management. |
| Multiple humps on arterial road | Network speed management | NOTE -- Series of humps on arterial road. Verify spacing achieves desired speed profile. Consider transverse bar markings (Section 2.7) as softer alternative for approach zones. |

---

## M.7 Worked Example -- Kenya

### Example: Speed Hump Design for Class C Road through Trading Centre

**Given:**
- Road: Class C rural road
- Design speed: 60 km/h
- Target speed through trading centre: 30 km/h
- Bus route: Yes (scheduled service)
- Trading centre length: 400 m
- Context: Mixed traffic including motorcycles, pedestrians, market activity

**Solution:**

**Step 1 -- Device selection:**

Target speed 30 km/h on a bus route. From Table 2.1 (circular humps):
- 30 km/h target: R = 20 m, chord = 4.0 m, bus speed = 15 km/h

Bus speed of 15 km/h may be acceptable for a trading centre. If not, increase to 35 km/h target: R = 31 m, chord = 5.0 m, bus speed = 20 km/h. Use the 30 km/h geometry since the low bus speed is tolerable in a trading centre context.

**Step 2 -- Approach warning (transverse bar markings):**

Approach speed 60 km/h falls in the 51-65 km/h range per Table 2.3. Provide 2 sets of transverse bars:
- Set 1: 80 m from first hump
- Set 2: 50 m from first hump
- Each set: 6 bars, 300 mm wide, 5-10 mm high, spacing 1000 mm (>50 km/h)
- Colour: white (Class C road)

**Step 3 -- Hump markings:**

Per Figure 2.1:
- Chequered markings on tapering sections: alternate black and white bands, 500 mm width
- Triangular markings on hump: base 750 mm, height to apex 1.85 m
- Retro-reflective material with road studs for night visibility
- Refer to RDM 6.1 marking codes LM04, LM05, LM23, LM24

**Step 4 -- Warning signs:**

Per RDM 6.2:
- Advance warning sign (W-series hump warning) at both approaches
- Siting distance per Table 4.1: 900 m for 50-65 km/h
- Speed limit sign (P-series) reducing to 30 km/h at trading centre entry

**Step 5 -- Hump spacing:**

For 400 m trading centre with 30 km/h target: space humps at approximately 75-100 m intervals to maintain low speed. Approximately 4-5 humps through the trading centre.

**Result:**

| Parameter | Value | Reference |
|-----------|-------|-----------|
| Hump type | Circular, R = 20 m, chord = 4.0 m | RDM 6.4 Table 2.1, 30 km/h |
| Hump rise | 100 mm | RDM 6.4 Section 2.2 |
| Bus passage speed | 15 km/h | RDM 6.4 Table 2.1, column 4 |
| Number of humps | 4-5 over 400 m | Spacing 75-100 m |
| Approach bars | 2 sets at 50 m and 80 m | RDM 6.4 Table 2.3, 51-65 km/h |
| Bar colour | White | Class C road |
| Hump markings | Per Figure 2.1 with road studs | RDM 6.4, RDM 6.1 |

---

## M.8 References

### Standards

- Kenya RDM 6.4: Other Traffic Control Devices (2025), Ministry of Roads and Transport
- Kenya RDM 1.3: Geometric Design of Highways, Rural and Urban Roads (2025), Chapter 13
- Kenya RDM 6.1: Road Marking (2025)
- Kenya RDM 6.2: Traffic Signs (2025)
- KS 774: Specifications for road speed bump
- Indian Roads Congress IRC 35:2015 (source for circular hump geometry in RDM 6.4)
- TRL Report 377: Traffic Calming -- Sinusoidal, 'H' and 'S' humps (source for sinusoidal hump in RDM 6.4)

### Limitations

- RDM 6.4 does not cover barriers, guardrails, delineators, or crash cushions. This is a significant gap. RDM 1.3 Chapter 13 provides some safety barrier guidance, but it is not as detailed as dedicated barrier design standards (EN 1317, MASH).
- RDM 6.4 does not provide a systematic speed hump spacing methodology (i.e., relationship between hump spacing and 85th percentile speed). The universal guidance in SKILL.md Section 1.1 and Skill #20 (NMT Facilities) should be applied.
- VMS electrical specifications in RDM 6.4 are detailed but may not reflect the latest LED technology developments.

### Cross-References

- **Skill #13 Kenya module** -- Road classification, design speed context
- **Skill #20 Kenya module** -- Speed management zone layout, NMT crossing placement
- **Skill #67 Kenya module** -- Hump markings, barrier delineation markings (RDM 6.1)
- **Skill #68 Kenya module** -- Warning signs for humps and hazards (RDM 6.2)
- **Skill #69 Kenya module** -- Traffic signals (RDM 6.3) -- separate from traffic control devices
