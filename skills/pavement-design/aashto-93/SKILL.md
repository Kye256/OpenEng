---
name: "aashto-93"
description: "Use when designing flexible pavement using the AASHTO 1993 structural number method. Requires cumulative ESAs from Skill #5 (ESA Calculation) and design CBR from Skill #10 (Subgrade Characterization). Alternative to Skill #21 (MoWT Catalogue) and Skill #23 (TRL ORN 31)."
---

# AASHTO 93 Pavement Design

> **Skill ID:** 22
> **Domain:** Pavement Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --
> **Country Modules:** Uganda, UK, Kenya, Ethiopia

## Purpose

Determine the required structural number (SN) and layer thicknesses for a flexible pavement using the AASHTO 1993 method with country-specific layer coefficients. This is an analytical method that calculates the required pavement structural capacity from traffic loading, subgrade strength, reliability, and serviceability requirements. In Uganda, MoWT recommends this method as a verification tool for catalogue designs or when materials differ from catalogue assumptions.

## When to Use This Skill

- **Use when:** Verifying MoWT catalogue designs, designing for non-standard materials, or when AASHTO 93 is the specified design method. Also when design traffic exceeds 30M ESAs (MoWT catalogue limit).
- **Do not use when:** A simple catalogue lookup is sufficient and materials match catalogue assumptions (use Skill #21). Not for rigid pavement design.
- **Prerequisite skills:** Skill #5 (ESA Calculation) for W18, Skill #10 (Subgrade Characterization) for design CBR.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Structural Number (SN):** A composite index of the structural capacity of a pavement. SN = sum of (layer coefficient x thickness x drainage coefficient) for each layer. Higher SN means a stronger pavement.

**Layer Coefficients:** Empirical values representing the relative structural contribution of each pavement material per unit thickness. Higher-quality materials have higher coefficients (e.g., asphalt concrete a1 = 0.35 vs natural gravel a2 = 0.12).

**Reliability (R):** The probability that the pavement will perform satisfactorily throughout its design life. Higher reliability requires a thicker pavement. Trunk roads typically use R = 80-95%.

**Serviceability:** A measure of pavement condition on a scale of 0-5. Initial serviceability (p0) is typically 4.2 for new construction. Terminal serviceability (pt) is 2.5 for trunk roads, 2.0 for low-volume roads. The serviceability loss (delta_psi = p0 - pt) drives the design.

**Resilient Modulus (MR):** A measure of subgrade stiffness. Can be estimated from CBR using MR (psi) = 1500 * CBR for the AASHTO approximation.

### 1.2 Universal Formulas

**AASHTO 1993 Design Equation:**

```
log10(W18) = ZR*S0 + 9.36*log10(SN+1) - 0.20
             + log10(delta_psi/(4.2-1.5)) / (0.40 + 1094/(SN+1)^5.19)
             + 2.32*log10(MR) - 8.07
```

Where:
- W18 = predicted number of 80 kN (18-kip) ESALs
- ZR = standard normal deviate for reliability R (e.g., ZR = -1.282 for R = 90%)
- S0 = combined standard error of traffic prediction and performance prediction
- SN = structural number (inches)
- delta_psi = p0 - pt (serviceability loss)
- MR = effective resilient modulus of subgrade (psi)

**Structural Number from layer thicknesses:**

```
SN = a1*D1 + a2*m2*D2 + a3*m3*D3
```

Where:
- a_i = layer coefficient for layer i
- D_i = thickness of layer i (inches in AASHTO; mm in MoWT DSN)
- m_i = drainage coefficient for layer i (1.0 for good drainage)

**Resilient Modulus from CBR (AASHTO approximation):**

```
MR (psi) = 1500 * CBR
```

### 1.3 Figures & Diagrams

**SN vs W18 relationship:** The AASHTO design equation produces a nonlinear relationship between required SN and design traffic (W18). SN increases with log(W18), meaning that doubling traffic does not double the required pavement thickness.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Design ESAs / W18 (from Skill #5)
  |-- Design CBR (from Skill #10)
  +-- Load country module for layer coefficients

Step 2: Convert CBR to Resilient Modulus
  --> MR = 1500 * CBR (AASHTO approximation)
  +-- Flag if CBR < 3 or > 20 (correlation less reliable outside this range)

Step 3: Select design reliability (R) and standard deviation (S0)
  --> See country module for recommended values
  |-- Higher R for more important roads
  +-- S0 typically 0.45 for Uganda

Step 4: Determine serviceability loss (delta_psi)
  --> p0 = 4.2 (new construction)
  |-- pt = 2.5 for trunk roads, 2.0 for low-volume
  +-- delta_psi = p0 - pt

Step 5: Calculate required SN from AASHTO equation
  --> Solve equation iteratively for SN
  +-- This gives the MINIMUM structural number required

Step 6: Select layer materials and get coefficients
  --> See country module for Table 5.2 coefficients
  +-- Choose materials based on availability and cost

Step 7: Determine layer thicknesses to achieve SN
  |-- SN = a1*D1 + a2*D2 + a3*D3
  |-- Start with surfacing (constrained by minimum thickness)
  |-- Then base (main structural layer)
  |-- Then subbase (make up remainder)
  +-- Check minimum thickness requirements per layer

Step 8: Validate and produce output
```

### 2.2 Professional Judgment (Universal)

**The AASHTO equation gives a minimum SN, not a unique solution.** Multiple layer combinations can achieve the same SN. The engineer selects based on material availability, cost, and construction practicality.

**Layer coefficient values are empirical and site-specific.** The values in MoWT Table 5.2 are calibrated for Uganda practice. Using AASHTO Guide values instead may give different results.

**The MR-CBR correlation (MR = 1500*CBR) is approximate.** For important projects, laboratory resilient modulus testing is preferred.

### 2.3 Common Errors

1. **Mixing units.** AASHTO uses inches for SN; MoWT uses mm for DSN. The conversion factor is 25.4. Always state which unit system is being used.
2. **Using inappropriate reliability.** Designing a village road with R = 95% is over-conservative; designing a trunk road with R = 75% is under-conservative.
3. **Forgetting drainage coefficients.** In areas with poor drainage, m values less than 1.0 should be applied to base and subbase layers.
4. **Using AASHTO Guide layer coefficients instead of MoWT Table 5.2.** The MoWT values are calibrated for local materials and conditions.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Reliability R | 90% (trunk), 80% (local) | Not specified | ASSUMED: R = 90% for trunk road | Conservative for most applications |
| Standard deviation S0 | 0.45 | Not specified | ASSUMED: S0 = 0.45 per MoWT | MoWT recommended value |
| Initial serviceability p0 | 4.2 | Not specified | No flag | Standard AASHTO value |
| Terminal serviceability pt | 2.5 (trunk), 2.0 (local) | Not specified | ASSUMED: pt = 2.5 for trunk road | MoWT guidance |
| Drainage coefficient m | 1.0 | Drainage quality not specified | ASSUMED: m = 1.0 (good drainage) | Verify drainage condition |

### Default Behaviour Rules

1. **Country module defaults take precedence.**
2. **Conservative direction:** Use higher reliability and lower terminal serviceability when in doubt.
3. **Always state all assumptions** in output.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Required SN | 1.0 | 8.0 | inches | Warn if < 2.0 (very light); reject if > 8.0 |
| MR from CBR | 1500 | 45000 | psi | Warn if CBR-based MR outside expected range |
| Layer thickness (surfacing) | 25 | 100 | mm | Warn if outside practical range |
| Layer thickness (base) | 100 | 300 | mm | Warn if outside practical range |
| Layer thickness (subbase) | 100 | 400 | mm | Warn if outside practical range |

### 4.2 Consistency Checks

- **Achieved SN >= Required SN:** The sum of layer contributions must meet or exceed the required SN.
- **Layer coefficient source:** Verify all coefficients come from the country module, not from general AASHTO tables.
- **Unit consistency:** Verify mm vs inches consistency throughout calculation.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| CBR < 2% | Very weak subgrade -- high SN required | SENIOR REVIEW -- Subgrade improvement recommended before pavement design. |
| Required SN > 6.0 | Unusually thick pavement | SENIOR REVIEW -- Very high SN. Consider subgrade improvement or alternative design method. |
| Reliability input missing | Critical design parameter | ASSUMED R = 90%. SENIOR REVIEW -- Confirm appropriate reliability for this road class. |
| No country module available | Cannot apply specific coefficients | SENIOR REVIEW -- Using AASHTO Guide coefficients. Verify applicability. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Continue working** where possible.
- **Country module escalations** are merged with universal escalations.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Design ESAs (W18) | number | ESAs | Yes | Skill #5 | Cumulative design ESAs |
| Design CBR | number | % | Yes | Skill #10 | Design subgrade CBR |
| Road class | text | -- | No | Skill #13 | Determines reliability level |
| Reliability R | number | % | No | User | If specified, overrides default |
| Available materials | list | -- | No | User | Constrains layer coefficient selection |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Required SN | number | inches | User | Minimum structural number |
| Required DSN | number | mm-based | User | MoWT DSN equivalent |
| Layer configuration | table | mm | Skill #24, User | Material + thickness per layer |
| MR (resilient modulus) | number | psi | User | Calculated from CBR |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT Table 5.2 coefficients | Markdown |
| `modules/uk.md` | UK comparison (knowledge-based) | Markdown |
| `tables/uganda_layer_coefficients.json` | MoWT Table 5.2 layer coefficients and design parameters | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify jurisdiction. Load layer coefficients from `tables/uganda_layer_coefficients.json`.

### Step 2: Convert CBR to MR
Calculate MR = 1500 * CBR. Flag if CBR is outside 3-20% range.

### Step 3: Select Design Parameters
Set R, S0, p0, pt from country module defaults or user input. Calculate delta_psi.

### Step 4: Calculate Required SN
Solve AASHTO equation iteratively. Report required SN (inches) and DSN (mm).

### Step 5: Select Layer Materials
Choose surfacing, base, and subbase materials. Look up coefficients from Table 5.2.

### Step 6: Determine Layer Thicknesses
Calculate D1, D2, D3 such that SN = a1*D1 + a2*D2 + a3*D3 >= required SN. Check minimum thicknesses.

### Step 7: Validate
Run all checks. Verify SN_achieved >= SN_required.

### Step 8: Produce Output

---

## 8. Output Format

```
============================================================
AASHTO 93 PAVEMENT DESIGN -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [AASHTO 1993 with MoWT Table 5.2 coefficients]
Date: [YYYY-MM-DD]
============================================================

DESIGN INPUTS
-------------
Design ESAs (W18):     [X]
Design CBR:            [X]%
Resilient Modulus MR:  [X] psi (= 1500 x CBR)
Reliability R:         [X]%
Std Deviation S0:      [X]
Serviceability:        p0 = [X], pt = [X], delta_psi = [X]

REQUIRED STRUCTURAL NUMBER
--------------------------
SN required:           [X] (inches)
DSN required:          [X] (mm-based, = SN x 25.4)

LAYER DESIGN
------------
Layer        Material              a     D(mm)    m     SN contribution
---------    --------------------  ----  ------   ----  ---------------
Surfacing    [material]            [a1]  [D1]     --    [a1*D1/25.4]
Base         [material]            [a2]  [D2]     [m2]  [a2*m2*D2/25.4]
Subbase      [material]            [a3]  [D3]     [m3]  [a3*m3*D3/25.4]
                                                  TOTAL [SN_achieved]

SN achieved: [X] >= SN required: [X]  [OK / INSUFFICIENT]

ASSUMPTIONS & DEFAULTS
----------------------
[Flags]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Mechanistic-empirical design. Drainage coefficient determination. Resilient modulus laboratory testing.
- **Simplifications:** MR estimated from CBR correlation. Drainage coefficients assumed = 1.0 unless specified. Single SN for entire pavement (no layer-specific analysis).
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with MoWT Table 5.2 coefficients verified against PDF |
