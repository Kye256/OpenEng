# NMT Facilities -- UK Module

> **Parent Skill:** #20 NMT Facilities
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 143, LTN 1/20 (Cycle Infrastructure Design), Manual for Streets
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

**IMPORTANT: This UK module is drafted from knowledge. No local DMRB NMT documents (CD 143), LTN 1/20, or Manual for Streets are available for verification. All values should be treated as indicative and require engineer review before use in design.**

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Sections Referenced | Status |
|----------|--------------|---------------------|--------|
| Designing for walking, cycling and horse riding | CD 143 | NMT on trunk roads | Current -- NOT available locally |
| Cycle Infrastructure Design | LTN 1/20 (DfT, 2020) | Cycle lane and track design | Current -- NOT available locally |
| Manual for Streets | DfT/DCLG, 2007 | Urban street design | Current -- NOT available locally |

### M.1.2 Institutional Context

NMT design in the UK is governed by multiple documents depending on the road type. Trunk roads follow DMRB (CD 143 for NMT). Urban and local authority roads follow LTN 1/20 (for cycling) and Manual for Streets (for pedestrian-friendly street design). LTN 1/20 (published July 2020) represented a significant shift in UK cycling policy, requiring higher-quality separated cycle infrastructure and discouraging shared-use paths for new schemes.

### M.1.3 Standard Philosophy

UK NMT design has evolved significantly. LTN 1/20 introduced the principle that cycle infrastructure should be designed for the "interested but concerned" demographic -- people who would cycle if they felt safe. This drives separation from motor traffic, protected junctions, and coherent networks. Manual for Streets emphasised place function alongside movement, encouraging lower vehicle speeds and pedestrian priority in residential and mixed-use areas.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Cycle Infrastructure (from knowledge -- LTN 1/20):**

| Facility Type | Minimum Width (m) | Desirable Width (m) | Notes |
|--------------|-------------------|---------------------|-------|
| One-way cycle track (protected) | 1.5 (absolute min) | 2.0 | 2.5 m for heavy flows |
| Two-way cycle track | 2.5 (absolute min) | 3.0 | 4.0 m for heavy flows |
| Shared use path | 3.0 (absolute min) | 4.5 | Generally discouraged for new schemes |
| Cycle lane (on-carriageway, advisory) | 1.5 | 2.0 | Not recommended where speed > 30 mph |
| Cycle lane (mandatory, with wand orcas) | 1.5 | 2.0 | Intermediate protection level |

**Protection from traffic (LTN 1/20 principle):** At speeds above 30 mph (48 km/h), cyclists should be physically separated from motor traffic. Separation methods include: full kerb separation (level difference), light segregation (wands, orcas, planters), or stepped track (between carriageway and footway level).

**Shared use paths:** LTN 1/20 discourages shared-use paths for new schemes. Existing shared-use paths may be acceptable where widened, but separate provision for pedestrians and cyclists is preferred.

**Crossing Types (from knowledge):**

| Type | Description | Users |
|------|-------------|-------|
| Zebra | Uncontrolled, pedestrian priority | Pedestrians only |
| Puffin | Signal-controlled with on-crossing detection | Pedestrians only |
| Toucan | Signal-controlled, shared pedestrian/cyclist | Pedestrians + cyclists |
| Pegasus | Signal-controlled with equestrian button | Pedestrians + equestrians |

**Pedestrian Facilities (from knowledge -- Manual for Streets):**

| Parameter | Value | Source |
|-----------|-------|--------|
| Minimum footway width | 2.0 m | Manual for Streets |
| Desirable footway width (busy areas) | 3.0 m+ | Manual for Streets |
| Minimum footway at pinch points | 1.5 m | Manual for Streets |
| Dropped kerb gradient | 1:12 max (8.3%) | Building Regulations / BS 8300 |

### M.2.2 Country-Specific Formulas

No UK-specific NMT formulas beyond the general crossing time calculation. Cycle infrastructure dimensions are from design standards, not formulae.

### M.2.3 Speed Management (UK Context)

UK speed management for NMT areas uses:
- **20 mph (32 km/h) zones:** Common in residential and school areas, supported by physical measures
- **Speed cushions:** Narrower than full-width humps, allow large vehicles to straddle
- **Raised tables:** Flat-topped humps at junctions and crossings (similar to MoWT plateau hump)
- **Road narrowing and chicanes:** Physical deflection to reduce speeds
- **Sinusoidal humps:** Smoother profile than circular, preferred in recent guidance

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 4 (UK): Cycleway provision
  |-- If speed limit > 30 mph --> Separated cycle track required (LTN 1/20)
  |-- If speed limit 20-30 mph --> Protected lane or light segregation
  |-- If residential 20 mph zone --> On-carriageway cycling may be acceptable
  +-- Always prefer separation over shared use

Step 5 (UK): Crossing type
  |-- Low traffic, low speed --> Zebra or uncontrolled
  |-- Moderate traffic --> Puffin (pedestrian) or Toucan (ped + cyclist)
  |-- High traffic, wide road --> Signal-controlled with pedestrian/cycle stage
  +-- Near equestrian routes --> Pegasus
```

### M.3.2 Professional Judgment (UK-Specific)

**LTN 1/20 changed the paradigm.** Before 2020, shared-use paths were commonly specified for cyclist provision. LTN 1/20 requires separate, protected cycle infrastructure for new schemes. Designs still referencing pre-2020 guidance may not meet current expectations.

**Manual for Streets vs DMRB:** On urban and local authority roads, Manual for Streets takes precedence over DMRB for street design. Manual for Streets prioritises place function and pedestrian comfort over vehicle throughput.

**Inclusive design:** The Equality Act 2010 requires consideration of disabled users. Dropped kerbs, tactile paving at crossings, and minimum clear widths are legal requirements, not optional extras.

### M.3.3 Common Errors (UK-Specific)

1. **Specifying shared-use paths for new schemes.** LTN 1/20 discourages this. Separate provision is the default.
2. **Cycle lanes too narrow.** 1.0 m cycle lanes (previously common) are below the 1.5 m absolute minimum in LTN 1/20.
3. **Ignoring LTN 1/20 for trunk road schemes.** While CD 143 is the DMRB standard, LTN 1/20 principles are increasingly expected on all roads receiving public funding.
4. **Not providing dropped kerbs at all crossing points.** This is a legal requirement for accessibility.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Cycle track width (one-way) | 2.0 m | New scheme | WARNING ASSUMED: Cycle track width 2.0 m per LTN 1/20 desirable minimum. Verify against LTN 1/20. | Knowledge-based |
| Footway width | 2.0 m | New scheme | WARNING ASSUMED: Footway width 2.0 m per Manual for Streets minimum. | Knowledge-based |
| Speed limit (residential) | 20 mph | Residential area | WARNING ASSUMED: 20 mph zone. Confirm with local authority. | Common for new residential developments |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Cycle track width (one-way) | 1.5 | 4.0 | m | LTN 1/20 (knowledge) | Reject if < 1.5 m |
| Cycle track width (two-way) | 2.5 | 5.0 | m | LTN 1/20 (knowledge) | Reject if < 2.5 m |
| Footway width | 1.5 | 6.0 | m | Manual for Streets (knowledge) | Reject if < 1.5 m (pinch point absolute min) |

### M.5.2 Standards Compliance Checks

- **Check:** Cycle infrastructure is separated from motor traffic where speed > 30 mph
- **Standard:** LTN 1/20 (knowledge)
- **Pass condition:** Protected cycle track or fully separated cycleway provided
- **Fail action:** Flag -- LTN 1/20 requires separation at speeds above 30 mph.

### M.5.3 Departures / Relaxations Process

**This UK module is drafted from knowledge. No local DMRB NMT documents available for verification. Engineer review is required before using this module for design purposes.**

Per GG 101: Departures from CD 143 requirements follow the standard DMRB departures process. LTN 1/20 is DfT guidance (not DMRB) so the departures process does not formally apply, but non-compliance with LTN 1/20 principles on publicly funded schemes requires justification.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Any NMT design using this UK module | Module is knowledge-based, not verified | NOTE -- UK NMT module is drafted from knowledge. No local CD 143, LTN 1/20, or Manual for Streets available. Engineer review required before use. |
| Shared-use path proposed for new scheme | LTN 1/20 discourages this | SENIOR REVIEW -- Shared-use path proposed. LTN 1/20 requires separate provision for pedestrians and cyclists. Justify if shared use is the only feasible option. |
| Cycle lane < 1.5 m on road > 30 mph | Below minimum width at dangerous speed | SENIOR REVIEW -- Cycle lane [X] m is below LTN 1/20 absolute minimum of 1.5 m on a road with speed limit > 30 mph. |

---

## M.7 Worked Example -- UK

### Example: Urban Road, 30 mph, Cycle Infrastructure Design

**Given:**
- Road type: Urban distributor road, 30 mph (48 km/h)
- Carriageway: 7.3 m (two lanes)
- Available corridor: 15 m total
- Context: Route identified in Local Cycling and Walking Infrastructure Plan (LCWIP)
- Pedestrian flows: moderate

**Step 1 -- Cycle infrastructure type:**
Speed limit 30 mph = borderline for separation per LTN 1/20. However, as an identified route in the LCWIP, high-quality provision is expected. Select **one-way separated cycle tracks** on both sides.

**Step 2 -- Cycle track width:**
Desirable minimum per LTN 1/20: 2.0 m one-way.

**Step 3 -- Footway width:**
Minimum per Manual for Streets: 2.0 m.

**Step 4 -- Space allocation:**
- Carriageway: 7.3 m (existing, two lanes)
- Cycle tracks: 2 x 2.0 m = 4.0 m
- Footways: 2 x 2.0 m = 4.0 m (reduced from desirable due to constraint)
- Total: 7.3 + 4.0 + 4.0 = 15.3 m

This marginally exceeds the 15 m corridor. Options:
- Reduce carriageway to 6.5 m (acceptable at 30 mph per Manual for Streets)
- Reduce cycle track to 1.5 m (absolute minimum -- not preferred)

Select: reduce carriageway to 6.5 m. Total: 6.5 + 4.0 + 4.0 = 14.5 m. Provides 0.25 m buffer on each side.

**Step 5 -- Crossing provision:**
At side roads: continuous footway and cycle track (priority over side road traffic per LTN 1/20 principles).
At main junctions: toucan crossing for combined pedestrian/cyclist signal phase.

**Result:**

| Parameter | Value | Source |
|-----------|-------|--------|
| Cycle track type | One-way separated, both sides | LTN 1/20 (knowledge) |
| Cycle track width | 2.0 m each | LTN 1/20 desirable min |
| Footway width | 2.0 m each | Manual for Streets min |
| Carriageway | 6.5 m (reduced) | Manual for Streets allows at 30 mph |
| Crossing type | Toucan at main junctions | Combined ped/cyclist |
| Module confidence | Knowledge-based -- engineer review required | |

---

## M.8 References

1. Department for Transport, *LTN 1/20 Cycle Infrastructure Design*, July 2020 -- referenced but NOT available locally.
2. Department for Transport / DCLG, *Manual for Streets*, 2007 -- referenced but NOT available locally.
3. National Highways, *CD 143 Designing for walking, cycling and horse riding* -- referenced but NOT available locally.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- knowledge-based module. LTN 1/20, Manual for Streets, and CD 143 content from knowledge only. No local documents available for verification. |
