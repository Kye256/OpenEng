# AASHTO 93 Pavement Design -- Uganda Module

> **Parent Skill:** #22 AASHTO 93 Pavement Design
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol 3 Part I (2010), Section 5.9, Table 5.2
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 3 Part I | January 2010 | Section 5.9, Table 5.2 | Current |
| AASHTO Guide for Design of Pavement Structures | 1993 | Design equation | Reference |

### M.1.2 Institutional Context

MoWT recommends AASHTO 93 as a verification method for catalogue designs (Section 5.9) or when materials differ from catalogue assumptions. It is not the primary design method in Uganda -- the catalogue method (Skill #21) is standard practice.

### M.1.3 Standard Philosophy

AASHTO 93 uses the structural number concept: the required SN is calculated from the design equation, then layer thicknesses are determined using layer coefficients from MoWT Table 5.2. MoWT uses DSN (mm-based) rather than AASHTO SN (inch-based): DSN = SN * 25.4.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table 5.2: Layer Coefficients (Verified against PDF p5-2)**

--> Full data: `tables/uganda_layer_coefficients.json`

Quick reference:

| Layer/Material | Coefficient |
|----------------|-------------|
| **Surfacing** | |
| Surface dressing | a1 = 0.20 |
| Asphalt concrete | a1 = 0.35 |
| **Base** | |
| Bitumen macadam | a2 = 0.20 |
| Natural or crushed gravel | a2 = 0.12 |
| Crushed stone on natural gravel subbase | a2 = 0.14 |
| Crushed stone on stabilised subbase | a2 = 0.18 |
| Cement treated gravel Type A (UCS 3.5-5.0 MPa) | a2 = 0.18 |
| Cement treated gravel Type B (UCS 2.0-3.5 MPa) | a2 = 0.14 |
| **Subbase** | |
| Natural gravel CBR >= 30% | a3 = 0.11 |
| Cement treated Type B (UCS >= 2.0 MPa) | a3 = 0.16 |
| Cement treated Type C (UCS 0.7-2.0 MPa) | a3 = 0.12 |

**Design Parameters for Uganda:**

| Parameter | Value | Source |
|-----------|-------|--------|
| Reliability R (trunk roads) | 80-95% | MoWT guidance |
| Standard deviation S0 | 0.45 | MoWT Section 5.9 |
| Initial serviceability p0 | 4.2 | AASHTO standard |
| Terminal serviceability pt (trunk) | 2.5 | MoWT guidance |
| Terminal serviceability pt (low-volume) | 2.0 | MoWT guidance |
| MR from CBR | MR (psi) = 1500 * CBR | AASHTO approximation |

### M.2.2 Country-Specific Formulas

**MoWT DSN Formula (Section 5.9, p5-2):**

```
DSN = a1*h1 + a2*h2 + a3*h3
```

Where:
- DSN = weighted structural number (mm-based)
- a1, a2, a3 = layer coefficients from Table 5.2
- h1, h2, h3 = layer thicknesses in mm
- For a fourth layer: add a4*h4

**Conversion:** DSN (mm-based) = SN (inches) * 25.4

**AASHTO 1993 Design Equation:**

```
log10(W18) = ZR*S0 + 9.36*log10(SN+1) - 0.20
             + log10(delta_psi/(4.2-1.5)) / (0.40 + 1094/(SN+1)^5.19)
             + 2.32*log10(MR) - 8.07
```

### M.2.3 Classification System

Same road classification as Skill #21 Uganda module.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

MoWT recommends AASHTO 93 for:
1. Verification of catalogue designs
2. When non-standard materials are available
3. When layer coefficients differ from catalogue assumptions
4. As a cross-check for important projects

### M.3.2 Professional Judgment (Uganda-Specific)

**DSN units are critical.** MoWT Table 5.2 uses layer coefficients that work with mm thicknesses, giving a DSN in mm-based units. To compare with AASHTO SN (inches), divide DSN by 25.4.

**The a2 value for crushed stone depends on the subbase.** Crushed stone on natural gravel subbase gets a2 = 0.14, but on stabilised subbase gets a2 = 0.18 -- a 29% difference.

### M.3.3 Common Errors (Uganda-Specific)

1. **Confusing DSN units with SN units.** DSN in mm-based; SN in inch-based. Conversion factor = 25.4.
2. **Using generic AASHTO layer coefficients instead of MoWT Table 5.2.** The values differ.
3. **Not selecting the correct a2 for crushed stone.** The coefficient depends on what subbase material is used below it.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| R | 90% | Trunk road, not specified | ASSUMED: R = 90% | Mid-range for Uganda trunk roads |
| S0 | 0.45 | Not specified | No flag | MoWT Section 5.9 |
| pt | 2.5 | Trunk road | No flag | MoWT guidance |
| Drainage m | 1.0 | Good drainage | ASSUMED: m = 1.0 (good drainage) | Verify |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| SN | 1.5 | 7.0 | inches | MoWT practice | Warn if outside range |
| Layer coefficient | 0.05 | 0.40 | -- | Table 5.2 | Reject if outside Table 5.2 range |

### M.5.2 Standards Compliance Checks

- **Check:** Layer coefficients from MoWT Table 5.2, not AASHTO Guide
- **Check:** DSN/SN unit conversion correct (factor 25.4)
- **Check:** Achieved SN >= Required SN

### M.5.3 Departures / Relaxations Process

No formal departures process. Document justification in design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| DSN calculation differs >10% from catalogue SN | Inconsistency between methods | SENIOR REVIEW -- Reconcile AASHTO 93 result with catalogue design. |

---

## M.7 Worked Example -- Uganda

### Example: 5M ESAs, CBR 8%, Trunk Road

**Given:**
- Design ESAs (W18): 5,000,000
- Design CBR: 8%
- Road class: Trunk (R = 90%)
- S0 = 0.45, p0 = 4.2, pt = 2.5
- Materials: AC surfacing, crushed stone base on natural gravel subbase, natural gravel subbase

**Solution:**

**Step 1 -- Convert CBR to MR:**
MR = 1500 * 8 = 12,000 psi

**Step 2 -- Design parameters:**
R = 90% --> ZR = -1.282
S0 = 0.45
delta_psi = 4.2 - 2.5 = 1.7

**Step 3 -- Calculate required SN:**
Solving AASHTO equation iteratively: SN_required approximately 3.6 inches
DSN_required = 3.6 * 25.4 = 91.4 mm

**Step 4 -- Select layer materials and coefficients (Table 5.2):**
- Surfacing: AC, a1 = 0.35
- Base: Crushed stone on natural gravel subbase, a2 = 0.14
- Subbase: Natural gravel CBR >= 30%, a3 = 0.11

**Step 5 -- Determine layer thicknesses:**
- D1 = 50 mm AC: SN1 = 0.35 * 50/25.4 = 0.69
- D2 = 200 mm crushed stone: SN2 = 0.14 * 200/25.4 = 1.10
- D3 = 200 mm natural gravel: SN3 = 0.11 * 200/25.4 = 0.87
- SN_achieved = 0.69 + 1.10 + 0.87 = 2.66

This is less than required SN of 3.6. Increase thicknesses:
- D2 = 250 mm: SN2 = 0.14 * 250/25.4 = 1.38
- D3 = 250 mm: SN3 = 0.11 * 250/25.4 = 1.08
- SN_achieved = 0.69 + 1.38 + 1.08 = 3.15

Still short. Try thicker base or use better coefficient:
- Use crushed stone on stabilised subbase (a2 = 0.18):
- D2 = 225 mm: SN2 = 0.18 * 225/25.4 = 1.59
- With cement treated Type C subbase (a3 = 0.12):
- D3 = 225 mm: SN3 = 0.12 * 225/25.4 = 1.06
- SN_achieved = 0.69 + 1.59 + 1.06 = 3.34

Close to 3.6. Increase D2 to 250 mm:
- SN2 = 0.18 * 250/25.4 = 1.77
- SN_achieved = 0.69 + 1.77 + 1.06 = 3.52 -- close to 3.6

Add 25 mm to subbase: D3 = 250 mm: SN3 = 0.12 * 250/25.4 = 1.18
- SN_achieved = 0.69 + 1.77 + 1.18 = 3.64 >= 3.6 **OK**

**Result:**

| Layer | Material | Thickness | Coefficient | SN contribution |
|-------|----------|-----------|-------------|-----------------|
| Surfacing | Asphalt concrete | 50 mm | a1 = 0.35 | 0.69 |
| Base | Crushed stone (on stab. subbase) | 250 mm | a2 = 0.18 | 1.77 |
| Subbase | Cement treated Type C | 250 mm | a3 = 0.12 | 1.18 |
| **Total** | | **550 mm** | | **SN = 3.64** |

SN achieved (3.64) >= SN required (3.6). Design adequate.

---

## M.8 References

1. Uganda MoWT, *Road Design Manual Vol 3 Part I*, January 2010, Section 5.9 and Table 5.2.
2. AASHTO, *Guide for Design of Pavement Structures*, 1993.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Table 5.2 coefficients verified against MoWT PDF p5-2 |
