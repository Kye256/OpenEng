# Coordination Meta-Skill -- Uganda Module

> **Parent Skill:** Skill #64 Coordination Meta-Skill
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual (all volumes), UNRA operational guidelines
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:**

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Volumes Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual | 2010 | Vol 1-7 | Current |
| UNRA Maintenance Manual | Various | Condition assessment, maintenance planning | Current |
| PPDA Act & Regulations | 2003/2014 | Procurement thresholds and methods | Current |
| Uganda NEMA Act | 2019 | Environmental screening | Current |

### M.1.2 Institutional Context

Uganda road management involves two primary institutions:

- **UNRA (Uganda National Roads Authority):** Manages the national road network (~20,000 km). Uses MoWT standards for design, UNRA-specific operational guidelines for maintenance and asset management.
- **MoWT (Ministry of Works and Transport):** Sets design standards via the Road Design Manual. Responsible for policy and standards, not direct road management.
- **District Local Governments:** Manage district, urban, and community access roads (DUCAR, ~100,000 km). Use simplified versions of MoWT standards, often with World Bank DRSP/USMID support.

**Standard selection by institution:**
- UNRA projects: MoWT Road Design Manual (full application)
- District projects: MoWT simplified guidelines + DUCAR programme standards
- World Bank-funded: MoWT standards + World Bank safeguard overlay

### M.1.3 Standard Philosophy

MoWT follows a "design manual" approach: provides tables, charts, and recommended values with engineer discretion within ranges. Not a prescriptive requirements-based system like UK DMRB. This means workflow execution should treat MoWT values as guidance rather than mandatory requirements, with departures documented but not requiring a formal process.

---

## M.2 Country-Specific Knowledge

### M.2.1 Uganda Project Lifecycle

Uganda road projects follow a standard lifecycle that maps directly to workflow templates:

| Project Stage | MoWT Reference | Applicable Workflow Template | Key Skills |
|---------------|---------------|------------------------------|------------|
| Identification | Project screening | None (pre-OpenEng) | -- |
| Pre-feasibility | Corridor screening | Template 1 (simplified) | #11, #1-2, #60 |
| Feasibility Study | MoWT Vol 1 | Template 1 (full) | #1-6, #7-10, #13-17, #21-22, #29-31, #50-51, #60-63 |
| Preliminary Design | MoWT Vol 1-4 | Template 2 (partial) | #13-20, #21-25, #26-28, #29-32, #35-38 |
| Detailed Design | MoWT Vol 1-4 | Template 2 (full) | All design skills |
| Tender | PPDA, SBDs | -- | #47-49, #42 |
| Construction | FIDIC, MoWT | -- | #42-46, #54-55 |
| Maintenance | UNRA guidelines | Templates 3-4 | #56-59 |

### M.2.2 Uganda-Specific Workflow Considerations

**Funding source affects the workflow.** World Bank-funded projects add:
- Environmental and Social Framework (ESF) screening (Skill #62)
- World Bank procurement overlay (Skill #47)
- Prior review requirements for procurement above thresholds

**Seasonal considerations.** Uganda has two wet seasons (March-May, September-November):
- Traffic surveys (Skill #1): Avoid wet season if possible; apply seasonal adjustment factors
- Geotechnical investigation (Skill #7): Wet-season CBR is design-critical
- Condition surveys (Skill #56): Wet-season surveys capture worst-case roughness

**Material availability.** Uganda-specific material considerations affect Skills #24, #28:
- Natural gravel widely available in most regions
- Crusite rock for base course: limited to certain geological zones
- Karamoja region: limited material sources, higher transport costs (regional factor 1.25-1.40)

### M.2.3 UNRA Project Cycle Mapping

| UNRA Stage | OpenEng Skills | Typical Duration |
|------------|---------------|-----------------|
| Network condition survey | #56 | Annual cycle |
| Maintenance programme | #57, #59, #50 | Annual cycle |
| Rehabilitation identification | #56, #57 | Triggered by condition thresholds |
| Feasibility study | Template 1 | 3-6 months |
| Detailed design | Template 2 | 6-12 months |
| Tender process | #47, #48, #49 | 3-6 months |
| Construction supervision | #42, #54, #55, #44 | 12-36 months |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

**Uganda-specific workflow adjustments:**

```
If funding_source == "World Bank":
  → Add Skill #62 (Environmental Screening) with WB ESF overlay
  → Add procurement prior review check in Skill #47
  → Apply most restrictive of NEMA and WB ESF requirements

If project_type == "gravel_to_paved_upgrade":
  → MUST include generated traffic factor in Skill #6 (10-20% per MoWT Vol 3)
  → Add Skill #63 (Climate Resilience) -- surface type change affects drainage

If region == "Karamoja":
  → Apply regional cost adjustment factor 1.25-1.40 in Skill #53
  → Climate resilience (Skill #63): heat and drought emphasis
  → PMB recommended for surfacing per Skill #63 Uganda module

If road_class == "DUCAR":
  → Simplified workflow: #1-2, #11, #13, #17, #21 (catalogue only), #29, #31, #50
  → Skip detailed geotechnical unless problem soils expected
```

### M.3.2 Professional Judgment (Uganda-Specific)

- **MoWT catalogue method (#21) is the primary pavement design method in Uganda.** AASHTO 93 (#22) and ORN 31 (#23) are used for verification or when the catalogue does not cover the design situation.
- **Bridge design in Uganda typically uses BS 5400 / MoWT Vol 4.** Eurocode is not standard practice.
- **UNRA condition surveys prioritize IRI for paved roads and visual inspection for gravel roads.** VCI is a supplementary measure.
- **District roads often lack traffic data.** Use UNRA road class defaults when no counts are available (Skill #2 module provides default AADT ranges by road class).

### M.3.3 Common Errors (Uganda-Specific)

1. **Applying DMRB standards to a UNRA project.** MoWT is the primary standard for Uganda -- DMRB comparisons are informational only.
2. **Forgetting the wet/dry check for MoWT catalogue.** Skill #21 requires the Table 4.1 wet/dry determination BEFORE chart selection. Skipping this step selects the wrong pavement structure.
3. **Using national road investigation intensity for district roads.** District roads use simplified investigation (wider spacing, fewer tests). Over-specifying increases cost without proportional benefit.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design period | 20 years (paved), 10 years (gravel) | No design period specified | ASSUMED: 20-year design life for paved road | MoWT standard practice |
| Discount rate | 12% | For economic appraisal | ASSUMED: 12% discount rate per GoU standard practice | Government of Uganda economic analysis convention |
| Generated traffic | 15% | Gravel-to-paved upgrade | ASSUMED: 15% generated traffic factor | MoWT Vol 3 Part I guidance (10-20% range) |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Growth rate | 2 | 15 | % p.a. | MoWT Vol 3 Part I | Flag if outside MoWT range |

### M.5.2 Standards Compliance Checks

- **Check:** All geometric parameters derived from MoWT Vol 1 tables (not AASHTO Green Book approximations)
- **Standard:** MoWT Road Design Manual Vol 1
- **Pass condition:** Design speed, radius, gradient from MoWT tables
- **Fail action:** Flag and correct to MoWT values

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No traffic data and no road class available | Cannot estimate design traffic | SENIOR REVIEW -- Obtain at minimum a 24-hour count or use UNRA road class defaults with explicit flag |
| World Bank and GoU requirements conflict | Dual standards applicable | SENIOR REVIEW -- Apply most restrictive requirement; document both frameworks |

---

## M.7 Worked Example -- Uganda

### Example: UNRA Feasibility Study Workflow for Arua-Nebbi Trunk Road Upgrade

**Given:** 65 km gravel trunk road in West Nile region. AADT approximately 600 vpd (estimated from UNRA traffic database). Rolling-to-mountainous terrain. Two major river crossings. World Bank funding. Project stage: Feasibility.

**Solution:**

1. **Identify workflow template:** Template 1 (New Road Feasibility Study) with World Bank overlay.

2. **Uganda-specific adjustments:**
   - Add Skill #62 with WB ESF screening (likely Substantial risk -- greenfield alignment sections possible)
   - Add WB procurement overlay in Skill #47 (ICB likely given project size >$10M)
   - Include generated traffic factor 15% in Skill #6
   - Apply regional cost factor 1.15-1.25 (Northern/West Nile region) in Skill #53
   - Climate: flooding risk high in Lake Albert lowlands -- Skill #63 screening

3. **Skills to invoke:** 28 skills across all domains (Template 1 full + WB overlay):
   - Traffic: #1, #2, #3, #4, #5, #6
   - Geotechnical: #7, #8, #9, #10
   - Terrain: #11, #12
   - Geometric: #13, #14, #15, #17
   - Pavement: #21 (primary), #22 (verification)
   - Drainage: #29, #30, #31
   - Bridges: #35, #36, #37, #38, #39 (for 2 river crossings)
   - Cost: #50, #51, #52/#53
   - Planning: #60, #61, #62, #63
   - Procurement: #47

4. **Estimated project cost:** 800M-1,200M UGX/km x 65 km = 52-78 billion UGX (~$14-21M). WB ICB procurement.

**Result:** Comprehensive feasibility workflow with WB overlay. 28 skills, 10 phases. Bridge design chain invoked twice (2 crossings). Regional cost adjustment applied.

---

## M.8 References

1. MoWT, Road Design Manual, Volumes 1-7, 2010
2. UNRA, Road Maintenance Manual, Various editions
3. Public Procurement and Disposal of Public Assets Act (PPDA), 2003
4. PPDA Regulations and Guidelines, 2014
5. National Environment Act, 2019
6. World Bank, Environmental and Social Framework, 2018

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft -- Uganda project lifecycle, UNRA workflow mapping |
