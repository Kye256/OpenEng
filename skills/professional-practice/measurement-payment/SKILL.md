---
name: "measurement-payment"
description: "Use when processing interim payment applications, certifying measured work, managing retention, or handling advance payment under FIDIC contracts. Covers Sub-Clause 14.x payment certification procedures. Requires Skill #42 (Red Book) or #43 (Yellow Book) for contract context. Compose with Skill #51 (BoQ Preparation) for measurement rules and item descriptions."
---

# Measurement & Payment

> **Skill ID:** 44
> **Domain:** Professional Practice
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Guide the Engineer through the complete payment cycle under FIDIC contracts -- from receiving the Contractor's monthly Statement through measurement verification, IPC issuance, retention management, advance payment repayment, and final payment. This skill provides detailed procedural guidance for the Sub-Clause 14.x payment provisions, applicable to both Red Book (Skill #42) and Yellow Book (Skill #43) contracts.

## When to Use This Skill

- **Use when:** Processing interim or final payment applications, verifying measured quantities, managing retention, calculating advance payment deductions, or handling payment disputes under FIDIC contracts.
- **Do not use when:** Preparing the BoQ (use Skill #51). Handling claims for additional payment (use Skill #45 Variations & Claims). Contract form selection (use Skill #42/#43).
- **Prerequisite skills:** Skill #42 (FIDIC Red Book) or Skill #43 (FIDIC Yellow Book) for contract context. Skill #51 (BoQ Preparation) for measurement rules.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Methods of Payment:**

| Method | Contract Form | Basis | Quantity Risk |
|--------|--------------|-------|--------------|
| Re-measurement | Red Book (typical) | Actual measured quantities x contract rates | Employer |
| Lump sum | Yellow Book (typical) | Fixed price, milestone payments | Contractor |
| Cost reimbursable | Rare in FIDIC | Actual cost + fee | Employer |

**Interim Payment Certificate (IPC) Cycle (Sub-Clause 14.3-14.7):**

The monthly payment cycle under FIDIC 1999 follows a strict timeline:

1. **Contractor submits Statement** (Sub-Clause 14.3): Monthly statement with supporting documents showing the estimated contract value of work done, amounts for variations, claims, and any other amounts the Contractor considers due.

2. **Engineer verifies and issues IPC** (Sub-Clause 14.6): Within 28 days of receiving the Statement, the Engineer issues an IPC for the amount the Engineer determines to be correct. The Engineer certifies what is correct, not necessarily what the Contractor claims.

3. **Employer makes payment** (Sub-Clause 14.7): Within 56 days after the Engineer receives the Statement (i.e., 28 days after the IPC should have been issued).

4. **If payment is late** (Sub-Clause 14.8): Contractor entitled to financing charges (interest) at the rate specified in the Appendix to Tender (typically 3% above discount rate of the central bank).

5. **If payment is significantly delayed** (Sub-Clause 16.1): After 42 days without payment, the Contractor may give 21-day notice and then suspend work.

**Retention (Sub-Clause 14.3 / 14.9):**
- Retention percentage deducted from each IPC (typically 5%)
- Maximum retention: stated in Appendix to Tender (typically 5% of Contract Price)
- Once maximum reached, no further retention deductions
- Release: first half upon Taking-Over Certificate (Sub-Clause 14.9), second half upon expiry of Defects Notification Period (or Performance Certificate)

**Advance Payment (Sub-Clause 14.2):**
- Amount and terms stated in Appendix to Tender
- Typically 10-15% of Contract Price
- Contractor must provide advance payment guarantee (bank guarantee or bond)
- Repayment: deducted proportionally from each IPC, starting when certified work reaches a threshold (commonly 10% of Contract Price)
- Guarantee reduced as advance is repaid

**Final Payment (Sub-Clause 14.11-14.13):**
1. Contractor submits draft final statement to Engineer for review (14.11)
2. Contractor submits final statement with written discharge (14.12/14.11)
3. Engineer issues Final Payment Certificate (FPC) within 28 days (14.13)
4. Employer pays within 56 days of receiving the final statement
5. **Discharge:** The Contractor's written discharge releases the Employer from all further liability except: (a) matters referred to DAB/arbitration, (b) matters arising after discharge, (c) entitlements under Clause 11 (Defects)

**Red Book vs Yellow Book Payment Differences:**
- **Red Book:** Payment based on re-measurement. Engineer measures actual quantities on site and applies contract rates. Quantities in the BoQ are estimated; actual quantities may be more or less.
- **Yellow Book:** Payment based on lump sum milestones or percentage completion. No re-measurement. Contractor bears quantity risk. Monthly statements show percentage of each milestone completed.

### 1.2 Key Relationships (No Formulas)

**IPC Calculation (Re-measurement -- Red Book):**
```
Gross certified amount =
  + Value of measured work (quantities x rates)
  + Value of variations (agreed or determined rates)
  + Value of materials on site (Sub-Clause 14.5, if applicable)
  + Amounts for claims determined by Engineer
  - Retention (% of above, to maximum)
  - Advance payment deduction (pro-rata)
  - Previous IPC amounts
  - Deductions (delay damages, if applicable)
  = Net IPC amount for this period
```

**Advance Payment Repayment Schedule (Typical):**
```
Repayment starts when cumulative certified work reaches threshold
  (typically 10% of Contract Price)
Repayment amount per IPC = Advance payment % x (Gross IPC amount)
Until advance is fully repaid
```

### 1.3 Figures & Diagrams

**Payment Timeline (FIDIC 1999):**
```
Day 0: Contractor submits Statement
Day 28: Engineer issues IPC (deadline)
Day 56: Employer pays (deadline, from Statement receipt)
Day 57+: Financing charges accrue if late (14.8)
Day 98+: After 42 days late, Contractor may give 21-day suspension notice (16.1)
Day 119+: Contractor may suspend work
```

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine contract form
  |-- Red Book --> re-measurement basis (measured quantities)
  +-- Yellow Book --> lump sum basis (milestone/percentage)

Step 2: Process the Contractor's Statement
  |-- Red Book: verify measured quantities against site records
  |-- Yellow Book: verify milestone completion percentages
  +-- Both: check variations, claims, materials on site, plant

Step 3: Calculate deductions
  |-- Retention (% up to maximum)
  |-- Advance payment repayment (if applicable)
  |-- Previous IPC amounts
  |-- Delay damages (if applicable and correct)
  +-- Any other contractual deductions

Step 4: Issue IPC within 28 days
  --> Certify the amount the Engineer considers correct
  --> If amounts disputed, certify undisputed amount
  --> Provide reasons for any adjustments

Step 5: Monitor payment
  --> Employer pays within 56 days of Statement receipt
  --> If late, advise on financing charges (14.8)
  --> If significantly late, advise on suspension rights (16.1)
```

**IPC Processing Decision Tree:**
```
Receive Statement (14.3)
  --> Are supporting documents complete?
    |-- NO --> request missing documents (do NOT delay IPC for minor items)
    +-- YES --> verify quantities/milestones

  --> Red Book: verify measured quantities
    |-- Cross-check against site measurement records
    |-- Cross-check against test certificates (layer works)
    |-- Adjust for defective work (omit or reduce)
    |-- Confirm variation work quantities and rates
    +-- Check materials on site (14.5) if claimed

  --> Yellow Book: verify milestone completion
    |-- Assess percentage complete against milestones
    |-- Verify completion of contractual deliverables
    +-- Adjust for incomplete milestones (no partial payment unless Particular Conditions allow)

  --> Calculate IPC amount
    |-- Less: retention (to maximum)
    |-- Less: advance payment deduction
    |-- Less: previous IPCs
    |-- Less: delay damages (if applicable)
    +-- = Net IPC amount

  --> Issue IPC within 28 days (14.6)
```

### 2.2 Professional Judgment (Universal)

**Certify what is correct, not what is claimed.** The Engineer has a duty to certify the amount considered due, even if it differs from the Contractor's claim. Under-certification creates disputes; over-certification creates Employer recovery problems.

**Do not withhold certification as leverage.** Some Engineers withhold IPCs to pressure Contractors on unrelated issues. This violates the Engineer's duties and gives the Contractor grounds for suspension (Sub-Clause 16.1).

**Measurement disputes should not delay IPCs.** If a quantity is disputed, certify the undisputed amount and note the dispute. Issue the IPC on time.

**Retention release is not discretionary.** The first half of retention is released upon the Taking-Over Certificate. The Engineer cannot withhold retention release unless Particular Conditions specifically provide for this.

### 2.3 Common Errors

1. **Failing to issue IPC within 28 days.** This is a mandatory deadline. Failure gives the Contractor grounds for suspension under Sub-Clause 16.1.
2. **Certifying the Contractor's claimed amount without verification.** The Engineer must verify quantities, rates, and valuations independently.
3. **Confusing "56 days from Statement" with "56 days from IPC."** The Employer's payment deadline runs from the Statement receipt date, not the IPC date.
4. **Not tracking advance payment repayment.** Failure to deduct advance payment repayment from each IPC reduces the advance payment guarantee but leaves the advance outstanding.
5. **Withholding final payment for minor outstanding issues.** The Final Payment Certificate should include all amounts due; minor issues should be valued and deducted if necessary, not used to delay the entire FPC.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Retention | 5% to max 5% of Contract Price | Not stated | ASSUMED: 5% retention (typical FIDIC) | Common practice |
| Advance payment | 10% | Not stated | ASSUMED: 10% advance payment | Common for road contracts |
| Advance repayment start | 10% of Contract Price | Not stated | ASSUMED: Repayment starts at 10% completion | Common threshold |
| Interest rate (late payment) | 3% above central bank rate | Not stated | ASSUMED: Late payment interest per Sub-Clause 14.8 | Typical provision |
| IPC frequency | Monthly | Not stated | ASSUMED: Monthly Statements | Sub-Clause 14.3 default |

### Default Behaviour Rules

1. **All payment terms are contract-specific.** Always verify against the Appendix to Tender.
2. **Particular Conditions may modify any time limit** -- always check.
3. **Flag all assumed values** -- payment terms vary significantly between contracts.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| IPC issuance deadline | -- | 28 | days | Must issue within 28 days of Statement |
| Employer payment deadline | -- | 56 | days | Must pay within 56 days of Statement |
| Retention percentage | 0 | 10 | % | Standard 5%. If outside range, verify Appendix |
| Advance payment | 0 | 20 | % | Verify Appendix to Tender |
| Net IPC amount | 0 | -- | currency | If negative, investigate -- may indicate over-certification previously |

### 4.2 Consistency Checks

- **Cumulative certification vs Contract Price:** Flag if cumulative certified exceeds Contract Price (may indicate variations or errors).
- **Retention vs maximum:** Verify retention does not exceed the stated maximum.
- **Advance repayment vs advance received:** Verify cumulative deductions do not exceed advance received.
- **IPC timeline:** Verify IPC issued before the 28-day deadline.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| IPC not issued within 28 days | Deadline breach | SENIOR REVIEW -- IPC deadline exceeded. Issue immediately. Contractor may suspend (16.1). |
| Employer payment > 56 days late | Contractor entitlements triggered | NOTE -- Payment [X] days late. Financing charges accrue (14.8). Contractor may suspend after 42 days late + 21-day notice. |
| Significant discrepancy between claimed and certified amounts | Potential dispute | NOTE -- Certified UGX [X] vs claimed UGX [Y] (difference [Z]%). Document reasons. |
| Cumulative variations > 10% of Contract Price | Contract management concern | SENIOR REVIEW -- Cumulative variations at [X]% of Contract Price. Review procurement implications. |

### 5.2 Escalation Behaviour

Same as core Skill #42.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines country module |
| Contract form | text | -- | Yes | Skill #42 or #43 | Red Book (re-measurement) or Yellow Book (lump sum) |
| Contractor's Statement | object | -- | Yes | User | Monthly payment application |
| BoQ/Schedule of prices | object | -- | Yes | Skill #51 | Measurement rules, item descriptions, rates |
| Site measurement records | object | -- | Yes | User | Actual measured quantities |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| IPC_amount | number | currency | Employer (payment) | Certified amount for payment |
| retention_balance | number | currency | Contract records | Running retention balance |
| advance_balance | number | currency | Contract records | Outstanding advance payment |
| payment_status | text | -- | Skill #46 | If disputed, triggers dispute process |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific payment practice | Markdown |

---

## 7. Procedure

### Step 1: Receive Statement
Contractor submits monthly Statement with supporting documents (Sub-Clause 14.3). Note the date of receipt -- the 28-day IPC deadline and 56-day payment deadline run from this date.

### Step 2: Verify Quantities/Milestones
- Red Book: measure/verify quantities against site records and test certificates.
- Yellow Book: assess milestone completion percentages against the schedule of payments.

### Step 3: Value Variations
Include the value of approved variations. Use agreed rates, contract rates, or Engineer-determined rates per Sub-Clause 12.3.

### Step 4: Include Claims
Include amounts determined by the Engineer for claims under Sub-Clause 3.5.

### Step 5: Calculate Deductions
- Retention (to maximum)
- Advance payment repayment
- Previous IPC amounts
- Delay damages (if applicable)
- Any other contractual deductions

### Step 6: Issue IPC
Issue the IPC within 28 days (Sub-Clause 14.6). Certify the amount the Engineer considers correct. Provide a summary showing the build-up.

### Step 7: Monitor Payment
Track Employer's payment against the 56-day deadline. If late, document and advise both parties of consequences.

---

## 8. Output Format

```
============================================================
INTERIM PAYMENT CERTIFICATE -- [Project Name]
IPC No: [number]
Period: [month/year]
Statement Received: [date]
IPC Issue Date: [date]
============================================================

CERTIFIED AMOUNTS
-----------------
Measured/milestone work:    [amount]
Variations:                 [amount]
Claims determined:          [amount]
Materials on site:          [amount]
Subtotal:                   [amount]

DEDUCTIONS
----------
Retention ([X]%):           [amount]
Advance payment deduction:  [amount]
Delay damages:              [amount]
Previous IPCs:              [amount]
Other deductions:           [amount]

NET IPC AMOUNT:             [amount]

PAYMENT DUE DATE: [56 days from Statement receipt]

RETENTION BALANCE: [cumulative retention held]
ADVANCE BALANCE:   [outstanding advance payment]

NOTES
-----
[Adjustments, disputed items, reasons for differences]

============================================================
ASSUMPTIONS & DEFAULTS: [any assumed values]
ESCALATION FLAGS: [any flags]
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed BoQ preparation (see Skill #51). Claims assessment (see Skill #45). Final account preparation (specialist). Currency conversion for multi-currency contracts.
- **Simplifications:** Advance payment repayment presented as typical linear schedule; actual schedules vary by contract.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with full IPC cycle, retention management, advance payment, final payment procedures. Red Book/Yellow Book payment differences documented. |
