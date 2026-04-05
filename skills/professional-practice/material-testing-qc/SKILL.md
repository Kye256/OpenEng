---
name: "material-testing-qc"
description: "Use when specifying or verifying material testing requirements during road construction. Covers test types, frequencies, and acceptance criteria for earthworks, pavement layers, concrete, and steel. References Skill #24 (Pavement Material Specs) for specification requirements and Skill #9 (Material Testing Interpretation) for test result analysis. Compose with Skill #54 (Construction Supervision) for quality assurance oversight."
---

# Material Testing & QC

> **Skill ID:** 55
> **Domain:** Professional Practice
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda, Kenya

## Purpose

Specify and verify material testing requirements during road construction, covering the full quality control cycle: material source approval, construction testing at specified frequencies, acceptance criteria assessment, and non-conformance procedures when test results fail. This skill operates at the construction quality control level -- it tells the Materials Engineer and Resident Engineer which tests to run, how often, what results to expect, and what to do when results fail.

## When to Use This Skill

- **Use when:** Specifying material testing requirements for a road construction project, reviewing test results against acceptance criteria, or assessing non-conformance situations during construction.
- **Do not use when:** Designing the pavement structure (use Skills #21-23). Not for specifying material properties for design (use Skill #24 Pavement Material Specs). Not for detailed interpretation of individual test methods (use Skill #9 Material Testing Interpretation).
- **Prerequisite skills:** Skill #24 (Pavement Material Specs) for specification requirements and acceptance criteria values. Skill #9 (Material Testing Interpretation) for understanding individual test methods and results.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Quality Control vs Quality Assurance:** Quality Control (QC) is the Contractor's responsibility -- testing materials and workmanship to verify specification compliance. Quality Assurance (QA) is the Engineer's oversight role -- verifying that the Contractor's QC system is functioning and conducting independent verification tests. This skill covers both perspectives.

**Material Testing Categories:**

**(1) Earthworks -- Subgrade and Fill:**
- **Compaction testing (field density):** Verifies that the placed and compacted material achieves the required percentage of Maximum Dry Density (MDD). Methods include sand replacement method (BS 1377), nuclear density gauge, and water replacement method.
- **Moisture content:** Determines whether the material is being compacted at or near Optimum Moisture Content (OMC). Material compacted too dry or too wet will not achieve the target density.
- **CBR verification:** Confirms that the fill material meets the minimum CBR requirement for its intended layer (e.g., selected fill, subgrade improvement).

**(2) Pavement Sub-base and Base:**
- **Grading analysis (particle size distribution):** Verifies that the material falls within the specified grading envelope. Well-graded material is essential for achieving density and interlock.
- **Atterberg limits (Liquid Limit, Plastic Limit, Plasticity Index):** Controls moisture sensitivity. Base course materials typically require low PI (often PI <= 6) to ensure durability and resistance to moisture damage.
- **CBR (soaked):** The primary strength test for unbound granular materials. Tested at the compaction standard specified for that layer (Modified AASHTO T-180 for base and sub-base).
- **Compaction (field density):** Higher density requirements for base (typically >= 98% MDD Modified AASHTO) than for subgrade (typically >= 95% MDD Standard Proctor).
- **Aggregate durability tests:** Los Angeles Abrasion (LAA), Aggregate Crushing Value (ACV), and 10% Fines Aggregate Crushing Test (10% FACT) assess the mechanical strength and durability of the aggregate. These are source approval tests, not construction frequency tests.

**(3) Bituminous Materials:**
- **Binder tests:** Penetration grade and softening point verify binder quality (tested per delivery batch).
- **Aggregate grading:** Must comply with the job mix formula (JMF) within specified tolerances.
- **Marshall stability (or equivalent):** Measures the resistance of the compacted mix to deformation. Tested on samples of production mix.
- **Core density:** Cores taken from the completed pavement layer verify compaction. Typically required to achieve >= 93% of Marshall density.
- **Surface texture:** Measured using sand patch method or texture depth gauge. Ensures adequate skid resistance.

**(4) Structural Concrete:**
- **Cube/cylinder compressive strength:** The primary quality test. Cubes (150mm) tested at 7 days (for early indication) and 28 days (for compliance). Standard acceptance criteria: 28-day mean >= fck + 1.64s (where s is the standard deviation); no individual result below fck - 3 N/mm2.
- **Slump test (workability):** Measures consistency of fresh concrete. Tested every batch or every 2 m3 (whichever is more frequent).
- **Aggregate grading:** Ensures concrete aggregate meets grading requirements for the specified mix.

**(5) Reinforcement Steel:**
- **Tensile strength and yield strength:** Verified per batch/consignment. High yield steel (Grade 460 or 500) must meet minimum yield strength.
- **Bend test:** Verifies ductility -- the bar must bend without cracking.

**Test Frequency:** The number of tests required per unit of work (e.g., per 500 m3, per 200 m2, per batch). Frequencies are specified in the project specification or referenced standard. Higher-risk layers (base course, surfacing) require more frequent testing than lower-risk layers (subgrade fill).

**Acceptance Criteria:** The pass/fail values from the specification. Two types of criteria commonly apply:
- **Individual test criteria:** Each individual test result must meet the minimum (or maximum) value.
- **Statistical (lot) criteria:** The average of a group of tests (a "lot") must meet a mean requirement, even if individual results are slightly below minimum. This approach recognises natural variability in construction materials.

**Non-Conformance Report (NCR):** A formal document issued when a test result or inspection reveals that the work or material does not comply with the specification. The NCR process:
1. Identify the non-conformance (test failure, visual defect).
2. Document: what failed, against which specification clause, test results, location, quantity affected.
3. Require the Contractor to propose remedial action.
4. Engineer assesses the proposed remedy.
5. Monitor and verify the correction.
6. Close the NCR when compliance is achieved.

**NCR Resolution Options (not just "remove and replace"):**
- **(a) Additional testing:** If the failure may be isolated, test at closer spacing to determine the extent. A single failed test in an otherwise compliant lot may not require removal.
- **(b) Accept with reduced payment:** If the material/work is marginally below specification but still functionally adequate, the Engineer may accept it at a reduced payment rate. This requires the Engineer's determination and is typically used for minor shortfalls (e.g., density at 97% when 98% is required).
- **(c) Remove and replace:** If the material/work is significantly below specification and poses a risk to structural integrity or service life. The cost is borne by the Contractor.
- **(d) Remedial treatment:** In some cases, reworking (e.g., re-compaction, additional cement treatment) can bring the work into compliance without removal.

**Hold Points and Witness Points:**
- **Hold point:** A defined stage in construction where work must STOP until the Engineer inspects and approves. The Contractor cannot proceed past a hold point without the Engineer's written approval. Common hold points: subgrade approval before sub-base, base approval before surfacing.
- **Witness point:** A defined stage where the Engineer is invited to observe (e.g., concrete pour, field density test). Work may proceed if the Engineer does not attend, but the Engineer should be given adequate notice (typically 24 hours).

### 1.2 Universal Formulas

**Field density as percentage of MDD:**
```
Field density (%) = (Field dry density / Maximum Dry Density) x 100
```
Where MDD is determined by the appropriate compaction standard (Standard Proctor or Modified AASHTO).

**Concrete acceptance criteria (statistical):**
```
28-day mean strength >= fck + 1.64 x s
Individual result >= fck - 3 N/mm2

Where:
  fck = characteristic (specified) strength (e.g., 25 N/mm2 for Class 25)
  s = standard deviation of test results (if unknown, use 8 N/mm2 for initial production)
```

**7-day to 28-day strength estimate:**
```
Approximate 28-day strength = 7-day strength / 0.67
```
This is an approximate relationship. A 7-day result of 17 N/mm2 suggests a 28-day strength of approximately 25 N/mm2. This is for early warning only -- compliance is always based on 28-day results.

### 1.3 Figures & Diagrams

**Grading envelope:** A plot of sieve size (x-axis, logarithmic) vs percentage passing (y-axis, linear). The specification defines upper and lower bounds. Material grading must fall within the envelope at all sieve sizes.

**Compaction curve (Proctor curve):** A plot of dry density (y-axis) vs moisture content (x-axis). The curve has a peak -- the Maximum Dry Density (MDD) at the Optimum Moisture Content (OMC). Material compacted dry of optimum or wet of optimum achieves lower density.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Identify the material/layer to be tested
  |-- Earthworks (subgrade, fill) --> Category 1
  |-- Sub-base / base (unbound granular) --> Category 2
  |-- Bituminous surfacing --> Category 3
  |-- Structural concrete --> Category 4
  +-- Reinforcement steel --> Category 5

Step 2: Determine test type and purpose
  |-- (A) Material source approval --> source tests (one-off per source)
  |-- (B) Construction quality control --> production/placement tests (per frequency)
  +-- (C) Non-conformance investigation --> additional targeted testing

Step 3: Load country module for test frequencies and acceptance criteria
  --> Reference JSON: tables/test_frequency_table.json
  --> Cross-reference Skill #24 for specification requirements
```

**QC Decision Tree -- Material Source Approval:**
```
SA1: Contractor submits proposed material source
  --> Require source samples for testing
  --> Test against specification requirements (Skill #24)
    |-- ALL tests pass specification --> APPROVE source
    |   --> Conditions: regular verification testing during construction
    |   --> Document approval with conditions
    |-- ANY test fails specification --> REJECT source
    |   --> Contractor must propose alternative source
    +-- Results borderline --> Consider treatment options
        |-- Cement/lime treatment may bring material to spec
        +-- Blending with other material may improve grading/PI
```

**QC Decision Tree -- Construction Testing:**
```
CT1: Sample and test at specified frequency
  --> Compare results against acceptance criteria

CT2: All results pass?
  |-- YES --> Record results, proceed with work
  +-- NO --> Issue NCR, proceed to CT3

CT3: Assess extent of non-conformance
  |-- Single isolated failure in otherwise compliant lot
  |   --> Additional testing at closer spacing
  |   --> If additional tests pass: likely isolated, accept lot
  |   --> If additional tests also fail: systemic issue, proceed to CT4
  +-- Multiple failures or significant shortfall --> proceed to CT4

CT4: NCR resolution
  |-- (a) Marginal failure (within 2-3% of specification)
  |   --> Consider acceptance with reduced payment (Engineer's determination)
  |-- (b) Significant failure (clearly below specification)
  |   --> Remove and replace, or rework if possible
  +-- (c) Structural concern (concrete, steel)
      --> Engage specialist if needed
      --> Additional testing (cores, load tests) may be required
```

### 2.2 Professional Judgment (Universal)

**A single failed test does not necessarily mean the entire lot is defective.** Construction materials have natural variability. The testing frequency is designed to sample the lot at a representative density. If 9 out of 10 tests pass and 1 fails marginally, the lot may still be acceptable. Additional testing at closer spacing helps determine whether the failure is isolated or systemic.

**Acceptance with reduced payment should be the exception, not the rule.** This option exists for genuinely marginal cases where the shortfall does not significantly affect the functional performance of the layer. It should not be used routinely as a way to avoid requiring proper quality.

**Laboratory results take time -- plan ahead.** Concrete cube results (28-day), CBR (4-day soak), and sent-away samples (2-4 weeks) all have lead times. The Materials Engineer must plan the testing schedule to avoid delays to construction progress.

**Calibration of field equipment is critical.** Nuclear density gauges must be calibrated against laboratory sand replacement tests periodically. DCP correlations with CBR are approximate -- use for screening, not for compliance decisions.

### 2.3 Common Errors

1. **Testing at a lower frequency than specified.** Undertesting exposes the project to risk of accepting defective work. The frequency is a minimum, not a target.
2. **Accepting results without checking against specification limits.** Test reports must be reviewed against the specific acceptance criteria for the layer being tested. A CBR of 72% is excellent for subgrade fill but fails for base course.
3. **Not requiring material source approval before use.** Using unapproved material sources is a significant non-conformance. All sources must be tested and approved before material is placed.
4. **Ignoring statistical requirements.** Some specifications require lot averages (not just individual test results) to meet a mean requirement. Checking only individual results may lead to incorrect acceptance decisions.
5. **Applying the wrong compaction standard.** CBR tested at Standard Proctor density will give different results than CBR at Modified AASHTO density. Using the wrong standard invalidates the result for the intended purpose.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Compaction std (base/subbase) | Modified AASHTO T-180 | Not specified | ASSUMED: Modified AASHTO for base/subbase compaction standard | Industry standard for pavement layers |
| Compaction std (subgrade) | Standard Proctor T-99 | Not specified | ASSUMED: Standard Proctor for subgrade | Standard for earthworks |
| CBR test condition | Soaked (4-day) | Not specified | ASSUMED: Soaked CBR (conservative, worst-case) | Standard practice |
| Concrete cube shape | 150mm cube | Not specified | ASSUMED: 150mm cubes (not cylinders). If cylinders, apply 0.8 conversion factor. | BS standard |
| Field density method | Sand replacement (primary) | Not specified | ASSUMED: Sand replacement as primary method. Nuclear gauge as rapid check. | Standard reference method |

### Default Behaviour Rules

1. **Project specification takes precedence** over any default values or frequencies listed here.
2. **Always verify the compaction standard** -- the most common source of error in material testing.
3. **Conservative approach:** When acceptance criteria are unclear, apply the more stringent requirement.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Base CBR | 80 | 150 | % | Below 80% fails typical base spec. Above 150% is unusual -- verify test. |
| Sub-base CBR | 30 | 100 | % | Below 30% fails typical sub-base spec. |
| Subgrade field density | 90 | 105 | % MDD | Below 90% is very poor. Above 105% is physically unlikely -- check test. |
| Base field density | 95 | 105 | % MDD | Below 95% needs investigation. Above 105% is unlikely -- check test. |
| Concrete 28-day strength | 15 | 60 | N/mm2 | Below 20 is very low for structural concrete. Above 50 is unusual for road structures. |
| PI (base course) | 0 | 15 | -- | Above 6 fails most base specs. Above 12 is unsuitable for any pavement layer. |

### 4.2 Consistency Checks

- **Compaction standard consistency:** Verify that field density results use the same compaction standard (Standard or Modified) as the specification requirement.
- **CBR vs layer assignment:** Check that CBR values are appropriate for the assigned layer (e.g., do not accept CBR 40 material for a base course requiring CBR 80).
- **Concrete 7-day vs 28-day:** If 7-day result is below approximately 0.60 x fck, the 28-day result is at risk of failing. Flag for early warning.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Base course CBR below specification | Structural layer at risk | SENIOR REVIEW -- Base course CBR [X]% vs specification [Y]%. Assess extent and remedial options. |
| Concrete 28-day strength below fck - 3 | Individual result below minimum | SENIOR REVIEW -- Concrete strength [X] N/mm2 below minimum [Y] N/mm2. Structural assessment may be required. |
| Multiple NCRs for same material/issue | Systemic quality problem | SENIOR REVIEW -- Repeated NCRs for [issue]. Contractor's QC system may be inadequate. |
| No test data available for placed work | Cannot verify compliance | SENIOR REVIEW -- Work placed without testing at Km [X]-[Y]. Retrospective testing required. |
| Contractor using unapproved source | Source approval process bypassed | SENIOR REVIEW -- Unapproved material source in use. Stop work and test immediately. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Test failures must be documented and reported.
- **Continue testing** even when failures occur -- additional data helps determine the extent of the problem.
- **Structural elements (concrete, steel) require immediate escalation** for below-specification results.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module and test standards to load |
| Material specification | table | various | Yes | Skill #24 | Acceptance criteria for each material (CBR, PI, grading, etc.) |
| Test results | table | various | No | Skill #9 | Individual test results for assessment against acceptance criteria |
| Layer design | list | -- | Recommended | Skill #21/22/23 | Which layers need which material types |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Test frequency schedule | table | various | Skill #54 (supervision planning) | Required tests per material per frequency |
| Compliance assessment | text | pass/fail | Skill #54, User | Test results vs acceptance criteria |
| NCR documentation | document | -- | Skill #54 | Non-conformance reports and status |
| Source approval status | text | approved/rejected | User | Material source approval decision |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific testing context (MoWT specs, BS standards, UNRA labs) | Markdown |
| `tables/test_frequency_table.json` | Testing frequencies by material type (MoWT/standard practice) | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify jurisdiction. Load country-specific test standards, frequencies, and acceptance criteria.

### Step 2: Identify Materials and Layers
From the pavement design (Skill #21/22/23) and project specification, list each material type and the layer it is assigned to.

### Step 3: Determine Test Requirements
For each material/layer, look up:
- Required tests (from `tables/test_frequency_table.json`)
- Test frequency (per specification or JSON table)
- Acceptance criteria (from Skill #24 and specification)

### Step 4: Material Source Approval (Before Construction)
For each material source:
- Collect representative samples
- Test against full specification requirements
- Approve or reject source
- Document approval with conditions

### Step 5: Construction Testing (During Construction)
At the specified frequency:
- Sample material/work
- Test in laboratory or field
- Compare results against acceptance criteria
- Record results

### Step 6: Assess Results
```
Results pass acceptance criteria?
  |-- YES --> Record and proceed
  +-- NO --> Issue NCR, follow non-conformance procedure (Section 2.1)
```

### Step 7: Produce Output
Format per Section 8. Include all test results, compliance status, and escalation flags.

---

## 8. Output Format

```
============================================================
MATERIAL TESTING & QC ASSESSMENT -- [Project Name]
Country/Jurisdiction: [country]
Standard: [testing standard reference]
Date: [YYYY-MM-DD]
============================================================

MATERIAL / LAYER: [material type and layer]
-------------------------------------------
Source: [approved source name/location]
Source approval status: [approved / pending / rejected]

Test Requirements:
| Test | Standard | Frequency | Acceptance Criteria |
|------|----------|-----------|-------------------|
| [test] | [BS/AASHTO] | [per X m3/m2] | [value and condition] |

Test Results:
| Sample ID | Location | Date | Result | Spec | Status |
|-----------|----------|------|--------|------|--------|
| [ID] | [chainage] | [date] | [value] | [requirement] | PASS/FAIL |

Compliance Summary: [X of Y tests pass / Z failures identified]

[Repeat for each material/layer]

NON-CONFORMANCE SUMMARY
-------------------------
| NCR # | Material | Location | Issue | Status |
|-------|----------|----------|-------|--------|
| [number] | [material] | [chainage] | [description] | [open/closed] |

ASSUMPTIONS & DEFAULTS
-----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

============================================================
MATERIAL TESTING ASSESSMENT -- FOR ENGINEER'S REVIEW
Test frequencies are typical -- verify against project-specific
specification. Acceptance criteria from Skill #24 and project
specification.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed test method procedures (use Skill #9 for test interpretation). Asphalt mix design (specialist function). Advanced statistical acceptance methods (operating characteristic curves). Non-destructive testing beyond DCP.
- **Simplifications:** Test frequencies are typical values -- always verify against the project-specific specification. Acceptance criteria reference Skill #24 rather than duplicating specification tables.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia (similar BS/AASHTO-based testing with country-specific specifications)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft covering 5 material categories (earthworks, pavement layers, bituminous, concrete, steel), QC decision trees, non-conformance procedures with option range, hold points and witness points. |
