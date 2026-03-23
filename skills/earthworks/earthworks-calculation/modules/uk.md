# Earthworks Calculation -- UK Module

> **Parent Skill:** #26 Earthworks Calculation
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 622 (Managing Geotechnical Risk), SHW Series 600 (Earthworks)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CD 622 | Current | Managing Geotechnical Risk -- earthworks risk assessment | Current |
| SHW Series 600 | Current | Earthworks -- material classification, compaction | Current |
| BS 6031 | 2009 | Code of Practice for Earthworks | Current |

### M.1.2 Institutional Context

UK highways earthworks are governed by the Design Manual for Roads and Bridges (DMRB) and the Specification for Highway Works (SHW). National Highways (formerly Highways England) is the primary authority for trunk roads and motorways. Local highway authorities follow the same standards for major schemes.

### M.1.3 Standard Philosophy

UK earthworks standards focus heavily on risk management (CD 622) and material classification (SHW Series 600). Volume calculation methods are universal -- the same average end area and prismoidal methods apply. The UK-specific aspects are: (a) SHW Series 600 material classification for earthworks, (b) compaction requirements by material class, (c) waste hierarchy and materials management (CL:AIRE), and (d) contaminated land considerations.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UKE.1: SHW Series 600 Earthworks Material Classes**

| Class | Description | Typical Use | Key Requirements |
|-------|-------------|-------------|-----------------|
| 1 | General granular fill | General fill below formation | Well-graded granular material |
| 2 | Selected granular fill | Structural fill, capping | CBR and grading requirements |
| 3 | Chalk fill | Fill in chalk areas | Moisture-sensitive; special handling |
| 4 | Stabilised materials | Treated fill | Cement or lime stabilised |
| 5 | Topsoil | Landscaping | Stripped and stored separately |
| 6 | Selected fill (cohesive) | Structural fill | PI and moisture content limits |
| 7 | Acceptable fill (below water) | Below water table fill | Limited application |
| 9 | Recycled aggregates | Sustainable fill | Subject to WRAP protocols |

**Table UKE.2: Typical UK Shrinkage Factors**

| Material | Shrinkage Factor | Notes |
|----------|-----------------|-------|
| Granular soils (Class 1/2) | 1.05 - 1.15 | Low shrinkage |
| Cohesive soils (Class 6) | 1.15 - 1.30 | Higher shrinkage; moisture-dependent |
| Chalk (Class 3) | 1.10 - 1.25 | Depends on grade (structured/structureless) |
| Mixed soils | 1.10 - 1.20 | General UK default |
| Rock fill | 1.05 - 1.15 | Depends on fragmentation |

**Table UKE.3: Typical UK Bulking Factors**

| Material | Bulking Factor | Notes |
|----------|---------------|-------|
| Sand and gravel | 1.10 - 1.20 | Low bulking |
| Clay | 1.20 - 1.40 | High bulking; state-dependent |
| Chalk | 1.15 - 1.30 | Grade-dependent |
| Rock | 1.40 - 1.60 | Significant bulking after blasting |

### M.2.2 Country-Specific Formulas

No UK-specific formulas. Volume calculation methods are universal (see SKILL.md Section 1.2).

### M.2.3 Classification System

UK earthworks materials are classified under SHW Series 600 (Table UKE.1). This classification determines compaction requirements, handling procedures, and acceptability for different fill applications. The UK system is class-based (Class 1-9) rather than strength-based (like MoWT G80/G60/G45/G30/G15).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 1 (UK): Classify excavated material
  +-- Identify SHW Class from soil description and test results
  +-- Determine acceptable placement locations
  +-- Flag any contaminated material (separate disposal)

Step 6 (UK): Apply UK shrinkage factors
  +-- Select shrinkage factor from Table UKE.2 by material class
  +-- If mixed materials --> Use 1.15 (UK default)
  +-- Document material class for SHW compliance
```

### M.3.2 Professional Judgment (UK-Specific)

**Materials management is critical in UK earthworks.** The CL:AIRE Definition of Waste: Development Industry Code of Practice allows excavated materials to be reused on-site without being classified as waste -- but only if a Materials Management Plan (MMP) is in place. Without an MMP, surplus material becomes "waste" under UK environmental legislation and must be disposed of at a licensed facility.

**Waste hierarchy applies to earthworks.** UK law (Environmental Protection Act 1990, Waste Framework Directive) requires that earthworks planning follow the waste hierarchy: (1) Prevention -- design to minimise earthworks, (2) Reuse -- maximise on-site reuse, (3) Recycling -- use recycled aggregates, (4) Recovery -- energy recovery where applicable, (5) Disposal -- last resort. Earthworks balance optimisation is not just an economic exercise but a regulatory requirement.

**Contaminated land is more prominent in UK than in many developing countries.** Former industrial sites, brownfield developments, and areas near historical mining may have contaminated soils. Contaminated material requires separate handling, testing, and potentially remediation before reuse or disposal.

### M.3.3 Common Errors (UK-Specific)

1. **Not classifying material per SHW Series 600.** UK projects require material classification before placement. Generic "fill" is not sufficient -- material must be assigned to a SHW class.
2. **Ignoring the CL:AIRE framework.** Without a Materials Management Plan, surplus earthworks material becomes regulated waste, significantly increasing disposal costs.
3. **Not separating topsoil (Class 5).** Topsoil must be stripped and stored separately before earthworks begin. Failure to strip topsoil contaminates structural fill and wastes a valuable resource.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Shrinkage factor | 1.15 | General UK conditions | ASSUMED: Shrinkage 1.15 (UK mixed soils). Verify with site investigation data. | Mid-range for UK conditions |
| Topsoil strip depth | 0.3 m | Not specified | ASSUMED: 300mm topsoil strip. Verify with site investigation. | Typical UK topsoil depth |
| Material classification | SHW Series 600 | UK project | No flag (standard requirement) | Mandatory for UK highway earthworks |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Shrinkage factor (granular) | 1.00 | 1.20 | -- | BS 6031 | Warn if outside range |
| Shrinkage factor (cohesive) | 1.10 | 1.35 | -- | BS 6031 | Warn if outside range |
| Fill height (without reinforcement) | 0 | 10 | m | CD 622 | Warn if > 8m; specialist design if > 10m |

### M.5.2 Standards Compliance Checks

- **Check:** Material classified per SHW Series 600
- **Standard:** SHW Series 600
- **Pass condition:** All fill material assigned to a SHW class
- **Fail action:** NOTE -- Material not classified per SHW Series 600. Classify before placement.

- **Check:** Topsoil stripping accounted for
- **Standard:** SHW Clause 601
- **Pass condition:** Topsoil volume included in earthworks calculation
- **Fail action:** NOTE -- Topsoil stripping not included. Add topsoil strip volume to cut quantities.

### M.5.3 Departures / Relaxations Process

DMRB Departure from Standards process applies if earthworks design does not comply with CD 622 requirements. For volume calculation methods, no departure is needed -- methods are universal.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Contaminated material suspected | Environmental and health risk | SENIOR REVIEW -- Potential contaminated material at station [X]. Requires environmental assessment before earthworks. |
| No Materials Management Plan | Surplus becomes regulated waste | NOTE -- Materials Management Plan (CL:AIRE) not in place. Surplus earthworks may be classified as waste. |
| Fill height > 8m | Specialist geotechnical design needed | SENIOR REVIEW -- Fill height [X]m exceeds 8m. Geotechnical assessment required per CD 622. |

---

## M.7 Worked Example -- UK

### Example: Three Cross-Sections on A-road Improvement

**Source:** Typical UK calculation using universal methods with SHW context.

**Given:**
- Road type: Single carriageway A-road improvement
- Terrain: Rolling (southern England)
- Soil type: Mixed granular and cohesive (Class 1 and Class 6)
- Shrinkage factor: 1.15 (UK mixed soils)
- Cross-section spacing: 25 m
- Topsoil strip: 0.3m across formation width (10m) -- accounted separately
- Three consecutive cross-sections (after topsoil strip):

| Station | Chainage | Cut Area (m2) | Fill Area (m2) |
|---------|----------|---------------|----------------|
| 1 | 0+000 | 12.5 | 3.2 |
| 2 | 0+025 | 8.3 | 6.1 |
| 3 | 0+050 | 2.1 | 15.4 |

**Solution:**

**Step 1 -- Calculate volumes (average end area):**

Cut volumes:
- Segment 1-2: (12.5 + 8.3) / 2 x 25 = 260.0 m3
- Segment 2-3: (8.3 + 2.1) / 2 x 25 = 130.0 m3
- Total cut = **390.0 m3**

Fill volumes:
- Segment 1-2: (3.2 + 6.1) / 2 x 25 = 116.25 m3
- Segment 2-3: (6.1 + 15.4) / 2 x 25 = 268.75 m3
- Total fill (compacted) = **385.0 m3**

**Step 2 -- Apply shrinkage:**
```
Shrinkage-adjusted fill = 385.0 x 1.15 = 442.75 m3
```

**Step 3 -- Net balance:**
```
Net = 390.0 - 442.75 = -52.75 m3
```

**Step 4 -- SHW classification:**
Cut material to be classified as Class 1 (granular) or Class 6 (cohesive) based on test results. Material must meet SHW compaction requirements for the intended fill class.

**Result:**

| Parameter | Value | Unit |
|-----------|-------|------|
| Total cut volume | 390.0 | m3 |
| Total fill volume (compacted) | 385.0 | m3 |
| Shrinkage-adjusted fill | 442.75 | m3 |
| Net earthworks balance | -52.75 | m3 |
| Status | Borrow needed | -- |
| Material classification | SHW Series 600 Class 1/6 | -- |

NOTE -- Topsoil strip volume (0.3m x 10m x 50m = 150 m3) to be added to total excavation quantity and stored for reinstatement.

NOTE -- Materials Management Plan (CL:AIRE) recommended to enable on-site reuse of cut material without waste classification.

---

## M.8 References

1. Design Manual for Roads and Bridges, CD 622 -- Managing Geotechnical Risk.
2. Specification for Highway Works, Series 600 -- Earthworks.
3. BS 6031:2009 -- Code of Practice for Earthworks.
4. CL:AIRE, *Definition of Waste: Development Industry Code of Practice*, Version 2.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- SHW Series 600 classification, UK shrinkage factors, CL:AIRE materials management context. Knowledge-based module (no local DMRB document available). |
