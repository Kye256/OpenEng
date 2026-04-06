---
phase: 13-terrain-geometric-design
plan: "02"
subsystem: geometric-design-alignment-sight-distance
tags: [ethiopia, era, horizontal-alignment, vertical-alignment, sight-distance, country-module]
dependency_graph:
  requires: [13-01]
  provides: [GEOM-E02, GEOM-E03, GEOM-E04]
  affects: [horizontal-alignment, vertical-alignment, sight-distance]
tech_stack:
  added: []
  patterns: [M.1-M.8 module pattern, paved/unpaved split tables, three-tier emax system]
key_files:
  created:
    - skills/geometric-design/horizontal-alignment/modules/ethiopia.md
    - skills/geometric-design/vertical-alignment/modules/ethiopia.md
    - skills/geometric-design/sight-distance/modules/ethiopia.md
  modified: []
decisions:
  - "ERA emax = 8% for DC5+ clearly documented as higher than Kenya (6%) and Uganda (7%)"
  - "Separate paved/unpaved tables maintained for all three modules (radii, K-values, SSD)"
  - "Basic Access category (14%/16% gradients) included in vertical alignment as ERA-specific feature"
  - "ERA and Kenya share eye/object heights (1.05/0.2m) -- explicitly contrasted with Uganda (1.07/0.15m)"
metrics:
  duration: "6min"
  completed: "2026-04-05"
  tasks: 3
  files: 3
---

# Phase 13 Plan 02: Ethiopia Alignment & Sight Distance Modules Summary

Three Ethiopia country modules for ERA horizontal alignment, vertical alignment, and sight distance parameters using ERA GDM 2013 Chapters 7-9 with three-tier emax system (8%/6%/4%) and separate paved/unpaved tables.

## Completed Tasks

| Task | Name | Commit | Files |
|------|------|--------|-------|
| 1 | Ethiopia horizontal alignment module (GEOM-E02) | 9f9b7d9 | skills/geometric-design/horizontal-alignment/modules/ethiopia.md |
| 2 | Ethiopia vertical alignment module (GEOM-E03) | 4e5b595 | skills/geometric-design/vertical-alignment/modules/ethiopia.md |
| 3 | Ethiopia sight distance module (GEOM-E04) | 2d7aaff | skills/geometric-design/sight-distance/modules/ethiopia.md |

## Key Outputs

### Horizontal Alignment (GEOM-E02) -- 359 lines
- ERA minimum radii tables for paved (Table 8-1, 10 speeds x 3 emax values) and unpaved (Table 8-2, 9 speeds)
- Three-tier emax system: 8% for DC5+ paved rural, 6% for DC4 and below, 4% for urban
- Transition curve requirements (Table 8-4), curve widening (Table 8-3), superelevation development
- Worked example: Adama to Asella road (Route C36), DC5 rolling terrain, 70 km/h

### Vertical Alignment (GEOM-E03) -- 329 lines
- ERA crest K-values for paved (Table 9-1) and unpaved (Table 9-2), sag K-values (Table 9-3)
- Full gradient table by DC class and terrain (DC8 through Basic Access)
- Basic Access category: 14% all vehicles, 16% cars/pickups only -- no Kenya/Uganda equivalent
- Gradients >12% restricted to 200m with relief gradient requirement
- Climbing lane warrants (Table 9-5) and vertical clearances (Table 9-6)
- Worked example: Jimma to Mizan Teferi road, DC4 paved mountainous, 50 km/h

### Sight Distance (GEOM-E04) -- 354 lines
- ERA SSD for paved (Table 7-2) and unpaved (Table 7-3) with desirable and minimum values
- Decision sight distance (Table 7-4), PSD guide values (Table 7-6)
- Intersection sight distance from Chapter 11 (Tables 11-3 to 11-5) for yield and stop control
- Eye height 1.05m, object height 0.2m (matches Kenya, differs from Uganda)
- Worked example: Dire Dawa to Harar road (Route A10), DC5 rolling terrain, 70 km/h

## Deviations from Plan

None -- plan executed exactly as written.

## Decisions Made

1. **ERA emax 8% for DC5+ documented as critical difference:** Explicit warning that using Kenya (6%) or Uganda (7%) emax values will produce incorrect minimum radii for Ethiopian DC5+ roads.
2. **Separate paved/unpaved tables throughout:** All three modules maintain the ERA distinction between paved and unpaved road parameters.
3. **Basic Access category included:** ERA's unique below-DC1 category (14%/16% gradients) documented in vertical alignment module with note that Kenya and Uganda have no equivalent.
4. **ERA/Kenya eye/object height compatibility noted:** Both use 1.05/0.2m (TRL-derived), explicitly contrasted with Uganda's 1.07/0.15m (AASHTO-derived).

## Self-Check: PASSED
