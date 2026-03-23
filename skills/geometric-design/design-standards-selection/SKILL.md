---
name: "design-standards-selection"
description: "Use when selecting the design standard, road classification, and design speed for a road project. This is the decision gateway — every downstream geometric, pavement, and cross-section skill depends on its outputs. Benefits from Skill #2 (AADT), Skill #6 (forecasting), and Skill #11 (terrain). Outputs feed into Skills #14-20."
---

# Design Standards Selection

> **Skill ID:** 13
> **Domain:** Geometric Design
> **Version:** 0.2
> **Status:** Draft
> **Last Updated:** 2026-03-17
> **Reviewed By:** —
> **Country Modules:** Uganda, UK

## Purpose

Select the appropriate design standard, road classification, and design speed for a road project based on its function, traffic volume, terrain, and institutional context. This skill is the decision gateway — every downstream geometric design, pavement, and cross-section skill depends on its outputs.

## When to Use This Skill

- **Use when:** Starting any road design task. Before any geometric parameter can be determined, the standard, road class, and design speed must be established.
- **Do not use when:** The client or Terms of Reference has already specified the standard and design class (in that case, validate the selection and proceed directly to Skill #14+).
- **Prerequisite skills:** None required, but benefits from: Skill #2 (Traffic Data Processing) for AADT, Skill #6 (Traffic Forecasting) for design-year traffic, Skill #11 (Terrain Classification) for terrain class.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Road Function Classification** defines a road's purpose within the network hierarchy. It determines what level of service (speed, width, access control) is appropriate. The three fundamental functions are:

- **Mobility:** Moving traffic over distance efficiently. High speed, limited access. (Trunk roads, highways, motorways.)
- **Access:** Connecting properties and land parcels to the road network. Low speed, frequent access points. (Local roads, residential streets.)
- **Mixed:** Serving both functions at intermediate levels. (Collector roads, district roads.)

A road cannot serve maximum mobility and maximum access simultaneously — this is a fundamental design tension. Every road sits somewhere on the mobility-access continuum, and its position determines the appropriate design standard.

**Design Speed** is the maximum safe speed that can be maintained over a section of road when conditions are favourable. It is NOT the posted speed limit or the expected operating speed. Design speed governs the minimum values of geometric parameters (radius, K-value, sight distance). Once selected, it must be applied consistently across a road section.

**Design Year** is the future year for which the road is designed. Typically 10–20 years from construction. Traffic volume at the design year determines the road class.

**Design Vehicle** is the largest vehicle that the road must accommodate. It determines lane width, curve widening, turning radii, and vertical clearance.

**Terrain Classification** categorises the landscape the road traverses. The standard categories are:
- **Flat:** Cross slopes < 10%. Sight distances are long. Horizontal and vertical alignment are largely independent.
- **Rolling:** Cross slopes 10–25%. Occasional steep grades. Some alignment constraints.
- **Mountainous:** Cross slopes 25–60%. Frequent steep grades. Alignment is heavily constrained by topography.
- **Escarpment:** Cross slopes > 60%. Extreme grades. Alignment is dictated by topography.

Terrain classification directly affects achievable design speed and construction cost.

### 1.2 Universal Formulas

**Design year traffic projection:**

```
Design Year AADT = Current AADT × (1 + g)^n
```

Where:
- Current AADT = Annual Average Daily Traffic in the base year (vehicles/day)
- g = annual traffic growth rate (decimal, e.g., 0.05 for 5%)
- n = design period (years)

This is a compound growth model. It assumes a constant growth rate, which is a simplification — in practice, growth rates vary over time. For major projects, a detailed traffic forecast from Skill #6 should replace this formula.

### 1.3 Figures & Diagrams

**Mobility-Access Continuum:** Conceptual diagram showing the inverse relationship between mobility function (high speed, limited access, large catchment) and access function (low speed, frequent access, local catchment). Road classes are positioned along this continuum. The agent should understand that designing a road requires placing it correctly on this spectrum — and that mismatches (e.g., a trunk road with frequent accesses) cause safety and operational problems.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  → Load the appropriate country module from modules/
  → If no module exists, flag: 🔺 SENIOR REVIEW and use closest available

Step 2: Determine institutional context
  → See country module, Section M.3.1 for country-specific institutional logic
  → The module identifies which standard applies based on the responsible authority

Step 3: Determine road function
  ├── From project description, ToR, or network position
  ├── Classify as: Trunk/Arterial / Collector / Local / Community (exact categories vary by standard)
  └── If unclear → Ask user for the road's role in the network

Step 4: Determine terrain class
  ├── From Skill #11 (Terrain Classification) or project description
  ├── Classify as: Flat / Rolling / Mountainous / Escarpment
  └── If unknown → Default to Rolling (see Section 3)

Step 5: Determine design-year AADT
  ├── From Skill #6 (Traffic Forecasting) output
  ├── Or calculate: Current AADT × (1 + growth)^(design period)
  ├── If current AADT known but growth rate unknown → Use country module defaults (Section M.4)
  └── If no traffic data at all → Use country module defaults by road function (Section M.4)

Step 6: Assign road class
  → See country module, Section M.2.3 for classification system
  ├── Look up road class from traffic + function in the country's classification table
  ├── Cross-check: Does the traffic-based class match the functional class?
  │     ├── If yes → Proceed
  │     ├── If traffic suggests lower class than function requires → Design to functional class, flag
  │     └── If traffic suggests higher class than function → Design to traffic-based class
  └── Output: Road class per selected standard

Step 7: Determine design speed
  → See country module, Section M.2.1 for design speed table
  ├── From road class + terrain → look up in country's design speed table
  ├── Apply constraints: urban context, alignment constraints, client specifications
  └── Output: Design speed in km/h (or mph for UK)

Step 8: Confirm design vehicle
  → See country module, Section M.3.1 for country-specific vehicle selection
  ├── Match design vehicle to road class and expected traffic composition
  └── Output: Design vehicle designation

Step 9: Confirm design period
  → See country module, Section M.4 for country-specific defaults
  └── Output: Design period in years

Step 10: Run validation (Section 4 + country module Section M.5)

Step 11: Check escalation triggers (Section 5 + country module Section M.6)

Step 12: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Standard selection is partly institutional, not purely technical.** Different agencies within the same country may use different standards. This is policy, not a technical superiority argument. When working for a specific agency, use their adopted standard even if another might give more locally appropriate values.

**Traffic data quality matters more than precision.** In many contexts, traffic data is limited — short-duration counts, no seasonal adjustment, uncertain growth rates. Don't over-engineer the classification based on weak data. If the road sits near a class boundary, acknowledge the uncertainty and note what would change with different traffic assumptions.

**Design speed is not operating speed.** Operating speeds are often well below design speed due to mixed traffic, non-motorised transport, roadside activity, and road condition. But the geometry must still accommodate the design speed safely.

**Urban vs rural is a critical distinction.** Urban roads need lower design speeds, wider pedestrian facilities, more frequent intersections, and NMT provision — even if the traffic volume would suggest a high-class rural design. Flag any project that crosses the urban-rural boundary.

**Consistency of design speed along a route is more important than optimising each segment.** A road that alternates between high and low design speeds is more dangerous than one designed consistently at a moderate speed. If terrain forces speed changes, ensure transitions are gradual.

**Functional class should not be ignored in favour of traffic volume alone.** A road connecting two regional centres should be designed to its function even if current traffic is low — traffic often grows to match the function once the road is improved (generated traffic).

### 2.3 Common Errors

1. **Using AADT without specifying the year.** Current AADT and design-year AADT can differ substantially. Always clarify which is being used.
2. **Mixing standards within a design.** Selecting road class from one standard but design speed from another. Pick one primary standard and be consistent.
3. **Defaulting to the highest standard "to be safe."** Over-design wastes resources. Match the standard to the context.
4. **Forgetting the design vehicle.** Lane width and curve geometry depend on the design vehicle.
5. **Ignoring generated traffic.** A new or improved road will attract traffic that didn't exist before. The functional class often predicts future traffic better than current counts.

---

## 3. Defaults (Universal)

These apply when no country module is loaded or as fallback when country-specific data is unavailable.

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Terrain class | Rolling | No terrain data | ⚠️ ASSUMED: Rolling terrain (no data — verify from site visit or DEM) | Middle assumption; flat under-designs for grades, mountainous over-constrains |
| Design period | 15 years | Not specified | ⚠️ ASSUMED: 15-year design period (confirm with client) | Middle value; country modules provide calibrated defaults |
| Traffic growth rate | 4% p.a. | No forecast data | ⚠️ ASSUMED: 4% annual growth (no data — commission traffic study) | Global developing-country average; country modules provide calibrated values |

### Default Behaviour Rules

1. **Country module defaults take precedence** over these universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** When traffic is uncertain, use the higher plausible estimate (leads to higher class, more robust design). When terrain is uncertain, assume rolling.
4. **Defaults are for screening only.** If the project proceeds to detailed design, all defaults must be replaced with actual data.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Design speed | 20 | 130 | km/h | Reject — outside all known standard ranges |
| Design AADT | 0 | 100,000 | vpd | Warn if > 50,000 (may need motorway/expressway standards) |
| Traffic growth rate | 0 | 15 | % p.a. | Warn if > 10% (unrealistic for sustained growth) |
| Design period | 5 | 30 | years | Warn if outside 10–20 |

### 4.2 Consistency Checks

- **Design speed vs. road class:** Verify the selected design speed falls within the range specified by the selected standard. If outside range, flag.
- **Road class vs. function:** If traffic-based class doesn't match functional designation, flag the inconsistency.
- **Design speed along route:** If different speeds on adjacent sections, verify transition is no more than 20 km/h and is gradual.
- **Design vehicle vs. road class:** Verify appropriateness (trunk road should not use only passenger car; local road shouldn't require largest semi-trailer).

### 4.3 Standards Compliance

The agent runs all validation checks from the loaded country module's Section M.5 in addition to the universal checks above. Both sets of results appear in the output.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific standards | 🔺 SENIOR REVIEW — No country module for [jurisdiction]. Using [closest available]. Verify all standard-specific parameters. |
| Road class boundary — AADT within 20% of boundary | Small change in traffic assumptions changes the road class and all downstream parameters | 🔺 SENIOR REVIEW — AADT is near class boundary. Evaluate both classes. |
| Conflicting standards in ToR | Inconsistent parameters possible | 🔺 SENIOR REVIEW — ToR references multiple standards. Clarify primary standard with client. |
| Urban-rural transition | Design parameters change significantly | 🔺 SENIOR REVIEW — Project spans urban-rural transition. Coordinate speed, cross-section, and NMT. |
| High functional importance, low traffic | Function demands higher standard than traffic justifies | 🔺 SENIOR REVIEW — Functional importance exceeds traffic-based classification. |
| No traffic data and no basis for estimation | Cannot reliably classify | 🔺 SENIOR REVIEW — No traffic data. Recommend survey before proceeding. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible.
- **Country module escalations** (Section M.6) are merged with universal escalations in output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Road name/project description | text | — | Yes | User | Identifies the project |
| Road function | category | — | Yes | User or ToR | Trunk / Arterial / Collector / Local / Community |
| Country/jurisdiction | text | — | Yes | User | Determines which country module to load |
| Responsible authority | text | — | No | User or ToR | Specific agency — determines standard in multi-agency countries |
| Current AADT | number | vpd | No | Skill #2 or User | Current annual average daily traffic |
| Traffic growth rate | number | % p.a. | No | Skill #6 or User | Annual traffic growth rate |
| Design year AADT | number | vpd | No | Skill #6 | If already calculated |
| Terrain class | category | — | No | Skill #11 or User | Flat / Rolling / Mountainous / Escarpment |
| Funding source | text | — | No | User or ToR | May influence standard selection |
| Urban/rural classification | category | — | No | User | Urban / Peri-urban / Rural |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Selected design standard | text | — | All downstream skills | Primary standard and edition |
| Road class | category | — | Skills #14–20, #21–25, #17 | Classification per selected standard |
| Design speed | number | km/h | Skills #14, #15, #16, #17, #18, #19 | Governs all geometric parameters |
| Design vehicle | category | — | Skills #14, #17, #18, #19 | Determines width, turning, clearance |
| Design period | number | years | Skills #5, #6, #21–23 | For traffic projection and pavement design |
| Design year AADT | number | vpd | Skills #5, #17, #21–25, #50 | Traffic at end of design life |
| Terrain class (confirmed) | category | — | Skills #14, #15, #17 | May be confirmed or assumed |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda country module | Markdown |
| `modules/uk.md` | UK country module | Markdown |
| `tables/uganda_classification.json` | Uganda MoWT road classification and design speed tables | JSON |
| `tables/uk_classification.json` | UK DMRB road categories and design speed tables | JSON |

---

## 7. Procedure

### Step 1: Gather Project Context
Collect from the user or ToR: road name, country, responsible authority, road function, terrain, and any available traffic data. Note what is provided vs. what must be assumed.

### Step 2: Load Country Module
Identify the jurisdiction. Load the corresponding module from `modules/`. If no module exists, flag as escalation and use the closest available module.

### Step 3: Select Design Standard
Apply the country module's institutional logic (Section M.3.1). Identify the primary standard and any secondary references.

### Step 4: Classify Terrain
Use provided terrain class, or apply default (Rolling). Flag if assumed.

### Step 5: Determine Design-Year AADT
Use provided value, or project from current AADT using growth rate and design period. Apply country module defaults (Section M.4) for any missing inputs. Flag all assumptions.

### Step 6: Assign Road Class
Look up in country module's classification system (Section M.2.3). Cross-check traffic-based and function-based classification.

### Step 7: Determine Design Speed
From road class + terrain in country module's design speed table (Section M.2.1). Apply adjustments for urban context or constraints.

### Step 8: Confirm Design Vehicle and Design Period
Per country module logic (Sections M.3.1 and M.4).

### Step 9: Run Validation
Execute universal checks (Section 4) and country-specific checks (Module Section M.5).

### Step 10: Check Escalation Triggers
Scan universal triggers (Section 5) and country-specific triggers (Module Section M.6).

### Step 11: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
DESIGN STANDARDS SELECTION — [Road Name / Project]
Country/Jurisdiction: [country]
Date: [YYYY-MM-DD]
============================================================

PROJECT CONTEXT
---------------
Road Name:              [name]
Country:                [country]
Responsible Authority:  [authority or "Not specified"]
Road Function:          [function]
Urban/Rural:            [classification]
Funding Source:         [source or "Not specified"]

SELECTED STANDARD
-----------------
Primary Standard:       [standard name and edition]
Secondary Reference:    [if any]
Basis for Selection:    [brief rationale]

TERRAIN
-------
Terrain Class:          [Flat / Rolling / Mountainous / Escarpment]
Basis:                  [From survey / DEM / user input / assumed]

TRAFFIC
-------
Current AADT:           [X] vpd ([year]) — Source: [source]
Growth Rate:            [X]% p.a. — Source: [source]
Design Period:          [X] years
Design Year:            [year]
Design Year AADT:       [X] vpd

CLASSIFICATION
--------------
Road Class:             [class per selected standard]
Design Speed:           [X] km/h
Design Vehicle:         [vehicle type]

NOTES
-----
[Any relevant notes]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with ⚠️ flags]

VALIDATION
----------
[Universal checks — ✅ or ❌]
[Country-specific checks — ✅ or ❌]

ESCALATION FLAGS
----------------
[🔺 flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN — FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

See country modules for country-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Urban road classification (requires separate standards). Stage construction / phased upgrading. Expressway/motorway access control classification.
- **Simplifications:** Growth rate is constant over design period. For major projects, use detailed traffic forecasts.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, Rwanda, South Africa, Nigeria, Ghana, Republic of Ireland (uses DMRB with NRA amendments)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-17 | AI draft | Initial draft (monolithic, all countries in one file) |
| 0.2 | 2026-03-17 | AI draft | Refactored to core + country module architecture |
