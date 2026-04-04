# Traffic Sign Design -- Kenya Module

> **Parent Skill:** #68 Traffic Sign Design
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 6.2: Traffic Signs (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 6.2 | 2025 | Chapters 2-10, Appendices 1-6 | Current -- mandatory for all classified roads in Kenya |
| Kenya Traffic Act CAP 403 | 2015 revision | Legal framework for traffic signs | In force |
| KS 814 | Current | Retroreflective sheeting specification | Kenya Standard |
| KS 572 | Current | Sign posts (GI pipes) specification | Kenya Standard |
| ASTM D 4956-09 | Current | Retroreflective sheeting for traffic control | International reference |

### M.1.2 Institutional Context

Same institutional framework as Skill #13 Kenya module. The Ministry of Roads and Transport (MoR) has overall responsibility for traffic signage. Under the MoR:

- **KeNHA** (Kenya National Highways Authority): Signs on Class A and B roads.
- **KeRRA** (Kenya Rural Roads Authority): Signs on Class C to W rural roads.
- **KURA** (Kenya Urban Roads Authority): Signs on Class UA, UC, UL urban roads.

Kenya follows the Vienna Convention on Road Signs and Signals with local adaptations. Kenya drives on the left (left-hand traffic). Signs are placed on the left-hand side of the road, facing approaching traffic.

### M.1.3 Standard Philosophy

Kenya RDM 6.2 provides a comprehensive guide to traffic sign design, covering four major categories: regulatory, warning, informatory, and roadwork signs. The manual adopts Vienna Convention shapes and colours with Kenya-specific sign codes (R-series, M-series, P-series for regulatory; W-series for warning; I-series for informatory; RW-series for roadworks). Key features:

- **Three standard sizes** for most regulatory and warning signs: small (600 mm), normal (750 mm), large (900 mm), with 1200 mm for expressways.
- **Colour-coded directional signs** based on road hierarchy: blue for expressways, green for Class A/B/UA, white for C/D/UC and lower.
- **Comprehensive retro-reflective sheeting specification** (Section 2.6.8-2.6.9) with three classes (A, B, C) mapped to ASTM types.
- **Detailed sign face design rules** for informatory signs (Chapter 5) including letter heights, stroke widths, and spacing.
- **Separate chapter for expressway signs** (Chapter 8) with specific colour coding and design rules.

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Sign Classification System

Kenya uses a letter-number coding system for all signs:

| Category | Prefix | Sub-categories | Example Signs |
|----------|--------|---------------|---------------|
| Regulatory - Priority | R | R1-R2 | R1 STOP, R2 GIVE WAY |
| Regulatory - Mandatory | M | M1-M9 | M1 Turn Left, M5 Keep Left |
| Regulatory - Prohibitory | P | P1-P51 | P1 No Entry, P5-P8 Speed Limits, P32 No Overtaking |
| Warning | W | W1-W71 | W1 Crossroads, W17 Roundabout, W47 School Ahead |
| Informatory | I | I1-I33 | I1 Advance Direction, I6 Route Confirmatory |
| Persons with Disabilities | PD | PD1-PD8 | PD1 ISA Symbol |
| Roadwork | RW | RW1-RW41 | RW1 Roadworks Ahead, RW17 Road Closed |

Full catalogue with representative codes is in `tables/kenya_sign_catalogue.json`.

### M.2.2 Sign Sizes by Road Class

**Regulatory signs (STOP and GIVE WAY) -- from Tables 3.1 and 3.3:**

| 85th Percentile Speed | Road Class | Size (mm) |
|----------------------|-----------|-----------|
| >80 km/h | A | 900 |
| 65-80 km/h | B, C, UA | 750 |
| 50-65 km/h | D, UC | 750 |
| 30-50 km/h | E, UL | 600 |
| <30 km/h | F-W | 600 |

**Warning signs -- from Table 4.1:**

| 85th Percentile Speed | Road Class | Sign Size (mm) | Siting Distance (m) | Clear Visibility (m) | x-height (mm) |
|----------------------|-----------|---------------|--------------------|--------------------|--------------|
| >65 km/h | A, B, UA | 900 | 1000 | 200-300 | 100 |
| 50-65 km/h | C, D, UC | 750 | 900 | 100-200 | 75 |
| <50 km/h | E, UL, F-W | 600 | 600 | 50-100 | 60 |

**Expressway signs:** 1200 mm for regulatory and warning signs (Section 2.9, Chapter 8).

### M.2.3 Retro-Reflective Sheeting Selection

From RDM 6.2 Section 2.6.9, Table 2.3:

| Sheeting Class | Type (ASTM) | Expressway | Arterial/Trunk (A, B, UA) | Collector (C, D, UC) | Local (E-W, UL) |
|---------------|------------|-----------|--------------------------|---------------------|----------------|
| Class A | Type I | No | No | Yes | Yes |
| Class A | Type II | No | No | Yes | Yes |
| Class B | Type III | No | Yes | Yes | Yes |
| Class B | Type IV | No | Yes | Yes | Yes |
| Class C | Type VIII | Yes | Yes | No | No |
| Class C | Type IX | Yes | Yes | No | No |
| Class C | Type XI | Yes | Yes | No | No |

**Warranty periods:** Class A = 5 years, Class B = 7 years, Class C = 10 years.
ASTM D4956 Type XI is to be adopted for permanent works.

### M.2.4 Sign Positioning

**Mounting heights (from Section 2.4, Figures 2.1-2.2):**
- Rural (no kerb): bottom edge >= 1.5 m above crown of pavement
- Urban (with kerb): bottom edge 2.1-2.5 m above kerb level
- Overhead: minimum 5.5 m clearance
- Traffic island: bottom edge ~1.0 m above paved surface
- Median nose: bottom edge >= 2.1 m
- Footpath/cycleway: bottom edge >= 2.1 m (headroom for pedestrians)

**Lateral offset (from Section 2.4):**
- With kerb: 300 mm minimum from kerb face (600 mm to 1.0 m typical)
- Without kerb: 600 mm to 3 m from carriageway/shoulder edge
- Gantry: preferably 7 m from nearest traffic lane

**Sign spacing:** Minimum 0.6 x V metres between consecutive signs (V = 85th percentile speed).

**Sign orientation:** 95 degrees to approaching traffic to eliminate specular reflection (Section 2.5).

### M.2.5 Directional Sign Colour Coding

From RDM 6.2 Table 2.6:

| Road Class | Background | Text/Borders/Arrows | Route Number |
|-----------|------------|---------------------|-------------|
| Expressway | Blue | White | White |
| Class A, B, UA | Green | White | Yellow |
| Class C, D, UC | White | Black | Black |
| Class E-W, UL | White | Black | Black |

### M.2.6 Letter Heights for Directional Signs

From RDM 6.2 Appendix 1, Table A1-1:

| Road Class | x-Height (mm) | Upper Case (mm) | Stroke Width (mm) |
|-----------|--------------|-----------------|-------------------|
| A (International Trunk) | 200 | 267 | 33 |
| B (National Trunk) | 150 | 200 | 25 |
| C, D (Primary, Secondary) | 100 | 133 | 17 |
| UA (Urban Arterial) | 100 | 133 | 17 |
| UC (Urban Collector) | 75 | 100 | 13 |
| UL, E-W (Local) | 50 | 67 | 8 |

### M.2.7 STOP Sign Warrants

From RDM 6.2 Section 3.2.1 and Table 3.2:

A STOP sign is required when the visibility funnel is not obstruction-free. Visibility funnel dimensions:

| Major Road Speed (km/h) | Required Visibility on Major Road (m) | Distance x from Minor Road Edge |
|------------------------|---------------------------------------|-------------------------------|
| <=30 | 15 | 4.5 m (medium traffic) / 3 m (light) |
| 31-50 | 30 | 4.5 m / 3 m |
| 51-65 | 45 | 4.5 m / 3 m |
| 66-80 | 70 | 4.5 m / 3 m |
| 81-100 | 90 | 4.5 m / 3 m |
| >100 | 120 | 4.5 m / 3 m |

If visibility funnel is clear, GIVE WAY sign is appropriate. If obstructed, STOP sign must be used.

### M.2.8 Roadwork Signs

Kenya RDM 6.2 Chapter 10 provides comprehensive roadwork signing. Signs use yellow background with black border and symbols. Key signs include:
- RW1 Roadworks Ahead, RW2 Uneven Surface, RW5 Road Narrows
- RW9-RW14: Lane closure variants for 2, 3, and 4 lane roads
- RW15 Major Road Works Ahead, RW17 Road Closed
- Four levels of warning defined in Section 10.18

Detailed deployment layouts are provided in Appendix 4 (Figures A4-1 to A4-22) covering urban and rural scenarios.

### M.2.9 Sign Materials

From RDM 6.2 Section 2.6:
- **Posts:** Galvanised iron (GI) pipes per KS 572. Signs up to 0.9 m2 on single post; larger on two or more posts.
- **Substrate:** Aluminium (KS ISO 6362) or Aluminium Composite Material (ACM, 3-4 mm). FRP (ISO 527:2019, 3-5 mm) as alternative.
- **Plate thickness:** Ground signs min 1.5 mm aluminium (max side 600 mm) or 3 mm ACM. Overhead signs min 4 mm ACM.
- **Foundations:** Reinforced concrete (M25 grade per KS 95).
- **Overhead wind load:** 150 kg/m2 normal to face, 30 kg/m2 transverse.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Regulatory sign selection
  +-- Junction type from Skill #19?
  |     +-- Visibility funnel clear (Table 3.2)?
  |     |     +-- Yes: R2 GIVE WAY sign
  |     |     +-- No: R1 STOP sign
  |     +-- Size from Table 3.1/3.3 based on road class and 85th percentile speed
  |
  +-- Speed limit change?
  |     +-- Determine applicable speed limit (P5=50, P6=70, P7=80, P8=120)
  |     +-- Size: 600 mm (<=50 km/h approach), 750 mm (>50 km/h), 900 mm (dual c/w)
  |     +-- Place at start, middle, and end of speed limit section
  |     +-- Repeaters within 500 m of major junctions
  |
  +-- Special restrictions?
        +-- Weight (P23-P25), height (P29), no overtaking (P32)
        +-- Bus lane (P33-P43)
        +-- School zone (P21 School Warden Stop)

Step 3 (Kenya): Warning sign selection
  +-- Sign type from W-series catalogue
  +-- Size from Table 4.1 based on 85th percentile speed
  +-- Siting distance: 600-1000 m depending on speed
  +-- Supplementary plates where required

Step 4 (Kenya): Informatory sign selection
  +-- Colour scheme from Table 2.6 based on road class
  +-- Letter height from Table A1-1 based on road class
  +-- Sign face design per Chapter 5 rules
  +-- Advance direction sign -> Route direction sign -> Route confirmatory sign
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya road hierarchy determines everything.** Sign size, colour, sheeting grade, and siting distance all derive from the road class (A-E, UA-UL). Getting the road class right from Skill #13 is the single most important input.

**Left-hand traffic sign placement.** Signs are placed on the left-hand side. For emphasis (e.g., STOP at wide junctions), duplicate on the right-hand side. For dual carriageways, signs can be placed on the left side of each carriageway or on the median.

**Expressway signing is a distinct design task.** Chapter 8 provides separate rules for expressway signs including colour coding (blue), oversized dimensions (1200 mm), gantry mounting, and specific sign face designs (IM-series signs). Do not apply general road signing rules to expressways.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using wrong colour scheme for road class.** Green background is only for Class A/B/UA. Using green on a Class C road is incorrect (should be white background).
2. **Undersized signs for approach speed.** Using 600 mm warning signs on a Class B road (85th percentile >65 km/h) where 900 mm is required per Table 4.1.
3. **Wrong sheeting class.** Using Class A (engineering grade) on Class A/B roads where Class B or C is required per Table 2.3.
4. **Placing signs at wrong height in urban areas.** Bottom edge must be 2.1 m minimum above kerb level to avoid obstruction by pedestrians and parked vehicles.
5. **Missing visibility funnel check for STOP vs GIVE WAY.** The choice is not arbitrary; Table 3.2 provides objective criteria.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Regulatory sign size | 750 mm | Single carriageway, >50 km/h | ASSUMED: 750 mm regulatory sign (normal) | RDM 6.2, Section 3.3 |
| Warning sign size | 750 mm | 50-65 km/h approach | ASSUMED: 750 mm warning sign per Table 4.1 | RDM 6.2, Table 4.1 |
| Mounting height (urban) | 2.1 m | With kerb | ASSUMED: 2.1 m bottom edge above kerb | RDM 6.2, Section 2.4 |
| Sheeting grade | Class B (Type III) | Class A/B/UA roads | ASSUMED: Class B sheeting per Table 2.3 | RDM 6.2, Table 2.3 |
| Lateral offset | 0.6 m | Rural road | ASSUMED: 0.6 m from carriageway edge | RDM 6.2, Section 2.4 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| STOP sign size | 600 | 900 | mm | RDM 6.2, Table 3.1 | Must match Table 3.1 for road class |
| Warning sign size | 600 | 900 | mm | RDM 6.2, Table 4.1 | Must match Table 4.1 for speed |
| Mounting height (kerbed) | 2.1 | 2.5 | m | RDM 6.2, Section 2.4 | Reject if <2.1 m |
| Mounting height (rural) | 1.5 | -- | m | RDM 6.2, Section 2.4 | Reject if <1.5 m |
| Overhead clearance | 5.5 | -- | m | RDM 6.2, Section 2.4 | Reject if <5.5 m |
| Lateral offset (kerbed) | 0.3 | -- | m | RDM 6.2, Section 2.4 | Reject if <300 mm from kerb |

### M.5.2 Standards Compliance Checks

- **Check:** Directional sign colour matches road class
- **Standard:** RDM 6.2, Table 2.6
- **Pass condition:** Background colour matches road class assignment
- **Fail action:** SENIOR REVIEW -- Directional sign background colour [colour] does not match road class [class] per Table 2.6.

- **Check:** Sheeting grade appropriate for road class
- **Standard:** RDM 6.2, Table 2.3
- **Pass condition:** Sheeting class meets minimum for road class
- **Fail action:** NOTE -- Sheeting Class [class] is below minimum for [road class] per Table 2.3.

### M.5.3 Departures / Relaxations Process

Same formal departures process as other Kenya modules. Non-standard signs or sign sizes require approval from the relevant road authority (KeNHA/KeRRA/KURA).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Speed limit change >30 km/h | Large speed differential | SENIOR REVIEW -- Speed change of [X] km/h. Consider advance warning signs and supplementary speed management measures (Skill #67 road markings, physical measures). |
| School zone signing | Child safety | NOTE -- School zone identified. Provide W47/W48 school warning signs and consider P21 school warden sign, 30 km/h speed restriction. |
| Non-standard sign requested | May confuse drivers | SENIOR REVIEW -- Non-standard sign requested. Must be approved by road authority. |
| Gantry/overhead sign on structure | Structural design needed | SENIOR REVIEW -- Overhead sign requires structural design for wind loads (150 kg/m2 normal, 30 kg/m2 transverse). |

---

## M.7 Worked Example -- Kenya

### Example: Sign Design for New Junction on Class A Highway

**Given:**
- Road: Class A international trunk road
- Design speed: 120 km/h (85th percentile speed >80 km/h)
- New T-junction at km 45 with Class C road
- Traffic on minor road: 500 vpd
- Visibility funnel: partially obstructed by vegetation

**Solution:**

**Step 1 -- Priority sign selection:**
Visibility funnel partially obstructed -> R1 STOP sign on minor road approach.
Size: 900 mm (Table 3.1, >80 km/h, Class A).

**Step 2 -- Warning signs on Class A road:**
W3 T Junction sign, size 900 mm (Table 4.1, >65 km/h).
Siting distance: 1000 m in advance of junction (Table 4.1).
Clear visibility distance: 200-300 m.

**Step 3 -- Directional signs:**
Colour scheme: green background, white text, yellow route number (Table 2.6, Class A).
Letter x-height: 200 mm (Table A1-1, Class A).
Advance direction sign (I1): 1000 m before junction.
Route direction sign (I2): at the junction.
Route confirmatory sign (I6): after junction.

**Step 4 -- Retroreflective sheeting:**
Class C (Type XI) for Class A road (Table 2.3).
Warranty: 10 years.

**Step 5 -- Mounting:**
Warning sign: single post, bottom edge 1.5 m above pavement.
Advance direction sign: two posts (large sign), bottom edge 1.5 m.
Lateral offset: minimum 0.6 m from shoulder edge.

**Result:**

| Sign | Code | Size (mm) | Location | Sheeting |
|------|------|-----------|----------|----------|
| T Junction Warning | W3 | 900 | 1000 m advance | Class C, Type XI |
| STOP (on minor road) | R1 | 900 | At junction | Class C, Type XI |
| Advance Direction | I1 | Per design | 1000 m advance | Class C, Type XI |
| Route Direction | I2 | Per design | At junction | Class C, Type XI |
| Route Confirmatory | I6 | Per design | 200 m after junction | Class C, Type XI |

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 6: Traffic Control Facilities & Communication Systems Design, Part 2: Traffic Signs (RDM 6.2)*, 2025. Chapters 2-10, Appendices 1-6.
2. Kenya Traffic Act, Chapter 403, revised 2015.
3. Kenya Standards: KS 814 (retroreflective sheeting), KS 572 (GI pipes for sign posts), KS 95 (concrete).
4. ASTM D 4956-09 (retroreflective sheeting specification).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- Tables 2.3, 2.6, 3.1, 3.2, 3.3, 4.1, A1-1 verified against Kenya RDM 6.2 PDF. Sign catalogue (R, M, P, W, I, PD, RW series) extracted. Mounting heights and offsets from Section 2.4/Figures 2.1-2.2. Sheeting classification from Section 2.6.8-2.6.9. |
