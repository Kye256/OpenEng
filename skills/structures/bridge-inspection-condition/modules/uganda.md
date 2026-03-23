# Bridge Inspection & Condition -- Uganda Module

> **Parent Skill:** #41 Bridge Inspection & Condition
> **Country/Jurisdiction:** Uganda
> **Standards:** Practice-based knowledge; UNRA bridge management context; NBI rating system (international)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| NBI Condition Rating (FHWA) | Current | 0-9 rating scale for deck, superstructure, substructure | Adopted internationally |
| UNRA Bridge Management System | -- | Bridge inventory and condition database | Operational but details not fully documented |
| Practice-based inspection methodology | -- | Field inspection checklists and defect classification | Standard engineering practice |

### M.1.2 Institutional Context

UNRA maintains a bridge inventory for the national road network. Condition rating system details are not well-documented in publicly available Ugandan standards (this is a knowledge gap identified in RESEARCH.md). The NBI rating system (0-9 scale) is used as the primary condition rating methodology as it is internationally recognised and widely applied in East Africa.

District and community road bridges are managed by local governments with varying levels of inspection capacity. Many bridges on lower-class roads have never received a formal inspection.

### M.1.3 Standard Philosophy

This module uses the NBI rating system as the primary assessment tool, supplemented by Uganda-specific context on common defect types, inspection challenges, and maintenance priorities. The approach is practice-based: inspection checklists and defect classification follow standard engineering methodology adapted for Ugandan conditions (ageing infrastructure, tropical climate, resource constraints).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Inspection Checklist -- Bridge Elements:**

| Element | Inspection Points | Common Defects in Uganda |
|---------|-------------------|------------------------|
| Deck slab | Cracking (pattern, width), spalling, delamination, reinforcement exposure | Carbonation-induced corrosion, overloading damage, surface wear |
| Surfacing | Condition, thickness remaining, potholing, rutting | Potholing over joints, loss of surfacing exposing deck |
| Drainage | Scuppers/outlets clear, ponding, leak staining on soffit | Blocked scuppers (debris), ponding causing accelerated deterioration |
| Expansion joints | Seal condition, debris in gap, differential movement | Failed seals, debris-filled joints, corrosion of metal components |
| Beams/girders | Cracking (flexural, shear), spalling, reinforcement corrosion, deflection | Flexural cracking at midspan, shear cracking near supports, corrosion |
| Bearings | Movement, condition, seating, corrosion | Seized bearings (most common), corroded steel bearings, displacement |
| Abutments | Cracking, rotation, settlement, scour at foundations | Settlement, scour undermining, retaining wall cracking |
| Piers | Cracking, tilting, scour at base, collision damage | Vehicle collision damage, scour undermining, reinforcement corrosion |
| Waterway | Scour depth, debris, bank erosion, channel migration | Seasonal flood scour (most critical), debris accumulation, bank erosion |
| Approach | Settlement, guardrail condition, embankment stability | Approach slab settlement ("bump at the bridge"), guardrail damage |

**NBI Rating Scale (reproduced for field use):**

| Rating | Condition | Key Indicators |
|--------|-----------|----------------|
| 9 | Excellent | As-built condition, no defects |
| 8 | Very Good | No defects noted |
| 7 | Good | Minor problems, no structural concern |
| 6 | Satisfactory | Minor deterioration visible |
| 5 | Fair | Sound but showing deterioration -- cracking, minor spalling, minor scour |
| 4 | Poor | Advanced deterioration -- significant section loss, spalling, or scour |
| 3 | Serious | Primary structural elements seriously affected. Local failures possible |
| 2 | Critical | May need closure unless monitored |
| 1 | Imminent Failure | Major deterioration. May be closed |
| 0 | Failed | Out of service |

**Defect Severity Levels:**

| Level | Description | Indicator |
|-------|-------------|-----------|
| Low | Cosmetic, no structural concern | Hairline cracks < 0.1 mm, minor surface staining, minor weathering |
| Medium | Progressive, will worsen without intervention | Cracks 0.1-0.3 mm, isolated spalling, bearing stiffness, minor scour |
| High | Structural concern, investigation required | Cracks > 0.3 mm (structural), extensive spalling with rebar exposure, deep scour, section loss |

### M.2.2 Country-Specific Formulas

Not applicable -- inspection is observation-based, not formula-based.

### M.2.3 Classification System

**Maintenance Priority for Uganda:**

| Priority | NBI Trigger | Action Required | Typical Timeframe |
|----------|-------------|-----------------|-------------------|
| Urgent | Any component <= 3 | Emergency assessment, possible closure | Immediate |
| Important | Any component = 4 | Structural assessment, repair design | 1-2 years |
| Routine | All components 5-6 | Include in maintenance programme | Next budget cycle |
| Monitor | All components >= 7 | Record, re-inspect at schedule | Annual |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

At Step 2 (field inspection), Uganda-specific concerns include:
- **Scour:** Most critical issue for Ugandan bridges. Many rivers have seasonal flooding with significant scour potential. Always inspect waterway condition carefully, especially after flood season.
- **Overloading damage:** East African trucks frequently exceed legal axle load limits (Skill #4). Look for overloading-related defects: excessive flexural cracking, shear cracking near supports, bearing distress, approach slab damage.
- **Carbonation-induced corrosion:** In Uganda's tropical climate, concrete carbonation progresses relatively quickly. Look for rust staining, delamination, and spalling as indicators of reinforcement corrosion.

At Step 4 (condition rating), use NBI system. UNRA condition rating system details are not fully documented; NBI provides a standardised, internationally comparable framework.

### M.3.2 Professional Judgment (Country-Specific)

**Ageing infrastructure:** Many bridges in Uganda date from the 1960s-1980s post-independence construction era. Common issues include:
- Inadequate concrete cover (as-built cover often less than current standards)
- Lower concrete strength than modern standards
- Lack of maintenance history (records may not exist)
- Unknown original design loading (may have been designed for lighter traffic)

**Scour is the #1 concern.** Uganda's seasonal flooding regime means that bridges on rivers with alluvial beds are subject to severe scour. Post-flood inspections should be standard practice, particularly for bridges on sand-bed rivers.

**Resource-constrained maintenance.** Uganda has limited bridge maintenance budgets. Priority ranking must be realistic -- "Urgent" must truly mean safety-critical to ensure limited resources are directed effectively.

**Access challenges for principal inspections.** Close-access equipment (underbridge units, platforms) may not be available, especially on district and community road bridges. Binoculars and photography from accessible positions may need to substitute for close access on routine inspections.

### M.3.3 Common Errors (Country-Specific)

1. **Not inspecting scour after floods.** Post-flood inspection is essential, particularly for bridges on sand-bed rivers. Scour that is not visible from the deck can be catastrophic.
2. **Rating too high (optimistic bias).** In resource-constrained environments, there is pressure to rate bridges higher to avoid triggering costly repairs. Rate honestly and conservatively.
3. **Not recording defect progression.** Without progression data, it is impossible to distinguish stable defects from actively deteriorating ones. Always compare with previous inspection records (if available).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Rating system | NBI (0-9) | All bridges | No flag | International standard adopted for Uganda |
| Inspection frequency (routine) | Annual | National road bridges | No flag | Standard practice |
| Inspection frequency (principal) | 6 years | National road bridges | No flag | Standard practice |
| Crack width threshold (structural) | 0.3 mm | RC bridges | No flag | Common threshold |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| NBI rating | 0 | 9 | -- | NBI system | Reject if outside 0-9 |
| Defect severity | Low | High | category | Practice | -- |

### M.5.2 Standards Compliance Checks

- **Check:** Scour condition assessed and documented
- **Standard:** Engineering practice
- **Pass condition:** Waterway section of inspection completed
- **Fail action:** Flag -- scour assessment missing, cannot assign substructure rating

- **Check:** Photo documentation adequate
- **Standard:** Engineering practice
- **Pass condition:** Minimum photo set (approaches, elevation, elements, defects) completed
- **Fail action:** Flag -- insufficient photo documentation

### M.5.3 Departures / Relaxations Process

No formal departures process for inspection in Uganda. All inspection findings should be documented honestly. If access limitations prevent full inspection, document what was not inspected and recommend a special inspection with appropriate access.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| NBI substructure <= 4 with scour evidence | Foundation at risk | SENIOR REVIEW -- Substructure rated [X] with scour evidence. Specialist scour and structural assessment required. Consider traffic restriction. |
| Overloading damage evident | Structural capacity may be exceeded | SENIOR REVIEW -- Defects consistent with overloading (flexural cracking, shear distress). Load rating assessment recommended. Consider weight restriction. |
| No previous inspection records | Cannot assess progression | SENIOR REVIEW -- No previous inspection records for this bridge. Establish baseline with principal inspection. |
| Bearing failure observed | Support condition compromised | SENIOR REVIEW -- Bearing failure at [location]. Structural analysis required. |

---

## M.7 Worked Example -- Uganda

### Example: Routine Inspection of 30-Year RC T-Beam Bridge

**Source:** Practice-based inspection methodology

**Given:**
- 30-year-old RC T-beam bridge, 25 m span
- National road (UNRA)
- Routine annual inspection
- No previous inspection records available (knowledge gap)

**Inspection Findings:**

**Deck:**
- Longitudinal cracking in deck slab: 2 mm width, affecting approximately 30% of deck area
- Surfacing: fair condition with some potholing over expansion joints
- Drainage: 2 of 4 scuppers blocked with debris
- Expansion joints: sealant missing, debris accumulated

**Superstructure:**
- T-beams: flexural cracking at midspan of 3 beams (0.3-0.5 mm width), some spalling at beam soffits with exposed reinforcement (minor corrosion visible)
- Bearings: both bearings at left abutment appear seized (no movement visible), corrosion on steel plates

**Substructure:**
- Left abutment: minor cracking (< 0.2 mm), no rotation
- Right abutment: minor scour at base, 0.5 m depth scour hole, foundations not exposed
- Piers: N/A (single span)

**Waterway:**
- Minor scour at right abutment (0.5 m)
- No debris accumulation
- Channel aligned correctly, no migration

**Condition Ratings:**

**Deck: NBI = 5 (Fair)**
- Justification: Primary structural element (slab) is sound but showing significant cracking (2 mm, 30%). Drainage partially blocked. Cracking alone would suggest 5-6, but extent (30%) pulls toward 5.

**Superstructure: NBI = 5 (Fair)**
- Justification: Beams are sound but showing flexural cracking (0.3-0.5 mm) and isolated spalling with minor corrosion. Bearings seized (functional defect). No structural distress requiring immediate action, but deterioration is progressing.

**Substructure: NBI = 6 (Satisfactory)**
- Justification: Abutments in fair condition with only minor cracking. Scour at right abutment is minor (0.5 m, foundations not exposed). No structural concern currently.

**Overall: NBI = 5 (Fair)** -- governed by deck and superstructure

**Maintenance Priority: Routine**
- All components >= 5, no urgent safety concerns
- Include in next maintenance cycle:
  1. Clear blocked scuppers
  2. Replace expansion joint sealant
  3. Monitor deck cracking progression
  4. Monitor bearing condition -- if seizure worsens, programme bearing replacement
  5. Monitor scour at right abutment -- measure depth at next routine inspection
  6. Establish baseline photo record for future comparison

**Escalation:** No urgent flags. Recommend principal inspection within 2 years to establish detailed baseline (no previous records exist).

---

## M.8 References

1. FHWA Recording and Coding Guide for the Structure Inventory and Appraisal of the Nation's Bridges (NBI Condition Rating definitions).
2. UNRA bridge inventory and management system (details not publicly documented).
3. Practice-based bridge inspection methodology for East African bridge stock.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with NBI-based inspection methodology for Uganda context |
