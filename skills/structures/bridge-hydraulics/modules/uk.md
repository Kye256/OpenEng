# Bridge Hydraulics -- UK Module

> **Parent Skill:** #39 Bridge Hydraulics
> **Country/Jurisdiction:** United Kingdom
> **Standards:** CIRIA C742, DMRB BD 97/12, CD 356
> **Version:** 0.1
> **Status:** Draft -- Knowledge-based
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

**Note:** This module is flagged as **knowledge-based**. The CIRIA and DMRB documents referenced are not available locally for direct verification. Content is based on established engineering knowledge of UK bridge scour assessment practice. Values should be verified against current DMRB and CIRIA publications before use in UK projects.

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| CIRIA C742 | 2015 | Manual on Scour at Bridges and Other Hydraulic Structures -- comprehensive scour guidance | Current |
| DMRB BD 97/12 | 2012 | The Assessment of Scour and Other Hydraulic Actions at Highway Structures | Current |
| DMRB CD 356 | 2020 | Design of Highway Structures for Hydraulic Action | Current (replaced BD 97 for new designs) |

### M.1.2 Institutional Context

In the UK, National Highways (formerly Highways England) manages the strategic road network. Bridge scour assessment follows DMRB standards (CD 356 for new designs, BD 97 for assessments). Local highway authorities follow the same standards. CIRIA C742 is the comprehensive industry manual used by practitioners for detailed scour assessment.

### M.1.3 Standard Philosophy

UK scour assessment follows a tiered approach:
- **Level 1 (screening):** Desktop study to identify bridges potentially at risk from scour
- **Level 2 (scour assessment):** Quantitative scour depth estimation using CIRIA C742 or HEC-18 methods
- **Level 3 (detailed analysis):** Specialist investigation with physical or numerical modelling

DMRB specifies soffit clearance requirements (freeboard) and defines the assessment flood (typically 1% AEP / 100-year for design, with climate change allowance). HEC-18 scour methodology is accepted alongside CIRIA's own methods. The CIRIA manual provides UK-specific adaptations of scour equations and comprehensive guidance on scour countermeasures.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Freeboard (Soffit Clearance):**

UK practice (DMRB) requires minimum soffit clearance above design flood level. Typical requirements:
- 600 mm minimum clearance above 1% AEP flood level for new bridges
- Additional allowance for climate change (typically 20-30% increase in peak flow)
- Navigation clearance where applicable (determined by navigation authority)

**Design Flood:**

| Requirement | Return Period | Note |
|------------|-------------|------|
| Design flood (new structures) | 1% AEP (100-year) | With climate change allowance |
| Assessment flood (existing) | 1% AEP | Per BD 97/12 |
| Scour check flood | 0.1% AEP (1000-year) | Or climate-adjusted 1% AEP |

### M.2.2 Country-Specific Formulas

UK practice accepts HEC-18 pier scour (CSU equation) and contraction scour equations as presented in the parent skill. CIRIA C742 also provides alternative approaches including:

- **Breusers et al. equilibrium scour depth** for pier scour (alternative to CSU)
- **UK-specific regime equations** for gravel-bed rivers (different from Lacey's equation for alluvial rivers)
- **Climate change adjustment:** Peak flows increased by a percentage factor (currently 20-40% depending on river basin and time horizon per EA guidance)

The key difference is the climate change adjustment: UK design floods include a climate change uplift that is not standard in HEC-18 practice.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

At Step 1 (design inputs), UK practice requires climate change adjustment to the design flood. The Environment Agency publishes allowances by river basin. Typical range: 20-40% increase in peak flow for the 2080s time horizon.

At Step 3 (waterway area), UK rivers are predominantly gravel-bed with lower sediment transport rates than tropical alluvial rivers. Lacey regime width is less applicable -- use UK regime equations for gravel-bed rivers where relevant.

At Step 8 (freeboard), DMRB specifies soffit clearance rather than using the term "freeboard." The clearance must accommodate debris passage and climate change uncertainty.

### M.3.2 Professional Judgment (Country-Specific)

**UK has a mature bridge scour management programme.** National Highways maintains a scour risk database for all structures on the strategic network. Scour assessments are routinely carried out as part of bridge management.

**Climate change is a key consideration.** Unlike many developing country standards, UK practice explicitly requires climate change adjustment to design flows. This typically increases flows by 20-40%, which significantly affects scour depth estimates.

**UK rivers are generally lower-energy than tropical rivers.** Mean velocities are typically lower, sediment transport is less active, and flood durations are longer. Clear-water scour may be more common than live-bed scour in UK gravel-bed rivers.

### M.3.3 Common Errors (Country-Specific)

1. **Omitting climate change allowance.** UK design floods must include the Environment Agency's climate change uplift. Using un-adjusted flows underestimates scour.
2. **Using Lacey regime width for UK gravel-bed rivers.** Lacey's equation was developed for alluvial (sand-bed) rivers in the Indian subcontinent. It overestimates regime width for UK gravel-bed rivers.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design return period | 100 years (1% AEP) | New structure | No flag | DMRB CD 356 |
| Climate change uplift | 20% | Not specified | ASSUMED: 20% climate change uplift (central estimate). Check EA guidance for river basin. | EA guidance |
| Soffit clearance | 600 mm | New bridge | No flag | DMRB typical requirement |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design return period | 100 | 1000 | years | DMRB CD 356 | Warn if < 100 for new design |
| Soffit clearance | 0.6 | 3.0 | m | DMRB | Fail if < 0.6 m |
| Climate change uplift | 0 | 105 | % | EA guidance | Warn if = 0 (no uplift applied) |

### M.5.2 Standards Compliance Checks

- **Check:** Climate change allowance applied to design flows
- **Standard:** EA/DMRB guidance
- **Pass condition:** Design flows include climate change uplift
- **Fail action:** Flag -- apply appropriate climate change allowance

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Any departure from CD 356 requirements must be submitted to the Overseeing Organisation for approval with full engineering justification.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No climate change allowance | DMRB requires it | SENIOR REVIEW -- No climate change uplift applied to design flows. Apply EA guidance for [river basin]. |
| Scour depth exceeds existing foundation | Existing bridge at risk | SENIOR REVIEW -- Predicted scour exceeds existing foundation depth. Scour protection or foundation strengthening required. |

---

## M.7 Worked Example -- UK

### Example: Bridge Scour Assessment -- UK River Crossing

**Source:** Based on CIRIA C742 and DMRB BD 97 methodology (knowledge-based)

**Given:**
- Single carriageway road bridge over 45 m wide river
- Q100 = 250 m3/s (before climate change), climate change uplift 25% --> Q100cc = 312.5 m3/s
- 3 piers, each 1.2 m wide, round-nosed
- Bridge opening: 3 spans x 15 m = 45 m (net 41.4 m)
- Mean flow depth at design flood: 3.5 m (higher due to climate change uplift)
- Bed material: gravel, D50 = 25 mm
- Soffit level: 6.0 m above bed

**Solution (approach):**

1. **Apply climate change uplift:** Q100cc = 250 x 1.25 = 312.5 m3/s
2. **Waterway area:** A = 41.4 x 3.5 = 144.9 m2; V = 312.5/144.9 = 2.16 m/s
3. **Scour type:** Gravel bed with D50 = 25 mm. Critical velocity likely higher than mean velocity for gravel -- assess for clear-water scour conditions.
4. **Pier scour (CSU equation):** Apply HEC-18 equation with K1=1.0, K2=1.0, K3=1.1, K4=1.0, a=1.2m, y1=3.5m. Pier scour depth approximately 2.0-2.5 m.
5. **Contraction scour:** For gravel bed under clear-water conditions, contraction scour typically less severe than for sand beds. Estimate 0.5-1.0 m.
6. **Total scour:** Approximately 3.0-4.0 m including degradation allowance.
7. **Soffit clearance:** 6.0 - 3.5 = 2.5 m > 0.6 m minimum -- PASS
8. **References:** CIRIA C742 Chapters 7-10, BD 97/12 Section 3.

**Result:** Climate change increases design flow by 25%, increasing scour depth by approximately 10-15%. UK approach emphasises climate resilience alongside standard scour assessment.

---

## M.8 References

1. CIRIA C742: Manual on Scour at Bridges and Other Hydraulic Structures, 2nd Edition, CIRIA, 2015.
2. DMRB BD 97/12: The Assessment of Scour and Other Hydraulic Actions at Highway Structures, Highways Agency, 2012.
3. DMRB CD 356: Design of Highway Structures for Hydraulic Action, National Highways, 2020.
4. Environment Agency: Adapting to Climate Change -- Advice for Flood and Coastal Erosion Risk Management Authorities (current guidance).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- knowledge-based UK module with CIRIA/DMRB references |
