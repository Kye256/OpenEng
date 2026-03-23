# Headwalls & Wingwalls -- UK Module

> **Parent Skill:** #34 Headwalls & Wingwalls
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 361 (Buried Concrete Box Type Structures); Eurocode basis
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CD 361 | Current | Headwall details for box culverts | Current -- engineer review required (no local document) |
| EN 1997-1 | Eurocode 7 | Earth pressure and retaining wall design | Current |
| EN 1992-1-1 | Eurocode 2 | Concrete structural design for wingwalls | Current |
| EN 1991-2 | Eurocode 1 Part 2 | Traffic surcharge loading | Current |

### M.1.2 Institutional Context

UK headwall and wingwall design follows DMRB standards for trunk roads, with Eurocode loading and geotechnical design. DMRB CD 361 provides specific headwall details for buried concrete box structures. For pipe culverts, standard headwall details are typically provided by the road authority.

**Note:** No local copy of DMRB CD 361 is available. This module is knowledge-based.

### M.1.3 Standard Philosophy

UK design uses Eurocode partial factors for earth pressure (gamma_G = 1.35 for permanent, gamma_Q = 1.50 for variable), which differ from the MoWT single gamma_fL = 1.50 approach. Wingwall design follows EN 1997-1 for geotechnical analysis (Design Approach 1 in the UK). The UK has specific DMRB standards for headwall configurations that may differ from Uganda practice.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**UK Headwall and Wingwall Design (Eurocode -- knowledge-based):**

| Parameter | UK Value | Uganda Value | Difference |
|-----------|----------|-------------|------------|
| Earth pressure gamma (permanent, ULS) | 1.35 | 1.50 | UK uses separate permanent/variable factors |
| Surcharge gamma (variable, ULS) | 1.50 | 1.50 | Same numerical value |
| Stability FoS approach | Partial factor (DA1) | Global FoS (2.0/1.5) | Different methodology |
| Foundation code | Eurocode 7 | CP 2004 | CP 2004 superseded in UK |

### M.2.2 Country-Specific Formulas

**Eurocode earth pressure on wingwall:**

```
Design earth pressure (DA1, Combination 1):
  P_a_d = gamma_G x Ka x gamma_soil x z + gamma_Q x Ka x q_surcharge
       = 1.35 x Ka x gamma_soil x z + 1.50 x Ka x q_surcharge
```

Note: In Eurocode DA1 Combination 2, material factors are applied to soil strength (phi') rather than loads. Both combinations must be checked.

### M.2.3 Classification System

UK classifies culvert end structures based on road category and standard details. National Highways has standard headwall details for common pipe and box culvert sizes. Non-standard designs require formal design submissions.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 5 (UK): Earth pressure on wingwall
  |-- Use Eurocode 7, Design Approach 1
  |-- DA1 Combination 1: gamma_G = 1.35, gamma_Q = 1.50 on loads
  |-- DA1 Combination 2: gamma_phi on material strength
  +-- Check both combinations -- governing case controls

Step 6 (UK): Wingwall stability
  |-- Eurocode partial factor approach (not global FoS)
  |-- Bearing resistance per EN 1997-1
  |-- Sliding resistance per EN 1997-1
  +-- Overturning per EN 1990 equilibrium check (EQU limit state)
```

### M.3.2 Professional Judgment (UK-Specific)

**Eurocode stability checks are more complex than global FoS.** The UK approach requires checking multiple combinations (DA1 Combo 1 and Combo 2, EQU limit state for overturning). This produces a more rigorous design but requires more calculation than the MoWT global FoS approach.

**UK standard headwall details exist for common culvert sizes.** Always check whether a standard DMRB detail applies before performing custom design.

### M.3.3 Common Errors (UK-Specific)

1. **Using global FoS instead of Eurocode partial factors.** UK design does not use FoS = 2.0/1.5 for stability. The Eurocode partial factor approach must be applied.
2. **Not checking both DA1 combinations.** Both Combination 1 (factored loads) and Combination 2 (factored material strength) must be checked.
3. **Using HA/HB surcharge.** UK uses Eurocode surcharge values, not HA/HB.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design approach | DA1 | UK | No flag | EN 1997-1 UK National Annex |
| gamma_G (permanent) | 1.35 | ULS, DA1 Combo 1 | No flag | EN 1990 |
| gamma_Q (variable) | 1.50 | ULS, DA1 Combo 1 | No flag | EN 1990 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| gamma_G (permanent, ULS) | 1.35 | 1.35 | -- | EN 1990 | Flag if incorrect |

### M.5.2 Standards Compliance Checks

- **Check:** Eurocode partial factors used (not global FoS)
- **Standard:** EN 1997-1
- **Pass condition:** DA1 Combination 1 and 2 both checked
- **Fail action:** SENIOR REVIEW -- UK wingwall stability must use Eurocode partial factor approach.

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process for trunk roads. Non-compliance with standard headwall details requires a Departure approved by the Overseeing Organisation.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No local DMRB document | Cannot verify standard details | SENIOR REVIEW -- UK headwall/wingwall design requires DMRB standards. This module is knowledge-based. Obtain and verify actual standards. |

---

## M.7 Worked Example -- UK

### Example: Headwall and Wingwalls for 2.0m x 1.5m Box Culvert, UK Context

**Source:** Conceptual application of Eurocode principles

**Given:**
- Culvert: 2000 mm x 1500 mm RC box, 1.5 m fill
- UK context, Eurocode loading

**Solution (conceptual):**

**Earth pressure approach:**
- K0 = 1 - sin(30) = 0.50 (at-rest for rigid box wingwall connection)
- Or Ka = 0.33 if wingwall can mobilise active conditions
- gamma_G = 1.35 (permanent earth pressure)
- gamma_Q = 1.50 (traffic surcharge)

**Key differences from Uganda approach:**
1. Separate partial factors for permanent (1.35) and variable (1.50) loads, rather than single gamma_fL = 1.50
2. Design Approach 1 with two combinations
3. EQU limit state for overturning (not global FoS = 2.0)
4. Foundation design per Eurocode 7 (not CP 2004)

**Note:** Full calculation requires DMRB CD 361 and Eurocode application with UK National Annex.

SENIOR REVIEW -- UK headwall/wingwall design requires DMRB CD 361 and Eurocode 7 application. This example is conceptual only.

---

## M.8 References

1. DMRB CD 361, *Buried Concrete Box Type Structures* -- not available locally.
2. EN 1997-1:2004, *Eurocode 7: Geotechnical design*, with UK National Annex.
3. EN 1992-1-1:2004, *Eurocode 2: Design of concrete structures*, with UK National Annex.
4. EN 1991-2:2003, *Eurocode 1: Traffic loads on bridges*, with UK National Annex.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- knowledge-based content. DMRB CD 361 not available. Eurocode approach documented conceptually. |
