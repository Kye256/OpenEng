# NMT Facilities -- Kenya Module

> **Parent Skill:** #20 NMT Facilities
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
| Kenya Road Design Manual RDM 1.3 | 2025 | Section 3.6 (Motorcyclists), 3.7 (Pedal Cyclists), 3.8 (Pedestrian Traffic), 4.5 (Walkways), 4.6 (Cycle Lanes), 4.7 (Motorcycle Lanes), 4.12 (Bus Stops), 4.13 (Refuge Islands), Chapter 11 (Traffic Calming), Chapter 13 (Safety) | Current -- mandatory for all classified roads in Kenya |

### M.1.2 Institutional Context

Same as Skill #13 Kenya module. Kenya RDM explicitly addresses non-motorised transport including pedestrians, cyclists, and motorcyclists. The RDM mandates separate walkways on all arterial and collector roads (Section 4.5.1). NMT provision is integrated into the standard cross-sections (Tables 4.23 and 4.24).

### M.1.3 Standard Philosophy

Kenya RDM 1.3 takes a comprehensive approach to NMT provision, reflecting the significant role of walking, cycling, and motorcycle transport in Kenya. The manual includes specific motorcycle lane warrants (Section 4.7) -- a Kenya innovation responding to the exponential growth of boda-boda traffic. Walkways are mandatory on all arterial and collector roads. Cycle lanes and tracks are included in urban cross-sections U1-U8. The RDM also addresses traffic calming (Chapter 11) for speed management through villages and trading centres.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table KN.1: Recommended Walkway Widths (Table 4.4, RDM 1.3)**

| Situation | Minimum Width (m) | Comments |
|-----------|-------------------|---------|
| General low volume | 1.5 | Allows one wheelchair with 0.15m clearance both sides |
| High pedestrian volumes | 3.0 (or higher) | Commercial and shopping areas |

**Source:** Kenya RDM 1.3, Table 4.4 (Verified from PDF). Width should increase by 0.6 m if adjacent to kerbing.

**Table KN.2: Warrants for Paved Walkways in Rural Areas (Table 4.5, RDM 1.3)**

| Walkway Provision | ADT (vehicles/day) | Pedestrian Flow/Day (Design Speed < 80 km/h) | Pedestrian Flow/Day (Design Speed > 80 km/h) |
|-------------------|---------------------|---------------------------------------------|---------------------------------------------|
| One side | 300-1500 | 300 | 200 |
| One side | > 1500 | 200 | 120 |
| Both sides | 700-1500 | 1000 | 600 |
| Both sides | > 1500 | 600 | 400 |

**Source:** Kenya RDM 1.3, Table 4.5 (Verified from PDF)

**Table KN.3: Cycle Lane Widths (Table 4.6, RDM 1.3)**

| Situation | Minimum Width (m) |
|-----------|-------------------|
| General low volume (one-way) | 1.2 |
| High cyclist volumes (one-way) | 2.0 (or higher) |

**Source:** Kenya RDM 1.3, Table 4.6 (Verified from PDF)

**Table KN.4: Shared Path Widths for Cyclists and Pedestrians (Table 4.7, RDM 1.3)**

| Road Class | Minimum Width (m) |
|-----------|-------------------|
| UL | 2.0 |
| UA & UC | 3.0 |
| Recreational paths | 3.0 |

**Source:** Kenya RDM 1.3, Table 4.7 (Verified from PDF)

**Table KN.5: Motorcycle Lane Warrants and Characteristics (Section 4.7, Table 4.8)**

Motorcycle lane warrants on UA and UC roads:
1. High ADT volumes of more than 15,000 vehicles per day
2. More than 30% of traffic in mainstream comprises motorcycles
3. Crash frequency of more than 5 KSI crashes involving motorcyclists

| Motorcycle Characteristic | Value |
|--------------------------|-------|
| Length | 2.6 m |
| Width | 1.0 m |
| Height (with rider) | 1.64 m |
| Turning radius | 3.0 m |

Motorcycle lanes shall be installed on the outside lane of the main carriageway for each direction of traffic flow, separated by painted lines or physical barriers.

**Source:** Kenya RDM 1.3, Section 4.7 and Table 4.8 (Verified from PDF)

**Table KN.6: Pedestrian Refuge Island Requirements (Section 4.13)**

- Minimum width: 1.5 m (preferably 2.0 m)
- Sides should be semi-mountable
- Approaches to refuge island should be tapered and clearly demarcated
- Pedestrian sight distances from Table 4.13 must be met

**Table KN.7: Speed Management through Villages (Chapter 11)**

Speed management tools from RDM 1.3 Chapter 11:
- Entry gates at both ends of village
- Speed humps (plateau type recommended)
- Raised pedestrian crossings
- Narrowing (build-outs)
- Rumble strips on approaches

### M.2.2 Boda-boda (Motorcycle Taxi) Provisions

Kenya RDM 1.3 explicitly addresses motorcycle design considerations (Section 3.6):

1. **Uniformity of road design** -- familiar and standard treatment with no surprises
2. **Sufficient clear zone** -- motorcycle envelope extends beyond lane edge when leaning into curves; road furniture must be outside this zone
3. **Surface consistency** -- surface changes at superelevation transitions and curve approaches are dangerous for motorcyclists
4. **Motorcycle-friendly safety barriers** -- barriers that do not pose excessive risk to fallen motorcyclists
5. **Advance information and delineation** -- critical at curves, junctions, and village entries

Motorcycle lanes (Section 4.7) are a specific Kenya provision for urban arterials and collectors where motorcycle volumes exceed 30% of traffic stream and ADT > 15,000. Lane width based on motorcycle dimensions (1.0 m width) plus clearances.

### M.2.3 Bus/Matatu Provisions

Bus lay-bys and matatu stops (Section 4.12):
- Loading area: 15 m per bus, 3.5-4.0 m width
- Deceleration taper: 10:1 longitudinal to transverse
- Merging taper: not sharper than 6:1
- Location: not immediately before intersections; ideally 50 m after (not more than 50 m from intersection)
- Two-bus lay-by total length as per Figure 4.11 standard drawings

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): NMT provision determination
  +-- Urban road (UA, UC, UL)?
  |     +-- Walkway: mandatory on all arterial and collector roads (Section 4.5.1)
  |     +-- Width: 1.5 m minimum, 3.0 m in high-volume areas
  |     +-- Cycle track: required on UA and UC where pedal cycle traffic is high
  |     +-- Cycle lane width: 1.2 m min (one-way), 2.0 m high volume
  |     +-- Motorcycle lane: check warrants (Section 4.7)
  |     |     +-- ADT > 15,000? AND
  |     |     +-- Motorcycle % > 30%? AND
  |     |     +-- > 5 KSI motorcycle crashes?
  |     |     +-- If any 2 of 3 -> consider motorcycle lane
  |     \-- Shared path: 3.0 m for UA/UC, 2.0 m for UL (Table 4.7)
  +-- Rural road?
  |     +-- Check walkway warrant from Table 4.5 (KN.2)
  |     +-- ADT and pedestrian flow thresholds determine one-side or both-sides
  |     +-- Width: minimum 1.0 m (constrained), 1.8 m allows two abreast
  |     \-- Shoulders at least 2.0 m if no walkway but pedestrians present
  \-- Trading centre / village section?
        +-- Speed management per Chapter 11
        +-- Entry gates, speed humps, raised crossings
        +-- Pedestrian crossing at desire lines
        +-- Bus/matatu lay-by per Section 4.12
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Boda-boda traffic is a defining feature of Kenya roads.** The exponential growth of motorcycle traffic (mentioned in the RDM Foreword) means that NMT design must account for motorcyclists at every junction, curve, and village section. Surface consistency and clear zones are safety-critical for motorcyclists.

**Matatu stages create concentrated pedestrian activity.** Wherever matatus stop, pedestrians cross the road. NMT design near matatu stages must provide safe crossing facilities (refuge islands, raised crossings, or signalised crossings at high-volume locations).

**Handcarts and animal-drawn vehicles are present on rural roads.** Kenya RDM Section 3.12.3 provides Car Equivalency Factors (CEF) for NMTs including small animal-drawn carts (CEF = 0.7) and bicycles with trailers (CEF = 0.35). These vehicles use shoulders and walkways.

**Pedestrian overpasses are recommended for expressways and high-speed divided roads** where at-grade crossing is dangerous (Section 4.14). Minimum clear width: 1.8 m for pedestrians, 3.0 m for shared bicycle/pedestrian bridges.

### M.3.3 Common Errors (Kenya-Specific)

1. **Omitting walkways from urban cross-sections.** RDM mandates walkways on all arterial and collector roads. This is a "shall" requirement, not advisory.
2. **Not checking motorcycle lane warrants on busy urban roads.** Section 4.7 provides specific warrants. On roads with > 30% motorcycle traffic, dedicated motorcycle lanes should be evaluated.
3. **Placing matatu stops immediately before intersections.** This restricts sight distance. Matatu stops should be after the intersection, within 50 m.
4. **Using Uganda NMT thresholds.** Kenya Table 4.5 walkway warrants differ from Uganda MoWT Table 11-1. Always use the Kenya table.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Walkway width (urban) | 1.5 m | Low-moderate volume | ASSUMED: 1.5 m walkway width (low-moderate pedestrian volume) | RDM 1.3, Table 4.4 |
| Walkway width (urban, near kerb) | 2.1 m | Adjacent to kerbing | ASSUMED: 1.5 m + 0.6 m kerb allowance = 2.1 m | RDM 1.3, Section 4.5.1 |
| Cycle lane width | 1.2 m | Low volume, one-way | ASSUMED: 1.2 m cycle lane width (low volume) | RDM 1.3, Table 4.6 |
| Walkway crossfall | 2.5% | Paved walkway | ASSUMED: 2.5% walkway crossfall (max 5% at driveways) | RDM 1.3, Section 4.5.6 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Walkway width | 1.5 | -- | m | RDM 1.3, Table 4.4 | Warn if below 1.5 m minimum |
| Cycle lane width | 1.2 | -- | m | RDM 1.3, Table 4.6 | Warn if below 1.2 m minimum |
| Refuge island width | 1.5 | -- | m | RDM 1.3, Section 4.13 | Warn if below 1.5 m (preferably 2.0 m) |
| Pedestrian bridge width | 1.8 | -- | m | RDM 1.3, Section 4.14 | Warn if below 1.8 m |

### M.5.2 Standards Compliance Checks

- **Check:** Walkway provided on arterial and collector roads
- **Standard:** RDM 1.3, Section 4.5.1
- **Pass condition:** Walkway included in cross-section for UA, UC, and rural roads meeting Table 4.5 thresholds
- **Fail action:** SENIOR REVIEW -- Walkway omitted from arterial/collector road. Required per Section 4.5.1.

### M.5.3 Departures / Relaxations Process

Same formal departures process as other Kenya modules (Section 1.7).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No walkway on arterial/collector | Non-compliance with RDM | SENIOR REVIEW -- Walkway required on all arterial and collector roads per Section 4.5.1. |
| High motorcycle traffic (> 30% of stream) | Motorcycle safety concern | NOTE -- High motorcycle traffic proportion. Evaluate motorcycle lane warrants per Section 4.7. |
| School zone without speed management | Child safety risk | SENIOR REVIEW -- School zone identified. Implement traffic calming per Chapter 11 (entry gates, speed humps, crossing). |
| Matatu stage without lay-by | Traffic and safety concern | NOTE -- Matatu stage without lay-by. Provide lay-by per Section 4.12 (15 m per bus, 3.5-4.0 m width). |

---

## M.7 Worked Example -- Kenya

### Example: NMT Provision for Urban Collector Road (Class UC) through Trading Centre

**Given:**
- Road: Class UC (KURA urban collector)
- Design Standard: DU4
- Design Speed: 50 km/h (Table 3.5, UC reduced)
- ADT: 8,000 vpd
- Motorcycle traffic: 35% of total traffic
- Pedestrian flow: 1,200 per day
- School zone: primary school 200 m from junction
- Trading centre section: 500 m

**Solution:**

**Step 1 -- Walkway provision:**
UC is a collector road -> walkway mandatory on both sides (Section 4.5.1).
Width: 1.5 m minimum, but high pedestrian flow (1,200/day) near school and trading centre -> use 3.0 m (Table 4.4, high volume).

**Step 2 -- Cycle track provision:**
UC road with urban context. Table 4.7: shared path for UA/UC = 3.0 m. If dedicated cycle track: 1.2-2.0 m.
Recommend: 2.0 m cycle track (separated) given high NMT volumes.

**Step 3 -- Motorcycle lane evaluation:**
Warrants check:
- ADT 8,000 < 15,000 threshold -> does not meet
- Motorcycle 35% > 30% -> MEETS
- KSI data not available
Only 1 of 3 warrants met. Motorcycle lane not warranted at this stage, but note high motorcycle proportion for monitoring.

**Step 4 -- Speed management (school zone and trading centre):**
Per Chapter 11:
- Entry gates at both ends of trading centre
- Speed reduction to 30 km/h through school zone (50 m before and after school)
- Raised pedestrian crossing at school desire line
- Speed humps or raised platforms at intervals

**Step 5 -- Bus/matatu stops:**
Provide lay-bys for matatu stops per Section 4.12:
- 15 m loading area per bus, 3.5 m width
- Location: after junctions, within 50 m

**Step 6 -- Boda-boda considerations:**
Per Section 3.6:
- Ensure motorcycle-friendly surface at curves and superelevation transitions
- Adequate clear zone for motorcycle envelope
- Warning signage at entry gates

**Result:**

| Parameter | Value |
|-----------|-------|
| Walkway | Both sides, 3.0 m width |
| Cycle track | 2.0 m separated |
| Motorcycle lane | Not warranted (1 of 3 warrants met) |
| Speed management | Entry gates, 30 km/h school zone, raised crossing |
| Matatu lay-by | 15 m x 3.5 m per bus, after junction |
| Pedestrian refuge | 2.0 m width at key crossing points |

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Geometric Design, Part 3: Geometric Design of Highways, Rural Roads and Urban Roads (RDM 1.3)*, 2025. Sections 3.6-3.8, 4.5-4.7, 4.12-4.14, Chapters 11, 13.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- walkway (Table 4.4/4.5), cycle lane (Table 4.6/4.7), motorcycle lane (Section 4.7/Table 4.8), bus lay-by (Section 4.12) verified against Kenya RDM 1.3 PDF. Boda-boda and matatu considerations comprehensive. |
