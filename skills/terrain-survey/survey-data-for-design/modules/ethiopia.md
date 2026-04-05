# Survey Data for Design -- Ethiopia Module

> **Parent Skill:** #12 Survey Data for Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geometric Design Manual - 2013, Chapter 4
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geometric Design Manual | 2013 | Chapter 4 (Survey Data Requirements), Tables 4-1, 4-2, 4-3 | Current -- mandatory for all ERA roads |

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) manages the federal road network (trunk and link roads). Regional Roads Authorities manage regional roads (main access, collector, feeder). Woreda (district) and Kebele administrations manage community roads. All road authorities use the ERA design manuals as the national standard. The manuals were developed with DFID/AFCAP/Crown Agents support and are based on AASHTO, FHWA, TRL, CSIR/SANRAL, and Ethiopian (TCDE) sources. See Skill #13 Ethiopia module for full institutional context.

ERA's departure from standards process requires written approval submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3).

### M.1.3 Standard Philosophy

ERA specifies survey accuracy and bandwidth requirements by project type. New construction requires higher accuracy than rehabilitation or maintenance planning. The manual defines minimum requirements for topographic surveys, cross-sections, benchmarks, and photogrammetric surveys. Survey data must be sufficient to support geometric design to ERA standards for the applicable design class.

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Survey Data Requirements by Project Type (Table 4-1)

| Project Type | Topographic Survey | Cross-Sections | Longitudinal Profile | Geotechnical | Notes |
|-------------|-------------------|----------------|---------------------|-------------|-------|
| New construction | Full corridor survey, minimum 50m width | At 20m intervals (rolling/mountainous: 10m at critical points) | Continuous | Full investigation | Highest accuracy and coverage required |
| Upgrading | Corridor survey of existing alignment plus alternatives | At 25m intervals (closer at structures and junctions) | Continuous along existing and alternative alignments | Targeted investigation | Focus on existing road condition plus new alignment options |
| Rehabilitation | Survey of existing road and immediate surroundings | At 50m intervals (closer at problem areas) | Continuous along existing alignment | At problem locations | Reduced scope -- existing alignment retained |
| Maintenance planning | Condition survey along existing road | At 100m intervals or as needed | Longitudinal roughness measurement | Not typically required | Screening-level data only |

**Source:** ERA Geometric Design Manual - 2013, Chapter 4, Table 4-1

### M.2.2 ERA Survey Accuracy Levels (Table 4-2)

| Survey Type | Horizontal Accuracy | Vertical Accuracy | Notes |
|------------|--------------------|--------------------|-------|
| Primary control | +/- 10 mm | +/- 5 mm | Tied to national geodetic network |
| Secondary control | +/- 25 mm | +/- 10 mm | Established from primary control |
| Topographic detail | +/- 50 mm | +/- 25 mm | For design-level surveys |
| Cross-section | +/- 50 mm | +/- 25 mm | At specified intervals |
| Preliminary/reconnaissance | +/- 500 mm | +/- 250 mm | For route selection studies |

**Source:** ERA Geometric Design Manual - 2013, Chapter 4, Table 4-2

### M.2.3 ERA Photogrammetry Scales (Table 4-3)

| Project Type/Terrain | Photography Scale | Contour Interval | Notes |
|---------------------|------------------|-----------------|-------|
| Reconnaissance (all terrain) | 1:25,000 to 1:50,000 | 5-10m | Route corridor identification |
| Preliminary design (flat) | 1:10,000 | 2m | Alignment alternatives |
| Preliminary design (rolling/mountainous) | 1:5,000 | 2-5m | Alignment alternatives in complex terrain |
| Detailed design (flat/rolling) | 1:5,000 | 1-2m | Final design-level mapping |
| Detailed design (mountainous/escarpment) | 1:2,500 | 1-2m | Higher resolution for complex terrain |

**Source:** ERA Geometric Design Manual - 2013, Chapter 4, Table 4-3

### M.2.4 Cross-Section Bandwidth

ERA requires a minimum cross-section bandwidth of 25m either side of the centreline (50m total corridor width) for design-level surveys. Wider corridors are required in the following situations:

- Complex terrain with high side slopes: extend to capture natural ground beyond cut/fill limits
- Junction and interchange areas: extend to cover all approach roads and turning movements
- Urban/peri-urban sections: extend to capture property boundaries and existing services
- Areas of route uncertainty: survey multiple corridor options

**Source:** ERA Geometric Design Manual - 2013, Chapter 4

### M.2.5 Benchmark Procedures

ERA requires benchmarks at the following intervals:

- **Temporary benchmarks (TBMs):** Maximum 500m intervals along the route, established by levelling from permanent benchmarks
- **Permanent benchmarks:** At 2km intervals, tied to the national geodetic network
- **Bridge and structure sites:** Additional benchmarks at each structure location, tied to TBMs
- **Benchmark type:** Concrete pillars or stable rock outcrops marked with metal pins

All benchmarks must be tied to the Ethiopian national geodetic network. Where the national network is not accessible within reasonable distance, GPS-derived heights with appropriate geoid model corrections are acceptable for preliminary surveys.

**Source:** ERA Geometric Design Manual - 2013, Chapter 4

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (ERA Branch)

```
Step 1: Identify project type
  +-- New construction -> highest survey requirements (Table 4-1)
  +-- Upgrading -> corridor survey plus alternatives
  +-- Rehabilitation -> existing alignment plus surroundings
  \-- Maintenance planning -> condition survey only

Step 2: Select accuracy level from Table 4-2
  +-- Design-level work -> topographic detail accuracy (+/- 50mm H, +/- 25mm V)
  +-- Route selection -> preliminary accuracy (+/- 500mm H, +/- 250mm V)
  \-- Control network -> primary or secondary control accuracy

Step 3: Determine photogrammetry scale if aerial survey used
  +-- Flat terrain: 1:10,000 (preliminary) or 1:5,000 (detailed)
  +-- Rolling/mountainous: 1:5,000 (preliminary) or 1:2,500 (detailed)
  \-- Reconnaissance: 1:25,000 to 1:50,000

Step 4: Set cross-section bandwidth
  +-- Minimum 25m either side of centreline (50m total)
  +-- Wider for complex terrain, junctions, or urban sections
  +-- Extend to capture natural ground beyond expected cut/fill limits
  \-- For new construction: consider multiple corridor options
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Ethiopia's geodetic network coverage varies significantly by region.** In highland areas near Addis Ababa, Bahir Dar, and regional capitals, the national geodetic network is generally accessible. In lowland and border areas (Afar, Somali, Gambella regions), benchmarks may be sparse and GPS-derived heights may be the only practical option.

**Satellite imagery and DEMs are increasingly used** for reconnaissance and preliminary surveys in Ethiopia. SRTM (30m) and ALOS (12.5m) DEMs are freely available but are not substitutes for design-level ground surveys. For mountainous terrain, DEM vertical accuracy degrades and field verification is essential.

**Seasonal access** affects survey timing. Many rural roads in Ethiopia are impassable during the rainy season (June-September). Survey fieldwork should be planned for the dry season, with allowance for the short rains (February-March) in some regions.

---

## M.4 Country-Specific Defaults

| Parameter | Default Value | Flag Text |
|-----------|--------------|-----------|
| Cross-section bandwidth | 25m either side of centreline | "Assumed minimum ERA cross-section bandwidth (25m each side). Increase for complex terrain or junctions." |
| Benchmark interval | 500m (temporary), 2km (permanent) | "Assumed ERA benchmark intervals. Verify national geodetic network accessibility." |
| Survey accuracy | Topographic detail level per Table 4-2 | "Assumed design-level survey accuracy for new construction per ERA Table 4-2. Adjust for rehabilitation or reconnaissance." |
| Photogrammetry scale | 1:5,000 for detailed design | "Assumed 1:5,000 photogrammetry scale per ERA Table 4-3. Use 1:2,500 for mountainous/escarpment terrain." |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Cross-section bandwidth | 25 | -- | m (each side) | ERA Chapter 4 | Warn -- bandwidth below ERA minimum of 25m per side |
| TBM interval | -- | 500 | m | ERA Chapter 4 | Warn -- benchmark spacing exceeds ERA maximum of 500m |
| Permanent benchmark interval | -- | 2000 | m | ERA Chapter 4 | Warn -- permanent benchmark spacing exceeds ERA maximum of 2km |
| Cross-section interval (new construction) | -- | 25 | m | ERA Chapter 4, Table 4-1 | Warn -- cross-section interval exceeds ERA maximum for new construction |

### M.5.2 Standards Compliance

- **Check:** Survey accuracy meets ERA requirements for the project type.
- **Standard:** ERA Geometric Design Manual - 2013, Table 4-2
- **Pass condition:** Horizontal and vertical accuracy are within the limits specified for the project type
- **Fail action:** Warn -- "Survey accuracy does not meet ERA requirements for [project type]. Horizontal: [actual] vs [required]. Vertical: [actual] vs [required]."

- **Check:** Survey data coverage is sufficient for the design class.
- **Standard:** ERA Chapter 4
- **Pass condition:** Cross-sections, longitudinal profile, and geotechnical data are available as specified in Table 4-1
- **Fail action:** Warn -- "Survey data incomplete for [project type]. Missing: [list of gaps]."

### M.5.3 Departures Process

ERA requires written approval for departures from standards, submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3). For survey data, departures might include reduced cross-section intervals, narrower survey corridor, or lower accuracy levels. Any departure must be justified in terms of project requirements and risk.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Action |
|---------|--------|--------|
| Survey data older than 5 years | Land use changes, new developments, and road condition may have changed | Escalate: recommend updated survey or field verification of critical areas before design |
| Accuracy below ERA minimums (Table 4-2) | Geometric design based on inaccurate data may result in construction errors | Escalate: additional survey work required before proceeding with detailed design |
| No benchmarks tied to national geodetic network | Vertical control cannot be verified; risk of construction errors at structure connections | Escalate: establish GPS-derived benchmark network with appropriate geoid correction |
| Survey corridor less than 25m bandwidth | Insufficient data for earthworks design and drainage assessment | Escalate: extend survey corridor to meet ERA minimum before proceeding |

---

## M.7 Worked Example

### Example: Survey Specification for Upgrading the Mojo to Hawassa Road (Route A7)

**Given:**
- Road: Mojo to Hawassa (Route A7), approximately 200km
- Country: Ethiopia
- Project type: Upgrading (existing gravel road to paved standard)
- Terrain: Rolling (predominant, with flat sections near Mojo and mountainous sections near Hawassa)
- Current design class: DC4 unpaved; proposed upgrade to DC5 paved
- Funding: ERA / Development partner

**Solution:**

**Step 1:** Project type is upgrading -> use Table 4-1 upgrading requirements.

**Step 2:** Select accuracy level -> topographic detail accuracy (+/- 50mm H, +/- 25mm V) for design-level work.

**Step 3:** Determine photogrammetry scale -> rolling terrain, detailed design: 1:5,000 scale with 1-2m contour intervals. For the mountainous section near Hawassa, use 1:2,500.

**Step 4:** Set cross-section bandwidth -> minimum 25m each side. Extend to 40m at junction areas (Mojo town, Ziway, Shashamene, Hawassa) and at river crossings.

**Survey specification summary:**

| Parameter | Value | Source |
|-----------|-------|--------|
| Cross-section interval | 25m standard; 10m at structures and problem areas | ERA Table 4-1 (upgrading) |
| Cross-section bandwidth | 25m each side (50m corridor); 40m each side at junctions | ERA Chapter 4 |
| Longitudinal profile | Continuous along existing and alternative alignments | ERA Table 4-1 |
| TBM interval | 500m | ERA Chapter 4 |
| Permanent benchmark interval | 2km, tied to Ethiopian geodetic network | ERA Chapter 4 |
| Photogrammetry scale | 1:5,000 (rolling); 1:2,500 (mountainous near Hawassa) | ERA Table 4-3 |
| Horizontal accuracy | +/- 50mm | ERA Table 4-2 |
| Vertical accuracy | +/- 25mm | ERA Table 4-2 |
| Geotechnical | Targeted investigation at problem locations and structure sites | ERA Table 4-1 |

**Escalation:** None -- all parameters within ERA requirements for upgrading projects. Note: field survey should be scheduled for dry season (October-May) to ensure access along the entire route.

---

## M.8 References

1. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Chapter 4 (Survey Data Requirements), Tables 4-1, 4-2, 4-3.
2. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Section 2.3 (Departures from Standards).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- ERA Chapter 4 survey requirements by project type, accuracy levels, photogrammetry scales, and benchmark procedures. Worked example uses Mojo to Hawassa road (Route A7). |
