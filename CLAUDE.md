# OpenEng — Repository Context

## What this is
OpenEng is an open-source library of 65 structured AI skills for civil engineering design. Apache 2.0 licensed. Skills encode engineering standards, design tables, decision logic, validation rules, and professional judgment as structured SKILL.md files.

## Architecture
- skills/ — 65 SKILL.md files across 13 domains with YAML frontmatter
- Each skill has: modules/ (country-specific), tables/ (JSON design data), evals/ (evaluation scenarios)
- Core + country module pattern: universal engineering in SKILL.md, country-specific standards in modules/*.md
- Country modules available: Uganda (most complete), UK (partial), Kenya (in progress)

## Key rules
- MoWT Road Design Manual (2010) is Uganda's national standard for ALL roads including UNRA roads. AASHTO is a technical source MoWT draws on, not a parallel institutional standard. Never infer institutional policy from general knowledge — verify against source documents.
- All outputs are preliminary/screening level. Always state this.
- Show your working. Every calculation includes standard references.
- Flag all assumptions. If data is missing, use the skill's defaults section and flag clearly.
- Escalation triggers in each skill identify conditions requiring senior engineer review. Always check these.

## YAML frontmatter
Every SKILL.md must have valid YAML frontmatter with `name` (kebab-case, matches directory) and `description` (pushy triggering — what it does + when to trigger + standards covered). See SKILL_YAML_SCHEMA.md for full schema.

## Tone
OpenEng is a global project. All communications maintain a professional, globally credible tone. We started in Africa because that is where we work and where the need is sharpest. The standards, the skills, and the agent are for engineers everywhere.

## Standards
Primary: Uganda MoWT Road Design Manual (2010), UK DMRB, AASHTO, ERA, TRL ORN, FIDIC. Kenya (KeNHA/MTRD) modules in progress.

## What NOT to do
- Do not mention Zimba or any product name in this repo
- Do not commit files from .planning/, planning/, or drafts/
- Do not commit PDF manuals or proprietary reference documents
- Do not use Claude-specific language in skills — use "the agent" or "the LLM", not "Claude"
