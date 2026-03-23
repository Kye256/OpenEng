# Measurement & Payment -- Uganda Module

> **Parent Skill:** Skill #44 Measurement & Payment
> **Country/Jurisdiction:** Uganda
> **Standards:** FIDIC Red Book 1999 (as modified by UNRA Particular Conditions)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| FIDIC Red Book 1999 | 1st Edition | Clause 14 (Contract Price and Payment) | Current |
| FIDIC Yellow Book 1999 | 1st Edition | Clause 14 (modified for lump sum) | Current |
| World Bank Disbursement Guidelines | 2017 | Direct payment, reimbursement, special account | Current |
| UNRA Financial Procedures | Internal | Payment approval chain | Current |

### M.1.2 Institutional Context

**UNRA Payment Process:** UNRA processes payments through its Finance Department after the Engineer issues the IPC. The typical chain is: Engineer issues IPC -> UNRA Project Manager reviews -> UNRA Finance processes -> Uganda Consolidated Fund / project account disbursement. For GoU-funded projects, payment depends on government cash flow. For World Bank-funded projects, payments may be processed through a designated account (special account) with periodic replenishment from the World Bank.

### M.1.3 Standard Philosophy

Payment under FIDIC is certificate-based: the Engineer certifies, and the Employer pays the certified amount. The Engineer is the payment gatekeeper -- certifying only amounts considered correct. In Uganda, the practical challenge is that government payment processes often exceed the contractual deadlines, creating Contractor entitlements that must be documented even if not immediately enforced.

---

## M.2 Country-Specific Knowledge

### M.2.1 Uganda Payment Practice

**Common Retention Terms:** 5% retention deducted from each IPC, up to maximum 5% of Contract Price. First half released upon Taking-Over Certificate, second half upon expiry of Defects Notification Period (typically 365 days).

**Common Advance Payment Terms:** 10-15% of Contract Price. Advance payment guarantee required (bank guarantee from a bank acceptable to UNRA). Repayment typically starts when cumulative certified work reaches 10% of Contract Price. Deducted proportionally from each IPC until fully repaid.

**World Bank Disbursement Methods:**
- **Direct payment:** World Bank pays the Contractor directly upon request from UNRA
- **Reimbursement:** UNRA pays from its own resources and seeks reimbursement from World Bank
- **Designated Account (Special Account):** UNRA operates a local currency account replenished periodically by the World Bank. IPCs are paid from this account.

**Payment Delays:** UNRA payments are frequently delayed beyond the 56-day contractual deadline, particularly for GoU-funded projects. Typical delays range from 30-90 days beyond the deadline. World Bank-funded projects generally have better payment performance due to the designated account mechanism.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Payment processing route:**
```
Is the project World Bank funded?
  |-- YES --> Check designated account balance
  |          |-- Sufficient --> Process payment within 56 days
  |          +-- Insufficient --> Request replenishment (adds delay)
  +-- NO (GoU funded) --> Submit to UNRA Finance
                          |-- Budget available --> Process (may still exceed deadline)
                          +-- Budget constrained --> Delay likely
                              --> Document and advise on Contractor's rights
```

### M.3.2 Professional Judgment (Country-Specific)

**Document every late payment.** Even if UNRA cannot pay on time due to cash flow, the Engineer must document: (a) the Statement receipt date, (b) the IPC issue date, (c) the payment due date, and (d) the actual payment date. Late payment creates financing charge entitlements under Sub-Clause 14.8 that accumulate.

**Do not delay IPC issuance because payment is unlikely.** The Engineer's duty to certify is independent of the Employer's ability to pay. Issue the IPC within 28 days regardless.

**World Bank projects: track disbursement category ceilings.** World Bank financing typically has category ceilings (e.g., civil works, consulting services). Payments exceeding the category ceiling require contract amendment with World Bank. Flag early if cumulative payments approach the ceiling.

### M.3.3 Common Errors (Country-Specific)

1. **Delaying IPC issuance to match government payment cycles.** The 28-day deadline is contractual, not administrative.
2. **Not calculating financing charges on late payments.** Contractors often do not claim these, but they are contractual entitlements that should be documented.
3. **Using incorrect exchange rates for multi-currency contracts.** Exchange rates should be per the contract provisions, not the rate on the day of payment.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Retention | 5% to 5% max | UNRA project | ASSUMED: 5% retention (UNRA typical) | Common UNRA practice |
| Advance payment | 10% | UNRA project | ASSUMED: 10% advance payment | Common UNRA range |
| Repayment start | 10% of Contract Price | Not stated | ASSUMED: Repayment starts at 10% completion | Common threshold |
| Interest rate | 3% above Bank of Uganda rate | Not stated | ASSUMED: Late payment interest rate | Typical Sub-Clause 14.8 |

---

## M.5 Country-Specific Validation

### M.5.1 Standards Compliance Checks

- **Check:** IPC issued within 28 days of Statement receipt
- **Pass condition:** IPC date <= Statement date + 28 days
- **Fail action:** SENIOR REVIEW -- IPC deadline exceeded. Issue immediately.

- **Check:** Advance payment guarantee covers outstanding advance balance
- **Pass condition:** Guarantee amount >= outstanding advance
- **Fail action:** Request guarantee increase before further disbursement

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Payment > 60 days overdue | Government cash flow | SENIOR REVIEW -- Payment [X] days overdue. Document financing charges. Advise Contractor of rights under Sub-Clause 16.1. |
| Designated account balance low | World Bank replenishment needed | NOTE -- Designated account balance UGX [X]. Next IPC is UGX [Y]. Request replenishment from World Bank. |
| Cumulative payments approaching disbursement ceiling | World Bank category limit | SENIOR REVIEW -- Cumulative payments at [X]% of category ceiling. Contract amendment may be needed. |

---

## M.7 Worked Example -- Uganda

### Example: UNRA Road Contract -- Monthly IPC Processing

**Project:** Upgrade of National Road Z, UGX 35 billion, Government of Uganda funded. FIDIC Red Book 1999.

**Scenario:** IPC No. 8 (Month 8). Contractor submits Statement for UGX 2.5 billion of measured work. Contract data: 10% advance payment (UGX 3.5 billion received), 5% retention (max 5% = UGX 1.75 billion), repayment starts at 10% completion. Cumulative certified to date (IPC 1-7): UGX 12.0 billion. Cumulative retention held: UGX 600,000.

**Solution:**

Step 1: Verify measured quantities
- Earthworks (common excavation): claimed 55,000 m3 at UGX 12,000/m3 = UGX 660 million. Site records confirm 52,000 m3. Certified: UGX 624 million.
- Gravel sub-base: claimed 8,500 m2 at UGX 35,000/m2 = UGX 297.5 million. Layer test certificates confirm 8,200 m2. Certified: UGX 287 million.
- Culvert works: claimed 6 culverts complete at UGX 85 million each = UGX 510 million. Verified: 5 complete, 1 at 80%. Certified: UGX 493 million.
- Other items: verified at UGX 896 million (adjusted from UGX 1,032.5 million claimed).
- **Total verified work this period: UGX 2,300 million** (vs UGX 2,500 million claimed).

Step 2: Variations
- Approved Variation #3 (rock excavation): UGX 45 million at agreed new rate.

Step 3: Calculate gross certified amount
- Measured work: UGX 2,300 million
- Variations: UGX 45 million
- **Gross this period: UGX 2,345 million**

Step 4: Deductions
- Retention (5% of UGX 2,345M): UGX 117.25 million. Cumulative retention after deduction: UGX 717.25 million (still below max UGX 1,750 million). Apply deduction.
- Advance payment repayment: 10% of UGX 2,345M = UGX 234.5 million. Check: cumulative repayment to date = UGX 1,200M + 234.5M = UGX 1,434.5M. Advance received: UGX 3,500M. Still outstanding: UGX 2,065.5M. Deduction applies.
- Previous IPCs: deducted through cumulative system (not from this IPC -- IPCs are cumulative minus previous).

Step 5: Net IPC amount
- Gross certified (cumulative): UGX 12,000M + 2,345M = UGX 14,345M
- Less retention (cumulative): UGX 717.25M
- Less advance repayment (cumulative): UGX 1,434.5M
- Less previous payments: per payment records
- **Net IPC No. 8: UGX 2,345M - 117.25M - 234.5M = UGX 1,993.25 million**

Step 6: Issue IPC
- Statement received: 1 August 2025
- IPC issued: 22 August 2025 (Day 22 -- within 28-day deadline)
- Payment due: 27 September 2025 (56 days from Statement receipt)

Step 7: Payment monitoring
- Payment received: 15 November 2025 (49 days late)
- Financing charges: 49 days x (Bank of Uganda rate + 3%) x UGX 1,993.25M / 365
- Document and include in next IPC if claimed by Contractor

---

## M.8 References

1. FIDIC Red Book 1999, Clause 14 (Contract Price and Payment)
2. FIDIC Yellow Book 1999, Clause 14 (modified for lump sum)
3. World Bank Disbursement Guidelines for Investment Project Financing, 2017
4. UNRA Standard Particular Conditions (payment provisions)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with Uganda IPC processing, UNRA payment practice, World Bank disbursement context, worked example with detailed calculation. |
