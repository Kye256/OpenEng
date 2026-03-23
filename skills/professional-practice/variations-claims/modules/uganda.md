# Variations & Claims -- Uganda Module

> **Parent Skill:** Skill #45 Variations & Claims
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
| FIDIC Red Book 1999 | 1st Edition | Clause 13 (Variations), Clause 20 (Claims), Sub-Clause 8.4, 3.5 | Current |
| FIDIC Yellow Book 1999 | 1st Edition | Same clauses, with design-build modifications | Current |
| World Bank Procurement Regulations | 2016 (amended) | Variation/contract amendment thresholds | Current |
| PPDA Act | 2003 (as amended) | Contract amendment provisions | Current |

### M.1.2 Institutional Context

Variation and claims management on UNRA projects involves multiple stakeholders: the Engineer (consulting firm), UNRA Project Manager, UNRA Contracts Department, and for donor-funded projects, the funding agency (World Bank, AfDB). The approval chain and thresholds vary by project but follow a common structure.

---

## M.2 Country-Specific Knowledge

### M.2.1 UNRA Variation Approval Thresholds

**Typical UNRA Particular Conditions for variations:**
- **Engineer's authority:** Variations up to UGX 500 million or 5% of Contract Price (whichever is less) may be approved by the Engineer without UNRA approval.
- **UNRA approval required:** Variations between the Engineer's threshold and 15% of Contract Price require written UNRA approval.
- **Above 15% cumulative:** May require contract amendment and procurement authority (PPDA) approval.

**World Bank thresholds (additional overlay for donor-funded projects):**
- **Prior review contracts:** All variation orders above the threshold (commonly USD 2-3 million or 15% of contract price, whichever is less) require World Bank no-objection before instruction.
- **Post-review contracts:** Variation orders are reviewed during supervision missions.
- **Contract amendments:** Cumulative variations exceeding 15% of original contract price generally require World Bank prior approval regardless of individual variation size.

### M.2.2 Common Claims in Uganda Road Projects

| Claim Type | Typical Cause | Entitlement Clause | Frequency |
|------------|---------------|-------------------|-----------|
| Late site access | Land acquisition delays | Sub-Clause 2.1 | Very common |
| Unforeseeable ground conditions | Rock, high water table, swamp | Sub-Clause 4.12 | Common |
| Exceptional rainfall | Flooding, access road damage | Sub-Clause 8.4(c) | Common |
| Delayed drawings/instructions | Engineer slow to respond | Sub-Clause 1.9 | Occasional |
| Changes in legislation | Tax changes, environmental requirements | Sub-Clause 13.7 | Occasional |
| Employer's suspension | Budget constraints | Sub-Clause 8.9 | Occasional |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Variation authority check (Uganda):**
```
Variation value?
  |-- Below Engineer's threshold (< UGX 500M or 5% CP)
  |   --> Engineer instructs directly
  +-- Above Engineer's threshold
      |-- Seek UNRA approval
      |-- Is project World Bank funded?
      |   |-- YES: Above WB threshold?
      |   |   |-- YES --> seek World Bank no-objection BEFORE instruction
      |   |   +-- NO --> UNRA approval sufficient
      |   +-- NO --> UNRA approval sufficient
      +-- Cumulative > 15% CP?
          --> SENIOR REVIEW: PPDA/WB contract amendment may be required
```

### M.3.2 Professional Judgment (Country-Specific)

**Land acquisition claims are endemic.** UNRA's land acquisition process is often delayed, causing site access claims under Sub-Clause 2.1. The Engineer should: (a) document the promised vs actual access dates, (b) advise the Contractor of the 28-day notice requirement proactively, (c) assess the Contractor's entitlement to Cost plus profit under Sub-Clause 2.1.

**"Exceptionally adverse climatic conditions" requires evidence.** Uganda has two well-defined rainy seasons (March-May and September-November). Rainfall during these periods is normal, not exceptional. A claim under Sub-Clause 8.4(c) must demonstrate that actual rainfall significantly exceeded historical averages for the specific location and season. The Uganda Meteorological Authority provides historical rainfall data.

**Rock excavation variations are common.** Site investigation reports often underestimate rock quantities. When rock is encountered unexpectedly, it may be claimed as unforeseeable physical conditions (Sub-Clause 4.12) and/or varied as a new item (Sub-Clause 13.1). The appropriate route depends on whether the site investigation should have identified the rock.

### M.3.3 Common Errors (Country-Specific)

1. **Instructing variations above the Engineer's threshold without UNRA approval.** This creates contractual and procurement complications.
2. **Accepting rainfall claims without checking historical data.** Normal seasonal rainfall is not "exceptionally adverse."
3. **Not distinguishing Sub-Clause 4.12 from variation.** Unforeseeable physical conditions give entitlement to Cost only (no profit); a variation instruction would be valued at contract rates or new rates. The route matters financially.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Engineer's variation authority | UGX 500M or 5% CP | Not stated | ASSUMED: Typical UNRA threshold. Verify Particular Conditions. | Common UNRA practice |
| WB prior review threshold | USD 3M or 15% CP | Not stated | ASSUMED: Typical WB threshold. Verify financing agreement. | Common WB threshold |
| Rainfall data source | Uganda Met Authority | -- | Use Uganda Met Authority historical data for Sub-Clause 8.4(c) assessment | Authoritative source |

---

## M.5 Country-Specific Validation

### M.5.1 Standards Compliance Checks

- **Check:** Variation within Engineer's authority threshold
- **Pass condition:** Value below Particular Conditions threshold
- **Fail action:** Seek UNRA approval before instruction

- **Check:** World Bank no-objection obtained (if required)
- **Pass condition:** No-objection received before variation instruction
- **Fail action:** SENIOR REVIEW -- Variation may require World Bank no-objection

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Variation above Engineer's authority | Approval required | Seek UNRA approval. If WB funded, also seek WB no-objection. |
| Cumulative variations > 15% CP | Contract amendment may be needed | SENIOR REVIEW -- PPDA/WB contract amendment provisions may apply. |
| Land acquisition delay > 3 months | Significant Contractor entitlement | SENIOR REVIEW -- Extended land acquisition delay. Assess Contractor's entitlement under Sub-Clause 2.1 and 8.4(e). |
| Rainfall claim during normal rainy season | May not be "exceptional" | NOTE -- Verify against historical data before determining as "exceptionally adverse." |

---

## M.7 Worked Examples -- Uganda

### Example 1: Rock Excavation Variation

**Project:** UNRA trunk road upgrade, UGX 25 billion, GoU funded. FIDIC Red Book 1999.

**Scenario:** During earthworks, the Contractor encounters rock at Km 12-15 that was not shown in the site investigation report. The BoQ contains items for "common excavation" but no item for "rock excavation." The Contractor gives notice under Sub-Clause 20.1 (Day 5 after encountering rock) and also requests a variation for rock excavation.

**Solution:**

Step 1: Check notice (Sub-Clause 20.1)
- Notice given on Day 5. Compliant (within 28 days).

Step 2: Assess whether this is a variation or a claim (or both)
- Sub-Clause 4.12 (Unforeseeable Physical Conditions): Was the rock unforeseeable by an experienced contractor? Review the site investigation report. If it showed no rock in this area and the geological conditions did not obviously suggest rock, it is unforeseeable. Entitlement: Cost only (no profit).
- Sub-Clause 13.1 (Variation): The Engineer may also instruct rock excavation as a variation. Valuation: new rate per Sub-Clause 12.3 (no contract rate exists for rock excavation).

Step 3: Determine the appropriate route
- If Sub-Clause 4.12 applies: Contractor is entitled to Cost of the additional expense caused by the rock (difference between rock excavation cost and common excavation cost). No profit.
- If a variation is instructed: the new rate for rock excavation is agreed or determined, and includes the Contractor's overheads and profit. This is more favourable to the Contractor.
- In practice, the Engineer often instructs a variation for rock excavation (cleaner administratively) but should document whether Sub-Clause 4.12 also applies, as the entitlement basis affects the rate.

Step 4: Agree rate for rock excavation
- Contractor proposes UGX 45,000/m3 (vs common excavation rate of UGX 12,000/m3).
- Engineer assesses: rock excavation requires hydraulic breaker or blasting, slower progress, specialist equipment. Market rate for rock excavation in Uganda is UGX 35,000-50,000/m3.
- Agreed rate: UGX 42,000/m3. Variation order issued.

Step 5: Check authority
- Estimated total value: 15,000 m3 x UGX 42,000 = UGX 630 million.
- Above Engineer's threshold (UGX 500M). Seek UNRA approval before instruction.

### Example 2: Time Extension Claim -- Delayed Land Acquisition

**Project:** UNRA highway upgrade, UGX 60 billion, World Bank funded. FIDIC Red Book 1999.

**Scenario:** UNRA has not completed land acquisition for a 3 km section (Km 25-28). The Contractor was promised access by Month 3 but only received access at Month 7 (4-month delay). The Contractor gave 28-day notice at Month 3.5 (when it became clear access would be delayed). The Contractor claims a 4-month extension of time and Cost plus profit for idle resources.

**Solution:**

Step 1: Notice compliance
- Notice given at Month 3.5 (approximately Day 14 after Contractor became aware of the delay). Compliant.

Step 2: Entitlement clause
- Sub-Clause 2.1: Right of access to the site is the Employer's obligation. Failure to provide access entitles the Contractor to extension of time (Sub-Clause 8.4(e)) and Cost plus reasonable profit.

Step 3: Assess time extension
- Was the delayed section on the critical path? Review the programme.
- Could the Contractor have re-sequenced work to avoid delay? If other sections were available, the Contractor had a duty to mitigate.
- Determine the actual critical delay caused by the late access.
- Assessment: Contractor could work on other sections for 2 months, but the remaining 2 months were critical path delay.
- Determination: 2-month extension of time (not the full 4 months claimed).

Step 4: Assess cost
- Idle resources during the 2-month critical delay: personnel, equipment, site establishment.
- Contractor claims UGX 1.2 billion. Engineer assesses actual idle resources documented in site records.
- Determination: UGX 800 million (verified idle resource costs) plus 10% profit = UGX 880 million.

Step 5: For World Bank project
- Extension of time > 10% of Time for Completion: UNRA should inform World Bank.
- Cost determination above threshold: may require World Bank no-objection.

---

## M.8 References

1. FIDIC Red Book 1999, Clauses 3, 8, 12, 13, 20
2. FIDIC Yellow Book 1999 (design-build variation provisions)
3. World Bank Procurement Regulations (variation thresholds)
4. Uganda PPDA Act 2003 (contract amendment provisions)
5. Uganda Meteorological Authority -- historical rainfall data

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with UNRA variation thresholds, common Uganda claims types, 2 worked examples (rock excavation variation, land acquisition time extension claim). |
