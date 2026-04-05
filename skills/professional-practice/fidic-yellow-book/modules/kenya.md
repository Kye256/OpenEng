# FIDIC Yellow Book -- Kenya Module

> **Parent Skill:** Skill #43 FIDIC Yellow Book
> **Country/Jurisdiction:** Kenya
> **Standards:** PPRA (Public Procurement and Asset Disposal Act 2015), FIDIC Conditions of Contract for Plant and Design-Build (1999/2017)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| FIDIC Conditions of Contract for Plant and Design-Build (Yellow Book) | 1st Edition 1999 / 2nd Edition 2017 | General Conditions Clauses 1-20 | Current |
| Public Procurement and Asset Disposal Act (PPRA) | 2015 | Design-build procurement provisions | Current |
| Public Procurement and Asset Disposal Regulations | 2020 | Two-stage tendering, design-build procedures | Current |
| Kenya Road Design Manual (RDM) | 2025 | Design standards for Contractor's design | Current |
| World Bank Standard Bidding Documents (Design-Build) | 2017 | Modified FIDIC Yellow Book conditions | Current |

### M.1.2 Institutional Context

**Kenya Road Authorities:** KeNHA (Kenya National Highways Authority) manages national and international trunk roads (Class A, B, C). KeRRA (Kenya Rural Roads Authority) manages rural and small town roads (Class D, E). KURA (Kenya Urban Roads Authority) manages urban roads. County Governments manage county roads. The Ministry of Roads and Transport (MoRT) provides policy oversight.

**KeNHA and Yellow Book:** Yellow Book is less common than Red Book for KeNHA road projects. Traditional practice is for the Employer to commission detailed design through a consulting firm, then procure construction using Red Book. However, Yellow Book use is increasing for:
- Expressway projects (e.g., Nairobi Expressway as a precedent for design-build highway delivery)
- Toll road concessions where design-build-operate models are adopted
- Large highway packages where design-build procurement offers efficiency
- Some urban infrastructure projects under KURA

**PPRA Design-Build Procurement:** The PPRA framework permits design-build procurement. Two-stage tendering (technical proposal followed by financial proposal) is the typical procurement method for design-build road projects under PPRA -- **ILLUSTRATIVE; verify against current PPRA regulations**.

**Engineer's Role in Design-Build:** Under Yellow Book, the Engineer's role shifts from design provider (Red Book) to design reviewer. The Engineer reviews the Contractor's design for compliance with Employer's Requirements but does not take responsibility for the design. This is the same as international practice.

### M.1.3 Standard Philosophy

The Yellow Book allocates design risk to the Contractor. The Employer defines what the Works must achieve (Employer's Requirements), and the Contractor determines how to achieve it. This philosophy is increasingly relevant for Kenya's large infrastructure projects but requires:
- Well-drafted Employer's Requirements with clear, measurable performance criteria
- An Engineer experienced in design review
- PPRA-compliant procurement and evaluation methods

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Design-Build Practice

**Employer's Requirements for Road Projects:** In Kenya, Employer's Requirements for design-build road projects typically specify:
- Geometric design standards per Kenya RDM series
- Pavement performance criteria (design traffic in MESA/CESA, design life, acceptable IRI range)
- Structural requirements for bridges and culverts per RDM 4.2 (EN/Eurocode)
- Environmental and social requirements per NEMA and donor safeguards
- Time for Completion and key milestones

**Performance Criteria (Typical for Roads):**
- Surface roughness: IRI < 2.5 m/km at completion (new construction), IRI < 3.5 m/km (rehabilitation) -- **ILLUSTRATIVE; verify Employer's Requirements**
- Pavement deflection: Maximum FWD deflection per design specification
- Drainage: no ponding on carriageway during design storm event
- Structural: bridge load testing to verify design capacity per EN/Eurocode requirements

**Nairobi Expressway Precedent:** The Nairobi Expressway (completed 2022) is a notable design-build precedent in Kenya. While delivered under a PPP/concession framework rather than standard FIDIC Yellow Book, it demonstrates Kenya's capacity for design-build highway delivery and informs future design-build procurement approaches.

**Lump Sum Pricing:** Under lump sum Yellow Book contracts, the Contractor bears quantity risk. Monthly progress payments are based on milestones or percentage completion, not measured quantities. This differs from the re-measurement approach familiar to many Kenyan contractors.

### M.2.2 Common COPA (Yellow Book)

Similar to Red Book Kenya COPA (see Skill #42 Kenya module), with additional provisions for:
- Engineer's design review timeline (may be extended from 21 days to 28 or 42 days)
- Employer's right to review and comment on design at key stages (preliminary design, detailed design, construction drawings)
- Performance testing protocols and acceptance criteria
- Intellectual property provisions for the Contractor's design
- Kenya RDM compliance requirements for the Contractor's design

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Step 1a: Is Yellow Book appropriate for this Kenya project?**
```
Is the Employer prepared to define Employer's Requirements (not detailed design)?
  |-- YES --> Yellow Book may be appropriate
  |-- NO (Employer wants to provide design) --> Use Red Book (Skill #42)
  +-- PARTIAL (Employer has preliminary design) --> Consider either:
       - Complete the design, then Red Book
       - Convert to Employer's Requirements, then Yellow Book
```

**Step 1b: PPRA procurement route for design-build**
```
Is the project value above PPRA threshold for Open Tendering?
  |-- YES --> Open Tendering with two-stage evaluation (ILLUSTRATIVE)
  +-- Donor-funded? --> Donor procurement rules may override PPRA
```

### M.3.2 Professional Judgment (Country-Specific)

**Local contractor capacity for design-build.** Design-build in Kenya typically involves international contractors or joint ventures with design capability. Local contractors are primarily experienced in construction, not integrated design-build. The Engineer should assess whether the Contractor has adequate design resources.

**Kenya RDM standards still apply.** Even though the Contractor provides the design, the design must comply with Kenya RDM series standards. The Engineer reviews for compliance with these standards.

**Performance testing.** Sophisticated performance testing (FWD, automated IRI surveys) requires specialised equipment. Kenya has reasonable availability of such equipment through KeNHA and private providers, but the Employer's Requirements should specify realistic testing protocols.

### M.3.3 Common Errors (Country-Specific)

1. **Employer providing overly prescriptive "Employer's Requirements."** If the Employer specifies the detailed design solution (not just performance criteria), the risk allocation shifts ambiguously.
2. **Engineer exceeding the review role.** Some Engineers accustomed to Red Book try to direct the Contractor's design rather than reviewing for compliance.
3. **Not planning for performance testing.** Testing equipment and protocols should be agreed early in the contract.
4. **Confusing PPP/concession frameworks with standard FIDIC Yellow Book.** The Nairobi Expressway was a PPP, not a standard Yellow Book contract. The contractual frameworks differ significantly.

---

## M.4 Country-Specific Defaults

All Red Book Kenya module defaults (Skill #42) apply unless modified below:

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Payment basis | Lump sum with milestones | Yellow Book project | ASSUMED: Lump sum payment. Verify COPA. | Yellow Book standard |
| Design review period | 21 days | Not modified | ASSUMED: 21-day review period (Sub-Clause 5.2, 1999). ILLUSTRATIVE -- verify COPA. | 1999 provision |
| IRI acceptance | < 2.5 m/km (new), < 3.5 m/km (rehab) | Not stated | ASSUMED: Typical IRI criteria. ILLUSTRATIVE -- verify Employer's Requirements. | Kenya road practice |

---

## M.5 Country-Specific Validation

All Red Book Kenya module validation checks (Skill #42) apply. Additional:

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design review period | 14 | 42 | days | Sub-Clause 5.2 / COPA | Verify COPA if outside range |
| IRI at completion (new) | 1.5 | 3.0 | m/km | Employer's Requirements | If outside range, verify ER specification |

### M.5.2 Standards Compliance Checks

- **Check:** Contractor's design complies with Kenya RDM standards
- **Standard:** Kenya RDM series as applicable
- **Pass condition:** Design parameters within Kenya RDM ranges
- **Fail action:** Require redesign or formal departure approval

---

## M.6 Country-Specific Escalation

All Red Book Kenya module escalation triggers (Skill #42) apply. Additional:

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Contractor lacks design capacity | Design-build capability gap | SENIOR REVIEW -- Contractor's design team assessment indicates [gap]. May need to require additional specialist input. |
| Performance criteria unmeasurable | Employer's Requirements deficiency | SENIOR REVIEW -- Performance criterion [X] in Employer's Requirements is not measurable with available testing equipment. Clarification needed. |
| Expressway/toll road framework confusion | PPP vs Yellow Book | NOTE -- Confirm this is a standard FIDIC Yellow Book contract, not a PPP/concession. Different contractual frameworks apply. |

---

## M.7 Worked Example -- Kenya

### Example: KeNHA Design-Build Expressway Project -- Pavement Design Review

**Project:** KeNHA design-build urban expressway project, KES 25 billion, AfDB funded. FIDIC Yellow Book 1999 with KeNHA COPA.

**Scenario:** The Contractor submits a pavement design for a 15 km expressway section. The Employer's Requirements specify: (a) design traffic of 30 million CESA over 20-year design life, (b) surface roughness IRI < 2.0 m/km at completion, (c) compliance with Kenya RDM 3.4 pavement design methodology. The Contractor proposes a pavement structure using a mechanistic-empirical approach per RDM 3.4.

**Solution:**

Step 1: Receive design document (Sub-Clause 5.2)
- Design submitted on Day 0. Engineer has 21 days to review (or as modified by COPA).

Step 2: Review against Employer's Requirements
- Does the proposed design meet the 30 million CESA design traffic requirement?
  - Contractor's M-E analysis shows design capacity of 33 million CESA. Adequate.
- Does the proposed pavement structure comply with Kenya RDM 3.4 methodology?
  - Contractor has used M-E method as primary, consistent with RDM 3.4.
  - Material specifications reference Kenya Standard Specification for Road and Bridge Construction.
  - Layer thickness and material quality within RDM ranges.

Step 3: Assess performance criteria
- IRI < 2.0 m/km: achievable with the proposed surface course (AC 14 wearing course per Standard Specification) and construction QC specifications.
- FWD deflection criteria specified and achievable.

Step 4: Engineer's response
- Response: Comment with no objection. Contractor may proceed.
- Comments: (a) M-E analysis accepted. (b) Marshall mix design to be verified with trial section. (c) Monitoring plan for first 500m trial section requested.
- **Key note:** Engineer's review does NOT relieve the Contractor of design responsibility.

Step 5: PPRA/donor compliance
- AfDB procurement rules apply to this design-build contract.
- Design review documentation retained for AfDB supervision missions.

**Result:** Design reviewed and accepted with comments. Contractor proceeds. Performance criteria documented. AfDB compliance maintained.

---

## M.8 References

1. FIDIC Conditions of Contract for Plant and Design-Build, 1st Edition 1999 (Yellow Book)
2. FIDIC Conditions of Contract for Plant and Design-Build, 2nd Edition 2017 (differences noted)
3. Public Procurement and Asset Disposal Act, 2015 (Kenya)
4. Public Procurement and Asset Disposal Regulations, 2020 (Kenya)
5. Kenya Road Design Manual (RDM) series -- design standards for Contractor's design
6. World Bank Standard Bidding Documents: Procurement of Works (Design-Build) (2017)
7. Kenya Standard Specification for Road and Bridge Construction

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft with Kenya design-build context, Nairobi Expressway precedent, KeNHA COPA patterns, PPRA design-build procurement, worked example (AfDB-funded expressway pavement design review). All threshold values flagged as ILLUSTRATIVE. |
