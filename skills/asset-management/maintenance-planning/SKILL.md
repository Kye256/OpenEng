---
name: "maintenance-planning"
description: "Use when selecting maintenance interventions for a road based on condition data. Applies MoWT trigger levels to determine whether routine maintenance, periodic maintenance, or rehabilitation is needed. Decision tree branches by distress type and severity to select specific treatments (patching, resealing, overlay, reconstruction). Inputs from Skill #56 (Road Condition Assessment). Outputs treatment needs to Skill #59 (Prioritization Methods) and treatment quantities to Skill #50 (Engineer's Estimate)."
---

# Maintenance Planning

> **Skill ID:** 57
> **Domain:** Asset Management
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda, Kenya

## Purpose

Select appropriate maintenance interventions for road sections based on condition data. This skill maps condition ratings and distress data to specific maintenance treatments using a hierarchical intervention system: routine maintenance (continuous/frequent activities), periodic maintenance (planned cycles), and rehabilitation (major structural intervention). The treatment selection considers distress type, severity, extent, and road surface type to recommend specific treatments with estimated quantities for cost estimation.

## When to Use This Skill

- **Use when:** Condition data is available (from Skill #56 or direct user input) and maintenance treatment selection is needed. Programming maintenance activities for a road section or network. Determining whether routine, periodic, or rehabilitation intervention is required.
- **Do not use when:** Designing new pavements (use Skills #21-23). Designing rehabilitation overlay thickness (use Skill #25 -- this skill identifies that rehabilitation is needed, Skill #25 designs the solution). Prioritizing between competing maintenance needs across a network (use Skill #59).
- **Prerequisite skills:** Skill #56 (Road Condition Assessment) provides condition_rating and intervention_trigger. If Skill #56 data is not available, this skill accepts direct condition input from the user.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Intervention Hierarchy:**

| Level | Name | Frequency | Purpose | Examples |
|-------|------|-----------|---------|----------|
| 1 | Routine maintenance | Continuous / frequent | Preserve existing condition, prevent deterioration | Pothole patching, crack sealing, drain clearing, vegetation control, sign maintenance |
| 2 | Periodic maintenance | Planned cycle (3-7 years typical) | Restore surface condition, extend service life | Resealing, thin overlay, gravel resheeting, shaped patching, surface dressing |
| 3 | Rehabilitation | When periodic insufficient | Restore structural capacity | Thick overlay (>50mm), mill and replace, reconstruction, base repair, geometric correction |

**Trigger Levels:**
Trigger levels are condition thresholds that determine when each intervention level is required. Triggers are defined by IRI, VCI, or specific distress parameters. When a road section's condition exceeds (worse than) the trigger level for a given intervention, that intervention is recommended. Trigger levels vary by road surface type (paved vs gravel), road class (higher-class roads have more stringent triggers), and country standards.

**Treatment Selection Matrix:**
Once the intervention level is determined, the specific treatment is selected based on the dominant distress type and severity. The treatment matrix maps each distress-severity combination to the recommended treatment. For example:
- Alligator cracking + High severity + extensive --> Remove and replace base + overlay (rehabilitation)
- Alligator cracking + Low severity + limited --> Crack sealing (routine maintenance)
- Rutting > 25mm --> Mill and overlay (periodic/rehabilitation)
- Potholes < 5% area --> Patching (routine)
- Potholes > 5% area --> Patching + overlay (periodic)

**Treatment Quantities:**
For each recommended treatment, estimate the treatment area or length:
- Patch repairs: area = distress extent x section area
- Overlays: full lane width x section length
- Resealing: full lane width x section length
- Gravel resheeting: road width x section length x thickness
These quantities feed into Skill #50 (Engineer's Estimate) for cost estimation.

### 1.2 Universal Formulas

**Treatment Area Estimation:**
```
Patch area (m2) = Section area (m2) x Distress extent (%) / 100
Overlay area (m2) = Lane width (m) x Section length (m) x Number of lanes
Resheeting volume (m3) = Road width (m) x Section length (m) x Thickness (m)
```

**Trigger Level Comparison:**
```
If condition_parameter > trigger_threshold:
  --> Intervention triggered

Where condition_parameter is IRI (m/km) or VCI (0-100) or specific distress measure
And trigger_threshold is from tables/maintenance_trigger_levels.json
```

### 1.3 Figures & Diagrams

No figures required. The decision tree in Section 2.1 and the treatment selection matrix in the JSON table encode the critical relationships.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Receive condition data
  |-- From Skill #56: condition_rating, intervention_trigger, distress_summary
  |-- From user: direct condition description / measurements
  +-- If no condition data: STOP -- condition assessment required first (Skill #56)

Step 2: Check condition against trigger levels
  --> Load country module for trigger levels (tables/maintenance_trigger_levels.json)
  --> Identify road surface type (paved / gravel) and road class
  --> Compare condition parameters against triggers:
      |-- All parameters within routine threshold --> Routine maintenance
      |-- Any parameter exceeds periodic trigger --> Periodic maintenance
      +-- Any parameter exceeds rehabilitation trigger --> Rehabilitation

Step 3: Select intervention level
  |-- Routine maintenance --> Step 4a
  |-- Periodic maintenance --> Step 4b
  +-- Rehabilitation --> Step 4c

Step 4a: Routine maintenance activities
  --> Standard routine package: pothole patching, crack sealing, drain clearing,
      vegetation control, sign/marking maintenance
  --> Estimate patching quantities from distress data
  --> Output: routine maintenance activity list with quantities

Step 4b: Periodic maintenance treatment selection
  --> Identify dominant distress type from distress_summary
  --> Look up treatment in tables/treatment_selection_matrix.json
  --> Select treatment by distress type x severity:
      |-- Surface distress (ravelling, bleeding) --> Reseal / surface dressing
      |-- Cracking (moderate) --> Crack repair + reseal or thin overlay
      |-- Rutting (10-25mm) --> Overlay (40-50mm)
      |-- Gravel road corrugation/loss --> Gravel resheeting
  --> Estimate treatment quantities (area/volume)
  --> Output: specific treatment with quantities

Step 4c: Rehabilitation scope
  --> Condition is beyond periodic maintenance capability
  --> Identify whether structural failure or surface failure:
      |-- Alligator cracking + deep rutting = structural failure --> Base repair + overlay
      |-- High IRI + no structural cracking = surface failure --> Mill and overlay
  --> Recommend structural investigation (FWD/DCP) for detailed design
  --> Refer to Skill #25 (Pavement Rehabilitation) for overlay design
  --> Estimate preliminary scope for budget purposes
  --> Output: rehabilitation scope with preliminary quantities

Step 5: Estimate treatment quantities
  --> Calculate treatment areas/volumes per formulas in Section 1.2
  --> Output quantities suitable for Skill #50 (Engineer's Estimate)

Step 6: Produce maintenance plan output
  --> Intervention level with justification
  --> Specific treatments with quantities
  --> Trigger assessment (which triggers exceeded, by how much)
  --> Referrals to other skills (Skill #25 for rehabilitation design, Skill #50 for costing)
```

### 2.2 Professional Judgment (Universal)

**Multiple distresses require multiple treatments.** A road section with both cracking and rutting may need crack repair AND overlay. The treatment selection matrix provides the primary treatment for each distress, but the maintenance plan should combine treatments where multiple distresses coexist.

**Routine maintenance is always needed, regardless of condition.** Even a road in Good condition requires routine drain clearing, vegetation control, and sign maintenance. Routine maintenance is the baseline -- periodic and rehabilitation interventions are additional to routine, not replacements.

**The cheapest effective treatment is preferred.** If a reseal can address the distress, do not recommend an overlay. If patching can address isolated potholes, do not recommend a full periodic treatment. The intervention hierarchy implies escalation only when the lower-level treatment is insufficient.

**Drainage must be addressed before surface treatments.** Applying an overlay on a road with drainage problems will result in premature failure of the overlay. Drainage repair should precede or accompany surface treatments.

### 2.3 Common Errors

1. **Treating the symptom, not the cause.** Patching potholes on a road with subgrade failure will not stop new potholes forming. If structural distresses indicate base or subgrade failure, rehabilitation (not patching) is needed.
2. **Applying periodic treatment when routine would suffice.** If cracking is Low severity and limited extent, crack sealing (routine) is adequate. Resealing or overlay at this stage is premature and wasteful.
3. **Ignoring gravel road maintenance cycles.** Gravel roads require periodic resheeting (typically every 3-5 years) regardless of visual condition, because gravel loss is continuous. Waiting for "Poor" condition before resheeting results in loss of the wearing course entirely.
4. **Not estimating quantities.** Recommending "overlay" without specifying the area and thickness is not actionable. Always estimate quantities for cost estimation.
5. **Applying paved road treatments to gravel roads.** Gravel roads require resheeting, reshaping, and drainage improvement -- not overlays or resealing. Treatment selection must match the surface type.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Road surface type | Paved | Not specified | ASSUMED: Paved road. Gravel road treatments differ significantly. | Paved is more common for national roads |
| Overlay thickness | 50mm AC | Periodic overlay triggered | ASSUMED: 50mm asphalt concrete overlay. Actual thickness from Skill #25 design. | Standard periodic overlay thickness |
| Resheeting thickness | 150mm compacted | Gravel resheeting triggered | ASSUMED: 150mm compacted gravel. Verify against local practice. | Standard gravel resheeting thickness |
| Treatment priority | Worst distress first | Multiple distresses | Standard: address worst distress first, then secondary distresses. | Engineering practice |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always specify the treatment and estimated quantities** in output.
3. **Conservative direction:** If in doubt between periodic and rehabilitation, recommend structural investigation.
4. **Flag cost estimates as preliminary** -- detailed costing is Skill #50's domain.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Overlay thickness | 25 | 150 | mm | < 25mm is a surface treatment, not overlay. > 150mm suggests reconstruction. |
| Resheeting thickness | 100 | 200 | mm | < 100mm is insufficient. > 200mm is unusual -- verify. |
| Patch area | > 0 | 100 | % of section | Patching > 30% of section area suggests periodic treatment instead. |

### 4.2 Consistency Checks

- **Treatment vs condition:** Verify that the selected treatment matches the condition severity. Rehabilitation treatment for Good condition is inconsistent.
- **Surface type vs treatment:** Verify paved road treatments are not applied to gravel roads and vice versa.
- **Drainage status:** If drainage is noted as failed, verify that drainage repair is included in the maintenance plan.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific trigger levels | SENIOR REVIEW -- No country module for [jurisdiction]. Using generic trigger levels. Verify applicability. |
| Rehabilitation triggered | Major intervention required | NOTE -- Rehabilitation intervention indicated. Structural investigation recommended before detailed design. Refer to Skill #25 for overlay design. |
| Multiple trigger levels exceeded | Complex maintenance need | NOTE -- Multiple triggers exceeded simultaneously. Comprehensive maintenance plan needed -- may require phased intervention. |
| Treatment cost exceeds new construction | Rehabilitation may not be cost-effective | SENIOR REVIEW -- Estimated rehabilitation cost approaches new construction cost. Consider reconstruction vs rehabilitation. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| condition_rating | text | -- | Yes | Skill #56 / User | Good/Fair/Poor/Very Poor |
| distress_summary | list | -- | Recommended | Skill #56 / User | Distress types with severity and extent |
| intervention_trigger | text | -- | Recommended | Skill #56 | routine/periodic/rehabilitation |
| road_surface_type | text | -- | Yes | User | Paved or gravel -- determines treatment set |
| road_class | text | -- | Optional | Skill #13 / User | Road classification for trigger level selection |
| traffic_loading | number | ESA | Optional | Skill #5 | For structural adequacy check in rehabilitation decisions |
| road_dimensions | object | -- | Recommended | User | Width, length, lanes -- for quantity estimation |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| intervention_type | text | -- | Skill #59 | routine/periodic/rehabilitation |
| treatment_details | list | -- | Skill #50 | Specific treatments with quantities (area, volume, length) |
| trigger_assessment | object | -- | Skill #59 | Which triggers exceeded, by how much |
| referral_to_skill_25 | boolean | -- | User | Whether rehabilitation design by Skill #25 is needed |

**Output Consumer Notes:**
- **Skill #59 (Prioritization Methods):** Receives intervention_type and trigger_assessment for ranking road sections by maintenance priority.
- **Skill #50 (Engineer's Estimate):** Receives treatment_details with quantities for cost estimation.
- **Skill #25 (Pavement Rehabilitation):** Receives referral when rehabilitation is triggered -- Skill #25 designs the overlay/reconstruction.

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific trigger levels, treatment practice, UNRA/DUCAR context | Markdown |
| `tables/maintenance_trigger_levels.json` | Trigger levels by surface type, road class, and intervention level | JSON |
| `tables/treatment_selection_matrix.json` | Treatment selection by distress type and severity | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load Uganda module for UNRA/MoWT projects. Load trigger levels and treatment matrix tables.

### Step 2: Receive Condition Data
Accept condition data from Skill #56 output or direct user input. Verify that condition_rating, distress_summary, and road_surface_type are available. If intervention_trigger is already provided by Skill #56, verify it against the trigger level table.

### Step 3: Check Trigger Levels
Compare condition parameters against trigger levels from `tables/maintenance_trigger_levels.json`. Determine whether routine, periodic, or rehabilitation intervention is triggered. Document which specific triggers are exceeded.

### Step 4: Select Treatment
Based on the intervention level and dominant distresses, look up the recommended treatment in `tables/treatment_selection_matrix.json`. If multiple distresses coexist, combine treatments. If rehabilitation is triggered, recommend structural investigation and refer to Skill #25.

### Step 5: Estimate Treatment Quantities
Calculate treatment areas, volumes, and lengths using road dimensions and distress extent data. Format quantities suitable for Skill #50 (Engineer's Estimate) input.

### Step 6: Run Validation
Apply Section 4 checks. Verify treatment-condition consistency, surface type matching, and drainage consideration.

### Step 7: Produce Output
Format per Section 8. Include intervention type, specific treatments with quantities, trigger assessment, and referrals.

---

## 8. Output Format

```
============================================================
MAINTENANCE PLANNING -- [Road Name / Section ID]
Country/Jurisdiction: [country]
Standard: [Maintenance manual reference -- from country module]
Date: [YYYY-MM-DD]
============================================================

CONDITION INPUT
---------------
Source: [Skill #56 / Direct user input]
Condition rating: [Good / Fair / Poor / Very Poor]
Road surface: [Paved / Gravel]
Road class: [National / District / etc.]

TRIGGER ASSESSMENT
------------------
[Parameter]: [Value] vs Trigger: [Threshold] --> [Triggered / Not triggered]
[...]

INTERVENTION LEVEL
------------------
Level: [Routine / Periodic / Rehabilitation]
Justification: [Which trigger(s) exceeded]

RECOMMENDED TREATMENTS
----------------------
[Treatment 1]: [Description]
  - Area/volume: [quantity with units]
  - Priority: [Immediate / Next maintenance cycle / Programmed]

[Treatment 2]: [Description]
  - Area/volume: [quantity with units]
  - Priority: [...]

QUANTITY SUMMARY (for Skill #50)
--------------------------------
| Item | Quantity | Unit | Notes |
|------|----------|------|-------|
| | | | |

REFERRALS
---------
[Skill #25 referral if rehabilitation triggered]
[Skill #50 referral for cost estimation]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[Standard and section references -- from country module]

============================================================
MAINTENANCE PLAN -- FOR PROFESSIONAL REVIEW
This output provides treatment recommendations based on
condition data. Professional review required before implementation.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed overlay design (Skill #25). Life-cycle cost optimisation (HDM-4 economic analysis). Multi-year maintenance programming and budgeting. Contractor procurement for maintenance works (Skill #47). Maintenance contract supervision (Skill #54).
- **Simplifications:** Treatment quantities are estimated from distress extent data -- actual quantities require field measurement. Treatment selection matrix provides the primary treatment; combined treatments for multiple distresses require professional judgment. Trigger levels are representative -- individual agencies may use different values.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya (KeNHA), Tanzania (TANROADS), Ethiopia (ERA)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with 3-level intervention hierarchy, trigger level framework, treatment selection matrix, quantity estimation. |
