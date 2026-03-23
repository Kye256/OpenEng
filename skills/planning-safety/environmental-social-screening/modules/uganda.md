# Environmental & Social Screening -- Uganda Module

> **Parent Skill:** Skill #62 Environmental & Social Screening
> **Country/Jurisdiction:** Uganda
> **Standards:** National Environment Act 2019, NEMA Regulations, World Bank ESF (2018)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| National Environment Act | 2019 (Cap 153) | Part VII (Environmental Impact Assessment), Schedules 4-5 | Current |
| Environmental Impact Assessment Regulations | SI No. 13 of 1998 (under review for alignment with 2019 Act) | All | Current (being updated) |
| World Bank Environmental and Social Framework (ESF) | 2018 | ESS 1-10 | Current |
| World Bank Environmental and Social Risk Classification | 2018 | Guidance Note | Current |
| AfDB Integrated Safeguards System (ISS) | 2013 (revised 2023) | Operational Safeguard 1 (Environmental and Social Assessment) | Current |

### M.1.2 Institutional Context

**NEMA (National Environment Management Authority):** Established under the National Environment Act. Responsible for: screening projects against the Schedules, reviewing and approving EIA reports, issuing Environmental Impact Assessment Certificates (approval to proceed), and monitoring compliance with conditions. NEMA has district-level officers who participate in screening.

**MoWT / UNRA:** As project proponents, UNRA and MoWT are responsible for: preparing the Project Brief or EIA as required, submitting to NEMA for review, obtaining the EIA Certificate before commencing construction, and complying with conditions of approval.

**World Bank (for WB-funded projects):** The World Bank conducts its own risk classification independently of NEMA. Both NEMA approval AND World Bank no-objection are required for WB-funded projects. The Bank's Environmental and Social Specialists in the country office or regional team review the screening and assessment.

**Lead Agencies:** Various sector ministries and authorities act as lead agencies for EIA review. For road projects, MoWT or UNRA is typically the lead agency, with NEMA as the approval authority.

### M.1.3 Standard Philosophy

Uganda operates a regulatory approach: projects must be screened against the Schedules of the National Environment Act, and the outcome determines whether an EIA is mandatory, a Project Brief is required, or the project is exempt. NEMA makes the final determination.

For donor-funded projects, the national NEMA process runs in parallel with the donor's own environmental and social framework. Both must be satisfied -- the more restrictive applies.

---

## M.2 Country-Specific Knowledge

### M.2.1 NEMA Screening Procedure

**NEMA Screening Process for Road Projects:**

1. **Project proponent** (UNRA/MoWT) prepares a Project Brief describing the project, location, potential impacts.
2. **Submit to NEMA** with the Project Brief and supporting documents (maps, preliminary design, land ownership details).
3. **NEMA screens** against the Schedules of the National Environment Act:
   - Third Schedule: EIA mandatory -- project proponent must commission a full EIA study by a registered EIA practitioner.
   - Second Schedule: NEMA may require a Project Brief review only, or may require a more detailed environmental study depending on the specific circumstances.
   - First Schedule: Exempt from EIA -- proceed with good environmental practice.
4. **NEMA issues** decision: EIA Certificate (approval), conditional approval, or requirement for full EIA.
5. **Timeline:** Screening decision: 2-4 weeks. Full EIA study: 3-6 months. NEMA review of EIA report: 1-3 months.

**NEMA Screening Categories for Road Projects** --> `tables/nema_screening_categories.json`

**NEMA Project Brief Format:**
- Project description (location, extent, activities)
- Environmental baseline (existing conditions)
- Potential impacts (construction and operation phases)
- Proposed mitigation measures
- Monitoring plan
- Maps and location information

**NEMA Fees:**
- Project Brief review: UGX 500,000 - 2,000,000 (depending on project size)
- EIA review: UGX 2,000,000 - 10,000,000 (depending on project size)
- Fees are set by NEMA and may be updated -- verify current schedule.

### M.2.2 World Bank ESF Application in Uganda

**World Bank ESF Risk Classification for Uganda Road Projects** --> `tables/wb_esf_risk_classification.json`

**Key World Bank Environmental and Social Standards (ESS) applicable to Uganda road projects:**

| ESS | Title | Common Triggers for Road Projects |
|-----|-------|----------------------------------|
| ESS 1 | Assessment and Management of Environmental and Social Risks and Impacts | All projects -- defines risk classification |
| ESS 2 | Labor and Working Conditions | All construction contracts -- worker safety, labor rights |
| ESS 3 | Resource Efficiency and Pollution Prevention | Bitumen plants, quarries, borrow pits, dust, noise |
| ESS 4 | Community Health and Safety | Construction traffic, open trenches, blasting near communities |
| ESS 5 | Land Acquisition, Restrictions on Land Use, and Involuntary Resettlement | Any land acquisition, even temporary |
| ESS 6 | Biodiversity Conservation and Sustainable Management of Living Natural Resources | Wetlands, forests, wildlife corridors |
| ESS 7 | Indigenous Peoples/Sub-Saharan African Historically Underserved Traditional Local Communities | Batwa, Ik, Karamojong pastoralists |
| ESS 8 | Cultural Heritage | Archaeological sites, sacred groves, historical structures |
| ESS 10 | Stakeholder Engagement and Information Disclosure | All projects -- meaningful consultation |

**NEMA + World Bank Parallel Process:**

For World Bank-funded UNRA projects, both processes run simultaneously:
- NEMA screening determines Uganda legal requirements (EIA Certificate)
- World Bank ESF classification determines WB safeguard requirements (ESIA/ESMP instruments)
- Both NEMA approval AND World Bank no-objection required before construction
- If NEMA requires Project Brief only but WB requires Full ESIA, the project must do a Full ESIA
- If NEMA requires EIA but WB classifies as Moderate Risk (ESMP only), the project must do an EIA (for NEMA) that also covers WB ESMP requirements

### M.2.3 AfDB Application in Uganda

AfDB-funded road projects follow the AfDB Integrated Safeguards System (ISS). The process is similar to World Bank ESF:
- Category 1: Full EIA required
- Category 2: Limited ESIA/ESMP
- Category 3: Exempt

For Uganda, AfDB and NEMA processes run in parallel, with the more restrictive requirement applying.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**M.3.1a: NEMA Screening (GoU Funded)**
```
Screen against NEMA Schedules:
  |-- Third Schedule criteria met? --> EIA mandatory
  |   Examples: new road > 10 km in protected area; road requiring
  |   significant resettlement (> 50 households); bridge/road in
  |   wetland or forest reserve
  |
  |-- Second Schedule criteria met? --> Project Brief required
  |   Examples: rehabilitation in existing corridor; upgrade with
  |   minor widening (< 5m additional width); no sensitive areas
  |
  +-- First Schedule criteria met? --> Exempt
      Examples: routine maintenance; pothole patching; re-marking
      road lines; minor culvert repair within existing footprint
```

**M.3.1b: World Bank ESF (WB Funded)**
```
Screen against WB ESF Risk Classification:
  |-- High Risk criteria met? --> Full ESIA + ESMP + additional instruments
  |   Examples: new road through protected area; significant
  |   resettlement (> 200 persons); impacts on Batwa/Ik communities
  |
  |-- Substantial Risk? --> Targeted ESIA or detailed ESMP
  |   Examples: upgrade with limited land acquisition (< 200 persons);
  |   near but not through wetland; resettlement with willing sellers
  |
  |-- Moderate Risk? --> ESMP only
  |   Examples: rehabilitation in existing corridor; minor widening
  |   within existing road reserve; no resettlement
  |
  +-- Low Risk? --> No instrument beyond standard contract provisions
      Examples: routine maintenance; sign installation; line marking
```

**M.3.1c: AfDB ISS**
```
Screen against AfDB Categories:
  |-- Category 1? --> Full EIA required (similar triggers to WB High Risk)
  |-- Category 2? --> Limited ESIA or ESMP (similar to WB Substantial/Moderate)
  +-- Category 3? --> Exempt (similar to WB Low Risk)
```

### M.3.2 Professional Judgment (Country-Specific)

**Uganda-specific considerations:**

- **Wetlands are everywhere.** Uganda's extensive wetland systems mean that many road projects cross or are adjacent to wetlands. Wetland impacts automatically trigger higher-level NEMA assessment. Even rehabilitation within an existing corridor may require a Project Brief if the road crosses a wetland.

- **Land tenure complexity.** Uganda has four land tenure systems (customary, freehold, mailo, leasehold). Land acquisition for road projects is complicated by overlapping claims, unregistered customary rights, and the mailo system (where tenants have rights on mailo land). Early social screening must identify all affected parties, not just registered landowners.

- **Batwa and Ik communities.** World Bank ESS 7 applies to projects affecting Batwa (around Bwindi and Mgahinga) and Ik (Karamoja). These are historically underserved traditional communities. Projects in southwestern Uganda (Batwa) or northeastern Uganda (Ik) must screen for ESS 7 applicability.

- **Karamoja pastoral communities.** Karamojong pastoralists use transhumance routes that may cross road alignments. Impacts on pastoral mobility and access to water/grazing may trigger ESS 5 (Land Acquisition) and ESS 7.

- **NEMA approval timeline is critical path.** EIA approval from NEMA typically takes 6-12 months from submission of EIA terms of reference to issuance of the EIA Certificate. This is often on the project's critical path. Early screening avoids delays.

### M.3.3 Common Errors (Country-Specific)

1. **Applying NEMA screening alone to World Bank-funded projects.** Both NEMA and World Bank ESF must be satisfied. NEMA approval does not constitute World Bank no-objection.
2. **Ignoring wetland impacts for rehabilitation projects.** "Rehabilitation in existing corridor" does not automatically exempt a project from wetland impact assessment if the road crosses a wetland.
3. **Underestimating resettlement.** Road widening by even 2 metres can affect market stalls, roadside structures, and agricultural plots. Economic displacement must be assessed even without physical relocation.
4. **Not identifying ESS 7 triggers.** Projects in Batwa or Ik areas require early screening for Indigenous Peoples impacts. This is often missed in project preparation.
5. **Late submission to NEMA.** Submitting the EIA after detailed design is complete creates programme risk. Screen and submit at feasibility stage.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Framework | NEMA (National Environment Act 2019) | GoU funded | ASSUMED: GoU funding, NEMA framework. If donor-funded, verify. | National law is baseline |
| Framework | World Bank ESF + NEMA | WB funded | Both NEMA and WB ESF apply. Most restrictive governs. | WB ESF + national compliance |
| Resettlement | No | Not specified | ASSUMED: No resettlement. Verify -- any land take triggers safeguards. | Conservative |
| Sensitive areas | None | Not specified | ASSUMED: No sensitive areas. Check against NEMA protected area maps and wetland inventory. | Requires site verification |
| EIA timeline | 6-12 months | Full EIA required | ASSUMED: 6-12 months for NEMA EIA process. Programme accordingly. | Typical NEMA timeline |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| EIA study duration | 3 | 12 | months | NEMA practice | Below 3 months: unrealistic for full EIA. Above 12: investigate delays. |
| Affected persons (RAP trigger) | 200 | No limit | persons | WB ESF ESS 5 | If > 200, full RAP required (not ARAP). |

### M.5.2 Standards Compliance Checks

- **Check:** Funding source correctly identified and correct framework applied
- **Standard:** National Environment Act Section 1; PPDA Act Section 4 (international obligations)
- **Pass condition:** Framework matches funding source
- **Fail action:** SENIOR REVIEW -- Possible framework mismatch. Verify funding source and applicable environmental requirements.

- **Check:** Wetland screening conducted
- **Standard:** National Environment Act, Third Schedule
- **Pass condition:** Wetland impacts assessed (yes/no with rationale)
- **Fail action:** NOTE -- Wetland screening not documented. Uganda has extensive wetlands. Verify whether project crosses or is adjacent to wetland areas.

- **Check:** Resettlement screening conducted
- **Standard:** WB ESF ESS 5 / National Environment Act
- **Pass condition:** Land acquisition needs identified (yes/no with numbers)
- **Fail action:** NOTE -- Resettlement screening not completed. Any land acquisition triggers safeguards.

### M.5.3 Departures / Relaxations Process

NEMA screening outcomes are regulatory decisions -- there is no formal "departure" process. If a project proponent disagrees with the NEMA screening outcome, they may submit additional information for reconsideration. For World Bank projects, the risk classification is determined by the Bank and is not subject to negotiation, though it can be revised if project scope changes.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Project in or adjacent to wetland | Automatic NEMA trigger | SENIOR REVIEW -- Wetland impact identified. NEMA will likely require EIA or detailed Project Brief. |
| Resettlement > 50 households | Significant social impact | SENIOR REVIEW -- Significant resettlement. RAP preparation required. Social specialist needed. |
| Project near Batwa/Ik areas | ESS 7 may be triggered | SENIOR REVIEW -- Project in area with historically underserved traditional communities. Screen for WB ESS 7 applicability. |
| Cultural heritage identified | Heritage Impact Assessment may be needed | NOTE -- Cultural heritage (including sacred sites) identified. Screen for WB ESS 8. Consult with Uganda National Museum. |
| Mixed GoU + donor funding | Complex dual-framework | NOTE -- Mixed funding. Both NEMA and donor frameworks apply. Most restrictive requirement governs at each step. |

---

## M.7 Worked Examples -- Uganda

### Example 1: GoU-Funded Road Rehabilitation (NEMA Screening)

**Project:** Rehabilitation of 40 km national road in existing corridor, central Uganda.

**Given:**
- Funding source: Government of Uganda (GoU) budget
- Project type: Rehabilitation (same road alignment, repaving, minor drainage repair)
- No land acquisition required (works within existing road reserve)
- No sensitive areas (road is in agricultural landscape, no wetlands, no forests)
- No resettlement (no structures within road reserve)

**Solution:**

Step 1: Funding source = GoU --> NEMA framework applies.

Step 2: Screen against NEMA Schedules:
- Third Schedule? NO -- not a new road, not in protected area, no significant resettlement.
- Second Schedule? YES -- road rehabilitation is a project likely to have some environmental impacts (construction dust, noise, drainage alteration) but not significant.
- First Schedule (exempt)? NO -- rehabilitation is more than routine maintenance.

Step 3: Key risks identified:
- Construction-phase dust and noise (minor)
- Drainage alteration during repaving (minor)
- Construction traffic safety in trading centres (moderate)

Step 4: Required instruments:
- Project Brief submitted to NEMA for review
- NEMA will issue decision (likely conditional approval with construction-phase mitigation conditions)

**Result:** Second Schedule -- Project Brief required. No EIA. NEMA review expected to take 2-4 weeks. Low environmental and social risk.

### Example 2: World Bank-Funded New Road with Wetland and Resettlement

**Project:** New 15 km road in western Uganda providing access to a rural subcounty. Road crosses a wetland (0.8 km crossing) and requires acquisition of land from 50 households (physical relocation of 12 households, economic displacement of 38 households).

**Given:**
- Funding source: World Bank IDA Credit
- Project type: New road construction
- Land acquisition: Yes -- 50 households affected (12 physical relocation, 38 economic displacement)
- Sensitive area: Wetland crossing (0.8 km)
- Cultural heritage: None identified
- Indigenous Peoples: Not in Batwa/Ik area

**Solution:**

Step 1: Funding source = World Bank --> Both NEMA and World Bank ESF apply.

Step 2a: NEMA screening:
- Third Schedule? YES -- new road with wetland crossing AND resettlement > 10 households.
- **NEMA: Full EIA mandatory.**

Step 2b: World Bank ESF screening:
- New road + wetland crossing + significant resettlement (50 households, 12 physical) = **High Risk.**
- **WB ESF: Full ESIA + ESMP required.**

Step 3: Key risks identified:
- Wetland ecosystem disruption (ESS 6) -- loss of wetland habitat, hydrological alteration
- Involuntary resettlement (ESS 5) -- 12 households physically relocated, 38 economically displaced
- Community safety during construction (ESS 4)
- Construction worker safety (ESS 2)

Step 4: Required instruments:
| Instrument | Triggered By | Responsible |
|-----------|-------------|------------|
| Full EIA (for NEMA) | Wetland + resettlement | Registered EIA practitioner |
| Full ESIA (for WB) | High Risk classification | EIA practitioner + social specialist |
| ESMP | All projects with risks | As part of ESIA |
| RAP | 12 households physically relocated | Social safeguards specialist |
| Stakeholder Engagement Plan | ESS 10 | Project team |

Step 5: Timeline:
- EIA/ESIA study: 4-6 months
- NEMA review: 2-3 months
- World Bank review: 1-2 months (parallel with NEMA)
- RAP preparation: 3-4 months (can run parallel with ESIA)
- Total: approximately 8-12 months before construction can commence
- **Critical path item: YES**

**Result:** Both NEMA (Third Schedule, Full EIA) and World Bank ESF (High Risk, Full ESIA + RAP) triggered. Most restrictive = Full ESIA covering both NEMA and WB requirements, plus RAP for resettlement. 8-12 months to approval.

### Example 3: Mixed GoU + AfDB Funding with Cultural Heritage

**Project:** Replacement of bridge on a national road in eastern Uganda. The bridge site is adjacent to a sacred grove recognised by the local community. The project is co-funded by GoU (30%) and AfDB (70%).

**Given:**
- Funding source: Mixed (GoU 30%, AfDB 70%)
- Project type: Bridge replacement (same location, slightly larger span)
- Land acquisition: Minor -- temporary access roads only
- Sensitive area: Sacred grove adjacent to construction site (not directly affected but within 200m)
- Cultural heritage: Sacred grove is a recognised cultural site
- No wetland, no resettlement

**Solution:**

Step 1: Funding source = Mixed (GoU + AfDB) --> Both NEMA and AfDB ISS apply. Most restrictive governs.

Step 2a: NEMA screening:
- Third Schedule? Potentially -- bridge replacement near cultural heritage site may trigger Third Schedule depending on NEMA's determination.
- Second Schedule is more likely -- bridge replacement in existing location with minor land take.
- **NEMA: Project Brief required (likely Second Schedule). NEMA may upgrade to EIA if cultural heritage concerns are significant.**

Step 2b: AfDB ISS screening:
- Category 1? Potentially -- cultural heritage impact may warrant full assessment.
- Category 2 is more likely -- limited environmental impact but cultural heritage concern requires specific assessment.
- **AfDB: Category 2 -- Limited ESIA with Heritage Impact Assessment.**

Step 3: Key risks identified:
- Cultural heritage (sacred grove) -- construction vibration, dust, noise may affect the site; community sensitivity
- Temporary land acquisition for access (minor)
- Hydrological impact of bridge construction (temporary)

Step 4: Most restrictive framework:
- NEMA says: Project Brief (possibly EIA if cultural heritage concern is significant)
- AfDB says: Limited ESIA with Heritage Impact Assessment
- **Most restrictive: Limited ESIA + Heritage Impact Assessment** (covers both NEMA and AfDB requirements)

Required instruments:
| Instrument | Triggered By | Responsible |
|-----------|-------------|------------|
| Limited ESIA | AfDB Category 2 | Registered EIA practitioner |
| Heritage Impact Assessment | Sacred grove proximity | Heritage specialist |
| ESMP | Standard requirement | As part of ESIA |
| Stakeholder Engagement | Sacred grove community | Project team + cultural liaison |

**Result:** Mixed funding triggers dual-framework screening. AfDB Category 2 is more restrictive than NEMA Second Schedule. Heritage Impact Assessment required due to sacred grove. Community engagement critical for cultural sensitivity.

---

## M.8 References

1. National Environment Act, 2019 (Act 5 of 2019, Cap 153, Laws of Uganda)
2. The Environmental Impact Assessment Regulations, 1998 (SI No. 13 of 1998)
3. NEMA Guidelines for Environmental Impact Assessment in Uganda
4. World Bank Environmental and Social Framework, 2018
5. World Bank Guidance Notes on Environmental and Social Standards (ESS 1-10)
6. AfDB Integrated Safeguards System (ISS), 2013 (revised 2023)
7. AfDB Operational Safeguards, Operational Safeguard 1: Environmental and Social Assessment

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with NEMA screening (National Environment Act 2019), World Bank ESF risk classification, AfDB ISS categories, dual-framework application, 3 worked examples (GoU rehab, WB new road + wetland + resettlement, mixed GoU+AfDB with cultural heritage). |
