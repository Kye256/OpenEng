---
name: "mowt-catalogue"
description: "Use when designing flexible pavement structure using the MoWT catalogue method. Requires cumulative ESAs from Skill #5 (ESA Calculation) and design CBR from Skill #10 (Subgrade Characterization). Outputs feed into Skill #24 (Pavement Material Specifications) for detailed material requirements."
---

# MoWT Catalogue Pavement Design

> **Skill ID:** 21
> **Domain:** Pavement Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Select an appropriate flexible pavement layer configuration from the MoWT design catalogue based on three design inputs: traffic class (from cumulative ESAs), subgrade class (from design CBR), and climate condition (wet or dry). This is an empirical catalogue-based design method -- the engineer selects a pre-designed structure from a comprehensive set of options that have been checked against mechanistic analysis. The method covers both surfaced trunk roads (Vol 3 Part I) and gravel roads (Vol 3 Part III).

## When to Use This Skill

- **Use when:** Designing new flexible pavement structures for roads in Uganda or countries using MoWT/SATCC-based standards. Also use for gravel road design using MoWT Vol 3 Part III.
- **Do not use when:** Design traffic exceeds 30 million ESAs (MoWT catalogue limit -- use AASHTO 93 or other method). Not for rigid pavement design. Not for rehabilitation of existing pavements (use Skill #25).
- **Prerequisite skills:** Skill #5 (ESA Calculation) for design traffic, Skill #10 (Subgrade Characterization) for design CBR and subgrade class, Skill #13 (Design Standards Selection) for method selection.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Catalogue-based design** is an empirical approach where pavement structures have been pre-designed for defined combinations of traffic loading, subgrade strength, and climate conditions. The engineer's task is to correctly classify the inputs and select from the catalogue, not to derive a structure from first principles.

**Traffic classification:** Cumulative design ESAs over the design life are grouped into traffic classes (T1-T8 in MoWT). The class determines the structural demand on the pavement.

**Subgrade classification:** The design CBR (from Skill #10) is mapped to a subgrade class (S1-S6 in MoWT). The class determines the foundation support available.

**Wet/dry determination:** The climate and drainage condition determines whether to use "dry region" charts (D1-D5) or "wet region" charts (W1-W5). This is a critical design decision that must be made BEFORE selecting the chart type.

**Chart type selection:** Within dry or wet catalogues, there are 5 chart types (1-5) distinguished by the base and subbase material combinations: (1) granular/granular, (2) granular/cemented, (3) cemented/cemented, (4) bituminous/granular, (5) bituminous/cemented. The choice depends on available materials, traffic level, and construction capability.

**Gravel road design:** For unsurfaced roads, MoWT Vol 3 Part III provides gravel wearing course thickness design based on traffic volume and subgrade quality, typically 150-250 mm of natural gravel.

### 1.2 Universal Formulas

No formulas -- this is a purely catalogue-based lookup method. The structural adequacy of catalogue structures has been verified against mechanistic analysis methods.

### 1.3 Figures & Diagrams

**Pavement cross-section:** A typical flexible pavement consists of (top to bottom): surfacing (surface dressing or asphalt concrete), base (granular, cemented, or bituminous), subbase (granular or cemented), and optionally a capping/selected layer over the subgrade. The total pavement depth depends on traffic class, subgrade class, and material types.

**CBR cumulative distribution curve:** Used in Skill #10 to determine design CBR. The 10th percentile value from this curve feeds into subgrade classification for this skill.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Design ESAs (from Skill #5)
  |-- Design CBR (from Skill #10)
  |-- Climate/drainage condition (from Skill #11 or user)
  +-- Load country module

Step 2: Determine traffic class
  --> See country module, Section M.2 for class boundaries
  |-- Map design ESAs to traffic class (e.g., T1-T8)
  +-- SENSITIVITY CHECK: If ESA within 15% of class boundary,
      run both classes and report both structures

Step 3: Determine subgrade class
  --> See country module, Section M.2 for class boundaries
  |-- Map design CBR to subgrade class (e.g., S1-S6)
  +-- If CBR at class boundary, use lower class (conservative)

Step 4: Determine wet or dry design condition  *** MUST DO BEFORE Step 5 ***
  --> See country module, Section M.2 for Table 4.1
  |-- Consider: annual rainfall, drainage provision, maintenance level
  |-- Rainfall < 250 mm AND no moisture ingress risk --> Dry
  |-- Rainfall > 500 mm --> almost certainly Wet
  +-- Between 250-500 mm --> Use Table 4.1 matrix (drainage x maintenance x traffic)

Step 5: Select chart type (1-5)
  --> See country module, Section M.2 for Table 5.3
  |-- Based on available materials and traffic level
  |-- Granular base charts (1-2): suitable for all traffic levels with good materials
  |-- Cemented base charts (3): suitable for all traffic levels
  |-- Bituminous base charts (4-5): typical for T3+ traffic
  +-- Consider local material availability and construction capability

Step 6: Look up catalogue structure
  --> Reference JSON: tables/uganda_design_catalogue.json
  |-- Enter selected chart (D1-D5 or W1-W5)
  |-- Find row for traffic class + subgrade class combination
  |-- Read layer materials and thicknesses
  +-- If combination not in catalogue, escalate

Step 7: Check structure against practical considerations
  |-- Section 5 practical factors (terrain, overloading, problem soils)
  |-- Verify materials are available locally
  +-- Consider construction lift thickness limitations (max 200 mm)

Step 8: Run validation and produce output
```

### 2.2 Professional Judgment (Universal)

**The catalogue structure is a starting point, not the final answer.** The engineer should review the selected structure in light of local conditions, material availability, and construction practice. Local knowledge of material performance may justify adjustments.

**Traffic class sensitivity is critical at boundaries.** The T4/T5 boundary at 3 million ESAs is particularly sensitive because it marks the transition where granular base designs may become uneconomical and cemented or bituminous bases should be considered.

**The wet/dry determination has enormous impact.** Wet region structures are substantially thicker than dry equivalents. Getting this wrong in either direction leads to either premature failure (designed dry but conditions are wet) or unnecessary cost (designed wet but conditions are dry).

### 2.3 Common Errors

1. **Skipping the wet/dry check (Table 4.1) before selecting the chart type.** The D/W determination must be made first, then the chart number (1-5) selected. Many designers jump directly to a chart number without checking moisture conditions.
2. **Skipping the chart type selection (Table 5.3).** Going directly from traffic/subgrade class to a specific structure without considering which base/subbase material combination is appropriate.
3. **Using the catalogue beyond its traffic range.** The MoWT catalogue is valid to 30 million ESAs (T8). For higher traffic, use AASHTO 93 or other mechanistic-empirical methods.
4. **Not checking sensitivity when ESA is near a class boundary.** If design ESA is within 15% of a boundary, the forecast uncertainty may push the design into the next class.
5. **Confusing MoWT subgrade classes (S1-S6) with ORN 31 subgrade classes.** Different boundaries -- never cross-reference.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Design life | 15 years | Not specified | ASSUMED: 15-year design life per MoWT Table 2.1 | Standard for most roads |
| Climate condition | Wet | Not specified | ASSUMED: Wet conditions (conservative) | Conservative default for tropical climates |
| Chart type | D1/W1 (granular/granular) | Not specified | ASSUMED: Granular base/subbase chart -- verify material availability | Most common starting point |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** When in doubt, design for wet conditions and use the higher traffic class.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Design ESAs | 100,000 | 30,000,000 | ESAs | Warn if < 0.3M (below T1); reject if > 30M (above T8 -- catalogue limit) |
| Design CBR | 1 | 100 | % | Warn if < 2 (S1 -- improvement essential); reject if > 100 (error) |
| Design life | 10 | 20 | years | Warn if outside MoWT recommended range |

### 4.2 Consistency Checks

- **Traffic class vs ESA value:** Verify the traffic class matches the ESA value per class boundaries.
- **Subgrade class vs CBR value:** Verify the subgrade class matches the CBR value per class boundaries.
- **Chart selection vs climate:** Verify D-chart selected only if dry conditions confirmed, W-chart if wet.
- **Chart type vs traffic level:** Granular base charts (D1/W1) are typically limited to T6; if T7-T8 traffic with granular base, flag for review.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Design ESAs > 30 million | Exceeds MoWT catalogue range | SENIOR REVIEW -- Design traffic exceeds catalogue range. Use AASHTO 93 (Skill #22) or other mechanistic method. |
| Subgrade CBR < 2% (S1) | Below minimum for most catalogue structures | SENIOR REVIEW -- Subgrade improvement essential. Consider lime treatment, removal and replacement, geofabric, or pioneer layer (MoWT Section 5.5). |
| ESA within 15% of class boundary | Sensitivity concern | NOTE -- Design ESA [X] is within 15% of T[Y]/T[Z] boundary. Structures for both classes provided. |
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. |
| Wet/dry condition uncertain | Critical design decision affected | SENIOR REVIEW -- Climate condition unclear. Both wet and dry structures provided for comparison. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Design ESAs | number | ESAs | Yes | Skill #5 | Cumulative design ESAs for the design life |
| Traffic class | category | T1-T8 | No | Skill #5 | If provided, used directly; otherwise calculated from ESAs |
| Design CBR | number | % | Yes | Skill #10 | Design subgrade CBR (10th percentile) |
| Subgrade class | category | S1-S6 | No | Skill #10 | If provided, used directly; otherwise calculated from CBR |
| Climate condition | text | wet/dry | Yes | Skill #11 / User | Determines D or W catalogue selection |
| Drainage provision | text | good/deficient | No | User | Feeds into Table 4.1 wet/dry matrix |
| Maintenance level | text | good/deficient | No | User | Feeds into Table 4.1 wet/dry matrix |
| Road type | text | -- | No | User | For gravel road design variant |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Selected chart | text | D1-D5/W1-W5 | User | Which catalogue chart was used |
| Layer configuration | table | -- | Skill #24, User | Materials and thicknesses for each layer |
| Surfacing type | text | -- | Skill #24 | Surface dressing or asphalt concrete |
| Base material + thickness | text + mm | -- | Skill #24 | Base layer specification |
| Subbase material + thickness | text + mm | -- | Skill #24 | Subbase layer specification |
| Capping material + thickness | text + mm | -- | Skill #24 | Capping layer (if required) |
| Sensitivity flag | boolean | -- | User | Whether ESA is near a class boundary |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT standards and tables | Markdown |
| `modules/uk.md` | UK CD 227 comparison (knowledge-based) | Markdown |
| `tables/uganda_design_catalogue.json` | MoWT Appendix C catalogue structures (D1-D5, W1-W5) | JSON |
| `tables/uganda_traffic_classes.json` | MoWT Table 2.5 traffic class boundaries | JSON |
| `tables/uganda_subgrade_classes.json` | MoWT Table 3.1 subgrade class boundaries | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`.

### Step 2: Classify Traffic
Map design ESAs to traffic class using `tables/uganda_traffic_classes.json`. Check if ESA is within 15% of a class boundary -- if so, flag and run both classes.

### Step 3: Classify Subgrade
Map design CBR to subgrade class using `tables/uganda_subgrade_classes.json`. If CBR falls exactly on a boundary, use the lower class (conservative).

### Step 4: Determine Wet or Dry Condition (MUST DO BEFORE STEP 5)
Check Table 4.1 in the country module. Assess rainfall, drainage provision, and expected maintenance level. Assign D (dry) or W (wet) catalogue set.

### Step 5: Select Chart Type (1-5)
Using Table 5.3 in the country module, select the appropriate chart number based on available base and subbase materials and traffic level.

### Step 6: Look Up Catalogue Structure
From `tables/uganda_design_catalogue.json`, find the selected chart and the row matching the traffic class and subgrade class combination. Extract layer materials and thicknesses.

### Step 7: Check Practical Considerations
Review MoWT Section 5 practical factors. Check material availability, terrain effects, overloading risk, and construction constraints.

### Step 8: Run Validation
Execute all universal + country-specific checks.

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
MOWT CATALOGUE PAVEMENT DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [MoWT Vol 3 Part I / Part III]
Date: [YYYY-MM-DD]
============================================================

DESIGN INPUTS
-------------
Design ESAs:           [X] million
Traffic Class:         [TX]
Design CBR:            [X]%
Subgrade Class:        [SX]
Climate Condition:     [Wet / Dry]
Drainage:              [Good / Deficient]
Maintenance:           [Good / Deficient]

CLASSIFICATION
--------------
Table 4.1 (Wet/Dry):   [D / W] -- [justification]
Table 5.3 (Chart):     [chart number] -- [justification]
Selected Chart:        [D/W][number]

PAVEMENT STRUCTURE
------------------
Layer         Material                    Thickness (mm)
-----------   -------------------------   --------------
Surfacing     [type]                      [thickness or "surface dressing"]
Base          [material code + desc]      [thickness]
Subbase       [material code + desc]      [thickness]
Capping       [material code + desc]      [thickness or "not required"]

Total pavement depth:  [sum] mm

SENSITIVITY CHECK
-----------------
[ESA boundary proximity check result]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
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

- **Not covered:** Rigid pavement design (MoWT Vol 3 Part II). Mechanistic-empirical verification of catalogue structures. Stage construction design. Urban pavement considerations.
- **Simplifications:** Catalogue provides representative structures -- the actual Appendix C has additional options and notes for each combination. Gravel road design is simplified from Vol 3 Part III.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Rwanda, Ethiopia (countries using SATCC-derived standards)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with MoWT Tables 2.5, 3.1, 4.1, 5.3 and Appendix C catalogue extraction |
