---
name: "road-safety-audit"
description: "Use when conducting a road safety audit at any project stage (feasibility, preliminary design, detailed design, pre-opening, existing road). Provides stage-specific checklists with East African-specific hazards including pedestrians on carriageway, boda-boda conflicts, animal crossings, and unmarked speed transitions. Follows MoWT Vol 7 procedures. Compose with Skill #19 (Intersection Design) for junction safety and Skill #20 (NMT Facilities) for pedestrian/cyclist provisions."
---

# Road Safety Audit

> **Skill ID:** 61
> **Domain:** Planning & Safety
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda, Kenya

## Purpose

Guide the conduct of a road safety audit (RSA) at any project stage -- from feasibility through to existing road inspection. This skill provides stage-specific checklists, finding classification (severity rating), and mitigation recommendations. It addresses East African-specific hazards that are not adequately covered in international RSA manuals, including pedestrians walking on the carriageway (absence of footpaths), boda-boda (motorcycle taxi) conflicts at junctions, livestock crossings, and unmarked speed transitions between rural and trading centre environments.

## When to Use This Skill

- **Use when:** Conducting a road safety audit at any stage of a road project, or performing a road safety inspection of an existing road.
- **Do not use when:** Conducting a traffic impact assessment (different purpose and methodology). Not for accident investigation or forensic analysis of a specific crash.
- **Prerequisite skills:** None required, but audit findings will reference: Skill #15 (Vertical Alignment) and Skill #16 (Sight Distance) for visibility issues, Skill #19 (Intersection Design) for junction safety, Skill #20 (NMT Facilities) for pedestrian/cyclist provisions, Skill #17 (Cross-Section Design) for road width and shoulder issues.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Road Safety Audit (RSA):**

A formal, systematic process for checking the safety of a road scheme by an independent, qualified team. The purpose is to identify potential safety problems before they result in crashes. An RSA is proactive (preventive), not reactive (post-crash).

**RSA Stages:**

1. **Feasibility Stage:** Review of route options and design concepts. Focus: route selection safety implications, major geometric constraints, general road environment hazards.
2. **Preliminary Design Stage:** Review of preliminary design drawings and cross-sections. Focus: alignment, cross-section, junction layout, speed environment, access management.
3. **Detailed Design Stage:** Review of detailed design drawings, specifications, and traffic management plans. Focus: all design details including signs, markings, drainage, roadside furniture, NMT provisions.
4. **Pre-Opening Stage:** Inspection of completed construction before opening to traffic. Focus: as-built vs design, visibility under actual conditions, sign/marking visibility, night-time inspection.
5. **Existing Road Safety Inspection:** Systematic review of an existing road. Focus: crash history analysis, site inspection, identification of safety deficiencies, prioritised remedial measures.

**Audit Team:**

- **Independence:** The audit team must be independent from the design team. This is a fundamental principle -- auditors should not be auditing their own design.
- **Minimum composition:** At least 2 members, including one road safety specialist or experienced road design engineer with RSA training.
- **Larger teams:** For complex projects, 3-5 members with specialisms in road design, traffic engineering, road safety, and NMT/accessibility.

**Finding Classification:**

Each audit finding is classified by severity:
- **Observation:** Minor issue that the design team should be aware of. No immediate safety risk.
- **Recommendation:** Safety concern that should be addressed. Moderate risk if not addressed.
- **Serious Concern:** Significant safety risk that must be addressed before proceeding. May require design revision.

**East African-Specific Hazards:**

Standard international RSA checklists (AUSTROADS, TRL, FHWA) do not adequately cover hazards specific to East African road environments:

1. **Pedestrians on carriageway:** In the absence of footpaths or shoulders, pedestrians walk on the carriageway. This is the single largest safety hazard on rural roads in East Africa.
2. **Boda-boda conflicts:** Motorcycle taxis operate at low speeds, carry passengers and goods, stop unpredictably, and congregate at junctions and trading centres. Boda-boda stages (waiting areas) create conflict points.
3. **Animal crossings:** Livestock (cattle, goats) cross roads in rural areas, particularly near water sources and grazing areas. Herds can block the carriageway.
4. **Unmarked speed transitions:** The transition from rural road (80-100 km/h design speed) to trading centre (30-50 km/h appropriate speed) is often unmarked or poorly managed. Speed differential causes crashes.
5. **NMT mixing with motorized traffic:** Cyclists, handcarts, wheelbarrows, and pedestrians share the carriageway with motorized traffic, particularly where no separated facilities exist.
6. **Inadequate sight distance at market areas:** Market stalls and roadside vendors encroach on the road reservation, reducing sight distance at bends and junctions.
7. **Night-time hazards:** Limited street lighting, unlit vehicles, dark-clothed pedestrians, and animals on the road create severe night-time safety risks.

**RSA Checklist Structure:**

Checklists are organized by road element:
- Alignment (horizontal and vertical)
- Cross-section (width, shoulders, slopes)
- Intersections and junctions
- Roadside hazards (poles, trees, ditches)
- Drainage (open ditches adjacent to carriageway)
- Signs and markings
- Lighting
- NMT facilities
- Speed management
- Access management

Each item is rated: Satisfactory / Needs Attention / Serious Concern.

**Checklist extraction:** RSA checklist items are extracted to `tables/rsa_checklist_items.json` (more than 10 items per stage).

### 1.2 Universal Principles

No engineering formulas apply. The key relationships are:

**Stage-Checklist Mapping:**
```
Project stage --> Determines which checklist to apply
Earlier stage --> Broader, more strategic checks
Later stage --> More detailed, more specific checks
```

**Severity-Response Mapping:**
```
Observation --> Note for design team awareness
Recommendation --> Address in design revision if practicable
Serious Concern --> Must be resolved before proceeding to next stage
```

### 1.3 Figures & Diagrams

No figures required. Checklist items are defined in JSON tables. The decision tree in Section 2.1 encodes the audit process flow.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine audit stage
  |-- Feasibility study in progress --> Feasibility stage checklist
  |-- Preliminary design complete --> Preliminary design checklist
  |-- Detailed design complete --> Detailed design checklist
  |-- Construction complete, not yet open --> Pre-opening checklist
  +-- Existing road in operation --> Existing road inspection checklist

Step 2: Select appropriate checklist
  --> Load checklist from tables/rsa_checklist_items.json
  --> Filter by audit stage
  --> Add East African-specific hazard items if in Sub-Saharan Africa context

Step 3: Apply checklist systematically
  |-- Design-stage audits --> Review drawings, specifications, and design reports
  |-- Pre-opening audit --> Physical site inspection (day and night)
  +-- Existing road inspection --> Site visit + crash data review

Step 4: For each finding, classify severity
  |-- No safety concern --> Mark "Satisfactory"
  |-- Minor issue, awareness needed --> "Observation"
  |-- Moderate risk, should address --> "Recommendation"
  +-- Significant risk, must address --> "Serious Concern"

Step 5: For each Recommendation or Serious Concern, propose mitigation
  --> Reference relevant design skills for mitigation measures:
      Sight distance: Skill #15/#16
      Intersection design: Skill #19
      NMT facilities: Skill #20
      Cross-section: Skill #17
      Speed management: Skill #19 (junction type) + country module
  --> Classify mitigation cost: low (signs/markings), medium (speed humps,
      guardrails), high (realignment, footpath construction)

Step 6: Compile audit report
  --> List all findings by category and severity
  --> Prioritise: Serious Concerns first, then Recommendations, then Observations
  --> Include recommended mitigations with cost classification
  --> Note any findings requiring design revision before proceeding
```

### 2.2 Professional Judgment (Universal)

**RSA is about identifying risks, not prescribing solutions.** The auditor identifies what is unsafe and why. The design team decides how to address it, considering the auditor's recommendations alongside cost, programme, and other constraints. The auditor's role is to make the risk visible.

**Context matters more than standards compliance.** A design may comply with all geometric standards but still be unsafe in context. For example, a road with adequate sight distance by standards may have inadequate sight distance in practice if market stalls reduce the actual sight triangle. The auditor must assess actual conditions, not just drawing compliance.

**Night-time inspection is essential for pre-opening and existing road audits.** Many safety hazards (inadequate delineation, poor sign retroreflectivity, unlit pedestrians) are only apparent at night. A daytime-only inspection misses critical hazards.

**The auditor must consider all road users.** RSA is not only about motorized vehicles. Pedestrians, cyclists, boda-bodas, and handcart operators are all road users whose safety must be assessed. In East Africa, these non-motorized users are often the most vulnerable.

### 2.3 Common Errors

1. **Applying international checklists without local adaptation.** AUSTROADS or TRL checklists do not include boda-boda hazards, animal crossings, or the specific pedestrian-on-carriageway problem. Local hazards must be added.
2. **Design team auditing their own design.** This defeats the purpose of an RSA. Independence is fundamental.
3. **Reporting only observations, not severity.** All findings must be classified by severity. A list of "issues" without severity classification does not enable prioritisation.
4. **Ignoring NMT safety.** In many East African road designs, NMT facilities are omitted or minimal. The auditor must assess NMT safety even if facilities are not designed -- the absence of facilities is itself a safety concern.
5. **Not recommending specific mitigations.** "Speed management needed" is not an actionable finding. "Install speed humps 100m before trading centre with advance warning signs per Skill #19 junction approach treatment" is actionable.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Audit stage | Detailed design | Not specified | ASSUMED: Detailed design stage RSA. Verify the project stage. | Most common RSA stage |
| Audit team size | 2 members | Not specified | ASSUMED: Minimum 2-person audit team. Larger team recommended for complex projects. | Minimum for independence and coverage |
| Night-time inspection | Required | Pre-opening or existing road | Night-time inspection is essential for pre-opening and existing road audits. | Critical for delineation and NMT hazard assessment |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always include East African hazards** when the country context is Sub-Saharan Africa.
3. **Conservative approach:** If uncertain whether an issue is a Recommendation or Serious Concern, classify as Serious Concern. Better to flag and downgrade than to miss a critical hazard.
4. **Flag for investigation:** Every finding includes a recommendation for resolution.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Audit team members | 2 | 10 | count | If < 2, flag as insufficient. If > 5, may be excessive for road project. |
| Findings per audit | 1 | No limit | count | If 0 findings, question whether audit was thorough. Even well-designed roads have observations. |
| Serious Concerns | 0 | No limit | count | If > 0, design must not proceed without resolution. |

### 4.2 Consistency Checks

- **Stage vs scope:** Verify that the checklist items are appropriate for the audit stage. Feasibility audits should not include detailed sign placement checks.
- **Finding vs mitigation:** Every Recommendation and Serious Concern must have at least one proposed mitigation measure.
- **NMT assessment:** Verify that pedestrian and cyclist safety has been assessed, even if no NMT facilities are designed.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific RSA requirements | SENIOR REVIEW -- No country module for [jurisdiction]. Using generic RSA checklist. Verify local requirements. |
| Multiple Serious Concerns identified | Design may have fundamental safety issues | SENIOR REVIEW -- [N] Serious Concerns identified. Design revision required before proceeding. |
| No NMT facilities in peri-urban context | Major safety gap | SENIOR REVIEW -- No pedestrian/cyclist facilities designed for road through populated area. NMT safety assessment flags critical gap. |
| No crash data available (existing road audit) | Cannot assess crash patterns | NOTE -- No crash data available. Existing road audit based on site inspection only. Crash data would significantly strengthen the assessment. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module and checklist to load |
| Project stage | text | -- | Yes | User | Feasibility, preliminary, detailed, pre-opening, or existing road |
| Design drawings | files | -- | Yes (design stages) | Design team | Drawings to be audited |
| Road section details | text | -- | Yes (existing road) | User | Location, length, key features of road to be inspected |
| Traffic data | object | -- | Recommended | Skill #1-2 | AADT, vehicle composition, pedestrian volumes |
| Crash data | object | -- | Recommended (existing) | Road authority | Crash records for existing road audits |
| Traffic management design | object | -- | Recommended | Skill #67-70 | Road marking, sign, signal, and traffic control device designs for audit review |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| audit_findings | list | -- | Design team | Findings with severity classification |
| recommended_mitigations | list | -- | Design team | Proposed safety measures for each finding |
| audit_report_structure | text | -- | Project documentation | Structured report format |
| serious_concerns_count | number | count | Project manager | Number of Serious Concerns requiring resolution |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific RSA context and requirements | Markdown |
| `modules/kenya.md` | Kenya-specific RSA context -- PAM-4 procedures | Markdown |
| `tables/rsa_checklist_items.json` | RSA checklist items by stage and category | JSON |

### 6.4 Related Skills

| Skill | Relevance to RSA |
|-------|-----------------|
| Skill #15 (Vertical Alignment) | Audit checks for gradient and sight distance compliance |
| Skill #16 (Sight Distance) | Audit checks for SSD, PSD, ISD adequacy |
| Skill #17 (Cross-Section Design) | Audit checks for lane width, shoulder, and clear zone |
| Skill #19 (Intersection Design) | Audit checks for junction visibility and layout |
| Skill #20 (NMT Facilities) | Audit checks for pedestrian and cyclist provisions |
| Skill #67 (Road Marking Design) | Audit checks for marking type, visibility, retroreflectivity |
| Skill #68 (Traffic Sign Design) | Audit checks for sign placement, size, visibility |
| Skill #69 (Traffic Signal Design) | Audit checks for signal warrants, phasing, timing adequacy |
| Skill #70 (Traffic Control Devices) | Audit checks for barrier placement, hump design, delineation |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load the appropriate country module (Uganda for UNRA/MoWT projects, Kenya for KeNHA/KeRRA/KURA projects). Add country-specific hazard items to the checklist.

### Step 2: Determine Audit Stage
Classify the project stage (feasibility, preliminary, detailed, pre-opening, existing road). Load the appropriate checklist from `tables/rsa_checklist_items.json`.

### Step 3: Review Materials
For design-stage audits: review drawings, cross-sections, junction layouts, sign plans, NMT provisions. For pre-opening/existing: plan site visit including night-time inspection.

### Step 4: Apply Checklist Systematically
Work through each checklist category (alignment, cross-section, intersections, roadside, drainage, signs, NMT, speed management). For each item, assess against the design or site conditions.

### Step 5: Classify Findings
For each identified issue, classify severity: Observation, Recommendation, or Serious Concern. Document the specific safety risk and the road users affected.

### Step 6: Propose Mitigations
For each Recommendation and Serious Concern, propose one or more mitigation measures. Reference relevant design skills. Classify mitigation cost (low/medium/high).

### Step 7: Run Validation
Apply all checks from Section 4. Verify that NMT safety has been assessed, all Serious Concerns have mitigations, and findings are appropriate for the audit stage.

### Step 8: Produce Output
Format per Section 8. Prioritise: Serious Concerns first, then Recommendations, then Observations.

---

## 8. Output Format

### Output Template

```
============================================================
ROAD SAFETY AUDIT -- [Project/Road Name]
Country/Jurisdiction: [country]
Audit Stage: [Feasibility / Preliminary / Detailed / Pre-Opening / Existing Road]
Standard: [Applicable RSA standard -- from country module]
Date: [YYYY-MM-DD]
============================================================

AUDIT SCOPE
-----------
Road: [road name and section]
Length: [km]
Audit stage: [stage]
Audit team: [names and qualifications]
Documents reviewed: [list] OR Site visit date: [date]

SUMMARY OF FINDINGS
--------------------
Total findings: [N]
Serious Concerns: [N]
Recommendations: [N]
Observations: [N]

SERIOUS CONCERNS
----------------
[SC-1] [Category]: [Description of safety risk]
  Road users affected: [pedestrians / cyclists / motorists / all]
  Risk: [description of potential crash scenario]
  Recommended mitigation: [specific measure]
  Reference: [Skill #XX / Standard clause]
  Estimated cost: [Low / Medium / High]

[Continue for all Serious Concerns]

RECOMMENDATIONS
---------------
[R-1] [Category]: [Description]
  Recommended mitigation: [measure]
  Reference: [source]
  Estimated cost: [Low / Medium / High]

[Continue for all Recommendations]

OBSERVATIONS
------------
[O-1] [Category]: [Description]

EAST AFRICAN HAZARDS ASSESSED
------------------------------
Pedestrians on carriageway: [assessed / not applicable]
Boda-boda conflicts: [assessed / not applicable]
Animal crossings: [assessed / not applicable]
Unmarked speed transitions: [assessed / not applicable]
NMT mixing with traffic: [assessed / not applicable]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[RSA standard, guidelines, and checklist sources]

============================================================
ROAD SAFETY AUDIT -- FOR PROFESSIONAL REVIEW
This audit identifies potential safety issues based on
available information. Professional review and design team
response required for all Serious Concerns and Recommendations.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Crash investigation and forensic analysis. Traffic impact assessment. Road safety engineering in urban networks (this skill focuses on rural and peri-urban roads). Detailed speed modelling. Road safety management systems.
- **Simplifications:** Severity classification is judgment-based, not quantitative crash risk modelling. Mitigation cost classification (low/medium/high) is indicative, not detailed cost estimation.
- **Country modules available:** Uganda, Kenya
- **Country modules needed:** Tanzania (TANROADS), Ethiopia (ERA Road Safety Manual)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with 5-stage RSA framework, East African hazards (boda-boda, pedestrians, animal crossings), severity classification system, checklist in JSON. |
