<p align="center">
  <h1 align="center">OpenEng</h1>
  <p align="center">Open-source AI skills for civil engineering design</p>
</p>

<p align="center">
  <a href="#quick-start">Quick Start</a> •
  <a href="#skills">70 Skills</a> •
  <a href="#standards">Standards</a> •
  <a href="#contributing">Contributing</a> •
  <a href="LICENSE">Apache 2.0</a>
</p>

---

OpenEng is a library of 70 structured skills that make AI competent at civil engineering design. Each skill encodes engineering standards, design tables, decision logic, and professional judgment — so an LLM can perform preliminary design work to a consistent, auditable standard.

The engineer drives. The agent handles the grunt work.

```
You:    "Design a pavement for 3M ESAs on CBR 8%, tropical climate, MoWT standard"
Agent:  [reads skill → looks up catalogue → selects structure → validates → shows working]
```

> **All outputs are preliminary/screening level.** OpenEng is not a replacement for professional engineering design software. Professional review is required before implementation.

## What's in the box

| | Count |
|---|---|
| Engineering skills | 70 |
| Domains | 14 |
| Country modules | 173 |
| JSON design tables | 84 |
| Evaluation scenarios | 272 |

Each skill is a self-contained `SKILL.md` file with a standard structure: knowledge, reasoning, defaults, validation, escalation triggers, interfaces, procedures, output format, worked examples, and limitations.

Design tables (minimum radii, K-values, pavement catalogues, unit rates) are stored as structured JSON — queryable, versionable, and swappable between standards. No AI arithmetic on safety-critical values.

## Quick Start

### With an AI Assistant
1. Open a skill file (e.g., `skills/geometric-design/design-standards-selection/SKILL.md`)
2. Add it to your AI assistant's context (Claude Project, ChatGPT Custom GPT, or paste directly)
3. Add the relevant country module for your jurisdiction
4. Describe the engineering task. The skill handles standards selection, calculation steps, validation, and output formatting.

### With Claude Code or Cursor
Skills with YAML frontmatter are discoverable as commands. Clone the repo and point your AI coding tool at the skills directory.

### With Any LLM
Paste the `SKILL.md` content (plus country module if applicable) into context. Prompt with your engineering task. The skill provides the structure — the model provides the reasoning.

## Skills

### Traffic Engineering (#1–6)
Traffic survey design → data processing → vehicle classification → axle load analysis → ESA calculation → traffic forecasting

### Geotechnical (#7–10)
Site investigation planning → soil classification → material testing interpretation → subgrade characterization

### Terrain & Survey (#11–12)
Terrain classification • survey data assessment

### Geometric Design (#13–20)
Design standards selection → horizontal alignment → vertical alignment → sight distance → cross-sections → design vehicle → intersection design → NMT facilities

### Pavement Design (#21–25, #71)
MoWT catalogue method • AASHTO 93 • TRL ORN 31 • material specifications • rehabilitation design • rigid pavement design

### Earthworks (#26–28)
Cut/fill calculation → mass haul optimization → material suitability assessment

### Drainage (#29–32)
Hydrology → ditch and channel design → culvert hydraulic sizing → erosion protection

### Structures (#33–41)
Culvert structural design • headwalls and wingwalls • bridge site selection → bridge loading → beam bridge design → substructure → bridge hydraulics • small span structures • bridge inspection

### Traffic Management (#67–70)
Road marking design • traffic sign design • traffic signal design • traffic control devices (speed humps, barriers, delineation, VMS)

### Professional Practice (#42–49, 54–55)
FIDIC Red Book • FIDIC Yellow Book • measurement and payment • variations and claims • dispute resolution • procurement methods • tender documents • bid evaluation • construction supervision • QC testing

### Cost Estimation (#50–53)
Engineer's estimate • BoQ preparation • unit rate analysis • Uganda/EA unit rate database

### Asset Management (#56–59)
Road condition assessment → maintenance planning → asset valuation → prioritization

### Planning & Safety (#60–63)
Transport planning • road safety audit • environmental and social screening • climate resilience

### Integration (#64–65)
Coordination meta-skill (orchestrates all 70 skills) • TARA integration (data exchange with transport appraisal)

## How skills connect

Skills form a pipeline — outputs from upstream skills feed downstream:

```
Traffic (#1-6) ──→ ESAs ──→ Pavement Design (#21-25)
                                    ↑
Geotech (#7-10) ──→ Design CBR ────┘

Terrain (#11) ──→ Design Standards (#13) ──→ Geometric Design (#14-20)
Survey (#12) ──↗                                      │
                                                       ↓
                                            Earthworks (#26-28) ──→ Cost (#50-53)
                                                       │
Drainage (#29-32) ──→ Structures (#33-41) ─────────────↗

Traffic Management (#67-70)              ← road markings, signs, signals, devices
Professional Practice (#42-49, 54-55)    ← parallel track
Planning & Safety (#60-63)               ← parallel track, informs design decisions
Asset Management (#56-59)                ← post-construction lifecycle
```

## Standards

| Standard | Coverage |
|----------|----------|
| Uganda MoWT Road Design Manual (2010) | All 70 skills |
| Kenya RDM / KeNHA Standards | 67 country modules across all domains |
| Uganda General Specifications for Road & Bridge Works (2026) | In progress |
| ERA Design Manual (2013) | In progress |
| AASHTO Green Book (7th Edition, 2018) | Geometric design, pavement |
| TRL ORN 31, ORN 18 | Pavement design, low-volume roads |
| FIDIC Red Book / Yellow Book | Contract administration |
| UK DMRB (CD 109, CD 127, GG 101) | Geometric design, structures |
| BS / Eurocode | Structural design |

### Country modules

Skills separate universal engineering principles from country-specific standards. Each skill can have modules for multiple jurisdictions:

- **Uganda** — most complete (MoWT 2010, MoWT General Specs 2026)
- **Kenya** — 67 modules covering all domains (KeNHA/RDM, Standard Specification, PPRA, PAM-4)
- **UK** — partial coverage (DMRB, BS standards)
- **Your country** — see [COUNTRY_MODULE_GUIDE.md](COUNTRY_MODULE_GUIDE.md) to contribute

## Skill quality

Every skill encodes six dimensions of engineering competence:

1. **Knowledge** — standards, tables, formulas from design manuals
2. **Reasoning** — decision logic and professional judgment
3. **Defaults** — assumptions when data is incomplete (always flagged to the engineer)
4. **Validation** — range checks, consistency checks, standards compliance
5. **Escalation** — conditions that trigger senior engineer review
6. **Interfaces** — inputs required, outputs produced, connections to other skills

Every output includes calculation steps with standard references, explicit flags on all assumptions, validation results, and a clear statement that outputs are preliminary level.

### Evaluation

Each skill has evaluation scenarios in `evals/evals.json` — 272 scenarios across the library covering standard cases, complex cross-domain cases, and edge cases with missing data. Evaluations use the [skill-creator](https://github.com/anthropics/skills/tree/main/skills/skill-creator) framework for benchmarking, regression testing, and skill-vs-no-skill comparison.

## Project structure

```
openeng/
├── skills/
│   ├── traffic-engineering/        # Skills #1-6
│   ├── geotechnical/               # Skills #7-10
│   ├── terrain-survey/             # Skills #11-12
│   ├── geometric-design/           # Skills #13-20
│   ├── pavement-design/            # Skills #21-25, #71
│   ├── earthworks/                 # Skills #26-28
│   ├── drainage/                   # Skills #29-32
│   ├── structures/                 # Skills #33-41
│   ├── traffic-management/         # Skills #67-70
│   ├── professional-practice/      # Skills #42-49, 54-55
│   ├── cost-estimation/            # Skills #50-53
│   ├── asset-management/           # Skills #56-59
│   ├── planning-safety/            # Skills #60-63
│   └── integration/                # Skills #64-65
├── templates/
│   ├── SKILL_TEMPLATE.md
│   └── COUNTRY_MODULE_TEMPLATE.md
├── benchmarks/
├── CONTRIBUTING.md
├── COUNTRY_MODULE_GUIDE.md
├── SKILL_YAML_SCHEMA.md
├── LICENSE                         # Apache 2.0
└── README.md
```

## Contributing

We're building a global community of contributing engineers. Whether you're adding a country module for your jurisdiction, correcting a design table, improving a worked example, or writing a new skill — contributions are welcome.

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines. All contributions require a [Developer Certificate of Origin](https://developercertificate.org/) (DCO) sign-off — this is a one-line statement in your git commit confirming you have the right to submit the contribution under Apache 2.0. Just use `git commit -s` to add it automatically.

**Ways to contribute:**
- Add a country module for your national standards
- Review and correct design tables against source manuals
- Submit worked examples with source references
- Report issues where a skill gives incorrect guidance
- Write evaluation scenarios for skills

## What's next

- **Python tools** — Calculation modules for numerical-heavy tasks (interpolation, iterative design, earthworks volumes). The skills are the spec; the tools are the implementation.
- **More standards** — ERA (Ethiopia), SATCC/SADC, TANROADS (Tanzania). Community contributions drive expansion.
- **Evaluation benchmarks** — Published benchmark results across all 70 skills, including skill-vs-no-skill comparisons.

## Disclaimer

All outputs from OpenEng skills are preliminary/screening level. OpenEng is not a replacement for professional engineering design software (Civil 3D, OpenRoads, HDM-4), and its outputs are not stamp-ready. Professional review and detailed design by a qualified engineer are required before implementation. The engineer is always responsible for the final design.

## License

[Apache 2.0](LICENSE)
