# Variations & Claims -- Kenya Module

> **Parent Skill:** Skill #45 Variations & Claims
> **Country/Jurisdiction:** Kenya
> **Standards:** FIDIC Red Book 1999, PPRA (Public Procurement and Asset Disposal Act 2015)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| FIDIC Red Book 1999 | 1st Edition | Clause 13 (Variations), Clause 20 (Claims), Sub-Clause 8.4, 3.5 | Current |
| FIDIC Yellow Book 1999 | 1st Edition | Same clauses, with design-build modifications | Current |
| Public Procurement and Asset Disposal Act (PPRA) | 2015 | Contract management / amendment provisions | Current |
| Public Procurement and Asset Disposal Regulations | 2020 | Variation/amendment thresholds | Current |
| World Bank Procurement Regulations | 2016 (amended) | Variation/contract amendment thresholds | Current |

### M.1.2 Institutional Context

**Kenya Road Authorities:** KeNHA (Kenya National Highways Authority) manages national and international trunk roads (Class A, B, C). KeRRA (Kenya Rural Roads Authority) manages rural and small town roads (Class D, E). KURA (Kenya Urban Roads Authority) manages urban roads. County Governments manage county roads. The Ministry of Roads and Transport (MoRT) provides policy oversight.

**Variation and Claims Management:** Variation and claims management on Kenya road projects involves multiple stakeholders: the Engineer (consulting firm), the Employer's Project Manager (KeNHA/KeRRA/KURA), the Employer's Contracts Department, and for donor-funded projects, the funding agency (World Bank, AfDB, EU, JICA). The approval chain and thresholds vary by project but follow a common structure.

**PPRA Contract Management Requirements:** The PPRA framework includes provisions for contract management, including requirements for managing variations and contract amendments. Variations that cause cumulative changes above a specified percentage of the original contract price may require additional PPRA approvals -- **ILLUSTRATIVE; verify against current PPRA regulations**.

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Variation Approval Thresholds

**Typical Kenya COPA for variations:**
- **Engineer's authority:** Variations up to KES 50 million or 5% of Contract Price (whichever is less) may be approved by the Engineer without Employer approval -- **ILLUSTRATIVE threshold; verify against project-specific COPA**
- **Employer (KeNHA) approval required:** Variations between the Engineer's threshold and 15% of Contract Price require written Employer approval -- **ILLUSTRATIVE threshold; verify COPA**
- **Above 15% cumulative:** May require contract amendment and additional PPRA approvals -- **ILLUSTRATIVE; verify against current PPRA regulations**

**Donor-funded project thresholds (additional overlay):**
- **Prior review contracts:** Variation orders above the donor's threshold require donor no-objection before instruction -- **ILLUSTRATIVE; verify financing agreement**
- **Post-review contracts:** Variation orders are reviewed during supervision missions
- **Contract amendments:** Cumulative variations exceeding 15% of original contract price generally require donor prior approval regardless of individual variation size

### M.2.2 Common Claims in Kenya Road Projects

| Claim Type | Typical Cause | Entitlement Clause | Frequency |
|------------|---------------|-------------------|-----------|
| Late site access | Land acquisition delays (NLC process) | Sub-Clause 2.1 | Very common |
| Unforeseeable ground conditions | Black cotton soil, rock, high water table | Sub-Clause 4.12 | Common |
| Exceptional rainfall | Flooding, road washouts, access disruption | Sub-Clause 8.4(c) | Common |
| Delayed drawings/instructions | Engineer slow to respond | Sub-Clause 1.9 | Occasional |
| Changes in legislation | Tax changes, environmental requirements, county bylaws | Sub-Clause 13.7 | Occasional |
| Employer's suspension | Budget constraints, political decisions | Sub-Clause 8.9 | Occasional |
| Utility diversions | Uncharted utilities, Kenya Power/water company delays | Sub-Clause 4.7 | Common in urban projects |

### M.2.3 The 28-Day Notice Requirement

The 28-day notice requirement under Sub-Clause 20.1 is the single most critical FIDIC procedural requirement and applies equally in Kenya. Failure to give notice within 28 days of the event (or becoming aware of the event) results in a time bar -- the Contractor loses all entitlement. The Engineer should:
- Proactively inform Contractors of the 28-day requirement at the start of the contract
- Document notice compliance for every claim received
- Apply the time bar strictly unless the COPA modify it

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Variation authority check (Kenya):**
```
Variation value?
  |-- Below Engineer's threshold (ILLUSTRATIVE: < KES 50M or 5% CP)
  |   --> Engineer instructs directly
  +-- Above Engineer's threshold
      |-- Seek Employer (KeNHA/KeRRA/KURA) approval
      |-- Is project donor-funded?
      |   |-- YES: Above donor threshold?
      |   |   |-- YES --> seek donor no-objection BEFORE instruction
      |   |   +-- NO --> Employer approval sufficient
      |   +-- NO --> Employer approval sufficient
      +-- Cumulative > 15% CP? (ILLUSTRATIVE)
          --> SENIOR REVIEW: PPRA / donor contract amendment may be required
```

### M.3.2 Professional Judgment (Country-Specific)

**Land acquisition claims are common.** Kenya's Land Act 2012 and the role of the National Land Commission (NLC) in compulsory acquisition create additional procedural steps compared to some jurisdictions. Delays in resettlement action plans (RAPs) frequently generate claims. The Engineer should: (a) document the promised vs actual access dates, (b) advise the Contractor of the 28-day notice requirement proactively, (c) assess entitlement under Sub-Clause 2.1.

**"Exceptionally adverse climatic conditions" requires evidence.** Kenya has two rainy seasons (March-May long rains, October-December short rains). Rainfall during these periods is normal, not exceptional. A claim under Sub-Clause 8.4(c) must demonstrate that actual rainfall significantly exceeded historical averages for the specific location and season. Kenya Meteorological Department (KMD) data provides historical rainfall records.

**Black cotton soil claims.** Black cotton soil (expansive clay) is common in parts of Kenya (Nairobi area, Rift Valley, Western Kenya). Where site investigation adequately identified the soil conditions, they are not "unforeseeable." Claims under Sub-Clause 4.12 require evidence that the conditions were worse than what an experienced contractor would have anticipated from the site investigation data.

**Utility diversions in urban projects.** KURA road projects in Nairobi and other cities frequently encounter uncharted utilities (Kenya Power, water companies, telecoms). These are a common source of claims and delays. COPA should address the utility diversion responsibility clearly.

### M.3.3 Common Errors (Country-Specific)

1. **Instructing variations above the Engineer's threshold without Employer approval.** This creates contractual and procurement complications.
2. **Accepting rainfall claims without checking KMD historical data.** Normal seasonal rainfall is not "exceptionally adverse."
3. **Not distinguishing Sub-Clause 4.12 from variation.** Unforeseeable physical conditions give entitlement to Cost only (no profit); a variation instruction would be valued at contract rates or new rates including profit. The route matters financially.
4. **Failing to check PPRA requirements for cumulative variations.** Large cumulative variations may trigger PPRA contract amendment requirements.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Engineer's variation authority | KES 50M or 5% CP | Not stated | ASSUMED: Typical KeNHA threshold. ILLUSTRATIVE -- verify COPA. | Common Kenya practice |
| Donor prior review threshold | Per financing agreement | Not stated | ASSUMED: Verify donor financing agreement for specific threshold. | Donor-specific |
| Rainfall data source | Kenya Meteorological Department (KMD) | -- | Use KMD historical data for Sub-Clause 8.4(c) assessment | Authoritative source |
| Cumulative variation ceiling | 15% of Contract Price | Not stated | ASSUMED: 15% ceiling before contract amendment needed. ILLUSTRATIVE -- verify PPRA and COPA. | Common practice |

---

## M.5 Country-Specific Validation

### M.5.1 Standards Compliance Checks

- **Check:** Variation within Engineer's authority threshold
- **Pass condition:** Value below COPA threshold
- **Fail action:** Seek Employer approval before instruction

- **Check:** Donor no-objection obtained (if required)
- **Pass condition:** No-objection received before variation instruction
- **Fail action:** SENIOR REVIEW -- Variation may require donor no-objection

- **Check:** Cumulative variations within PPRA limits
- **Pass condition:** Cumulative variations below contract amendment trigger
- **Fail action:** SENIOR REVIEW -- PPRA contract amendment requirements may apply

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Variation above Engineer's authority | Approval required | Seek Employer (KeNHA/KeRRA/KURA) approval. If donor-funded, also seek donor no-objection. |
| Cumulative variations > 15% CP | Contract amendment may be needed | SENIOR REVIEW -- PPRA / donor contract amendment provisions may apply. ILLUSTRATIVE threshold -- verify. |
| Land acquisition delay > 3 months | Significant Contractor entitlement | SENIOR REVIEW -- Extended land acquisition delay (NLC process). Assess Contractor's entitlement under Sub-Clause 2.1 and 8.4(e). |
| Rainfall claim during normal rainy season | May not be "exceptional" | NOTE -- Verify against KMD historical data before determining as "exceptionally adverse." |
| Utility diversion delays (urban project) | Common in KURA projects | NOTE -- Document utility diversion delays. Assess Contractor's entitlement based on COPA provisions for utility works. |

---

## M.7 Worked Examples -- Kenya

### Example 1: Rock Excavation Variation on KeNHA Project

**Project:** KeNHA trunk road construction, KES 6 billion, Government of Kenya funded. FIDIC Red Book 1999.

**Scenario:** During earthworks on a Class B road in the Rift Valley, the Contractor encounters rock at Km 18-22 that was not indicated in the site investigation report. The BoQ (WSCM Part 3 Series 300) contains items for "common excavation" but no item for "rock excavation." The Contractor gives notice under Sub-Clause 20.1 on Day 7 after encountering rock.

**Solution:**

Step 1: Check notice compliance (Sub-Clause 20.1)
- Notice given on Day 7. Compliant (within 28-day limit).

Step 2: Assess whether this is a claim (Sub-Clause 4.12) or variation (Sub-Clause 13.1)
- Sub-Clause 4.12: Was the rock unforeseeable? Review site investigation report. If no rock was indicated and geological conditions did not obviously suggest rock, it is unforeseeable. Entitlement: Cost only (no profit).
- Sub-Clause 13.1: Engineer may also instruct rock excavation as a variation with new rate per Sub-Clause 12.3.

Step 3: Determine the appropriate route
- If Sub-Clause 4.12 applies: Cost only (difference between rock and common excavation cost).
- If a variation is instructed: new rate includes overheads and profit (more favourable to Contractor).
- In practice, the Engineer often instructs a variation for clarity.

Step 4: Agree rate for rock excavation
- Contractor proposes KES 5,500/m3 (vs common excavation rate of KES 1,800/m3).
- Engineer assesses: market rate for rock excavation in Kenya is KES 4,000-6,000/m3.
- Agreed rate: KES 5,000/m3.

Step 5: Check authority
- Estimated total: 18,000 m3 x KES 5,000 = KES 90 million.
- Above typical Engineer's threshold (ILLUSTRATIVE KES 50M). Seek KeNHA approval before instruction.

### Example 2: Time Extension Claim -- Land Acquisition Delay

**Project:** KeNHA highway upgrade, KES 8 billion, World Bank funded. FIDIC Red Book 1999.

**Scenario:** KeNHA has not completed land acquisition for a 4 km section (Km 30-34). The NLC compulsory acquisition process is ongoing. The Contractor was promised access by Month 4 but only received access at Month 8 (4-month delay). The Contractor gave notice under Sub-Clause 20.1 at Month 4.5.

**Solution:**

Step 1: Notice compliance
- Notice given approximately 15 days after Contractor became aware of the delay. Compliant.

Step 2: Entitlement clause
- Sub-Clause 2.1: Right of access is the Employer's obligation. Entitlement to extension of time (Sub-Clause 8.4(e)) and Cost plus reasonable profit.

Step 3: Assess time extension
- Was the delayed section on the critical path? Review programme.
- Could the Contractor re-sequence work? If other sections were available, duty to mitigate.
- Assessment: 2 months of critical path delay (Contractor mitigated 2 months by working elsewhere).
- Determination: 2-month extension of time.

Step 4: Assess cost
- Idle resources during critical delay: personnel, equipment, site establishment.
- Contractor claims KES 180 million. Engineer assesses verified idle resource costs.
- Determination: KES 120 million plus 10% profit = KES 132 million.

Step 5: Donor considerations
- For World Bank project: inform KeNHA of the determination.
- If extension is significant, KeNHA may need to inform the World Bank.
- Cost determination above donor threshold may require no-objection.

---

## M.8 References

1. FIDIC Red Book 1999, Clauses 3, 8, 12, 13, 20
2. FIDIC Yellow Book 1999 (design-build variation provisions)
3. Public Procurement and Asset Disposal Act, 2015 (Kenya) -- contract management provisions
4. Public Procurement and Asset Disposal Regulations, 2020 (Kenya)
5. World Bank Procurement Regulations (variation thresholds)
6. Kenya Meteorological Department -- historical rainfall data
7. Land Act, 2012 (Kenya) -- compulsory acquisition provisions
8. National Land Commission Act, 2012 (Kenya)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft with Kenya variation thresholds (ILLUSTRATIVE), common claim types (land acquisition, black cotton soil, utility diversions), 28-day notice emphasis, 2 worked examples (rock excavation, land acquisition delay). |
