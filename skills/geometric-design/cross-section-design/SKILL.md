---
name: "cross-section-design"
description: "Use when determining lane widths, shoulder widths, medians, side slopes, crossfall, clear zones, or drainage channel dimensions for a road cross-section. Requires road class and terrain from Skill #13 (Design Standards Selection). Outputs feed into Skill #19 (Intersection Design) and Skill #20 (NMT Facilities)."
---

# Cross-Section Design

> **Skill ID:** 17
> **Domain:** Geometric Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Specify the cross-section elements of a road given its design class, terrain, and urban/rural context. Cross-section design determines the physical width and shape of the road -- lane widths, shoulder widths, medians, crossfall, side slopes, clear zones, drainage channels, and right-of-way width. These dimensions define the space available for vehicles, pedestrians, cyclists, and drainage, and must be consistent with the road's functional classification and design speed.

## When to Use This Skill

- **Use when:** Determining the typical cross-section for a new road or road improvement project. Required after Skill #13 (Design Standards Selection) has established the road class, terrain, and urban/rural context.
- **Do not use when:** The cross-section is fully constrained by an existing road and no widening or geometric changes are proposed (maintenance/resurfacing only). Detailed drainage channel design (dimensions, capacity, lining) belongs to Skill #30 (Ditch & Channel Design).
- **Prerequisite skills:** Skill #13 (Design Standards Selection) -- must have road class, terrain, and urban/rural context. Skill #14 (Horizontal Alignment) -- superelevation on curves modifies the crossfall. Skill #15 (Vertical Alignment) -- gradient affects drainage.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Lane Width:** The width of a single traffic lane. Standard lane widths range from 2.8m (low-volume gravel roads) to 3.65m (high-speed dual carriageways). Lane width is determined by design vehicle width, traffic speed, and road class. Wider lanes provide greater safety margins but increase construction cost and right-of-way requirements.

**Shoulder Width:** The paved or unpaved area immediately adjacent to the carriageway. Shoulders provide space for stopped vehicles, lateral support for the pavement, and contribute to drainage. Shoulder width varies from 1.2m (low-volume roads) to 2.5m (high-speed arterials) or more.

**Carriageway Width:** The total paved width available for traffic, typically equal to the sum of all lane widths (excluding shoulders). On single carriageway roads: carriageway = number of lanes x lane width. On dual carriageways: each carriageway is measured separately.

**Roadway Width:** The total width from shoulder edge to shoulder edge, including carriageway and shoulders. This is the usable road surface width.

**Crossfall (Camber):** The transverse slope of the road surface, designed to shed water from the carriageway. Normal crossfall on tangent sections is typically 2.5% for paved roads and 4.0% for gravel roads. On curves, crossfall is modified by superelevation (Skill #14).

**Median:** The central reserve separating opposing traffic flows on a dual carriageway. Medians prevent head-on collisions, provide space for right-turn storage, and can accommodate services. Minimum widths range from 1.2m (absolute) to 5.0m (desirable for right-turn lanes).

**Side Slopes:** The slopes from the edge of the roadway down to the natural ground or drainage ditch. Side slopes are expressed as horizontal:vertical ratio (e.g., 1:1.5 means 1m vertical for every 1.5m horizontal). Steeper slopes save land but increase erosion risk and are less forgiving of errant vehicles.

**Clear Zone:** The unobstructed area beyond the edge of the carriageway that allows an errant vehicle to recover. Clear zone width depends on traffic speed, traffic volume, and roadside geometry. Fixed objects (poles, trees, bridge piers) within the clear zone are a hazard.

**Drainage Channels:** V-shaped or trapezoidal side ditches that collect and convey surface water from the road and adjacent areas. The cross-section defines the channel shape and position; detailed hydraulic design of channels belongs to Skill #30 (Ditch & Channel Design).

**Right-of-Way (Road Reserve):** The total width of land reserved for the road, including the roadway, shoulders, drainage, side slopes, and any buffer zones. Right-of-way width is set by national standards based on road class.

**Rural vs Urban/Town Sections (Critical Distinction):** Rural cross-sections typically have shoulders, side ditches, and no footways. Urban/town cross-sections replace shoulders with outer lanes, add kerbed footways, and may include medians or cycle lanes. Applying a rural cross-section to a town context omits critical safety elements (footways, outer lanes) -- this is a common error.

### 1.2 Universal Formulas

Cross-section design is primarily table-based rather than formula-based. The key parameters are looked up from standards based on road class, terrain, and context. However, the following relationships apply universally:

**Carriageway width (single carriageway):**
```
Cw = n x Lw
```
Where: Cw = carriageway width (m), n = number of lanes, Lw = lane width (m).

**Roadway width (simple case):**
```
RWw = Cw + 2 x Sw
```
Where: RWw = roadway width (m), Sw = shoulder width (m).

**Town section roadway width (with outer lanes and footways):**
```
RWw = Cw + 2 x OLw + 2 x FWw
```
Where: OLw = outer lane width (m), FWw = footway width (m).

**Crossfall drainage capacity:** Higher crossfall sheds water faster but increases the differential elevation across the carriageway. For a two-lane road with crossfall c% and carriageway width Cw:
```
Differential elevation = c/100 x Cw/2 (m)
```
At 2.5% crossfall on a 7.0m carriageway: 0.025 x 3.5 = 0.088m (88mm).

### 1.3 Figures & Diagrams

**Typical rural cross-section:** Symmetric about the centreline. From centre outward: half-carriageway (lanes sloping at crossfall), shoulder (continuing or steepening the slope), side slope (1:1.5 to 1:4), drainage ditch (V-shaped or trapezoidal), back slope, and natural ground. The road reserve boundary is beyond the back slope.

**Typical town cross-section:** From centre outward: half-carriageway, outer lane (for slow traffic, parking, or access), raised kerbed footway. No side ditch -- drainage via kerbed channels to underground drainage. Footways are elevated 100-150mm above carriageway.

**Dual carriageway cross-section:** Central median (with or without barrier), two carriageways each with their own lanes and outer elements, shoulders or outer lanes depending on context.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  +-- Road class (from Skill #13)
  +-- Terrain (from Skill #13)
  +-- Urban/rural context (from Skill #13)
  +-- Design speed (from Skill #13)
  +-- Load country module for standard-specific tables

Step 2: Determine context type
  +-- Is this a rural/normal section? --> Use rural cross-section parameters
  +-- Is this a town/urban section? --> Use town cross-section parameters
  +-- Is this a dual carriageway (e.g., Class Ia)? --> Use dual carriageway parameters
  NOTE: Getting this wrong is a critical error (see Pitfall #3 in RESEARCH)

Step 3: Look up cross-section parameters
  --> See country module, Section M.2 for design tables
  +-- Lane width
  +-- Shoulder width (rural) or outer lane width (town)
  +-- Carriageway width
  +-- Roadway width
  +-- Footway width (town sections)
  +-- Road reserve width

Step 4: Determine crossfall
  --> See country module for normal crossfall values
  +-- Paved road --> typically 2.5%
  +-- Gravel road --> typically 4.0%
  +-- On curves --> modified by superelevation (Skill #14)

Step 5: Determine side slopes
  +-- Based on fill height, material, and cut/fill context
  --> See country module for typical values

Step 6: Check clear zone requirements
  +-- Based on design speed and roadside conditions
  --> See country module for clear zone tables

Step 7: Identify median requirements (if dual carriageway)
  +-- Minimum width for road class
  +-- Width for right-turn lane provision
  --> See country module for median guidance

Step 8: Note drainage channel requirements
  +-- V-shaped or trapezoidal ditch position and general dimensions
  +-- Detailed hydraulic design --> Skill #30 (Ditch & Channel Design)

Step 9: Run validation (Section 4 + country module Section M.5)

Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Cross-section must match the functional context.** A road passing through a trading centre or town must use the town cross-section, not the rural one. Town sections include footways and outer lanes that protect pedestrians -- omitting these in populated areas is a safety failure, not just a standards compliance issue.

**Gravel road cross-sections differ from paved.** Gravel roads have steeper crossfall (4% vs 2.5%) to compensate for less efficient surface drainage, and generally narrower lane widths. Some gravel classes (e.g., MoWT Class C) are single-lane roads with a 4.0m carriageway -- this is intentional for very low traffic volumes, not an error.

**Right-of-way width sets long-term constraints.** Once a road reserve is established and land is allocated, it is difficult and expensive to widen. Selecting an adequate road reserve width at the design stage is critical, even if the initial construction uses only part of the reserve.

**Design vehicle width informs lane width.** Lane widths must accommodate the widest design vehicle (Skill #18) plus a margin for lateral clearance at the design speed. On sharp curves, additional widening may be needed (Skill #14).

### 2.3 Common Errors

1. **Applying rural cross-section to town context.** The most common error. Rural sections lack footways and outer lanes, creating a dangerous environment for pedestrians in populated areas.
2. **Confusing carriageway width with roadway width.** Carriageway is the traffic lanes only. Roadway includes shoulders. Reports must be clear about which dimension is being quoted.
3. **Ignoring single-lane gravel roads.** Class C gravel roads in MoWT are single-lane (1 lane, 4.0m). Incorrectly assuming 2 lanes produces the wrong carriageway width.
4. **Not checking clear zone requirements.** Cross-section design must include the clear zone. Placing fixed objects (sign posts, utility poles) within the clear zone is a safety hazard.
5. **Applying rural crossfall to gravel roads.** Gravel roads require 4.0% crossfall, not 2.5%. Using the paved road value on a gravel road leads to ponding and surface deterioration.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Normal crossfall (paved) | 2.5% | Not specified, paved road | WARNING ASSUMED: Crossfall 2.5% (standard for paved roads) | Common across MoWT, AASHTO, DMRB |
| Normal crossfall (gravel) | 4.0% | Not specified, gravel road | WARNING ASSUMED: Crossfall 4.0% (standard for gravel roads) | Higher crossfall for unpaved surface drainage |
| Side slope (fill) | 1:2 (H:V) | Not specified | WARNING ASSUMED: Side slope 1:2 (typical fill slope) | Conservative value; check material and height |
| Context | Rural | Not specified | WARNING ASSUMED: Rural context (no town section data provided) | Rural is the default but may be incorrect |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Never assume rural context without checking.** If the road passes through a populated area, use town cross-section parameters.
3. **Conservative direction:** When in doubt, use the wider cross-section (more forgiving of errors, safer for all road users).

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Lane width | 2.5 | 4.0 | m | Warn if outside range; reject if < 2.5 |
| Shoulder width | 0.5 | 3.0 | m | Warn if outside range |
| Crossfall (paved) | 1.5 | 5.0 | % | Warn if outside 2.0-3.0% typical range |
| Crossfall (gravel) | 3.0 | 6.0 | % | Warn if outside 3.5-5.0% typical range |
| Footway width | 1.0 | 5.0 | m | Warn if < 1.8 (two-person passing) |
| Road reserve width | 10 | 60 | m | Warn if outside range for road class |

### 4.2 Consistency Checks

- **Lane width vs design class:** Verify lane width matches the standard for the assigned design class. A Class Ib road should not have Class III lane widths.
- **Context vs cross-section type:** Verify that town sections are used in urban areas and rural sections in rural areas. Flag any mismatch.
- **Carriageway width vs lane count:** Verify Cw = n x Lw (within rounding tolerance).
- **Gravel vs paved crossfall:** Verify correct crossfall for road surface type.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. Verify all cross-section parameters. |
| Cross-section does not match design class | Fundamental design error | SENIOR REVIEW -- Cross-section parameters [specified] do not match requirements for Design Class [X]. |
| Rural cross-section proposed for town context | Pedestrian safety risk | SENIOR REVIEW -- Rural cross-section lacks footways. Road passes through [populated area]. Town cross-section required. |
| Lane width below standard minimum for design class | Capacity and safety concern | SENIOR REVIEW -- Lane width [X]m is below the minimum [Y]m for Design Class [Z]. |

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
| Road class | category | --- | Yes | Skill #13 | Determines which cross-section parameters to use |
| Terrain | category | --- | Yes | Skill #13 | Context for side slope and drainage decisions |
| Urban/rural context | category | --- | Yes | Skill #13 | Determines rural vs town cross-section type |
| Design speed | number | km/h | Yes | Skill #13 | Affects clear zone requirements |
| Country/jurisdiction | text | --- | Yes | User | Determines which country module to load |
| Superelevation (on curves) | number | % | No | Skill #14 | Modifies crossfall on curved sections |
| Gradient | number | % | No | Skill #15 | Affects drainage design requirements |
| Design vehicle width | number | m | No | Skill #18 | Design vehicle widths inform lane width adequacy -- Skill #18 provides vehicle dimensions |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Lane width | number | m | Skill #19, User | Lane width for the design class |
| Shoulder width | number | m | User | Shoulder width for the design class |
| Carriageway width | number | m | Skill #19, User | Total carriageway width |
| Roadway width | number | m | User | Total roadway width including shoulders |
| Crossfall | number | % | User | Normal crossfall for the surface type |
| Road reserve width | number | m | User | Total right-of-way width |
| Footway width | number | m | Skill #20 | Footway width (town sections only) |
| Clear zone | number | m | User | Required clear zone for design speed |
| Median width | number | m | User | Median width (dual carriageway only) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda cross-section standards (MoWT) | Markdown |
| `modules/uk.md` | UK cross-section standards (CD 109/CD 127) | Markdown |
| `tables/uganda_cross_sections.json` | Cross-section parameters by design class and context | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: Confirm Design Inputs
Receive road class, terrain, urban/rural context, and design speed from Skill #13. Confirm all required inputs are available.

### Step 3: Determine Cross-Section Type
Based on urban/rural context and road class, select the correct cross-section type: rural/normal, town paved, town gravel, or dual carriageway.

### Step 4: Look Up Cross-Section Parameters
From the country module tables or JSON data file, retrieve all cross-section parameters for the determined type and design class.

### Step 5: Determine Crossfall
Apply the correct crossfall for the surface type (paved or gravel). Note any curve-related superelevation modifications from Skill #14.

### Step 6: Determine Side Slopes and Clear Zone
From the country module, determine appropriate side slopes and clear zone requirements based on design speed.

### Step 7: Check Median Requirements
If a dual carriageway, determine median width requirements and any provision for right-turn lanes.

### Step 8: Run Validation
All universal + country-specific checks from Section 4 and the country module.

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
CROSS-SECTION DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard]
Design Class: [class]
Context: [rural/town/dual carriageway]
Date: [YYYY-MM-DD]
============================================================

DESIGN PARAMETERS
-----------------
Road class:                  [class]
Terrain:                     [terrain]
Context:                     [rural / town / dual carriageway]
Design speed:                [X] km/h
Surface type:                [paved / gravel]

CROSS-SECTION DIMENSIONS
-------------------------
Road reserve width:          [X] m
Roadway width:               [X] m
Carriageway width:           [X] m
Number of lanes:             [N]
Lane width:                  [X] m
Shoulder width:              [X] m [or Outer lane: X m]
Footway width:               [X] m [town sections only]
Median width:                [X] m [dual carriageway only]

SLOPES AND DRAINAGE
--------------------
Normal crossfall:            [X]%
Side slope:                  1:[X]
Clear zone (desired):        [X] m
Clear zone (minimum):        [X] m

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with WARNING flags]

VALIDATION
----------
[Universal checks -- PASS or FAIL]
[Country-specific checks -- PASS or FAIL]

ESCALATION FLAGS
----------------
[SENIOR REVIEW items or "None"]

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

- **Not covered:** Detailed drainage channel design (hydraulic capacity, lining, gradient) -- this belongs to Skill #30 (Ditch & Channel Design). Pavement layer thicknesses within the cross-section (Skill #21). Curve widening on horizontal curves (Skill #14). Earthworks volumes from cross-sections (Skill #23).
- **Simplifications:** Uses standard typical cross-sections. In practice, cross-sections vary along a road (transitions between rural and town, cut vs fill, bridge approaches). Detailed design requires cross-section drawings at regular intervals.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with YAML frontmatter. Uganda module with MoWT cross-section parameters. UK module with CD 109 carriageway types. |
