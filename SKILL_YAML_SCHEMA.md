# Skill YAML Frontmatter Schema

Every `SKILL.md` file **must** begin with a YAML frontmatter block. This block is how Claude Code discovers and triggers skills — without it, the skill won't be found or invoked correctly.

## Schema

```yaml
---
name: "<skill-slug>"
description: "<triggering description>"
---
```

### Fields

| Field | Required | Type | Description |
|-------|----------|------|-------------|
| `name` | Yes | string | Kebab-case slug matching the skill's directory name. Example: `"traffic-survey-design"` for `skills/traffic-engineering/traffic-survey-design/` |
| `description` | Yes | string | A triggering-style description that tells the agent **when** to use this skill, **what** it depends on, and **what** it produces. See guidelines below. |

### `name` Rules

- Must exactly match the skill's directory name (the final path segment)
- Always kebab-case: lowercase, words separated by hyphens
- Wrapped in double quotes

### `description` Guidelines

The description serves as the skill's trigger — it determines when the agent selects this skill. Follow this pattern:

1. **Start with "Use when..."** — describe the engineering task or trigger condition
2. **State prerequisites** — which upstream skills provide required inputs (by skill number and name)
3. **State outputs** — which downstream skills consume this skill's outputs
4. **Keep it concise** — aim for 1-3 sentences

#### Good Examples

```yaml
description: "Use when designing horizontal curves — selecting curve radii, superelevation, transition curves, and curve widening for a road. Requires design speed from Skill #13 (Design Standards Selection). Outputs feed into Skill #16 (Sight Distance) and earthworks calculations."
```

```yaml
description: "Use when converting traffic data into cumulative design ESAs/ESALs for pavement design. Requires AADT from Skill #2, heavy vehicle percentage from Skill #3, damage factors from Skill #4, and growth rate from Skill #6. Outputs cumulative ESAs and traffic class — the primary input for pavement design (Skills #21-23)."
```

```yaml
description: "Use when planning traffic surveys for a road project — selecting survey types (classified counts, ATCs, video, O-D), station locations, durations, and seasonal timing. No prerequisite skills — this is the entry point of the traffic engineering pipeline. Outputs feed into Skill #2 (Traffic Data Processing)."
```

#### Anti-patterns

- Don't just restate the skill title: `"Designs horizontal alignment"` — too vague for triggering
- Don't omit skill dependencies: the agent needs to know the pipeline order
- Don't write multi-paragraph descriptions — keep it to one `description` value

## Complete Example

For a skill at `skills/drainage/culvert-hydraulic-design/SKILL.md`:

```yaml
---
name: "culvert-hydraulic-design"
description: "Use when sizing culverts for cross-drainage. Requires design flow from Skill #29 (Hydrology). Checks both inlet and outlet control to determine governing headwater. Outputs feed into Skill #33 (Culvert Structural Design) for structural analysis and Skill #32 (Erosion Protection) for outlet protection."
---

# Culvert Hydraulic Design

> **Skill ID:** 31
> **Domain:** Drainage
...
```

## Relationship to Blockquote Metadata

The YAML frontmatter is **separate from** the blockquote metadata block that appears after the `# Title`:

```markdown
> **Skill ID:** 14
> **Domain:** Geometric Design
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-17
> **Reviewed By:** —
> **Country Modules:** Uganda, UK
```

Both are required. The YAML frontmatter is for agent discovery and triggering. The blockquote metadata is for human reference and skill management.

## Validation Checklist

When adding or reviewing a skill's YAML frontmatter:

- [ ] File starts with `---` on line 1
- [ ] `name` matches the directory name exactly
- [ ] `name` is kebab-case
- [ ] `description` starts with "Use when..."
- [ ] `description` mentions prerequisite skills (or states "No prerequisites")
- [ ] `description` mentions downstream consumers
- [ ] Closing `---` is present
- [ ] A blank line separates the closing `---` from the `# Title`
