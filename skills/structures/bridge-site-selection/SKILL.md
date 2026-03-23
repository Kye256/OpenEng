---
name: "bridge-site-selection"
description: "Use when assessing potential bridge sites considering hydraulic, geotechnical, and alignment constraints. Requires design flow from Skill #29 (Hydrology) and soil profile from Skill #10 (Subgrade Characterization). Outputs site data to Skill #36 (Bridge Loading), Skill #37 (Simply Supported Beam Bridges), and Skill #39 (Bridge Hydraulics)."
---

# Bridge Site Selection

> **Skill ID:** 35
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK

## Purpose

Assess and select bridge crossing sites by evaluating multiple criteria: hydraulic adequacy, geotechnical suitability, road alignment compatibility, constructability, and environmental/social constraints. This skill produces the site characterisation data that feeds into bridge loading (Skill #36), superstructure design (Skill #37), and bridge hydraulics (Skill #39).

## When to Use This Skill

- **Use when:** A road alignment requires a river, valley, or other crossing and the bridge site must be assessed or compared against alternatives. Required before proceeding to bridge loading and design.
- **Do not use when:** The crossing is small enough for a culvert (see Skill #31 Culvert Hydraulic Design) or a low-level crossing (see Skill #40 Small Span Structures). Not for existing bridge condition assessment (see Skill #41).
- **Prerequisite skills:** Skill #29 (Hydrology) for design flow, Skill #10 (Subgrade Characterization) for foundation data, Skill #17 (Cross-Section Design) for road width.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Site Investigation Requirements:** A bridge site investigation must address geotechnical, hydraulic, and topographic conditions. Minimum requirements include:

- **Geotechnical:** Boreholes at each abutment and pier location, depth to rock or competent bearing stratum, groundwater level, scour history at existing crossings.
- **Hydraulic:** Design flood level (from Skill #29), channel geometry (cross-sections at the crossing and upstream/downstream), flood plain width, debris and ice potential, stream stability assessment.
- **Topographic:** Valley cross-section, approach road geometry, access for construction equipment.

**Hydraulic Considerations:** The bridge must pass the design flood without unacceptable afflux (backwater rise) or risk of overtopping. Key factors are:

- **Waterway constriction:** The bridge opening should not excessively constrict the natural waterway, which increases velocity and scour risk.
- **Skew angle:** The angle between the bridge centreline and the normal to the flow direction. Skew increases span length, construction complexity, and cost.
- **Flood plain encroachment:** Where the flood plain is wide, the bridge may not span the entire width; approach embankments encroach on the flood plain.
- **Freeboard:** Minimum vertical clearance between design flood level and the soffit of the bridge deck.

**Geotechnical Requirements:**

- **Bearing capacity:** Foundation must support bridge loads without excessive settlement. Shallow foundations require bearing capacity typically > 150 kPa for medium bridges.
- **Scour depth:** The depth of erosion at foundations during flood events. Foundation must extend below the maximum scour depth.
- **Rock depth:** Influences foundation type -- shallow rock favours spread footings, deep overburden may require piles.

**Alignment Constraints:**

- **Approach grades:** Bridge approaches should not exceed road design gradients (from Skill #15).
- **Sight distance:** Approaches must provide adequate stopping sight distance (from Skill #16).
- **Horizontal alignment:** Bridges on curves add complexity; skew should be minimised.

**Environmental and Social Screening:**

- **River ecology:** Fish passage, riparian habitat, water quality.
- **Settlements:** Proximity to communities, resettlement implications.
- **Cultural heritage:** Archaeological sites, sacred locations.

### 1.2 Universal Formulas

**Approximate span estimate from waterway area:**

```
A_required = Q / V_allowable
```

Where:
- A_required = required waterway area (m2)
- Q = design flow (m3/s) from Skill #29
- V_allowable = maximum permissible velocity through the bridge opening (typically 2-4 m/s depending on bed material and scour protection)

**Skew span relationship:**

```
L_skew = L_normal / cos(theta)
```

Where:
- L_skew = span measured along the bridge centreline (m)
- L_normal = span measured perpendicular to the flow (m)
- theta = skew angle (degrees)

### 1.3 Figures & Diagrams

**Site assessment layout:** The assessment covers the channel cross-section at the proposed crossing, flood plain extent, approach road alignment, and locations of geotechnical investigations. Upstream and downstream cross-sections (typically at 50-100m intervals for 200-500m each way) characterise channel stability and flood plain behaviour.

**Skew angle definition:** The skew angle is measured between the perpendicular to the flow direction and the bridge centreline. A 0-degree skew means the bridge is perpendicular to the flow (ideal). Skew angles above 20 degrees significantly increase cost and design complexity.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  --> Load the appropriate country module
  --> If no module exists, flag and use closest available

Step 2: Gather site data
  |-- Design flow from Skill #29 (Q, return period)
  |-- Soil profile from Skill #10 (bearing capacity, depth to rock)
  |-- Channel geometry (width, depth, cross-sections)
  +-- Approach road alignment from Skill #14/15

Step 3: Assess hydraulic suitability
  |-- Estimate required waterway area: A = Q / V
  |-- Assess flood plain width and encroachment
  |-- Determine skew angle
  |-- Check freeboard requirements --> See country module, Section M.2
  +-- If afflux exceeds limits --> Flag, consider wider opening

Step 4: Assess geotechnical suitability
  |-- Check bearing capacity vs estimated bridge loads
  |-- Estimate scour depth at foundations
  |-- Determine foundation type:
  |    |-- Shallow (spread footings): rock or firm soil within 3-5m
  |    |-- Deep (piles): rock or firm soil > 5m depth
  |    +-- If piles needed --> Escalate to Skill #38 (specialist)
  +-- Check for alluvial instability

Step 5: Assess alignment suitability
  |-- Check approach grades against design standards
  |-- Check sight distance on approaches
  |-- Evaluate skew angle:
  |    |-- < 10 degrees: acceptable
  |    |-- 10-20 degrees: manageable, note cost increase
  |    +-- > 20 degrees: significant cost/complexity increase, flag
  +-- Check horizontal alignment constraints

Step 6: Multi-criteria assessment
  --> Rank: hydraulic safety > structural feasibility > alignment quality
         > cost > environmental
  --> Produce site suitability rating

Step 7: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Ideal bridge site characteristics:** perpendicular crossing of a stable channel, firm foundation material at shallow depth, no significant skew, adequate approach geometry, and minimal flood plain encroachment.

**Site comparison:** When multiple sites are feasible, compare using a multi-criteria scoring matrix weighted by the priority order: hydraulic safety, structural feasibility, alignment, cost, and environmental/social impact.

**River stability is paramount.** A site with a stable channel but longer span is generally preferable to a shorter crossing on an actively migrating channel.

### 2.3 Common Errors

1. **Selecting site on alignment alone.** Road alignment is only one of several criteria. Hydraulic and geotechnical factors frequently govern site selection.
2. **Ignoring scour history.** Existing bridges or previous crossings at the site provide critical evidence of scour behaviour. Always investigate scour marks and historical flood records.
3. **Underestimating skew costs.** A 30-degree skew increases the span by approximately 15% and disproportionately increases substructure cost and construction complexity.
4. **Neglecting upstream/downstream channel changes.** Mining, urbanisation, or land use changes upstream can significantly alter flow regime and sediment transport.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Design return period | 100 years (Q100) | Not specified | ASSUMED: Q100 design flood for bridge | Standard for permanent bridges |
| Maximum allowable velocity | 3.0 m/s | Erodible bed, no protection | ASSUMED: V_max = 3.0 m/s for unprotected channel | Conservative for alluvial rivers |
| Minimum freeboard | 1.0 m | Not specified | ASSUMED: 1.0 m freeboard above Q100 | Common practice for highway bridges |
| Skew threshold | 20 degrees | For cost/complexity escalation | No flag (design guidance) | Above 20 degrees, costs increase significantly |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Favour larger waterway areas and deeper foundations.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Skew angle | 0 | 60 | degrees | Warn if > 20; escalate if > 45 |
| Span estimate | 3 | 500 | m | Warn if < 6 (may be culvert); reject if > 500 (specialist) |
| Freeboard | 0.5 | 5.0 | m | Warn if < 0.75; reject if < 0.5 |
| Design flow | 1 | 10000 | m3/s | Warn if > 5000 (major river, specialist review) |

### 4.2 Consistency Checks

- **Span vs waterway area:** Verify that the proposed span and depth provide the required waterway area for the design flow.
- **Foundation depth vs scour depth:** Foundation must extend at least 1.5 m below estimated maximum scour depth.
- **Approach grades vs design standards:** Verify grades comply with Skill #15 gradient limits.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Skew angle > 20 degrees | Significant cost and complexity increase | SENIOR REVIEW -- Skew angle [X] degrees. Consider realignment to reduce skew or accept cost premium. |
| Deep alluvial deposits (no rock to 15m) | Pile foundations likely required | SENIOR REVIEW -- No competent bearing stratum within [X]m. Pile foundation design required (specialist geotechnical engineer). |
| Q100/Q2 ratio > 10 | Highly seasonal flood regime | SENIOR REVIEW -- Extreme flood variability (Q100/Q2 = [X]). Scour and debris risk elevated. |
| Settlement on flood plain | Social/resettlement impact | SENIOR REVIEW -- Settlement within flood plain. Resettlement assessment may be required. |
| Actively migrating channel | Channel may shift away from bridge | SENIOR REVIEW -- Channel migration evident. Extended crossing or training works may be needed. |
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. |

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
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Design flow (Q) | number | m3/s | Yes | Skill #29 | Design peak flow for waterway sizing |
| Catchment area | number | km2 | Yes | Skill #29 | For flow estimation context |
| Return period | number | years | Yes | Skill #29 | Design flood return period (typically Q100) |
| Soil profile | object | -- | Yes | Skill #10 | Bearing capacity, depth to rock, soil type |
| Bearing capacity | number | kPa | Yes | Skill #10 | Allowable bearing pressure for foundations |
| Channel geometry | object | -- | Yes | User | Width, depth, cross-sections, bank material |
| Carriageway width | number | m | Recommended | Skill #17 | For bridge width determination |
| Road alignment data | object | -- | Recommended | Skill #14/15 | Approach grades, horizontal alignment |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| site_data | object | -- | Skill #36 | Span estimate, skew angle, clearance requirements |
| foundation_conditions | object | -- | Skill #37 | Bearing capacity, depth to rock, foundation type |
| river_data | object | -- | Skill #39 | Channel geometry, flood levels, scour potential |
| site_suitability | text | -- | User | Overall site assessment rating |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific standards and practice | Markdown |
| `modules/uk.md` | UK-specific standards (knowledge-based) | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: Gather Site Data
Collect design flow from Skill #29, soil profile from Skill #10, channel geometry from user/survey data, and road alignment from Skill #14/15.

### Step 3: Estimate Span Requirement
From channel width at design flood level, determine the approximate span. Apply skew correction if applicable.

### Step 4: Assess Hydraulic Suitability
Calculate required waterway area, check velocity through opening, assess flood plain encroachment, and determine freeboard.

### Step 5: Assess Geotechnical Suitability
Evaluate bearing capacity against estimated bridge loads, estimate scour depth, determine foundation type (shallow vs deep).

### Step 6: Assess Alignment Suitability
Check approach grades, sight distance, and skew angle against design standards and practical thresholds.

### Step 7: Multi-Criteria Assessment
Score the site across all criteria. Apply country-specific weighting if available.

### Step 8: Run Validation
All universal + country-specific checks from Section 4 and country module Section M.5.

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
BRIDGE SITE SELECTION -- [River/Valley Name]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

SITE DATA
---------
River/Valley:           [name]
Design Flow (Q100):     [X] m3/s
Channel Width (normal): [X] m
Channel Width (flood):  [X] m
Skew Angle:             [X] degrees

HYDRAULIC ASSESSMENT
--------------------
Required Waterway Area: [X] m2
Proposed Span:          [X] m
Freeboard:              [X] m
Velocity (max):         [X] m/s
Afflux:                 [estimated or N/A]

GEOTECHNICAL ASSESSMENT
-----------------------
Bearing Capacity:       [X] kPa
Depth to Rock:          [X] m
Scour Estimate:         [X] m
Foundation Type:        [shallow / deep (escalate)]

ALIGNMENT ASSESSMENT
--------------------
Approach Grade:         [X]% (max desirable [Y]%)
Sight Distance:         [adequate / restricted]
Skew:                   [X] degrees -- [acceptable / note cost / escalate]

MULTI-CRITERIA SUMMARY
----------------------
Hydraulic:    [Pass/Concern/Fail]
Geotechnical: [Pass/Concern/Fail]
Alignment:    [Pass/Concern/Fail]
Environmental:[Pass/Concern/Fail]
Overall:      [Suitable / Marginal / Unsuitable]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY ASSESSMENT -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed scour analysis (see Skill #39 Bridge Hydraulics). Detailed foundation design (see Skill #38 Bridge Substructure). Environmental Impact Assessment methodology.
- **Simplifications:** Uses approximate span estimation from waterway area; detailed hydraulic modelling (HEC-RAS etc.) is beyond this skill's scope. Scour estimation is preliminary -- detailed analysis in Skill #39.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with multi-criteria site assessment framework |
