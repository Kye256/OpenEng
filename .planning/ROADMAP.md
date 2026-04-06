# OpenEng — Roadmap

## Milestones

- ✅ **v1.0 Skills Library** — 65 skills across 13 domains (shipped 2026-03-22)
- ✅ **v1.1 Kenya Country Modules + New Skills** — 70 skills, 173 country modules, Kenya (KeNHA/RDM) coverage (shipped 2026-04-05)
- 🔄 **v1.4 Ethiopia Country Modules** — ERA Design Manual (2013) modules across all applicable skills (in progress)

## Phases

### 🔄 v1.4 Ethiopia Country Modules

Adding Ethiopia country modules across the skills library based on the ERA Design Manual (2013). Modules for all existing skills where ERA has a corresponding standard (~41 modules across terrain, geometric design, geotech, pavement, earthworks, drainage, structures, and environmental).

ERA Low Volume Road manuals (Parts A-G) are excluded from this milestone — they will be handled in a dedicated LVR phase covering all countries.

**Orchestration:** GSD workflow (planner/executor/validator) — proven in v1.0 and v1.1.

**4 phases** | **41 requirements** | Phases 13-16

- [ ] **Phase 13: Terrain & Geometric Design** - ERA road classification, alignment, cross-sections, and sight distance (~10 modules)
- [ ] **Phase 14: Geotech, Pavement & Earthworks** - ERA materials, pavement design, and earthworks (~13 modules)
- [ ] **Phase 15: Drainage & Structures** - ERA hydrology, drainage design, bridge loading, and structural design (~13 modules)
- [ ] **Phase 16: Environmental, Evaluation & Integration** - ERA environmental screening, eval scenarios for all Ethiopia modules, and integration updates

## Phase Details

### Phase 13: Terrain & Geometric Design
**Goal**: Engineers can classify Ethiopian terrain and apply ERA geometric design parameters for road alignment, cross-sections, and sight distance
**Depends on**: Nothing (first phase of v1.4)
**Requirements**: TERR-E01, TERR-E02, GEOM-E01, GEOM-E02, GEOM-E03, GEOM-E04, GEOM-E05, GEOM-E06, GEOM-E07, GEOM-E08
**Success Criteria** (what must be TRUE):
  1. Agent correctly identifies ERA road classification (Trunk, Link, Access, etc.) and maps to design speeds for a given project
  2. Agent produces ERA-compliant horizontal and vertical alignment parameters (minimum radii, superelevation, gradient limits, K-values) that differ from Uganda/Kenya values
  3. Agent applies ERA sight distance values (SSD, PSD, ISD) and cross-section dimensions (carriageway widths, shoulders) appropriate to the selected road class
  4. Agent handles ERA intersection design warrants and NMT provisions without conflating with Uganda or Kenya standards
**Plans:** 3 plans
Plans:
- [ ] 13-01-PLAN.md — Gateway skills: terrain classification, survey data, design standards selection (3 modules)
- [x] 13-02-PLAN.md — Alignment core: horizontal alignment, vertical alignment, sight distance (3 modules)
- [ ] 13-03-PLAN.md — Cross-section and safety: cross-section design, design vehicle, intersection design, NMT facilities (4 modules)

### Phase 14: Geotech, Pavement & Earthworks
**Goal**: Engineers can characterize Ethiopian materials, design flexible and rigid pavements, and plan earthworks using ERA standards
**Depends on**: Phase 13
**Requirements**: GEO-E01, GEO-E02, GEO-E03, GEO-E04, GEO-E05, GEO-E06, PAVE-E01, PAVE-E02, PAVE-E03, PAVE-E04, RPAVE-E01, EARTH-E01, EARTH-E02
**Success Criteria** (what must be TRUE):
  1. Agent applies ERA ground investigation requirements, material classifications, and test standards for Ethiopian soil and pavement materials
  2. Agent uses ERA flexible pavement design method (catalogue or analytical) and correctly references ERA departures from AASHTO 93 and TRL ORN 31
  3. Agent applies ERA rigid pavement design method from Pavement Design Vol II
  4. Agent produces ERA-compliant earthworks material requirements and mass haul considerations
  5. Agent distinguishes ERA material specs and subgrade classes from Uganda MoWT and Kenya RDM equivalents
**Plans:** 3 plans
Plans:
- [x] 14-01-PLAN.md — Geotechnical: site investigation, soil classification, material testing, subgrade, pavement material specs, material suitability (6 modules)
- [x] 14-02-PLAN.md — Pavement design: flexible catalogue, AASHTO 93, TRL ORN 31, rehabilitation, rigid pavement (5 modules)
- [x] 14-03-PLAN.md — Earthworks: earthworks calculation, mass haul (2 modules)

### Phase 15: Drainage & Structures
**Goal**: Engineers can design drainage systems and structural elements using ERA hydrology data, bridge loading, and seismic requirements
**Depends on**: Phase 14
**Requirements**: DRAIN-E01, DRAIN-E02, DRAIN-E03, DRAIN-E04, STRUCT-E01, STRUCT-E02, STRUCT-E03, STRUCT-E04, STRUCT-E05, STRUCT-E06, STRUCT-E07, STRUCT-E08, STRUCT-E09
**Success Criteria** (what must be TRUE):
  1. Agent uses ERA rainfall data, IDF curves, and catchment methods appropriate to Ethiopian regions for hydrological design
  2. Agent applies ERA ditch dimensions, culvert sizing, and erosion protection methods using locally available materials
  3. Agent applies ERA bridge loading standards, load combinations, and structural design approach for beam bridges and substructures
  4. Agent accounts for Ethiopian seismic zones from ERA Bridge Design Manual in substructure and foundation design
  5. Agent applies ERA bridge inspection and management system requirements
**Plans:** 3 plans
Plans:
- [ ] 15-01-PLAN.md — Drainage: hydrology, ditch/channel, culvert hydraulic, erosion protection (4 modules)
- [ ] 15-02-PLAN.md — Culverts & Small Spans: culvert structural, headwalls/wingwalls, small span structures (3 modules)
- [ ] 15-03-PLAN.md — Bridges: site selection, loading, beam bridges, substructure, hydraulics, inspection (6 modules)

### Phase 16: Environmental, Evaluation & Integration
**Goal**: Full Ethiopia module set verified with eval scenarios and integrated into the skills library
**Depends on**: Phase 15
**Requirements**: PLAN-E01, EVAL-E01, INTEG-E01, INTEG-E02, INTEG-E03
**Success Criteria** (what must be TRUE):
  1. Agent references Ethiopian EPA/ERA environmental screening requirements for road projects
  2. All Ethiopia modules pass evaluation scenarios (standard Ethiopia, cross-country, edge case pattern)
  3. Coordination meta-skill (#64) dependency graph updated with all Ethiopia module connections
  4. README, PROJECT_SUMMARY, and skill YAML frontmatter reflect Ethiopia coverage across all applicable skills
**Plans**: TBD

## Progress

| Phase | Plans Complete | Status | Completed |
|-------|----------------|--------|-----------|
| 13. Terrain & Geometric Design | 1/3 | Complete    | 2026-04-05 |
| 14. Geotech, Pavement & Earthworks | 3/3 | Complete    | 2026-04-06 |
| 15. Drainage & Structures | 0/3 | Not started | - |
| 16. Environmental, Evaluation & Integration | 0/TBD | Not started | - |

---

### Planned

- **v1.5 Standards Comparison Skill** — Cross-country standards comparison tool. Takes a design parameter, pulls values from all available country modules, presents structured comparison with references. Helps engineers working across jurisdictions and policymakers benchmarking standards.
- **v1.6 Low Volume Road Design — All Countries** — Dedicated phase for LVR skills across all country modules. ERA LVR Parts A-G, TRL ORN 31, Uganda community access roads, Kenya low volume standards. Includes architecture for main vs LVR module switching via Skill #13 (Design Standards Selection).
- **v1.7 Uganda General Specifications 2026** — Encode the newly launched MoWT General Specifications for Road and Bridge Works 2026
- **v1.8 Python Calculation Tools** — Numerical modules for interpolation, iterative design, earthworks volumes
- **Additional country modules** — Nigeria, Ghana, Tanzania, South Africa (community contributions welcome)

---

<details>
<summary>✅ v1.1 Kenya Country Modules + New Skills (Phases 7-12) — SHIPPED 2026-04-05</summary>

- [x] Phase 7: Foundation — Gateway, Traffic & Geometric Design (4 plans)
- [x] Phase 8: New Skills — Traffic Management & Road Furniture (3 plans)
- [x] Phase 9: Subsurface — Geotech, Pavement, Earthworks & Rigid Pavement (5 plans)
- [x] Phase 10: Water & Structures — Drainage and Bridges (4 plans)
- [x] Phase 11: Professional Practice, Asset Management & Integration (4 plans)
- [x] Phase 12: v1.1 Polish — Module Structure & Cross-References (1 plan)

Full details: `.planning/milestones/v1.1-ROADMAP.md`

</details>

<details>
<summary>✅ v1.0 Skills Library (Phases 0-6) — SHIPPED 2026-03-22</summary>

- [x] Phase 0: Pre-Build Setup (2/2 plans)
- [x] Phase 1: Week 1 — Data & Inputs, 12 skills (5/5 plans)
- [x] Phase 2: Week 2 — Geometric Design, 6 skills (4/4 plans)
- [x] Phase 3: Week 3 — Pavement, Earthworks & Drainage, 12 skills (4/4 plans)
- [x] Phase 4: Week 4 — Structures, 9 skills (4/4 plans)
- [x] Phase 5: Week 5 — Professional Practice & Cost, 14 skills (5/5 plans)
- [x] Phase 6: Week 6 — Asset Mgmt, Planning & Integration, 11 skills + benchmarks (7/7 plans)

Full details: `.planning/milestones/v1.0-ROADMAP.md`

</details>
