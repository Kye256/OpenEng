# Bridge Substructure -- UK Module

> **Parent Skill:** #38 Bridge Substructure
> **Country/Jurisdiction:** United Kingdom
> **Standards:** EN 1997-1 (Eurocode 7), EN 1992-2 (EC2 for bridges), PD 6694-1
> **Version:** 0.1
> **Status:** Draft -- Knowledge-based
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

**NOTE: This module is knowledge-based.** No local Eurocode 7 or DMRB foundation documents available. Engineer review recommended.

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| EN 1997-1 | 2004 + UK NA | Geotechnical design -- general rules | Current |
| EN 1992-2 | 2005 + UK NA | Concrete bridge substructure design | Current |
| PD 6694-1 | 2011 | Recommendations for EC2 bridges | Current |
| DMRB | Current | Highway structure foundations | Current |

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

No tables extracted (knowledge-based module). UK uses Eurocode 7 partial factor approach for geotechnical design -- fundamentally different from global FoS method.

---

## M.3 Country-Specific Reasoning

### M.3.2 Professional Judgment (UK-Specific)

The UK uses Eurocode 7 (EN 1997-1) for geotechnical design, which fundamentally differs from CP 2004 (referenced by MoWT Vol 4 for Uganda):

- **Partial factor approach:** Eurocode 7 applies partial factors to both actions (loads) and material properties (soil strength). This replaces the global factor of safety approach used in CP 2004 and the MoWT Vol 4 stability checks.
- **Design Approaches:** UK uses Design Approach 1 (DA1) with two combinations of partial factors -- different from the single FoS approach.
- **GDR requirement:** A Geotechnical Design Report is mandatory per Eurocode 7.

**The 1.5/2.0 FoS approach used in MoWT Vol 4 is NOT used in UK Eurocode 7 design.** Instead, partial factors ensure adequate safety through the DA1 combination system.

---

## M.4 Country-Specific Defaults

| Parameter | UK Default | Condition | Rationale |
|-----------|-----------|-----------|-----------|
| Geotechnical design | DA1 (Combination 1 + 2) | EN 1997-1 UK NA | Design Approach 1 |
| gamma_phi (DA1 Comb 2) | 1.25 | Soil friction angle | EN 1997-1 |
| gamma_G (DA1 Comb 1) | 1.35 | Permanent unfavourable | EN 1990 |
| Foundation design code | EN 1997-1 | Replaces CP 2004 | Current UK standard |

---

## M.5 Country-Specific Validation

- **Design approach:** Verify DA1 used (not global FoS 1.5/2.0 method).
- **Partial factors:** Verify EN 1997-1 partial factors on soil parameters.
- **GDR:** Verify Geotechnical Design Report requirement noted.
- **Foundation code:** Verify EN 1997-1 used (not CP 2004 which is superseded in UK).

---

## M.6 Country-Specific Escalation

| Trigger | Action |
|---------|--------|
| CP 2004 or global FoS used for UK | SENIOR REVIEW -- CP 2004 superseded. Use EN 1997-1 DA1. |
| Pile design required | SENIOR REVIEW -- Specialist geotechnical engineer with EN 1997-1 experience required. |

---

## M.7 Worked Example -- UK

### Example: Abutment Design (Conceptual)

**Given:** Same 6.5m cantilever abutment as Uganda example.

**UK Approach:**
1. **Earth pressure:** Eurocode 7 with partial factors on soil parameters (DA1 Combination 1: gamma_phi = 1.0, gamma_G = 1.35; Combination 2: gamma_phi = 1.25, gamma_G = 1.0).
2. **Substructure design:** EN 1992-2 for concrete design.
3. **No global FoS:** Stability verified through partial factor combinations, not FoS >= 1.5/2.0.
4. **Foundation:** Eurocode 7 bearing capacity verification using partial factors on soil parameters.

---

## M.8 References

1. BS EN 1997-1:2004+A1:2013, Eurocode 7: Geotechnical design, Part 1: General rules.
2. PD 6694-1:2011, Recommendations for the design of structures subject to traffic loading to BS EN 1992-2.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial knowledge-based draft. EN 1997-1 partial factor approach documented. |
