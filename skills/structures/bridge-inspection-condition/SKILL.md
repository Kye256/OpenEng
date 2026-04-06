---
name: "bridge-inspection-condition"
description: "Use when performing bridge field inspection, assigning condition ratings, or determining maintenance priorities. Standalone skill with complete inspection methodology and condition rating systems (BCI, NBI, sufficiency rating). Does not depend on Skill #56 (Road Condition Assessment) -- includes its own inspection framework. Outputs maintenance priorities for bridge asset management."
---

# Bridge Inspection & Condition

> **Skill ID:** 41
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Perform a complete bridge inspection workflow: plan and execute a field inspection, classify defects by type and severity, assign condition ratings using established systems (NBI 0-9 scale, Bridge Condition Indicator), and determine maintenance priorities. This skill is standalone -- it includes its own inspection methodology and condition rating framework independently of Skill #56 (Road Condition Assessment, Phase 6). It produces maintenance priority rankings for bridge asset management.

## When to Use This Skill

- **Use when:** Planning or performing a bridge field inspection, recording and classifying defects, assigning condition ratings, or determining maintenance priorities. Applies to all bridge types (concrete, steel, timber, masonry) at any stage of their service life.
- **Do not use when:** Designing new bridges (Skills #35-40). Not for detailed structural analysis of defective bridges (specialist structural engineer required). Not for road pavement condition assessment (Skill #56, Phase 6).
- **Prerequisite skills:** None -- this skill is standalone. Forward reference to Skill #56 (Road Condition Assessment, Phase 6) for integrated asset management, but fully functional independently.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Inspection Types:**

- **Routine (Annual Visual):** Visual inspection from ground level and the bridge deck. Walk the bridge, look at each element, note visible defects. Typically performed annually by trained inspectors (not necessarily engineers). Records overall condition and identifies anything requiring closer investigation.
- **Principal (Detailed, 6-yearly):** Detailed close-access inspection of all elements, including underwater elements where applicable. Uses platforms, rope access, boats, or underbridge units to access all parts of the structure. Performed by experienced bridge engineers. Measures defect dimensions and progression.
- **Special (Event-triggered):** Triggered by specific events -- flooding (scour inspection), vehicle collision, seismic event, discovery of unexpected deterioration, or when a principal inspection identifies concerns requiring specialist investigation.

**Bridge Elements for Inspection:**

| Element Group | Elements |
|--------------|----------|
| Deck | Deck slab, surfacing, drainage, expansion joints, kerbs/parapets |
| Superstructure | Beams/girders, cross-beams/diaphragms, bearings |
| Substructure | Abutments, piers, foundations (visible), pier caps |
| Waterway | Scour condition, bank erosion, debris accumulation, channel alignment |
| Approach | Approach slabs, guardrails, embankment condition, signage |

**Defect Classification:**

Defects are classified by:
- **Type:** Structural (cracking, spalling, reinforcement corrosion, section loss, settlement, rotation) or Functional (drainage failure, surfacing deterioration, joint failure, bearing malfunction, parapet damage)
- **Severity:** Low (cosmetic, no structural concern), Medium (progressive, may affect structural capacity if not addressed), High (structural concern, immediate investigation or restriction required)
- **Extent:** Percentage of the element area affected (e.g., cracking affecting 30% of deck soffit area)
- **Location:** Described precisely for tracking over time (e.g., "longitudinal crack, 2 mm width, midspan of beam 3, from chainage 12m to 18m")

**Condition Rating Systems:**

1. **NBI Condition Rating (0-9 scale):** Used in the USA and adopted internationally. Each major component (deck, superstructure, substructure) rated independently on a 0-9 scale:

| Rating | Condition | Description |
|--------|-----------|-------------|
| 9 | Excellent | No problems noted |
| 8 | Very Good | No problems noted |
| 7 | Good | Some minor problems |
| 6 | Satisfactory | Structural elements show some minor deterioration |
| 5 | Fair | All primary structural elements are sound but may have minor section loss, cracking, spalling, or scour |
| 4 | Poor | Advanced section loss, deterioration, spalling, or scour |
| 3 | Serious | Loss of section, deterioration, spalling, or scour seriously affect primary structural components. Local failures possible. Fatigue cracks may be present. |
| 2 | Critical | Advanced deterioration. May need to close bridge unless closely monitored. |
| 1 | Imminent Failure | Major deterioration or section loss. Bridge may be closed to traffic but corrective action may put it back in light service. |
| 0 | Failed | Out of service, beyond corrective action |

2. **Bridge Condition Indicator (BCI):** Element-based system used in the UK (DMRB CS 465). Each element is assessed for severity (1-5) and extent of each defect. The element importance factor weights the contribution to the overall index. BCIave (average) and BCIcrit (worst element) are both reported. BCI ranges from 0 to 100 (100 = perfect condition).

3. **Sufficiency Rating (0-100):** Composite score combining structural adequacy (55%), serviceability/functional obsolescence (30%), and essentiality for public use (15%). Used in the USA for bridge funding prioritisation.

**Maintenance Priority:**

| Priority | Criteria | Action |
|----------|----------|--------|
| Urgent | Safety risk to users or public; NBI <= 3 for any component | Immediate restriction or closure; emergency repair |
| Important | Progressive deterioration that will worsen if not addressed; NBI = 4 | Programme repair within 1-2 years |
| Routine | Minor defects, cosmetic issues; NBI = 5-6 | Include in next maintenance cycle |
| Monitor | Watch list -- defects noted but not yet requiring action; NBI >= 7 | Re-inspect at next routine inspection |

**Photo Documentation:**

Systematic photography is essential for bridge inspection records. Minimum photo set:
1. Approach views (both directions)
2. General elevation (upstream and downstream)
3. Each element (deck, beams, piers, abutments, bearings)
4. Each defect (with scale reference -- ruler or known object for size)
5. Waterway condition (channel, scour, debris)

### 1.2 Universal Formulas

No formulas -- bridge inspection is an assessment skill based on observation, classification, and rating.

### 1.3 Figures & Diagrams

**NBI rating scale interpretation:** The NBI scale is non-linear in terms of structural significance. The critical transitions are:
- Rating 5 to 4: transition from "fair" to "poor" -- triggers "structurally deficient" classification
- Rating 4 to 3: transition to "serious" -- potential local failures, likely load restrictions
- Rating 2: "critical" -- potential closure

**BCI scoring:** BCI is calculated as: BCI = 100 - sum of (severity_score x extent x element_importance_factor) across all defects. A BCI < 75 indicates poor condition. A BCI < 40 indicates very poor condition requiring urgent action.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Pre-inspection planning
  |-- Review bridge file (previous inspection reports, design drawings, maintenance records)
  |-- Determine inspection type (routine, principal, or special)
  |-- Prepare inspection equipment and access requirements
  +-- Load country module for rating system

Step 2: Field inspection -- systematic element-by-element
  |-- Deck elements (slab, surfacing, drainage, joints, parapets)
  |-- Superstructure elements (beams, diaphragms, bearings)
  |-- Substructure elements (abutments, piers, foundations, pier caps)
  |-- Waterway elements (scour, bank erosion, debris, channel)
  +-- Approach elements (approach slabs, guardrails, embankment, signage)

Step 3: Defect recording
  |-- For each defect: type, severity, extent, location
  |-- Photo documentation with scale reference
  +-- Note progression since last inspection (if records available)

Step 4: Condition rating
  --> See country module for applicable rating system
  |-- NBI: rate deck, superstructure, substructure independently (0-9)
  +-- BCI: rate each element for severity, extent, importance

Step 5: Maintenance priority assignment
  |-- Urgent: safety risk, NBI <= 3
  |-- Important: progressive deterioration, NBI = 4
  |-- Routine: minor defects, NBI = 5-6
  +-- Monitor: no action needed, NBI >= 7

Step 6: Report preparation
  --> See Section 8 for output format

Step 7: Run validation (Section 4 + country module Section M.5)
```

### 2.2 Professional Judgment (Universal)

**Scour is the #1 cause of bridge failure.** Always inspect the waterway condition carefully, especially during and after floods. Look for exposed foundations, scour holes at piers and abutments, debris accumulation, and bank erosion.

**Hidden defects are the most dangerous.** Reinforcement corrosion under intact-looking concrete, fatigue cracks in steel hidden by paint, and scour under water are all hidden hazards. If there are signs of hidden deterioration (rust staining, hollow-sounding concrete, unusual deflections), recommend specialist investigation.

**Do not confuse structural deficiency with functional obsolescence.** Structural deficiency means the bridge has deteriorated (low NBI rating). Functional obsolescence means the bridge does not meet current geometric standards (too narrow, low clearance, poor alignment). Both affect serviceability but are different issues with different solutions.

**Condition rating must be consistent.** Use the rating descriptions exactly. A common error is rating too high ("optimistic bias") -- if in doubt, rate conservatively (lower).

### 2.3 Common Errors

1. **Rating the overall bridge instead of individual components.** NBI requires separate ratings for deck, superstructure, and substructure. The overall bridge condition is the lowest of the three.
2. **Ignoring scour at substructure.** Scour damage to foundations may not be visible from the bridge deck. Underwater inspection or probing may be needed.
3. **Not recording defect progression.** The rate of change is as important as the current condition. A defect that has worsened significantly since the last inspection needs urgent attention even if the current severity is moderate.
4. **Poor photo documentation.** Photos without scale references, without labels, or taken from too far away are useless for engineering assessment. Every defect photo should include a scale reference.
5. **Confusing structural cracking with shrinkage cracking.** Not all cracking is structural. Shrinkage cracks are typically fine (< 0.1 mm), random pattern, and not structural concerns. Structural cracks follow load paths (longitudinal in beams, diagonal near supports) and may be wider.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Inspection type | Routine (visual) | Not specified | No flag | Annual routine is default |
| Rating system | NBI (0-9) | No country module or country does not specify | ASSUMED: Using NBI rating system (international standard) | Widely used default |
| Crack width threshold (structural concern) | 0.3 mm | Not specified | No flag | Common threshold for structural vs non-structural cracking |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always rate conservatively** -- if in doubt between two ratings, use the lower one.
3. **Always include scour assessment** in substructure rating.
4. **Photo documentation is mandatory**, not optional.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| NBI rating (each component) | 0 | 9 | -- | Reject if outside 0-9 |
| BCI score | 0 | 100 | -- | Reject if outside 0-100 |
| Crack width | 0 | 50 | mm | Warn if > 5 mm (severe) |
| Spalling area | 0 | 100 | % | Warn if > 30% (significant) |

### 4.2 Consistency Checks

- **NBI vs priority:** If NBI <= 3, priority must be Urgent. If NBI = 4, priority must be Important.
- **Scour rating vs substructure rating:** If scour is observed, substructure rating should be <= 6 (depends on severity).
- **Defect severity vs rating:** If high-severity defects are recorded, the component rating should be <= 5.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| NBI rating <= 3 for any component | Serious structural concern | SENIOR REVIEW -- NBI rating [X] for [component]. Immediate assessment by qualified structural engineer required. Consider traffic restriction or closure. |
| Active scour observed (exposed foundations) | Bridge safety at risk | SENIOR REVIEW -- Active scour observed with [description]. Emergency scour assessment required. Consider temporary closure during floods. |
| Significant crack progression | Deterioration accelerating | SENIOR REVIEW -- Crack [description] has progressed from [previous] to [current] since last inspection. Specialist investigation recommended. |
| Bearing failure | Loss of support condition | SENIOR REVIEW -- Bearing [location] shows [failure mode]. Structural analysis required to assess load redistribution. |
| No previous inspection records | Cannot assess progression | SENIOR REVIEW -- No previous inspection records available. Establish baseline with principal inspection. |
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using NBI rating system as default. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible.
- **Country module escalations** merged with universal escalations.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module and rating system to load |
| Bridge ID/name | text | -- | Yes | User | Bridge identification for records |
| Inspection type | category | -- | Yes | User | Routine, Principal, or Special |
| Previous inspection reports | documents | -- | Desirable | Records | For progression assessment |
| Bridge design drawings | documents | -- | Desirable | Records | For element identification |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| NBI ratings (deck, superstructure, substructure) | numbers | 0-9 | User, Asset management | Condition ratings for each major component |
| BCI scores (BCIave, BCIcrit) | numbers | 0-100 | User (UK) | Bridge Condition Indicator scores |
| Defect inventory | table | -- | User | List of defects with type, severity, extent, location |
| Maintenance priority | category | -- | User, Asset management | Urgent / Important / Routine / Monitor |
| Photo documentation plan | list | -- | User | Required photos for the inspection record |
| Maintenance recommendations | text | -- | User | Specific repair/maintenance actions recommended |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda inspection context with NBI rating system | Markdown |
| `modules/uk.md` | UK BCI-based inspection system (CS 465) | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load the corresponding country module and rating system.

### Step 2: Pre-Inspection Planning
Review bridge file (previous reports, drawings, maintenance records). Determine inspection type. Prepare equipment and access plan.

### Step 3: Field Inspection
Perform systematic element-by-element inspection per Section 2.1 Step 2. Record all defects.

### Step 4: Defect Recording
For each defect: record type, severity, extent, and precise location. Photograph each defect with scale reference.

### Step 5: Condition Rating
Apply the country module's rating system. Assign NBI ratings (0-9) for deck, superstructure, and substructure. Or assign BCI scores per country module.

### Step 6: Maintenance Priority
Based on condition ratings, assign maintenance priority per Section 1.1 priority table.

### Step 7: Report Preparation
Format per Section 8 output template.

### Step 8: Run Validation
All universal + country-specific checks.

---

## 8. Output Format

```
============================================================
BRIDGE INSPECTION REPORT -- [Bridge Name/ID]
Country/Jurisdiction: [country]
Inspection Type: [Routine / Principal / Special]
Inspector: [name]
Date: [YYYY-MM-DD]
============================================================

BRIDGE IDENTIFICATION
---------------------
Bridge ID:                    [X]
Road:                         [road name/number]
Location:                     [chainage or coordinates]
Structure type:               [RC slab / RC T-beam / Steel / etc.]
Span:                         [X] m
Year built:                   [YYYY]
Previous inspection:          [date or "None on record"]

ELEMENT-BY-ELEMENT INSPECTION
-----------------------------
DECK
  Deck slab:                  [condition description]
  Surfacing:                  [condition description]
  Drainage:                   [condition description]
  Expansion joints:           [condition description]
  Parapets/kerbs:             [condition description]

SUPERSTRUCTURE
  Beams/girders:              [condition description]
  Diaphragms:                 [condition description]
  Bearings:                   [condition description]

SUBSTRUCTURE
  Abutments:                  [condition description]
  Piers:                      [condition description]
  Foundations (visible):      [condition description]

WATERWAY
  Scour condition:            [description]
  Bank erosion:               [description]
  Debris accumulation:        [description]
  Channel alignment:          [description]

APPROACH
  Approach slabs:             [condition description]
  Guardrails:                 [condition description]
  Embankment:                 [condition description]

DEFECT INVENTORY
----------------
No.  Element         Defect Type       Severity  Extent  Location
---  -------         -----------       --------  ------  --------
1    [element]       [type]            [L/M/H]   [%]     [location]
2    ...

CONDITION RATINGS
-----------------
NBI Ratings:
  Deck:                       [0-9] -- [description]
  Superstructure:             [0-9] -- [description]
  Substructure:               [0-9] -- [description]
  Overall:                    [lowest of three]

[Or BCI Scores -- per country module]

MAINTENANCE PRIORITY
--------------------
Priority:                     [Urgent / Important / Routine / Monitor]
Justification:                [reason]

RECOMMENDED ACTIONS
-------------------
1. [Action with timeline]
2. [Action with timeline]

PHOTO DOCUMENTATION
-------------------
[List of photos taken with descriptions]

ESCALATION FLAGS
----------------
[Flags or "None"]

============================================================
INSPECTION REPORT -- FOR PROFESSIONAL REVIEW
This inspection is for maintenance planning purposes.
Specialist structural assessment required for any Urgent findings.
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed structural analysis of defective bridges (load rating, remaining capacity assessment). Underwater inspection methodology (specialist diving equipment). Non-destructive testing (NDT) interpretation (half-cell potential, carbonation depth, chloride profiling). Load testing procedures. Fatigue assessment of steel bridges.
- **Simplifications:** Uses visual inspection methods -- no NDT or instrumentation interpretation. Condition rating is based on observed defects only -- hidden defects require specialist investigation.
- **Standalone:** This skill operates independently of Skill #56 (Road Condition Assessment, Phase 6). When Skill #56 is available, bridge condition data from this skill can be integrated into a comprehensive road asset management system. However, this skill is fully functional without Skill #56.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with NBI/BCI condition rating, inspection methodology, and standalone asset management framework |
