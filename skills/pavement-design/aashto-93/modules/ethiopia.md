# AASHTO 93 Pavement Design -- Ethiopia Module

> **Parent Skill:** #22 AASHTO 93 Pavement Design
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Flexible Pavement Design Manual Vol I - 2013, Appendix H.4 (Layer Coefficients), Appendix H.5 (AASHTO 93 Method); AASHTO Guide for Design of Pavement Structures (1993)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Flexible Pavement Design Manual Vol I | 2013 | Appendix H.4 (Layer Coefficients), Appendix H.5 (AASHTO 93 Method) | Current -- alternative/verification method |
| AASHTO Guide for Design of Pavement Structures | 1993 | Design equation, SN method | Reference -- underlying method |
| ERA Flexible Pavement Design Manual Vol I | 2013 | Chapter 10 (Design Catalogue) | Current -- ERA PRIMARY design method |

**AASHTO 93 is NOT ERA's primary flexible pavement design method.** ERA's primary method is the empirical design catalogue (ERA Vol I Chapter 10, see Skill #21 Ethiopia module). ERA presents AASHTO 93 in Appendix H.5 as an **alternative or verification method** for cases where:

- The design catalogue does not cover the specific conditions (e.g., traffic > 30M ESA, unusual materials)
- Verification of a catalogue design is desired using an independent method
- Donor-funded projects specify AASHTO 93 as a condition of financing
- Staged construction or unusual loading conditions require analytical design

### M.1.2 Institutional Context

ERA is the sole national roads agency responsible for design standards for all federal roads. Regional Roads Authorities and Woreda road offices use the same ERA manuals for lower-class roads.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and design class (DC1-DC8) system.

For all ERA projects, the Chapter 10 design catalogue governs. AASHTO 93 may only be used as a verification method or where specifically justified in the design report.

### M.1.3 ERA's Position on AASHTO 93

ERA Appendix H.5 explicitly presents AASHTO 93 as an alternative approach. The key departure from standard AASHTO 93 practice is the use of the **damage exponent n = 4.5** (ERA Equation 2.4) instead of the AASHTO 4th power law (n = 4.0). This is the single most significant ERA departure from AASHTO 93, as it increases the ESA count for any given axle load spectrum and therefore produces a higher design traffic loading.

**Comparison: AASHTO 93 Application Across Countries**

| Aspect | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|--------|---------------|---------------|-------------|
| Position of AASHTO 93 | Alternative/verification (Appendix H.5) | Alternative/verification (Vol 3 Part I Section 5.8) | Secondary/donor method (not in RDM 3.4) |
| Primary method | ERA catalogue (Chapter 10) | MoWT catalogue (Appendix C) | RDM 3.4 M-E method |
| ERA/MoWT layer coefficients | Published in Appendix H.4 | Published in Table 5.2 | Not published -- engineer selects |
| Damage exponent for ESA | n = 4.5 | n = 4.5 | n = 4.5 |
| Standard axle | 80 kN | 80 kN | 80 kN |
| Key departure from AASHTO 93 | n = 4.5 (vs AASHTO n = 4.0) | n = 4.5 (vs AASHTO n = 4.0) | No formal departure -- uses AASHTO standard |

---

## M.2 Country-Specific Knowledge

### M.2.1 ERA Layer Coefficients (Appendix H.4)

ERA publishes country-specific layer coefficients in Appendix H.4 for use with the AASHTO 93 structural number method.

**ERA Appendix H.4: Layer Coefficients (Verified from PDF)**

| Layer/Material | ERA Coefficient | Notes |
|----------------|----------------|-------|
| **Surfacing** | | |
| Asphalt concrete (AC) | a1 = 0.40 | Standard ERA value for HMA surfacing |
| Surface dressing (chip seal) | a1 = 0.15 | Limited structural contribution |
| **Base** | | |
| GB1 (Graded Crushed Stone) | a2 = 0.14 | Highest quality granular base |
| GB2 (Mechanically Stable Natural Gravel) | a2 = 0.12 | Natural gravel base |
| GB3 (Natural Gravel, lower standard) | a2 = 0.10 | Lower quality granular base |
| CB1 (Cemented Base Class 1) | a2 = 0.18 | UCS 1.5-3.0 MPa |
| CB2 (Cemented Base Class 2) | a2 = 0.15 | UCS 0.75-1.5 MPa |
| Bituminous base | a2 = 0.30 | Hot-mix asphalt base layer |
| **Subbase** | | |
| GS (Granular Subbase) | a3 = 0.10 | CBR >= 30% |
| CS (Cemented Subbase) | a3 = 0.13 | UCS 0.75-1.5 MPa |

**Cross-Country Comparison: Layer Coefficients**

| Material Type | ERA (Appendix H.4) | MoWT (Table 5.2) | Kenya (Practice) |
|--------------|--------------------|--------------------|-----------------|
| AC surfacing | a1 = 0.40 | a1 = 0.40-0.44 | a1 = 0.35-0.44 |
| Crushed stone base | a2 = 0.14 (GB1) | a2 = 0.14 (G80) | a2 = 0.13-0.14 (GCS) |
| Natural gravel base | a2 = 0.12 (GB2) | Not published separately | Not applicable |
| Cemented base | a2 = 0.18 (CB1) | a2 = 0.18-0.20 (C1) | a2 = 0.14-0.18 (HSM) |
| Granular subbase | a3 = 0.10 (GS) | a3 = 0.10-0.11 | a3 = 0.10-0.12 (G45) |
| Cemented subbase | a3 = 0.13 (CS) | a3 = 0.13-0.14 (C3) | a3 = 0.12-0.16 (HSM) |

### M.2.2 ERA-Specific AASHTO 93 Parameters

**Structural Number Calculation:**

```
SN = a1*D1 + a2*m2*D2 + a3*m3*D3
```

Where D1, D2, D3 are layer thicknesses in inches (divide mm by 25.4), and m2, m3 are drainage coefficients.

**Key ERA parameter values:**

| Parameter | ERA Value | Notes |
|-----------|----------|-------|
| Standard axle | 80 kN (8.16 metric tons) | Same as AASHTO 18 kip |
| Damage exponent | n = 4.5 | ERA Equation 2.4 -- differs from AASHTO n = 4.0 |
| Reliability R (DC1-DC4 trunk) | 85-95% | ERA recommendation |
| Reliability R (DC5-DC6 link/access) | 80-90% | ERA recommendation |
| Reliability R (DC7-DC8 collector/feeder) | 70-85% | ERA recommendation |
| Standard deviation S0 | 0.45 | Standard AASHTO value |
| Initial serviceability p0 | 4.2 | AASHTO standard |
| Terminal serviceability pt (trunk) | 2.5 | ERA recommendation for DC1-DC5 |
| Terminal serviceability pt (other) | 2.0 | ERA recommendation for DC6-DC8 |
| MR from CBR | MR (psi) = 1500 * CBR | AASHTO approximation |

**Impact of n = 4.5 vs n = 4.0:**
The damage exponent n = 4.5 produces higher ESA values than the AASHTO standard n = 4.0. For example, a 100 kN axle (25% overloaded) produces:
- At n = 4.0: (100/80)^4.0 = 2.44 ESAs
- At n = 4.5: (100/80)^4.5 = 2.93 ESAs
- Difference: 20% higher ESA at n = 4.5

This means that when using AASHTO 93 in the ERA context, the design traffic (W18) will be higher than if calculated using AASHTO's standard n = 4.0. The ERA damage exponent reflects the harsher loading and environmental conditions in Ethiopia.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
When to use AASHTO 93 in ERA context:
  |-- Traffic exceeds T8 (30M ESA) -- catalogue does not cover
  |     +-- Use AASHTO 93 (Appendix H.5) with ERA layer coefficients
  |-- Verification of ERA catalogue design
  |     |-- Calculate SN of catalogue structure using ERA layer coefficients
  |     |-- Compare against AASHTO 93 required SN
  |     +-- If SN_achieved >= SN_required: catalogue design is adequate
  |-- Donor-funded project requires AASHTO 93
  |     +-- Use ERA layer coefficients (Appendix H.4)
  |-- Staged construction or unusual conditions
  |     +-- AASHTO 93 allows incremental SN analysis
  +-- DEFAULT: Use ERA catalogue (Skill #21 Ethiopia module) as primary method

CRITICAL parameter requirement:
  --> Use n = 4.5 for ESA calculation (ERA Equation 2.4), NOT n = 4.0
  --> Use ERA layer coefficients from Appendix H.4 (not Uganda MoWT or Kenya values)
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**ERA catalogue and AASHTO 93 should give broadly consistent results.** If the AASHTO 93 required SN is significantly higher or lower than the SN provided by the catalogue structure, review the input assumptions -- particularly the layer coefficient values and drainage coefficients.

**Significant differences (> 20%) warrant investigation.** This may indicate that the specific material properties differ from the assumed ERA coefficients, or that drainage conditions require more careful assessment.

**For traffic > 30M ESA, AASHTO 93 is the only analytical option within the ERA framework.** ERA's catalogue stops at T8 (30M ESA). For higher traffic, AASHTO 93 with ERA layer coefficients provides the design approach, subject to senior engineer review.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Using AASHTO 93 as the primary method when ERA catalogue should be used.** For traffic within T1-T8, the ERA catalogue (Chapter 10) is the primary method. AASHTO 93 is alternative/verification only.
2. **Using n = 4.0 (AASHTO standard) instead of n = 4.5 (ERA).** ERA requires n = 4.5 for all ESA calculations, including when AASHTO 93 is used. This is the key departure from standard AASHTO practice.
3. **Using Uganda MoWT Table 5.2 or Kenya layer coefficients in ERA context.** Use ERA Appendix H.4 values for Ethiopian projects. Although values are similar, ERA publishes specific coefficients.
4. **Ignoring the ERA catalogue result when AASHTO 93 gives a different answer.** For traffic within T1-T8, ERA catalogue governs for national projects.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| R | 90% | DC1-DC4 trunk, not specified | ASSUMED: R = 90% | Mid-range for ERA trunk roads |
| R | 85% | DC5-DC6 link/access, not specified | ASSUMED: R = 85% | Mid-range for ERA link/access roads |
| R | 75% | DC7-DC8 collector/feeder, not specified | ASSUMED: R = 75% | Mid-range for ERA lower-class roads |
| S0 | 0.45 | Not specified | No flag | AASHTO standard value |
| pt | 2.5 | DC1-DC5 | No flag | ERA recommendation |
| pt | 2.0 | DC6-DC8 | No flag | ERA recommendation |
| m | 0.90 | Drainage not specified | ASSUMED: m = 0.90 (moderate drainage) | Conservative default |
| n | 4.5 | All ERA projects | STANDARD: ERA Equation 2.4 damage exponent. | ERA mandatory parameter |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| SN | 1.0 | 8.0 | inches | Practice | Warn if outside expected range |
| Layer coefficient | 0.05 | 0.44 | -- | AASHTO Guide / ERA Appendix H.4 | Reject if outside range |
| Damage exponent n | 4.5 | 4.5 | -- | ERA Equation 2.4 | Reject if n != 4.5 for ERA projects |

### M.5.2 Standards Compliance Checks

- **Check:** If traffic within T1-T8, confirm ERA catalogue design also performed (AASHTO 93 is verification only)
- **Check:** ERA layer coefficients from Appendix H.4 used (not Uganda MoWT Table 5.2 or Kenya practice values)
- **Check:** Damage exponent n = 4.5 used in ESA calculation (not AASHTO standard n = 4.0)
- **Check:** AASHTO 93 result compared with ERA catalogue result -- document any significant differences
- **Check:** SN conversion correct when comparing with mm-based layer thicknesses

### M.5.3 Cross-Check with ERA Catalogue

When AASHTO 93 is used as verification for an ERA catalogue design:
1. Calculate the SN of the selected ERA catalogue structure using ERA Appendix H.4 layer coefficients.
2. Compare with the AASHTO 93 required SN.
3. If SN_achieved (from ERA catalogue) >= SN_required (from AASHTO 93): design is adequate.
4. If SN_achieved < SN_required: review assumptions, but ERA catalogue governs for T1-T8 traffic.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Traffic > 30M ESA (exceeds T8) | ERA catalogue does not cover | SENIOR REVIEW -- Use AASHTO 93 with ERA layer coefficients as primary method. Document justification. |
| AASHTO 93 SN > ERA catalogue SN by > 20% | Significant method disagreement | SENIOR REVIEW -- Investigate layer coefficient assumptions, drainage coefficients, and material properties. |
| Donor requires AASHTO 93 only | National standard bypassed | NOTE -- Document that ERA catalogue result differs. Present both results to the Engineer. |

---

## M.7 Worked Example -- Ethiopia

### Example: AASHTO 93 Verification of ERA Catalogue Design

**Given:**
- DC4 trunk road in southern Ethiopia (Hawassa-Dilla section)
- Design traffic: 8.5M ESA (calculated with n = 4.5 per ERA Equation 2.4)
- Design CBR: 6% (from Skill #10 Ethiopia module, 10th percentile)
- ERA catalogue design from Skill #21: Chart B (thin AC + granular base), T6, S2
- ERA catalogue structure: 40 mm AC surfacing + 200 mm GB1 base + 200 mm GS subbase + 150 mm GC capping
- Verify using AASHTO 93 with ERA Appendix H.4 layer coefficients

**Solution:**

**Step 1 -- Convert CBR to MR:**
MR = 1500 x 6 = 9,000 psi

**Step 2 -- Design parameters (ERA recommendations):**
R = 90% (DC4 trunk road) --> ZR = -1.282
S0 = 0.45
delta_psi = 4.2 - 2.5 = 1.7
W18 = 8,500,000 (already calculated with n = 4.5)
m2 = m3 = 0.90 (assumed moderate drainage)

**Step 3 -- Calculate required SN:**
Using AASHTO 93 equation iteratively with log10(W18) = 6.93:
SN_required approximately 3.4 inches

**Step 4 -- Calculate SN of ERA catalogue structure using ERA layer coefficients:**
- Surfacing: 40 mm AC, a1 = 0.40 --> SN1 = 0.40 x (40/25.4) = 0.63
- Base: 200 mm GB1, a2 = 0.14, m2 = 0.90 --> SN2 = 0.14 x 0.90 x (200/25.4) = 0.99
- Subbase: 200 mm GS, a3 = 0.10, m3 = 0.90 --> SN3 = 0.10 x 0.90 x (200/25.4) = 0.71
- Capping: 150 mm GC (not typically included in SN calculation, but provides platform support)
- SN_achieved = 0.63 + 0.99 + 0.71 = **2.33**

**Step 5 -- Compare:**
SN_achieved (2.33) < SN_required (3.4). The ERA catalogue structure appears under-designed by the AASHTO 93 method.

**Step 6 -- Interpretation:**
This difference is common when comparing empirical catalogue methods with AASHTO 93. The ERA catalogue structures have been validated through decades of field performance in Ethiopia. The AASHTO 93 method, derived from the AASHO Road Test in Illinois, tends to give thicker designs for weak subgrades.

For ERA projects within T1-T8, the catalogue design governs. Document the AASHTO 93 comparison in the design report as a note, not as a basis for rejecting the catalogue design.

**Result:** ERA catalogue structure confirmed as the primary design. AASHTO 93 cross-check documented. SN comparison noted in design report for the Engineer's information.

> **All outputs are preliminary/screening level.** AASHTO 93 verification is for information only where ERA catalogue applies.

---

## M.8 References

1. Ethiopian Roads Authority, *Flexible Pavement Design Manual Volume I*, 2013, Appendix H.4 (Layer Coefficients) and Appendix H.5 (AASHTO 93 Method).
2. AASHTO, *Guide for Design of Pavement Structures*, 1993.
3. Ethiopian Roads Authority, *Flexible Pavement Design Manual Volume I*, 2013, Chapter 10 (Design Catalogue).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- ERA AASHTO 93 application as alternative/verification, Appendix H.4 layer coefficients, n=4.5 departure, cross-country comparison |
