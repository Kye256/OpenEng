# Measurement & Payment -- Kenya Module

> **Parent Skill:** Skill #44 Measurement & Payment
> **Country/Jurisdiction:** Kenya
> **Standards:** FIDIC Red Book 1999, WSCM Part 3 (Bill of Quantities format), PPRA (Public Procurement and Asset Disposal Act 2015)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| FIDIC Red Book 1999 | 1st Edition | Clause 14 (Contract Price and Payment) | Current |
| FIDIC Yellow Book 1999 | 1st Edition | Clause 14 (modified for lump sum) | Current |
| WSCM Part 3 (Bill of Quantities) | Current edition | Standard BoQ format and item numbering for road works | Current |
| Public Procurement and Asset Disposal Act (PPRA) | 2015 | Contract management / payment provisions | Current |
| World Bank Disbursement Guidelines | 2017 | Direct payment, reimbursement, designated account | Current |

### M.1.2 Institutional Context

**Kenya Road Authorities:** KeNHA (Kenya National Highways Authority) manages national and international trunk roads (Class A, B, C). KeRRA (Kenya Rural Roads Authority) manages rural and small town roads (Class D, E). KURA (Kenya Urban Roads Authority) manages urban roads. County Governments manage county roads. The Ministry of Roads and Transport (MoRT) provides policy oversight.

**KeNHA Payment Process:** KeNHA processes payments through its Finance Division after the Engineer issues the IPC. The typical chain is: Engineer issues IPC -> KeNHA Project Manager reviews -> KeNHA Finance processes -> National Treasury disbursement (for GoK-funded projects) or designated account (for donor-funded projects).

**WSCM Part 3 -- Kenya Standard BoQ Format:** The Works Sectional Completion Milestones (WSCM) Part 3 defines the standard Bill of Quantities format for Kenya road works. WSCM Part 3 uses a series-based item numbering system (Series 100 through Series 800 typical for road construction), with standard measurement rules for each item category. All Kenya road contracts use WSCM Part 3 format for the BoQ -- **verify specific BoQ structure against the project's bidding documents**.

**WSCM Part 3 Item Numbering (Typical):**
- Series 100: Preliminary and General Items
- Series 200: Setting Out, Clearing and Grubbing
- Series 300: Earthworks
- Series 400: Drainage and Protective Works
- Series 500: Pavement Layers (sub-base, base course)
- Series 600: Bituminous Works (surface treatments, asphalt)
- Series 700: Structures (bridges, culverts, retaining walls)
- Series 800: Ancillary Works (road furniture, signage, markings)

*Note: The above series structure is based on training data knowledge of WSCM Part 3. Verify against the current WSCM Part 3 document for exact item numbering and measurement rules.*

### M.1.3 Standard Philosophy

Payment under FIDIC is certificate-based: the Engineer certifies, and the Employer pays the certified amount. In Kenya, the practical challenge is that government exchequer release cycles may cause payment delays beyond contractual deadlines. The WSCM Part 3 BoQ format provides standardised measurement rules, reducing disputes over quantity measurement.

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Payment Practice

**Common Retention Terms:** 10% retention deducted from each IPC, up to maximum 5% of Contract Price -- **ILLUSTRATIVE; verify COPA**. First half released upon Taking-Over Certificate, second half upon expiry of Defects Notification Period.

**Common Advance Payment Terms:** 10-15% of Contract Price -- **ILLUSTRATIVE; verify Appendix to Tender**. Advance payment guarantee required (bank guarantee from an acceptable bank). Repayment typically starts when cumulative certified work reaches 10-20% of Contract Price. Deducted proportionally from each IPC until fully repaid.

**Interim Payment Certificate (IPC) Process:**
1. Contractor submits monthly Statement with quantities measured per WSCM Part 3 item descriptions
2. Engineer verifies quantities against site measurement records and test certificates
3. Engineer adjusts for over-claimed quantities, work not meeting quality requirements, and variations
4. Engineer calculates retention and advance payment deductions
5. Engineer issues IPC within 28 days of Statement receipt (Sub-Clause 14.6)
6. Employer pays within 56 days of Statement receipt (Sub-Clause 14.7)

**Donor-Funded Payment Methods:**
- **Direct payment:** Donor pays the Contractor directly upon request from KeNHA
- **Reimbursement:** KeNHA pays from exchequer and seeks reimbursement from donor
- **Designated Account:** KeNHA operates a local currency account replenished periodically by the donor. IPCs paid from this account.

**Payment Delays:** GoK-funded projects may experience payment delays beyond the 56-day contractual deadline due to exchequer release cycles. Donor-funded projects generally have better payment performance due to the designated account mechanism.

### M.2.2 WSCM Part 3 Measurement Rules

**Key Measurement Principles:**
- Measurement is based on the completed and accepted work as per WSCM Part 3 item descriptions
- Quantities are measured in the units specified in the BoQ (m3, m2, tonnes, linear metres, number)
- For earthworks (Series 300): measured in original (in-situ) volume unless specified otherwise
- For pavement layers (Series 500): measured as compacted area (m2) at specified thickness
- For bituminous works (Series 600): measured by area (m2) or by weight (tonnes) depending on item
- For structures (Series 700): measured per structural element with specific measurement rules

**Quality-Based Payment:** Payment is only for work that meets the quality requirements specified in the Kenya Standard Specification for Road and Bridge Construction. Work failing quality tests is either: (a) rejected and re-done at Contractor's cost, (b) accepted with reduced payment (if the deficiency is minor), or (c) subjected to additional testing at Contractor's cost.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Payment processing route:**
```
Is the project donor-funded (World Bank, AfDB, EU, JICA)?
  |-- YES --> Check designated account balance
  |          |-- Sufficient --> Process payment within 56 days
  |          +-- Insufficient --> Request replenishment (adds delay)
  +-- NO (GoK funded) --> Submit to KeNHA Finance
                          |-- Exchequer funds available --> Process
                          +-- Exchequer constrained --> Delay likely
                              --> Document and advise on Contractor's rights
```

### M.3.2 Professional Judgment (Country-Specific)

**Document every late payment.** Even if KeNHA cannot pay on time due to exchequer constraints, the Engineer must document: (a) the Statement receipt date, (b) the IPC issue date, (c) the payment due date, and (d) the actual payment date. Late payment creates financing charge entitlements under Sub-Clause 14.8.

**Do not delay IPC issuance because payment is unlikely.** The Engineer's duty to certify is independent of the Employer's ability to pay. Issue the IPC within 28 days regardless.

**WSCM Part 3 items must match.** When verifying the Contractor's Statement, ensure that item references match the WSCM Part 3 numbering in the BoQ. Misaligned item references cause confusion and audit issues.

**Track cumulative advance payment repayment carefully.** Advance payment must be fully repaid before the final IPC. Monitor the repayment schedule against progress to ensure the advance is recovered before completion.

### M.3.3 Common Errors (Country-Specific)

1. **Delaying IPC issuance to match government payment cycles.** The 28-day deadline is contractual, not administrative.
2. **Not calculating financing charges on late payments.** These are contractual entitlements that should be documented.
3. **Using incorrect WSCM Part 3 item descriptions.** Measurement must follow the exact item description in the BoQ, not general descriptions.
4. **Not accounting for price adjustment provisions.** Some Kenya contracts include price adjustment formulae (per Sub-Clause 13.8) for long-duration contracts. These adjustments must be calculated and included in each IPC.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Retention | 10% to 5% max | KeNHA project | ASSUMED: 10% retention per IPC, max 5% of CP. ILLUSTRATIVE -- verify COPA. | Common Kenya practice |
| Advance payment | 10% | KeNHA project | ASSUMED: 10% advance payment. ILLUSTRATIVE -- verify Appendix to Tender. | Common KeNHA range |
| Repayment start | 10% of Contract Price | Not stated | ASSUMED: Repayment starts at 10% completion. ILLUSTRATIVE -- verify COPA. | Common threshold |
| Interest rate | 3% above Central Bank of Kenya rate | Not stated | ASSUMED: Late payment interest rate. Verify Appendix to Tender. | Typical Sub-Clause 14.8 |
| BoQ format | WSCM Part 3 | Kenya road project | Standard Kenya BoQ format for road works | Kenya standard practice |

---

## M.5 Country-Specific Validation

### M.5.1 Standards Compliance Checks

- **Check:** IPC issued within 28 days of Statement receipt
- **Pass condition:** IPC date <= Statement date + 28 days
- **Fail action:** SENIOR REVIEW -- IPC deadline exceeded. Issue immediately.

- **Check:** Advance payment guarantee covers outstanding advance balance
- **Pass condition:** Guarantee amount >= outstanding advance
- **Fail action:** Request guarantee increase before further disbursement

- **Check:** Measured quantities align with WSCM Part 3 item descriptions
- **Pass condition:** Items and units match BoQ per WSCM Part 3
- **Fail action:** Clarify measurement basis before certifying

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Payment > 60 days overdue | Government exchequer delays | SENIOR REVIEW -- Payment [X] days overdue. Document financing charges. Advise Contractor of rights under Sub-Clause 16.1. |
| Designated account balance low | Donor replenishment needed | NOTE -- Designated account balance KES [X]. Next IPC is KES [Y]. Request replenishment from donor. |
| Advance payment repayment behind schedule | May not be fully repaid before completion | SENIOR REVIEW -- Advance repayment at [X]% vs completion at [Y]%. Increase deduction rate if needed. |
| Price adjustment formula application | Long-duration contract | NOTE -- Calculate price adjustment per Sub-Clause 13.8 formula for this IPC period. |

---

## M.7 Worked Example -- Kenya

### Example: KeNHA Road Contract -- Monthly IPC Processing with WSCM Part 3

**Project:** Rehabilitation of Class B trunk road, KES 4.5 billion, Government of Kenya funded. FIDIC Red Book 1999.

**Scenario:** IPC No. 6 (Month 6). Contractor submits Statement for KES 380 million of measured work per WSCM Part 3 BoQ items. Contract data: 10% advance payment (KES 450 million received), 10% retention per IPC (max 5% = KES 225 million), repayment starts at 10% completion. Cumulative certified to date (IPC 1-5): KES 1.6 billion. Cumulative retention held: KES 140 million.

**Solution:**

Step 1: Verify measured quantities against WSCM Part 3 items
- Series 300 (Earthworks): claimed 42,000 m3 at KES 1,800/m3 = KES 75.6M. Site records: 39,500 m3. Certified: KES 71.1M.
- Series 500 (Pavement sub-base): claimed 12,000 m2 at KES 4,500/m2 = KES 54M. Layer tests confirm 11,500 m2. Certified: KES 51.75M.
- Series 600 (Bituminous seal): claimed KES 120M. Verified: KES 115M after surface regularity checks.
- Series 400 (Drainage): claimed KES 65M. Verified: KES 63M.
- Other Series: verified at KES 52M (adjusted from KES 65.4M claimed).

Step 2: Calculate gross certified amount
- Total verified work: KES 352.85M (vs KES 380M claimed)

Step 3: Deductions
- Retention (10% of KES 352.85M): KES 35.29M. Cumulative: 140M + 35.29M = KES 175.29M (below max KES 225M). Apply.
- Advance repayment: proportional deduction. Cumulative certified (including this IPC): 1,600M + 352.85M = KES 1,952.85M. At 10% deduction rate: KES 35.29M this period. Check: cumulative repayment to date: tracking against KES 450M advance received.

Step 4: Net IPC amount
- Gross: KES 352.85M
- Less retention: -KES 35.29M
- Less advance repayment: -KES 35.29M
- Net IPC No. 6: KES 282.27M

Step 5: Issue IPC
- Statement received: 1 July
- IPC issued: 23 July (Day 23 -- within 28-day deadline)
- Payment due: 26 August (56 days from Statement receipt)

Step 6: Payment monitoring
- Track actual payment date against 56-day deadline
- Document financing charges if payment is late (Sub-Clause 14.8)

---

## M.8 References

1. FIDIC Red Book 1999, Clause 14 (Contract Price and Payment)
2. FIDIC Yellow Book 1999, Clause 14 (modified for lump sum)
3. Works Sectional Completion Milestones (WSCM) Part 3 -- Standard BoQ format for Kenya road works
4. Public Procurement and Asset Disposal Act, 2015 (Kenya)
5. World Bank Disbursement Guidelines for Investment Project Financing, 2017
6. Kenya Standard Specification for Road and Bridge Construction -- quality requirements for measured work

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft with Kenya IPC processing, WSCM Part 3 BoQ format, KeNHA payment practice, exchequer cycle context, worked example with WSCM Part 3 series-based measurement. All threshold values flagged as ILLUSTRATIVE. WSCM Part 3 item numbering based on training data -- verify against current document. |
