---
name: "pavement-material-specs"
description: "Use when specifying material requirements for pavement layers (base, sub-base, selected fill, wearing course). Consumes layer types from Skill #21 (MoWT Catalogue) or Skill #22 (AASHTO 93). Links to Skill #9 (Material Testing) for test methods and Skill #28 (Material Suitability) for source assessment."
---

# Pavement Material Specifications

> **Skill ID:** 24
> **Domain:** Pavement Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Specify material quality requirements for each pavement layer identified by the design method skills (Skills #21-23). This skill translates the generic layer descriptions from the design catalogue (e.g., "granular base G80") into detailed material specifications: strength (CBR or UCS), grading, plasticity, compaction standard, and other quality requirements. It also covers gravel wearing course specifications for unsealed roads.

## When to Use This Skill

- **Use when:** A pavement structure has been selected (from Skill #21, #22, or #23) and detailed material specifications are needed for each layer. Also when assessing whether available materials meet the design requirements.
- **Do not use when:** No pavement structure has been selected yet (use Skills #21-23 first). Not for material source identification (use Skill #28 when available).
- **Prerequisite skills:** Skill #21, #22, or #23 (pavement structure design) for layer types. Skill #9 (Material Testing) for interpreting test results against specifications.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Material strength classification:** Pavement materials are classified by their strength, measured as soaked CBR for unbound materials or UCS for cemented materials. The classification determines which layers the material can be used for. Higher-traffic roads require higher-quality materials.

**Grading requirements:** The particle size distribution of pavement materials affects their load-bearing capacity, compactability, permeability, and durability. Well-graded materials (continuous distribution of particle sizes) generally perform better than gap-graded or uniformly-graded materials.

**Plasticity limits:** The Plasticity Index (PI) and Liquid Limit (LL) of the fine fraction affect moisture sensitivity, shrinkage, and long-term durability. Lower PI is generally preferred for base and subbase materials (less moisture-sensitive).

**Compaction standards:** Different layers require different compaction standards. Base layers typically require Modified AASHTO (heavy compaction) while subgrade CBR is determined at Standard Proctor density. Specifying the wrong compaction standard for testing leads to incorrect strength assessment.

**Cemented materials:** Cement, lime, or bitumen emulsion treatment can upgrade locally available materials to meet specification requirements. UCS (Unconfined Compressive Strength) is the key strength parameter, with upper AND lower bounds specified to minimise cracking.

### 1.2 Universal Formulas

No universal formulas -- specifications are standard-specific lookup values.

### 1.3 Figures & Diagrams

**Grading envelope:** A plot of particle size (x-axis, log scale) vs percentage passing (y-axis, linear). The specification defines upper and lower bounds that the material grading must fall within.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Identify pavement layers from design
  |-- From Skill #21/22/23: layer types and material codes
  +-- Load country module for specifications

Step 2: For each layer, look up material specification
  --> Reference JSON: tables/uganda_material_specifications.json
  |-- Strength requirement (CBR or UCS)
  |-- Grading requirements
  |-- Plasticity limits (PI, LL)
  |-- Compaction standard and density requirement
  +-- Any special requirements (durability, etc.)

Step 3: Check available materials against specifications
  |-- Compare test results (from Skill #9) against requirements
  |-- Identify any shortfalls
  +-- Consider treatment options if materials don't meet specs

Step 4: Specify treatment if needed
  |-- Cement stabilisation for strength/PI improvement
  |-- Lime treatment for PI reduction
  |-- Mechanical modification (blending)
  +-- Reference detailed treatment guidance

Step 5: Validate and produce output
```

### 2.2 Professional Judgment (Universal)

**Specifications are minimum requirements, not targets.** Materials exceeding the minimum CBR, with better grading, and lower PI will generally perform better and last longer.

**Material availability drives practical decisions.** In many locations, the ideal specification material is not available locally. Using locally available materials with appropriate treatment is often more economical than importing better materials from distant sources.

**The distinction between Modified AASHTO and Standard Proctor compaction is critical.** CBR results differ significantly depending on the compaction standard used for specimen preparation. Always verify which standard applies.

### 2.3 Common Errors

1. **Using Standard Proctor CBR for base material assessment when Modified AASHTO is specified.** Base materials are assessed at Modified AASHTO density.
2. **Ignoring the upper UCS bound for cemented materials.** Too-high cement content causes wide reflective cracks that are worse than the problem being solved.
3. **Applying temperate-climate PI limits in tropical conditions.** Tropical laterite gravels often have higher PI than would be acceptable in temperate climates but perform well in tropical conditions.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Compaction std (base) | Modified AASHTO | Not specified | No flag | Standard for base/subbase |
| Compaction std (subgrade) | Standard Proctor | Not specified | No flag | Per MoWT Table 3.2 |
| CBR test condition | Soaked | Not specified | ASSUMED: Soaked CBR (conservative) | Standard for most conditions |

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Base CBR | 60 | 150 | % | Warn if < 80 (below G80); reject if < 30 |
| Subbase CBR | 20 | 100 | % | Warn if < 30 (below G30) |
| PI (base) | 0 | 6 | -- | Warn if > 6 (exceeds spec for most base materials) |
| UCS (cemented base) | 0.5 | 5.0 | MPa | Warn if outside 1.5-3.0 range for C1 |

### 4.2 Consistency Checks

- **Layer specification vs design:** Verify that the specified material matches what the pavement design requires.
- **Compaction standard:** Verify correct compaction standard used for each layer's CBR.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Available material CBR < specification | Material doesn't meet requirements | SENIOR REVIEW -- Material treatment or alternative source needed. |
| PI exceeds specification limit | Moisture sensitivity concern | NOTE -- Consider lime treatment to reduce PI. |
| No test data available | Cannot verify specification compliance | SENIOR REVIEW -- Material testing required before construction. |

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Layer types | list | -- | Yes | Skill #21/22/23 | Material codes from pavement design |
| Traffic class | category | T1-T8 | No | Skill #5 | Influences specification stringency |
| Material test results | table | various | No | Skill #9 | For compliance checking |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Material specifications | table | various | Skill #28, User | Detailed specs per layer |
| Compliance assessment | text | -- | User | Pass/fail per material parameter |
| Treatment recommendations | text | -- | User | If materials don't meet specs |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT material specifications | Markdown |
| `modules/uk.md` | UK SHW Series 700/800 comparison | Markdown |
| `tables/uganda_material_specifications.json` | MoWT Appendix A and Table 5.1 specifications | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify jurisdiction. Load material specifications.

### Step 2: Identify Layer Requirements
From the pavement design output (Skill #21/22/23), list each layer and its material code.

### Step 3: Look Up Specifications
For each layer, retrieve the full specification from the country module and JSON tables.

### Step 4: Assess Available Materials (if test data provided)
Compare test results from Skill #9 against specifications. Identify compliance and shortfalls.

### Step 5: Recommend Treatment (if needed)
Where materials don't meet specifications, recommend appropriate treatment options.

### Step 6: Validate and Produce Output

---

## 8. Output Format

```
============================================================
PAVEMENT MATERIAL SPECIFICATIONS -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [specification standard]
Date: [YYYY-MM-DD]
============================================================

PAVEMENT STRUCTURE (from design)
--------------------------------
[Layer table from Skill #21/22/23]

MATERIAL SPECIFICATIONS
-----------------------
Layer: [name]
  Material code:       [code]
  Strength:            [CBR/UCS requirement]
  Compaction:          [standard and density %]
  Grading:             [reference to grading envelope]
  Plasticity:          [PI and LL limits]
  Special:             [any special requirements]

[Repeat for each layer]

COMPLIANCE ASSESSMENT (if test data provided)
---------------------------------------------
[Pass/fail for each parameter]

TREATMENT RECOMMENDATIONS
-------------------------
[If needed]

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

- **Not covered:** Detailed mix design for asphalt concrete (specialist function). Material source identification and borrow pit assessment (Skill #28). Construction quality control procedures.
- **Simplifications:** Grading envelopes referenced but not fully reproduced. Treatment design (cement content, lime content) is guidance-level, not detailed mix design.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with MoWT Table 5.1 and Appendix A specifications |
