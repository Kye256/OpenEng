# Contributing to OpenEng

Thank you for your interest in contributing to OpenEng. This project depends on engineers sharing their knowledge, standards expertise, and professional judgment.

## What We Need

### Skills (Highest Priority)
SKILL.md files that encode engineering standards and practice. If you know a design manual well enough to teach a junior engineer from it, you can write a skill.

### Reviews
Engineer review of existing skills — especially verifying tables against source manuals, checking decision logic, and adding professional judgment.

### Design Tables
Standards data as structured JSON. If you have access to design manuals and can extract tables accurately, this is high-value work.

### Python Tools
Calculation modules for skills where AI arithmetic isn't reliable enough. See the skill files for specs.

### Worked Examples
Validated against published textbook solutions. These are how we prove the skills work correctly.

### Bug Reports
If you use a skill and get a wrong answer, report it. Include the inputs, the output you got, and the output you expected.

## How to Contribute a Skill

1. **Pick a skill** from the [roadmap](SKILLS_ROADMAP.md) or propose a new one.
2. **Copy the template** from `templates/SKILL_TEMPLATE.md`.
3. **Add YAML frontmatter** with `name` and `description` fields. See [SKILL_YAML_SCHEMA.md](SKILL_YAML_SCHEMA.md) for the required format and examples.
4. **Draft the skill** following the template structure. All 10 sections should be addressed, even if some are thin in v1.
5. **Validate** at least one worked example against a published source.
6. **Submit a pull request** with a DCO sign-off (see below).
7. **Review process:** An experienced engineer reviews the skill for accuracy, completeness, and judgment quality.

## Skill Quality Standards

A skill is ready for review when:
- YAML frontmatter is present with valid `name` (matching directory) and `description` (see [schema](SKILL_YAML_SCHEMA.md))
- All 10 template sections are populated (even if marked "to be expanded")
- At least one worked example is included with a published source reference
- Design tables reference their source (standard name, edition, table number)
- Defaults are conservative and clearly flagged
- Escalation triggers reflect genuine judgment boundaries
- The skill has been tested by asking an AI to use it on at least one realistic problem

## Developer Certificate of Origin (DCO)

All contributions must include a DCO sign-off. This certifies that you have the right to submit the work and that you agree to the project's license terms.

Add this line to your commit messages:

```
Signed-off-by: Your Name <your.email@example.com>
```

Or use `git commit -s` to add it automatically.

The full DCO text is at [developercertificate.org](https://developercertificate.org/).

## Code of Conduct

This is a professional engineering community. We expect:
- **Technical accuracy** over speed. If you're not sure, say so.
- **Constructive review.** Point out errors clearly but respectfully.
- **Attribution.** Credit sources. Don't claim others' work.
- **Honesty about limitations.** Every skill should be clear about what it doesn't cover.

## Questions?

Open an issue on GitHub or reach out to the maintainers.
