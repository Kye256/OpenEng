---
name: "trl-orn-31"
description: "Use when designing pavement for surfaced low-volume roads using TRL Road Note 31 method. Requires traffic estimate and subgrade assessment. Alternative to Skill #21 (MoWT Catalogue) for community access and district roads. Skill #13 guides method selection."
---

# TRL ORN 31 Pavement Design

> **Skill ID:** 23
> **Domain:** Pavement Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Design pavement structures for surfaced roads using TRL Road Note 31 (5th Edition, December 2022) catalogue method. This method is suited for tropical and sub-tropical regions, particularly for low-volume to medium-volume roads. The 5th Edition extends coverage to 80 million ESAs and includes new chapters on climate resilience and carbon considerations. ORN 31 is used alongside or as an alternative to national design manuals like MoWT.

## When to Use This Skill

- **Use when:** Designing surfaced roads where ORN 31 is specified or appropriate -- particularly community access roads, district roads, or when DCP is the primary investigation tool. Also useful as a cross-check for MoWT catalogue designs.
- **Do not use when:** MoWT catalogue method is mandated and no cross-check is needed. Not for gravel (unsealed) road design -- use Rural Road Note 01 or MoWT Vol 3 Part III.
- **Prerequisite skills:** Skill #5 (ESA Calculation) for traffic estimate, Skill #10 (Subgrade Characterization) for CBR or DCP data.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**ORN 31 design philosophy:** ORN 31 provides a catalogue-based approach specifically developed for tropical and sub-tropical conditions. It recognises the particular challenges of these environments: intense rainfall, variable subgrade moisture, limited construction quality control, overloaded vehicles, and ageing bituminous surfacings.

**Long-life pavement concept:** The 5th Edition emphasises that road failures at subgrade level are rare when foundations are adequate. Design focuses on ensuring the surfacing and base layers are fit for purpose, as these deteriorate first.

**Foundation classes:** ORN 31 uses foundation classes (F1-F4 from Table 8-1) based on subgrade stiffness, which determines whether capping is needed. This is separate from subgrade classification (S1-S6 from Table 3-9).

**Subgrade classes (ORN 31):** Six classes (S1-S6) defined by CBR in Table 3-9. CRITICAL: These have similar but NOT identical boundaries to MoWT S1-S6 classes. ORN 31 S1 includes CBR < 3% while MoWT S1 covers only CBR <= 2%.

**Traffic bands:** ORN 31 5th Edition uses traffic bands T1-T10, extending to 80 MESA. The T1-T8 bands align approximately with MoWT T1-T8 but the extended T9-T10 bands (30-80 MESA) are new.

**DCP-based design:** ORN 31 provides extensive guidance on using Dynamic Cone Penetrometer data for subgrade assessment, making it particularly useful when laboratory CBR testing is limited.

**Climate resilience (Chapter 7):** New in 5th Edition -- guidance on adjusting pavement design for climate change impacts including increased rainfall intensity and temperature.

### 1.2 Universal Formulas

No design formulas -- ORN 31 is catalogue-based. The traffic estimation uses:

```
Total cumulative ESA = (a * 365 * 100) / b * [(1 + b/100)^(c+d) - (1 + b/100)^d]
```

Where a = current average annual daily traffic loading in ESA, b = annual growth rate %, c = design life in years, d = years to start of design life.

### 1.3 Figures & Diagrams

**Pavement design process (Figure 1-1):** The overall process follows: survey routes, assess traffic, measure subgrade strength, select pavement materials, select pavement structures, economic analysis, final selection.

**Pavement layer definitions (Figure 1-2):** Surfacing (wearing course + binder course), roadbase, sub-base, capping/improved subgrade, native subgrade. ORN 31 uses slightly different terminology from MoWT.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Traffic estimate in MESA (from Skill #5 or direct estimate)
  |-- Subgrade CBR or DCP data (from Skill #10)
  +-- Load country module

Step 2: Classify traffic
  --> See country module for traffic band boundaries
  |-- Map cumulative ESAs to traffic band (T1-T10)
  +-- SENSITIVITY CHECK: If ESA within 15% of band boundary, flag

Step 3: Classify subgrade
  --> See country module for ORN 31 Table 3-9 classes
  |-- Map design CBR to subgrade class (S1-S6)
  |-- CRITICAL: Use ORN 31 class boundaries, NOT MoWT boundaries
  +-- If using DCP, apply DCP-CBR correlation with caveat

Step 4: Determine foundation class
  --> Table 8-1: Foundation classes F1-F4
  |-- Based on subgrade stiffness/CBR
  |-- F1-F2: capping required
  +-- F3-F4: capping not required

Step 5: Select catalogue structure
  --> Chapter 9 structure catalogues
  |-- Choose chart type (granular/cemented/bituminous base)
  |-- Look up structure for traffic band + subgrade combination
  +-- Reference JSON: tables/orn31_structure_catalogues.json

Step 6: Consider climate resilience
  --> Chapter 7 guidance
  |-- Assess climate risk factors
  |-- Consider drainage improvements
  +-- Adjust design if necessary

Step 7: Validate and produce output
```

### 2.2 Professional Judgment (Universal)

**ORN 31 vs MoWT:** MoWT Vol 3 Part I was based on earlier ORN 31 editions and SATCC guidelines. The 5th Edition of ORN 31 has evolved significantly with new traffic bands, climate resilience guidance, and updated material specifications. For Uganda projects, MoWT is the primary standard but ORN 31 is valuable as a cross-check or when MoWT guidance is insufficient.

**DCP data quality:** ORN 31 provides extensive DCP guidance, but the DCP-CBR correlation depends on the specific apparatus used. Always document which DCP type and correlation are being used.

**Climate resilience is a design consideration, not a separate step.** The 5th Edition integrates climate thinking throughout rather than treating it as an add-on.

### 2.3 Common Errors

1. **Confusing ORN 31 subgrade classes with MoWT subgrade classes.** The boundary differences (especially S1) can lead to incorrect catalogue entry.
2. **Using 4th Edition traffic classes with 5th Edition catalogues.** The 5th Edition traffic bands differ from earlier editions.
3. **Ignoring foundation class assessment.** Jumping from subgrade class directly to pavement structure without checking if capping is needed.
4. **Not considering the climate resilience chapter.** The 5th Edition's climate guidance is a significant addition that should not be ignored.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Design life | 15-20 years | Not specified | ASSUMED: 15-year design life | ORN 31 recommends 15-20 years |
| Reliability | 90% (secondary), 95% (trunk) | Not specified | ASSUMED: 90% reliability | ORN 31 terminal rut criteria |
| DCP-CBR correlation | TRL standard cone | Not specified | ASSUMED: TRL standard DCP correlation | Verify apparatus type |

### Default Behaviour Rules

1. **Country module defaults take precedence.**
2. **Use ORN 31 Table 3-9 subgrade classes, NOT MoWT Table 3.1.**
3. **Conservative direction:** Use lower subgrade class when CBR is at boundary.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Design ESAs | 100,000 | 80,000,000 | ESAs | ORN 31 5th Ed covers up to 80 MESA |
| Design CBR | 1 | 100 | % | Warn if < 3 (S1 -- capping essential) |

### 4.2 Consistency Checks

- **Subgrade class system:** Verify ORN 31 Table 3-9 classes are used, not MoWT classes.
- **Foundation class:** Verify foundation class is assessed before selecting structure.
- **Traffic band:** Verify traffic band matches ESA value per ORN 31 boundaries.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| CBR < 3% (S1) | Very weak subgrade | SENIOR REVIEW -- Capping essential. Consider subgrade improvement options. |
| Traffic > 80 MESA | Exceeds ORN 31 5th Ed range | SENIOR REVIEW -- Use mechanistic-empirical design method. |
| DCP-only data (no lab CBR) | Correlation uncertainty | NOTE -- DCP-CBR correlation used. Recommend laboratory CBR confirmation for important roads. |
| Subgrade near class boundary | Classification sensitivity | NOTE -- CBR near S[X]/S[Y] boundary. Structures for both classes should be considered. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Continue working** where possible.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Design ESAs | number | ESAs | Yes | Skill #5 | Cumulative design ESAs |
| Design CBR | number | % | Yes | Skill #10 | Design subgrade CBR |
| DCP data | table | mm/blow | No | Skill #10 | Alternative to lab CBR |
| Road classification | text | -- | No | User | Influences reliability selection |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| ORN 31 subgrade class | category | S1-S6 | User | ORN 31 Table 3-9 classification |
| Foundation class | category | F1-F4 | User | Table 8-1 foundation class |
| Layer configuration | table | mm | Skill #24, User | Material + thickness per layer |
| Climate resilience notes | text | -- | User | Chapter 7 considerations |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda application of ORN 31 | Markdown |
| `modules/uk.md` | UK comparison (knowledge-based) | Markdown |
| `tables/orn31_structure_catalogues.json` | Chapter 9 pavement structure catalogues | JSON |
| `tables/orn31_subgrade_classes.json` | Table 3-9 subgrade strength classes | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify jurisdiction. Load ORN 31 tables.

### Step 2: Classify Traffic
Map design ESAs to ORN 31 traffic band (T1-T10).

### Step 3: Classify Subgrade (ORN 31 System)
Map design CBR to ORN 31 Table 3-9 subgrade class. If DCP data, convert using DCP-CBR correlation first.

### Step 4: Determine Foundation Class
Assess Table 8-1 foundation class (F1-F4). Determine if capping is required.

### Step 5: Select Structure from Chapter 9 Catalogue
Choose appropriate chart (granular/cemented/bituminous base). Look up structure.

### Step 6: Consider Climate Resilience
Apply Chapter 7 guidance for drainage, moisture protection, and climate risk.

### Step 7: Validate and Produce Output

---

## 8. Output Format

```
============================================================
TRL ORN 31 PAVEMENT DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: TRL Road Note 31, 5th Edition (December 2022)
Date: [YYYY-MM-DD]
============================================================

DESIGN INPUTS
-------------
Design ESAs:           [X] MESA
Traffic Band:          [TX]
Design CBR:            [X]%
ORN 31 Subgrade Class: [SX] (Table 3-9)
Foundation Class:      [FX] (Table 8-1)

PAVEMENT STRUCTURE
------------------
[Layer table]

CLIMATE RESILIENCE NOTES
------------------------
[Chapter 7 considerations]

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

- **Not covered:** Rigid pavement design (ORN 31 Chapter 10 covers this but not included in this skill). Gravel road design (use Rural Road Note 01). Full mechanistic-empirical design (Appendix A).
- **Simplifications:** Representative catalogue structures extracted -- full Chapter 9 has many more combinations. Climate resilience guidance summarised, not fully embedded.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Mozambique, Vietnam, Zambia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with ORN 31 5th Edition Chapter 9 catalogues and Table 3-9 classes |
