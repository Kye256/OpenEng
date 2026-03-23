# Dispute Resolution -- Uganda Module

> **Parent Skill:** Skill #46 Dispute Resolution
> **Country/Jurisdiction:** Uganda
> **Standards:** FIDIC Red Book 1999; Uganda Arbitration and Conciliation Act
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| FIDIC Red Book 1999 | 1st Edition | Clause 20 (Claims, Disputes and Arbitration) | Current |
| Uganda Arbitration and Conciliation Act | 2000 | Arbitration provisions | Current |
| UNCITRAL Arbitration Rules | 2013 (revised) | Alternative to ICC (some UNRA contracts) | Current |
| ICC Rules of Arbitration | 2021 (current) | Default FIDIC arbitration rules | Current |

### M.1.2 Institutional Context

**DAB Practice in Uganda:** DABs are commonly appointed for large UNRA contracts (typically > UGX 20 billion). For smaller contracts, Particular Conditions may simplify or omit the DAB requirement, sometimes providing for direct referral to arbitration after the Engineer's determination.

**Arbitration in Uganda:** The Arbitration and Conciliation Act 2000 provides the legal framework for arbitration. The Act is based on the UNCITRAL Model Law and is generally supportive of international arbitration. Key provisions:
- Both domestic and international arbitrations can be conducted in Uganda
- Arbitral awards are enforceable through the High Court
- The Act recognises party autonomy in choice of arbitration rules and procedure

**Seat of Arbitration:** UNRA Particular Conditions typically specify Kampala as the seat of arbitration. For World Bank-funded projects, the seat may be specified as an international location (London, Paris) or left to the ICC.

**Centre for Arbitration and Dispute Resolution (CADER):** Uganda has CADER, which provides arbitration and mediation services. Some UNRA contracts refer disputes to CADER rather than international arbitration.

---

## M.2 Country-Specific Knowledge

### M.2.1 Uganda DAB Practice

**Standing vs Ad Hoc DABs:** Large UNRA contracts typically use standing DABs that visit the site every 3-4 months and provide proactive dispute avoidance. Smaller contracts may use ad hoc DABs or omit DABs entirely.

**DAB Member Selection:** DAB members for UNRA projects are typically experienced construction professionals (engineers, quantity surveyors, construction lawyers) with knowledge of FIDIC contracts and East African construction practice. FIDIC maintains a list of accredited DAB members.

**Common Disputes Referred to DABs in Uganda:**
- Variation valuation disagreements (new rates for unpriced items)
- Time extension claims (land acquisition delays, exceptional rainfall)
- Payment disputes (delayed payments, overcertification claims)
- Defects liability issues (responsibility for defects, DNP extension)

### M.2.2 Particular Conditions Modifications

**Common modifications in UNRA contracts:**
- Seat of arbitration: Kampala (instead of ICC default)
- Arbitration rules: UNCITRAL Rules (instead of ICC Rules) in some contracts
- Number of arbitrators: 3 for large contracts, 1 (sole) for smaller contracts
- Language of arbitration: English
- DAB requirement: may be waived for contracts below UGX 20 billion
- Some contracts add a mediation step between DAB and arbitration

**World Bank modifications:**
- World Bank Conditions of Financing may add requirements for dispute resolution
- Some World Bank contracts require that disputes related to fraud and corruption are handled through separate World Bank procedures, not contractual dispute resolution

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Is a DAB required for this contract?**
```
Contract value?
  |-- > UGX 20 billion --> DAB typically required (standing DAB preferred)
  |-- UGX 5-20 billion --> DAB may be required (check Particular Conditions)
  +-- < UGX 5 billion --> DAB often not required; direct Engineer determination
                          to arbitration may apply
```

### M.3.2 Professional Judgment (Country-Specific)

**Encourage DAB appointment early.** Many UNRA contracts fail to appoint the DAB within the contractual deadline (28 days after the Letter of Acceptance). The Engineer should remind both Parties of this obligation. A functioning DAB reduces the likelihood of disputes escalating to arbitration.

**Mediation can be very effective in Uganda.** Before escalating to arbitration, parties should consider mediation. Uganda's construction industry is relatively small, and parties often have ongoing commercial relationships. Mediation preserves relationships better than adversarial arbitration.

**Government disputes have additional complexities.** UNRA, as a government agency, may face constraints in settling disputes (budget authority, audit scrutiny, political considerations). Settlement authority may need to be obtained from the UNRA Board or the Ministry of Finance.

### M.3.3 Common Errors (Country-Specific)

1. **Not appointing the DAB at contract commencement.** The 28-day deadline is frequently missed in Uganda.
2. **Treating the DAB as advisory rather than binding.** DAB decisions are binding and must be complied with immediately.
3. **Ignoring the amicable settlement period.** Arbitration cannot commence until the 56-day period has elapsed.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| DAB requirement | Yes (> UGX 20B) | Large contract | ASSUMED: DAB required for large contract. Verify Particular Conditions. | UNRA typical practice |
| Seat of arbitration | Kampala | UNRA contract | ASSUMED: Kampala. Check Particular Conditions. | Common UNRA provision |
| Arbitration rules | ICC or UNCITRAL | Not specified | ASSUMED: ICC Rules (FIDIC default). Check Particular Conditions. | Sub-Clause 20.6 default |
| Number of arbitrators | 3 | Large contract | ASSUMED: 3 arbitrators for large contract | Common practice |

---

## M.5 Country-Specific Validation

### M.5.1 Standards Compliance Checks

- **Check:** DAB appointed within 28 days of Letter of Acceptance
- **Pass condition:** DAB agreement signed within 28 days
- **Fail action:** SENIOR REVIEW -- DAB not appointed within contractual deadline. Advise Parties to appoint.

- **Check:** Arbitration seat specified in Particular Conditions
- **Pass condition:** Seat specified (typically Kampala)
- **Fail action:** NOTE -- No seat specified. FIDIC default applies (ICC determines).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| DAB not appointed 60 days after LOA | Contractual requirement unmet | SENIOR REVIEW -- DAB appointment overdue. Parties must appoint per Sub-Clause 20.2. Failure may affect dispute resolution. |
| Dispute value > UGX 5 billion | Major financial dispute | SENIOR REVIEW -- Dispute value UGX [X]. Legal counsel strongly recommended for both Parties. |
| Party refuses DAB decision compliance | Contract breach | SENIOR REVIEW -- [Party] not complying with binding DAB decision. Sub-Clause 20.7 remedy available. |

---

## M.7 Worked Example -- Uganda

### Example: UNRA Road Project -- Variation Valuation Dispute

**Project:** UNRA trunk road construction, UGX 45 billion, World Bank funded. FIDIC Red Book 1999. Standing 3-member DAB appointed.

**Scenario:** The Engineer determined the value of a rock excavation variation at a new rate of UGX 42,000/m3. The Contractor is dissatisfied, claiming that the correct rate should be UGX 55,000/m3 based on actual costs plus profit. The Engineer's determination was issued on 15 January. The Contractor gave notice of dissatisfaction to the DAB on 28 January (Day 13 -- within 28 days of the determination, although no formal DAB referral has been made yet).

**Solution:**

Step 1: Clarify procedure
- The Contractor has expressed dissatisfaction with the Engineer's determination under Sub-Clause 3.5.
- The next step is formal referral to the DAB under Sub-Clause 20.4.
- Note: "notice of dissatisfaction" with the Engineer's determination is different from "notice of dissatisfaction" with a DAB decision (the latter triggers the 28-day deadline for challenging a DAB decision).

Step 2: DAB referral (Sub-Clause 20.4)
- The Contractor submits a formal referral to the DAB, including:
  - Statement of the dispute
  - Engineer's determination and basis
  - Contractor's claimed rate and supporting cost data
  - Any relevant correspondence and site records

Step 3: DAB process
- DAB reviews submissions from both Parties.
- DAB may request additional information (e.g., breakdown of actual costs, comparison with market rates for rock excavation in Uganda).
- DAB may visit the site and inspect the rock excavation conditions.
- DAB gives decision within 84 days (by approximately 22 April).

Step 4: DAB decision
- DAB determines a rate of UGX 48,000/m3 (between the Engineer's UGX 42,000 and the Contractor's UGX 55,000), with detailed reasoning based on the actual costs and conditions.
- Both Parties must comply immediately -- the Contractor is paid at UGX 48,000/m3, and any difference from previous IPCs is included in the next IPC.

Step 5: If dissatisfied
- Either Party has 28 days from the DAB decision to give notice of dissatisfaction.
- If UNRA is dissatisfied with paying UGX 48,000 (vs Engineer's UGX 42,000), UNRA must give notice by approximately 20 May.
- If no notice: decision becomes final and binding.
- If notice given: 56-day amicable settlement period, then arbitration if not settled.

Step 6: Practical considerations
- Arbitration over a rate difference of UGX 6,000/m3 on (say) 15,000 m3 = UGX 90 million in dispute. Arbitration costs may exceed this amount. Advise amicable settlement.
- For World Bank-funded project: UNRA should inform the World Bank of the dispute and DAB decision.

---

## M.8 References

1. FIDIC Red Book 1999, Clause 20 (Claims, Disputes and Arbitration)
2. Uganda Arbitration and Conciliation Act, 2000
3. UNCITRAL Arbitration Rules, 2013 (revised)
4. ICC Rules of Arbitration, 2021
5. FIDIC Guidance for the Preparation of Particular Conditions (dispute resolution provisions)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with Uganda DAB practice, Arbitration Act context, UNRA Particular Conditions modifications, worked example (variation valuation dispute through DAB). |
