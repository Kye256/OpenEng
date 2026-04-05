---
name: "fidic-yellow-book"
description: "Use when administering a design-build contract under FIDIC Conditions of Contract for Plant and Design-Build (Yellow Book 1999). Requires Skill #42 (FIDIC Red Book) as foundation -- this skill documents key differences. Focus on Contractor's design obligations (Clause 5), performance criteria, testing on completion (Sub-Clause 9.4), and modified risk allocation. Compose with Skills #44-46 for specific procedures."
---

# FIDIC Yellow Book -- Contract Administration (Design-Build)

> **Skill ID:** 43
> **Domain:** Professional Practice
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda, Kenya

## Purpose

Guide the Engineer on Yellow Book-specific contract administration -- design review, performance verification, testing on completion -- highlighting key differences from the Red Book (Skill #42). This skill requires Skill #42 as its foundation; all common FIDIC provisions (payment, claims, dispute resolution) are documented there. This skill focuses on what is different in the Yellow Book.

## When to Use This Skill

- **Use when:** Administering a design-build contract where the Contractor is responsible for both design and construction. The Yellow Book is used when the Employer provides Employer's Requirements (performance criteria) and the Contractor provides the design to meet those requirements.
- **Do not use when:** The Employer provides the detailed design (use Skill #42 Red Book). Not for EPC/turnkey projects (Silver Book).
- **Prerequisite skills:** Skill #42 (FIDIC Red Book) -- the Yellow Book shares the same clause numbering structure and many provisions are identical. This skill only documents the differences.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Fundamental Difference from Red Book:** In the Red Book, the Employer provides the design (drawings and specifications) and the Contractor builds to that design. In the Yellow Book, the Employer provides Employer's Requirements (performance criteria and functional specifications) and the Contractor designs and builds to meet those requirements. This shifts design risk from the Employer to the Contractor.

**Key Differences from Red Book:**

| Topic | Red Book (Skill #42) | Yellow Book |
|-------|---------------------|-------------|
| Design responsibility | Employer provides design | Contractor designs to Employer's Requirements |
| Contract documents | Drawings + Specifications | Employer's Requirements + Contractor's Proposal |
| Payment basis | Re-measurement (measured quantities) | Lump sum (or schedule of payments) |
| Design review | N/A (Employer's design) | Engineer reviews Contractor's design (Sub-Clause 5.2) |
| Design risk | Employer | Contractor |
| Testing on completion | Tests on Completion (Clause 9) | Tests on Completion with performance criteria (Sub-Clause 9.4) |
| Tests after completion | Sub-Clause 12.1 | Clause 12 (Tests after Completion -- more detailed) |

**Clause 5 -- Design (Yellow Book-specific):**
- **Sub-Clause 5.1 -- General Design Obligations:** The Contractor shall be responsible for the design of the Works. Design shall be in accordance with the Employer's Requirements and applicable standards. The Contractor is responsible for the correctness and completeness of the design.
- **Sub-Clause 5.2 -- Contractor's Documents:** The Contractor shall submit design documents to the Engineer for review. The Engineer has 21 days to review and respond (approve, comment with no objection, comment with disapproval, or reject with reasons). **Critical: Engineer's review does not relieve the Contractor of design responsibility.**
- **Sub-Clause 5.3 -- Contractor's Undertaking:** The Contractor undertakes that the design, when completed, will be fit for the intended purpose stated in the Employer's Requirements.
- **Sub-Clause 5.4 -- Technical Standards and Regulations:** The Contractor shall comply with applicable technical standards and regulations. If conflicting, the Contractor shall notify the Engineer.

**Employer's Requirements:**
- Replace the Drawings and Specifications in the Red Book
- Define what the Works must achieve (performance criteria, functional requirements)
- The Contractor is free to design the solution, provided it meets these requirements
- Ambiguities in the Employer's Requirements are a key risk area (see Pitfall #3)

**Testing on Completion (Sub-Clause 9.4 -- Yellow Book):**
- More significant in Yellow Book than Red Book because the Works must demonstrate compliance with performance criteria
- Performance tests may include: road surface roughness (IRI), pavement deflection, drainage performance, structural capacity
- If performance tests fail, the Contractor must remedy and retest
- If the Works cannot achieve the performance criteria, the consequences depend on the severity: remedial work, reduction in Contract Price, or rejection of the Works

**Lump Sum Payment:**
- Yellow Book typically uses a lump sum Contract Price (Sub-Clause 14.1) with schedule of payments, rather than re-measurement
- The Contractor bears quantity risk -- if actual quantities exceed estimates, the Contractor absorbs the additional cost
- Payment is milestone-based or percentage-based, not measurement-based

**2017 Edition Differences:**
- Similar structural changes as Red Book 2017 (Clause 20/21 split, DAAB, etc.)
- Sub-Clause 5.2 review timeline increased to 28 days (from 21 days in 1999)
- Enhanced design review provisions
- As with Red Book, 1999 remains standard in East Africa

### 1.2 Key Relationships (No Formulas)

This is a knowledge/judgment skill. No engineering formulas apply. Key relationships:

**Design Review Timeline (Sub-Clause 5.2 -- 1999):**
```
Contractor submits design documents
  --> Engineer reviews within 21 days
    |-- Approve (no comment) --> Contractor proceeds
    |-- Comment with no objection --> Contractor proceeds, considers comments
    |-- Comment with disapproval --> Contractor revises and resubmits
    +-- Reject (with reasons) --> Contractor redesigns and resubmits
  --> NOTE: Engineer's review does NOT transfer design responsibility
```

**Performance Test Flow (Sub-Clause 9.4):**
```
Works reach substantial completion
  --> Contractor conducts Tests on Completion per Employer's Requirements
    |-- PASS --> Proceed to Taking-Over (10.1)
    +-- FAIL --> Assess cause:
         |-- Defect in construction --> Contractor remedies and retests
         |-- Design inadequacy --> Contractor redesigns, rebuilds, retests
         +-- Employer's Requirements inadequate --> Discuss with Employer
```

### 1.3 Figures & Diagrams

No figures required. The flowcharts above represent the critical Yellow Book-specific processes.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm this is a Yellow Book contract
  |-- Contractor responsible for design? --> YES = Yellow Book
  |-- Employer provides Employer's Requirements (not drawings)? --> YES = Yellow Book
  +-- If Employer provides detailed design --> Use Red Book (Skill #42)

Step 2: For Yellow Book-specific issues, use Yellow Book decision trees below
Step 3: For common FIDIC issues (payment, claims, disputes), use Red Book (Skill #42)
  NOTE: Clause numbering is the same; key differences are noted below
```

**Decision Tree E -- Design Document Review (Yellow Book-specific):**
```
E1: Contractor submits design document (Sub-Clause 5.2)
  --> Engineer has 21 days to review (1999 edition)

E2: Review against:
  |-- Employer's Requirements: does design meet performance criteria?
  |-- Applicable standards: does design comply with referenced codes?
  |-- Contract requirements: is submission complete and in correct format?
  +-- Buildability: are there obvious construction issues?

E3: Engineer's response options:
  |-- (a) Approve --> no comment required. Contractor proceeds.
  |-- (b) Comment, no objection --> Contractor proceeds but should address comments.
  |-- (c) Comment with disapproval --> Contractor MUST revise and resubmit.
  +-- (d) Reject with reasons --> Contractor MUST redesign.

E4: CRITICAL PRINCIPLE
  --> Engineer's review does NOT relieve Contractor of design responsibility
  --> Even if Engineer approved, Contractor remains liable for design defects
  --> Engineer is NOT a design checker -- review is for compliance with
      Employer's Requirements and applicable standards only
```

**Decision Tree F -- Performance Test Failure (Yellow Book-specific):**
```
F1: Performance test fails to meet Employer's Requirements criteria
  --> Identify the cause:

F2: Is it a construction defect or a design defect?
  |-- Construction defect (e.g., poor compaction, wrong materials)
  |    --> Contractor remedies the construction defect
  |    --> Retest after remedial work
  |    --> Cost borne by Contractor
  +-- Design defect (e.g., pavement design inadequate for traffic loading)
       --> Contractor redesigns
       --> Contractor rebuilds affected sections
       --> Retest after reconstruction
       --> Cost borne by Contractor (design risk is Contractor's)

F3: What if remedial work is not feasible?
  |-- Negotiate reduction in Contract Price reflecting reduced performance
  |-- Employer accepts reduced performance at reduced price
  +-- If performance deficiency is material: Employer may reject the Works
```

**Decision Tree G -- Employer's Requirements Ambiguity:**
```
G1: Ambiguity or discrepancy in Employer's Requirements
  --> Sub-Clause 1.5 (Priority of Documents) applies

G2: Contractor discovers ambiguity
  --> Contractor should notify Engineer (Sub-Clause 1.8 in some editions; good practice in any case)
  --> Engineer clarifies or issues instruction

G3: Risk allocation for ambiguity:
  |-- If Employer's Requirements are unclear, the risk generally falls on
  |   the party who prepared them (the Employer)
  |-- BUT: Contractor has an obligation to review Employer's Requirements
  |   for errors and ambiguities (Sub-Clause 5.1)
  +-- Resolution: Engineer clarifies; if this changes scope, may be a Variation
```

### 2.2 Professional Judgment (Universal)

**Engineer's design review is NOT design approval.** The most important Yellow Book principle is that the Engineer's review of design documents does not transfer responsibility. If the Engineer reviews and does not object to a design, and the design later proves inadequate, the Contractor remains liable. The Engineer should make this clear to both Parties.

**Performance criteria must be clearly defined.** Vague or unmeasurable performance criteria in the Employer's Requirements create disputes. The Engineer should flag any ambiguous criteria early, ideally before the contract is signed.

**Lump sum pricing requires careful risk assessment.** Unlike re-measurement contracts, the Contractor bears quantity risk. The Engineer should understand this difference when assessing claims -- a quantity overrun is generally the Contractor's risk under lump sum.

### 2.3 Common Errors

1. **Treating design review as design approval.** Engineer's review under Sub-Clause 5.2 does not transfer design responsibility to the Employer.
2. **Applying Red Book measurement principles to Yellow Book.** Yellow Book is typically lump sum -- do not measure and certify quantities in the same way as Red Book.
3. **Failing to identify ambiguities in Employer's Requirements early.** Ambiguities discovered during construction are expensive and contentious.
4. **Confusing design defects with construction defects when performance tests fail.** The remedy and cost allocation differ significantly.
5. **Not allowing the Contractor design freedom.** Under Yellow Book, the Contractor may choose the design approach provided it meets Employer's Requirements. The Engineer should not impose a specific design solution.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Edition | 1999 (1st Edition) | Not specified | ASSUMED: 1999 Yellow Book. Verify edition. | 1999 remains standard in East Africa |
| Design review period | 21 days | Not modified by Particular Conditions | ASSUMED: 21-day review period (Sub-Clause 5.2, 1999) | 1999 provision; 2017 uses 28 days |
| Payment basis | Lump sum | Not stated | ASSUMED: Lump sum Contract Price (Yellow Book default) | Yellow Book standard approach |
| Performance criteria | As per Employer's Requirements | Must be stated | ASSUMED: Performance criteria in Employer's Requirements. Verify. | Contract-specific |

### Default Behaviour Rules

1. **All Red Book defaults (Skill #42) apply** unless specifically modified by this skill.
2. **Particular Conditions always take precedence.**
3. **Design responsibility always remains with the Contractor** regardless of Engineer's review comments.

---

## 4. Validation (Universal)

### 4.1 Range Checks

All Red Book (Skill #42) range checks apply. Additional Yellow Book-specific:

| Parameter | Valid Values | Unit | Action if Violated |
|-----------|-------------|------|--------------------|
| Design review period | 21 (1999) or 28 (2017) | days | Check edition. Must match. |
| Design submission completeness | Complete per ER | -- | If incomplete, require resubmission |

### 4.2 Consistency Checks

- **Design review vs responsibility:** If Engineer has reviewed and approved design, verify that output still states Contractor retains design responsibility.
- **Payment mechanism:** Verify lump sum vs re-measurement -- should be lump sum for Yellow Book.
- **Performance criteria:** Verify that criteria are measurable and defined in Employer's Requirements.
- **All Red Book consistency checks** (Skill #42, Section 4.2) also apply.

### 4.3 Standards Compliance

All Red Book standards compliance checks apply. Additionally: verify that design review comments reference Employer's Requirements and applicable standards, not the Engineer's preferred design solution.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

All Red Book (Skill #42) escalation triggers apply. Additional Yellow Book-specific:

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Employer's Requirements ambiguous | Risk allocation unclear | SENIOR REVIEW -- Employer's Requirements at [section] are ambiguous. Clarification needed before Contractor proceeds with design. |
| Performance test failure | Design or construction defect | SENIOR REVIEW -- Performance test [name] failed. Cause assessment required: design defect vs construction defect. |
| Engineer asked to approve specific design | Role confusion | NOTE -- Engineer reviews for compliance with ER, does NOT approve or take responsibility for design. Clarify role to requesting party. |
| Contractor proposes material change to design approach | May affect performance | SENIOR REVIEW -- Contractor proposes [change]. Assess impact on Employer's Requirements performance criteria before accepting. |

### 5.2 Escalation Behaviour

Same as Red Book (Skill #42, Section 5.2).

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Contract edition | text | -- | Recommended | User | 1999 or 2017; defaults to 1999 |
| Employer's Requirements | text | -- | Recommended | User | Performance criteria and functional specifications |
| Red Book foundation | object | -- | Yes | Skill #42 | Common FIDIC provisions |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| contract_context | object | -- | Skill #44 | Payment procedures (lump sum variant) |
| contract_context | object | -- | Skill #45 | Variation/claims context (design-build variant) |
| contract_context | object | -- | Skill #46 | Dispute resolution context |
| contract_form | text | -- | Skill #47 | Contract form selection input |
| contract_admin | object | -- | Skill #54 | Construction supervision context (design-build) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific Yellow Book practice | Markdown |
| `tables/fidic_yellow_book_differences.json` | Key clause differences from Red Book | JSON |

---

## 7. Procedure

### Step 1: Confirm Contract Form
Verify that the contract is Yellow Book (design-build). If Employer provides detailed design, redirect to Skill #42 (Red Book).

### Step 2: Load Foundation
Load Skill #42 (Red Book) for common FIDIC provisions. This skill only addresses Yellow Book differences.

### Step 3: Load Country Module
Load Uganda module for UNRA/MoWT Yellow Book practice.

### Step 4: Identify the Issue
Is the issue Yellow Book-specific (design review, performance testing, Employer's Requirements interpretation) or common FIDIC (payment, claims, disputes)?
- Yellow Book-specific: use this skill's decision trees (Section 2.1, Trees E-G)
- Common FIDIC: use Skill #42 decision trees (A-D)

### Step 5: Apply Decision Tree
Follow the relevant decision tree. Note Yellow Book differences in payment mechanism and design responsibility.

### Step 6: Produce Output
Format per Skill #42 Section 8, noting "Yellow Book" as the Contract Form.

---

## 8. Output Format

Same as Red Book (Skill #42, Section 8), with "FIDIC Yellow Book" as the Contract Form. Additional section for design-specific advice:

```
DESIGN REVIEW STATUS
--------------------
Design Document: [description]
Submitted: [date]
Review Deadline: [date + 21 days]
Engineer's Response: [approve / comment-no objection / comment-disapproval / reject]
NOTE: Engineer's review does NOT relieve Contractor of design responsibility.
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed design review checklists (these are project-specific). Silver Book (EPC/Turnkey) differences. Tests after Completion (Clause 12) in detail.
- **Simplifications:** Performance test assessment is presented at a procedural level; detailed technical assessment depends on the specific performance criteria.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft documenting key Yellow Book differences from Red Book. Focus on Clause 5 (Design), Sub-Clause 5.2 (design review), Sub-Clause 9.4 (performance testing), and lump sum payment mechanism. References Skill #42 as foundation. |
