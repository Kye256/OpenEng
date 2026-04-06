---
phase: 14-geotech-pavement-earthworks
plan: "03"
subsystem: earthworks
tags: [era, ethiopia, earthworks-calculation, mass-haul, cut-slopes, fill-slopes, compaction, country-module]

requires:
  - phase: 14-01
    provides: Ethiopia geotechnical modules (subgrade S1-S5, material specs GC/GS, material suitability)
provides:
  - ERA earthworks calculation with GDM Table 3-8 fill slopes and Table 4-8 cut slopes
  - ERA compaction requirements (93% MDD T-180 upper, 95% MDD T-99 lower, 90% core)
  - ERA mass haul with Standard Technical Specification payment categories and excavation classification
  - Regional soil types and shrinkage factors for 6 Ethiopian regions
affects: [material-suitability, pavement-design]

tech-stack:
  added: []
  patterns: [era-slope-tables, excavation-classification, kiremt-season-impact]

key-files:
  created:
    - skills/earthworks/earthworks-calculation/modules/ethiopia.md
    - skills/earthworks/mass-haul/modules/ethiopia.md
  modified: []

key-decisions:
  - "ERA GDM Table 3-8 fill slopes and Table 4-8 cut slopes verified from PDF -- height-dependent ratios differ from Kenya/Uganda flat tables"
  - "ERA excavation classification (common/hard/rock) documented as unique cost factor affecting haul economics -- not present in Kenya or Uganda modules"
  - "ERA compaction 93% MDD T-180 for upper 600mm is lower than Kenya 95% and Uganda 95% -- significant cross-country difference"
  - "Kiremt rainy season (June-September) documented as critical scheduling constraint with 40-60% haul productivity reduction"
  - "ERA free haul distance from Standard Technical Specifications with donor-funded project variation noted"

patterns-established:
  - "ERA height-dependent slope tables (3 columns: <5m, 5-10m, 10-15m for fill; 3-6m, 6-10m, 10-15m for cut)"
  - "ERA excavation classification creates cost multiplier for mass haul that other countries lack"
  - "Ethiopian expansive soil rejection in mass haul example demonstrates ERA GDM Section 2.3.1 application"

requirements-completed: [EARTH-E01, EARTH-E02]

duration: 44min
completed: 2026-04-05
---

# Phase 14 Plan 03: Ethiopia Earthworks Modules Summary

**Two ERA earthworks Ethiopia modules covering cut/fill slope design from GDM Tables 3-8 and 4-8, compaction requirements with three-zone system (93%/95%/90% MDD), mass haul with ERA excavation classification cost factors, and regional soil characterisation for 6 Ethiopian regions.**

## What Was Built

### Task 1: Ethiopia Earthworks Calculation Module (EARTH-E01)

**ERA Earthworks Calculation (earthworks-calculation/ethiopia.md) -- 376 lines:**
- ERA GDM 2013 Table 4-8 soil cut slope ratios by material type and height (5 material types x 3 height ranges)
- ERA GDM 2013 Table 3-8 preliminary fill slope angles by material type and height (5 material types x 3 height ranges)
- ERA compaction requirements: 93% MDD (T-180) upper 600 mm, 95% MDD (T-99) lower fill, 90% MDD (T-99) core
- Stability requirements: FS 1.3 general, 1.3-1.5 critical, 1.5 bridge approach; 5 m height threshold for analysis
- Regional soil types for 6 Ethiopian regions with CBR ranges and shrinkage factors
- Shrinkage factors table (7 material types) and bulking factors table (6 material types)
- ERA special soils (expansive, collapsible, dispersive) referenced from GDM Section 2.3
- Worked example: DC4 highland road through rolling terrain with borrow calculation
- Cross-country comparison embedded in compaction table notes (ERA 93% vs Kenya 95% vs Uganda 95%)

### Task 2: Ethiopia Mass Haul Module (EARTH-E02)

**ERA Mass Haul (mass-haul/ethiopia.md) -- 310 lines:**
- ERA Standard Technical Specification haul payment categories (free haul, overhaul)
- ERA excavation classification (common, hard material, rock) with relative cost ratios (1.0x, 1.5-2.5x, 2.5-4.0x)
- Material source availability for 6 Ethiopian regions with CBR ranges and constraints
- ERA Environmental Procedures Manual requirements for borrow pits
- Kiremt (June-September) rainy season impact: 40-60% haul productivity reduction
- Highland terrain gradient effects on truck cycle times (20-40% productivity reduction)
- Decision logic for Ethiopia-specific borrow pit selection
- Worked example: DC5 trunk road with three borrow sources including expansive soil rejection per ERA GDM Section 2.3.1
- Common errors list including excavation classification and kiremt scheduling

## Commits

| Task | Commit | Files | Description |
|------|--------|-------|-------------|
| 1 | 7e99b72 | 1 | ERA earthworks calculation Ethiopia module |
| 2 | 14a471d | 1 | ERA mass haul Ethiopia module |

## Deviations from Plan

None -- no formal 14-03-PLAN.md existed. This plan was inferred from the Phase 14 scope (geotech-pavement-earthworks) and the gap analysis: 14-01 covered geotechnical modules (GEO-E01 through GEO-E06), 14-02 covered pavement modules (PAVE-E01 through PAVE-E04, RPAVE-E01), leaving earthworks (EARTH-E01, EARTH-E02) as the remaining scope.

## Decisions Made

1. **ERA compaction 93% MDD T-180 upper 600mm is a key cross-country departure:** ERA specifies 93% Modified AASHTO for the upper 600 mm, while both Kenya and Uganda specify 95%. This is documented explicitly in the compaction table notes.
2. **ERA GDM height-dependent slope tables differ from other countries:** ERA provides separate slope ratios for 3 height ranges for both cuts and fills, which is more detailed than the Uganda approach (material type only) and similar to Kenya's approach.
3. **ERA excavation classification creates unique mass haul dynamics:** The three-tier excavation classification (common/hard/rock) with cost multipliers of 1.0x/1.5-2.5x/2.5-4.0x is an Ethiopia-specific factor not present in the Kenya or Uganda modules. This was documented as a key professional judgment factor in haul optimisation.
4. **Kiremt season documented as critical scheduling constraint:** The Ethiopian rainy season (June-September) with 40-60% haul productivity reduction is more severe and more precisely defined than the Kenya long/short rains pattern.

## Threat Flags

No new security-relevant surfaces. All modules are static engineering reference content.

## Known Stubs

None. Both modules contain complete M.1-M.8 sections with substantive content. Tables marked "(Verified from PDF)" where applicable per D-04 requirements.

## Self-Check: PASSED
