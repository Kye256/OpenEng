# OpenEng — Project Summary

## What OpenEng Is

OpenEng is an open-source skills library that makes AI a competent engineering colleague for civil/road infrastructure design. It's a collection of 70 structured SKILL.md files that encode engineering standards, design tables, decision logic, validation rules, and professional judgment — organized so an LLM (Claude, GPT, etc.) can perform preliminary engineering design work to a consistent, auditable standard.

The engineer drives. The agent handles the grunt work: looking up standards, running calculations, checking designs, generating deliverables, and flagging decisions that need senior judgment.

**All outputs are preliminary/screening level.** OpenEng is not a replacement for professional engineering design software.

## Repository at a Glance

| Metric | Count |
|--------|-------|
| Total skills | 70 |
| Engineering domains | 14 |
| Country modules | 212 |
| JSON design tables | 84 |
| Evaluation scenarios | 313 |
| Total files | 453 |

## The 70 Skills by Domain

### Traffic Engineering (Skills #1–6)
| # | Skill | What It Does |
|---|-------|-------------|
| 1 | traffic-survey-design | Plan traffic surveys — types, locations, durations, timing |
| 2 | traffic-data-processing | Process raw counts into AADT, ADT, DHV, peak-hour factors |
| 3 | vehicle-classification | Map counts to vehicle categories, calculate heavy vehicle %, PCU factors |
| 4 | axle-load-surveys | Process axle load data into vehicle damage factors |
| 5 | esa-calculation | Convert traffic data into cumulative design ESAs for pavement design |
| 6 | traffic-forecasting | Project AADT to design year, growth scenarios |

### Geotechnical (Skills #7–10)
| # | Skill | What It Does |
|---|-------|-------------|
| 7 | site-investigation-planning | Plan ground investigation — boreholes, test pits, DCP, lab testing scope |
| 8 | soil-classification | Classify soils using USCS/AASHTO from borehole and lab data |
| 9 | material-testing-interpretation | Interpret CBR, Atterberg, compaction, grading, DCP results |
| 10 | subgrade-characterization | Determine design CBR and subgrade class (statistical percentile approach) |

### Terrain & Survey (Skills #11–12)
| # | Skill | What It Does |
|---|-------|-------------|
| 11 | terrain-classification | Classify terrain as flat/rolling/mountainous/escarpment |
| 12 | survey-data-for-design | Assess survey data adequacy, interpret cross-sections and profiles |

### Geometric Design (Skills #13–20)
| # | Skill | What It Does |
|---|-------|-------------|
| 13 | design-standards-selection | Select design standard, road class, design speed — the decision gateway |
| 14 | horizontal-alignment | Curve radii, superelevation, transitions, curve widening |
| 15 | vertical-alignment | Vertical curves, K-values, gradient compliance, climbing lanes |
| 16 | sight-distance | SSD, PSD, sight distance adequacy on curves and at intersections |
| 17 | cross-section-design | Lane widths, shoulders, medians, slopes, crossfall, clear zones |
| 18 | design-vehicle | Design vehicle selection, turning radii, swept paths |
| 19 | intersection-design | Intersection type selection, geometry, channelization |
| 20 | nmt-facilities | Pedestrian and cyclist facilities, NMT design |

### Pavement Design (Skills #21–25, #71)
| # | Skill | What It Does |
|---|-------|-------------|
| 21 | mowt-catalogue | MoWT catalogue pavement design (Uganda) |
| 22 | aashto-93 | AASHTO 1993 flexible pavement design |
| 23 | trl-orn-31 | TRL Road Note 31 for low-volume roads |
| 24 | pavement-material-specs | Material specifications for pavement layers |
| 25 | pavement-rehabilitation | Overlay design, rehabilitation strategy |
| 71 | rigid-pavement-design | Concrete/rigid pavement slab thickness, joint design, reinforcement |

### Earthworks (Skills #26–28)
| # | Skill | What It Does |
|---|-------|-------------|
| 26 | earthworks-calculation | Cut/fill volumes, cross-section methods |
| 27 | mass-haul | Mass haul diagrams, haul distance optimization |
| 28 | material-suitability | Assess borrow materials for embankment and pavement layers |

### Drainage (Skills #29–32)
| # | Skill | What It Does |
|---|-------|-------------|
| 29 | hydrology-road-drainage | Design flows — rational method, catchment delineation |
| 30 | ditch-channel-design | Side drains, mitre drains, channel sizing |
| 31 | culvert-hydraulic-design | Culvert sizing, inlet/outlet control, headwater |
| 32 | erosion-protection | Outlet protection, scour countermeasures |

### Structures (Skills #33–41)
| # | Skill | What It Does |
|---|-------|-------------|
| 33 | culvert-structural-design | RC culvert structural analysis and detailing |
| 34 | headwalls-wingwalls | Headwall and wingwall design for culverts |
| 35 | bridge-site-selection | Bridge site assessment and selection criteria |
| 36 | bridge-loading | Design loads — HA, HB, abnormal, pedestrian |
| 37 | simply-supported-beam-bridges | Simply supported RC/prestressed beam bridge design |
| 38 | bridge-substructure | Abutments, piers, foundations |
| 39 | bridge-hydraulics | Bridge waterway adequacy, scour analysis |
| 40 | small-span-structures | Causeways, drifts, small-span options |
| 41 | bridge-inspection-condition | Bridge condition rating and inspection |

### Traffic Management (Skills #67–70)
| # | Skill | What It Does |
|---|-------|-------------|
| 67 | road-marking-design | Centre lines, edge lines, junction markings, road studs, material selection |
| 68 | traffic-sign-design | Regulatory, warning, and informatory sign design and placement |
| 69 | traffic-signal-design | Signal warrant analysis, phase design, timing calculation |
| 70 | traffic-control-devices | Speed humps, barriers, delineation, VMS |

### Professional Practice (Skills #42–49, 54–55)
| # | Skill | What It Does |
|---|-------|-------------|
| 42 | fidic-red-book | FIDIC Red Book contract administration |
| 43 | fidic-yellow-book | FIDIC Yellow Book (design-build) administration |
| 44 | measurement-payment | Interim payment certificates, measurement |
| 45 | variations-claims | Contract variations and claims assessment |
| 46 | dispute-resolution | DAB, arbitration, amicable settlement |
| 47 | procurement-methods | Procurement route selection |
| 48 | tender-document-preparation | Tender document assembly |
| 49 | bid-evaluation | Technical and financial bid evaluation |
| 54 | construction-supervision | Site supervision and quality assurance |
| 55 | material-testing-qc | Construction QC testing protocols |

### Cost Estimation (Skills #50–53)
| # | Skill | What It Does |
|---|-------|-------------|
| 50 | engineers-estimate | Engineer's cost estimate preparation |
| 51 | boq-preparation | Bill of Quantities — FIDIC-compatible format |
| 52 | unit-rate-analysis | Unit rate build-up from first principles |
| 53 | uganda-ea-unit-rate-database | Uganda EA unit rate reference database |

### Asset Management (Skills #56–59)
| # | Skill | What It Does |
|---|-------|-------------|
| 56 | road-condition-assessment | Road condition surveys and rating |
| 57 | maintenance-planning | Maintenance strategy and programming |
| 58 | asset-valuation | Road asset valuation methods |
| 59 | prioritization-methods | Project prioritization and ranking |

### Planning & Safety (Skills #60–63)
| # | Skill | What It Does |
|---|-------|-------------|
| 60 | transport-planning | Transport planning and demand analysis |
| 61 | road-safety-audit | Road safety audit at design stages |
| 62 | environmental-social-screening | Environmental and social impact screening |
| 63 | climate-resilience | Climate resilience assessment for road design |

### Integration (Skills #64–65)
| # | Skill | What It Does |
|---|-------|-------------|
| 64 | coordination-meta-skill | Orchestrates multi-skill workflows, dependency graph of all 70 skills |
| 65 | tara-integration | Data exchange between TARA appraisal system and OpenEng skills |

## Architecture

### Skill Structure (10 Sections)
Every skill follows a standard template with YAML frontmatter + 10 sections:

```
---
name: "skill-directory-name"
description: "Use when [trigger]. [Prerequisites]. [Outputs]."
---

# Skill Title
> Skill ID | Domain | Version | Status | Last Updated | Reviewed By | Country Modules

1. Knowledge (Universal) — standards, formulas, concepts
2. Reasoning (Universal) — decision logic, professional judgment
3. Defaults (Universal) — assumptions when data is missing (always flagged)
4. Validation (Universal) — range checks, consistency checks
5. Escalation (Universal) — triggers for senior review
6. Interfaces — inputs, outputs, connections to other skills
7. Procedure — step-by-step workflow
8. Output Format — standardized engineering output template
9. Worked Examples — validated against published sources
10. Limitations & Future Work
```

### Country Module System
Skills separate universal engineering principles from country-specific standards. Each skill can have multiple country modules in its `modules/` directory:

- **Uganda** (MoWT Road Design Manual 2010) — most complete
- **Kenya** (KeNHA/RDM, Standard Specification, PPRA, PAM-4) — 68 modules covering all domains
- **Ethiopia** (ERA Design Manual 2013) — 38 modules across 9 domains (terrain, geometric design, geotechnical, pavement design, earthworks, drainage, structures, environmental screening, integration)
- **UK** (DMRB, BS standards) — partial coverage

Country modules provide: local design tables, standard-specific decision branches, country defaults, compliance checks, and worked examples using local standards.

### Design Tables (JSON)
Standards data stored as structured JSON for reliable lookup — no AI arithmetic on critical values like minimum radii, K-values, pavement layer thicknesses, or unit rates.

### Evaluation Framework
Every skill has an `evals/evals.json` with 3-4 scenarios (313 total):
1. Standard Uganda case
2. Cross-domain or complex case
3. Edge case with missing data

Each scenario has 3-5 judgment-based assertions evaluated by reviewing the AI's response.

### Skill Pipeline (Dependency Flow)
Skills form a pipeline — outputs from upstream skills feed into downstream skills:

```
Traffic: #1 → #2 → #3 → #4 → #5 (ESAs for pavement design)
                              ↗
              #6 (forecasting) ─┘

Geotech: #7 → #8 → #9 → #10 (design CBR for pavement design)

Terrain: #11 → #13 (design standards)
Survey:  #12 ──↗

Geometric: #13 → #14, #15, #16, #17, #18, #19, #20

Pavement: #10 + #5 → #21/#22/#23 → #24, #25; #71 (rigid)

Earthworks: #14 + #15 → #26 → #27, #28

Drainage: #29 → #30, #31 → #32
                  ↓
Structures: #33 → #34; #35 → #36 → #37 → #38; #39; #40; #41

Cost: #26 + #31 + #37 → #51 → #52 → #53 → #50

Traffic Mgmt: #67-#70 (markings, signs, signals, devices)

Professional: #42-#49, #54-#55 (contract/procurement — parallel track)

Planning/Safety: #60-#63 (parallel track, inform design decisions)

Asset: #56 → #57 → #58, #59

Integration: #64 (orchestrator), #65 (TARA data bridge)
```

## How to Use

### With an AI Assistant
1. Open a skill file (e.g., `skills/geometric-design/design-standards-selection/SKILL.md`)
2. Add it to your AI assistant's context (Claude Project, ChatGPT Custom GPT, or paste directly)
3. Add the relevant country module for your jurisdiction
4. Describe the engineering task — the skill tells the assistant what standards to use, how to reason, what to assume, and how to validate

### With Claude Code or Cursor
Skills with YAML frontmatter are discoverable as commands. Clone the repo and point your AI coding tool at the skills directory.

### With Any LLM
Paste the SKILL.md content (+ country module) into context and prompt the model with your engineering task.

## Key Files

| File | Purpose |
|------|---------|
| `README.md` | Project overview and quick start |
| `CONTRIBUTING.md` | How to contribute skills, reviews, tables |
| `SKILL_YAML_SCHEMA.md` | YAML frontmatter schema and validation checklist |
| `COUNTRY_MODULE_GUIDE.md` | How to add a new country's standards |
| `templates/SKILL_TEMPLATE.md` | Template for creating new skills |
| `templates/COUNTRY_MODULE_TEMPLATE.md` | Template for country modules |
| `benchmarks/benchmark-results.md` | Evaluation results across all 70 skills |
| `skills/integration/coordination-meta-skill/SKILL.md` | Dependency graph and workflow orchestrator |
| `skills/integration/tara-integration/SKILL.md` | TARA data exchange specifications |

## Standards Currently Supported

| Standard | Country | Coverage |
|----------|---------|----------|
| MoWT Road Design Manual (2010) | Uganda | Most complete — all 70 skills have Uganda context |
| Kenya RDM / KeNHA Standards | Kenya | 68 country modules across all domains |
| ERA Design Manual (2013) | Ethiopia | 38 country modules across 9 domains |
| AASHTO Green Book (7th Ed, 2018) | International | In progress |
| TRL ORN 31, ORN 18 | International | Pavement design skills |
| FIDIC Red/Yellow Book | International | Contract administration skills |
| BS/DMRB | UK | Partial — structures, drainage, pavement |

## License

Apache 2.0
