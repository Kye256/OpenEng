# Transport Planning -- Kenya Module

> **Parent Skill:** Skill #60 Transport Planning
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Vision 2030, National Integrated Transport Policy, Kenya Roads Act 2007
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Vision 2030 | 2008 (MTP IV current) | Transport pillar, infrastructure development targets | Current framework |
| National Integrated Transport Policy | 2009 (updated) | Modal integration, transport planning framework | Current |
| Kenya Roads Act | 2007 | Road classification, authority responsibilities | Current |
| NTSA Act | 2012 | Transport safety policy, traffic management | Current |
| NPM (Network and Project Planning Manual) | 2025 | Road classification, corridor planning, project planning | Current |

### M.1.2 Institutional Context

**KeNHA (Kenya National Highways Authority):** Plans and manages national trunk roads (Class A/B/C). Commissions feasibility studies and economic appraisals for trunk road improvements. KeNHA is the primary client for national-level transport planning studies on the classified road network.

**KeRRA (Kenya Rural Roads Authority):** Plans and manages rural roads (Class D/E). Rural road planning focuses on connectivity and social access. KeRRA coordinates with county governments on rural road network priorities.

**KURA (Kenya Urban Roads Authority):** Plans and manages urban roads. Urban transport planning interfaces with county spatial plans and public transport planning.

**County Governments (47 counties):** Under the 2010 Constitution, counties prepare County Integrated Development Plans (CIDPs) that include transport components. County transport plans address county roads, public transport, and NMT facilities. Counties interface with KeNHA/KeRRA/KURA on classified roads within their jurisdictions.

**Ministry of Roads and Transport (MoRT):** Sets national transport policy. Responsible for the National Integrated Transport Policy and Vision 2030 transport pillar. Coordinates between road authorities.

**National Transport and Safety Authority (NTSA):** Regulates transport safety. Responsible for vehicle registration, driver licensing, and transport safety policy. NTSA data on road crashes informs transport planning safety considerations.

**Kenya Institute of Transport Engineers (KITE):** Professional body for transport engineers in Kenya. Promotes professional standards in transport planning and engineering.

### M.1.3 Standard Philosophy

Kenya transport planning operates within the Vision 2030 framework, which targets a middle-income country with integrated transport infrastructure. The devolved government structure means transport planning occurs at both national level (trunk roads, corridors, flagship projects) and county level (county roads, local access, public transport). PPP models are increasingly used for major road projects (e.g., Nairobi Expressway). Planning decisions for major investments are appraised per PAM-5 (Feasibility Studies) and PAM-6 (Project Appraisal).

---

## M.2 Country-Specific Knowledge

### M.2.1 Vision 2030 Transport Pillar

**Vision 2030 Transport Infrastructure Targets (TRAINING DATA -- verify against current documents):**
- Road network expansion under MTP I-III targeted 17,450 km of new paved roads (2008-2022)
- MTP I-III achieved approximately 14,000 km of new paved roads
- MTP IV (2023-2027) targets 6,000 km of new roads, maintaining rural and urban roads
- Flagship projects include: LAPSSET Corridor (Lamu-South Sudan-Ethiopia Transport), Standard Gauge Railway (SGR) integration, Northern Corridor improvements
- Nairobi Expressway (PPP model) as template for urban toll road development
- BETA (Bottom-Up Economic Transformation Agenda) integration with MTP IV priorities

### M.2.2 Kenya Road Network Classification

| Class | Description | Managed By | Approximate Length |
|-------|-------------|-----------|-------------------|
| A | International trunk roads | KeNHA | ~3,000 km |
| B | National trunk roads | KeNHA | ~5,000 km |
| C | Primary roads | KeNHA | ~14,000 km |
| D | Secondary roads | KeRRA | ~30,000 km |
| E | Minor roads | KeRRA | ~104,000 km |
| Urban | Urban roads (UA/UC/UL) | KURA | ~9,000 km |
| County | Devolved county roads | Counties | Variable |

Total classified network exceeds 160,000 km. Paved network approximately 22,000 km (concentrated in Classes A-C).

### M.2.3 Transport Planning Context

**Devolved Government and Transport Planning:**
Under the 2010 Constitution, counties prepare County Integrated Development Plans (CIDPs) with transport components. National trunk road planning (KeNHA) and county transport planning operate in parallel. County spatial plans influence land use and transport demand patterns.

**PPP Framework for Road Development:**
Kenya has established a PPP framework for toll roads and expressways. The Nairobi Expressway (opened 2022) operates as a toll road under a PPP concession. This model may be applied to other high-traffic corridors. PPP feasibility requires traffic forecasting (Skill #6) and economic appraisal (Skill #65) at higher levels of detail than standard public investment.

**Integration with Land Use Planning:**
County spatial plans (under the Physical and Land Use Planning Act 2019) determine land use patterns that drive transport demand. Transport planning should interface with county spatial plans to ensure road network capacity matches planned land use development.

**Corridor Studies:**
Major corridor studies (e.g., Northern Corridor Mombasa-Nairobi-Malaba, LAPSSET) assess multi-modal transport demand and justify investment in road, rail, port, and pipeline infrastructure. Road transport planning for corridors interfaces with rail (SGR) and port capacity planning.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Kenya-specific branching:**
```
Determine planning context:
  |-- National trunk road (KeNHA):
  |     --> Corridor-level demand estimation
  |     --> Economic appraisal per PAM-5/PAM-6
  |     --> Vision 2030 / MTP IV alignment
  |     --> Possible PPP assessment for high-traffic routes
  |
  |-- Rural road (KeRRA):
  |     --> Social access assessment (population served, facilities)
  |     --> Growth-factor demand estimation (Skill #6)
  |     --> Screening-level economic justification
  |
  |-- Urban road (KURA):
  |     --> Urban transport demand (congestion, public transport, NMT)
  |     --> Interface with county spatial plan
  |     --> Multi-modal considerations
  |
  +-- County road:
        --> County transport plan context (CIDP)
        --> Local connectivity assessment
        --> Population and economic activity served
```

### M.3.2 Professional Judgment (Country-Specific)

**Motorcycle traffic growth is a major planning factor in Kenya.** Motorcycle (boda-boda) traffic has grown exponentially. The Economic Survey 2023 reported over 2 million registered motorcycles. Motorcycle traffic must be explicitly considered in demand estimation and design -- it affects lane capacity (PCU factors), safety design (Skill #20 NMT), and intersection design (Skill #19).

**Devolution has created new planning dynamics.** Counties have transport planning responsibilities but varying capacity. Some counties have dedicated transport departments; others have limited technical capacity. National-county coordination on classified roads is important.

**Generated traffic is significant for rural road upgrades.** When a gravel road is upgraded to paved standard in Kenya, generated traffic of 15-25% is typical (higher than the 10-20% Uganda range), reflecting the larger population base and higher latent demand in many Kenya rural areas.

### M.3.3 Common Errors (Country-Specific)

1. **Not accounting for motorcycle traffic in demand estimation.** Motorcycles are a significant traffic component on many Kenya roads and have different PCU factors and safety implications.
2. **Ignoring county spatial plan context.** Road improvement feasibility should consider planned land use changes that will affect future traffic demand.
3. **Assuming PPP viability without traffic analysis.** PPP toll roads require minimum traffic thresholds for financial viability. Not all corridors generate sufficient traffic for PPP.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Generated traffic | 15-20% | Gravel to paved upgrade | ASSUMED: 15-20% generated traffic for surface upgrade. | Kenya practice (training data) |
| Design period | 20 years | Standard | ASSUMED: 20-year design period. | Standard practice |
| Discount rate | 12% | Economic analysis | ASSUMED: 12% real discount rate. | World Bank / National Treasury |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Growth rate | 2 | 12 | % per year | Kenya practice | > 10% sustained growth rate is unusual -- verify |
| Generated traffic | 10 | 30 | % | Kenya practice | > 25% is high -- verify project context |

### M.5.2 Standards Compliance Checks

- **Check:** Planning context identifies responsible road authority
- **Standard:** Kenya Roads Act 2007
- **Pass condition:** Authority correctly identified (KeNHA for A/B/C, KeRRA for D/E, KURA for urban)
- **Fail action:** NOTE -- Verify responsible authority. Misidentification affects planning process and funding source.

### M.5.3 Departures / Relaxations Process

Transport planning methodology is not prescribed in a single standard. Planning approaches should follow PAM-5/PAM-6 for project-level appraisal and NPM for network-level planning.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| ADT > 10,000 vpd on 2-lane road | Capacity concern | SENIOR REVIEW -- Traffic exceeds 2-lane capacity. Consider dualling or access management per RDM 1.3. |
| Motorcycle traffic > 40% of ADT | Safety and capacity concern | NOTE -- High motorcycle proportion. Ensure motorcycle lane provisions per RDM 1.3 Section 4.7 are considered. |
| PPP proposed without traffic study | Financial risk | SENIOR REVIEW -- PPP viability requires detailed traffic and revenue forecasting beyond screening level. |

---

## M.7 Worked Examples -- Kenya

### Example 1: Feasibility Assessment for Class B Road in Western Kenya

**Project:** Transport planning assessment for a new 80km Class B road connecting two market towns in Western Kenya.

**Given:**
- Current road: Class D gravel, 6m width, ADT 800 vpd
- Vehicle composition: 25% motorcycles, 35% cars/pickups, 20% matatus/buses, 20% trucks
- Growth rate from Skill #6: 6% per year
- Design period: 20 years
- Proposed: upgrade to Class B paved standard (7m carriageway)

**Solution:**

Step 1: Future AADT (normal traffic): 800 x (1.06)^20 = 2,566 vpd
Step 2: Generated traffic (20% for gravel-to-paved): 2,566 x 0.20 = 513 vpd
Step 3: Total design AADT: 2,566 + 513 = 3,079 vpd
Step 4: KeNHA is responsible authority for Class B road
Step 5: Context: Vision 2030 / MTP IV alignment -- Western Kenya road connectivity. County spatial plans show significant agricultural and commercial development planned along corridor.
Step 6: Screening BCR likely > 1.5 given traffic level and gravel-to-paved VOC savings.

**Result:** Estimated future AADT of approximately 3,100 vpd supports upgrade to paved Class B standard. Recommend proceeding to detailed feasibility study per PAM-5 and economic appraisal per PAM-6. KeNHA is responsible authority. Note motorcycle traffic at 25% -- motorcycle safety provisions per RDM 1.3 Section 4.7 should be assessed.

---

## M.8 References

1. Government of Kenya, Kenya Vision 2030, 2008 (Medium Term Plans I-IV)
2. Government of Kenya, National Integrated Transport Policy, Ministry of Transport, 2009
3. Kenya Roads Act 2007, Laws of Kenya
4. National Transport and Safety Authority Act 2012, Laws of Kenya
5. Ministry of Roads and Transport, NPM (Network and Project Planning Manual), Republic of Kenya, 2025
6. Ministry of Roads and Transport, PAM-5 Feasibility Studies, Republic of Kenya, 2025
7. Ministry of Roads and Transport, PAM-6 Project Appraisal, Republic of Kenya, 2025
8. Physical and Land Use Planning Act 2019, Laws of Kenya

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft with Vision 2030 transport pillar, KeNHA/KeRRA/KURA/County institutional context, road network classification (A-E + urban), devolved planning, PPP framework, motorcycle traffic consideration, 1 worked example. Vision 2030 details flagged as training data. |
