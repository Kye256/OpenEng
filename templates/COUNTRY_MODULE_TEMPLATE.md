# [Skill Name] — [Country] Module

> **Parent Skill:** [Skill ID and name]
> **Country/Jurisdiction:** [Country name]
> **Standards:** [Primary standard name and edition]
> **Version:** 0.1
> **Status:** Draft | Review | Published
> **Last Updated:** YYYY-MM-DD
> **Reviewed By:** [Engineer name/initials — must be a qualified engineer with experience in this jurisdiction]

<!--
  SECTION NUMBERING: Country module sections are prefixed with "M" (Module)
  to distinguish from core skill sections. The core skill references these
  as "See [Country] module, Section M.X"
-->

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| | | | Current / Superseded / Draft |

### M.1.2 Institutional Context

<!-- Which agencies use these standards? What is the institutional structure that determines which standard applies? This is critical — in most countries, different road agencies use different standards or different editions. -->

### M.1.3 Standard Philosophy

<!-- How does this country's standard work? Some key distinctions:
  - "Design manual" approach (AASHTO, ERA, MoWT): Provides design guidance, tables, recommended values. Engineer has discretion within ranges.
  - "Requirements" approach (DMRB): Mandatory requirements ("shall"), advisory clauses ("should"), formal departures process for non-compliance.
  - "Catalogue" approach: Prescriptive catalogues (select from menu based on inputs).
  Explain how the standard is structured so the agent can work with it correctly.
-->

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

<!-- Country-specific lookup tables. Embed small tables. Reference JSON files for large ones. -->

<!-- Format for embedded tables: -->
<!--
| Parameter | Value | Unit | Source |
|-----------|-------|------|--------|
| | | | Standard, Table X.X |
-->

<!-- Format for external table reference: -->
<!-- **Table: [Description]** → `tables/[country]_[name].json` -->

### M.2.2 Country-Specific Formulas

<!-- Formulas that are specific to this standard (as opposed to universal physics-based formulas in the core skill). -->

### M.2.3 Classification System

<!-- How this country classifies roads. Include the full classification hierarchy, the criteria for each class, and the mapping to design parameters. This is often the most country-specific part of road design. -->

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

<!-- Country-specific decision steps that the core skill's Section 2.1 branches to. Use the same step numbering as the core skill where possible, with country-specific sub-steps. -->

### M.3.2 Professional Judgment (Country-Specific)

<!-- Practice norms, institutional preferences, common approaches, and unwritten rules specific to this country. What would a senior engineer in this country tell a junior? -->

### M.3.3 Common Errors (Country-Specific)

<!-- Mistakes specific to working with this country's standards. -->

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| | | | ⚠️ ASSUMED: [text] | |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| | | | | | |

### M.5.2 Standards Compliance Checks

<!-- Specific checks against this country's standard. Format: -->
<!--
- **Check:** [what to verify]
- **Standard:** [reference]
- **Pass condition:** [criterion]
- **Fail action:** [what to do]
-->

### M.5.3 Departures / Relaxations Process

<!-- Does this standard have a formal process for departing from requirements? If so, describe it. This is particularly important for DMRB (formal Departures from Standards process) and may also apply to other standards. If the standard doesn't have a formal process, state that. -->

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| | | 🔺 SENIOR REVIEW — [description] |

---

## M.7 Worked Example — [Country]

### Example: [Title]

**Source:** [Reference]

**Given:** [Inputs]

**Solution:** [Step-by-step using this country's standards]

**Result:** [Output]

**Verification:** [Comparison with published answer]

---

## M.8 References

<!-- Full references for all standards and sources cited in this module. -->

1. [Standard name, edition, publisher, year]
2. ...

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | YYYY-MM-DD | | Initial draft |
