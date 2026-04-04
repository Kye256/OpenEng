# Kenya Module: Traffic Control Devices

> **Parent Skill:** #70 (Traffic Control Devices)
> **Country:** Kenya
> **Standards:** Kenya RDM 6.4 -- Other Traffic Control Devices (2025); Kenya RDM 1.3 -- Geometric Design of Highways, Rural and Urban Roads (2025), Chapter 13 (Safety)
> **Last Updated:** 2026-04-04

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

## M.3 Procedure Adjustments

When applying the universal procedure (SKILL.md Section 9) in Kenya:

1. **Speed hump selection:** Use Kenya RDM 6.4 Tables 2.1 and 2.2 for hump geometry (extracted to `tables/kenya_speed_hump_geometry.json`). Specify circular or trapezoidal based on target speed and bus traffic.
2. **Speed breakers:** Do not specify speed breakers. RDM 6.4 explicitly distinguishes between properly designed humps and crude speed breakers. Only properly designed humps meeting Tables 2.1/2.2 should be used.
3. **Hump markings:** Specify per RDM 6.4 Figure 2.1 and RDM 6.1 marking details (LM04, LM05, LM23, LM24).
4. **Bar markings:** Use RDM 6.4 Table 2.3 for placement distances. Yellow on Class A/B roads, white on others.
5. **VMS:** Use RDM 6.4 Chapter 3 specifications. Include English and local language requirement.
6. **Barriers:** Use RDM 1.3 Chapter 13 for Kenya-specific barrier requirements. Supplement with universal SKILL.md Section 1.2.

---

## M.4 Additional Considerations

**Speed breakers are not recommended:** RDM 6.4 Section 2.1 describes speed breakers as crude devices that cause driver discomfort and potential vehicle damage. The manual provides properly designed hump geometries (Tables 2.1, 2.2) as the correct alternative. If existing speed breakers are encountered, recommend replacement with properly designed humps.

**Motorcycle (boda-boda) safety:** Speed humps should be designed with consideration for motorcycle stability. Circular humps with abrupt profiles are more hazardous for motorcycles than trapezoidal or sinusoidal humps. In areas with high motorcycle traffic, consider sinusoidal profiles (Section 2.6) which are more comfortable for two-wheelers.

**Hump drainage:** The raised walkway detail in Figure 2.1 prevents vehicles from using the shoulder to avoid the hump. Ensure adequate drainage around humps -- water ponding at humps is a common problem.

**VMS bilingual requirement:** Section 3.6.3 requires displays in at least two languages -- English and the applicable local language. The first line should be in English, the second in the local language.

---

## M.5 Limitations & Knowledge Gaps

- RDM 6.4 does not cover barriers, guardrails, delineators, or crash cushions. This is a significant gap. RDM 1.3 Chapter 13 provides some safety barrier guidance, but it is not as detailed as dedicated barrier design standards (EN 1317, MASH).
- RDM 6.4 does not provide a systematic speed hump spacing methodology (i.e., relationship between hump spacing and 85th percentile speed). The universal guidance in SKILL.md Section 1.1 and Skill #20 (NMT Facilities) should be applied.
- VMS electrical specifications in RDM 6.4 are detailed but may not reflect the latest LED technology developments.

---

## M.6 References

- Kenya RDM 6.4: Other Traffic Control Devices (2025), Ministry of Roads and Transport
- Kenya RDM 1.3: Geometric Design of Highways, Rural and Urban Roads (2025), Chapter 13
- Kenya RDM 6.1: Road Marking (2025)
- Kenya RDM 6.2: Traffic Signs (2025)
- KS 774: Specifications for road speed bump
- Indian Roads Congress IRC 35:2015 (source for circular hump geometry in RDM 6.4)
- TRL Report 377: Traffic Calming -- Sinusoidal, 'H' and 'S' humps (source for sinusoidal hump in RDM 6.4)

---

## M.7 Changelog

| Date | Change | Author |
|------|--------|--------|
| 2026-04-04 | Initial Kenya module created from RDM 6.4 and RDM 1.3 Ch13 | OpenEng |

---

## M.8 Cross-References

- **Skill #13 Kenya module** -- Road classification, design speed context
- **Skill #20 Kenya module** -- Speed management zone layout, NMT crossing placement
- **Skill #67 Kenya module** -- Hump markings, barrier delineation markings (RDM 6.1)
- **Skill #68 Kenya module** -- Warning signs for humps and hazards (RDM 6.2)
- **Skill #69 Kenya module** -- Traffic signals (RDM 6.3) -- separate from traffic control devices
