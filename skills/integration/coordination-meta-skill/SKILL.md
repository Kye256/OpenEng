---
name: "coordination-meta-skill"
description: "Use when orchestrating multi-skill engineering workflows that span multiple domains (traffic, geometric, pavement, drainage, structures, cost, procurement, traffic management). Provides dependency graph of all 70 OpenEng skills with input/output mappings, plus workflow templates for common multi-step tasks (feasibility study, detailed design, rehabilitation assessment). Load this skill first to determine which domain skills to invoke and in what order."
---

# Coordination Meta-Skill

> **Skill ID:** 64
> **Domain:** Integration
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:**
> **Country Modules:** Uganda, Kenya, Ethiopia

## Purpose

Enable the agent to orchestrate multi-skill engineering workflows by providing a comprehensive dependency graph of all 70 OpenEng skills and workflow templates for common multi-step tasks. This is a meta-skill -- it describes how other skills connect and the order in which they should be invoked, not engineering calculations. Use this skill to determine which domain skills are needed for a given task, resolve their dependencies, and plan execution order.

## When to Use This Skill

- **Use when:** A task requires coordination across multiple engineering domains (e.g., feasibility study, detailed design, rehabilitation assessment); the user asks "what skills do I need for X?"; a workflow spans traffic, geometric, pavement, drainage, structures, cost, or procurement domains; you need to determine execution order for a multi-skill task.
- **Do not use when:** The task involves a single skill in a single domain; the user has already identified the specific skill needed; the task is about TARA data flow specifically (use Skill #65 instead).
- **Prerequisite skills:** None -- this skill is loaded first to plan the workflow. It then directs loading of domain-specific skills.

---

## 1. Dependency Taxonomy (Universal)

### 1.1 Key Concepts

The 70 OpenEng skills are organized into 14 domains, each covering a distinct aspect of road engineering:

| Domain | Skills | ID Range | Core Function |
|--------|--------|----------|---------------|
| Traffic Engineering | 6 skills | #1-6 | Traffic data collection, processing, classification, ESA calculation, forecasting |
| Geotechnical | 4 skills | #7-10 | Site investigation, soil classification, material testing, subgrade characterization |
| Terrain & Survey | 2 skills | #11-12 | Terrain classification, survey data for design |
| Geometric Design | 8 skills | #13-20 | Standards selection, alignment, cross-section, intersection, NMT |
| Pavement Design | 6 skills | #21-25, #71 | Catalogue design, AASHTO/ORN methods, material specs, rehabilitation, rigid pavement |
| Earthworks | 3 skills | #26-28 | Volume calculation, mass haul optimization, material suitability |
| Drainage | 4 skills | #29-32 | Hydrology, ditches, culvert hydraulics, erosion protection |
| Structures | 9 skills | #33-41 | Culverts, bridges (site to substructure), small spans, inspection |
| Traffic Management | 4 skills | #67-70 | Road markings, traffic signs, traffic signals, traffic control devices |
| Professional Practice | 10 skills | #42-49, #54-55 | FIDIC contracts, procurement, measurement, supervision, QC |
| Cost Estimation | 4 skills | #50-53 | Engineer's estimate, BoQ, unit rates, rate database |
| Asset Management | 4 skills | #56-59 | Condition assessment, maintenance planning, valuation, prioritization |
| Planning & Safety | 4 skills | #60-63 | Transport planning, road safety audit, environmental screening, climate resilience |
| Integration | 2 skills | #64-65 | This skill (coordination) and TARA integration |

**Dependency types:**

- **Hard dependency:** Downstream skill requires this input to function. Cannot proceed without it. Example: Skill #5 (ESA) requires AADT from Skill #2.
- **Soft dependency:** Downstream skill benefits from this input but can function without it using defaults or assumptions. Example: Skill #22 (AASHTO 93) can use user-supplied road class instead of Skill #13 output.
- **Informational dependency:** Provides context or background but no computational input. Example: Skill #11 (Terrain) provides context to Skill #7 (Site Investigation) for planning intensity.

### 1.2 Dependency Graph Structure

The full machine-readable dependency graph is in `tables/skill_dependency_graph.json`. It contains:
- **70 nodes:** One per skill, with ID, name, slug, and domain.
- **200 edges:** Each edge specifies `from_skill`, `to_skill`, `data_type`, `required` (hard vs soft), and a description of the data flow.

### 1.3 Domain Interaction Patterns

**Sequential chains** (skills must execute in order):
- Traffic chain: #1 -> #2 -> #3 -> #4 -> #5 (with #6 feeding growth rate back to #5)
- Geotechnical chain: #7 -> #8/#9 -> #10
- Bridge design chain: #35 -> #36 -> #37 -> #38 (strictly sequential)
- Cost chain: #51 -> #52/#53 -> #50 -> #47 -> #48 -> #49
- Asset management chain: #56 -> #57 -> #59

**Parallel groups** (skills can execute simultaneously):
- Pavement methods: #21, #22, #23 can run in parallel given the same ESA and CBR inputs
- Geometric details: #14, #15, #16 can run in parallel once #13 outputs are available
- Drainage design: #30, #31 can run in parallel once #29 provides design flows
- FIDIC variants: #42 and #43 can be loaded in parallel for contract form comparison

**Hub skills** (many dependencies flow through):
- Skill #13 (Design Standards Selection): Outputs feed 12+ downstream skills
- Skill #10 (Subgrade Characterization): Feeds pavement design (#21-23), culvert (#33), bridge (#35, #38)
- Skill #29 (Hydrology): Feeds all drainage (#30-32) and bridge hydraulics (#35, #39, #40)
- Skill #51 (BoQ Preparation): Receives quantities from 8+ upstream skills
- Skill #17 (Cross-Section Design): Outputs feed 8+ downstream skills

---

## 2. Dependency Resolution (Universal)

### 2.1 Decision Logic

```
Step 1: Parse the user's task description
  → Identify the project type (new road, upgrade, rehabilitation, maintenance, inspection)
  → Identify the project stage (feasibility, preliminary, detailed, construction, operations)
  → Identify the domains involved

Step 2: Select applicable workflow template (Section 7)
  → If a standard workflow matches: use the template as starting point
  → If no template matches: build a custom skill list from the dependency graph

Step 3: For custom skill selection:
  a. List all skills relevant to the task
  b. For each skill, check hard dependencies (required=true edges in the graph)
  c. Topologically sort: a skill can only execute after all its hard dependencies
  d. Identify parallelizable groups (skills at the same topological level with no inter-dependencies)
  e. Identify soft dependencies that would improve output quality

Step 4: Handle missing data
  → For each hard dependency: if upstream skill output is unavailable, check if:
    (a) User can provide the data directly → proceed
    (b) A reasonable default exists → proceed with assumption flag
    (c) No alternative → the downstream skill cannot execute → flag as blocked
  → For soft dependencies: proceed without, flag the limitation

Step 5: Return the execution plan
  → Ordered list of skills to invoke
  → Data flows between them
  → Any assumptions or data gaps flagged
```

### 2.2 Professional Judgment (Universal)

- **Start with data collection:** Traffic (#1-2) and terrain (#11-12) are almost always the first skills invoked for any project.
- **Design standards selection (#13) is the gateway:** Most geometric and pavement skills cannot proceed without the road class and design speed from Skill #13.
- **Bridge design is strictly sequential:** Do not attempt to run #37 (beam bridges) before #36 (loading) or #35 (site selection). The chain #35 -> #36 -> #37 -> #38 must execute in order.
- **Cost estimation depends on quantities:** Skills #50-53 cannot produce meaningful results until design skills (#17, #21-28, #31, #37-38) have produced quantities.
- **Asset management is an independent stream:** Skills #56-59 operate on existing roads and do not depend on design skills (though #25 rehabilitation design may follow).

### 2.3 Common Errors

1. **Invoking pavement design before ESA calculation.** Skills #21-23 require cumulative design ESAs from Skill #5. Running them with assumed traffic produces unreliable results.
2. **Missing the generated traffic factor.** When upgrading from gravel to paved, Skill #6 provides a generated traffic factor (10-20% for Uganda). Omitting this underestimates design traffic.
3. **Ignoring optional inputs that significantly improve quality.** Skill #56 condition data is optional for Skill #25, but provides much better rehabilitation outcomes than the simplified assessment in Skill #25 Section 2.1.
4. **Running the bridge chain out of order.** Skills #35 -> #36 -> #37 -> #38 is strictly sequential. Each skill's output is a required input for the next.
5. **Skipping Skill #13 and going straight to alignment.** Design speed and road class from Skill #13 govern all geometric parameters. Designing alignment without these is guesswork.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Project stage | Feasibility | No stage specified | ASSUMED: Feasibility stage -- using broader skill set | Conservative: feasibility includes screening of all domains |
| Country/jurisdiction | Uganda | No country specified and project in East Africa | ASSUMED: Uganda standards | Most OpenEng skills have Uganda as primary module |
| Workflow template | Custom | No matching template | INFO: No standard template matches -- building custom skill sequence | Custom workflow from dependency graph |

### Default Behaviour Rules

1. **When in doubt, include the skill.** It is better to invoke a skill and find it not needed than to skip it and miss a critical input.
2. **Always flag assumptions.** If any upstream data is assumed rather than calculated, flag it in the execution plan.
3. **Conservative ordering:** If the dependency between two skills is ambiguous, treat it as hard (required) rather than soft (optional).

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Skills in workflow | 1 | 70 | count | If 0: no skills needed -- task may not require OpenEng. If >30: verify scope is correct |
| Hard dependency violations | 0 | 0 | count | Any hard dependency violation means the workflow cannot execute as planned |

### 4.2 Consistency Checks

- **Circular dependency check:** The dependency graph is a DAG (directed acyclic graph). If a topological sort fails, there is a circular dependency error in the graph.
- **Data type compatibility:** When skill A outputs `data_type: X` and skill B expects `data_type: X`, the types must match. Flag any mismatches.
- **Domain completeness:** If a workflow includes any skill from a domain, verify that prerequisite skills from the same domain are also included (e.g., if #22 is included, #10 and #5 should be too).

### 4.3 Standards Compliance

The agent shall verify that the workflow includes all skills required by the project's terms of reference, funding requirements, and applicable standards.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Hard dependency cannot be satisfied | Upstream skill output unavailable and no user data | SENIOR REVIEW -- Cannot proceed with [downstream skill] without [data type] from [upstream skill]. Obtain data or accept limitation. |
| Workflow exceeds 30 skills | Project scope may be too broad for a single execution | SENIOR REVIEW -- Consider breaking into sub-workflows by project stage. |
| Cross-domain conflict | Two skills produce conflicting recommendations | SENIOR REVIEW -- Resolve conflict between Skill #X and Skill #Y before proceeding. |

### 5.2 Escalation Behaviour

- Continue assembling the workflow plan even if escalation flags are raised.
- Present the complete plan with escalation flags clearly marked.
- Do not suppress escalation flags -- they represent risks to workflow quality.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Task description | text | -- | Yes | User | Description of the engineering task to be performed |
| Project stage | category | -- | Recommended | User | Feasibility / Preliminary / Detailed / Construction / Operations |
| Country/jurisdiction | text | -- | Recommended | User | Determines which country modules to load |
| Available data | list | -- | No | User | What data is already available (traffic counts, surveys, etc.) |
| Budget/scope constraints | text | -- | No | User | May limit which skills are practical to invoke |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Skill execution plan | ordered list | -- | Agent (all skills) | Ordered list of skills to invoke with data flows |
| Parallelizable groups | list of lists | -- | Agent | Groups of skills that can run simultaneously |
| Data gap assessment | list | -- | User | Missing data that must be obtained before proceeding |
| Assumption flags | list | -- | User | Any assumptions made in the execution plan |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific workflow considerations | Markdown |
| `tables/skill_dependency_graph.json` | Machine-readable dependency graph of all 70 skills | JSON |

---

## 7. Procedure

### Step 1: Receive Task Description
Parse the user's request to identify: project type, project stage, country/jurisdiction, domains involved, available data, and constraints.

### Step 2: Select Workflow Template
Match the task to one of the standard workflow templates below. If no template matches, proceed to Step 3.

---

### Workflow Template 1: New Road Feasibility Study

**Trigger:** New road or gravel-to-paved upgrade at feasibility stage.

**Execution sequence:**

| Phase | Skills | Purpose | Parallel? |
|-------|--------|---------|-----------|
| 1. Data Collection | #11 (Terrain), #1 (Traffic Survey), #12 (Survey Data) | Collect baseline data | Yes |
| 2. Traffic Analysis | #2 (Processing) -> #3 (Classification) -> #4 (Axle Loads) -> #6 (Forecasting) -> #5 (ESA) | Establish design traffic | Sequential |
| 3. Geotechnical | #7 (Investigation) -> #8 (Classification) / #9 (Testing) -> #10 (Subgrade) | Characterize subgrade | Sequential |
| 4. Design Standards | #13 (Standards Selection) | Set design speed, road class | Single |
| 5. Geometric Screening | #14 (Horizontal), #15 (Vertical), #17 (Cross-Section) | Preliminary alignment and cross-section | Parallel after #13 |
| 6. Pavement Design | #21 (MoWT Catalogue) and/or #22 (AASHTO) | Determine pavement structure | Parallel |
| 7. Drainage Screening | #29 (Hydrology) -> #30 (Ditches), #31 (Culverts) | Size drainage structures | #30/#31 parallel after #29 |
| 8. Bridge Assessment | #35 (Site) -> #36 (Loading) -> #37 (Beams) -> #38 (Substructure) | If river crossings present | Sequential |
| 9. Bridge Hydraulics | #39 (Hydraulics) | Scour and freeboard assessment | After #35 |
| 10. Cost Estimation | #51 (BoQ) -> #52/#53 (Rates) -> #50 (Estimate) | Feasibility-level cost estimate | Sequential |
| 11. Procurement | #47 (Method Selection) | Identify procurement approach | After #50 |
| 12. Planning & Safety | #60 (Transport Planning), #61 (RSA), #62 (Environmental Screening), #63 (Climate) | Screening assessments | Parallel |

**Key data flows:**
- #5 (ESA) -> #21/#22 (pavement design) -- hard dependency
- #10 (subgrade CBR) -> #21/#22 (pavement design) -- hard dependency
- #29 (design flow) -> #31 (culvert sizing) -- hard dependency
- #13 (design speed) -> #14, #15, #17 (geometric design) -- hard dependency

---

### Workflow Template 2: Detailed Design

**Trigger:** Detailed design stage, assumes feasibility/preliminary design complete.

**Execution sequence:**

| Phase | Skills | Purpose | Parallel? |
|-------|--------|---------|-----------|
| 1. Geotechnical | #7 -> #8/#9 -> #10 | Detailed investigation | Sequential |
| 2. Full Geometric | #13, then #14, #15, #16, #17, #18, #19, #20 | Complete geometric design | #14-20 parallel after #13 |
| 3. Full Pavement | #21/#22/#23 -> #24 | Design + material specs | #21-23 parallel, then #24 |
| 4. Earthworks | #26 -> #27 | Volumes and mass haul | Sequential |
| 5. Material Suitability | #28 | Source material assessment | After #9, #27 |
| 6. Full Drainage | #29 -> #30, #31 -> #32 | Design + erosion protection | #30/#31 parallel |
| 7. Culvert Structures | #33 -> #34 | Structural design + end structures | Sequential |
| 8. Full Bridge Design | #35 -> #36 -> #37 -> #38, #39 | Complete bridge design | #35-38 sequential, #39 parallel |
| 9. Small Spans | #40 -> #34 | Causeways/drifts if applicable | After #29 |
| 10. Detailed Cost | #51 -> #52/#53 -> #50 | Detailed cost estimate | Sequential |
| 11. Tender Preparation | #47 -> #48 | Procurement and tender docs | Sequential |
| 12. QC Plan | #55 | Material testing and QC plan | After #24 |
| 13. Construction Supervision | #54 | Supervision planning | After #42 |

---

### Workflow Template 3: Rehabilitation Assessment

**Trigger:** Existing road in poor condition, rehabilitation or maintenance decision needed.

**Execution sequence:**

| Phase | Skills | Purpose | Parallel? |
|-------|--------|---------|-----------|
| 1. Condition Survey | #56 (Road Condition Assessment) | IRI/VCI condition rating | Single |
| 2. Maintenance Planning | #57 (Maintenance Planning) | Treatment selection | After #56 |
| 3. Rehabilitation Design | #25 (Pavement Rehabilitation) | Overlay/reconstruction design if triggered | After #57 |
| 4. Prioritization | #59 (Prioritization Methods) | Rank against other sections | After #57 |
| 5. Cost Estimation | #50 (Engineer's Estimate) | Rehabilitation cost | After #25 or #57 |
| 6. Asset Valuation | #58 (Asset Valuation) | Current asset value | After #56 (optional) |

**Key data flows:**
- #56 (condition) -> #57 (treatment selection) -- hard dependency
- #57 (intervention type) -> #59 (prioritization) -- hard dependency
- #57 (referral) -> #25 (rehabilitation design) -- conditional

---

### Workflow Template 4: Periodic Maintenance Program

**Trigger:** Network-level maintenance programming for multiple road sections.

**Execution sequence:**

| Phase | Skills | Purpose | Parallel? |
|-------|--------|---------|-----------|
| 1. Network Condition Survey | #56 (Road Condition Assessment) | Assess all sections in network | Per section |
| 2. Treatment Selection | #57 (Maintenance Planning) | Select treatment per section | After #56 per section |
| 3. Prioritization | #59 (Prioritization Methods) | Rank all sections within budget | After all #57 |
| 4. Cost Estimation | #50 (Engineer's Estimate) | Estimate per section | After #57 per section |
| 5. Asset Valuation Update | #58 (Asset Valuation) | Update network asset register | After #56 |

**Key data flows:**
- #56 (condition per section) -> #57 (treatment per section) -- hard dependency
- All #57 outputs -> #59 (network prioritization) -- hard dependency
- #59 (prioritized list) + budget -> recommended programme

---

## 8. Output Format

### Output Template

```
============================================================
COORDINATION META-SKILL -- Workflow Plan
Task: [User's task description]
Country/Jurisdiction: [country]
Project Stage: [stage]
Date: [YYYY-MM-DD]
============================================================

TASK ANALYSIS
-------------
Project type: [new road / upgrade / rehabilitation / maintenance / other]
Domains involved: [list of domains]
Workflow template: [template name or "Custom"]

EXECUTION PLAN
--------------
Phase 1: [Phase name]
  Skills: [#X (Name), #Y (Name)]
  Parallel: [Yes/No]
  Inputs needed: [list]

Phase 2: [Phase name]
  Skills: [#X (Name)]
  Depends on: Phase 1 outputs
  Inputs needed: [list]

[Continue for all phases...]

DATA FLOWS
----------
[Skill #X] --(data_type)--> [Skill #Y]
[Skill #X] --(data_type)--> [Skill #Z]

DATA GAPS
---------
[List of missing data that must be obtained]

ASSUMPTIONS & DEFAULTS
---------------------
[Any assumed values with flags]

ESCALATION FLAGS
---------------
[Any issues, or "None"]

============================================================
WORKFLOW PLAN -- FOR PROFESSIONAL REVIEW
This plan identifies skills and sequence. Each skill
produces preliminary-level output requiring review.
============================================================
```

---

## 9. Worked Examples

### Example 1: Feasibility Study -- Gulu District Gravel-to-Paved Upgrade (Uganda)

**Given:**
- 25 km gravel road in Gulu District, Uganda
- Current AADT: 450 vpd, 15% heavy vehicles
- Rolling terrain with 3 river crossings
- Project stage: Feasibility
- Funding: World Bank

**Solution:**

Using Workflow Template 1 (New Road Feasibility Study):

**Phase 1: Data Collection** (parallel)
- Skill #11 (Terrain Classification): Confirm rolling terrain classification (MoWT: >5-20% cross-slope)
- Skill #1 (Traffic Survey Design): Plan 7-day classified count plus axle load survey
- Skill #12 (Survey Data): Assess available survey data for corridor

**Phase 2: Traffic Analysis** (sequential)
- Skill #2: Process counts -> AADT = 450 vpd (confirmed)
- Skill #3: Classify vehicles -> 15% heavy vehicles
- Skill #4: Axle load survey -> VDF per class
- Skill #6: Forecast traffic at 5% growth for 20 years -> design year AADT ~ 1,194 vpd. Include generated traffic factor 15% for gravel-to-paved upgrade -> adjusted AADT ~ 1,373 vpd
- Skill #5: Calculate ESA -> cumulative ESA ~ 3.0-5.0 million (depends on VDF and growth)

**Phase 3: Geotechnical** (sequential)
- Skill #7: Plan investigation -- test pits at 250m spacing for 25 km = ~100 test pits
- Skills #8/#9: Classify soils, interpret CBR results
- Skill #10: Design CBR using 10th percentile -> likely S3-S4 subgrade class

**Phase 4: Design Standards**
- Skill #13: MoWT standard, District Road Class II, design speed 70 km/h (rolling terrain), 20-year design period

**Phase 5: Geometric Screening** (parallel after Phase 4)
- Skill #14: Check minimum radius (120m at 70 km/h)
- Skill #15: Check maximum gradient (8% rolling terrain)
- Skill #17: Cross-section -- 6.5m carriageway + 1.5m shoulders

**Phase 6: Pavement Design** (parallel)
- Skill #21: MoWT catalogue -> T3-T4 traffic class, S3-S4 subgrade -> select structure
- Skill #22: AASHTO 93 verification -> SN calculation

**Phase 7: Drainage**
- Skill #29: Hydrology for side drains and culvert crossings
- Skills #30, #31: Size ditches and culverts (parallel)

**Phase 8: Bridge Assessment** (3 river crossings -- sequential per crossing)
- Skill #35: Site selection per crossing
- Skill #36: Bridge loading (HA + HB 30 units)
- Skill #37: Preliminary beam bridge sizing
- Skill #38: Substructure preliminary design
- Skill #39: Scour and freeboard assessment

**Phase 9: Cost Estimation**
- Skill #51: Prepare BoQ from all design quantities
- Skills #52/#53: Apply unit rates
- Skill #50: Feasibility estimate with 25% physical contingency

**Phase 10: Procurement and Planning** (parallel)
- Skill #47: World Bank procurement method (likely ICB given project size)
- Skill #60: Transport planning -- BCR screening
- Skill #61: Stage 1 RSA (feasibility)
- Skill #62: World Bank ESF screening (likely Substantial risk given 25 km, resettlement possible)
- Skill #63: Climate screening (Gulu -- flooding and heat risks)

**Result:** 25+ skills invoked across 10 phases. Three river crossings drive bridge design skills. Generated traffic factor applied for gravel-to-paved upgrade. World Bank funding triggers ESF screening and ICB procurement.

---

### Example 2: Rehabilitation Assessment -- Deteriorated Trunk Road (Uganda)

**Given:**
- 50 km trunk road, paved
- Average IRI: 8.2 m/km (measured by roughness profiler)
- Extensive cracking (alligator pattern, >60% of area) and rutting (average 15mm)
- Last rehabilitated 12 years ago, design life 20 years
- UNRA-managed, GoU funded

**Solution:**

Using Workflow Template 3 (Rehabilitation Assessment):

**Phase 1: Condition Survey**
- Skill #56: IRI = 8.2 m/km -> "Very Poor" rating (paved threshold: >8 = Very Poor). VCI calculation from distress data: extensive alligator cracking + rutting -> VCI likely 20-35 (Poor to Very Poor). Conservative rating: Very Poor.

**Phase 2: Maintenance Planning**
- Skill #57: IRI 8.2 exceeds rehabilitation trigger (IRI > 6 for paved). Distress severity (alligator cracking >60%, rutting 15mm) confirms rehabilitation, not periodic maintenance. Treatment: structural overlay or reconstruction. Referral to Skill #25: YES.

**Phase 3: Rehabilitation Design**
- Skill #25: Requires traffic data (Skill #5 for future ESA) and condition data (from #56). FWD deflection data recommended for SNeff calculation. Preliminary overlay thickness estimate: 80-120mm AC overlay depending on SNeff.

**Phase 4: Prioritization**
- Skill #59: This section ranks high on needs-based method (Very Poor condition, above rehabilitation trigger). If other sections are being compared, MCA scoring would include condition, traffic, strategic importance.

**Phase 5: Cost Estimation**
- Skill #50: Rehabilitation cost per km based on treatment (overlay vs reconstruction). Approximate: 300-500 million UGX/km for overlay, 800-1,200 million UGX/km for reconstruction.

**Phase 6: Asset Valuation**
- Skill #58: DRC calculation -- replacement cost minus depreciation. At 12 of 20-year design life with Very Poor condition, condition-based depreciation gives ~15-25% remaining value.

**Result:** 6 skills invoked in linear sequence. IRI clearly triggers rehabilitation. Skill #25 needs traffic data to design the overlay, creating a dependency on Skills #1-5 if current traffic data is not available.

---

## 10. Limitations & Future Work

- **Not covered:** Detailed scheduling and resource allocation across concurrent skill executions; real-time dependency resolution during execution (the plan is static once created).
- **Simplifications:** The dependency graph captures direct data flows from Section 6 interfaces. Indirect dependencies (e.g., knowledge from one skill informing judgment in another) are not captured as edges.
- **Country modules available:** Uganda, Kenya
- **Country modules needed:** UK (when DMRB skills are built), Tanzania (TANROADS manual)
- **Future work:** Dynamic workflow adjustment based on intermediate results (e.g., if Skill #56 shows "Good" condition, skip Skills #25 and #57). Integration with project management tools for timeline estimation.

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft -- 65 skill nodes, 169 edges, 4 workflow templates |
| 0.2 | 2026-04-05 | | v1.1 update -- 70 skill nodes, 200 edges; added Traffic Management domain (#67-70) and Rigid Pavement Design (#71); Kenya country module support |
