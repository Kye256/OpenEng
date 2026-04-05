# Terrain Classification -- Ethiopia Module

> **Parent Skill:** #11 Terrain Classification
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geometric Design Manual - 2013, Section 5.6
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geometric Design Manual | 2013 | Section 5.6 (Terrain), Table 2-1 (Road Classification) | Current -- mandatory for all ERA roads |

### M.1.2 Institutional Context

The Ethiopian Roads Authority (ERA) is the custodian of national road design standards. ERA manages the federal road network (trunk and link roads). Regional Roads Authorities manage regional roads (main access, collector, feeder). Woreda (district) and Kebele administrations manage community roads. All road authorities use the ERA design manuals as the national standard. The manuals were developed with DFID/AFCAP/Crown Agents support and are based on AASHTO, FHWA, TRL, CSIR/SANRAL, and Ethiopian (TCDE) sources.

ERA's departure from standards process requires written approval submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3).

### M.1.3 Standard Philosophy

ERA terrain classification follows the TRL approach (similar to Kenya RDM). It uses both a contour-count method and transverse slope thresholds to classify terrain. Four terrain classes apply universally to all road design classes (DC1 through DC8 and Basic Access). Terrain class is established before road design begins and is independent of the alignment finally selected.

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Terrain Thresholds

The ERA defines terrain based on both the number of 5m contour lines crossed per kilometre of road length and the transverse ground slope perpendicular to the road alignment. Four terrain classes are defined:

| Terrain Class | 5m Contours per km | Transverse Ground Slope |
|---------------|-------------------|------------------------|
| Flat | 0-10 | Generally below 3% |
| Rolling | 11-25 | Generally 3% to 25% |
| Mountainous | 26-50 | Generally above 25% |
| Escarpment | > 50 | Generally greater than 50% |

**Source:** ERA Geometric Design Manual - 2013, Section 5.6.1 (Verified from PDF)

### M.2.2 Comparison with Uganda and Kenya Terrain Thresholds

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Flat threshold | < 3% | ~5% | < 3% |
| Rolling upper | 25% | 20% | 25% |
| Mountainous upper | (above 25%) | 70% | 50% |
| Escarpment lower | > 50% | > 70% | > 50% |
| Contour method | 5m contours/km | Not defined by contours | 5m contours/km |

ERA and Kenya terrain thresholds are very similar -- both are based on the TRL approach. Uganda uses materially different thresholds: the Uganda escarpment threshold (>70%) is significantly higher than ERA (>50%), and the Uganda rolling upper bound (20%) is lower than ERA (25%). Always use the ERA-specific thresholds when the project is in Ethiopia.

### M.2.3 Design Speed Implications by Terrain

Terrain class directly determines design speed through the ERA design speed table. Full DC x terrain speed tables are in the Skill #13 Ethiopia module. For reference:

| Design Class | Flat | Rolling | Mountainous | Escarpment |
|-------------|------|---------|-------------|------------|
| DC8 | 120 km/h | 100 km/h | 85 km/h | 70 km/h |
| DC6 | 100 km/h | 85 km/h | 70 km/h | 60 km/h |
| DC5 | 85 km/h | 70 km/h | 60 km/h | 50 km/h |
| DC1 | 50 km/h | 40 km/h | 30 km/h | 20 km/h |

**Source:** ERA Geometric Design Manual - 2013, Table 2-1 (see Skill #13 Ethiopia module for full table with all DCs)

**Terrain classification affects design standard application:**

- For ERA trunk roads (Class I, prefix A), terrain determines whether the highest design speeds and widest shoulders apply.
- For lower design classes (DC4 and below), terrain affects the choice between paved and unpaved standards, as mountainous and escarpment design speeds differ between paved and unpaved variants.
- Escarpment terrain in Ethiopia triggers specialist geometric design requirements including hairpin bends and retaining walls.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (ERA Branch)

```
Step 1: Obtain contour map at 5m interval
  -> Use 1:50,000 topographic maps or DEM data with 5m contour extraction

Step 2: Count 5m contours per km along proposed alignment
  -> Count the number of 5m contour lines crossed per kilometre of road length
  -> For long routes, count per homogeneous section (not averaged over entire route)

Step 3: Map contour count to terrain class
  +-- 0-10 contours/km -> Flat
  +-- 11-25 contours/km -> Rolling
  +-- 26-50 contours/km -> Mountainous
  \-- > 50 contours/km -> Escarpment

Step 4: Cross-check with transverse ground slope
  +-- Below 3% -> Flat
  +-- 3% to 25% -> Rolling
  +-- Above 25% -> Mountainous
  \-- Greater than 50% -> Escarpment

Step 5: If contour count and slope disagree, use the more conservative
        (steeper) classification
  -> Example: 22 contours/km (Rolling) but slope = 28% (Mountainous)
     -> Classify as Mountainous
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**ERA and Kenya thresholds are very similar** -- both TRL-based. Uganda thresholds differ materially (especially at the escarpment boundary: Uganda >70% vs ERA >50%). When working on cross-border projects involving Ethiopia and neighbouring countries, always verify which country's thresholds apply to each section.

**Escarpment terrain in Ethiopia is common** in the Rift Valley, Blue Nile gorge (Abay gorge), and the western escarpment near Jimma and Nekemte. These areas frequently have transverse slopes exceeding 50% and present significant engineering challenges including deep cuts, retaining walls, hairpin bends, and slope stability issues.

**For roads traversing multiple terrain classes,** classify each homogeneous section separately. A single route (e.g., Addis Ababa to Gondar via the Blue Nile gorge) may include flat sections on the central highland plateau, rolling sections on the descent, and escarpment sections through the gorge itself. Each section should carry its own terrain classification for design speed and geometric parameter selection.

**Satellite-derived DEMs** (SRTM, ALOS) are acceptable for preliminary terrain classification where 1:50,000 topographic maps are unavailable or outdated. However, DEM accuracy decreases in areas of dense vegetation and steep terrain -- field verification is recommended for escarpment classifications.

---

## M.4 Country-Specific Defaults

| Parameter | Default Value | Flag Text |
|-----------|--------------|-----------|
| Terrain class method | Contour-count (5m contours/km) | "Assumed contour-count method per ERA Section 5.6. Verify with transverse slope check." |
| Ambiguous terrain | Use more conservative class | "Terrain class defaulted to more conservative where contour count and slope disagree." |
| Contour source | 1:50,000 topographic map or SRTM DEM | "Assumed standard contour source. Verify contour interval is 5m or finer." |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Contour count | 0 | -- | contours/km | ERA Section 5.6.1 | Warn -- negative contour count is invalid |
| Transverse slope | 0 | -- | % | ERA Section 5.6.1 | Warn -- negative slope is invalid |

### M.5.2 Standards Compliance

- **Check:** Terrain class must be one of: Flat, Rolling, Mountainous, Escarpment.
- **Standard:** ERA Geometric Design Manual - 2013, Section 5.6.1
- **Pass condition:** Terrain class is a valid ERA category
- **Fail action:** Warn -- "Terrain class '[X]' is not a valid ERA category. Use Flat, Rolling, Mountainous, or Escarpment."

- **Check:** Contour count and transverse slope classification agree.
- **Standard:** ERA Section 5.6.1
- **Pass condition:** Both methods yield the same terrain class
- **Fail action:** Note -- "Contour count suggests [X] but transverse slope suggests [Y]. Using more conservative class [Y] per ERA guidance."

### M.5.3 Departures Process

ERA requires written approval for departures from standards, submitted through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (Section 2.3). Terrain classification itself is rarely subject to departure -- it is an objective measurement. However, if the designer proposes to use a lower terrain class than the measured values indicate (e.g., classifying as Rolling when measurements suggest Mountainous), this constitutes a departure and requires ERA approval.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Action |
|---------|--------|--------|
| Terrain class changes along alignment | Impacts design speed consistency and transition design | Flag to senior engineer; may need separate design sections with appropriate speed transition zones |
| Escarpment terrain identified | Requires specialist geometric design (hairpin bends, retaining walls, slope stability assessment) | Recommend geotechnical investigation and specialist alignment study before proceeding with geometric design |
| Contour data unavailable or unreliable | Cannot apply standard classification method | Escalate: require field survey or satellite-derived DEM before proceeding with design |
| Rift Valley or Blue Nile gorge crossing | Known areas of extreme terrain variability; standard sections may be very short | Senior review of section lengths and transition design; consider 3D alignment modelling |

---

## M.7 Worked Example

### Example: Terrain Classification for Addis Ababa to Gondar Road (Route A3)

**Given:**
- Road: Addis Ababa to Gondar (Route A3), section near Debre Markos
- Country: Ethiopia
- Contour map: 1:50,000 topographic sheet with 5m contour intervals
- Measured data: 18 contours of 5m interval counted per km along the proposed alignment
- Transverse ground slope: approximately 12%

**Solution:**

**Step 1:** Contour map obtained at 5m interval -- 1:50,000 topographic sheet.

**Step 2:** 18 five-metre contours counted per km of road length.

**Step 3:** Map to terrain class -- 18 contours/km falls in the 11-25 range -> **Rolling**.

**Step 4:** Cross-check with transverse slope -- 12% falls in the 3% to 25% range -> **Rolling**.

**Step 5:** Both methods agree -> **Terrain class: Rolling**.

**Design implications:**
- For this section classified as DC6 (AADT 1,000-3,000 for a Trunk Road), rolling terrain yields a design speed of 85 km/h (ERA Table 2-1).
- If the alignment enters the Blue Nile gorge further north, the terrain classification will change to Mountainous or Escarpment and design speed will reduce accordingly.

| Parameter | Value | Source |
|-----------|-------|--------|
| Contour count | 18 per km | Field measurement |
| Transverse slope | 12% | Field measurement |
| Terrain class (contour method) | Rolling | ERA Section 5.6.1 (11-25 range) |
| Terrain class (slope method) | Rolling | ERA Section 5.6.1 (3-25% range) |
| Final terrain class | Rolling | Both methods agree |
| Design speed (DC6, Rolling) | 85 km/h | ERA Table 2-1 |

---

## M.8 References

1. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Section 5.6 (Terrain Classification), Section 5.6.1 (Terrain Classification Thresholds).
2. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Table 2-1 (Road Classification by Design Class).
3. Ethiopian Roads Authority, *Geometric Design Manual - 2013*, Section 2.3 (Departures from Standards).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- ERA terrain thresholds verified from ERA GDM 2013 Section 5.6.1. Four terrain classes with contour-count and transverse slope methods. Comparison with Uganda MoWT and Kenya RDM thresholds included. Worked example uses Addis Ababa to Gondar road (Route A3). |
