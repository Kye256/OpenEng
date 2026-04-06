---
name: "pavement-rehabilitation"
description: "Use when designing pavement rehabilitation (overlays, reconstruction). Requires existing pavement condition data. Optionally uses Skill #56 (Road Condition Assessment) for detailed condition data; includes simplified condition assessment for standalone use. Outputs feed into Skill #50 (Engineer's Estimate) for costing."
---

# Pavement Rehabilitation

> **Skill ID:** 25
> **Domain:** Pavement Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Determine the appropriate rehabilitation intervention (overlay, partial reconstruction, or full reconstruction) for an existing pavement, and design the overlay thickness when overlaying is appropriate. This skill starts with existing pavement condition assessment, determines whether overlay or reconstruction is needed, and if overlay is appropriate, calculates the required thickness using either the deflection procedure or the effective analysis procedure. The skill is self-contained with a simplified condition assessment so it can be used without Skill #56.

## When to Use This Skill

- **Use when:** An existing paved road requires rehabilitation. Condition data (visual survey, deflection, and/or DCP) is available. Designing overlay thickness or determining if reconstruction is needed.
- **Do not use when:** Designing new pavement structures (use Skills #21-23). Routine maintenance only (pothole patching, crack sealing) -- this skill is for significant structural rehabilitation.
- **Prerequisite skills:** Skill #5 (ESA Calculation) for future design traffic. Skill #56 (Road Condition Assessment, optional) provides detailed condition data. If Skill #56 is not available, use simplified assessment criteria in Section 2.1.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Rehabilitation vs Maintenance:** Maintenance preserves the pavement in its as-constructed condition. Rehabilitation significantly extends the service life -- it includes overlays, pre-overlay repairs, complete removal and reconstruction, or recycling of existing materials.

**Pavement distress types:**
- **Cracking:** Alligator/fatigue cracking (structural), longitudinal/transverse cracking (thermal or reflective), block cracking (ageing)
- **Rutting:** Permanent deformation in wheel paths -- can indicate subgrade failure, base failure, or surfacing deformation
- **Roughness:** Measured by IRI -- reflects overall ride quality and pavement condition
- **Surface defects:** Ravelling, bleeding, patching, potholes

**Deflection testing:** Measures the structural response of the pavement under a standard load. The Benkelman beam (standard in Uganda) or FWD measures maximum deflection. Higher deflection indicates weaker pavement structure. Deflection data feeds directly into overlay thickness design.

**Effective Structural Number (SN_eff):** The structural contribution of an existing pavement, accounting for deterioration. A new pavement has SN = SN_design. After years of traffic, SN_eff < SN_design due to material fatigue, moisture damage, and other deterioration.

**Overlay design principle:** Required overlay thickness = (Required SN for future traffic - Effective SN of existing pavement) / overlay layer coefficient.

### 1.2 Universal Formulas

**Overlay thickness:**
```
h_overlay (mm) = (SN_new - SN_eff) / a1 * 25.4
```
Where:
- SN_new = required structural number for design traffic (from AASHTO equation, Appendix E)
- SN_eff = effective structural number of existing pavement
- a1 = layer coefficient for overlay material (0.35 for AC)

**Representative Rebound Deflection (RRD):**
```
RRD = mean deflection + 2 * standard deviation
```
This is the 97.5th percentile deflection used for design.

### 1.3 Figures & Diagrams

**Rehabilitation decision flowchart (MoWT Figure 1.1):** Data Collection --> Fieldwork (Condition Survey + Deflection Survey) --> Analysis for Rehabilitation (Chapter 3) --> Decision: Overlay Design (Chapter 4) OR Reconstruction/Recycling (Chapter 5) --> Selection of Preferred Alternative (Chapter 6) --> Final Design.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic (with Simplified Condition Assessment)

```
Step 1: Assess existing pavement condition
  |-- Option A: Use Skill #56 output (detailed assessment)
  |-- Option B: Simplified assessment (standalone):
  |   |-- Visual survey: cracking %, rutting depth, patching %
  |   |-- IRI (roughness): Table 2.1 condition rating
  |   |-- Deflection: Benkelman beam or FWD data
  |   +-- DCP: layer strength profiles
  +-- Load country module for thresholds

Step 2: Determine rehabilitation need
  --> See country module for damage quantifiers
  |-- If condition is "good" or "very good" --> Maintenance only, no rehabilitation
  |-- If condition is "fair" --> Consider preventive rehabilitation
  +-- If condition is "poor" or "very poor" --> Rehabilitation required

Step 3: Determine overlay vs reconstruction
  |-- Check reconstruction triggers:
  |   |-- Deflection > 2.0 mm (Benkelman beam)
  |   |-- Cracking > 40% of area
  |   |-- Rutting > 25 mm
  |   |-- Base layer failed (DCP shows CBR < 30%)
  |   +-- Multiple triggers = reconstruction
  |-- If NO reconstruction trigger --> Overlay design (Step 4)
  +-- If reconstruction triggered --> Chapter 5 alternatives

Step 4: Design overlay (if overlay appropriate)
  |-- Option A: Deflection procedure (Section 4.1.2)
  |   |-- Uses deflection data to calculate SN_eff
  |   +-- More reliable when deflection data available
  |-- Option B: Effective analysis procedure (Section 4.1.3)
  |   |-- Uses visual condition + DCP + layer thicknesses
  |   +-- Used when no deflection data available
  +-- Calculate overlay thickness

Step 5: Check minimum practical overlay thickness
  |-- Min 40 mm for AC14, 50 mm for AC20
  +-- If required overlay < minimum, use minimum

Step 6: Validate and produce output
```

### 2.2 Professional Judgment (Universal)

**Assessment must come BEFORE design.** A common error is to jump directly to overlay thickness calculation without first assessing whether the pavement is a candidate for overlay at all. Severely failed pavements need reconstruction, not overlay.

**Deflection data is the most reliable indicator of structural capacity.** Visual assessment alone can be misleading -- a road may look reasonable on the surface but have severely weakened base or subgrade layers.

**Pre-overlay repair is essential.** Before placing an overlay, existing distress must be addressed: patch potholes, seal cracks, level depressions. The overlay is not a substitute for fixing the underlying problem.

### 2.3 Common Errors

1. **Designing overlay without assessing existing condition first.** Must assess whether overlay is appropriate or if reconstruction is needed.
2. **Ignoring deflection variability.** Using mean deflection instead of RRD (mean + 2*SD) under-designs the overlay for the weakest sections.
3. **Not correcting deflections for temperature.** Pavement temperature significantly affects deflection measurements. Must correct to reference temperature.
4. **Overlooking drainage problems.** If the existing pavement is failing due to poor drainage, an overlay alone will not solve the problem. Drainage must be addressed simultaneously.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Overlay material | AC14 | Not specified | ASSUMED: AC14 overlay (standard wearing course) | Most common overlay material |
| Overlay coefficient a1 | 0.35 | Not specified | No flag | Standard for AC per Table 5.2 |
| Deflection reference temp | 35 C | Not specified | ASSUMED: 35 C reference temperature | MoWT standard |
| Design life (overlay) | 10 years | Not specified | ASSUMED: 10-year overlay design life | Common for rehabilitation |

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Mean deflection | 0.1 | 3.0 | mm | Warn if > 2.0 (reconstruction likely) |
| Overlay thickness | 40 | 200 | mm | Warn if < 40 (impractical); warn if > 150 (consider reconstruction) |
| Cracking area | 0 | 100 | % | Warn if > 40 (reconstruction trigger) |
| Rut depth | 0 | 50 | mm | Warn if > 25 (reconstruction trigger) |

### 4.2 Consistency Checks

- **Deflection vs visual condition:** High deflection with low visual distress suggests early-stage structural problem. Low deflection with high visual distress suggests surfacing problem only.
- **Overlay thickness vs cost-effectiveness:** Very thick overlays (>100 mm) may be less economical than reconstruction.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Deflection > 2.0 mm | Structural failure likely | SENIOR REVIEW -- Reconstruction may be needed. Investigate subgrade and base condition. |
| Cracking > 40% AND rutting > 25 mm | Multiple severe distress indicators | SENIOR REVIEW -- Full reconstruction recommended. Overlay inadequate for this level of distress. |
| No deflection data available | Reduced design confidence | NOTE -- Using effective analysis procedure. Recommend deflection survey for more reliable design. |
| Required overlay > 150 mm | Thick overlay may be uneconomical | SENIOR REVIEW -- Consider reconstruction as alternative. Compare costs. |

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Design ESAs (future) | number | ESAs | Yes | Skill #5 | Future traffic for overlay design life |
| Existing condition data | table | various | Yes | Skill #56 or User | Visual, deflection, DCP data |
| Existing pavement structure | table | mm | No | User | Layer types and thicknesses |
| Design CBR (subgrade) | number | % | No | Skill #10 | For SN calculation |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Rehabilitation recommendation | text | -- | User | Overlay vs reconstruction |
| Overlay thickness | number | mm | Skill #50, User | Required AC overlay thickness |
| SN_eff | number | -- | User | Effective structural number |
| Pre-overlay repairs | list | -- | User | Required repairs before overlay |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT Vol 3 Part IV rehabilitation | Markdown |
| `modules/uk.md` | UK HD 30/32 comparison (knowledge-based) | Markdown |
| `tables/uganda_overlay_design.json` | MoWT rehabilitation design tables | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify jurisdiction. Load rehabilitation criteria.

### Step 2: Assess Existing Condition
Compile visual survey data, deflection data, DCP data. Rate overall condition.

### Step 3: Determine Rehabilitation Need
Compare condition against thresholds. Determine if rehabilitation is needed.

### Step 4: Check Reconstruction Triggers
Assess whether the distress level indicates reconstruction rather than overlay.

### Step 5: Design Overlay (if appropriate)
Use deflection procedure (if deflection data available) or effective analysis procedure.

### Step 6: Specify Pre-Overlay Repairs
Identify required preparatory works before overlay placement.

### Step 7: Validate and Produce Output

---

## 8. Output Format

```
============================================================
PAVEMENT REHABILITATION DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [rehabilitation standard]
Date: [YYYY-MM-DD]
============================================================

EXISTING CONDITION
------------------
Cracking:        [X]% of area
Rutting:         [X] mm max depth
Roughness (IRI): [X] (condition: [rating])
Mean deflection: [X] mm (Benkelman beam)
RRD:             [X] mm

REHABILITATION ASSESSMENT
-------------------------
Rehabilitation needed:    [Yes / No]
Intervention type:        [Overlay / Reconstruction / Maintenance only]
Reconstruction triggers:  [List any triggered or "None"]

OVERLAY DESIGN (if applicable)
------------------------------
Design procedure:     [Deflection / Effective Analysis]
Design traffic:       [X] MESA over [Y] years
SN_new (required):    [X]
SN_eff (existing):    [X]
SN_overlay needed:    [X]
Overlay thickness:    [X] mm AC ([type])

PRE-OVERLAY REPAIRS
-------------------
[List of required repairs]

ASSUMPTIONS & DEFAULTS
----------------------
[Flags]

ESCALATION FLAGS
----------------
[Flags or "None"]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
============================================================
```

---

## 9. Worked Examples

See country modules:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Rigid pavement rehabilitation (MoWT Part IV Section 4.2 covers this). Recycling design details. Life-cycle cost analysis for rehabilitation alternatives. Detailed FWD back-analysis.
- **Simplifications:** Simplified condition assessment included for standalone use. Overlay design procedures are guidance-level. Full Appendix E and F methodology requires detailed structural analysis.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with MoWT Vol 3 Part IV deflection and effective analysis procedures |
