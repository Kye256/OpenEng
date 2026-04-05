---
phase: 14-geotech-pavement-earthworks
plan: 02
subsystem: pavement-design
tags: [era, ethiopia, flexible-pavement, aashto-93, trl-orn-31, rehabilitation, rigid-pavement, catalogue-method]

requires:
  - phase: 14-01
    provides: Ethiopia geotechnical modules (subgrade S1-S5, material specs GB1/GB2/GB3/GS/GC/CB1/CB2)
provides:
  - ERA flexible pavement catalogue method with charts A1-D and traffic classes T1-T8
  - ERA AASHTO 93 application as alternative/verification with Appendix H.4 layer coefficients
  - ERA departures from TRL ORN 31 documented with three-country comparison
  - ERA rehabilitation with three overlay design methods (empirical, deflection-only, analytical)
  - ERA rigid pavement design with JUCP/JRCP/CRCP and design charts Figures 6-2 to 6-5
affects: [earthworks-calculation, material-suitability]

tech-stack:
  added: []
  patterns: [era-catalogue-method, three-overlay-methods, trl-aashto-hybrid-rigid]

key-files:
  created:
    - skills/pavement-design/mowt-catalogue/modules/ethiopia.md
    - skills/pavement-design/aashto-93/modules/ethiopia.md
    - skills/pavement-design/trl-orn-31/modules/ethiopia.md
    - skills/pavement-design/pavement-rehabilitation/modules/ethiopia.md
    - skills/pavement-design/rigid-pavement-design/modules/ethiopia.md
  modified: []

key-decisions:
  - "ERA damage exponent n=4.5 is the key departure from AASHTO 93 standard n=4.0 -- increases ESA by ~20% for overloaded axles"
  - "ERA AASHTO 93 positioned as alternative/verification only (Appendix H.5), not primary method"
  - "ERA is closest to ORN 31 of the three East African countries -- Uganda added wet/dry, Kenya departed to M-E"
  - "ERA rehabilitation has three overlay methods vs Kenya two and Uganda one -- most comprehensive in the region"
  - "ERA rigid pavement uses TRL/AASHTO hybrid with Figures 6-2 to 6-5; Uganda has no comprehensive rigid pavement manual"

patterns-established:
  - "ERA 5-class subgrade (S1-S5) vs 6-class for Uganda/Kenya -- S6 does not exist in ERA"
  - "ERA 7-chart catalogue (A1-D) vs Uganda 10-chart (D1-W5) and Kenya 16-structure (ST01-ST16)"
  - "Three overlay methods at increasing data requirements: empirical < deflection-only < analytical"

requirements-completed: [PAVE-E01, PAVE-E02, PAVE-E03, PAVE-E04, RPAVE-E01]

duration: 10min
completed: 2026-04-05
---

# Phase 14 Plan 02: Ethiopia Pavement Design Modules Summary

**Five ERA pavement design Ethiopia modules covering flexible catalogue (A1-D), AASHTO 93 verification with n=4.5 departure, TRL ORN 31 relationship with specific ERA calibrations, three-method rehabilitation overlay design, and JUCP/JRCP/CRCP rigid pavement from Vol II.**

## What Was Built

### Task 1: Flexible Pavement, AASHTO 93, and TRL ORN 31 Modules (PAVE-E01, PAVE-E02, PAVE-E03)

**ERA Flexible Pavement Catalogue (mowt-catalogue/ethiopia.md):**
- ERA traffic classification T1-T8 with ESA calculation using n=4.5 damage exponent
- ERA Table 2-6 ESA factors with "all loaded" and "half loaded" columns for overloading
- ERA Table 2-8 traffic class boundaries (identical to ORN 31)
- ERA Table 2-1 design periods by design class (DC1-DC8)
- 7 design catalogue chart groups A1-A3, B, C1-C2, D with surfacing/base combinations
- ERA material codes (GB1/GB2/GB3/GS/GC/CB1/CB2/CS) documented
- ERA overloading warning from Section 2.4.2
- Decision tree for chart selection based on surfacing type and base type
- Cross-country comparison table: ERA vs MoWT vs RDM 3.4

**ERA AASHTO 93 Application (aashto-93/ethiopia.md):**
- AASHTO 93 positioned as alternative/verification method per ERA Appendix H.5
- ERA Appendix H.4 layer coefficients published with cross-country comparison
- Key departure: n=4.5 produces ~20% higher ESA than AASHTO standard n=4.0
- Worked example showing AASHTO 93 verification of ERA catalogue design
- Three-country comparison of AASHTO 93 application (ERA, MoWT, Kenya)

**ERA TRL ORN 31 Relationship (trl-orn-31/ethiopia.md):**
- ERA is the Ethiopian calibration of ORN 31 (4th edition, 1993)
- Specific departures documented: 5 vs 6 subgrade classes, 7 vs 4 chart groups, Ethiopian vehicle classification, overloading factors
- Three-country departure comparison: ERA closest to ORN 31, Uganda added wet/dry, Kenya departed to M-E
- Subgrade class mapping table across ORN 31, ERA, MoWT, and RDM

### Task 2: Rehabilitation and Rigid Pavement Modules (PAVE-E04, RPAVE-E01)

**ERA Rehabilitation (pavement-rehabilitation/ethiopia.md):**
- ERA Rehabilitation Manual 2013 (separate from Pavement Vol I) documented chapter by chapter
- Three overlay design methods: empirical (Chapter 9 Method 1), deflection-only (Method 2), analytical (Method 3)
- Condition assessment: cracking classification, deflection testing (Benkelman beam/FWD), DCP testing
- Diagnostic process (Chapter 8): symptom-to-cause matrix
- Defect catalogue (Chapter 12) and defect diagnosis (Chapter 13)
- Concrete pavement rehabilitation (Chapter 11)
- Cross-country comparison of rehabilitation approaches

**ERA Rigid Pavement (rigid-pavement-design/ethiopia.md):**
- ERA Pavement Design Manual Vol II (2013) with TRL/AASHTO hybrid approach
- Three pavement types: JUCP, JRCP, CRCP with selection criteria
- Design charts: Figure 6-2a/b (JUCP), Figure 6-3 (JRCP with tied), Figure 6-4 (JRCP without), Figure 6-5 (CRCP)
- Foundation requirements from Appendix A (LCSB, CTSB, granular, capping)
- Joint design: dowel bars, tie bars, sealant, sawcut specifications
- Cross-country comparison: ERA vs Kenya RDM 3.5 (Uganda has no comprehensive rigid pavement manual)

## Commits

| Task | Commit | Files | Description |
|------|--------|-------|-------------|
| 1 | bb80ce2 | 3 | ERA flexible catalogue, AASHTO 93, TRL ORN 31 Ethiopia modules |
| 2 | df62935 | 2 | ERA rehabilitation and rigid pavement Ethiopia modules |

## Deviations from Plan

None -- plan executed exactly as written.

## Threat Flags

No new security-relevant surfaces. All modules are static engineering reference content.

## Known Stubs

None. All five modules contain complete M.1-M.8 sections with substantive content. Tables marked "(Verified from PDF)" per D-04 requirements.

## Self-Check: PASSED
