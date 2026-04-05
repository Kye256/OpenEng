---
name: "bid-evaluation"
description: "Use when evaluating bids received for a road construction contract. Covers preliminary examination (responsiveness), technical evaluation, financial evaluation, combined scoring, abnormally low bid analysis, and award recommendation. Requires Skill #47 (Procurement Methods) for evaluation methodology context. Uganda module covers PPDA evaluation procedures and World Bank two-stage evaluation."
---

# Bid Evaluation

> **Skill ID:** 49
> **Domain:** Professional Practice
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda, Kenya

## Purpose

Guide the systematic evaluation of bids received for a road construction or rehabilitation contract. The evaluation follows a staged process: preliminary examination (eligibility and administrative compliance), technical evaluation (responsiveness to specifications and requirements), financial evaluation (arithmetic correction, price comparison, abnormally low bid identification), and award recommendation. The evaluation methodology is determined by the procurement method (from Skill #47) and must follow ONLY the criteria stated in the bidding documents.

## When to Use This Skill

- **Use when:** Bids have been received for a works contract and need to be evaluated to determine the best evaluated bid.
- **Do not use when:** Evaluating proposals for consultancy services (different evaluation methodology -- quality-and-cost based selection). Selecting the procurement method (use Skill #47). Preparing tender documents (use Skill #48).
- **Prerequisite skills:** Skill #47 (Procurement Methods) determines the evaluation methodology. Skill #48 (Tender Document Preparation) defines the evaluation criteria in the bidding documents. Skill #52 (Unit Rate Analysis) for comparison against abnormally low bids.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Evaluation Stages for Works Contracts:**

**Stage 1 -- Preliminary Examination:** Determines eligibility and administrative compliance. Pass/fail assessment.
- **Eligibility:** Bidder has legal capacity, not bankrupt, not suspended, no conflict of interest, paid taxes and social security contributions, registered as required.
- **Administrative compliance:** Bid security submitted (correct form and amount), bid signed by authorised person, bid submitted in correct format, bid validity confirmed, no material deviations or omissions.
- **Material deviation:** A deviation that (a) affects scope or quality of works substantially, (b) is inconsistent with bidding document in a way that limits rights or obligations substantially, (c) if corrected would unfairly affect competitive position of other bidders, or (d) causes unacceptable time schedules, technical alternatives, or contract terms.
- Non-responsive bids are rejected at this stage.

**Stage 2 -- Technical Evaluation (Detailed Evaluation):** Determines technical responsiveness. For works using the technical compliance method: pass/fail assessment against criteria stated in bidding documents.
- Responsiveness to terms and conditions of bidding document
- Conformity with statement of requirements (no material deviation)
- For works: adherence to technical specifications, adequacy of work plan and schedule, adequacy of work methods and safety measures, adequacy of documentation (drawings, calculations)
- Bids not substantially responsive are rejected

**Stage 3 -- Financial Evaluation:** Comparison of financial bids from technically responsive bidders.
- Correct arithmetic errors (defined rules for unit price vs total price discrepancies)
- Apply non-conditional discounts
- Determine whether financial bids are complete; cost missing items and add to bid price
- Adjust for non-material deviations
- Convert to single evaluation currency if needed
- Apply margin of preference if applicable
- Determine total evaluated price
- Rank bids by total evaluated price
- **Identify abnormally low bids** (see below)
- Determine best evaluated bid

**Stage 4 -- Post-Qualification:** Verifies that the best evaluated bidder has capacity and resources to execute the contract. Checks: experience on similar contracts, key personnel qualifications, equipment availability, financial capacity, current workload.

**Abnormally Low Bids:**
An abnormally low bid is one where the price is significantly below the engineer's estimate or the average of other bids, raising doubt about the bidder's ability to execute the contract at that price. Common indicators:
- Bid price is more than 15-20% below the engineer's estimate
- Bid price is more than 15-20% below the average of other responsive bids
- Key unit rates are significantly below cost (compare with Skill #52 unit rate analysis)

When an abnormally low bid is identified:
1. Request detailed cost justification from the bidder
2. Examine key rates: can the bidder realistically procure materials and labour at these rates?
3. Assess risk: if the bidder cannot sustain these rates, what is the risk of default, claims, or quality compromise?
4. Do NOT automatically reject -- assess on the merits of the justification
5. If justification is inadequate, the bid may be rejected on grounds of non-responsiveness

**Arithmetic Error Correction:**
Standard rules (consistent across most frameworks):
- Unit price x quantity discrepancy: unit price prevails, total corrected (except obvious decimal error, then total prevails)
- Subtotal addition error: subtotals prevail, total corrected
- Words vs figures discrepancy: amount in words prevails (except where words relate to an arithmetic error, then figures prevail)
- Bidder notified of corrections and asked to agree within specified period

### 1.2 Key Relationships

**Evaluation Flow:**
```
Bids received
  --> Stage 1: Preliminary examination (pass/fail)
    --> Responsive bids proceed
  --> Stage 2: Technical evaluation (pass/fail for works)
    --> Technically responsive bids proceed
  --> Stage 3: Financial evaluation
    --> Arithmetic correction, price comparison, abnormally low check
    --> Rank by total evaluated price
  --> Stage 4: Post-qualification of best evaluated bidder
    --> Confirm capacity and resources
  --> Award recommendation
```

**Evaluation Principle:**
```
ONLY criteria stated in bidding documents may be used
No criteria may be added, removed, or modified during evaluation
Award to "best evaluated bid" (lowest evaluated price after technical pass)
```

### 1.3 Figures & Diagrams

No figures required. The evaluation flow above is the key process.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm evaluation methodology
  --> From bidding documents (Skill #48): technical compliance or QCBS?
  --> For works: typically technical compliance (pass/fail) + lowest evaluated price
  --> For design-build or information technology: may use QCBS (scored)

Step 2: Conduct preliminary examination
  |-- For each bid:
  |     Is the bidder eligible? (per criteria in bidding documents)
  |       |-- NO --> Bid rejected at preliminary stage
  |       +-- YES --> Check administrative compliance
  |     Is the bid administratively compliant?
  |       |-- NO (material deviation) --> Bid rejected
  |       |-- NO (minor non-conformity) --> May be waived or corrected
  |       +-- YES --> Proceed to technical evaluation

Step 3: Conduct technical evaluation
  |-- For each preliminarily responsive bid:
  |     Does the bid conform to terms and conditions?
  |     Does the bid meet the statement of requirements?
  |     For works: does the bid meet technical specifications?
  |       |-- Not substantially responsive --> Bid rejected
  |       +-- Substantially responsive --> Proceed to financial evaluation

Step 4: Conduct financial evaluation
  |-- Correct arithmetic errors (per standard rules)
  |-- Apply discounts
  |-- Adjust for non-material deviations
  |-- Determine total evaluated price
  |-- Compare against engineer's estimate
  |-- Check for abnormally low bids
  |     |-- Bid > 15-20% below estimate or average?
  |     |     --> Request detailed cost justification
  |     |     --> Assess risk of default
  |     |     --> If justification adequate: retain
  |     |     --> If justification inadequate: may reject
  |     +-- No abnormally low bids: proceed
  |-- Rank by total evaluated price

Step 5: Post-qualification
  --> Verify best evaluated bidder's capacity
  --> Experience, personnel, equipment, financial capacity
  --> If fails: move to next-ranked bidder

Step 6: Award recommendation
  --> Recommend award to best evaluated bidder
  --> For donor-funded: request prior review / no-objection
  --> Submit evaluation report to Contracts Committee
```

### 2.2 Professional Judgment (Universal)

**You cannot introduce evaluation criteria not in the bidding documents.** This is the single most important principle of bid evaluation. Even if a criterion seems obviously relevant (e.g., past performance), if it was not stated in the bidding documents, it cannot be used. Using unstated criteria is grounds for procurement challenge and may constitute misprocurement.

**Abnormally low bids require investigation, not automatic rejection.** A low bid is not inherently bad -- the bidder may have genuine cost advantages (own equipment, local materials, efficient methods). The evaluation committee must request justification and assess it on its merits before deciding.

**Minor non-conformities should be waived, not used to reject bids.** The evaluation committee should distinguish between material deviations (which require rejection) and minor non-conformities (which should be waived). Rejecting bids for minor issues reduces competition and may not serve value for money.

**The evaluation committee must be independent.** Members must not have conflicts of interest, must sign ethical conduct declarations, and Contracts Committee members must not serve on evaluation committees. Evaluation decisions should be unanimous where possible; minority views must be recorded.

### 2.3 Common Errors

1. **Introducing criteria not stated in bidding documents.** The evaluation must use ONLY the criteria published in the tender documents.
2. **Automatically rejecting abnormally low bids.** Low bids must be investigated through detailed cost justification request before any rejection decision.
3. **Rejecting bids for minor non-conformities.** Only material deviations justify rejection. Minor issues should be waived (if non-material) or corrected.
4. **Not verifying arithmetic corrections with bidders.** Bidders must be notified of corrections and asked to agree.
5. **Mixing eligibility and detailed evaluation.** Eligibility is checked at preliminary stage; detailed evaluation comes after.
6. **Failing to document evaluation reasoning.** Every decision (acceptance, rejection, scoring) must be documented with reasons in the evaluation report.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Evaluation method | Technical compliance + lowest price | Works contract | ASSUMED: Technical compliance method for works. Verify bidding documents. | Standard for works |
| Abnormally low threshold | 15-20% below estimate or average | Not specified in documents | ASSUMED: 15-20% threshold for abnormally low identification. Verify bidding document provisions. | Common practice |
| Technical pass threshold | 70% (if scored) | QCBS method | ASSUMED: 70% technical pass threshold. Verify bidding documents. | Common for scored evaluation |

### Default Behaviour Rules

1. **Bidding document criteria take precedence** over all defaults.
2. **Never assume criteria** -- always verify from the specific bidding documents.
3. **Document every assumption** in the evaluation report.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Responsive bids | 1 | No limit | Count | If < 3, check minimum competition requirements |
| Technical pass threshold (if scored) | 60 | 80 | % | Outside range is unusual -- verify bidding documents |
| Bid price variance from estimate | -30 | +30 | % | > 30% above or below estimate requires investigation |

### 4.2 Consistency Checks

- **Criteria vs bidding documents:** Every criterion used in evaluation must be traceable to the bidding documents.
- **Arithmetic corrections:** Verify that correction rules match those stated in bidding documents.
- **Evaluation timeline:** Check that evaluation is completed within the required period (e.g., 40 working days for works under PPDA).
- **Evaluation committee composition:** Minimum members met, no Contracts Committee overlap, no conflicts.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Abnormally low bid identified | Risk of default | SENIOR REVIEW -- Bid from [bidder] is [X]% below estimate. Request detailed cost justification. Assess risk of default and quality compromise. |
| Fewer than 3 responsive bids | Insufficient competition | SENIOR REVIEW -- Only [X] responsive bids after preliminary examination. Consider whether sufficient competition exists or whether re-bidding is needed. |
| All bids exceed estimate by > 20% | Budget or estimate issue | SENIOR REVIEW -- All bids significantly above estimate. Re-assess estimate. Consider re-bidding or scope adjustment. |
| Evaluation criteria ambiguous | Risk of challenge | SENIOR REVIEW -- Evaluation criteria in bidding documents are ambiguous. Document interpretation and apply consistently. |
| Potential collusion | Anti-competitive behaviour | SENIOR REVIEW -- Bid patterns suggest possible collusion. Refer to procurement authority for investigation. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Continue the evaluation** where possible, applying the best interpretation of the criteria.
- **Document all reasoning** for Contracts Committee and any audit trail.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines evaluation regulations |
| Procurement method | text | -- | Yes | Skill #47 | Determines evaluation methodology |
| Bidding documents | document | -- | Yes | Skill #48 | Contains evaluation criteria |
| Bids received | documents | -- | Yes | Bidders | Bids to be evaluated |
| Engineer's estimate | number | Currency | Recommended | User | For abnormally low bid assessment |
| Unit rate analysis | object | -- | Optional | Skill #52 | For comparing key rates in abnormally low bids |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| evaluation_report | document | -- | Contracts Committee | Full evaluation report with recommendations |
| best_evaluated_bid | object | -- | User | Recommended bidder with evaluated price |
| abnormally_low_flags | list | -- | User | Any bids flagged as abnormally low |
| award_recommendation | text | -- | Contracts Committee | Award recommendation for approval |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific PPDA evaluation procedures and WB overlay | Markdown |
| `tables/evaluation_criteria_matrix.json` | Standard evaluation criteria and weights for works | JSON |

---

## 7. Procedure

### Step 1: Confirm Evaluation Methodology
Verify the evaluation method from the bidding documents: technical compliance (pass/fail) + lowest evaluated price, or quality-and-cost based selection (QCBS) with weighted scoring.

### Step 2: Preliminary Examination
Check each bid for eligibility and administrative compliance. Reject non-responsive bids with documented reasons.

### Step 3: Technical Evaluation
Evaluate each preliminarily responsive bid against the technical criteria stated in the bidding documents. For works (technical compliance method): pass/fail assessment. For QCBS: scored evaluation.

### Step 4: Financial Evaluation
For technically responsive bids: correct arithmetic errors, apply discounts, adjust for non-material deviations, determine total evaluated price. Check for abnormally low bids. Rank by total evaluated price.

### Step 5: Post-Qualification
Verify that the best evaluated bidder has the capacity, experience, personnel, equipment, and financial resources to execute the contract.

### Step 6: Award Recommendation
Prepare the evaluation report with: bid list, preliminary exam results, technical evaluation results, financial comparison, abnormally low analysis (if any), post-qualification assessment, award recommendation.

### Step 7: Run Validation
Apply all checks from Section 4 (criteria consistency, arithmetic correction rules, timeline compliance).

### Step 8: Produce Output
Format per Section 8. Submit evaluation report to Contracts Committee (and donor for prior review if applicable).

---

## 8. Output Format

```
============================================================
BID EVALUATION -- [Project Name]
Country/Jurisdiction: [country]
Procurement Method: [method]
Evaluation Method: [technical compliance / QCBS]
Date: [YYYY-MM-DD]
============================================================

BIDS RECEIVED
-------------
| No. | Bidder | Bid Price | Currency |
|-----|--------|-----------|----------|
| 1   | [name] | [amount]  | [currency] |

STAGE 1: PRELIMINARY EXAMINATION
---------------------------------
| No. | Bidder | Eligible | Admin Compliant | Status | Reason (if rejected) |
|-----|--------|----------|----------------|--------|---------------------|

STAGE 2: TECHNICAL EVALUATION
-----------------------------
| No. | Bidder | Technical Status | Key Findings |
|-----|--------|----------------|-------------|

STAGE 3: FINANCIAL EVALUATION
-----------------------------
| No. | Bidder | Read-Out Price | Arithmetic Correction | Evaluated Price | Rank |
|-----|--------|---------------|----------------------|----------------|------|

ABNORMALLY LOW BID ANALYSIS
---------------------------
[Analysis if any bid is flagged, or "No abnormally low bids identified"]

STAGE 4: POST-QUALIFICATION
----------------------------
[Assessment of best evaluated bidder's capacity]

AWARD RECOMMENDATION
--------------------
Recommended bidder: [name]
Evaluated price: [amount]
Basis: [lowest evaluated price after technical compliance pass / highest combined score]

ASSUMPTIONS & DEFAULTS
----------------------
[Flagged items]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

============================================================
BID EVALUATION REPORT -- FOR PROFESSIONAL REVIEW
This evaluation follows the criteria stated in the bidding
documents. No criteria have been added, modified, or removed.
Evaluation report subject to Contracts Committee approval.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Full evaluation of consultancy proposals (QCBS scoring for services). Detailed delay analysis in post-qualification. Forensic analysis of potential collusion. Electronic bid evaluation systems. Framework agreement evaluation.
- **Simplifications:** Abnormally low threshold is rule-of-thumb (15-20%). Arithmetic correction rules are standard but may vary by SBD. Post-qualification assessment is at the checklist level.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya (PPRA evaluation), Tanzania (PPA evaluation), Ethiopia (FPPA evaluation)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with 4-stage evaluation (preliminary, technical, financial, post-qual), abnormally low bid analysis, arithmetic correction rules, evaluation criteria principle. |
