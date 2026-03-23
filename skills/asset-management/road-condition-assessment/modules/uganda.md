# Road Condition Assessment -- Uganda Module

> **Parent Skill:** Skill #56 Road Condition Assessment
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Maintenance Manual, UNRA Road Condition Survey Procedures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Maintenance Manual | Current edition | Condition survey procedures, intervention triggers | Current |
| UNRA Road Condition Survey Guidelines | Internal procedures | Network survey methodology, IRI thresholds, VCI methodology | Current |
| MoWT Road Design Manual Vol 1 | 2010 | Road classification (for context) | Current |

### M.1.2 Institutional Context

**UNRA (Uganda National Roads Authority):** Manages national roads (~21,000 km). Conducts annual network-level condition surveys on national roads using laser profilers (for IRI on paved roads) and visual surveys. UNRA has the most developed road condition monitoring system in Uganda.

**District Local Governments:** Manage district roads (~30,000 km) and community access roads (~35,000 km). Condition surveys are less systematic -- typically visual assessment by district engineers. IRI profiling is rarely available at district level. DUCAR (District, Urban and Community Access Roads) programme provides some survey support.

**MoWT (Ministry of Works and Transport):** Sets policy and standards for road management. The maintenance manual provides condition survey procedures and intervention trigger levels used by both UNRA and districts.

### M.1.3 Standard Philosophy

Uganda road condition assessment follows a practical approach that accommodates varying data availability. UNRA trunk road surveys combine instrumented roughness measurement (IRI from laser profiler) with visual distress surveys. District and community roads rely primarily on visual assessment due to equipment constraints. The system is designed so that visual survey alone provides a valid condition rating -- instrumented data enhances the assessment when available but is not required.

---

## M.2 Country-Specific Knowledge

### M.2.1 IRI Thresholds for Uganda

**Table: IRI Condition Categories** --> `tables/iri_thresholds.json`

Representative IRI thresholds used in Uganda road management:

| Surface Type | Good | Fair | Poor | Very Poor | Unit |
|-------------|------|------|------|-----------|------|
| Paved | < 4 | 4 - 6 | 6 - 8 | > 8 | m/km |
| Gravel | < 8 | 8 - 12 | 12 - 16 | > 16 | m/km |

**Notes:**
- Paved road thresholds align with international practice (World Bank HDM-4 default ranges).
- Gravel road thresholds are approximately double paved values, reflecting inherently higher roughness.
- These are representative ranges used in UNRA practice. Individual thresholds may vary slightly between UNRA planning documents.

### M.2.2 VCI Scoring Methodology

**Table: VCI Deduct Values** --> `tables/vci_rating_scale.json`

UNRA visual condition surveys record distress type, severity (Low/Medium/High), and extent (% of sample area). Deduct values are applied per the scoring table. VCI = 100 - Sum(deducts).

**VCI Condition Categories:**

| VCI Range | Condition | Intervention Trigger |
|-----------|-----------|---------------------|
| 80 - 100 | Good | Routine maintenance |
| 60 - 79 | Fair | Routine maintenance (approaching periodic trigger) |
| 40 - 59 | Poor | Periodic maintenance |
| 0 - 39 | Very Poor | Rehabilitation |

### M.2.3 Survey Frequency and Coverage

**UNRA National Roads:**
- Network-level surveys: annually for paved national roads (IRI + visual)
- Gravel national roads: visual survey annually, IRI where equipment available
- Project-level surveys: continuous (100% coverage) for specific rehabilitation projects

**District Roads:**
- No systematic annual survey programme in most districts
- Visual assessment by District Engineer on ad-hoc basis
- DUCAR programme provides periodic survey support to participating districts
- Condition data quality is highly variable between districts

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda-specific branching from core Step 2 (IRI classification):**
```
Determine road authority:
  |-- UNRA national road --> IRI profiler data likely available
  |                          Use tables/iri_thresholds.json paved or gravel thresholds
  |
  |-- District road --> IRI data unlikely
  |                     Rely on visual survey (VCI) for condition rating
  |                     Flag: "IRI data not available for district road"
  |
  +-- Community access road --> Visual survey only
                                Simplified distress recording acceptable
                                Flag: "Limited survey data -- condition rating indicative"
```

### M.3.2 Professional Judgment (Country-Specific)

**Gravel road condition changes rapidly with season.** In Uganda, gravel roads deteriorate quickly during the dry season (corrugation from traffic) and wet season (potholes and erosion from rainfall). A gravel road in "Good" condition in April may be "Poor" by August. Survey timing must be recorded and considered.

**IRI from response-type devices (bump integrators) is common on UNRA surveys.** These devices produce roughness counts that must be calibrated against a reference IRI section. Calibration factors are device-specific and should be verified annually. Using uncalibrated response-type data introduces significant uncertainty.

**District road surveys are often incomplete.** District engineers may record only the most obvious distresses (potholes, major cracking) and miss less visible issues (alligator cracking initiation, subgrade deformation). Condition ratings from incomplete surveys may understate actual deterioration.

**Overloading accelerates pavement deterioration.** Uganda has significant axle overloading on trunk roads (see Skill #4). Condition assessment should note whether overloading is known to occur on the road section -- this affects the interpretation of structural distresses and the expected deterioration rate.

### M.3.3 Common Errors (Country-Specific)

1. **Applying UNRA thresholds to district gravel roads without context.** UNRA thresholds assume maintained gravel roads. Many district roads have not received gravel resheeting for years and may have lost most of the wearing course. Assessment should note wearing course presence/absence.
2. **Ignoring drainage condition.** Roadside drainage failure is a major driver of pavement deterioration in Uganda. Blocked ditches, inadequate cross-drainage, and waterlogged subgrade accelerate structural failure. Drainage condition should be recorded alongside pavement distress.
3. **Not recording survey section chainage.** Condition varies significantly along a road. Recording distresses without chainage reference makes the data unusable for maintenance planning. Always record start and end chainage for each sample segment.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| IRI thresholds | UNRA paved/gravel thresholds | Uganda jurisdiction | ASSUMED: UNRA IRI thresholds from tables/iri_thresholds.json. Representative ranges. | MoWT maintenance manual / UNRA practice |
| Survey method | Visual survey | District road | ASSUMED: Visual survey only (IRI profiling not available for district roads). | Equipment availability |
| Sample rate | 100m per km | Network-level | ASSUMED: 100m sample per km for network-level survey. | UNRA standard practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| IRI (paved) | 0 | 20 | m/km | UNRA practice | IRI > 12 m/km on paved road is extreme -- verify measurement |
| IRI (gravel) | 2 | 30 | m/km | UNRA practice | IRI < 2 on gravel is unusually smooth -- verify measurement and road type |

### M.5.2 Standards Compliance Checks

- **Check:** IRI thresholds match road surface type
- **Standard:** UNRA condition survey guidelines
- **Pass condition:** Paved thresholds used for paved roads, gravel thresholds for gravel roads
- **Fail action:** SENIOR REVIEW -- Wrong IRI threshold set applied. Paved and gravel thresholds differ significantly.

- **Check:** Survey data includes both severity and extent for each distress
- **Standard:** VCI methodology
- **Pass condition:** All distress records have severity (L/M/H) and extent (%)
- **Fail action:** NOTE -- Missing severity or extent data. VCI calculation may be inaccurate.

### M.5.3 Departures / Relaxations Process

No formal departures process exists for condition assessment methodology. However, agencies may adapt thresholds based on local conditions. Any modifications to standard IRI or VCI thresholds should be documented and justified.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| IRI > 12 m/km on paved national road | Extreme roughness for paved surface | SENIOR REVIEW -- IRI exceeds 12 m/km on paved road. Verify measurement. If correct, road may be unserviceable -- rehabilitation urgent. |
| No IRI data for national road | Data gap for trunk road | NOTE -- IRI data not available for national road. UNRA network survey should include IRI. Recommend profiler survey before programming maintenance. |
| District road with no maintenance history | Context gap | NOTE -- No maintenance history available. Condition rating reflects current state but cannot assess deterioration rate. |

---

## M.7 Worked Examples -- Uganda

### Example 1: Paved Trunk Road Section with Rutting and Cracking

**Project:** Condition assessment of 1km section on Kampala-Jinja Highway (National Road).

**Given:**
- Road surface: Paved (asphalt concrete)
- IRI from laser profiler: 5.2 m/km
- Visual survey of 100m sample segment:
  - Alligator cracking: Medium severity, 15% extent
  - Rutting: 8mm average depth (Low severity)
  - Patching: Low severity, 5% extent

**Solution:**

Step 1: IRI classification (paved road thresholds from iri_thresholds.json):
- IRI = 5.2 m/km falls in range 4-6 --> **Fair condition**

Step 2: VCI calculation (deduct values from vci_rating_scale.json):
- Alligator cracking, Medium, 15%: deduct = 18
- Rutting, Low, measured: deduct = 5
- Patching, Low, 5%: deduct = 3
- Total deducts = 26
- VCI = 100 - 26 = 74
- VCI 60-79 --> **Fair condition**

Step 3: Overall condition:
- IRI = Fair, VCI = Fair --> **Overall: Fair**
- Intervention trigger: Routine maintenance (but approaching periodic trigger)

**Result:** Fair condition. Routine maintenance with monitoring. The alligator cracking at medium severity indicates fatigue distress developing -- if extent increases beyond 25% or severity reaches High, periodic maintenance (overlay) will be triggered.

### Example 2: Gravel District Road with Corrugation and Potholes

**Project:** Condition assessment of 5km district road in eastern Uganda.

**Given:**
- Road surface: Gravel
- IRI from response-type device (calibrated): 14 m/km
- Visual survey:
  - Corrugation: High severity, 40% extent
  - Potholes: Medium severity, 10% extent
  - Erosion: Medium severity, 8% extent

**Solution:**

Step 1: IRI classification (gravel road thresholds):
- IRI = 14 m/km falls in range 12-16 --> **Poor condition**

Step 2: VCI calculation:
- Corrugation, High, 40%: deduct = 22
- Potholes, Medium, 10%: deduct = 15
- Erosion, Medium, 8%: deduct = 8
- Total deducts = 45
- VCI = 100 - 45 = 55
- VCI 40-59 --> **Poor condition**

Step 3: Overall condition:
- IRI = Poor, VCI = Poor --> **Overall: Poor**
- Intervention trigger: Periodic maintenance -- gravel resheeting required

**Result:** Poor condition. Periodic maintenance triggered. Recommend gravel resheeting (150mm compacted thickness) after pothole repairs and drainage improvement. Corrugation will recur without traffic management or surface treatment.

### Example 3: Network-Level Assessment of 200km Corridor

**Project:** Annual condition survey for budget planning on 200km national road corridor with mixed paved and gravel sections.

**Given:**
- 120km paved, 80km gravel
- IRI data available for paved sections (profiler survey)
- Visual survey for all sections
- Budget planning for next financial year

**Solution:**

Step 1: Process each 1km section individually (200 sections total).

Step 2: Classify each section:
- Paved sections (120 total): 45 Good, 35 Fair, 25 Poor, 15 Very Poor
- Gravel sections (80 total): 10 Good, 20 Fair, 30 Poor, 20 Very Poor

Step 3: Summary for budget planning:
- Routine maintenance (Good + Fair): 110 km (45+35+10+20)
- Periodic maintenance (Poor): 55 km (25+30)
- Rehabilitation (Very Poor): 35 km (15+20)

**Result:** 55% of the corridor requires routine maintenance only. 27.5% requires periodic maintenance (resheeting, resealing, or overlay). 17.5% requires rehabilitation. Budget allocation should prioritize the 35km of Very Poor sections for rehabilitation and the 55km of Poor sections for periodic maintenance, per Skill #59 (Prioritization Methods).

---

## M.8 References

1. MoWT, Road Maintenance Manual, Ministry of Works and Transport, Uganda (current edition)
2. UNRA Road Condition Survey Procedures, Uganda National Roads Authority (internal)
3. MoWT, Road Design Manual Volume 1: Geometric Design, Ministry of Works and Transport, 2010
4. World Bank, Highway Development and Management Model (HDM-4), IRI thresholds for developing countries
5. Sayers, M.W., Gillespie, T.D., Paterson, W.D.O., "Guidelines for Conducting and Calibrating Road Roughness Measurements", World Bank Technical Paper No. 46, 1986

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with UNRA IRI thresholds (paved/gravel), VCI methodology, 3 worked examples (paved trunk, gravel district, network-level). |
