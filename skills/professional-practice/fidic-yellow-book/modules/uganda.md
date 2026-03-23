# FIDIC Yellow Book -- Uganda Module

> **Parent Skill:** Skill #43 FIDIC Yellow Book
> **Country/Jurisdiction:** Uganda
> **Standards:** FIDIC Conditions of Contract for Plant and Design-Build, 1st Edition 1999
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| FIDIC Conditions of Contract for Plant and Design-Build (Yellow Book) | 1st Edition 1999 | General Conditions Clauses 1-20 | Current |
| MoWT Road Design Manual | Various volumes | Design standards for Contractor's design | Current |
| World Bank Standard Bidding Documents (Design-Build) | 2017 | Modified FIDIC Yellow Book conditions | Current (for donor-funded design-build) |

### M.1.2 Institutional Context

**UNRA and Yellow Book:** Yellow Book is less common than Red Book for UNRA road projects. Traditional practice in Uganda is for the Employer (UNRA) to commission the detailed design through a consulting firm, then procure construction using Red Book. However, Yellow Book use is increasing for:
- Large highway packages where design-build procurement offers efficiency
- Projects where the Contractor may propose innovative solutions (e.g., alternative pavement designs, value-engineered bridge designs)
- Some donor-funded projects where the funding agency encourages design-build procurement

**Engineer's Role in Design-Build:** Under Yellow Book, the Engineer's role shifts from design provider (Red Book) to design reviewer. The Engineer reviews the Contractor's design for compliance with Employer's Requirements but does not take responsibility for the design. This requires a different skill set and mindset from traditional Red Book administration.

### M.1.3 Standard Philosophy

The Yellow Book allocates design risk to the Contractor, who is better placed to integrate design and construction for efficiency. The Employer defines what the Works must achieve (Employer's Requirements), and the Contractor determines how to achieve it. This philosophy is increasingly attractive for large infrastructure projects in Uganda but requires:
- Well-drafted Employer's Requirements with clear, measurable performance criteria
- An Engineer experienced in design review (not just construction supervision)
- Appropriate procurement and evaluation methods (often two-stage or negotiated)

---

## M.2 Country-Specific Knowledge

### M.2.1 Uganda Design-Build Practice

**Employer's Requirements for Road Projects:** In Uganda, Employer's Requirements for design-build road projects typically specify:
- Geometric design standards per MoWT Road Design Manual
- Pavement performance criteria (design traffic, design life, acceptable IRI range)
- Structural requirements for bridges and culverts
- Environmental and social requirements per NEMA and World Bank safeguards
- Time for Completion and key milestones

**Performance Criteria (Typical for Roads):**
- Surface roughness: IRI < 2.5 m/km at completion (new construction), IRI < 3.5 m/km (rehabilitation)
- Pavement deflection: Maximum FWD deflection at centre of beam per design specification
- Drainage: no ponding on carriageway during design storm event
- Structural: bridge load testing to verify design capacity

**Lump Sum Pricing in Uganda:** Under lump sum Yellow Book contracts, the Contractor bears quantity risk. This is less familiar to Ugandan contractors accustomed to re-measurement contracts. The Engineer should understand that:
- Monthly progress payments are based on milestones or percentage completion, not measured quantities
- The Contractor cannot claim additional payment for quantity overruns
- Variations that change the scope can still be valued

### M.2.2 Common Particular Conditions (Yellow Book)

Similar to Red Book UNRA Particular Conditions (see Skill #42 Uganda module), with additional provisions for:
- Engineer's design review timeline (may be extended from 21 days to 28 or 42 days)
- Employer's right to review and comment on design at key stages (preliminary design, detailed design, construction drawings)
- Performance testing protocols and acceptance criteria
- Intellectual property provisions for the Contractor's design

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Step 1a: Is Yellow Book appropriate for this Uganda project?**
```
Is the Employer prepared to define Employer's Requirements (not detailed design)?
  |-- YES --> Yellow Book may be appropriate
  |-- NO (Employer wants to provide design) --> Use Red Book (Skill #42)
  +-- PARTIAL (Employer has preliminary design) --> Consider either:
       - Complete the design, then Red Book
       - Convert to Employer's Requirements, then Yellow Book
```

### M.3.2 Professional Judgment (Country-Specific)

**Local contractor capacity for design-build is limited.** Many Ugandan contractors are experienced in construction but not design. Design-build projects in Uganda typically involve international contractors or joint ventures with design capability. The Engineer should assess whether the Contractor has adequate design resources and expertise.

**MoWT design standards still apply.** Even though the Contractor provides the design, the design must comply with MoWT Road Design Manual standards (the same standards used for Red Book projects). The Engineer reviews for compliance with these standards.

**Performance testing infrastructure may be limited.** Sophisticated performance testing (e.g., FWD testing, automated IRI surveys) requires specialised equipment that may not be readily available in Uganda. The Employer's Requirements should specify realistic testing protocols achievable with available equipment.

### M.3.3 Common Errors (Country-Specific)

1. **Employer providing overly prescriptive "Employer's Requirements."** If the Employer specifies the detailed design solution (not just performance criteria), the risk allocation shifts ambiguously -- this defeats the purpose of Yellow Book.
2. **Engineer exceeding the review role.** In Uganda, some Engineers accustomed to Red Book administration try to direct the Contractor's design rather than reviewing for compliance. This creates responsibility issues.
3. **Not planning for performance testing.** Testing equipment and protocols should be agreed early in the contract.

---

## M.4 Country-Specific Defaults

All Red Book Uganda module defaults (Skill #42) apply unless modified below:

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Payment basis | Lump sum with milestones | Yellow Book project | ASSUMED: Lump sum payment. Verify Particular Conditions. | Yellow Book standard |
| Design review period | 21 days | Not modified | ASSUMED: 21-day review period (Sub-Clause 5.2, 1999) | 1999 provision |
| IRI acceptance | < 2.5 m/km (new), < 3.5 m/km (rehab) | Not stated | ASSUMED: Typical IRI criteria. Verify Employer's Requirements. | Uganda road practice |

---

## M.5 Country-Specific Validation

All Red Book Uganda module validation checks (Skill #42) apply. Additional:

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design review period | 14 | 42 | days | Sub-Clause 5.2 / Particular Conditions | Verify Particular Conditions if outside range |
| IRI at completion (new) | 1.5 | 3.0 | m/km | Employer's Requirements | If outside range, verify ER specification |

### M.5.2 Standards Compliance Checks

- **Check:** Contractor's design complies with MoWT Road Design Manual
- **Standard:** MoWT volumes as applicable
- **Pass condition:** Design parameters within MoWT ranges
- **Fail action:** Require redesign or formal departure approval

---

## M.6 Country-Specific Escalation

All Red Book Uganda module escalation triggers (Skill #42) apply. Additional:

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Contractor lacks design capacity | Design-build capability gap | SENIOR REVIEW -- Contractor's design team assessment indicates [gap]. May need to require additional specialist input. |
| Performance criteria unmeasurable | Employer's Requirements deficiency | SENIOR REVIEW -- Performance criterion [X] in Employer's Requirements is not measurable with available testing equipment. Clarification needed. |

---

## M.7 Worked Example -- Uganda

### Example: UNRA Design-Build Highway Project -- Pavement Design Review

**Project:** UNRA design-build highway project, UGX 120 billion, World Bank funded. Contractor is an international JV with local partner.

**Scenario:** The Contractor submits a pavement design for a 45 km highway section. The Employer's Requirements specify: (a) design traffic of 20 million ESA over 20-year design life, (b) surface roughness IRI < 2.5 m/km at completion, (c) compliance with MoWT Road Design Manual pavement design methodology. The Contractor proposes a pavement structure that uses a modified layer configuration different from the standard MoWT catalogue.

**Solution:**

Step 1: Receive design document (Sub-Clause 5.2)
- Design submitted on Day 0. Engineer has 21 days to review.

Step 2: Review against Employer's Requirements
- Does the proposed design meet the 20 million ESA design traffic requirement?
  - Contractor's calculation shows design capacity of 22 million ESA. Adequate.
- Does the proposed pavement structure comply with MoWT methodology?
  - Contractor has used MoWT methodology but proposes non-catalogue layer configuration.
  - MoWT methodology permits Engineer-approved departures from the catalogue. The Contractor has provided a mechanistic analysis supporting the alternative design.
  - Review: the mechanistic analysis is technically sound and demonstrates adequate structural capacity.

Step 3: Assess performance criteria
- IRI < 2.5 m/km: achievable with the proposed surface course and construction specifications.
- The Contractor's construction specification includes quality control measures consistent with achieving the IRI target.

Step 4: Engineer's response
- Response: Comment with no objection. The Contractor may proceed with the proposed design.
- Comments: (a) Mechanistic analysis accepted as justification for non-catalogue design. (b) Construction QC specification adequate for achieving IRI target. (c) Monitoring plan requested for first 500m trial section.
- **Key note:** Engineer's review does NOT relieve the Contractor of design responsibility. If the pavement design proves inadequate during the design life, the Contractor remains liable.

Step 5: Performance testing plan
- At completion, the Contractor shall demonstrate:
  - IRI survey: automated survey showing IRI < 2.5 m/km for each 100m section
  - FWD testing: maximum deflections within design limits at 200m intervals
  - Visual inspection: no defects, no rutting, no cracking at completion

**Result:** Design reviewed and accepted with comments. Contractor proceeds. Performance criteria and testing plan documented.

---

## M.8 References

1. FIDIC Conditions of Contract for Plant and Design-Build, 1st Edition 1999 (Yellow Book)
2. FIDIC Users' Guide: A Practical Guide to the 1999 Red and Yellow Books, Brian W. Totterdill, Thomas Telford, 2006
3. MoWT Road Design Manual (various volumes -- design standards for Contractor's design)
4. World Bank Standard Bidding Documents: Procurement of Works (Design-Build) (2017)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with Uganda design-build context, pavement design review worked example, performance criteria for roads, Engineer's review role clarification. |
