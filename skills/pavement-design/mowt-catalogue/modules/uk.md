# MoWT Catalogue Pavement Design -- UK Module

> **Parent Skill:** #21 MoWT Catalogue Pavement Design
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 227 (Design for New Pavement Construction)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CD 227 | November 2018 | Pavement design for new construction | Current -- engineer review required (no local document) |
| HD 26/06 | 2006 | Pavement design (superseded by CD 227) | Superseded |

### M.1.2 Institutional Context

In the UK, pavement design for trunk roads and motorways follows DMRB (Design Manual for Roads and Bridges). Local authority roads may use DMRB or local guidance. National Highways (formerly Highways England) manages the strategic road network.

### M.1.3 Standard Philosophy

UK pavement design uses an analytical approach, not a simple catalogue. CD 227 provides standard pavement designs based on foundation class and design traffic (in millions of standard axles, msa). The UK approach uses 4 foundation classes based on subgrade stiffness modulus, fundamentally different from the MoWT CBR-based classification.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

UK uses foundation classes (1-4) based on subgrade stiffness modulus, not CBR-based subgrade classes:
- **Foundation Class 1:** Subgrade modulus < 25 MPa (weak)
- **Foundation Class 2:** Subgrade modulus 25-50 MPa (standard)
- **Foundation Class 3:** Subgrade modulus 50-100 MPa (good)
- **Foundation Class 4:** Subgrade modulus > 100 MPa (very good)

Pavement design is then selected from CD 227 standard designs per foundation class and traffic level.

### M.2.2 Country-Specific Formulas

UK uses msa (million standard axles) rather than ESAs. The standard axle in UK is 80 kN (same as ESA). Design traffic is calculated per CD 224 (Traffic Assessment).

### M.2.3 Classification System

UK roads: Motorways, All-purpose trunk roads (A-roads), Local authority roads.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

UK does not use the MoWT catalogue method. Pavement design follows CD 227 which provides a restricted number of standard designs based on foundation class and design traffic band. The philosophical difference is significant: UK uses an analytical approach with standardised designs verified by mechanistic analysis, while MoWT provides a broader catalogue of options.

### M.3.2 Professional Judgment (UK-Specific)

The UK approach assumes higher construction quality control and different material specifications than Uganda. Direct comparison of structures is not meaningful without accounting for these differences.

### M.3.3 Common Errors (UK-Specific)

1. **Attempting to use MoWT catalogue structures in the UK.** The material specifications, climate conditions, and construction standards are fundamentally different.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Foundation class | 2 | Not specified | ASSUMED: Foundation Class 2 (standard) | Most common UK condition |

---

## M.5 Country-Specific Validation

Not applicable -- MoWT catalogue method is not used in UK. CD 227 has its own validation requirements.

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Any design that does not comply with CD 227 requires a formal departure approved by the Overseeing Organisation.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| UK jurisdiction specified | MoWT catalogue not applicable | SENIOR REVIEW -- Use CD 227 for UK pavement design. MoWT catalogue is for Uganda/East African practice. |

---

## M.7 Worked Example -- UK

### Example: 20 MESA, Foundation Class 2

**Given:**
- All-purpose trunk road in England
- Design traffic: 20 million standard axles (msa)
- Foundation Class 2 (subgrade modulus ~40 MPa)

**Approach (conceptual -- no local CD 227 document):**
- CD 227 would specify a standard design for FC2 and 20 msa
- Typical structure might include: 180 mm HRA/SMA surfacing + binder, 220 mm dense base, 225 mm sub-base
- Foundation Class 2 may require a capping layer depending on subgrade condition

**Note:** Exact values not available without CD 227 document. Engineer review required.

---

## M.8 References

1. National Highways, *CD 227 Design for New Pavement Construction*, DMRB, November 2018.
2. National Highways, *CD 224 Traffic Assessment*, DMRB.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- knowledge-based, no local CD 227 document |
