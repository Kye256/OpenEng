---
name: "[skill-directory-name]"
description: "Use when [specific engineering task or trigger condition]. [Prerequisites: Requires X from Skill #N (Name) | No prerequisites]. Outputs feed into Skill #N (Name) [and Skill #N (Name)]."
---

# [Skill Name]

> **Skill ID:** [number from roadmap]
> **Domain:** [e.g., Traffic Engineering | Geometric Design | Pavement Design | Structures | Professional Practice]
> **Version:** 0.1
> **Status:** Draft | Review | Published
> **Last Updated:** YYYY-MM-DD
> **Reviewed By:** [Engineer name/initials — blank until reviewed]
> **Country Modules:** [list available modules, e.g., Uganda, UK]

## Purpose

<!-- One paragraph: What does this skill enable the agent to do? What engineering task does it perform? Write this at the universal level — what is the engineering problem, independent of which country's standards apply. -->

## When to Use This Skill

- **Use when:** [specific trigger conditions]
- **Do not use when:** [conditions where a different skill or approach is needed]
- **Prerequisite skills:** [skills that should have been applied first, by ID and name]

---

## 1. Knowledge (Universal)

<!-- Engineering principles, concepts, and theory that apply regardless of which country's standards are used. This section should make sense to an engineer in any country. -->

### 1.1 Key Concepts

<!-- Define the essential engineering concepts. These are universal — the physics, the engineering principles, the fundamental design considerations that don't change between standards. -->

### 1.2 Universal Formulas

<!-- Formulas that are the same across all standards (physics-based, not standard-specific). State each with variables, units, valid ranges, and derivation/source. Standard-specific formulas and table lookups go in the country modules. -->

### 1.3 Figures & Diagrams

<!-- Describe any critical figures the agent needs to interpret or explain. Since the agent can't see images, describe the relationship the figure encodes. -->

---

## 2. Reasoning (Universal)

<!-- Decision logic and professional judgment that applies across all standards. -->

### 2.1 Decision Logic

<!-- The high-level decision process. Country-specific branches should say "→ See [Country] module, Section X" rather than embedding all country detail here. -->

```
Step 1: Determine country/jurisdiction
  → Load the appropriate country module
  → If no module exists for this country, flag and use closest available

Step 2: [Universal decision step]
  ├── [Branch] → [Outcome]
  └── [Branch] → See country module, Section X

[Continue with universal steps...]
```

### 2.2 Professional Judgment (Universal)

<!-- Experience-based guidance that transcends any single standard. The things any senior road engineer worldwide would agree on. -->

### 2.3 Common Errors

<!-- Mistakes that apply regardless of standard. Country-specific pitfalls go in the country modules. -->

---

## 3. Defaults (Universal)

<!-- Default assumptions that apply when no country module is loaded, or as fallback values. Country modules override these with country-specific defaults. -->

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| | | | ⚠️ ASSUMED: [text] | |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Choose the value that produces a safer design.
4. **Flag for investigation:** Every assumed value includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

<!-- Validation checks that apply regardless of standard. Country modules add standard-specific checks. -->

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| | | | | |

### 4.2 Consistency Checks

<!-- Cross-checks between related parameters that apply universally. -->

### 4.3 Standards Compliance

<!-- Framework for standards compliance checking. The actual standard-specific checks are in country modules. -->

The agent shall run all validation checks from the loaded country module's Section M.4 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

<!-- Triggers that apply regardless of country. Country modules add their own. -->

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific standards | 🔺 SENIOR REVIEW — No country module for [jurisdiction]. Using [closest available]. Verify all standard-specific parameters. |
| | | |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | — | Yes | User | Determines which country module to load |
| | | | | | |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| | | | | |

### 6.3 Data Files

<!-- Reference the country module table files. -->

| File | Description | Format |
|------|-------------|--------|
| `modules/[country].md` | Country-specific standards and tables | Markdown |
| `tables/[country]_[name].json` | Country-specific design tables | JSON |

---

## 7. Procedure

<!-- The step-by-step procedure. References both universal sections and country module sections. -->

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with the closest available module.

### Step 2: [Name]
<!-- Reference universal knowledge + country module as needed -->

### Step N: Produce Output
Merge universal and country-specific results. Format per Section 8.

---

## 8. Output Format

### Output Template

```
============================================================
[SKILL NAME] — [Project/Road Name]
Country/Jurisdiction: [country]
Standard: [Selected standard and edition — from country module]
Date: [YYYY-MM-DD]
============================================================

INPUTS
------
[List all inputs used, with source noted]

[MAIN OUTPUT SECTION — skill-specific]
------
[Results, organized for engineering review]

ASSUMPTIONS & DEFAULTS
---------------------
[Universal defaults with ⚠️ flags]
[Country-specific defaults with ⚠️ flags]

VALIDATION
----------
[Universal checks — ✅ PASS or ❌ FAIL]
[Country-specific checks — ✅ PASS or ❌ FAIL]

ESCALATION FLAGS
---------------
[Any 🔺 SENIOR REVIEW items, or "None"]

REFERENCES
----------
[Standard clauses cited — from country module]

============================================================
PRELIMINARY DESIGN — FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

<!-- At least one worked example per available country module. Each validated against a published source where possible. -->

### Example 1: [Title] — [Country]

**Source:** [Textbook/manual reference]

**Given:** [Input values]

**Solution:** [Step-by-step]

**Result:** [Output]

**Verification:** [Comparison with published answer]

---

## 10. Limitations & Future Work

- **Not covered:** [gaps]
- **Simplifications:** [shortcuts vs full practice]
- **Country modules available:** [list]
- **Country modules needed:** [list of countries where this skill would be useful but no module exists yet]

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | YYYY-MM-DD | | Initial draft |
