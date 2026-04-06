# Coordination Meta-Skill -- Kenya Module

> **Parent Skill:** Skill #64 Coordination Meta-Skill
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual (Parts 1-6), KeNHA operational guidelines, Standard Specification for Road and Bridge Construction (2005)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:**

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Parts Referenced | Status |
|----------|-------------|------------------|--------|
| Kenya Road Design Manual | Various (2025 revision in progress) | Parts 1-6 (geometric, pavement, drainage, structures, environment, traffic) | Current |
| Standard Specification for Road and Bridge Construction | 2005 | All series (100-9000) | Current |
| NEMA Act | 2015 | Environmental Impact Assessment | Current |
| Public Procurement and Asset Disposal Act (PPADA) | 2015 | Procurement thresholds and methods | Current |

### M.1.2 Institutional Context

Kenya road management involves three primary road authorities under a devolved government structure:

- **KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A, B, C -- approximately 22,000 km). Uses Kenya Road Design Manual for design and Standard Specification for construction.
- **KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class D, E -- approximately 135,000 km). Uses simplified Kenya RDM standards.
- **KURA (Kenya Urban Roads Authority):** Manages urban roads in cities and municipalities. Uses Kenya RDM with urban design supplements.
- **Kenya Roads Board (KRB):** Administers the Roads Maintenance Levy Fund. Coordinates road maintenance funding across all three authorities.

**Standard selection by institution:**
- KeNHA projects: Kenya RDM (full application)
- KeRRA projects: Kenya RDM (simplified for rural roads)
- KURA projects: Kenya RDM + urban design guidelines
- Donor-funded: Kenya RDM + donor safeguard overlay (World Bank, AfDB, EU, JICA)

> **KNOWLEDGE GAP:** Kenya coordination module content is based on training data. Verify against current KeNHA procedures, PPADA regulations, and Kenya RDM revision status.

### M.1.3 Standard Philosophy

Kenya RDM follows a multi-part manual approach influenced by both UK (DMRB) and AASHTO traditions. The 2025 revision is modernising towards a performance-based approach. The Standard Specification (2005) is prescriptive for construction. This hybrid philosophy means workflow execution should check both design manual guidance and specification compliance.

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Project Lifecycle

Kenya road projects follow a standard lifecycle that maps to workflow templates:

| Project Stage | Kenya RDM Reference | Applicable Workflow Template | Key Skills |
|---------------|---------------------|------------------------------|------------|
| Identification | Network planning (KRB) | None (pre-OpenEng) | -- |
| Pre-feasibility | Corridor screening | Template 1 (simplified) | #11, #1-2, #60 |
| Feasibility Study | RDM Parts 1-5 | Template 1 (full) | #1-6, #7-10, #13-17, #21-23, #29-31, #50-51, #60-63 |
| Preliminary Design | RDM Parts 1-5 | Template 2 (partial) | #13-20, #21-25, #26-28, #29-32, #35-38 |
| Detailed Design | RDM Parts 1-6 | Template 2 (full) | All design skills |
| Tender | PPADA, SBDs | -- | #47-49, #42 |
| Construction | FIDIC, Standard Specification | -- | #42-46, #54-55 |
| Maintenance | RAAM guidelines | Templates 3-4 | #56-59 |

### M.2.2 Kenya-Specific Workflow Considerations

**Devolved government affects project coordination.** Since 2013 devolution, county governments manage county roads. National vs county jurisdiction must be confirmed early:
- National roads (KeNHA): Full Kenya RDM application
- County roads: Variable standards, often simplified Kenya RDM

**Environmental screening is mandatory.** Kenya's NEMA Act 2015 requires environmental screening for all road projects. Second Schedule lists mandatory EIA projects. Environmental screening (Skill #62) should be invoked early in the workflow.

**Climatic zones affect design.** Kenya spans from coastal lowlands to highland plateaus (>2,500m) and arid northern regions:
- Coastal: High humidity, coral aggregate availability
- Highlands: High rainfall, black cotton soils in parts
- Northern Kenya: Arid, limited material sources, flash flood risk
- These affect Skills #7 (investigation), #21-23 (pavement), #29 (hydrology), #63 (climate resilience)

**Material availability varies by region:**
- Central Kenya: Good volcanic aggregates
- Coast: Coral limestone, limited crushed rock
- Western Kenya: Laterite gravels, variable quality
- Northern Kenya: Limited sources, long haul distances

### M.2.3 KeNHA Project Cycle Mapping

| KeNHA Stage | OpenEng Skills | Typical Duration |
|-------------|---------------|-----------------|
| Network condition survey | #56 | Annual/biennial cycle |
| Maintenance programme | #57, #59, #50 | Annual cycle |
| Rehabilitation identification | #56, #57 | Triggered by condition thresholds |
| Feasibility study | Template 1 | 3-6 months |
| Detailed design | Template 2 | 6-12 months |
| Tender process | #47, #48, #49 | 3-6 months |
| Construction supervision | #42, #54, #55, #44 | 12-36 months |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

**Kenya-specific workflow adjustments:**

```
If funding_source == "World Bank" or "AfDB":
  -> Add Skill #62 (Environmental Screening) with donor ESF overlay
  -> Add procurement prior review check in Skill #47
  -> Apply most restrictive of NEMA and donor requirements

If project_type == "gravel_to_paved_upgrade":
  -> MUST include generated traffic factor in Skill #6
  -> Add Skill #63 (Climate Resilience) -- surface type change affects drainage

If jurisdiction == "county":
  -> Confirm design standards (may differ from national)
  -> Simplified workflow may apply
  -> County procurement rules (PPADA applies but thresholds differ)

If region == "Northern Kenya":
  -> Apply arid climate adjustments in Skill #63
  -> Limited material availability -- longer haul distances in Skill #27
  -> Flash flood risk -- conservative return periods in Skill #29

If road_class in ["A", "B", "C"]:
  -> Full Kenya RDM application (KeNHA)
  -> All skills applicable
If road_class in ["D", "E"]:
  -> KeRRA standards
  -> Simplified workflow possible
```

### M.3.2 Professional Judgment (Kenya-Specific)

- **Kenya RDM is being revised (2025).** Check which edition applies to the project. The 2025 revision introduces performance-based approaches for pavement design.
- **Kenya uses EN/Eurocode for bridge loading (not BS 5400).** This differs from Uganda. RDM Part 4 references EN 1991 (LM1-LM4) for bridge loading.
- **Kenya pavement design uses both catalogue and M-E methods.** RDM 3.4 provides the mechanistic-empirical method; AASHTO 93 is a secondary/donor method.
- **Kenya soil classification uses ESCS (BS EN ISO 14688-2:2018)** with 75 um amendment, not AASHTO classification.

### M.3.3 Common Errors (Kenya-Specific)

1. **Applying Uganda MoWT standards to a KeNHA project.** Kenya RDM is the applicable standard, not MoWT 2010. Design values, classifications, and procedures differ.
2. **Using BS 5400 bridge loading for Kenya.** Kenya has transitioned to EN/Eurocode loading. Use LM1-LM4 from RDM Part 4, not HA/HB from BS 5400.
3. **Ignoring county vs national jurisdiction.** Design standards and procurement rules may differ. Confirm jurisdiction early in the workflow.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design period | 20 years (paved), 10 years (gravel) | No design period specified | ASSUMED: 20-year design life for paved road | Kenya RDM standard practice |
| Discount rate | 12% | For economic appraisal | ASSUMED: 12% discount rate per Kenya standard practice | Government of Kenya economic analysis convention |
| Free haul distance | 1.0 km | Earthworks cost estimation | ASSUMED: 1.0 km free haul per Standard Specification | Standard Specification Table 1602/1 |

> **KNOWLEDGE GAP:** Default discount rate for Kenyan projects is based on training data. Verify against current Treasury guidelines.

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Growth rate | 2 | 12 | % p.a. | Kenya RDM | Flag if outside Kenya range |

### M.5.2 Standards Compliance Checks

- **Check:** All geometric parameters derived from Kenya RDM tables (not AASHTO Green Book or MoWT approximations)
- **Standard:** Kenya Road Design Manual
- **Pass condition:** Design speed, radius, gradient from Kenya RDM tables
- **Fail action:** Flag and correct to Kenya RDM values

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No traffic data and no road class available | Cannot estimate design traffic | SENIOR REVIEW -- Obtain at minimum a 24-hour count or use KeNHA road class defaults with explicit flag |
| National and county requirements conflict | Dual jurisdiction | SENIOR REVIEW -- Confirm which authority has jurisdiction; apply corresponding standards |
| Donor and PPADA requirements conflict | Dual standards applicable | SENIOR REVIEW -- Apply most restrictive requirement; document both frameworks |

---

## M.7 Worked Example -- Kenya

### Example: KeNHA Feasibility Study Workflow for Nairobi-Mombasa Highway Rehabilitation

**Given:** 480 km trunk road (Class A). Current AADT approximately 12,000 vpd. Mix of flat and rolling terrain. Multiple bridge crossings. World Bank and Government of Kenya co-financing. Project stage: Feasibility.

**Solution:**

1. **Identify workflow template:** Template 1 (Road Feasibility Study) with World Bank overlay.

2. **Kenya-specific adjustments:**
   - Add Skill #62 with WB ESF screening (likely Substantial risk -- major corridor with settlements)
   - Add WB procurement overlay in Skill #47 (ICB given project size)
   - Include generated traffic factor in Skill #6 if any sections upgrading from gravel
   - EN/Eurocode bridge loading for all bridge assessments (Skills #36-38)
   - Coastal section: coral aggregate assessment in Skill #28
   - Climate: coastal flooding and highland rainfall variation -- Skill #63 screening

3. **Skills to invoke:** 30 skills across all domains (Template 1 full + WB overlay):
   - Traffic: #1, #2, #3, #4, #5, #6
   - Geotechnical: #7, #8, #9, #10
   - Terrain: #11, #12
   - Geometric: #13, #14, #15, #16, #17
   - Pavement: #21 (screening), #22 (AASHTO), #23 (verification)
   - Drainage: #29, #30, #31, #32
   - Bridges: #35, #36, #37, #38, #39
   - Cost: #50, #51, #52
   - Planning: #60, #61, #62, #63
   - Procurement: #47

4. **Estimated project cost context:** Major national corridor rehabilitation, multi-year programme with World Bank co-financing.

**Result:** Comprehensive feasibility workflow with WB overlay. 30 skills, EN/Eurocode loading for bridges. Regional material variation across 480 km corridor.

---

## M.8 References

1. Kenya Road Design Manual, Parts 1-6, Various editions
2. Standard Specification for Road and Bridge Construction, 2005
3. Public Procurement and Asset Disposal Act (PPADA), 2015
4. National Environment Management Authority (NEMA) Act, 2015
5. World Bank, Environmental and Social Framework, 2018
6. Road Annuity and Maintenance Programme (RAAM), Various editions

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-06 | | Initial draft -- Kenya project lifecycle, KeNHA workflow mapping, devolved government context |
