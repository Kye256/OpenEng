---
name: "procurement-methods"
description: "Use when selecting the appropriate procurement method for a road project. First determines funding source (GoU budget vs World Bank vs AfDB), then selects method based on estimated contract value and project characteristics. Uganda module covers PPDA Act thresholds and World Bank procurement rules. Compose with Skill #42/#43 for contract form selection and Skill #48 for tender document preparation."
---

# Procurement Methods

> **Skill ID:** 47
> **Domain:** Professional Practice
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Guide the selection of the correct procurement method for a road construction or rehabilitation project. The first decision is always the funding source -- government budget, multilateral development bank (World Bank, AfDB), or mixed -- because the funding source determines which procurement framework applies. Once the framework is identified, the method is selected based on estimated contract value against published thresholds, project characteristics (urgency, specialisation, market conditions), and any prequalification requirements.

## When to Use This Skill

- **Use when:** A new road project needs a procurement method selected, or when reviewing whether the correct method was applied to an existing procurement.
- **Do not use when:** Procuring consultancy services (different thresholds and methods apply under PPDA Consultancy Services Regulations). Not for disposal of public assets.
- **Prerequisite skills:** None -- this is a starting-point skill for the procurement lifecycle. Downstream: Skill #48 (Tender Document Preparation), Skill #42/#43 (contract form selection).

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Procurement Methods for Works:**

1. **Open Competitive Bidding** -- The preferred and default method. Open to all eligible bidders through public advertisement. Two variants:
   - **Open International Bidding (OIB/ICB):** Advertised internationally; open to foreign and domestic bidders. Required when the contract value is above a country-specific or donor-specific threshold, or when the domestic market lacks sufficient competition.
   - **Open Domestic Bidding (ODB/NCB):** Advertised nationally; open to domestic bidders (and resident foreign bidders). Used when the domestic market can provide adequate competition and the contract value is below the international bidding threshold.

2. **Restricted Bidding** -- Bidding from a shortlist of pre-identified or prequalified firms. Used when: (a) works are highly specialised, (b) limited number of providers exist, or (c) prequalification has reduced the field. Requires justification for restricting competition.

3. **Request for Quotations (Quotation Method)** -- Simplified procedure for small-value works. Minimum 3 quotations obtained from a shortlist. No public bid opening required. Used below the open bidding threshold.

4. **Micro Procurement** -- Most simplified procedure for very small works. No formal bidding document, no evaluation committee, no public opening. Used for unforeseen requirements below a very low threshold.

5. **Direct Procurement (Single Source)** -- Contract awarded to a specific provider without competition. Permitted only in defined circumstances: (a) emergency situations (urgent, unforeseeable, not caused by dilatory conduct), (b) sole source provider (patent, monopoly), (c) compatibility/continuity with existing works. Requires comprehensive written justification and approval.

**Method Selection Criteria:**
- **Estimated contract value** -- Primary determinant; each framework publishes value thresholds for each method.
- **Funding source** -- Determines which framework's thresholds and procedures apply.
- **Market conditions** -- Sufficient domestic competition? Specialised works?
- **Urgency** -- Emergency provisions allow deviation from standard methods but require justification.
- **Prequalification** -- May be used with open or restricted bidding for complex or large contracts.

**Anti-Splitting Rule:** Splitting contracts to reduce estimated value below a threshold (and thus use a less competitive method) is prohibited under virtually all procurement frameworks. This is considered a procurement offence.

### 1.2 Universal Principles

No engineering formulas apply. The key relationships are:

**Value-Method Mapping:**
```
Estimated value --> Compare against framework thresholds --> Select method
Higher value --> More competitive method required (open > restricted > quotation > micro)
```

**Funding Source Override:**
```
If donor-funded --> Donor procurement rules apply (may override national thresholds)
If mixed funding --> Most restrictive set of rules applies
If GoU-funded --> National procurement law applies exclusively
```

### 1.3 Figures & Diagrams

No figures required. The decision tree in Section 2.1 encodes the critical decision flow. Threshold tables are in country module JSON files.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine funding source
  |-- Government of Uganda (GoU) budget --> Step 2a (PPDA framework)
  |-- World Bank / IDA --> Step 2b (WB Procurement Regulations)
  |-- African Development Bank (AfDB) --> Step 2c (AfDB Procurement Policy)
  +-- Mixed funding --> Step 2d (apply most restrictive rules)

Step 2a: PPDA method selection (GoU funded)
  --> See Uganda module, Section M.2.1 (ppda_thresholds.json)
  --> Determine method by estimated value against PPDA thresholds
  --> Identify approval level (Contracts Committee vs Accounting Officer)
  --> Proceed to Step 3

Step 2b: World Bank method selection (WB funded)
  --> See Uganda module, Section M.2.2 (wb_procurement_thresholds.json)
  --> Determine method by estimated value against WB thresholds
  --> Determine prior review requirements
  --> Proceed to Step 3

Step 2c: AfDB method selection
  --> Similar framework to World Bank with different thresholds
  --> AfDB Procurement Policy Framework (2015, revised 2023)
  --> Key differences from WB: AfDB uses "International Open Tender" terminology
  --> Prior review thresholds may differ from WB
  --> Proceed to Step 3

Step 2d: Mixed funding
  --> Identify all applicable frameworks
  --> Apply the MOST RESTRICTIVE requirement at each decision point
  --> Document which framework drives each decision
  --> Proceed to Step 3

Step 3: Select contract form
  --> Traditional construction (Employer's design) --> Skill #42 (FIDIC Red Book)
  --> Design-build (Contractor's design) --> Skill #43 (FIDIC Yellow Book)

Step 4: Check for special circumstances
  |-- Emergency? --> Consider direct procurement (requires justification)
  |-- Sole source? --> Consider direct procurement (requires justification)
  |-- Complex/specialised works? --> Consider prequalification
  |-- Insufficient domestic competition? --> Consider international bidding
  +-- None --> Proceed with selected method
```

### 2.2 Professional Judgment (Universal)

**The funding source question must come first.** Engineers sometimes jump straight to contract value and select a method based on national thresholds, without checking whether donor rules override those thresholds. For donor-funded projects, national procurement law may still apply for some aspects (e.g., registration requirements, tax treatment) but the procurement METHOD is determined by the donor's rules.

**"Open bidding is the preferred method" is a universal principle.** Every procurement framework starts from the position that open competitive bidding produces the best value for money. Less competitive methods require justification. The agent should always consider whether the conditions for a less competitive method are genuinely met.

**Emergency procurement is not a shortcut.** The definition of "emergency" is narrow: urgent, unforeseeable, and not caused by dilatory conduct (the procuring entity's own delays). Planning failure does not constitute an emergency. Even in emergencies, maximum feasible competition should be sought.

### 2.3 Common Errors

1. **Applying national (PPDA) thresholds to donor-funded projects.** World Bank and AfDB have their own thresholds. Using PPDA thresholds for a WB-funded project is a procurement error that may result in misprocurement.
2. **Splitting contracts to avoid thresholds.** Dividing a UGX 600 million contract into three UGX 200 million contracts to use quotation method instead of open bidding is illegal under PPDA Act and donor rules.
3. **Using restricted bidding without justification.** Restricted bidding is not a "simpler" version of open bidding -- it requires specific grounds (limited providers, prequalification). Using it merely for convenience is a procurement violation.
4. **Ignoring prior review requirements.** For donor-funded projects above certain thresholds, the donor must issue a no-objection before proceeding. Failing to obtain prior review can result in misprocurement and refusal to finance.
5. **Confusing prequalification with restricted bidding.** Prequalification is a screening step within open bidding (open to all applicants). Restricted bidding selects from a pre-identified shortlist. They are different processes.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Funding source | GoU budget | Not specified | ASSUMED: GoU funding. If donor-funded, different thresholds apply. Verify funding source. | Conservative -- national law is baseline |
| Contract type | Works | Road project context | ASSUMED: Works procurement. If services or supplies, different thresholds apply. | Road project implies works |
| Procurement method | Open Domestic Bidding | Value unknown or within range | ASSUMED: Open Domestic Bidding (most common for road works). Verify against thresholds. | Open bidding is preferred method |

### Default Behaviour Rules

1. **Country module thresholds take precedence** over universal defaults.
2. **Always flag the funding source** explicitly in output. Never silently assume GoU funding.
3. **When in doubt, use the more competitive method.** This is always defensible; using a less competitive method without grounds is not.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Estimated contract value | > 0 | No limit | Currency | If zero or negative, flag for investigation |
| Number of quotations (quotation method) | 3 | No limit | Count | Minimum 3 quotations required under all frameworks |

### 4.2 Consistency Checks

- **Method vs value:** Verify that the selected method is consistent with the contract value against the applicable thresholds.
- **Funding source vs framework:** Verify that the correct framework (PPDA, WB, AfDB) is applied for the funding source.
- **Anti-splitting check:** If multiple related contracts exist, check whether the aggregate value would require a more competitive method.
- **International vs domestic:** If above the international threshold, verify that international bidding is being used.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific thresholds | SENIOR REVIEW -- No country module for [jurisdiction]. Cannot determine procurement thresholds. |
| Funding source unclear | Cannot determine which framework applies | SENIOR REVIEW -- Funding source not specified. PPDA and donor thresholds differ significantly. Clarify before proceeding. |
| Emergency procurement requested | Requires strict justification | SENIOR REVIEW -- Emergency procurement requested. Verify: (a) genuinely urgent, (b) unforeseeable, (c) not caused by procuring entity's own delays. |
| Estimated value near threshold boundary | Method selection is threshold-sensitive | NOTE -- Estimated value UGX [X] is within 10% of threshold boundary. Small changes in estimate could change the required method. |
| Possible contract splitting | Aggregate value suggests splitting | SENIOR REVIEW -- Multiple related contracts may constitute contract splitting. Aggregate value of UGX [X] would require [method]. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Funding source | text | -- | Yes | User | GoU, World Bank, AfDB, or Mixed |
| Estimated contract value | number | Currency | Yes | User / Skill #52 | Determines method by threshold comparison |
| Contract type | text | -- | Recommended | User | Works, supplies, or services (affects thresholds) |
| Project characteristics | text | -- | Optional | User | Urgency, specialisation, market conditions |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| procurement_method | text | -- | Skill #48 | Selected method determines SBD selection |
| contract_form | text | -- | Skill #42/#43 | Red Book or Yellow Book recommendation |
| approval_level | text | -- | User | Contracts Committee, Accounting Officer, etc. |
| prior_review | boolean | -- | User | Whether donor prior review is required |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific PPDA and World Bank procurement context | Markdown |
| `tables/ppda_thresholds.json` | PPDA procurement method thresholds for works | JSON |
| `tables/wb_procurement_thresholds.json` | World Bank procurement thresholds for Uganda road projects | JSON |

---

## 7. Procedure

### Step 1: Confirm Funding Source
Identify the funding source from user input or project documentation. This is the FIRST and most critical step. If mixed funding, identify all sources. If funding source is unclear, flag for clarification (do not proceed with assumptions).

### Step 2: Load Country Module
Identify the jurisdiction. Load the Uganda module for UNRA/MoWT projects. Load the applicable threshold tables (PPDA for GoU, World Bank for WB-funded).

### Step 3: Determine Procurement Method
Compare the estimated contract value against the applicable thresholds from the JSON tables. Select the method that corresponds to the value range. Check for special circumstances (emergency, sole source, prequalification).

### Step 4: Check Special Circumstances
Review whether any special circumstances apply: emergency, limited providers, compatibility/continuity. If yes, document the justification and verify that the conditions are genuinely met.

### Step 5: Select Contract Form
Based on the procurement method and project type, recommend the contract form: Skill #42 (FIDIC Red Book) for traditional construction, Skill #43 (FIDIC Yellow Book) for design-build.

### Step 6: Identify Approval Requirements
Determine the approval level: Contracts Committee, Accounting Officer, or donor no-objection. For donor-funded projects, identify whether prior review is required.

### Step 7: Run Validation
Apply all checks from Section 4 (value-method consistency, anti-splitting, funding source-framework consistency).

### Step 8: Produce Output
Format per Section 8. Include funding source determination, method selection rationale, threshold references, approval requirements, and any escalation flags.

---

## 8. Output Format

```
============================================================
PROCUREMENT METHOD SELECTION -- [Project Name]
Country/Jurisdiction: [country]
Framework: [PPDA Act / World Bank / AfDB / Mixed]
Date: [YYYY-MM-DD]
============================================================

FUNDING SOURCE
--------------
Source: [GoU budget / World Bank IDA / AfDB / Mixed]
Applicable framework: [PPDA Act 2003 + Regulations 2014 / WB Procurement Regulations 2016]

ESTIMATED CONTRACT VALUE
------------------------
Value: [amount and currency]
Equivalent: [USD equivalent if applicable]

PROCUREMENT METHOD SELECTED
---------------------------
Method: [Open Domestic Bidding / Open International Bidding / Restricted Bidding / Quotation Method / Micro Procurement / Direct Procurement]
Threshold reference: [applicable threshold range from JSON table]
Justification: [if non-standard method, state grounds]

CONTRACT FORM RECOMMENDATION
-----------------------------
Form: [FIDIC Red Book (Skill #42) / FIDIC Yellow Book (Skill #43)]
Reason: [Employer's design / Contractor's design]

APPROVAL REQUIREMENTS
---------------------
Approval level: [Contracts Committee / Accounting Officer]
Prior review: [Required / Not required] (for donor-funded)
No-objection: [Required for: award, variations above threshold, etc.]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[Framework references, threshold table sources]

============================================================
PROCUREMENT GUIDANCE -- FOR PROFESSIONAL REVIEW
This output provides method selection guidance based on
published thresholds. Thresholds are illustrative and subject
to periodic updates. Verify current thresholds before use.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Consultancy services procurement (separate PPDA regulations and thresholds). Disposal of public assets. Detailed procedural steps within each method (bidding periods, advertisement requirements). Framework contracts. e-Procurement systems.
- **Simplifications:** Thresholds are presented as illustrative -- they are updated periodically by the PPDA Authority. World Bank thresholds are project-specific (set in the Procurement Plan agreed with the Bank). AfDB coverage is brief -- detailed AfDB module needed.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya (PPRA), Tanzania (PPA 2011), Ethiopia (FPPA)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with funding-source-first decision tree, PPDA/WB/AfDB frameworks, anti-splitting rule, 3 method categories. |
