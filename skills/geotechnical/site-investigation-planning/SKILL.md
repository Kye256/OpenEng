---
name: "site-investigation-planning"
description: "Use when planning a ground investigation programme for a road project — determining borehole/test pit/DCP methods, spacing, depth, and laboratory testing scope. No prerequisites required. Outputs feed into Skill #8 (Soil Classification) and Skill #9 (Material Testing Interpretation)."
---

# Site Investigation Planning

> **Skill ID:** 7
> **Domain:** Geotechnical Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Plan a ground investigation (GI) programme for a road project, determining the appropriate methods (boreholes, test pits, DCP surveys), their spacing and depth, and the scope of laboratory testing. This skill is the entry point of the geotechnical pipeline -- its outputs feed directly into soil classification (Skill #8) and material testing interpretation (Skill #9).

## When to Use This Skill

- **Use when:** Starting any road project that requires geotechnical data -- new construction, upgrade, or rehabilitation. The investigation plan must be developed before fieldwork begins.
- **Do not use when:** A complete geotechnical investigation report already exists and the task is to interpret results (use Skills #8, #9, #10 instead).
- **Prerequisite skills:** None required. Benefits from: Skill #11 (Terrain Classification) for terrain class, Skill #13 (Design Standards Selection) for road class and design standard.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Ground Investigation (GI)** is the process of determining the subsurface conditions along a road alignment. It provides the data needed for pavement design (subgrade strength), earthworks design (cut/fill stability), and foundation design (structures). A well-planned GI reduces design risk and avoids costly surprises during construction.

**Investigation stages** follow a phased approach:
1. **Desk study:** Review existing geological maps, previous GI reports, aerial photographs, satellite imagery, and published soil maps. Identify likely ground conditions, potential hazards, and areas requiring detailed investigation.
2. **Walkover survey:** Visual inspection of the route to confirm desk study findings, note surface conditions, identify features not visible from maps (springs, soft ground, erosion, rock outcrops).
3. **Preliminary GI:** Limited investigation to confirm ground model and inform design options. Typically wider-spaced boreholes/test pits with basic testing.
4. **Detailed GI:** Comprehensive investigation for final design. Closer spacing, deeper investigation, full laboratory testing programme.

**Investigation methods:**

- **Boreholes (rotary drilling):** Deep investigation (10-50+ m). Provides continuous soil/rock samples. Used for structures, deep cuts, and where detailed stratification is needed. Types: rotary cored (rock), shell and auger (soft ground), cable percussion.
- **Boreholes (cable percussion / shell and auger):** Standard method in soft to firm ground. Depths typically to 20-30 m. Allows standard penetration tests (SPT) at intervals.
- **Test pits / trial trenches:** Shallow investigation (typically 1-4 m deep). Allows direct visual examination of soil layers. Economical for subgrade investigation. Can be excavated by machine or hand.
- **Dynamic Cone Penetrometer (DCP):** Lightweight, portable device that measures soil resistance to penetration (mm/blow). Results correlate with CBR. Widely used in sub-Saharan Africa for rapid subgrade assessment along road alignments.
- **Standard Penetration Test (SPT):** In-situ test performed in boreholes. Measures resistance to driving a standard sampler 300 mm (N-value). Correlates with soil density and bearing capacity.

**Borehole spacing guidance:**
- Spacing depends on ground variability, project stage, and road importance.
- General rule: 200-500 m along alignment for roads, closer in variable ground.
- Tighter spacing at structure locations (bridges, retaining walls, culverts).
- Preliminary stage: wider spacing (500-1000 m).
- Detailed stage: closer spacing (200-500 m), with infill in problem areas.

**Test pit depth requirements:**
- For subgrade investigation: minimum depth below formation level depends on subgrade class (see country modules for specific values).
- General rule: investigate to at least 1.0-1.5 m below proposed formation level, or until competent material is encountered.
- Total thickness of pavement layers plus depth of subgrade meeting design strength should be 800-1000 mm minimum (MoWT guidance).

**DCP survey design:**
- DCP is used as a rapid, economical method for subgrade assessment along road alignments.
- Testing intervals typically 100-200 m along the alignment.
- Penetration depth: 850 mm standard, up to 2 m with extension shafts.
- Results expressed as mm/blow (penetration rate), which correlates with CBR.
- Particularly useful for delineating uniform sections for design and for construction quality control.

### 1.2 Universal Formulas

**DCP-CBR correlation (TRL, widely used):**

```
log10(CBR) = 2.48 - 1.057 * log10(DN)
```

Where:
- CBR = California Bearing Ratio (%)
- DN = DCP penetration rate (mm/blow)
- Valid range: DN = 2-100 mm/blow (approximately CBR 1-200%)

Note: This correlation was developed for the TRL DCP (8 kg hammer, 575 mm drop, 60-degree cone). Different DCP configurations require different correlations. Country modules specify which DCP apparatus and correlation to use.

**Minimum investigation depth:**

```
Required depth = Pavement thickness + Minimum subgrade depth (from Table 3.3 or equivalent)
```

Where the minimum subgrade depth depends on the subgrade class and is specified in the country module.

### 1.3 Figures & Diagrams

**Investigation layout schematic:** The agent should understand that boreholes/test pits are typically laid out along the road centreline with offsets to explore both sides of the alignment. At structure locations, boreholes are positioned at each abutment and pier location. DCP tests are conducted at closer spacing than boreholes/test pits to fill the gaps.

**DCP penetration curve:** A plot of cumulative blows (x-axis) vs depth (y-axis). Changes in gradient indicate layer boundaries. The gradient of each segment gives the penetration rate (mm/blow) for that layer.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Determine project stage
  |-- Feasibility -> Desk study + walkover + limited DCP survey
  |-- Preliminary design -> Preliminary GI (wider spacing, basic testing)
  |-- Detailed design -> Detailed GI (closer spacing, full testing)
  +-- Construction -> Quality control DCP, proof-rolling

Step 3: Assess ground variability from desk study
  |-- Uniform geology (e.g., flat terrain, consistent soil type)
      -> Standard spacing from country module
  |-- Variable geology (e.g., geological boundaries, variable terrain)
      -> Reduce spacing by 30-50%
  |-- Known problem areas (soft ground, expansive soils, rock transitions)
      -> Target investigation to these areas, minimum 2 points per problem area

Step 4: Determine investigation methods
  |-- Subgrade assessment for pavement design
  |   |-- Standard: Test pits + DCP
  |   +-- Complex ground: Add boreholes
  |-- Structure foundations
  |   +-- Boreholes at each foundation location
  |-- Cut/fill slopes
  |   +-- Boreholes or test pits at representative sections
  +-- Material sources (borrow pits, quarries)
      +-- Test pits with sampling for lab testing

Step 5: Determine spacing and depth
  -> See country module, Section M.2 for specific spacing tables
  -> Apply adjustments for ground variability (Step 3)
  -> Ensure minimum depth requirements are met (country module)

Step 6: Define laboratory testing programme
  -> See country module, Section M.2 for required tests
  |-- Standard: Classification (Atterberg, grading), CBR, compaction
  |-- Additional: Chemical tests (sulphates, pH), consolidation, shear strength
  +-- Frequency: Minimum 6 samples per uniform section for CBR classification

Step 7: Run validation and escalation checks
  -> Section 4 + country module Section M.5

Step 8: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**An investigation plan is a risk management exercise.** The goal is not to test every metre of ground, but to develop enough understanding to design safely while staying within budget. Overly sparse investigation leads to design uncertainty and construction surprises. Overly dense investigation wastes money that could be better spent elsewhere.

**Variable ground requires more investigation.** If the desk study shows geological boundaries, fault lines, river crossings, or changes in terrain, the investigation should be concentrated in these areas. Conversely, long sections through uniform geology can tolerate wider spacing.

**DCP surveys are excellent value for money on road projects.** They are fast, cheap, and provide continuous data along the alignment. They should be used as the primary tool for subgrade assessment, supplemented by test pits and lab testing for calibration and material classification.

**Never rely on DCP alone.** DCP provides in-situ CBR estimates but does not provide material classification, Atterberg limits, or grading data. Test pits and lab testing are essential for material characterisation.

**Budget constraints are real.** If the investigation budget is limited, prioritise: (1) DCP survey for subgrade profiling, (2) test pits at representative locations for sampling, (3) boreholes at structure locations. Reduce spacing before reducing depth.

### 2.3 Common Errors

1. **Insufficient investigation depth.** Testing only the top 0.5 m when the pavement structure plus subgrade depth may be 1.0 m or more. Weak material below a thin strong layer leads to pavement failure.
2. **Uniform spacing on variable ground.** Not concentrating investigation at geological transitions, river crossings, or soft ground areas.
3. **No DCP correlation verification.** Using a DCP-CBR correlation developed for a different DCP apparatus.
4. **Inadequate sampling for lab testing.** Fewer than 6 samples per uniform section makes statistical CBR classification unreliable.
5. **Ignoring seasonal effects.** Investigating in the dry season without accounting for wet-season moisture conditions in subgrade strength assessment.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Project stage | Detailed design | Not specified | ASSUMED: Detailed design stage -- confirm with client | Drives the intensity of investigation |
| Borehole spacing | 300 m | No guidance | ASSUMED: 300 m borehole/test pit spacing -- adjust for ground variability | Mid-range for detailed design |
| DCP spacing | 100 m | No guidance | ASSUMED: 100 m DCP test spacing -- adjust for project scale | Standard DCP survey interval |
| Test pit depth | 1.5 m below formation | Not specified | ASSUMED: 1.5 m below formation level -- verify minimum depth from country module | Adequate for most subgrade classes |
| Lab test frequency | 1 per 500 m | Not specified | ASSUMED: 1 set of lab tests per 500 m of alignment -- increase for variable ground | Provides minimum statistical basis |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** When in doubt, investigate more (closer spacing, deeper depth). The cost of under-investigation far exceeds the cost of over-investigation.
4. **Flag for investigation:** Every assumed value includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Borehole spacing | 50 | 2000 | m | Warn if < 100 (excessive cost) or > 1000 (insufficient data) |
| Test pit depth | 0.5 | 6 | m | Reject if < 0.5 m (insufficient). Warn if > 4 m (consider borehole instead) |
| DCP spacing | 20 | 500 | m | Warn if < 50 (excessive) or > 200 (insufficient for subgrade profiling) |
| Number of CBR samples per section | 6 | 50 | count | Warn if < 6 (statistical classification unreliable) |

### 4.2 Consistency Checks

- **Investigation depth vs pavement thickness:** Ensure investigation depth exceeds expected pavement thickness plus minimum subgrade depth.
- **DCP vs lab testing coverage:** Ensure lab testing locations are a subset of DCP locations for correlation.
- **Structure investigation:** Every major structure (bridge, large culvert) must have at least one borehole per foundation location.
- **Spacing vs road length:** Total number of investigation points should be consistent with road length and spacing.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific standards | SENIOR REVIEW -- No country module for [jurisdiction]. Using [closest available]. Verify all standard-specific parameters. |
| Investigation budget below minimum scope | Insufficient data for reliable design | SENIOR REVIEW -- Investigation budget allows only [X] test points over [Y] km. Minimum recommended is [Z]. Risk of design uncertainty is high. |
| Known problem soils (expansive, collapsible, organic) | Require specialist investigation methods | SENIOR REVIEW -- Problem soils identified at [location]. Specialist geotechnical advice recommended. |
| No existing GI data for rehabilitation project | Critical gap for overlay design | SENIOR REVIEW -- No existing GI data for rehabilitation. DCP survey essential before design. |
| Very soft or waterlogged ground | Standard methods may be inadequate | SENIOR REVIEW -- Soft/waterlogged ground at [location]. Consider piezometers, vane tests, or specialist investigation. |

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
| Road alignment | text | -- | Yes | User | Road name, start/end points, length |
| Project stage | category | -- | Yes | User | Feasibility / Preliminary / Detailed design |
| Terrain class | category | -- | No | Skill #11 or User | Flat / Rolling / Mountainous / Escarpment |
| Road class | category | -- | No | Skill #13 or User | Determines investigation intensity |
| Existing GI data | text | -- | No | User | Previous investigation reports, if available |
| Geological information | text | -- | No | User | Published geological maps, soil maps |
| Structure locations | list | chainage | No | User | Bridge, culvert, retaining wall locations |
| Budget constraints | text | -- | No | User | Available investigation budget |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Investigation plan | structured text | -- | Skill #8, Skill #9, User | Complete GI plan: methods, spacing, depth, testing |
| Borehole layout | specification | -- | Fieldwork teams | Borehole locations, depths, sampling requirements |
| Test pit layout | specification | -- | Fieldwork teams | Test pit locations, depths, sampling requirements |
| DCP survey plan | specification | -- | Fieldwork teams, Skill #10 | DCP test locations, spacing, correlation to use |
| Laboratory testing programme | specification | -- | Lab, Skill #8, Skill #9 | List of tests required per sample |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda country module | Markdown |
| `modules/uk.md` | UK country module | Markdown |

---

## 7. Procedure

### Step 1: Gather Project Context
Collect from the user: road alignment, country, project stage, terrain class, road class, any existing data, structure locations, budget constraints. Note what is provided vs assumed.

### Step 2: Load Country Module
Identify jurisdiction. Load the corresponding module from `modules/`. If no module exists, flag as escalation.

### Step 3: Conduct Desk Study Assessment
Review available geological information, existing GI data, published maps. Identify likely ground conditions, potential problem areas, and areas of variability.

### Step 4: Determine Investigation Methods
Select appropriate methods based on project requirements (Step 4 of decision logic). Road subgrade: DCP + test pits. Structures: boreholes. Material sources: test pits.

### Step 5: Determine Spacing and Depth
Apply country module spacing tables, adjusted for ground variability and project stage. Ensure minimum depth requirements are met.

### Step 6: Define Laboratory Testing Programme
Specify required tests (classification, CBR, compaction, grading) and testing frequency per country module requirements.

### Step 7: Run Validation
Execute universal checks (Section 4) and country-specific checks (Module Section M.5).

### Step 8: Check Escalation Triggers
Scan universal triggers (Section 5) and country-specific triggers (Module Section M.6).

### Step 9: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
SITE INVESTIGATION PLAN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard -- from country module]
Date: [YYYY-MM-DD]
============================================================

PROJECT CONTEXT
---------------
Road Name:              [name]
Country:                [country]
Road Length:            [X] km
Project Stage:          [stage]
Road Class:             [class or "Not specified"]
Terrain:                [class or "Not specified"]
Existing GI:            [summary or "None available"]

INVESTIGATION METHODS
---------------------
[Table: Method | Purpose | Spacing | Depth | Quantity]

BOREHOLE LAYOUT
---------------
[Table or list: Location/Chainage | Depth | Purpose | Sampling]

TEST PIT LAYOUT
---------------
[Table or list: Location/Chainage | Depth | Purpose | Sampling]

DCP SURVEY PLAN
---------------
Spacing:                [X] m
Total tests:            [N]
Apparatus:              [type -- from country module]
Correlation:            [equation -- from country module]

LABORATORY TESTING PROGRAMME
----------------------------
[Table: Test | Standard | Frequency | Purpose]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with warning flags]

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

See country modules for country-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Geotechnical investigation for complex structures (deep foundations, tunnels). Investigation for slope stability analysis. Environmental site assessment (contaminated land).
- **Simplifications:** Uniform spacing along alignment assumed as baseline. In practice, spacing varies with ground conditions. DCP-CBR correlation is approximate and apparatus-specific.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, Rwanda, South Africa, Ghana, Nigeria

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
