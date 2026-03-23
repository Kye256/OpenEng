# Traffic Survey Design -- UK Module

> **Parent Skill:** #1 Traffic Survey Design
> **Country/Jurisdiction:** United Kingdom (England, Scotland, Wales, Northern Ireland)
> **Standards:** DMRB (various), DfT Traffic Counting Guidance
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Version | Sections Referenced | Status |
|----------|--------------|---------|---------------------|--------|
| Traffic Assessment Guidance | TA 46 / CD 171 | *(Not available locally)* | Traffic data collection | Current |
| Transport Appraisal Guidance (TAG) | WebTAG | Current | Traffic survey requirements for scheme appraisal | Current |
| GG 101 | DMRB | Rev 1 (Mar 2020) | Institutional framework | Current |

*(Drafted from general DMRB knowledge -- verify against current DMRB traffic assessment documents before use in production)*

### M.1.2 Institutional Context

Traffic surveys in the UK are conducted within a well-established data ecosystem:

- **National Highways (England):** Manages the Strategic Road Network (SRN). Extensive permanent ATC network (MIDAS, TAME). Project-specific surveys commissioned for scheme appraisal. Data available via WebTRIS.
- **Transport Scotland, Welsh Government (Transport), DfI Northern Ireland:** Manage their respective trunk road networks with similar ATC coverage.
- **Local Highway Authorities:** County/unitary councils manage local roads. Many have their own count programmes. Quality and coverage varies significantly.
- **DfT National Count Programme:** The Department for Transport maintains a national traffic count programme with approximately 8,000 manual count points and 200+ automatic count points. Data is publicly available via the DfT Road Traffic Statistics website (roadtraffic.dft.gov.uk).
- **Highways England (now National Highways) WebTRIS:** Provides access to real-time and historical traffic data from the SRN. *(Verify current access arrangements -- data availability may have changed.)*

### M.1.3 Standard Philosophy

*(Drafted from general DMRB knowledge -- verify against current DMRB traffic assessment documents before use in production)*

UK traffic survey design operates within a mature data environment where significant existing data is available. The emphasis is on:
1. **Using existing data sources first** (DfT count points, WebTRIS, local authority data) before commissioning new surveys.
2. **Supplementary surveys** to fill specific gaps (turning counts, classified counts at specific locations, OD data for specific scheme needs).
3. **Quality assurance** -- UK practice emphasises data validation, factoring, and quality control to a greater degree than many developing country standards.

---

## M.2 Country-Specific Knowledge

### M.2.1 UK Traffic Data Sources

*(Drafted from general DMRB knowledge -- verify against current DfT traffic data guidance before use in production)*

**Existing Data Sources (check before commissioning new surveys):**

| Source | Data Type | Coverage | Access |
|--------|-----------|----------|--------|
| DfT Manual Count Points | Annual 12-hour MCC, classified | ~8,000 points nationwide | roadtraffic.dft.gov.uk (public) |
| DfT Automatic Count Points | Continuous ATC | ~200+ points | roadtraffic.dft.gov.uk (public) |
| WebTRIS (National Highways) | Real-time and historical flow, speed, headway | SRN only | webtris.nationalhighways.co.uk |
| Local Authority Data | Varies (ATC, MCC, junction counts) | Local roads | Request from highway authority |
| TRICS | Trip generation rates for development traffic | Development sites | Subscription service (trics.org) |

### M.2.2 UK Survey Methods

**Automatic Traffic Count (ATC):**
- Pneumatic tube counters are standard for temporary surveys.
- Inductive loops are standard for permanent installations.
- Minimum 7-day count (Monday to Sunday) to establish daily variation.
- 14-day counts preferred for scheme appraisal.
- Classification by vehicle length (short, medium, long) -- supplementary MCC needed for detailed classification.

**Manual Classified Count (MCC):**
- DfT count points use a standard 12-hour count (07:00--19:00).
- Classification follows DfT categories: cars, LGV (Light Goods Vehicles), OGV1 (Ordinary Goods Vehicles -- 2 axles), OGV2 (Ordinary Goods Vehicles -- 3+ axles), PSV (Public Service Vehicles -- buses/coaches), motorcycles, pedal cycles.
- For DMRB scheme appraisal, minimum 12-hour MCC at key locations.

**Automatic Number Plate Recognition (ANPR):**
- Increasingly used for journey time surveys, route tracking, and OD estimation.
- Cameras capture number plates; data is matched to determine routes and journey times.
- Subject to data protection legislation (GDPR) -- survey design must include data handling and retention plans.

**Junction Turning Counts:**
- Manual or video-based recording of all turning movements at junctions.
- Required for junction capacity assessments (ARCADY, PICADY, LinSig).
- Typically 12-hour counts during neutral months.

**TRICS (Trip Rate Information Computer System):**
- Database of trip generation rates for development traffic assessment.
- Used to estimate traffic generated by new developments (residential, commercial, industrial).
- Not a survey method, but a data source that may reduce the need for site-specific surveys.

### M.2.3 Seasonal Considerations for UK

*(Drafted from general DMRB knowledge -- verify against current DfT seasonal adjustment guidance before use in production)*

| Season | Months | Traffic Implications |
|--------|--------|---------------------|
| Neutral months | March, April (excluding Easter), May, June, September, October, November | Closest to annual average; preferred for surveys |
| Summer peak | July, August | Higher holiday traffic on recreational routes; lower commuter traffic in urban areas |
| Winter trough | December, January, February | Lower traffic overall; adverse weather may affect counts |

**Key timing considerations:**
- **Avoid:** School holiday periods (varies by region), bank holidays, half-term weeks, major sporting events.
- **DfT seasonal factors:** The DfT publishes seasonal adjustment factors by road type that can be applied to counts taken outside neutral months.
- **Best survey months:** March (after half-term), May, June, September, October.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2a (UK): Check what existing data is available
  |- Check DfT count point data for the project corridor (roadtraffic.dft.gov.uk)
  |- Check WebTRIS if road is on the SRN
  |- Check local authority for any recent surveys
  \- Catalogue existing data before planning new surveys

Step 4a (UK): Select survey type
  |- Scheme appraisal (DMRB) -> ATC (14-day) + MCC (12-hour) + junction turning counts
  |- Planning application (development traffic) -> TRICS assessment + junction turning counts
  |- Local road improvement -> ATC (7-day) + MCC at key points
  |- Speed survey required -> Radar or GPS-based (check local authority requirements)
  \- ANPR for journey time and OD data if route tracking is needed
```

### M.3.2 Professional Judgment (UK-Specific)

**The UK has extensive existing traffic data.** Before commissioning any new survey, always check DfT count point data, WebTRIS, and local authority records. New surveys should fill specific gaps, not duplicate existing data.

**Seasonal adjustment is well-established in the UK.** DfT publishes annual seasonal adjustment factors by road type. Counts taken outside neutral months can be reliably adjusted to AADT using these factors. However, for scheme appraisal, counts in neutral months are strongly preferred.

**Data protection (GDPR) affects ANPR surveys.** Any survey that captures personal data (number plates, video of individuals) must comply with UK GDPR. The survey plan should include a Data Protection Impact Assessment (DPIA) and a data retention policy. This is a legal requirement, not optional.

**Junction capacity is often the critical constraint.** In UK road design, junction capacity frequently governs more than link capacity. Ensure junction turning count surveys are included if any junction improvement is part of the scheme.

### M.3.3 Common Errors (UK-Specific)

1. **Not checking existing DfT data before commissioning new surveys.** Existing count point data is free and publicly available. Always check first.
2. **Using summer holiday counts for scheme appraisal.** July/August counts on recreational routes overestimate annual average; on commuter routes they underestimate.
3. **Forgetting GDPR requirements for ANPR/video surveys.** Can result in legal non-compliance.
4. **Not coordinating with National Highways/local authority.** Surveys on trunk roads require permits; surveys affecting traffic flow need traffic management plans.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| ATC duration | 7 days (minimum), 14 days (for scheme appraisal) | Not specified | -- ASSUMED: 7-day ATC count. For DMRB scheme appraisal, 14-day count is recommended. | DfT/DMRB practice |
| MCC duration | 12 hours (07:00--19:00) | Not specified | -- ASSUMED: 12-hour MCC (DfT standard). Extend to 16 hours if significant evening/night traffic expected. | DfT standard count period |
| Survey period | Neutral month (Mar, May, Jun, Sep, Oct) | Not specified | -- ASSUMED: Survey planned for neutral month. DfT seasonal factors available if conducted in other months. | DfT seasonal adjustment guidance |
| Classification scheme | DfT standard (cars, LGV, OGV1, OGV2, PSV, M/C, cycles) | Not specified | -- ASSUMED: DfT standard classification. Alternative schemes may be required for specific purposes. | DfT standard |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| ATC duration (scheme appraisal) | 7 | 30 | days | DMRB practice | Warn if < 14 days for DMRB scheme appraisal |
| MCC duration | 12 | 16 | hours | DfT standard | Warn if < 12 hours |

### M.5.2 Standards Compliance Checks

- **Check:** Survey classification follows DfT standard categories.
- **Standard:** DfT traffic counting guidance
- **Pass condition:** Classification includes cars, LGV, OGV1, OGV2, PSV, motorcycles, pedal cycles
- **Fail action:** Warn -- "Non-standard classification scheme. DfT seasonal factors and national comparisons require standard DfT categories."

- **Check:** ANPR/video surveys include GDPR compliance plan.
- **Standard:** UK GDPR / Data Protection Act 2018
- **Pass condition:** Data Protection Impact Assessment referenced in survey plan
- **Fail action:** Warn -- "ANPR/video survey planned without GDPR compliance plan. Legal requirement -- add DPIA."

### M.5.3 Departures / Relaxations Process

For National Highways (trunk road) projects, any departure from DMRB survey requirements must follow the GG 101 departures process. For local authority projects, survey methodology is at the engineer's discretion, subject to the authority's requirements.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Road is on Strategic Road Network | National Highways requirements apply; permits needed | NOTE -- Coordinate with National Highways regional team for survey access and permits. |
| ANPR or video survey planned | GDPR compliance required | NOTE -- Ensure Data Protection Impact Assessment (DPIA) is prepared before survey commencement. |
| Survey on road in Scotland/Wales/NI | Devolved administration procedures may differ | NOTE -- Verify survey standards with Transport Scotland / Welsh Government / DfI NI as applicable. |

---

## M.7 Worked Example -- UK

### Example: Planning Traffic Surveys for a Rural Road Improvement

**Source:** Hypothetical, based on typical UK practice.

**Given:**
- Road: B1234 between Townford and Villageton (12 km)
- Country: UK (England)
- Authority: County Council (local highway authority)
- Project stage: Preliminary design
- Road function: B-road, single carriageway, national speed limit
- Existing data: DfT count point data shows 2022 AADT of approximately 4,500 vpd
- Survey date: Planning for May 2026
- Budget: Moderate

**Solution:**

**Step 1: Load UK module.** Done.

**Step 2: Check existing data.** DfT count point data exists (2022). Data is 4 years old -- reasonably current for a rural B-road with stable traffic. However, project-specific classified data and junction counts are needed for preliminary design.

**Step 3: Identify gaps.** Need: (a) Current classified count at project-specific locations; (b) Junction turning counts if junction improvements are proposed; (c) Speed data if speed limit changes are proposed.

**Step 4: Select survey types.**
- 7-day ATC at 2 locations (confirm DfT AADT and capture daily patterns)
- 1-day MCC (12-hour, 07:00-19:00) at 2 locations (classified counts)
- Junction turning count at key junction (if applicable)

**Step 5: Locate survey stations.**
- Station 1: km 3 (between Townford and first junction)
- Station 2: km 9 (between junctions, rural section)
- Junction count: Townford crossroads (if improvement proposed)

**Step 6: Determine timing.**
- May 2026 -- neutral month, no bank holidays in survey week.
- Avoid half-term week (check local school calendar).

**Result:**

| Station | Location | Survey Type | Duration |
|---------|----------|-------------|----------|
| 1 | km 3 | ATC + MCC | 7 days ATC / 1 day MCC (12-hour) |
| 2 | km 9 | ATC + MCC | 7 days ATC / 1 day MCC (12-hour) |
| 3 | Townford crossroads | Junction turning count | 1 day (12-hour) |

**Raw data format:** DfT standard classification (cars, LGV, OGV1, OGV2, PSV, motorcycles, pedal cycles). Hourly intervals.

**Escalation:** None -- straightforward local authority road survey.

---

## M.8 References

*(Drafted from general DMRB knowledge -- verify against current DfT traffic data guidance before use in production)*

1. Department for Transport, *Road Traffic Statistics* (roadtraffic.dft.gov.uk).
2. National Highways, *GG 101 Introduction to the Design Manual for Roads and Bridges*, Revision 1, March 2020.
3. Department for Transport, *WebTAG: Transport Appraisal Guidance*.
4. TRICS Consortium, *TRICS -- Trip Rate Information Computer System* (trics.org).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft. All sections drafted from general DMRB/DfT knowledge -- gap flags applied throughout. DMRB traffic assessment documents (TA 46 / CD 171) not available locally. |
