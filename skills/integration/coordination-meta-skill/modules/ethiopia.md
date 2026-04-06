# Coordination Meta-Skill -- Ethiopia Module

> **Parent Skill:** Skill #64 Coordination Meta-Skill
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Design Manual (2013, all chapters), Ethiopian Roads Authority operational guidelines
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-06
> **Reviewed By:**

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Chapters Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Design Manual | 2013 | All chapters (geometric, pavement, drainage, structures, environment) | Current |
| Ethiopian Building Code Standard (EBCS) | Various | Seismic loading, structural design | Current |
| EIA Proclamation | 299/2002 | Environmental Impact Assessment | Current |
| Ethiopian Public Procurement Proclamation | 649/2009 | Procurement thresholds and methods | Current |

### M.1.2 Institutional Context

Ethiopia road management is structured at federal and regional levels:

- **ERA (Ethiopian Roads Authority):** Manages the federal road network (~30,000 km of trunk and link roads). Uses ERA Design Manual 2013 as the unified design standard for all federal roads.
- **Regional Road Authorities (RRAs):** Manage regional road networks. Each of the 11 regional states has its own RRA. Use ERA standards with simplified application for lower-class roads.
- **Ethiopian Road Fund (ERF):** Provides funding for road maintenance through fuel levy and other sources.
- **URRAP (Universal Rural Road Access Programme):** Aims to connect all kebeles with all-weather roads. Uses simplified ERA standards.

**Standard selection by institution:**
- ERA projects: ERA Design Manual 2013 (full application)
- Regional projects: ERA Design Manual (simplified for lower classes)
- Donor-funded: ERA standards + donor safeguard overlay (World Bank, AfDB, EU, JICA)

> **KNOWLEDGE GAP:** Institutional details on ERA procurement procedures and regional road authority operational guidelines are based on training data. Verify against current ERA procedures and Ethiopian public procurement regulations.

### M.1.3 Standard Philosophy

ERA Design Manual 2013 is a unified design manual covering all road engineering disciplines in a single document. It follows an AASHTO-influenced approach with adaptations for Ethiopian conditions (climate zones, material availability, terrain). The manual provides design tables and charts with engineer discretion within specified ranges. (Verified from ERA Design Manual 2013)

---

## M.2 Country-Specific Knowledge

### M.2.1 Ethiopia Project Lifecycle

Ethiopia road projects follow a standard lifecycle that maps to workflow templates:

| Project Stage | ERA Reference | Applicable Workflow Template | Key Skills |
|---------------|---------------|------------------------------|------------|
| Identification | Network planning | None (pre-OpenEng) | -- |
| Pre-feasibility | Corridor screening | Template 1 (simplified) | #11, #1-2, #60 |
| Feasibility Study | ERA Design Manual | Template 1 (full) | #1-6, #7-10, #13-17, #21-23, #29-31, #50-51, #60-63 |
| Preliminary Design | ERA Design Manual | Template 2 (partial) | #13-20, #21-25, #26-28, #29-32, #35-38 |
| Detailed Design | ERA Design Manual | Template 2 (full) | All design skills |
| Tender | Procurement Proclamation | -- | #47-49, #42 |
| Construction | FIDIC, ERA specs | -- | #42-46, #54-55 |
| Maintenance | ERA maintenance guidelines | Templates 3-4 | #56-59 |

### M.2.2 Ethiopia-Specific Workflow Considerations

**Donor coordination is critical.** Many ERA projects are donor-funded (World Bank, AfDB, EU, JICA, China EXIM Bank). Each donor has specific requirements:
- World Bank: ESF screening, procurement prior review
- AfDB: Environmental and Social Assessment Procedures
- EU: EuropeAid procurement rules
- JICA: Japan's environmental guidelines
- China EXIM Bank: Specific contractor requirements

**Environmental screening is mandatory early.** Ethiopia's EIA Proclamation 299/2002 requires environmental screening for all road projects. Schedule I and Schedule II projects have different screening requirements. Environmental screening (Skill #62) should be invoked early in the workflow.

**Climatic zones affect design.** Ethiopia spans from arid lowlands (<500m) to highland plateaus (>3,000m):
- Highland areas: Frost considerations, high rainfall intensity
- Rift Valley: Expansive soils, seismic activity
- Lowland areas: High temperatures, flash flood risk
- These affect Skills #7 (investigation), #21-23 (pavement), #29 (hydrology), #63 (climate resilience)

**Material availability varies by region:**
- Highland basalt: excellent aggregate but variable weathering
- Rift Valley: volcanic materials, some expansive clays
- Eastern lowlands: limited material sources, longer haul distances

### M.2.3 ERA Project Cycle Mapping

| ERA Stage | OpenEng Skills | Typical Duration |
|-----------|---------------|-----------------|
| Network condition survey | #56 | Annual/biennial cycle |
| Maintenance programme | #57, #59, #50 | Annual cycle |
| Rehabilitation identification | #56, #57 | Triggered by condition thresholds |
| Feasibility study | Template 1 | 3-6 months |
| Detailed design | Template 2 | 6-12 months |
| Tender process | #47, #48, #49 | 3-6 months |
| Construction supervision | #42, #54, #55, #44 | 12-48 months |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

**Ethiopia-specific workflow adjustments:**

```
If funding_source == "World Bank" or "AfDB":
  -> Add Skill #62 (Environmental Screening) with donor ESF overlay
  -> Add procurement prior review check in Skill #47
  -> Apply most restrictive of EIA Proclamation and donor requirements

If project_type == "gravel_to_paved_upgrade":
  -> MUST include generated traffic factor in Skill #6
  -> Add Skill #63 (Climate Resilience) -- surface type change affects drainage
  -> Consider URRAP standards if rural access road

If altitude > 2500m:
  -> Apply highland climate adjustments in Skill #63
  -> Consider frost protection in pavement design (Skills #21-23)
  -> Higher rainfall intensity -- adjust IDF parameters in Skill #29

If region == "Rift Valley":
  -> Seismic zone consideration in Skills #36-38
  -> Expansive soil investigation in Skill #7
  -> Apply appropriate foundation treatment in Skill #10

If road_class in ["DS1", "DS2", "DS3"]:
  -> Full ERA design standard application
  -> All skills applicable
If road_class in ["DS4", "DS5", "DS6", "DS7"]:
  -> Simplified workflow possible
  -> Reduced investigation intensity
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

- **ERA Design Manual 2013 is the unified national standard.** It covers all design disciplines. Unlike Uganda (multiple volumes) or Kenya (separate manuals), Ethiopia uses a single comprehensive manual.
- **ERA pavement design follows AASHTO-based methods.** Both catalogue and mechanistic approaches are used, with AASHTO 93 as the primary analytical method for higher-class roads.
- **Bridge design references AASHTO LRFD and EBCS.** BS 5400 is not the primary bridge standard in Ethiopia (unlike Uganda).
- **IDF parameters differ significantly from East African neighbours.** ERA uses its own rainfall data and regional IDF curves specific to Ethiopian meteorological stations.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Applying Uganda MoWT standards to an ERA project.** ERA Design Manual 2013 is the applicable standard for Ethiopia, not MoWT 2010. While both draw on similar technical sources (AASHTO, TRL), the design values, classifications, and procedures differ.
2. **Ignoring altitude effects.** Ethiopia has significant elevation variation (from 125m below sea level in Danakil to 4,550m at Ras Dashen). Altitude affects temperature, rainfall intensity, material properties, and pavement performance. Always check the project altitude.
3. **Using Uganda or Kenya IDF parameters.** ERA has its own hydrological data. Do not substitute Ugandan or Kenyan rainfall data for Ethiopian projects.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design period | 20 years (paved), 10 years (gravel) | No design period specified | ASSUMED: 20-year design life for paved road | ERA standard practice |
| Discount rate | 10% | For economic appraisal | ASSUMED: 10% discount rate per Ethiopian standard practice | Government of Ethiopia economic analysis convention |
| Generated traffic | 15% | Gravel-to-paved upgrade | ASSUMED: 15% generated traffic factor | ERA guidance |

> **KNOWLEDGE GAP:** Default discount rate and generated traffic factor for Ethiopian projects are based on training data. Verify against current ERA economic analysis guidelines.

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Growth rate | 3 | 12 | % p.a. | ERA Design Manual 2013 | Flag if outside ERA range |

### M.5.2 Standards Compliance Checks

- **Check:** All geometric parameters derived from ERA Design Manual 2013 tables (not AASHTO Green Book or MoWT approximations)
- **Standard:** ERA Design Manual 2013
- **Pass condition:** Design speed, radius, gradient from ERA tables
- **Fail action:** Flag and correct to ERA values

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No traffic data and no road class available | Cannot estimate design traffic | SENIOR REVIEW -- Obtain at minimum a 24-hour count or use ERA road class defaults with explicit flag |
| Multiple donor requirements conflict | Dual/multiple standards applicable | SENIOR REVIEW -- Apply most restrictive requirement; document all applicable frameworks |
| Altitude > 3,000m or Rift Valley seismic zone | Special design conditions | SENIOR REVIEW -- Verify climate and seismic parameters against ERA regional data |

---

## M.7 Worked Example -- Ethiopia

### Example: ERA Feasibility Study Workflow for Addis Ababa-Hawassa Corridor Upgrade

**Given:** 275 km trunk road connecting Addis Ababa to Hawassa through the Ethiopian Rift Valley. Elevation range 1,600-2,400m. Current AADT approximately 5,000 vpd. Mix of rolling and mountainous terrain. Two major bridge crossings (Awash River tributaries). World Bank and AfDB co-financing. Project stage: Feasibility.

**Solution:**

1. **Identify workflow template:** Template 1 (Road Feasibility Study) with World Bank + AfDB overlay.

2. **Ethiopia-specific adjustments:**
   - Add Skill #62 with WB ESF screening (likely High risk -- Rift Valley environmental sensitivity, potential resettlement)
   - Add WB/AfDB procurement overlay in Skill #47 (ICB likely given project size >$50M)
   - Include generated traffic factor 15% in Skill #6
   - Seismic zone consideration for Rift Valley section in bridge design (Skills #36-38)
   - Expansive soil investigation required for Rift Valley section (Skill #7)
   - Climate: altitude variation affects IDF parameters -- use ERA regional curves in Skill #29
   - EIA Proclamation 299/2002 Schedule I project -- full EIA required

3. **Skills to invoke:** 30 skills across all domains (Template 1 full + donor overlay):
   - Traffic: #1, #2, #3, #4, #5, #6
   - Geotechnical: #7, #8, #9, #10
   - Terrain: #11, #12
   - Geometric: #13, #14, #15, #16, #17
   - Pavement: #21 (screening), #22 (primary analytical), #23 (verification)
   - Drainage: #29, #30, #31, #32
   - Bridges: #35, #36, #37, #38, #39 (for 2 river crossings)
   - Cost: #50, #51, #52
   - Planning: #60, #61, #62, #63
   - Procurement: #47

4. **Estimated project cost context:** Major corridor upgrade in Ethiopia, donor co-financing with World Bank and AfDB procurement rules.

**Result:** Comprehensive feasibility workflow with multi-donor overlay. 30 skills, environmental screening prioritized due to Rift Valley sensitivity. Seismic and expansive soil considerations built into investigation plan.

(Verified from ERA Design Manual 2013 -- project lifecycle and design standard references)

---

## M.8 References

1. Ethiopian Roads Authority, ERA Design Manual, 2013
2. Environmental Impact Assessment Proclamation No. 299/2002
3. Ethiopian Public Procurement Proclamation No. 649/2009
4. Ethiopian Building Code Standard (EBCS), Various editions
5. World Bank, Environmental and Social Framework, 2018
6. African Development Bank, Integrated Safeguards System, 2013

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-06 | | Initial draft -- Ethiopia project lifecycle, ERA workflow mapping, donor coordination |
