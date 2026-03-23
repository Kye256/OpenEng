# Bid Evaluation -- Uganda Module

> **Parent Skill:** Skill #49 Bid Evaluation
> **Country/Jurisdiction:** Uganda
> **Standards:** PPDA (Evaluation) Regulations 2014, PPDA Act 2003
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| PPDA (Evaluation) Regulations 2014 | SI No. 9 of 2014 | Regulations 6-36 | Current |
| PPDA Act 2003 | Act No. 3 of 2003 (as amended) | Section 37 (Evaluation Committee), Section 52 (Best evaluated bid), Section 71 (Evaluation) | Current |
| PPDA (Rules and Methods) Regulations 2014 | SI No. 8 of 2014 | Regulation 37 (Evaluation criteria for bidding documents) | Current |
| World Bank SBD evaluation methodology | 2017 | Evaluation and qualification criteria sections | Current for WB-funded |

### M.1.2 Institutional Context

**Evaluation Committee:** Section 37 of the PPDA Act and Regulation 3 of the Evaluation Regulations 2014. Key requirements:
- Minimum 3 members with relevant technical skills and experience
- Must include: a representative of the User Department, a member of the PDU
- Contracts Committee members may NOT be on the Evaluation Committee (Regulation 3(3))
- All members must sign the Code of Ethical Conduct declaration (Form 13)
- Evaluation conducted jointly during meetings of the committee (Regulation 5(7))
- Decision should be unanimous; if not, majority decision prevails and dissent is recorded (Regulation 5(9)-(10))

**Evaluation Timeline:** Regulation 5(1):
- Supplies and non-consultancy services: 20 working days from bid opening
- **Works: 40 working days from bid opening**
- Extension requires written explanation to the Accounting Officer

**Contracts Committee Role:** Reviews and approves the evaluation report. May return for review if it disagrees with the PDU recommendation (Section 33). Awards the contract based on the approved evaluation report.

### M.1.3 Standard Philosophy

The PPDA Evaluation Regulations 2014 prescribe two evaluation methods:
1. **Technical Compliance Evaluation Method** (Regulations 15-21): For supplies, works, and non-consultancy services. Pass/fail technical assessment followed by financial comparison. Award to lowest evaluated price after technical pass. This is the standard method for works contracts.
2. **Quality and Cost Based Evaluation Method** (Regulations 22-31): For textbooks, IT systems, and design-build contracts. Scored technical evaluation with merit points, followed by financial evaluation. Award to highest combined score.

**Fundamental principle (Regulation 7(2)):** The evaluation committee shall not, during an evaluation, make an amendment or addition to the evaluation criteria stated in the bidding document, and shall not use any other criteria other than the criteria stated in the bidding document.

---

## M.2 Country-Specific Knowledge

### M.2.1 Evaluation Process under Technical Compliance Method (PPDA)

**From Regulations 15-21:**

**Stage (a): Preliminary Examination (Regulation 16)**
- Determine eligibility (Regulation 17):
  - Legal capacity to contract
  - Not insolvent, bankrupt, or being wound up
  - Business activities not suspended
  - Not subject of legal proceedings
  - Fulfilled tax and social security obligations
  - No conflict of interest
  - Not suspended by PPDA Authority
  - Not a member of the PDE
  - Required documents submitted: trading licence, registration certificate, no-conflict statement
- Determine administrative compliance (Regulation 18):
  - Bid security submitted (correct form and amount, authentic)
  - Bid securing declaration submitted (where required)
  - Bid in required format
  - Authorisation and signature correct
  - Bid validity correct
  - Additional documents submitted as required
- Pass/fail: Non-eligible or non-compliant bids rejected at this stage (Regulation 16(2))

**Stage (b): Detailed Evaluation (Regulation 19)**
- Assess responsiveness to terms and conditions
- Assess technical responsiveness to statement of requirements
- For works specifically (Regulation 19(3)(d)):
  - Adherence to technical specifications and standards
  - Adequacy of work plan and completion schedule
  - Adequacy of work methods including safety precautions
  - Adequacy of documentation (drawings, charts, calculations)
  - Suitability of material handling methods and equipment schedules
- Bids not substantially responsive rejected (Regulation 19(4))

**Stage (c): Financial Comparison (Regulation 21)**
- Correct arithmetic errors (Regulation 14):
  - Unit price x quantity discrepancy: unit price prevails, total corrected
  - Subtotal addition error: subtotals prevail, total corrected
  - Words vs figures: words prevail (except arithmetic-related discrepancy, then figures prevail)
  - Bidder notified and asked to agree within 5 working days (Regulation 14(3))
- Apply non-conditional discounts (Regulation 32)
- Determine completeness; cost and add missing items for works (Regulation 21(2)(c))
- Adjust for non-material deviations (Regulation 11)
- Convert to single evaluation currency if needed (Regulation 21(2)(e))
- Apply margin of preference if required (Regulation 21(2)(f))
- Determine total evaluated price
- Rank by total evaluated price
- Determine best evaluated bid (Regulation 21(2)(i))

**Stage (d): Post-Qualification (Regulation 34)**
- Verify that best evaluated bidder has capacity and resources
- Assess: experience, financial capability, personnel qualifications, equipment, current commitments

### M.2.2 Evaluation Criteria Matrix

**Table: Standard Evaluation Criteria for Works** --> `tables/evaluation_criteria_matrix.json`

### M.2.3 Non-Conformities and Material Deviations

**From Regulation 11:**

A material deviation is one that:
- (a) Affects scope or quality of works substantially
- (b) Is inconsistent with bidding document, limiting PDE rights or bidder obligations substantially
- (c) If corrected, would unfairly affect competitive position of compliant bidders
- (d) Impacts key factors (cost, risk, time, quality) causing:
  - Unacceptable time schedules (where time is of the essence)
  - Unacceptable alternative technical details
  - Unacceptable counter-bids on key contract terms

Non-material non-conformities may be:
- Waived (Regulation 11(3)(a))
- Clarified with the bidder (Regulation 10)
- Corrected by monetary quantification for evaluation purposes (Regulation 11(2))

### M.2.4 Single Bid or Limited Number of Bids

**Regulation 8:** If only 1 bid or a limited number of bids received, the PDE may accept them if the evaluation committee determines:
- Bidding period was sufficient
- Terms and conditions were reasonable
- Bid notice was properly published
- Amendments allowed sufficient time
- No extraneous events affected response
- No suspicion of collusion
- Procurement method was appropriate with adequate potential bidders

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda Evaluation Flow:**
```
Is the project GoU-funded or donor-funded?
  |-- GoU funded:
  |     Apply PPDA Evaluation Regulations 2014
  |     Technical compliance method (Regulations 15-21)
  |     4 stages: preliminary, detailed, financial, post-qualification
  |     40 working days to complete evaluation (works)
  |     Evaluation report to Contracts Committee
  |
  +-- World Bank funded:
        Apply World Bank SBD evaluation methodology
        Similar staged process but with WB-specific requirements:
        - Prior review of evaluation report (if above threshold)
        - World Bank no-objection before award
        - WB evaluation forms and reporting format
        - Evaluation report submitted to UNRA Contracts Committee AND World Bank
```

### M.3.2 Professional Judgment (Country-Specific)

**40-working-day evaluation timeline is strict.** For complex road projects with many bidders, the evaluation may be challenging to complete within 40 working days. If extension is needed, the evaluation committee must explain in writing to the Accounting Officer (Regulation 5(2)). The evaluation should not be rushed to meet the deadline at the expense of thoroughness.

**Abnormally low bids are common in Uganda road construction.** Some bidders submit unrealistically low prices to win contracts, intending to recover costs through variations and claims. The evaluation committee should be particularly vigilant about:
- Key unit rates for major items (earthworks, pavement layers, bituminous works)
- Compare against the engineer's estimate and against Skill #52 (Unit Rate Analysis) rates
- Material costs that are below known market prices
- Labour rates that are below legal minimum wages

**PPDA audits evaluation reports.** The PPDA Authority conducts procurement audits (Section 7(j) of the Act) which include reviewing evaluation reports. The evaluation report must demonstrate that only criteria stated in the bidding documents were used and that the evaluation was conducted fairly.

**For World Bank projects, the evaluation report format follows WB requirements.** WB-funded projects require a specific format for evaluation reports, separate from the PPDA evaluation report format. In practice, UNRA prepares one report that meets both PPDA and WB requirements.

### M.3.3 Common Errors (Country-Specific)

1. **Exceeding the 40-working-day evaluation period without approval.** Extension requires written application to the Accounting Officer.
2. **Contracts Committee members participating in evaluation.** This is prohibited by Regulation 3(3). It is a serious procedural violation.
3. **Not requiring evaluation committee members to sign ethical conduct declarations.** Form 13 must be signed by all members (Regulation 3(4)).
4. **Applying evaluation criteria not stated in the bidding documents.** This is the most common ground for procurement challenges under the PPDA administrative review process (Sections 89-91).
5. **Not requesting cost justification for abnormally low bids.** Simply accepting the lowest bid without investigating abnormally low prices exposes the PDE to contract performance risk.
6. **Not notifying rejected bidders.** Under PPDA procedures, bidders not recommended for financial evaluation should be notified (Regulation 26 -- for QCBS method).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Evaluation method | Technical compliance | Works contract, GoU funded | ASSUMED: Technical compliance method per PPDA Evaluation Regulations. | Regulation 6(1) |
| Evaluation timeline | 40 working days | Works | ASSUMED: 40 working days from bid opening. | Regulation 5(1)(b) |
| Minimum evaluation committee | 3 members | All procurements | ASSUMED: Minimum 3 members. | PPDA Act Section 37(3) |
| Arithmetic correction rule | Unit price prevails | Standard PPDA | ASSUMED: Standard PPDA arithmetic correction rules. | Regulation 14(2) |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Evaluation committee members | 3 | No limit | Count | PPDA Act Section 37(3) | Below minimum is a procedural violation |
| Evaluation period (works) | 1 | 40 | Working days | Regulation 5(1)(b) | If exceeded, request extension from Accounting Officer |
| Quotation responses | 3 | No limit | Count | Regulation 15(2), Rules & Methods | Minimum 3 for quotation method |

### M.5.2 Standards Compliance Checks

- **Check:** Only bidding document criteria used in evaluation
- **Standard:** Regulation 7(2)
- **Pass condition:** Every criterion traceable to bidding document section
- **Fail action:** SENIOR REVIEW -- Evaluation criterion [X] not found in bidding documents. This is a violation of Regulation 7(2) and grounds for procurement challenge.

- **Check:** No Contracts Committee members on evaluation committee
- **Standard:** Regulation 3(3)
- **Pass condition:** No overlap between Contracts Committee and evaluation committee membership
- **Fail action:** SENIOR REVIEW -- Contracts Committee member(s) on evaluation committee. This is prohibited by Regulation 3(3).

- **Check:** Evaluation completed within prescribed timeline
- **Standard:** Regulation 5(1)
- **Pass condition:** Evaluation completed within 40 working days (works) or extension approved
- **Fail action:** NOTE -- Evaluation period may require extension. Seek Accounting Officer approval per Regulation 5(2).

- **Check:** Arithmetic corrections notified to bidder
- **Standard:** Regulation 14(3)
- **Pass condition:** Bidder notified and agreed within 5 working days
- **Fail action:** NOTE -- Bidder must be notified of arithmetic corrections and asked to agree within 5 working days.

### M.5.3 Departures / Relaxations Process

The PPDA evaluation framework does not provide for departures from evaluation criteria or methodology. The evaluation must follow exactly the criteria stated in the bidding documents. Any perceived need to change evaluation criteria during evaluation is a serious issue requiring legal review.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Evaluation period approaching 40 days | Timeline risk | NOTE -- Evaluation period at [X] working days. If additional time needed, prepare written explanation for Accounting Officer per Regulation 5(2). |
| Only 1-2 responsive bids | Insufficient competition | SENIOR REVIEW -- Only [X] responsive bids. Review conditions per Regulation 8 before proceeding. Consider re-bidding if competition insufficient. |
| Bid > 25% below estimate | Abnormally low risk | SENIOR REVIEW -- Bid from [bidder] is [X]% below engineer's estimate. Request detailed cost justification per standard evaluation practice. |
| All bids > 20% above estimate | Estimate or market issue | SENIOR REVIEW -- All bids significantly above estimate. Re-assess market price per Regulation 5 of Rules & Methods Regulations. Consider re-tendering. |
| Evaluation criteria dispute | Procurement challenge risk | SENIOR REVIEW -- Evaluation criteria interpretation disputed. Document analysis and apply consistently. Prepare for possible administrative review (PPDA Act Sections 89-91). |
| World Bank prior review required | Process step | NOTE -- WB prior review required for evaluation report. Submit to World Bank for no-objection before Contracts Committee award decision. |

---

## M.7 Worked Example -- Uganda

### Example: 6 Bids for UNRA Road Contract (World Bank Funded)

**Project:** Rehabilitation of National Trunk Road, 50 km, estimated value UGX 45 billion (approximately USD 12 million). World Bank IDA funded. ICB procurement method. 6 bids received.

**Given:**

| Bidder | Read-Out Price (UGX billion) | Bid Security | Key Notes |
|--------|----------------------------|-------------|-----------|
| Alpha Construction | 42.5 | Provided (valid guarantee) | International contractor |
| Beta Roads Ltd | 38.0 | Provided (valid guarantee) | Domestic contractor |
| Gamma Engineering | 31.5 | **Not provided** | International contractor |
| Delta Contractors | 44.8 | Provided (valid guarantee) | Domestic contractor |
| Epsilon Works | 35.2 | Provided (valid guarantee) | International contractor |
| Zeta Building | 40.1 | Provided (valid guarantee) | Domestic, JV with international |

Engineer's estimate: UGX 43.0 billion.

**Solution:**

**Stage 1: Preliminary Examination**

| Bidder | Eligible | Admin Compliant | Status | Reason |
|--------|----------|----------------|--------|--------|
| Alpha | Yes | Yes | PASS | -- |
| Beta | Yes | Yes | PASS | -- |
| Gamma | Yes | **NO** | REJECTED | Bid security not provided (material deviation) |
| Delta | Yes | Yes | PASS | -- |
| Epsilon | Yes | Yes | PASS | -- |
| Zeta | Yes | Yes | PASS | -- |

Result: 5 bids proceed to detailed evaluation. Gamma rejected for missing bid security (material deviation per Regulation 18(2)(a)).

**Stage 2: Technical Evaluation**

| Bidder | Specs Compliance | Work Plan | Methods & Safety | Documentation | Status |
|--------|-----------------|-----------|-----------------|--------------|--------|
| Alpha | Pass | Pass | Pass | Pass | RESPONSIVE |
| Beta | Pass | Pass | Pass | Pass | RESPONSIVE |
| Delta | Pass | Pass | Pass | Pass | RESPONSIVE |
| Epsilon | Pass | Pass | Pass | Pass | RESPONSIVE |
| Zeta | Pass | Pass | Pass | Pass | RESPONSIVE |

Result: All 5 remaining bids are technically responsive.

**Stage 3: Financial Evaluation**

| Bidder | Read-Out (UGX B) | Arithmetic Correction | Evaluated Price (UGX B) | % of Estimate | Rank |
|--------|------------------|-----------------------|------------------------|--------------|------|
| Beta | 38.0 | -0.2 (subtotal error) | 37.8 | 87.9% | 2 |
| Epsilon | 35.2 | None | 35.2 | 81.9% | 1 |
| Zeta | 40.1 | None | 40.1 | 93.3% | 3 |
| Alpha | 42.5 | +0.3 (unit price governs) | 42.8 | 99.5% | 4 |
| Delta | 44.8 | None | 44.8 | 104.2% | 5 |

**Abnormally Low Bid Analysis:**

Epsilon's bid of UGX 35.2 billion is 18.1% below the engineer's estimate of UGX 43.0 billion. This triggers abnormally low bid investigation.

Action taken:
1. Request detailed cost justification from Epsilon Works
2. Key rates examined: earthworks rate UGX 8,500/m3 (estimate: UGX 11,000/m3), base course rate UGX 45,000/m3 (estimate: UGX 55,000/m3), bituminous surfacing rate UGX 18,000/m2 (estimate: UGX 22,000/m2)
3. Epsilon's justification: owns key equipment (reducing hire costs), has local quarry access (reducing material transport), mobilising from a nearby completed project (reducing mobilisation costs)
4. Assessment: Justification is **partially adequate** -- equipment ownership and quarry access explain some cost reduction, but bituminous material rates appear below market material cost. Requested further clarification on bitumen supply arrangements.
5. After further clarification: Epsilon demonstrates a bulk purchase agreement with bitumen supplier at favourable rates. Justification accepted as adequate.

**Conclusion:** Epsilon's bid retained. While low, the cost justification demonstrates genuine cost advantages rather than unsustainable pricing.

**Stage 4: Post-Qualification of Epsilon Works**

| Criterion | Assessment |
|-----------|-----------|
| Similar contracts completed | 3 contracts of similar size/scope in last 5 years -- PASS |
| Key personnel | Project Manager and RE with 10+ years experience -- PASS |
| Equipment | Owns major equipment items, supplemented by hire -- PASS |
| Financial capacity | Annual turnover 2.5x contract value, positive cash flow -- PASS |
| Current workload | One ongoing project (70% complete), capacity available -- PASS |

Result: Post-qualification PASSED.

**Award Recommendation:**
- Recommended bidder: Epsilon Works
- Evaluated price: UGX 35,200,000,000
- Basis: Lowest evaluated price after technical compliance pass
- Abnormally low analysis: conducted and resolved (justification accepted)
- **Next steps:** Submit evaluation report to Contracts Committee. For World Bank-funded project: submit to World Bank for prior review and no-objection before award.

---

## M.8 References

1. The Public Procurement and Disposal of Public Assets (Evaluation) Regulations, 2014 (SI No. 9 of 2014)
2. The Public Procurement and Disposal of Public Assets Act, 2003 (Act No. 3 of 2003, as amended)
3. The Public Procurement and Disposal of Public Assets (Rules and Methods for Procurement of Supplies, Works and Non-Consultancy Services) Regulations, 2014 (SI No. 8 of 2014)
4. World Bank Standard Bidding Documents: Procurement of Works (2017 edition), Evaluation and Qualification Criteria sections

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with PPDA 4-stage evaluation (verified from Evaluation Regulations 2014 PDF), arithmetic correction rules (Regulation 14), material deviation definition (Regulation 11), WB overlay, worked example with 6 bids including abnormally low analysis. |
