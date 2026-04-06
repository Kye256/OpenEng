---
name: "terrain-classification"
description: "Use when classifying terrain along a road corridor into flat, rolling, mountainous, or escarpment based on transverse ground slopes. No prerequisites — can be applied independently. Outputs feed into Skill #13 (Design Standards Selection), Skill #14 (Horizontal Alignment), and Skill #15 (Vertical Alignment)."
---

# Terrain Classification

> **Skill ID:** 11
> **Domain:** Terrain & Survey
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Classify the terrain along a road corridor into standard categories (flat, rolling, mountainous, escarpment) based on transverse ground slopes. Terrain classification determines achievable design speed, maximum gradient, construction cost magnitude, alignment flexibility, and earthworks quantities. It is a fundamental input to design standards selection and all geometric design parameters.

## When to Use This Skill

- **Use when:** Starting a road design project where terrain class has not been established, or when reviewing/confirming a terrain classification provided in project documents.
- **Do not use when:** Terrain class is already confirmed and documented in the project Terms of Reference or feasibility report (in that case, pass directly to Skill #13).
- **Prerequisite skills:** None -- this skill can be applied independently. It produces outputs consumed by Skill #13 (Design Standards Selection), Skill #14 (Horizontal Alignment), and Skill #15 (Vertical Alignment).

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Terrain classification** categorises the landscape a road traverses based on the **transverse slope** of the ground -- that is, the slope measured perpendicular to the road centreline (cross-slope), not the longitudinal gradient along the road.

The standard terrain categories used in most road design manuals are:

- **Flat:** Level or gently undulating country. Few obstacles to road construction. Horizontal and vertical alignment are largely unrestricted. Sight distances are long.
- **Rolling:** Hilly or foothill country where slopes rise and fall moderately. Occasional steep slopes may be encountered. Some restrictions on horizontal and vertical alignment.
- **Mountainous:** Rugged, hilly terrain and river gorges. Definite restrictions on alignment. Long steep grades and limited sight distances. Significant earthworks.
- **Escarpment:** Extreme slopes where standard terrain class design parameters cannot be met. Switchback alignments or side-hill traverses with very large earthwork quantities. Added as a fourth class in some standards (including MoWT Uganda).

**Key distinctions:**

1. **Terrain class describes the general character of the landscape**, not individual features. A "rolling" terrain may contain flat sections and steep sections -- the class describes the predominant character over a meaningful length of road (typically several kilometres).

2. **Transverse slope vs. longitudinal gradient:** Terrain classification is based on cross-slope, not the gradient along the road. A road can have a steep longitudinal gradient in flat terrain (e.g., climbing a river bank) or a gentle gradient in mountainous terrain (following a valley floor).

3. **Terrain class affects design speed, not just construction cost.** Mountainous terrain limits the achievable design speed because tighter curves and steeper grades are unavoidable. The design speed in turn governs all geometric parameters (minimum radius, K-value, sight distance).

4. **Mixed terrain along a route** is common. When a route passes through multiple terrain types, it should be divided into sections of homogeneous terrain class, each designed to the appropriate standard. Transition zones between terrain classes require careful treatment to avoid abrupt changes in design speed.

### 1.2 Universal Formulas

**Transverse slope calculation from contour maps:**

```
Transverse slope (%) = (elevation difference / horizontal distance) x 100
```

Where:
- Elevation difference = vertical distance between contour lines (m)
- Horizontal distance = map distance perpendicular to the road centreline between the same contour lines (m)

**Transverse slope from DEM/DTM data:**

For a DEM with known resolution, the transverse slope at any point can be calculated from the elevation grid perpendicular to the road centreline. GIS tools (e.g., slope raster from DEM) automate this calculation but produce slopes in all directions -- the designer must extract the component perpendicular to the proposed alignment.

### 1.3 Figures & Diagrams

**Terrain classification schematic:** A conceptual cross-section showing how transverse slope is measured. The diagram shows the road centreline with ground rising on one or both sides. The transverse slope is measured from the road to the natural ground over a representative width (typically 1 km either side of the centreline, depending on the standard). Flat terrain shows a near-horizontal cross-section, rolling shows moderate undulation, mountainous shows steep valley sides, and escarpment shows near-vertical terrain requiring switchback alignment.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module from modules/
  -> If no module exists, flag: SENIOR REVIEW and use closest available

Step 2: Gather terrain data
  |- From site visit observations -> qualitative assessment
  |- From contour maps -> measure transverse slopes at regular intervals
  |- From DEM/DTM data -> compute slope raster, extract cross-slopes
  |- From cross-section survey data -> read ground slopes
  |- From project documents -> check if terrain class already stated
  \- If no data available -> Default to Rolling (see Section 3)

Step 3: Determine transverse slope range
  -> Measure or estimate transverse slopes along the route
  -> Sample at regular intervals (every 1-2 km minimum)
  -> Record the range and predominant slope

Step 4: Classify terrain
  -> Apply country module thresholds (Section M.2)
  -> If no country module, use universal thresholds:
       |- Flat: transverse slope around 5% or less
       |- Rolling: transverse slope > 5% to 20%
       |- Mountainous: transverse slope > 20% to 70%
       \- Escarpment: transverse slope > 70%

Step 5: Handle mixed terrain
  |- If route passes through multiple terrain types:
  |    |- Divide route into homogeneous sections (minimum 2-3 km per section)
  |    |- Classify each section independently
  |    |- Identify transition points between terrain classes
  |    \- Flag design speed transitions for Skill #13
  \- If terrain is borderline between two classes:
       |- Use the more conservative (steeper) class
       \- Flag for engineering review

Step 6: Document design implications
  -> For each terrain class, note:
       |- Maximum achievable design speed (from Skill #13/country module)
       |- Expected gradient constraints
       |- Expected earthworks magnitude
       \- Alignment flexibility

Step 7: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Terrain classification is a judgment call, not a precise calculation.** While slope thresholds provide boundaries, real terrain rarely falls neatly into one category. The engineer should consider the overall character of the landscape, not just spot measurements. A terrain with an average transverse slope of 18% (near the rolling/mountainous boundary) should be classified based on the predominant character and the design implications.

**Site visits are invaluable for terrain classification.** Contour maps and DEMs give numerical data, but a site visit reveals features that affect design difficulty -- rock outcrops, deep valleys, unstable slopes, river crossings -- that may not be captured by a simple slope measurement.

**Terrain classification should be conservative for design purposes.** If in doubt, classify as the steeper category. This results in a lower design speed and more conservative geometric parameters, which is safer and less likely to require expensive redesign if conditions are worse than assumed.

**Seasonal conditions can affect terrain assessment.** In tropical regions, dense vegetation during the wet season can obscure terrain features. Aerial survey during the dry season may give a better picture of the ground surface.

### 2.3 Common Errors

1. **Confusing longitudinal gradient with transverse slope.** Terrain classification is based on cross-slope, not the gradient along the road. A road following a valley floor through mountains may have gentle grades but is in mountainous terrain.
2. **Classifying based on a single point rather than a route section.** A single steep escarpment crossing does not make the entire route "escarpment" terrain.
3. **Ignoring terrain class when it differs from expectations.** A road described as "flat" in project documents may actually traverse rolling terrain if the corridor crosses ridges or valleys.
4. **Not classifying by section on long routes.** A 100 km road may pass through three or four terrain types. Using a single classification for the entire route leads to over-design in flat sections and under-design in steep sections.
5. **Using design speed tables without confirming terrain class.** The design speed depends on terrain -- using the wrong terrain class cascades errors through all geometric parameters.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Terrain class | Rolling | No terrain data available | ASSUMED: Rolling terrain (no data -- verify from site visit, contour map, or DEM) | Middle assumption; flat under-designs for grades, mountainous over-constrains alignment |
| Assessment method | Contour map | No DEM or survey data | ASSUMED: Terrain assessed from contour map (DEM or field survey preferred for detailed design) | Contour maps are most commonly available |

### Default Behaviour Rules

1. **Country module defaults take precedence** over these universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** When terrain data is ambiguous, classify as the steeper category (this produces a more conservative design).
4. **Flag for investigation:** Every assumed terrain class includes a recommendation for obtaining actual data (site visit, DEM analysis, or field survey).

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Transverse slope | 0 | 200 | % | Warn if > 100% (vertical or overhanging -- likely measurement error unless cliff face) |
| Section length for classification | 0.5 | 100 | km | Warn if < 2 km (too short for meaningful classification) |

### 4.2 Consistency Checks

- **Terrain class vs. maximum gradient in design tables:** Verify that the terrain class is consistent with the maximum gradients specified for the design class. Flat terrain should have lower maximum gradients than mountainous.
- **Terrain class along route:** If adjacent sections have terrain classes more than one category apart (e.g., flat to mountainous with no rolling transition), flag for review -- this may indicate a classification error or an unusual topographic feature requiring special design treatment.
- **Terrain class vs. DEM data:** If a DEM is available, cross-check the stated terrain class against the computed slope statistics for the corridor.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.4 (if present) in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific thresholds | SENIOR REVIEW -- No country module for [jurisdiction]. Using universal thresholds. Verify terrain classification with local standards. |
| No terrain data available | Classification is assumed, not measured | SENIOR REVIEW -- No terrain data. Terrain assumed as Rolling. Recommend site visit or DEM analysis before proceeding to detailed design. |
| Mixed terrain along route | Design speed transitions needed | NOTE -- Route passes through multiple terrain types. Ensure Skill #13 applies appropriate design speed for each section. |
| Borderline terrain class | Small change in slope changes classification and all downstream parameters | SENIOR REVIEW -- Transverse slopes near class boundary ([X]%). Evaluate both classes for design implications. |
| Escarpment terrain identified | Requires special design treatment beyond standard geometric parameters | SENIOR REVIEW -- Escarpment terrain identified. Standard design parameters may not apply. Consider specialist geotechnical and alignment advice. |

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
| Road name/project | text | -- | Yes | User | Project identification |
| Ground slope data | number | % | No | User / Survey | Measured transverse slopes along route |
| Contour map data | text | -- | No | User / Survey | Description of contours or contour map reference |
| DEM/DTM data | text | -- | No | User / Survey | Digital elevation model data or reference |
| Site observations | text | -- | No | User | Qualitative terrain description from site visit |
| Route length | number | km | No | User | Total route length (for sectional classification) |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| terrain_class | category | -- | Skills #13, #14, #15 | Flat / Rolling / Mountainous / Escarpment |
| terrain_description | text | -- | User | Narrative description of terrain character |
| design_implications | text | -- | Skill #13 | Speed constraints, gradient limits, cost factors arising from terrain |
| section_classification | structured text | -- | Skills #13, #14, #15 | If route has mixed terrain: chainage ranges with terrain class for each section |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT terrain thresholds | Markdown |
| `modules/uk.md` | UK DMRB terrain approach | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with universal thresholds.

### Step 2: Gather Terrain Data
Collect available terrain information: site observations, contour maps, DEM/DTM data, cross-section surveys, project documents. Note the source and quality of data.

### Step 3: Assess Transverse Slopes
From the available data, determine transverse slopes along the route at regular intervals. If quantitative data is not available, use qualitative assessment from site observations or project descriptions.

### Step 4: Classify Terrain
Apply country-specific thresholds (from country module Section M.2) or universal thresholds (Section 2.1, Step 4) to classify the terrain. For routes with mixed terrain, classify by section.

### Step 5: Document Design Implications
For each terrain class identified, note the implications for design speed, gradient, earthworks, and alignment flexibility. Reference the relevant design speed tables from Skill #13 or the country module.

### Step 6: Run Validation
Execute universal checks (Section 4) and country-specific checks (module Section M.5, if present).

### Step 7: Check Escalation Triggers
Scan universal triggers (Section 5) and country-specific triggers (module Section M.6, if present).

### Step 8: Produce Output
Format per Section 8. Include terrain class, description, design implications, and any escalation flags.

---

## 8. Output Format

```
============================================================
TERRAIN CLASSIFICATION -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard and edition -- from country module]
Date: [YYYY-MM-DD]
============================================================

INPUTS
------
Road Name:              [name]
Country:                [country]
Route Length:           [X] km
Data Sources:           [list: site visit / contour map / DEM / survey / assumed]

TERRAIN CLASSIFICATION
----------------------
Overall Terrain Class:  [Flat / Rolling / Mountainous / Escarpment]
Basis:                  [description of how classification was determined]

[If mixed terrain:]
SECTIONAL CLASSIFICATION
------------------------
| Section | Chainage (km) | Terrain Class  | Transverse Slope Range |
|---------|---------------|----------------|------------------------|
| 1       | 0+000 - X+000 | [class]        | [X-Y]%                 |
| 2       | X+000 - Y+000 | [class]        | [X-Y]%                 |

DESIGN IMPLICATIONS
-------------------
- Design speed range:   [X-Y] km/h (depending on design class)
- Maximum gradient:     [X-Y]% (desirable), [X-Y]% (absolute)
- Alignment:            [unrestricted / some restrictions / heavily constrained]
- Earthworks:           [minimal / moderate / significant / extreme]
- Construction cost:    [relative indicator]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any SENIOR REVIEW items, or "None"]

REFERENCES
----------
[Standard clauses cited -- from country module]

============================================================
PRELIMINARY ASSESSMENT -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and field verification required.
============================================================
```

---

## 9. Worked Examples

See country modules for country-specific worked examples:
- **Uganda:** modules/uganda.md
- **UK:** modules/uk.md

---

## 10. Limitations & Future Work

- **Not covered:** Detailed geotechnical terrain assessment (slope stability, rock type). Micro-terrain classification for individual features (cuttings, embankments). Urban terrain classification.
- **Simplifications:** Terrain classification uses broad categories -- the actual design difficulty varies continuously. Classification is based on transverse slope only; other factors (geology, vegetation, drainage) also affect design difficulty.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania, Rwanda, South Africa, Nigeria, Ghana

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft |
