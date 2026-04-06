# Design Standards Selection -- Ethiopia Module

> **Parent Skill:** #13 Design Standards Selection
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geometric Design Manual - 2013, Chapter 2, Chapter 5
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geometric Design Manual | 2013 | Chapter 2 (Design Standards), Tables 2-1 through 2-17 | Current -- mandatory for all ERA roads |
| ERA Geometric Design Manual | 2013 | Chapter 5 (Basic Design Parameters), Sections 5.2, 5.11 | Current -- design period, road classification |
| ERA Geometric Design Manual | 2013 | Table 2-3 (Heavy Vehicle Adjustment) | Current -- traffic composition adjustments |

Note: The ERA Geometric Design Manual was developed with DFID/AFCAP/Crown Agents support and is based on AASHTO, FHWA, TRL, CSIR/SANRAL, and Ethiopian (TCDE) sources.

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) is the custodian of national road design standards. ERA manages the federal road network (trunk and link roads). Regional Roads Authorities manage regional roads (main access, collector, feeder). Woreda (district) and Kebele administrations manage community roads. All road authorities use the ERA design manuals as the national standard.

**Institutional hierarchy:**
- **ERA:** Federal trunk roads (Class I, prefix A) and link roads (Class II, prefix B). Approximately 26,000 km.
- **Regional Roads Authorities:** Main access roads (Class III, prefix C). Approximately 60,000 km.
- **Woreda administrations:** Collector roads (Class IV, prefix D) and feeder roads (Class V, prefix E). Approximately 120,000 km.
- **Kebele administrations:** Community roads and basic access tracks.

ERA's departure from standards process requires written approval submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3). The submission must include: road number, name and description; the design facet requiring departure; the standard value and proposed departure value; the reason; and any safety mitigation measures.

### M.1.3 Standard Philosophy

ERA uses a **dual classification system** -- functional class (I-V) for administrative purposes, and design class (DC1-DC8) based on AADT for geometric parameter selection. This is fundamentally different from Kenya (where functional class maps directly to design standards DR1-DR7) and Uganda (where functional class maps to design standards). In the ERA system, AADT is the primary driver of design class selection, and functional class sets a minimum acceptable DC floor. This decoupling allows the same functional class of road to have different geometric standards based on actual traffic demand.

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Functional Classification

ERA uses five functional classes based on the role of the road in the national network:

| Class | Name | Prefix | Typical AADT | Managed By |
|-------|------|--------|-------------|-----------|
| I | Trunk Road | A | >= 1,000 | ERA |
| II | Link Road | B | 75-10,000 | ERA |
| III | Main Access Road | C | 25-1,000 | Regional Roads Authority |
| IV | Collector Road | D | 25-300 | Woreda |
| V | Feeder Road | E | < 150 | Woreda/Kebele |

**Source:** ERA Geometric Design Manual - 2013, Section 5.11

### M.2.2 ERA Design Classification (DC1-DC8 + Basic Access)

Design class is determined primarily by mid-life AADT:

| Design Class | AADT Range | Surface Type | Notes |
|-------------|-----------|-------------|-------|
| DC8 | > 10,000 | Paved | Dual carriageway |
| DC7 | 3,000-10,000 | Paved | Single carriageway (may warrant dual at upper range) |
| DC6 | 1,000-3,000 | Paved | Single carriageway |
| DC5 | 300-1,000 | Paved | Single carriageway |
| DC4 | 150-300 | Paved or Unpaved | Separate paved and unpaved standards |
| DC3 | 75-150 | Paved or Unpaved | Separate paved and unpaved standards |
| DC2 | 25-75 | Paved or Unpaved | Separate paved and unpaved standards |
| DC1 | 1-25 | Any | Minimum engineered standard |
| Basic Access | < 1 or basic access only | Any | Minimum geometric standards (Table 2-17) |

**Source:** ERA Geometric Design Manual - 2013, Table 2-1

**Critical note:** DC4, DC3, and DC2 each have separate paved and unpaved standards with materially different geometric parameter values (design speeds, minimum radii, gradients). Always specify whether the paved or unpaved variant applies.

### M.2.3 Design Speeds by DC and Terrain

| Design Class | Flat | Rolling | Mountainous | Escarpment | Urban/Peri-Urban |
|-------------|------|---------|-------------|------------|-----------------|
| DC8 | 120 | 100 | 85 | 70 | 50 |
| DC7 | 120 | 100 | 85 | 70 | 50 |
| DC6 | 100 | 85 | 70 | 60 | 50 |
| DC5 | 85 | 70 | 60 | 50 | 50 |
| DC4 (paved) | 70 | 60 | 50 | 25 | 50 |
| DC4 (unpaved) | 70 | 60 | 45 | 25 | 50 |
| DC3 (paved) | 70 | 60 | 50 | 25 | 50 |
| DC3 (unpaved) | 70 | 60 | 45 | 25 | 50 |
| DC2 (paved) | 60 | 50 | 40 | 20 | 50 |
| DC2 (unpaved) | 60 | 50 | 35 | 20 | 50 |
| DC1 | 50 | 40 | 30 | 20 | 40 |

All speeds in km/h.

**Source:** ERA Geometric Design Manual - 2013, Table 2-1 (Verified from PDF)

**Notes:**
- Mountainous design speeds for DC4/DC3 unpaved (45 km/h) are adjusted to provide the same minimum radii as the paved standard at 50 km/h.
- Escarpment speeds may be dictated by terrain severity and achievable hairpin radii.
- Urban/peri-urban speeds are capped at 50 km/h for DC8-DC5 and 40 km/h for DC1.

### M.2.4 Functional Class Minimum DC Floor

Functional class sets a minimum acceptable design class regardless of AADT:

| Functional Class | Minimum DC |
|-----------------|-----------|
| Trunk (Class I) | DC5 |
| Link (Class II) | DC3 |
| Main Access (Class III) | DC2 |
| Collector (Class IV) | No minimum |
| Feeder (Class V) | No minimum |

**Source:** ERA Geometric Design Manual - 2013, Section 5.11

If the AADT-based DC is lower than the functional class minimum, the functional class minimum governs. Example: a Trunk Road (Class I) with AADT of 200 would normally be DC4, but the Class I floor of DC5 applies.

### M.2.5 Heavy Vehicle Adjustment (ERA Table 2-3)

When heavy vehicle volumes are significant, the design class may need to be upgraded:

| Current DC | Heavy Vehicle Threshold | Action |
|-----------|------------------------|--------|
| DC4 | > 80 heavy vehicles per day | Upgrade to DC5 |
| DC4 | 40-80 heavy vehicles per day | Increase road width to 7.0m (retain DC4 standards otherwise) |
| DC3 | > 25-30 heavy vehicles per day | Upgrade to DC4 |
| DC2 | > 10-20 heavy vehicles per day | Upgrade to DC3 |

**Source:** ERA Geometric Design Manual - 2013, Table 2-3

Heavy vehicles are defined as vehicles with a gross mass exceeding 3.5 tonnes. This adjustment addresses the need for wider carriageways and stronger pavements when heavy vehicle proportions are high.

### M.2.6 Design Period

ERA specifies the following design periods (Section 5.2):

| Road Type | Design Period | AADT Basis |
|----------|--------------|-----------|
| Paved roads | 15-20 years | Mid-life AADT |
| Unpaved roads | 10 years | Mid-life AADT |

Design class selection uses mid-life AADT (AADT at the midpoint of the design period), not current AADT and not end-of-design-life AADT. This approach balances initial construction cost against the risk of premature capacity shortfall.

**Source:** ERA Geometric Design Manual - 2013, Section 5.2

### M.2.7 Geometric Parameters Summary by DC

Summary of key geometric parameters by design class (flat terrain, desirable values). Detailed values for specific parameters are in the respective skill modules (horizontal alignment, vertical alignment, cross-section design).

| Parameter | DC8 | DC7 | DC6 | DC5 | DC4(P) | DC3(P) | DC2(P) | DC1 |
|-----------|-----|-----|-----|-----|--------|--------|--------|-----|
| Design speed (flat, km/h) | 120 | 120 | 100 | 85 | 70 | 70 | 60 | 50 |
| Carriageway width (m) | Dual 2x7.3 | 7.3 | 7.0 | 7.0 | 6.5 | 6.0 | 3.3 | 4.5 |
| Shoulder width, flat (m) | 3.0 | 3.0 | 1.5-3.0 | 1.5 | 1.25 | -- | 1.5 | -- |
| Normal crossfall (%) | 2.5 | 2.5 | 2.5 | 2.5 | 3 | 3 | 3 | 6 (unpaved) |
| Max gradient, flat (%) | 3 | 3 | 3 | 4 | 4 | 6 | 6 | 4 |
| Max gradient, mountain (%) | 8 | 9 | 9 | 10 | 10 | 12 | 12 | 12 |

**Source:** ERA Geometric Design Manual - 2013, Tables 2-6 through 2-17

**(P) = paved variant.** Unpaved variants for DC4, DC3, DC2 have different values -- see respective skill modules.

### M.2.8 Basic Access Standards (ERA Table 2-17)

Below DC1, ERA defines minimum geometric standards for basic access roads:

| Parameter | Value | Notes |
|-----------|-------|-------|
| Minimum radius | 12-20m | Depends on terrain and vehicle type |
| Maximum gradient (all vehicles) | 14% | Must not exceed 200m length |
| Maximum gradient (cars/pickups only) | 16% | Must not exceed 200m length |
| K-value (crest) | 2.5 | Minimum vertical curve parameter |
| K-value (sag) | 0.6 | Minimum vertical curve parameter |
| Carriageway width | 3.5m | Single lane with passing places |

**Source:** ERA Geometric Design Manual - 2013, Table 2-17

**Note:** Basic Access has no equivalent in the Uganda MoWT or Kenya RDM main manuals. It applies to community roads with very low traffic (fewer than 1 vehicle per day on average) where any engineered road is an improvement over an unformed track.

### M.2.9 Comparison with Kenya and Uganda Classification Systems

| Feature | ERA (Ethiopia) | RDM (Kenya) | MoWT (Uganda) |
|---------|---------------|-------------|---------------|
| Primary design parameter lookup | Design Class (DC1-DC8) from AADT | Design Standard (DR1-DR7/DU1-DU6) from functional class + traffic | Design Class (I-VI) from functional class |
| Functional classes | 5 (Trunk/Link/Main Access/Collector/Feeder) | 15+ (A/B/C/D/E + specialist rural + urban) | 5 (National Trunk/District/Urban/Community/Feeder) |
| AADT role | Primary driver of design class | Secondary (within functional class) | Secondary |
| Functional class role | Sets minimum DC floor | Directly determines design standard range | Directly determines design class |
| Below-minimum category | Basic Access (Table 2-17) | DR7 is lowest | No equivalent below Class VI |
| Paved/unpaved split | DC4, DC3, DC2 have separate standards | Implicit in design standard selection | Implicit in design class |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (ERA Branch)

```
Step 1 (ERA): Determine Design Class from AADT
  +-- AADT > 10,000 -> DC8 (dual carriageway, paved)
  +-- AADT 3,000-10,000 -> DC7 (paved)
  +-- AADT 1,000-3,000 -> DC6 (paved)
  +-- AADT 300-1,000 -> DC5 (paved)
  +-- AADT 150-300 -> DC4 (paved or unpaved)
  +-- AADT 75-150 -> DC3 (paved or unpaved)
  +-- AADT 25-75 -> DC2 (paved or unpaved)
  +-- AADT 1-25 -> DC1
  \-- AADT < 1 or basic access only -> Basic Access (Table 2-17)

Step 2 (ERA): Check functional class floor
  +-- Trunk Road (Class I) -> minimum DC5
  +-- Link Road (Class II) -> minimum DC3
  +-- Main Access (Class III) -> minimum DC2
  +-- Collector (Class IV) -> no minimum
  \-- Feeder (Class V) -> no minimum
  If AADT-based DC < functional class minimum, use functional class minimum.

Step 3 (ERA): Check heavy vehicle adjustment (Table 2-3)
  +-- DC4 with >80 heavy vehicles -> use DC5
  +-- DC4 with 40-80 heavy vehicles -> increase road width to 7.0m
  +-- DC3 with >25-30 heavy vehicles -> use DC4
  +-- DC2 with >10-20 heavy vehicles -> use DC3
  \-- No adjustment otherwise

Step 4 (ERA): Determine terrain class
  -> Use Section 5.6 contour-count method (see Skill #11 Ethiopia module)
  -> Select design speed from Table 2-1 for DC x Terrain
  -> If paved/unpaved distinction applies (DC4, DC3, DC2), use the
     appropriate column
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**When AADT data is uncertain,** use traffic count surveys or growth projections to estimate mid-life AADT. For roads near DC boundaries, consider using the higher DC as future-proofing, especially given that Ethiopian traffic growth rates are typically high (5-7% per annum in recent decades). The cost of constructing to a higher geometric standard is often modest compared to the cost of future realignment.

**Paved vs unpaved decision at DC4/DC3/DC2** depends on project funding, maintenance capacity, and traffic growth trajectory. ERA provides separate standards for both options. In practice, most ERA-managed roads (Class I and II) are paved, while many Regional and Woreda roads remain unpaved. The paved/unpaved decision is usually made at the project feasibility stage, not during geometric design.

**Traffic count reliability varies significantly** across Ethiopia's road network. ERA and donor-funded roads often have recent count data. Regional and Woreda roads may rely on estimates or counts that are several years old. When using estimated AADT, always flag the uncertainty and recommend a traffic count survey before detailed design.

**The dual classification system (functional + design class) requires careful communication.** In correspondence and reports, always specify both the functional class (e.g., "Link Road, Class II") and the design class (e.g., "DC6") to avoid ambiguity. The functional class determines administrative responsibility and funding eligibility; the design class determines geometric parameters.

---

## M.4 Country-Specific Defaults

| Parameter | Default Value | Flag Text |
|-----------|--------------|-----------|
| Design period | 15 years (paved), 10 years (unpaved) | "Assumed ERA standard design period. Verify with project Terms of Reference." |
| AADT source | Mid-life AADT | "Using mid-life AADT per ERA Section 5.2." |
| Traffic growth rate | 5% per annum (if not specified) | "Assumed 5% annual traffic growth. Verify with ERA traffic projections or project-specific data." |
| Heavy vehicle proportion | 20% of total AADT | "Assumed 20% heavy vehicles. Verify with traffic classification count." |
| Paved/unpaved (DC4/DC3/DC2) | Paved | "Assumed paved standard. Verify with project feasibility report or Terms of Reference." |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| AADT | 0 | -- | vpd | ERA Table 2-1 | Warn -- negative AADT is invalid |
| Design speed (rural) | 20 | 120 | km/h | ERA Table 2-1 | Warn -- outside ERA design speed range |
| Design speed (urban) | 40 | 50 | km/h | ERA Table 2-1 | Warn -- outside ERA urban design speed range |
| Design class | DC1 | DC8 | -- | ERA Table 2-1 | Warn -- DC must be DC1-DC8 or Basic Access |

### M.5.2 Standards Compliance

- **Check:** Design class is not below functional class minimum.
- **Standard:** ERA Section 5.11
- **Pass condition:** DC >= functional class minimum (Trunk->DC5, Link->DC3, Main Access->DC2)
- **Fail action:** Warn -- "DC[X] is below the minimum for [Functional Class]. Minimum DC for [Class] is DC[Y] per ERA Section 5.11."

- **Check:** Design speed falls within the ERA table for the assigned DC and terrain.
- **Standard:** ERA Table 2-1
- **Pass condition:** Speed matches the table value for the DC, terrain, and paved/unpaved status
- **Fail action:** Warn -- "Design speed [X] km/h does not match ERA Table 2-1 for DC[Y] on [terrain] terrain. Expected [Z] km/h."

- **Check:** Heavy vehicle adjustment has been considered.
- **Standard:** ERA Table 2-3
- **Pass condition:** Heavy vehicle count checked against adjustment thresholds for the selected DC
- **Fail action:** Note -- "Heavy vehicle adjustment not verified. Check ERA Table 2-3 thresholds for DC[X]."

### M.5.3 Departures Process

ERA requires written approval for departures from standards, submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3). The submission must include:

1. The number, name, and description of the road
2. The facet of design for which a Departure from Standards is desired
3. A description of the standard, including normal value, and value of the Departure
4. The reason for the Departure from Standards
5. Any mitigation to be applied in the interests of safety

Common departure scenarios in design standards selection include: using a lower DC than AADT indicates (cost constraint), using a higher DC than AADT indicates (strategic importance), or applying urban design speeds to a rural section (safety concern near settlements).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Action |
|---------|--------|--------|
| AADT data unavailable or older than 5 years | Design class selection based on outdated or estimated traffic data may be incorrect | SENIOR REVIEW -- Commission traffic count survey before selecting design class |
| Road class at functional floor (AADT suggests lower DC) | Functional class floor is overriding AADT-based selection -- cost implications | SENIOR REVIEW -- Verify functional classification is correct. Consider whether a departure from the functional class minimum is justified. |
| Dual carriageway warranted (DC8) | DC8 requires dual carriageway design -- significant cost and right-of-way implications | SENIOR REVIEW -- Confirm AADT exceeds 10,000. Evaluate staged construction (single carriageway now, dual later). |
| Basic Access road | Specialist design standards apply (Table 2-17) -- very different from standard DCs | SENIOR REVIEW -- Confirm Basic Access is appropriate. These standards are minimal and may not accommodate future traffic growth. |
| Traffic growth rate > 7% | High growth may warrant higher DC for future-proofing; Ethiopian growth rates have historically been high | SENIOR REVIEW -- Evaluate sensitivity of DC selection to growth rate. Consider designing to the next higher DC. |
| Heavy vehicle adjustment triggers DC upgrade | Table 2-3 adjustment changes the design class and all downstream geometric parameters | NOTE -- Heavy vehicle adjustment has changed DC from [X] to [Y]. Verify heavy vehicle count data and recalculate all geometric parameters for the new DC. |

---

## M.7 Worked Example

### Example: Design Standards Selection for Bahir Dar to Debre Tabor Road

**Given:**
- Road: Bahir Dar to Debre Tabor (Link Road, Class II)
- Country: Ethiopia
- Authority: ERA (federal link road)
- Function: Links regional capital (Bahir Dar) to zonal centre (Debre Tabor)
- Terrain: Rolling (Ethiopian highland plateau, cross slopes approximately 10-15%)
- Current AADT: 1,800 vpd (2024 ERA count)
- Heavy vehicles: 250 vpd (approximately 14% of total)
- Growth rate: 5% (ERA regional projection)
- Project type: New construction (paved)

**Solution:**

**Step 1: Determine AADT for DC selection**
- Design period: 15 years (paved road, ERA Section 5.2)
- Mid-life year: 2024 + 7.5 = 2031.5 (use year 8)
- Mid-life AADT = 1,800 x (1.05)^8 = 1,800 x 1.477 = **2,659 vpd**
- Mid-life AADT of 2,659 falls in the 1,000-3,000 range -> **DC6**

**Step 2: Check functional class floor**
- Link Road (Class II) -> minimum DC3
- DC6 >= DC3 -> **OK, no adjustment needed**

**Step 3: Check heavy vehicle adjustment (Table 2-3)**
- DC6 is not listed in Table 2-3 (adjustment applies to DC4, DC3, DC2 only)
- **No adjustment applicable at DC6**

**Step 4: Determine terrain and design speed**
- Terrain: Rolling (see Skill #11 Ethiopia module for classification)
- From Table 2-1: DC6, Rolling terrain -> **Design speed: 85 km/h**

**Result:**

| Parameter | Value | Source |
|-----------|-------|--------|
| Standard | ERA Geometric Design Manual - 2013 | -- |
| Functional Class | II (Link Road) | ERA Section 5.11 |
| Current AADT | 1,800 vpd | ERA traffic count (2024) |
| Mid-life AADT | 2,659 vpd | Calculated at year 8, 5% growth |
| Design Class | DC6 | ERA Table 2-1 (AADT 1,000-3,000) |
| Functional floor check | DC6 >= DC3 (Link minimum) | ERA Section 5.11 -- PASS |
| Heavy vehicle check | Not applicable at DC6 | ERA Table 2-3 |
| Terrain | Rolling | ERA Section 5.6 |
| Design Speed | 85 km/h | ERA Table 2-1 (DC6, Rolling) |
| Carriageway Width | 7.0m | ERA Table 2-1 |
| Shoulder Width | 1.5-3.0m | ERA Table 2-1 (DC6, Rolling) |
| Design Period | 15 years | ERA Section 5.2 |
| Design Vehicle | DV4 (Truck + semi-trailer) | ERA Table 5-3 (DC6) |

**Escalation:** None -- all parameters within normal ranges. The AADT is well within the DC6 range and above the functional class floor. Growth rate of 5% is within normal Ethiopian range.

---

## M.8 References

1. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Chapter 2 (Design Standards), Tables 2-1 through 2-17.
2. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Chapter 5 (Basic Design Parameters), Sections 5.2 (Design Period), 5.11 (Road Classification).
3. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Table 2-3 (Heavy Vehicle Adjustment).
4. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Section 2.3 (Departures from Standards).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- complete ERA dual classification system (functional I-V + design DC1-DC8 + Basic Access). Full design speed table by DC and terrain. Heavy vehicle adjustments from Table 2-3. Comparison with Kenya and Uganda classification systems. Worked example: Bahir Dar to Debre Tabor road. |
