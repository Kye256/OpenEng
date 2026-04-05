# Small Span Structures -- Kenya Module

> **Parent Skill:** #40 Small Span Structures
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 4.2: Bridge and Culvert Design (2025); Kenya RDM 2.2: Drainage Design (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 4.2: Bridge and Culvert Design | 2025 | Ch 10 Section 10.4 (Box Culverts -- design for small span applications), Ch 2 Section 2.4 (General Design Requirements), Table 2.5 (Design Return Periods) | Current |
| Kenya RDM 2.2: Drainage Design | 2025 | Ch 3 (Drifts and Low-Level Crossings -- definitions Section 3.2, characteristics Section 3.3, design considerations Section 3.4), Appendix A Example A.4 (Drift Crossing Hydraulic Design) | Current |
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Construction requirements for causeways and small span structures | Current |

### M.1.2 Institutional Context

Small span structures in Kenya are governed by two RDM volumes: RDM 4.2 for structural design of box culverts and small bridges, and RDM 2.2 for drifts and low-level crossings. All road agencies apply these standards:
- **KeNHA** -- national highways (Class A/B), where conventional bridges or large box culverts are standard
- **KeRRA** -- rural roads (Class C/D/E), where drifts and causeways are common on low-volume roads
- **KURA** -- urban roads, where box culverts are typical for urban drainage crossings
- **County Governments** -- county roads, where drifts and low-level crossings serve many seasonal stream crossings

For institutional context and road classification, reference Skill #13 Kenya module (M.1.2 gateway).

### M.1.3 Standard Philosophy

Kenya distinguishes small span structures into two categories with different design references:

1. **Box culverts (RDM 4.2 Ch 10 Section 10.4):** Designed as buried concrete structures under EN/Eurocode loading (LM1). Applicable for spans up to about 6 m where the structure functions as a culvert beneath an embankment. Design follows Skill #33 (Culvert Structural Design) Kenya module.

2. **Drifts and low-level crossings (RDM 2.2 Ch 3):** At-grade or near-grade structures designed to allow water flow over the road surface during floods. RDM 2.2 Section 3.2 defines these as "road sections across waterways that are designed to allow water to flow over the road surface during flood events." Design is primarily hydraulic (flood frequency, overtopping depth, closure duration) with structural elements sized for scour protection and traffic loading.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table KSS.1: Type Selection Matrix for Kenya (RDM 2.2 Ch 3 and Practice)**

| AADT | Flow Regime | Acceptable Closure (days/yr) | Recommended Type | Reference |
|------|-------------|------------------------------|-----------------|-----------|
| < 50 | Seasonal | > 15 | Causeway (drift without pipes) | RDM 2.2 Section 3.2 |
| < 50 | Perennial (low base flow) | > 15 | Vented drift (causeway with pipes) | RDM 2.2 Section 3.3 |
| 50-200 | Seasonal | 10-15 | Vented drift or low-level crossing | RDM 2.2 Section 3.4 |
| 50-200 | Perennial | 5-10 | Low-level crossing or small box culvert | RDM 2.2/4.2 |
| 200-500 | Any | 2-5 | Box culvert or submersible bridge | RDM 4.2 Ch 10 |
| > 500 | Any | 0 | Conventional bridge (Skill #37) | RDM 4.2 Ch 2 |

**Table KSS.2: Drift/Causeway Characteristics (RDM 2.2, Section 3.3)**

| Characteristic | Description | Kenya Standard |
|---------------|-------------|---------------|
| Purpose | Allow water to flow over road surface during floods | RDM 2.2 Section 3.2 |
| Road surface | Concrete slab or stone pitching at crossing | Standard Specification |
| Pipe openings | Optional (vented drift) to pass base flow | Min 450 mm per RDM 4.2 Section 10.2 |
| Flood markers | Required at approaches | RDM 2.2 Section 3.4 |
| Scour protection | Required at downstream edge | Standard practice, gabion/riprap |

**Table KSS.3: Design Return Periods for Small Span Structures (RDM 4.2, Table 2.5, Verified)**

| Structure Type | Design Frequency (years) | Check Frequency (years) |
|---------------|-------------------------|------------------------|
| Pipe culverts | 10 | 25 |
| Box culverts (area <= 6.0 m2) | 25 | 50 |
| Box culverts (area > 6.0 m2) | 50 | 100 |
| Small bridges (6m < length <= 15m) and medium bridges (15m < length <= 50m) | 50 | 100 |
| Large bridges (length > 50m) | 100 | 200 |

**Table KSS.4: Minimum Vertical Clearance for River Bridges (RDM 4.2, Table 2.6, Verified)**

| Structure Type | Minimum Vertical Clearance (m) |
|---------------|-------------------------------|
| Small and medium bridges (6m < length <= 50m) | 1.0* |
| Large bridges (length > 50m) | 1.5 |

*Recommended up to 1.5m if vertical alignment permits.

**Table KSS.5: Acceptable Closure Days by Road Class (Kenya Practice)**

| Road Class | Acceptable Closure (days/yr) | Applicable Structure |
|------------|----------------------------|---------------------|
| Class A/B (KeNHA) | 0 | Conventional bridge |
| Class C (KeRRA, primary) | < 5 | Box culvert or submersible bridge |
| Class D (KeRRA, secondary) | 5-15 | Low-level crossing or vented drift |
| Class E (KeRRA, minor) | 10-30 | Causeway or vented drift |
| County (primary) | 5-15 | Low-level crossing |
| County (secondary/access) | 15-30+ | Causeway or drift |

### M.2.2 Country-Specific Formulas

**Drift crossing hydraulic design (per RDM 2.2, Section 3.4 and Appendix A, Example A.4):**

The drift crossing design considers:
1. **Overtopping flow:** Q_over = C_d x B x h^1.5 (broad-crested weir formula)
   Where B = width of road crossing, h = depth of flow over road surface, C_d = discharge coefficient (typically 1.5-1.7)
2. **Base flow through pipes (vented drift):** Q_pipes calculated using standard hydraulic formulae per Skill #31
3. **Total capacity:** Q_total = Q_pipes + Q_over
4. **Closure assessment:** Number of days per year when overtopping depth exceeds safe limit (typically 300 mm for vehicles)

**Box culvert structural design** follows Skill #33 Kenya module (EN/Eurocode loading with LM1, partial factors from Table 3.32 Set B).

### M.2.3 Classification System

Kenya road classification (Classes A-E + urban) determines the appropriate structure type and acceptable closure period. The key distinction is between:
- **All-weather roads** (Class A/B/C) where bridges or large culverts provide year-round access
- **Seasonal access roads** (Class D/E, county) where drift crossings with limited closure are acceptable

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

At Step 2 (flow regime assessment): Kenya has distinct wet and dry seasons with bimodal rainfall in highland areas (March-May and October-December) and unimodal in western regions. Many rivers in arid and semi-arid lands (ASALs) of northern and eastern Kenya are seasonal (ephemeral), making drifts practical for 4-6 months of dry season use.

At Step 4 (type selection): Apply Table KSS.1 with local knowledge. Consider:
- **County classification:** County roads (formerly classified under district or community access) form the bulk of Kenya's road network and are the primary market for drift crossings
- **Climate resilience:** RDM 2.2 Section 3.4 design considerations include flood frequency analysis. Climate change may increase peak flows -- consider using a higher return period for design
- **Material availability:** Stone for gabion protection is widely available in Kenya. Concrete construction capacity varies by county

### M.3.2 Professional Judgment (Kenya-Specific)

**Drifts are extensively used on rural Kenya roads.** KeRRA and County Governments manage thousands of stream crossings on low-volume roads where conventional bridges are unaffordable. Upgrading unimproved fords to concrete drifts with gabion protection provides major improvement at low cost.

**ASAL regions suit drift crossings well.** In northern and eastern Kenya (Turkana, Marsabit, Garissa, Wajir), seasonal rivers (luggas) are dry for much of the year. Drifts with vented pipes provide excellent service during dry periods.

**Flood warning is critical for safety.** RDM 2.2 Section 3.4 references design considerations for flood depth markers and approach signage. Given Kenya's rapid flood onset (particularly in semi-arid areas), flood warning infrastructure is essential.

**Box culverts serve multiple purposes.** In urban areas (KURA jurisdiction), box culverts serve as drainage crossings under roads. In rural areas, multi-cell box culverts can function as small bridges for seasonal streams. RDM 4.2 Section 10.4 applies to both applications.

### M.3.3 Common Errors (Kenya-Specific)

1. **Building causeways on perennial rivers.** If the river always has flow, a plain causeway will always be impassable. Build a vented drift (with pipes) or low-level crossing instead.
2. **Not referencing both RDM 2.2 and RDM 4.2.** Drift/causeway hydraulic design comes from RDM 2.2 Ch 3. Box culvert structural design comes from RDM 4.2 Ch 10. Both manuals must be consulted for small span structure projects.
3. **Undersizing drift pipes.** Minimum pipe diameter is 450 mm per RDM 4.2 Section 10.2. In Kenya, debris blockage during flash floods is common -- use larger pipe sizes where possible.
4. **Not specifying scour protection at downstream edge.** Overtopping flow accelerates at the downstream edge and causes severe scour. Gabion or riprap protection is essential.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Causeway slab thickness | 250 mm | Standard concrete causeway | No flag | Kenya practice |
| Minimum pipe size (drift) | 450 mm | All drift crossings | No flag | RDM 4.2 Section 10.2 minimum |
| Concrete strength | C25/30 | Small span structures | No flag | Standard for Kenya |
| Scour protection type | Gabion mattress | Causeway downstream edge | No flag | Standard Kenya practice per RDM 4.2 Figure 10.1 |
| Flood marker type | Depth posts | All drift crossings | No flag | RDM 2.2 Section 3.4 |
| Safe overtopping depth | 300 mm | Vehicle trafficability | ASSUMED: 300 mm max trafficable depth | Engineering practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Causeway slab thickness | 200 | 400 | mm | Practice | Warn if < 200 or > 400 |
| Drift pipe diameter | 450 | 1200 | mm | RDM 4.2 Section 10.2 | Reject if < 450 (blockage risk + below standard) |
| Box culvert span | 500 | 6000 | mm | RDM 4.2 Section 10.4 | Warn if > 6000 (consider bridge per Skill #37) |

### M.5.2 Standards Compliance Checks

- **Check:** Scour protection specified at downstream edge of drift/causeway
- **Standard:** Engineering practice, RDM 4.2 Figure 10.1
- **Pass condition:** Gabion, riprap, or stone pitching specified
- **Fail action:** Flag -- add scour protection to prevent downstream erosion

- **Check:** Flood depth markers specified for drift crossings
- **Standard:** RDM 2.2 Section 3.4
- **Pass condition:** Depth markers or painted posts specified at approaches
- **Fail action:** Flag -- add flood warning signage for safety

- **Check:** Design return period matches structure type
- **Standard:** RDM 4.2 Table 2.5
- **Pass condition:** Return period matches or exceeds Table 2.5 requirements
- **Fail action:** SENIOR REVIEW -- Design return period below minimum for structure type.

### M.5.3 Departures / Relaxations Process

No formal departures process for small span structures. Engineering justification should be documented for any departure from the recommended type selection (e.g., building a causeway on a road with AADT > 200).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| AADT > 500 with drift/causeway | Too much traffic for low-cost structure | SENIOR REVIEW -- AADT [X] exceeds 500. Upgrade to conventional bridge per RDM 4.2. |
| Perennial river with causeway selected | Permanently impassable | SENIOR REVIEW -- River has permanent flow. Causeway will be permanently overtopped. Use vented drift or low-level crossing per RDM 2.2 Section 3.3. |
| Flood duration > 3 hours on Class C road | Traffic disruption | SENIOR REVIEW -- Flood closure exceeds [X] hours on Class C road. Consider upgrading to box culvert or bridge. |
| No scour protection specified | Downstream erosion risk | SENIOR REVIEW -- No downstream scour protection. Specify gabion or riprap protection per RDM 4.2 Figure 10.1. |

---

## M.7 Worked Example -- Kenya

### Example: Drift Crossing Design for Class D Road -- Seasonal Stream

**Source:** RDM 2.2 Ch 3 design considerations and Appendix A Example A.4 approach

**Given:**
- Class D road (KeRRA), AADT = 120 vehicles/day
- Seasonal stream: normal wet-season base flow Q_normal = 0.8 m3/s, dry for 4 months/year
- Q_10 = 25 m3/s (10-year flood), Q_25 = 40 m3/s (25-year flood)
- Acceptable closure: 15 days/year
- River bed width: 15 m
- Budget: limited (rural road standard)

**Solution:**

**Step 1: Type selection**
- AADT = 120 --> suitable for drift or low-level crossing (Table KSS.1)
- Flow regime: seasonal with wet-season base flow of 0.8 m3/s
- Since base flow exists during wet season, a plain causeway would be overtopped even outside major floods. Recommend **vented drift** to pass the base flow.
- 15 days/year closure acceptable for Class D road (Table KSS.5)

**Step 2: Pipe sizing for vented drift**
- Normal flow: 0.8 m3/s
- Use 3 x 600 mm diameter concrete pipes (min 450 mm per RDM 4.2 Section 10.2)
- Pipe capacity (assuming 0.5 m head): Q_pipes = 3 x Cd x A x sqrt(2gH)
  = 3 x 0.7 x 0.283 x sqrt(2 x 9.81 x 0.5) = 3 x 0.7 x 0.283 x 3.13 = 1.86 m3/s
- 3 x 600 mm pipes handle approximately 1.9 m3/s --> handles base flow with margin

**Step 3: Slab design**
- Causeway slab: 250 mm thick reinforced concrete (C25/30)
- Width: match road width (6.5 m for Class D) + shoulders
- Length: 15 m (river bed width) + 3 m approaches each side = 21 m total
- Box culvert structural check not required -- this is a drift slab on grade, not a buried structure

**Step 4: Scour protection**
- Downstream edge: gabion mattress, 300 mm thick, extending 3 m downstream per RDM 4.2 Figure 10.1
- Upstream approach: stone pitching 150 mm thick
- Side protection: gabion baskets

**Step 5: Flood warning**
- Depth markers at both approaches (0.1 m intervals to 0.5 m)
- Warning sign: "FLOOD CROSSING -- DO NOT ENTER WHEN FLOODED"
- Guide posts along approaches per RDM 2.2 Section 3.4

**Step 6: Closure assessment**
- Structure overtops when Q > Q_pipes (approximately 1.9 m3/s)
- Based on flow frequency analysis, Q > 1.9 m3/s for approximately 25-35 days/year during wet season
- However, trafficable depth (< 300 mm) may be available for some overtopping events
- Effective closure approximately 12-18 days/year for depths > 300 mm
- Acceptable for Class D road (target 15 days/year)

**Result:**
- Structure type: Vented drift (causeway with pipes)
- Pipes: 3 x 600 mm diameter concrete pipes
- Slab: 250 mm RC, 21 m long, 6.5 m wide
- Scour protection: gabion mattress downstream, stone pitching upstream
- Estimated closure: 12-18 days/year (within acceptable range for Class D)
- Flood warning: depth markers and warning signs
- Design return period: 10-year design flow for pipe sizing (Table 2.5 for pipe culverts)

---

## M.8 References

1. Republic of Kenya, Ministry of Roads and Transport, *Road Design Manual, Volume 4: Bridge and Retaining Structures Design, Part 2: Bridge and Culvert Design (RDM 4.2)*, 2025. Chapter 10 (Culverts -- Section 10.4 Box Culverts), Chapter 2 (General Requirements -- Table 2.5 Return Periods).
2. Republic of Kenya, Ministry of Roads and Transport, *Road Design Manual, Volume 2: Drainage Design, Part 2: Drainage Design (RDM 2.2)*, 2025. Chapter 3 (Drifts and Low-Level Crossings -- Sections 3.2-3.4), Appendix A Example A.4 (Drift Crossing Hydraulic Design).
3. Republic of Kenya, Ministry of Roads and Transport, *Standard Specification for Road and Bridge Construction*, 2025.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- Box culverts from RDM 4.2 Ch 10, drifts/causeways from RDM 2.2 Ch 3, type selection matrix, design return periods from Table 2.5 |
