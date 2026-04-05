---
phase: 12-v11-polish-module-structure-cross-references
plan: 01
subsystem: skills/traffic-management, skills/planning-safety
tags: [kenya-modules, module-structure, cross-references, tech-debt]
dependency_graph:
  requires: []
  provides: [standardised-module-structure, rsa-traffic-management-interfaces]
  affects: [skills/traffic-management/traffic-signal-design, skills/traffic-management/traffic-control-devices, skills/planning-safety/road-safety-audit]
tech_stack:
  added: []
  patterns: [M.1-M.8-module-structure]
key_files:
  created: []
  modified:
    - skills/traffic-management/traffic-signal-design/modules/kenya.md
    - skills/traffic-management/traffic-control-devices/modules/kenya.md
    - skills/planning-safety/road-safety-audit/SKILL.md
    - .planning/REQUIREMENTS.md
decisions:
  - "Module restructure preserves all existing technical content while adding new M.4-M.7 sections"
  - "RSA Section 6.4 Related Skills lists both pre-existing (#15-20) and new (#67-70) cross-references"
metrics:
  duration: 7min
  completed: "2026-04-05T14:35:00Z"
  tasks_completed: 2
  tasks_total: 2
  files_modified: 4
---

# Phase 12 Plan 01: Module Structure and Cross-References Polish Summary

Restructured Skills #69 and #70 Kenya modules from non-standard section layout to the M.1-M.8 structure used by all other Kenya modules, added traffic management cross-references to the RSA core skill, and corrected the GEOM-K01 road classification description.

## Tasks Completed

### Task 1: Restructure Skills #69 and #70 Kenya modules to standard M.1-M.8

**Commit:** a7e80b8

Restructured both `traffic-signal-design/modules/kenya.md` (Skill #69) and `traffic-control-devices/modules/kenya.md` (Skill #70) to match the standard M.1-M.8 section structure used by Skills #67 and #68.

Changes per module:
- **M.3** renamed from "Procedure Adjustments" to "Country-Specific Reasoning" with decision tree (M.3.1), professional judgment notes (M.3.2), and 5 common errors (M.3.3)
- **M.4 Country-Specific Defaults** created with concrete values from RDM 6.3/6.4 (6 defaults each)
- **M.5 Country-Specific Validation** created with range checks (6-7 parameters each), standards compliance checks (2-3 each), and departures process
- **M.6 Country-Specific Escalation** created with 4-5 Kenya-specific triggers
- **M.7 Worked Example** created: Skill #69 has signal warrant analysis and timing for 4-arm intersection; Skill #70 has speed hump design for Class C road through trading centre
- **M.8 References** consolidated from old M.6 References, M.5 Limitations, and M.8 Cross-References
- Removed M.7 Changelog sections (version tracking is in git)
- All existing M.1 and M.2 technical content preserved exactly

### Task 2: Add Skills #67-70 to RSA interfaces and fix GEOM-K01

**Commit:** cf70b75

Updated RSA core SKILL.md (Skill #61):
- Added "Traffic management design" input row in Section 6.1 referencing Skills #67-70
- Added `modules/kenya.md` row in Section 6.3 Data Files
- Created new Section 6.4 Related Skills listing Skills #15-20 and #67-70 with relevance descriptions
- Updated Step 1 procedure to reference Kenya country module (KeNHA/KeRRA/KURA)
- Updated Section 10 to list Kenya as available country module

Fixed REQUIREMENTS.md:
- GEOM-K01 description corrected from "S/A/B/C/D/E + UA/UB/UC" to "A/B/C/D/E + UA/UC/UL" per Phase 7 decision

## Deviations from Plan

### Auto-fixed Issues

**1. [Rule 2 - Missing functionality] Updated RSA Section 10 country module list**
- **Found during:** Task 2
- **Issue:** Section 10 Limitations still listed "Country modules available: Uganda" and "Country modules needed: Kenya" despite Kenya module existing since Phase 11
- **Fix:** Updated to "Country modules available: Uganda, Kenya" and removed Kenya from needed list
- **Files modified:** skills/planning-safety/road-safety-audit/SKILL.md
- **Commit:** cf70b75

## Known Stubs

None. All new sections contain concrete Kenya-specific values from RDM 6.3 and RDM 6.4, not placeholders.

## Decisions Made

1. **Module restructure preserves all existing technical content while adding new M.4-M.7 sections.** The M.1, M.2 content was not modified. Content from old M.3 (Procedure Adjustments), M.4 (Additional Considerations), M.5 (Limitations), M.6 (References), and M.8 (Cross-References) was redistributed into the standard structure without loss.
2. **RSA Section 6.4 Related Skills lists both pre-existing and new cross-references.** Added Skills #15-20 (already referenced in procedure text) alongside Skills #67-70 for completeness.

## Verification

All 4 verification checks passed:
1. Both modules have exactly 8 M-sections (M.1-M.8)
2. No old section names (Procedure Adjustments, Changelog, Cross-References as headings) remain
3. RSA SKILL.md references Skills #67-70 (5 matches across inputs and related skills)
4. GEOM-K01 reads "A/B/C/D/E + UA/UC/UL" with no "S/A/B/C/D/E" remaining

## Self-Check: PASSED

All 4 modified files exist. Both task commits (a7e80b8, cf70b75) verified in git log.
