# FIDIC Red Book -- Uganda Module

> **Parent Skill:** Skill #42 FIDIC Red Book
> **Country/Jurisdiction:** Uganda
> **Standards:** FIDIC Conditions of Contract for Construction, 1st Edition 1999
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| FIDIC Conditions of Contract for Construction (Red Book) | 1st Edition 1999 | General Conditions Clauses 1-20 | Current (standard form for UNRA/MoWT) |
| World Bank Standard Bidding Documents (Works) | 2017 | Conditions of Contract (modified FIDIC) | Current (for World Bank-funded projects) |
| PPDA Standard Bidding Documents | 2014 (updated periodically) | Contract conditions section | Current (for GoU-funded projects) |
| MDB Harmonised Edition | 2005 (updated 2010) | Modified FIDIC Red Book for MDB-funded projects | Current (some donor-funded projects) |

### M.1.2 Institutional Context

**Uganda National Roads Authority (UNRA):** The primary employer for trunk road and national road projects. UNRA uses FIDIC Red Book 1999 with project-specific Particular Conditions. UNRA has a standard set of Particular Conditions that are adapted for each project.

**Ministry of Works and Transport (MoWT):** Oversees road infrastructure policy. MoWT Road Design Manual provides technical standards. Contract administration follows FIDIC Red Book for construction contracts.

**World Bank / IDA:** Major funding source for Uganda road projects. World Bank-funded projects use either: (a) World Bank Standard Bidding Documents which contain modified FIDIC Red Book conditions, or (b) MDB Harmonised Edition. Key World Bank requirements include: prior review thresholds, no-objection requirements for variations above threshold, specific procurement rules.

**African Development Bank (AfDB):** Uses similar FIDIC-based conditions with AfDB-specific modifications. Less common than World Bank for Uganda road projects.

**The Engineer:** Typically a consulting engineering firm (e.g., an international or regional firm with Uganda presence) appointed by the Employer (UNRA or MoWT) under a separate services contract. The Engineer's Representative (Resident Engineer) is posted on site.

### M.1.3 Standard Philosophy

FIDIC Red Book 1999 is a "balanced risk allocation" contract form. The Employer bears design risk (provides design through specifications and drawings), while the Contractor bears construction risk (means, methods, programme). The Engineer acts as contract administrator with an obligation of fairness under Sub-Clause 3.5.

In Uganda practice, the balance is sometimes modified by Particular Conditions that:
- Limit the Engineer's authority to approve variations above a monetary threshold
- Require Employer (UNRA) or funder (World Bank) no-objection for significant decisions
- Modify payment and suspension timelines to reflect government cash flow realities

---

## M.2 Country-Specific Knowledge

### M.2.1 Common UNRA Particular Conditions

The following Particular Conditions modifications are commonly found in UNRA contracts. The agent must always check the specific contract's Particular Conditions, as these vary by project.

**Engineer's Authority Limits:**
- Variations below a threshold (commonly UGX 500 million or 5% of Contract Price, whichever is less) may be approved by the Engineer without Employer approval
- Variations above the threshold require written approval from UNRA (the Employer)
- For World Bank-funded projects, variations above the prior review threshold also require World Bank no-objection

**Payment Modifications:**
- Some UNRA contracts extend the Employer's payment period from 56 days to 60 or 90 days (modified Sub-Clause 14.7)
- Some contracts modify the Contractor's right to suspend work under Sub-Clause 16.1, extending the period before suspension is permitted
- Advance payment is typically 10-15% of Contract Price, repayable starting when interim payments reach 10% of Contract Price

**Claims and Time Limits:**
- The 28-day notice period under Sub-Clause 20.1 is generally retained in UNRA contracts
- Some contracts add a requirement for the Contractor to maintain contemporaneous records and make them available to the Engineer

**Dispute Resolution:**
- DAB is commonly required for large contracts (> UGX 20 billion)
- For smaller contracts, Particular Conditions may provide for direct Engineer determination without DAB
- Seat of arbitration is typically Kampala
- Some UNRA contracts specify UNCITRAL Arbitration Rules instead of ICC Rules

**World Bank Overlay:**
- World Bank Standard Bidding Documents include their own modified FIDIC conditions
- Prior review thresholds: contracts above USD 10 million typically require World Bank prior review
- No-objection required for: contract award, variation orders above threshold (commonly 15% of contract price or USD 3 million), time extensions beyond threshold, any termination
- Fraud and corruption clause (mandatory) with right of inspection/audit

**Key Clause Reference Table:** See `tables/fidic_red_book_key_clauses.json` for the full ~20 key clauses with Engineer's actions, time limits, and common pitfalls.

### M.2.2 Uganda-Specific Considerations

**Currency:** Uganda Shilling (UGX). Large contracts may have dual currency provisions (UGX for local costs, USD/EUR for foreign costs). Sub-Clause 14.15 (Currencies of Payment) governs.

**Taxation:** Value Added Tax (VAT) at 18%. Withholding tax on payments to foreign contractors (6% or 15% depending on treaty status). The Contract Price typically states whether it is inclusive or exclusive of VAT.

**Performance Security:** Typically 10% of Contract Price (Sub-Clause 4.2). Bank guarantee from a bank acceptable to the Employer. For World Bank-funded projects, the guarantee must be from a bank acceptable to both UNRA and the World Bank.

**Defects Notification Period:** Typically 365 days (12 months) for road construction. May be extended for specific elements (bridges, structures).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Step 2a (from core skill): Determine funding source**
```
Is the project World Bank / IDA funded?
  |-- YES --> Apply World Bank modified conditions
  |         Check prior review thresholds
  |         No-objection required for major decisions
  +-- NO (GoU funded) --> Apply standard UNRA Particular Conditions
                          Simpler approval process
                          BUT may have cash flow delays
```

**Step 3a: Check Engineer's authority for the specific action**
```
Is the action (variation, determination, certification) within the Engineer's authority?
  |-- YES (below threshold) --> Engineer may proceed
  +-- NO (above threshold) --> Seek UNRA approval
                                If World Bank: also seek no-objection
                                Document the approval chain
```

### M.3.2 Professional Judgment (Country-Specific)

**Delayed payments are endemic.** Government cash flow constraints mean that UNRA frequently exceeds the 56-day payment period. The Contractor's right to suspend under Sub-Clause 16.1 is legally clear, but in practice, suspending work on a government contract has commercial consequences. The Engineer should:
- Document every late payment and the Contractor's entitlement to financing charges (Sub-Clause 14.8)
- Advise both parties of the contractual position
- If suspension is threatened, escalate to UNRA management immediately

**World Bank projects have additional bureaucratic layers.** No-objection processes can add 2-4 weeks to decision timelines. The Engineer should plan for this in programme management and advise the Contractor accordingly.

**Claims are often poorly documented.** Contractors in Uganda (particularly local contractors) may submit claims without adequate contemporaneous records. The Engineer should proactively encourage record-keeping from the start of the contract and assist with understanding the Sub-Clause 20.1 notice requirements.

**Land acquisition delays are the most common source of claims.** UNRA is responsible for land acquisition (the Employer's obligation under Sub-Clause 2.1). Delays in land acquisition frequently cause delays to the works and generate claims for time and cost.

### M.3.3 Common Errors (Country-Specific)

1. **Assuming World Bank conditions are identical to standard FIDIC.** World Bank SBDs modify numerous provisions. Always read the specific project's conditions.
2. **Ignoring the prior review/no-objection process.** Approving a variation that requires World Bank no-objection without obtaining it can create serious problems, including potential misprocurement.
3. **Treating delayed government payments as normal.** While common, delayed payments create legal entitlements for the Contractor that must be documented.
4. **Not adjusting for Uganda's rainy seasons.** Extension of time claims for "exceptionally adverse climatic conditions" (Sub-Clause 8.4(c)) must be assessed against historical rainfall data for the specific project location. Uganda has two rainy seasons (March-May and September-November), and these are not "exceptional."

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Contract form | FIDIC Red Book 1999 | Uganda road project | ASSUMED: 1999 Red Book (standard for UNRA) | UNRA practice |
| Retention | 5% to 5% max | Not stated | ASSUMED: 5% retention (UNRA typical) | Common UNRA practice |
| Advance payment | 10% of Contract Price | Not stated | ASSUMED: 10% advance payment. Verify Appendix to Tender. | Common UNRA range |
| Performance Security | 10% of Contract Price | Not stated | ASSUMED: 10% Performance Security | Sub-Clause 4.2, UNRA typical |
| Defects Notification Period | 365 days | Not stated | ASSUMED: 365 days DNP for road works | Common UNRA practice |
| Delay damages | 0.05-0.10% per day | Not stated | ASSUMED: Delay damages rate. Verify Appendix to Tender. | UNRA typical range |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Advance payment | 5 | 20 | % of Contract Price | UNRA practice | Verify if outside range -- unusual for UNRA |
| Retention | 5 | 10 | % | Sub-Clause 14.3 | Standard is 5%. If higher, check justification |
| Performance Security | 5 | 15 | % of Contract Price | Sub-Clause 4.2 | Standard is 10%. Verify Particular Conditions |
| Defects Notification Period | 365 | 730 | days | Sub-Clause 11.1 | 365 is standard. 730 for bridges/structures |

### M.5.2 Standards Compliance Checks

- **Check:** Contract edition matches clause numbers used
- **Standard:** FIDIC Red Book 1999
- **Pass condition:** All Sub-Clause numbers are from the 1999 edition
- **Fail action:** Flag mismatched clause numbers and identify correct 1999 references

- **Check:** World Bank no-objection obtained for actions above threshold
- **Standard:** World Bank Procurement Regulations
- **Pass condition:** Evidence of no-objection for applicable actions
- **Fail action:** SENIOR REVIEW -- Action may require World Bank no-objection

### M.5.3 Departures / Relaxations Process

FIDIC does not have a formal "departures" process like DMRB. However, Particular Conditions serve the same function -- they modify General Conditions for project-specific needs. In Uganda:
- UNRA has standard Particular Conditions templates that are adapted per project
- World Bank has mandatory conditions that cannot be modified (fraud/corruption, inspection/audit)
- Any modification to World Bank mandatory provisions is a misprocurement risk

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Payment > 90 days overdue | Government cash flow issue | SENIOR REVIEW -- Payment [X] days overdue. Contractor entitled to financing charges (14.8) and may suspend (16.1 after 21-day notice). Escalate to UNRA management. |
| Variation requires World Bank no-objection | Prior review threshold exceeded | SENIOR REVIEW -- Variation of UGX [X] exceeds prior review threshold. World Bank no-objection required before instructing. |
| Land acquisition delays | Employer obligation (2.1) | NOTE -- Land acquisition delays at Km [X]-[Y]. Potential time extension claim under Sub-Clause 8.4(e). Document Contractor's notice compliance. |
| Contractor claims for "exceptional" rainfall | Sub-Clause 8.4(c) assessment required | NOTE -- Compare claimed rainfall against historical data for [location]. Normal seasonal rain is not "exceptional." |
| No DAB appointed on large contract | Sub-Clause 20.2 requires appointment | SENIOR REVIEW -- No DAB appointed. Parties should appoint within 28 days per Sub-Clause 20.2. Failure may affect dispute resolution. |

---

## M.7 Worked Examples -- Uganda

### Example 1: UNRA Trunk Road Rehabilitation -- Extension of Time Claim (World Bank Funded)

**Project:** Rehabilitation of Trunk Road X (Kampala to [District]), UGX 80 billion, World Bank IDA funded.

**Scenario:** The Contractor claims a 3-month extension of time due to delayed access to a 5 km section caused by incomplete land acquisition. The Contractor gave notice on Day 25 after becoming aware of the delay.

**Solution:**

Step 1: Check notice compliance (Sub-Clause 20.1)
- Notice given on Day 25 -- within the 28-day limit. Notice is VALID.

Step 2: Identify entitlement clause
- Delayed access to site is the Employer's obligation under Sub-Clause 2.1.
- Extension of time is available under Sub-Clause 8.4(e) -- delay caused by the Employer.
- Entitlement to Cost plus reasonable profit under Sub-Clause 2.1.

Step 3: Assess the extension
- Review the programme: is the delayed section on the critical path?
- Determine the actual delay caused: when was access promised vs. when was it provided?
- Consider whether the Contractor could have re-sequenced work to mitigate delay.
- Determine a fair extension per Sub-Clause 3.5.

Step 4: Engineer's determination
- Consult both Parties (Contractor and UNRA).
- If agreement cannot be reached, make a fair determination.
- For World Bank-funded project: inform UNRA of the determination. If extension is significant (> 10% of Time for Completion), UNRA may need to inform the World Bank.

**Result:** Engineer determines a 2.5-month extension (actual delay was 3 months but Contractor could have mitigated 2 weeks by re-sequencing). Cost claim assessed separately for idle resources during delay period.

### Example 2: UNRA District Road Upgrade -- IPC Processing (GoU Funded)

**Project:** Upgrade of District Road Y, UGX 5 billion, Government of Uganda funded.

**Scenario:** Contractor submits monthly Statement for Month 6: UGX 800 million of measured work. Engineer verifies quantities against site measurement records and test certificates.

**Solution:**

Step 1: Verify Statement (Sub-Clause 14.3)
- Earthworks: claimed 45,000 m3, site records show 42,000 m3. Adjust: UGX -60 million.
- Pavement base course: claimed 3,200 m2, layer test certificates show 2,800 m2 passes quality. Remaining 400 m2 not yet tested. Withhold until tested: UGX -40 million.
- Culvert works: claimed 100%, verified complete. No adjustment.

Step 2: Calculate certified amount
- Claimed: UGX 800 million
- Adjustments: -UGX 100 million
- Subtotal: UGX 700 million
- Less retention (5%): -UGX 35 million
- Less advance payment deduction (pro-rata): -UGX 30 million
- IPC amount: UGX 635 million

Step 3: Issue IPC within 28 days (Sub-Clause 14.6)
- IPC issued on Day 22 -- within deadline.
- Employer (UNRA) shall pay within 56 days of receiving Statement (Sub-Clause 14.7).

Step 4: Common Uganda issue -- delayed payment
- Government of Uganda payments are frequently delayed beyond 56 days.
- If payment exceeds 56 days: document and advise both parties.
- If Contractor gives 21-day notice under Sub-Clause 16.1: Contractor may suspend.
- Financing charges accrue under Sub-Clause 14.8 from Day 57.

### Example 3: Time-Barred Claim -- Edge Case

**Project:** Any UNRA road project.

**Scenario:** Contractor submits a claim for additional payment due to unforeseeable ground conditions (Sub-Clause 4.12). The event occurred 60 days ago, and the Contractor only now gives notice. The 28-day deadline under Sub-Clause 20.1 has been exceeded by 32 days.

**Solution:**

Step 1: Assess notice compliance
- Sub-Clause 20.1 requires notice within 28 days of the Contractor becoming aware of (or should have become aware of) the event.
- Notice given on Day 60. The claim is **time-barred**.
- Under Sub-Clause 20.1: "If the Contractor fails to give notice of a claim within such period of 28 days, ... the Contractor shall not be entitled to any additional payment, and the Employer shall be discharged from all liability in connection with the claim."

Step 2: Check Particular Conditions
- Do the Particular Conditions modify the 28-day time bar?
- Some contracts (particularly World Bank MDB Harmonised Edition) soften the time bar.
- If Particular Conditions are silent, the time bar applies strictly.

Step 3: Consider fairness (Sub-Clause 3.5 context)
- While the time bar is strict, the Engineer should note that:
  - The fairness obligation under Sub-Clause 3.5 does not override the time bar
  - However, if the Contractor was genuinely unaware of the event until later, the 28-day period runs from awareness, not from the event itself
  - The Engineer should document the analysis and reasoning clearly

**Result:** Claim is time-barred under Sub-Clause 20.1. Engineer informs the Contractor in writing, citing the provision and the dates. Engineer notes that Particular Conditions do not modify the time bar. Contractor's remedy is to refer the matter to the DAB if it disputes the Engineer's assessment.

---

## M.8 References

1. FIDIC Conditions of Contract for Construction, 1st Edition 1999 (Red Book)
2. FIDIC Conditions of Contract for Construction, 2nd Edition 2017 (Red Book -- 2017 differences noted)
3. World Bank Standard Bidding Documents: Procurement of Works (2017 edition)
4. MDB Harmonised Conditions of Contract for Construction, 2005 (updated 2010)
5. FIDIC Users' Guide: A Practical Guide to the 1999 Red and Yellow Books, Brian W. Totterdill, Thomas Telford, 2006
6. UNRA Standard Particular Conditions (project-specific -- always verify against the specific contract)
7. Uganda Public Procurement and Disposal of Public Assets Act, 2003 (as amended)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with UNRA/World Bank context, common Particular Conditions modifications, 3 worked examples (World Bank EOT claim, GoU IPC processing, time-barred claim edge case). |
