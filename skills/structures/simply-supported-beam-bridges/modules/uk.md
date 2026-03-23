# Simply Supported Beam Bridges -- UK Module

> **Parent Skill:** #37 Simply Supported Beam Bridges
> **Country/Jurisdiction:** United Kingdom
> **Standards:** EN 1992-2 (Eurocode 2 for Bridges), EN 1994-2 (Composite Bridges)
> **Version:** 0.1
> **Status:** Draft -- Knowledge-based
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

**NOTE: This module is knowledge-based.** No local Eurocode bridge design documents available. Engineer review recommended.

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| EN 1992-2 | 2005 + UK NA | Design of concrete bridges | Current |
| EN 1994-2 | 2005 + UK NA | Design of composite bridges | Current |
| DMRB design standards | Current | Highway bridge design | Current |

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

No tables extracted (knowledge-based module). Span-to-depth ratios are similar in principle to those used with BS 5400 but applied with Eurocode loading and partial factors.

---

## M.3 Country-Specific Reasoning

### M.3.2 Professional Judgment (UK-Specific)

The UK uses Eurocode design methods with partial factors from EN 1990. Span-to-depth ratios are similar in principle to those used with BS 5400 but the loading regime differs (LM1 vs HA/HB). The design process is:

1. Determine loading per EN 1991-2 (LM1-LM4) from Skill #36 UK module
2. Preliminary sizing using span-to-depth ratios (similar ranges to universal table)
3. Detailed design per EN 1992-2 (concrete) or EN 1994-2 (composite) with UK National Annex
4. Technical Approval (AIP) process per BD 2

---

## M.4 Country-Specific Defaults

| Parameter | UK Default | Condition | Rationale |
|-----------|-----------|-----------|-----------|
| gamma_G (unfavourable) | 1.35 | ULS | EN 1990 UK NA |
| gamma_Q (traffic) | 1.35 | ULS | EN 1990 UK NA |
| Design code (concrete) | EN 1992-2 | Concrete bridges | Current UK standard |
| Design code (composite) | EN 1994-2 | Composite bridges | Current UK standard |

---

## M.5 Country-Specific Validation

- **Design code:** Verify EN 1992-2 or EN 1994-2 used (not BS 5400 which is withdrawn).
- **Loading:** Verify loading from EN 1991-2 LM1 (not HA/HB).
- **Partial factors:** Verify EN 1990 partial factors used.
- **Technical Approval:** Note AIP process requirement per BD 2.

---

## M.6 Country-Specific Escalation

| Trigger | Action |
|---------|--------|
| BS 5400 Part 4 specified for UK new design | SENIOR REVIEW -- BS 5400 withdrawn. Use EN 1992-2 + UK NA. |
| Category 3 structure (DMRB) | SENIOR REVIEW -- Category 3 check required per Technical Approval procedures. |

---

## M.7 Worked Example -- UK

### Example: 20m Bridge with EN 1992-2 (Conceptual)

**Given:** Same 20m bridge as Uganda example but UK context.

**UK Approach:**
1. **Loading:** EN 1991-2 LM1 (tandem + UDL per lane) from Skill #36 UK module. Different loading values from HA/HB.
2. **Preliminary sizing:** Span-to-depth ratios similar (L/12 to L/16 for RC beam). Depth approximately 1.3-1.7m.
3. **Detailed design:** EN 1992-2 for concrete bridges using partial factor method. gamma_G = 1.35, gamma_Q = 1.35 (UK NA).
4. **Key difference:** EN 1992-2 uses a different approach to shear (strut-and-tie model) and crack width control compared to BS 5400 Part 4.

---

## M.8 References

1. BS EN 1992-2:2005, Eurocode 2: Design of concrete structures, Part 2: Concrete bridges.
2. BS EN 1994-2:2005, Eurocode 4: Design of composite steel and concrete structures, Part 2: General rules and rules for bridges.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial knowledge-based draft. EN 1992-2/EN 1994-2 referenced. |
