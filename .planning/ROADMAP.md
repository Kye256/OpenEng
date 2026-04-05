# OpenEng — Roadmap

## Milestones

- ✅ **v1.0 Skills Library** — 65 skills across 13 domains (shipped 2026-03-22)
- 🔄 **v1.1 Kenya Country Modules + New Skills** — Kenya (KeNHA/RDM) modules for all applicable skills plus 5 new skills (#67–71) (in progress)

## Phases

### 🔄 v1.1 Kenya Country Modules + New Skills

Adding Kenya country modules across the skills library based on the Kenya Road Design Manual (RDM) 2025 series, KeNHA standards, PAM-4, Standard Specification for Road and Bridge Construction, and WSCM Part 3. Also adding 5 new skills (#67–71) for traffic management, road furniture, and rigid pavement design.

**6 phases** | **81 requirements** | Phases 7–12

---

#### Phase 7: Foundation — Gateway, Traffic & Geometric Design

**Goal:** Engineers can select Kenya road classes and apply Kenya-specific traffic and geometric design parameters.

**Requirements:** GEOM-K01, TERR-K01, TERR-K02, TRAF-K01–K06, GEOM-K02–K08 (18 reqs)

**Success Criteria:**
1. Agent correctly identifies Kenya road classes (S/A/B/C/D/E + UA/UB/UC) and maps them to design speeds when user specifies a Kenya project
2. Agent applies Kenya-specific traffic survey methods, vehicle classification, axle load limits, and growth rates from RDM 1.2
3. Agent produces Kenya-compliant horizontal/vertical alignment parameters, cross-sections, and sight distances from RDM 1.3
4. Agent distinguishes Kenya terrain classification from Uganda without conflation

- [ ] Plan 7.1: Design standards gateway + terrain/survey Kenya modules (Skills #13, #11, #12)
- [ ] Plan 7.2: Traffic data pipeline Kenya modules (Skills #1–6)
- [ ] Plan 7.3: Geometric design Kenya modules (Skills #14–20)
- [ ] Plan 7.4: Phase 7 evaluation and engineer review

---

#### Phase 8: New Skills — Traffic Management & Road Furniture

**Goal:** Engineers can design road markings, signs, signals, and traffic control devices using universal principles and Kenya standards.

**Requirements:** TMAN-01–TMAN-12 (12 reqs)

**Dependencies:** Phase 7 (Kenya road classification vocabulary)

**Success Criteria:**
1. Agent can design road markings (types, dimensions, materials, placement) for a given road class and speed using Skill #67
2. Agent can select and size traffic signs with correct positioning and retroreflectivity using Skill #68
3. Agent can perform signal warrant analysis and calculate signal timing/phasing using Skill #69
4. Agent can recommend traffic control devices (barriers, delineators, rumble strips, guardrails, speed humps) using Skill #70
5. All four new skills pass evaluation scenarios for both Kenya and universal contexts

- [x] Plan 8.1: Road marking design (#67) and traffic sign design (#68) — core + Kenya modules + evals
- [x] Plan 8.2: Traffic signal design (#69) and traffic control devices (#70) — core + Kenya modules + evals
- [x] Plan 8.3: Phase 8 evaluation and engineer review

---

#### Phase 9: Subsurface — Geotech, Pavement, Earthworks & Rigid Pavement

**Goal:** Engineers can characterize Kenya materials, design flexible and rigid pavements, and plan earthworks using Kenya standards.

**Requirements:** GEO-K01–K06, PAVE-K01–K04, RPAVE-01–03, EARTH-K01–K02 (15 reqs)

**Plans:** 4 plans

**Dependencies:** Phase 7 (Kenya road classification for pavement design class selection)

**Success Criteria:**
1. Agent applies Kenya material specifications (KS/EN standards, G8-G45/GCS/HBS material classes) and Standard Specification test requirements
2. Agent uses Kenya RDM 3.4 mechanistic-empirical method with MESA traffic classes for flexible pavement design
3. Agent can design rigid pavements (Skill #71) including slab thickness, joint design, and reinforcement using RDM 3.5
4. Agent applies Kenya earthworks material requirements from Standard Specification

Plans:
- [x] 09-01-PLAN.md — Geotech Kenya modules (Skills #7–10, #24, #28)
- [x] 09-02-PLAN.md — Flexible pavement Kenya modules (Skills #21–23, #25) with RDM 3.4 method mapping
- [x] 09-03-PLAN.md — Rigid pavement new skill (#71) — core + Kenya module + evals
- [x] 09-04-PLAN.md — Earthworks Kenya modules (Skills #26–27) + phase evaluation and engineer review

---

#### Phase 10: Water & Structures — Drainage and Bridges

**Goal:** Engineers can design drainage and structural elements using Kenya hydrology data and EN/Eurocode loading.

**Requirements:** DRAIN-K01–K04, STRUCT-K01–K09 (13 reqs)

**Plans:** 4 plans

**Dependencies:** Phase 7 (Kenya road classification)

**Success Criteria:**
1. Agent uses Kenya IDF curves, catchment methods, and ditch dimensions from RDM 2.1–2.2 for drainage design
2. Agent applies EN/Eurocode bridge loading (replacing BS 5400) for Kenya structural design per RDM 4.2
3. Agent accounts for Kenya seismic zones in bridge substructure design
4. Agent applies Kenya bridge management system requirements for bridge inspection

Plans:
- [x] 10-01-PLAN.md — Drainage Kenya modules (Skills #29–32) with RDM 2.1/2.2 data
- [x] 10-02-PLAN.md — Structures Kenya modules — culverts and small spans (Skills #33, #34, #40) with EN/Eurocode loading
- [x] 10-03-PLAN.md — Structures Kenya modules — bridges (Skills #35–39, #41) with EN/Eurocode framework
- [x] 10-04-PLAN.md — Phase 10 evaluation and engineer review

---

#### Phase 11: Professional Practice, Asset Management & Integration

**Goal:** Engineers can apply Kenya procurement/cost/contract context and the full Kenya skills library is integrated and verified.

**Requirements:** FIDIC-K01–K05, PROC-K01–K03, COST-K01–K03, CONST-K01–K02, ASSET-K01–K04, PLAN-K01–K04, INTEG-K01–K04 (23 reqs)

**Plans:** 4 plans

**Dependencies:** All prior phases (integration requires all modules complete)

**Success Criteria:**
1. Agent applies Kenya PPRA procurement thresholds, standard bidding documents, and evaluation procedures
2. Agent uses WSCM Part 3 BoQ format and item numbering for Kenya cost estimation
3. Agent references PAM-4 for Kenya road safety audits and NEMA for environmental screening
4. Coordination meta-skill (#64) dependency graph includes Skills #67–71
5. All Kenya modules pass evaluation scenarios; README and PROJECT_SUMMARY reflect Kenya coverage

Plans:
- [x] 11-01-PLAN.md — FIDIC & procurement Kenya modules (Skills #42–49)
- [x] 11-02-PLAN.md — Cost & construction Kenya modules (Skills #50–52, #54–55)
- [x] 11-03-PLAN.md — Asset management & planning Kenya modules (Skills #56–63)
- [x] 11-04-PLAN.md — Integration: meta-skill update, YAML frontmatter, README, final eval verification

---

#### Phase 12: v1.1 Polish — Module Structure & Cross-References

**Goal:** All Kenya modules follow standard M.1-M.8 structure and all cross-skill references are complete.

**Requirements:** TMAN-08, TMAN-11 (2 reqs — gap closure)

**Gap Closure:** Closes gaps from v1.1-MILESTONE-AUDIT.md

**Plans:** 1 plan

**Dependencies:** Phase 11 (all content complete)

**Success Criteria:**
1. Skill #69 (traffic-signal-design) Kenya module restructured to standard M.1-M.8 with Defaults, Validation, Escalation, Worked Example
2. Skill #70 (traffic-control-devices) Kenya module restructured to standard M.1-M.8 with Defaults, Validation, Escalation, Worked Example
3. RSA core SKILL.md (#61) references Skills #67-70 in interfaces section
4. GEOM-K01 description corrected in REQUIREMENTS.md

- [ ] Plan 12.1: Restructure Skills #69/#70 Kenya modules + RSA cross-references + GEOM-K01 fix

---

### Planned

- **v1.2 Standards Comparison Skill** — New Skill #66: cross-country standards comparison. Takes a design parameter, pulls values from all available country modules, presents structured comparison with references. Helps engineers working across jurisdictions and policymakers benchmarking standards.
- **v1.3 Uganda General Specifications 2026** — Encode the newly launched MoWT General Specifications for Road and Bridge Works 2026
- **v1.4 Ethiopia Country Modules** — ERA Design Manual (2013) standards
- **v1.5 Python Calculation Tools** — Numerical modules for interpolation, iterative design, earthworks volumes
- **Additional country modules** — Nigeria, Ghana, Tanzania, South Africa (community contributions welcome)

---

<details>
<summary>✅ v1.0 Skills Library (Phases 0–6) — SHIPPED 2026-03-22</summary>

- [x] Phase 0: Pre-Build Setup (2/2 plans)
- [x] Phase 1: Week 1 — Data & Inputs, 12 skills (5/5 plans)
- [x] Phase 2: Week 2 — Geometric Design, 6 skills (4/4 plans)
- [x] Phase 3: Week 3 — Pavement, Earthworks & Drainage, 12 skills (4/4 plans)
- [x] Phase 4: Week 4 — Structures, 9 skills (4/4 plans)
- [x] Phase 5: Week 5 — Professional Practice & Cost, 14 skills (5/5 plans)
- [x] Phase 6: Week 6 — Asset Mgmt, Planning & Integration, 11 skills + benchmarks (7/7 plans)

Full details: `.planning/milestones/v1.0-ROADMAP.md`

</details>
