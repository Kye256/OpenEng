# Contributing a Country Module

## Who This Is For

You're an engineer who works with a national or regional road design standard that isn't yet covered in OpenEng. You want to add your country so that engineers in your jurisdiction can use these skills with your local standards.

You don't need to be a software developer. You need to know your country's road design standards well enough to fill in tables, decision logic, and professional judgment.

## What a Country Module Is

Each OpenEng skill has a **core SKILL.md** that covers universal engineering principles — the physics, the general decision framework, the output format. The country-specific content lives in a **module** file inside the skill's `modules/` directory.

A country module provides:
- **Standards and institutional context** — which standards apply, which agencies use them, how the standard is structured
- **Design tables** — classification tables, design speed tables, geometric parameter tables specific to your standard
- **Decision logic** — country-specific branches in the design process
- **Defaults** — what to assume when data is missing, calibrated to your country
- **Validation checks** — standard-specific compliance checks
- **Escalation triggers** — country-specific conditions requiring senior review
- **Worked examples** — at least one, validated against a published source

## Before You Start

1. **Read the core SKILL.md** for the skill you're adding a module to. Understand what the universal framework expects.
2. **Have your standard accessible.** You'll need to reference specific tables, sections, and clause numbers.
3. **Read an existing module** (Uganda or UK) to see the pattern and level of detail expected.
4. **Copy the template** from `templates/COUNTRY_MODULE_TEMPLATE.md`.

## Step-by-Step Process

### 1. Set Up the File

Create your module file at:
```
skills/[domain]/[skill-name]/modules/[country].md
```

For example, to add Kenya to the design standards selection skill:
```
skills/geometric-design/design-standards-selection/modules/kenya.md
```

### 2. Fill In Institutional Context (Section M.1)

This is the most important section for many skills. Answer:
- Which standards does your country use? List them with editions and years.
- Which agencies are responsible for which roads? (e.g., Kenya: KeNHA for national, KURA for urban, KeRRA for rural)
- Does the standard use a design-manual approach (guidance with ranges), a requirements approach (mandatory "shall" clauses), or a catalogue approach?
- Are there situations where international standards (AASHTO, ERA, DMRB) are used instead of or alongside local standards?

### 3. Fill In Design Tables (Section M.2)

Extract the key tables from your standard. For each table:
- State the parameter, values, and units
- Cite the exact source (Standard name, Table number, Page number)
- For tables with more than ~20 rows, create a JSON file in `tables/[country]_[name].json`

**Accuracy is critical.** Double-check every number against the source. A wrong value in a design table propagates into every design the agent produces.

### 4. Fill In Decision Logic (Section M.3)

Map out how your standard handles the decisions in this skill. For design standards selection, this means:
- How does your country classify roads?
- What determines the design speed?
- How is the design vehicle selected?

Use the same step numbering as the core skill where possible, with country-specific sub-steps.

### 5. Fill In Defaults (Section M.4)

When an engineer in your country doesn't have data, what's the reasonable conservative assumption? Calibrate to your context:
- Typical traffic growth rates for your country
- Typical AADT ranges by road function
- Default terrain assumptions
- Default design period by road class

Every default must include a flag text and rationale.

### 6. Fill In Validation (Section M.5)

What checks does your standard require? What are the valid ranges for design parameters?

**Important:** If your standard has a formal departures/relaxations process (like DMRB), document it clearly.

### 7. Add a Worked Example (Section M.7)

At least one realistic example using your country's standards. Ideally validated against a published textbook or design example from your standard.

### 8. Submit

- Ensure you've filled all M.1 through M.8 sections
- Create a pull request with a DCO sign-off
- In the PR description, state:
  - Your engineering qualifications and experience with this standard
  - Which edition of the standard you're working from
  - Any sections you're uncertain about (it's fine to have gaps — mark them clearly)

## Quality Checklist

Before submitting, verify:

- [ ] All table values checked against the source standard (at least twice)
- [ ] Every table cell includes a source reference
- [ ] Default values are conservative (err toward safer design)
- [ ] At least one worked example is included
- [ ] The module follows the template structure exactly (all M.x sections present)
- [ ] No content copied verbatim from copyrighted standards (paraphrase, provide table data, cite sources)
- [ ] The `Reviewed By` field is blank (the reviewer fills this in)

## What Happens After Submission

1. An experienced engineer reviews the module for accuracy and completeness
2. Reviewer may ask questions or request corrections
3. Once approved, the module is merged and listed in the core skill's header
4. You're credited in the changelog

## Questions?

Open an issue on GitHub. Tag it with `country-module` and the country name.
