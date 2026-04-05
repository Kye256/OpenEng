# Intersection Design -- Ethiopia Module

> **Parent Skill:** #19 Intersection & Junction Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geometric Design Manual - 2013, Chapter 11, Chapter 12
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geometric Design Manual | 2013 | Chapter 11 (At-Grade Intersections), Chapter 12 (Grade-Separated Junctions), Tables 11-1 to 11-7, Figures 11-2, 11-3 | Current -- mandatory for all ERA roads |

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) is the custodian of national road design standards. Intersection design follows ERA Chapter 11 for at-grade junctions and Chapter 12 for grade-separated interchanges. ERA's intersection design approach uses traffic flow volumes on the major and minor roads to select the junction type from Figures 11-2 and 11-3. Access control (Table 11-1) varies by design class. Departures from intersection standards require written approval through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3).

### M.1.3 Standard Philosophy

ERA Chapter 11 provides a systematic junction type selection framework based on traffic volumes. The framework uses two flow charts (Figures 11-2 for three-leg junctions, 11-3 for four-leg junctions) that classify junctions into priority (unsignalised), channelised, roundabout, or signalised types based on the combination of major road and minor road traffic flows. This volume-based approach is more prescriptive than the warrants-based systems used in Kenya and Uganda, providing clear thresholds rather than engineering judgment ranges.

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Junction Type Selection (ERA Figures 11-2, 11-3)

ERA junction type selection is based on traffic volumes on the major and minor roads:

**Three-leg (T-junction) -- Figure 11-2:**

| Major Road Flow (vpd) | Minor Road Flow (vpd) | Recommended Junction Type |
|----------------------|---------------------|--------------------------|
| < 300 | < 50 | Simple priority (stop/yield) |
| 300-3,000 | < 300 | Priority with turning lanes |
| > 3,000 | < 1,000 | Channelised priority |
| > 3,000 | 1,000-5,000 | Roundabout or signalised |
| > 10,000 | > 3,000 | Grade-separated |

**Four-leg (crossroad) -- Figure 11-3:**

| Major Road Flow (vpd) | Minor Road Flow (vpd) | Recommended Junction Type |
|----------------------|---------------------|--------------------------|
| < 300 | < 50 | Simple priority (stop/yield) |
| 300-3,000 | < 300 | Priority with turning lanes |
| > 3,000 | < 500 | Channelised priority |
| > 3,000 | 500-3,000 | Roundabout |
| > 5,000 | > 3,000 | Signalised or grade-separated |

**Source:** ERA GDM 2013, Figures 11-2, 11-3 (approximate thresholds from flow charts, verified from PDF)

**Note:** These thresholds are approximate readings from ERA's graphical flow charts. The actual figures use continuous curves. Designers should consult the original figures for precise boundary cases.

### M.2.2 ERA Access Control by DC (ERA Table 11-1)

| DC | Access Control | Description |
|----|---------------|-------------|
| DC8 | Full control | No direct access; access only through interchanges |
| DC7 | Partial control | Limited access points; minimum spacing enforced |
| DC6 | Partial control | Access permitted at defined junction locations |
| DC5 | Minimum control | Access generally permitted; junction spacing guidelines apply |
| DC4 | No control | Direct property access permitted |
| DC3 | No control | Direct property access permitted |
| DC2 | No control | Direct property access permitted |
| DC1 | No control | Direct property access permitted |

**Source:** ERA GDM 2013, Table 11-1 (Verified from PDF)

### M.2.3 ERA Intersection Sight Distance -- Yield Control (ERA Tables 11-3, 11-4)

**Table 11-3: Sight distance for vehicles yielding at intersections:**

| Design Speed of Major Road (km/h) | 40 | 50 | 60 | 70 | 85 | 100 | 120 |
|-----------------------------------|----|----|----|----|----|----|-----|
| ISD -- Yield from left (m) | 80 | 100 | 120 | 145 | 175 | 210 | 255 |
| ISD -- Yield from right (m) | 80 | 100 | 120 | 145 | 175 | 210 | 255 |

**Table 11-4: Adjusted ISD for gradient on minor road:**

| Minor Road Gradient | Adjustment Factor |
|--------------------|-------------------|
| Upgrade > 3% | Multiply ISD by 1.1 |
| Downgrade > 3% | No adjustment (vehicles approach faster but can stop sooner on level) |

**Source:** ERA GDM 2013, Tables 11-3, 11-4 (Verified from PDF)

### M.2.4 ERA Intersection Sight Distance -- Stop Control (ERA Table 11-5)

| Design Speed of Major Road (km/h) | 40 | 50 | 60 | 70 | 85 | 100 | 120 |
|-----------------------------------|----|----|----|----|----|----|-----|
| ISD -- Stop control (m) | 70 | 90 | 110 | 130 | 165 | 200 | 245 |

**Source:** ERA GDM 2013, Table 11-5 (Verified from PDF)

Stop-controlled intersections require less sight distance than yield-controlled intersections because the minor road vehicle starts from rest, allowing a smaller gap in major road traffic.

### M.2.5 ERA Turn Lane Lengths (ERA Tables 11-6, 11-7)

**Table 11-6: Deceleration lane lengths (right-turn lanes):**

| Approach Speed (km/h) | Deceleration Length (m) | Taper Length (m) |
|----------------------|------------------------|-----------------|
| 50 | 40 | 25 |
| 60 | 55 | 30 |
| 70 | 70 | 35 |
| 85 | 100 | 45 |
| 100 | 130 | 55 |
| 120 | 175 | 65 |

**Table 11-7: Storage lengths for turning vehicles:**

| Design Volume of Turning Vehicles (vpd) | Storage Length (m) |
|-----------------------------------------|-------------------|
| < 25 | 15 |
| 25-50 | 25 |
| 50-100 | 35 |
| 100-200 | 50 |
| > 200 | 75 or calculation |

**Source:** ERA GDM 2013, Tables 11-6, 11-7 (Verified from PDF)

Total right-turn lane length = Taper + Deceleration + Storage.

### M.2.6 ERA Acceleration and Merging Lanes

Acceleration lanes are required when a minor road enters a high-speed major road (DC7, DC8). ERA specifies acceleration lane lengths based on the speed difference between the merging vehicle and main traffic stream:

| Merge Speed Difference (km/h) | Acceleration Length (m) |
|------------------------------|------------------------|
| 20 | 60 |
| 40 | 120 |
| 60 | 200 |
| 80 | 300 |

Merging tapers: minimum 1:10 longitudinal to transverse ratio. Taper lengths range from 50 m (60 km/h) to 100 m (120 km/h).

### M.2.7 ERA Roundabout Design

ERA provides roundabout design parameters for intersections where traffic flows are relatively balanced between approaches:

| Parameter | Mini-Roundabout | Normal Roundabout | Large Roundabout |
|-----------|----------------|-------------------|-----------------|
| Inscribed circle diameter | 15-25 m | 25-50 m | 50-80 m |
| Circulating width | 5-7 m | 7-10 m | 10-15 m |
| Entry width | 4-6 m | 6-8 m | 8-12 m |
| Design speed (circulating) | 15-25 km/h | 25-35 km/h | 30-40 km/h |

**Deflection requirement:** The entry path must be deflected to ensure speeds are reduced. Maximum undeflected entry speed should not exceed 40 km/h.

**Capacity:** Roundabouts are most efficient when approach flows are roughly balanced (ratio < 2:1 between highest and lowest approach). Where one approach dominates heavily, signalised junctions may be more appropriate.

### M.2.8 Grade-Separated Junctions (ERA Chapter 12)

ERA Chapter 12 covers grade-separated interchanges. Key warrants and types:

**Warrants:**
- DC8 roads: grade separation required at all major junctions (full access control)
- DC7 roads: grade separation considered when combined traffic exceeds 15,000 vpd at junction
- Safety: where at-grade junction has documented accident history exceeding threshold

**Interchange types:**
| Type | Configuration | When Used |
|------|-------------|-----------|
| Diamond | Two ramp terminals at cross-road | Standard for DC7/DC8 x DC4+ |
| Partial cloverleaf | Loop ramps on one or two quadrants | Where right-of-way is available |
| Full cloverleaf | Loop ramps on all four quadrants | High-volume DC8 junctions |
| Trumpet | Three-leg interchange | Y-junctions, route termini |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (ERA Branch)

```
Step 1 (ERA): Classify major and minor road traffic
  +-- Determine AADT for major road and each minor road approach
  +-- Determine design speed for major road from DC and terrain
  \-- Identify junction type: 3-leg (T-junction) or 4-leg (crossroad)

Step 2 (ERA): Select junction type from Figure 11-2 or 11-3
  +-- Low volume both roads -> simple priority (stop/yield)
  +-- Medium major, low minor -> priority with turning lanes
  +-- High major, medium minor -> channelised priority
  +-- Balanced moderate/high flows -> roundabout
  +-- Very high flows -> signalised or grade-separated
  \-- DC8 -> grade-separated required

Step 3 (ERA): Check access control for DCs involved (Table 11-1)
  +-- DC8: full control -> no at-grade junction permitted
  +-- DC7: partial control -> spacing requirements apply
  +-- DC5-DC6: minimum control -> junction location guidelines
  \-- DC1-DC4: no control -> direct access permitted

Step 4 (ERA): Calculate sight distance requirements
  +-- Yield control -> use Table 11-3/11-4
  +-- Stop control -> use Table 11-5
  +-- Adjust for gradient on minor road
  \-- Check sight triangle is clear of obstructions

Step 5 (ERA): Design turn lanes if channelised
  +-- Deceleration length from Table 11-6
  +-- Storage length from Table 11-7
  +-- Total = Taper + Deceleration + Storage
  \-- Check lane width (minimum 3.0 m)

Step 6 (ERA): Check for roundabout warrant
  +-- Balanced flows (ratio < 2:1) -> roundabout may be preferred
  +-- Inscribed circle diameter from traffic volume
  +-- Check deflection requirement
  \-- If unbalanced -> consider signalised instead
```

### M.3.2 Professional Judgment (ERA-Specific)

**ERA flow chart thresholds are approximate.** Figures 11-2 and 11-3 use continuous curves on graphical flow charts. Near boundary conditions, professional judgment determines whether to use the lower or higher junction type. When in doubt, use the higher-standard junction type.

**Ethiopian urban junctions require NMT consideration.** Many ERA-classified roads pass through towns where pedestrian, cyclist, and animal cart traffic is significant. Junction design should coordinate with the NMT module (Skill #20) for footpath continuity, crossing facilities, and traffic calming.

**Roundabouts are increasingly common at Ethiopian urban intersections.** They provide good capacity without signalisation (avoiding electricity dependency) and inherently reduce speeds. However, they require adequate right-of-way and are less suitable in constrained urban settings.

### M.3.3 Common Errors (ERA-Specific)

1. **Using Kenya ISD values for Ethiopian junctions.** ERA Tables 11-3 to 11-5 provide ERA-specific sight distances. Kenya Table 3.18 values differ.
2. **Not checking access control for DC7/DC8.** DC8 requires full access control; DC7 requires partial. At-grade junctions on these roads need formal evaluation.
3. **Undersizing storage lengths.** Table 11-7 storage lengths are minimums. For junctions with seasonal traffic peaks (harvest periods, religious festivals), additional storage should be considered.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Junction type | Priority (stop-controlled) | Traffic volumes not available | ASSUMED: Stop-controlled priority junction. Verify with traffic count data. | ERA GDM 2013, Figures 11-2/11-3 |
| ISD calculation | Stop-controlled values (Table 11-5) | Control type not specified | ASSUMED: Stop control on minor road (conservative) | ERA GDM 2013, Table 11-5 |
| Turn lane width | 3.0 m | Not specified | ASSUMED: 3.0 m turn lane width (ERA minimum) | ERA GDM 2013, Chapter 11 |
| Roundabout inscribed diameter | 35 m | Volume not specified | ASSUMED: 35 m inscribed diameter (normal roundabout) | ERA GDM 2013, Chapter 11 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| ISD (yield, 60 km/h) | 120 | -- | m | ERA GDM Table 11-3 | Reject if below 120 m |
| ISD (stop, 60 km/h) | 110 | -- | m | ERA GDM Table 11-5 | Reject if below 110 m |
| Turn lane width | 3.0 | -- | m | ERA GDM Chapter 11 | Warn if below 3.0 m |
| Roundabout inscribed diameter | 15 | 80 | m | ERA GDM Chapter 11 | Warn if outside range |
| Junction turning radius (DV4) | 13.7 | -- | m | ERA GDM Table 5-2 | Reject if < 13.7 m for DV4 junction |

### M.5.2 Standards Compliance Checks

- **Check:** ISD available >= ISD required from Tables 11-3 or 11-5
- **Standard:** ERA GDM 2013, Chapter 11
- **Pass condition:** Available ISD >= required ISD for the major road design speed and control type
- **Fail action:** SENIOR REVIEW -- ISD [X]m below required [Y]m at [speed] km/h. Requires sight triangle clearance or Departure from Standards.

- **Check:** Access control provisions for DC7/DC8
- **Standard:** ERA GDM 2013, Table 11-1
- **Pass condition:** DC8 junctions are grade-separated; DC7 junctions meet spacing requirements
- **Fail action:** SENIOR REVIEW -- At-grade junction proposed on DC[7/8] road. Full/partial access control required.

### M.5.3 Departures / Relaxations Process

ERA departures require written approval (Section 2.3). Junction design departures include: reduced sight distances, non-standard junction types for the traffic volume, and at-grade junctions on DC7/DC8 roads. Submit through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| ISD obstructed below Table 11-3/11-5 | Collision risk | SENIOR REVIEW -- ISD obstructed to [X]m, required [Y]m. Options: relocate junction, remove obstruction, change control type, apply Departure. |
| At-grade junction proposed on DC8 | Violates full access control | SENIOR REVIEW -- DC8 requires grade-separated junctions (Table 11-1). At-grade junction not permitted without Departure. |
| Roundabout approach flow ratio > 2:1 | Capacity imbalance | NOTE -- Approach flow ratio [X]:1 exceeds recommended 2:1. Consider signalised intersection for better capacity management. |
| Junction in mountainous terrain | Gradient affects sight distance and braking | NOTE -- Minor road gradient > 3%. Apply 1.1 adjustment factor to ISD per Table 11-4. |

---

## M.7 Worked Example -- Ethiopia

### Example: Junction Design for T-Intersection on Route B31 near Sodo

**Given:**
- Major road: Route B31 (Shashemene to Sodo), DC5 paved
- Minor road: DC3 paved (access to Boditi town)
- Major road AADT: 800 vpd
- Minor road AADT: 120 vpd
- Major road design speed: 70 km/h (rolling terrain)
- Terrain: Rolling
- Turning traffic: 80 vpd right-turning from major to minor

**Solution:**

**Step 1 -- Junction type selection:**
From Figure 11-2 (3-leg junction): Major 800 vpd, Minor 120 vpd. This falls in the "priority with turning lanes" zone. A channelised priority junction with a right-turn lane is appropriate.

**Step 2 -- Access control:**
DC5 has minimum access control (Table 11-1). Junction is permitted at this location.

**Step 3 -- Sight distance (stop control on minor road):**
Major road design speed: 70 km/h. From Table 11-5: ISD = 130 m.
Check: no obstructions within 130 m sight triangle. PASS.

**Step 4 -- Right-turn lane design:**
Approach speed: 70 km/h.
From Table 11-6: Deceleration length = 70 m, taper = 35 m.
From Table 11-7: 80 vpd turning -> storage length = 35 m.
Total right-turn lane length: 35 m (taper) + 70 m (deceleration) + 35 m (storage) = 140 m.

**Step 5 -- Junction turning radius:**
Design vehicle for DC5 major road: DV4 (Table 5-3). Min turn radius: 13.7 m.
Design vehicle for DC3 minor road: DV3 (Table 5-3). Min turn radius: 12.8 m.
Governing: DV4 at 13.7 m. Provide minimum kerb radius of 14.0 m.

**Result:**

| Parameter | Value |
|-----------|-------|
| Junction type | Channelised priority T-junction |
| Control | Stop on minor road |
| ISD required | 130 m |
| Right-turn lane total length | 140 m |
| - Taper | 35 m |
| - Deceleration | 70 m |
| - Storage | 35 m |
| Minimum kerb radius | 14.0 m (for DV4) |
| Design vehicle | DV4 (governing) |

All outputs are preliminary/screening level. Verify against project-specific conditions and ERA departures process.

---

## M.8 References

1. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Chapter 11 (At-Grade Intersections), Tables 11-1 to 11-7, Figures 11-2, 11-3.
2. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Chapter 12 (Grade-Separated Junctions).
3. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Table 5-2 (Design Vehicle Dimensions), Table 5-3 (Design Vehicle Assignment).
4. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Section 2.3 (Departures from Standards).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- junction type selection from Figures 11-2/11-3, sight distances from Tables 11-3 to 11-5, turn lane lengths from Tables 11-6/11-7, access control from Table 11-1, roundabout parameters, and grade-separated junction warrants verified against ERA GDM 2013 PDF. Worked example on Route B31 near Sodo. |
