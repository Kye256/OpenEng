# Bridge Site Selection -- UK Module

> **Parent Skill:** #35 Bridge Site Selection
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 350 (Design of Highway Structures), BD 2 (Technical Approval)
> **Version:** 0.1
> **Status:** Draft -- Knowledge-based
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

**NOTE: This module is knowledge-based.** The referenced DMRB standards are not available locally for detailed table extraction. Content is based on general knowledge of UK bridge design practice and the Technical Approval (TA) process. Engineer review recommended before use on UK projects.

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CD 350 | Current | Design of highway structures | Current |
| BD 2 (DMRB) | Current | Technical approval of highway structures | Current |
| EN 1997-1 | 2004 + UK NA | Eurocode 7 -- Geotechnical design | Current |
| CIRIA C742 | 2015 | Manual on scour at bridges | Current reference |

### M.1.2 Institutional Context

In the UK, Highways England (now National Highways) manages the strategic road network. Bridge sites on trunk roads require Technical Approval (TA) through a formal process governed by BD 2. Local authorities manage other roads with their own approval processes, but generally follow DMRB principles.

### M.1.3 Standard Philosophy

The UK uses a formal Technical Approval process for all bridge structures. This requires an Approval in Principle (AIP) submission before detailed design commences. The AIP covers site selection, bridge type, loading, and design approach. This is a fundamentally different regulatory framework from Uganda, where site selection is primarily an engineering judgment exercise documented in the design report.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

No tables extracted (knowledge-based module). UK bridge site assessment follows DMRB guidance with the following key differences from Uganda:

- **Ground investigation:** BS 5930 (Code of Practice for Ground Investigations) governs. Typically more extensive than Uganda requirements.
- **Flood estimation:** FEH (Flood Estimation Handbook) methodology replaces Rational/SCS methods.
- **Scour assessment:** CIRIA C742 is the primary UK scour reference, alongside DMRB BA 59 (now superseded by CD 356).
- **Environmental assessment:** Environmental Impact Assessment Regulations (UK) with formal screening/scoping process.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

The UK process adds a formal Technical Approval step that does not exist in Uganda:

```
Step 0 (UK): Initiate Technical Approval
  |-- Determine Approval Authority (National Highways or local)
  |-- Prepare Approval in Principle (AIP) document
  +-- AIP must be approved before detailed design

Step 3 (UK): Hydraulic assessment
  |-- Use FEH methodology for flood estimation
  |-- Scour assessment per CIRIA C742
  +-- Environmental Agency consultation required for works in/near watercourses

Step 4 (UK): Geotechnical assessment
  |-- Ground investigation per BS 5930
  |-- Geotechnical design to Eurocode 7 (EN 1997-1) with UK NA
  +-- Geotechnical Design Report (GDR) required per EC7
```

### M.3.2 Professional Judgment (UK-Specific)

The Technical Approval process is central to UK bridge design. No detailed design should commence without an approved AIP. The AIP includes site selection justification, proposed bridge type, and design approach. This contrasts with Uganda where site selection is typically documented as part of the Feasibility Study or Preliminary Design Report.

Environmental requirements are generally more stringent in the UK, with formal EA consultation and potentially Water Framework Directive (WFD) assessment for works affecting watercourses.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design return period | Q100 (200-year for HA structures) | Trunk road bridge | ASSUMED: 200-year design flood per DMRB | DMRB requirements for trunk road structures |
| Minimum freeboard | Per DMRB CD 356 | Not specified | ASSUMED: DMRB freeboard per CD 356 | UK practice |

---

## M.5 Country-Specific Validation

### M.5.1 Standards Compliance Checks

- **Check:** Technical Approval (AIP) status
- **Standard:** BD 2 (DMRB)
- **Pass condition:** AIP approved or in preparation
- **Fail action:** NOTE -- Detailed design should not proceed without approved AIP.

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Any design that does not comply with DMRB requirements requires a departure application to the Overseeing Organisation. This must be approved before the non-compliant design can be implemented. This is a mandatory requirements-based process, unlike the guidance-based approach of MoWT.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No AIP submitted | TA process not followed | SENIOR REVIEW -- Approval in Principle must be submitted per BD 2 before detailed design. |
| Departure from DMRB required | Non-compliant design | SENIOR REVIEW -- Departure from [standard] required. Submit departure application to Overseeing Organisation. |

---

## M.7 Worked Example -- UK

### Example: River Crossing on Trunk Road (Conceptual)

**Given:** Same river data as Uganda example (45m channel, Q100 = 250 m3/s) but for UK context.

**UK Approach:**
1. **Initiate TA process:** Submit Approval in Principle to National Highways (or local authority). AIP includes site location, proposed crossing arrangement, bridge type options, and design approach.
2. **Flood assessment:** Use FEH statistical method or rainfall-runoff method. Design to 200-year return period for HA structures per DMRB.
3. **Ground investigation:** Commission ground investigation per BS 5930. Geotechnical Baseline Report and Geotechnical Design Report per Eurocode 7.
4. **Scour assessment:** Apply CIRIA C742 methodology for scour depth estimation.
5. **Environmental assessment:** Consult Environment Agency. Assess WFD compliance. Prepare environmental statement if required by EIA Regulations.

**Key differences from Uganda:**
- Formal AIP approval required before design proceeds
- FEH replaces Rational/SCS for flood estimation
- BS 5930 ground investigation (generally more extensive)
- Eurocode 7 for geotechnical design (not CP 2004)
- Environmental Agency consultation mandatory

---

## M.8 References

1. Design Manual for Roads and Bridges, CD 350 -- Design of Highway Structures.
2. Design Manual for Roads and Bridges, BD 2 -- Technical Approval of Highway Structures.
3. BS EN 1997-1:2004+A1:2013, Eurocode 7 -- Geotechnical Design, with UK National Annex.
4. CIRIA C742, *Manual on scour at bridges and other hydraulic structures*, 2015.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial knowledge-based draft. TA/AIP process documented. No local DMRB documents available -- flagged for engineer review. |
