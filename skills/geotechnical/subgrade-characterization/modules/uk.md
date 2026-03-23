# Subgrade Characterization -- UK Module

> **Parent Skill:** #10 Subgrade Characterization
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 225, TRL Report 615
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

*(Drafted from general DMRB knowledge -- verify against current CD 225 and TRL 615 before use in production)*

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CD 225 | Current | Design for new pavement foundations | Current |
| TRL Report 615 | 2004 | Development of new road foundation design guidance | Reference |
| DMRB HD 25 (superseded) | 1994 | Foundation design (replaced by CD 225) | Superseded |
| BS 1377 Part 4 | 1990 | CBR test methods | Current |

### M.1.2 Institutional Context

National Highways (formerly Highways England) manages the strategic road network (motorways, trunk roads). Local highway authorities manage all other roads. Both typically use DMRB CD 225 for foundation design, though local authorities may use simplified approaches for minor works.

### M.1.3 Standard Philosophy

The UK approach differs fundamentally from the MoWT/TRL RN31 approach:
- **Equilibrium CBR** is used rather than soaked CBR. The long-term in-situ CBR under a sealed pavement is typically higher than the laboratory soaked value.
- **Stiffness-based design** is increasingly used alongside or instead of CBR. Foundation stiffness (in MPa) may be specified directly.
- **Foundation classes** (1-4) replace the S1-S6 subgrade class system.
- **Frost susceptibility** must be assessed -- not applicable in tropical countries.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Foundation Classes (CD 225):**

| Foundation Class | Long-term Equilibrium CBR (%) | Surface Stiffness Modulus (MPa) | Foundation Treatment |
|------------------|-----|------|-----|
| Class 1 | < 2.5 | < 25 | Requires capping (600 mm minimum) + sub-base |
| Class 2 | 2.5 - 5 | 25 - 50 | Requires capping (350 mm minimum) + sub-base |
| Class 3 | 5 - 15 | 50 - 100 | Sub-base directly on subgrade (no capping) |
| Class 4 | > 15 | > 100 | Reduced sub-base thickness |

**Equilibrium CBR Estimation:**

The UK does not typically use laboratory soaked CBR for design. Instead, the equilibrium CBR (the long-term in-situ CBR under a sealed pavement) is estimated from:
1. **Plasticity Index and water table depth** -- using published charts (TRL 615, previously HA guidance)
2. **In-situ CBR measurement** -- plate bearing tests or DCP on existing subgrade
3. **Laboratory CBR at equilibrium moisture content** -- specimens conditioned to represent field conditions

For preliminary design, the equilibrium CBR can be estimated from PI using published relationships. For detailed design, in-situ testing is preferred.

**Frost Susceptibility:**

UK subgrade design must consider frost heave risk. Materials are classified as frost-susceptible or non-frost-susceptible per CD 225 / TRL 615. Generally:
- Sands and gravels with < 10% fines: non-frost-susceptible
- Silts (PI < 15, high fines): frost-susceptible
- Clays (PI > 15): generally non-frost-susceptible (low permeability)
- Chalk, some limestones: frost-susceptible

### M.2.2 Country-Specific Formulas

**Approximate equilibrium CBR from PI (simplified, for preliminary design):**

For cohesive soils with water table > 1 m below formation:
- PI 10-20: Equilibrium CBR approximately 5-8%
- PI 20-40: Equilibrium CBR approximately 3-5%
- PI 40-60: Equilibrium CBR approximately 2-4%
- PI > 60: Equilibrium CBR approximately 1-2%

These are approximate ranges. Site-specific assessment per CD 225 is required for detailed design.

### M.2.3 Classification System

The UK uses Foundation Classes 1-4 based on subgrade CBR/stiffness, rather than the S1-S6 system. The foundation class determines the capping and sub-base requirements per CD 225 design tables.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 3 (UK): Determine equilibrium CBR
  |-- If in-situ CBR available (plate bearing, DCP): use directly
  |-- If lab CBR at equilibrium MC available: use directly
  |-- If only PI and soil description available:
  |   +-- Estimate from PI-CBR relationship and water table depth
  +-- Do NOT use laboratory soaked CBR as design value

Step 4 (UK): Assign foundation class
  |-- CBR < 2.5%: Class 1 (capping + sub-base required)
  |-- CBR 2.5-5%: Class 2 (capping + sub-base required)
  |-- CBR 5-15%: Class 3 (sub-base only, no capping)
  |-- CBR > 15%: Class 4 (reduced sub-base)
  +-- Check frost susceptibility per CD 225

Step 5 (UK): Design foundation
  |-- Select capping thickness per foundation class
  |-- Select sub-base type and thickness per CD 225 tables
  +-- Verify overall foundation stiffness meets requirements
```

### M.3.2 Professional Judgment (UK-Specific)

**Do not apply tropical soaked CBR design to UK conditions.** The equilibrium CBR approach gives higher design CBR values than soaked CBR, reflecting the reality that UK subgrades under sealed pavements reach equilibrium moisture conditions that are less severe than full soaking.

**Frost susceptibility can be the governing criterion.** Even if the CBR is adequate, a frost-susceptible subgrade requires protection (frost blanket or non-frost-susceptible capping/sub-base to the frost penetration depth).

**Stiffness is increasingly preferred over CBR** for UK foundation design. Where possible, measure foundation stiffness directly using plate bearing tests or FWD (Falling Weight Deflectometer).

### M.3.3 Common Errors (UK-Specific)

1. **Using laboratory soaked CBR as design value.** UK practice uses equilibrium CBR, not soaked CBR.
2. **Ignoring frost susceptibility.** Silt-rich subgrades may have adequate CBR but be frost-susceptible.
3. **Applying MoWT/RN31 subgrade classes (S1-S6) to UK projects.** UK uses foundation classes 1-4.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| CBR type | Equilibrium CBR | Not specified | ASSUMED: Equilibrium CBR per CD 225 -- not soaked CBR | UK foundation design practice |
| Frost check | Required | Always | Check frost susceptibility per CD 225 | UK climate requires frost assessment |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Equilibrium CBR | 1 | 50 | % | CD 225 | If < 1%: exceptional -- specialist assessment needed. If > 30%: verify. |
| Foundation class | 1 | 4 | -- | CD 225 | Must be 1-4. |

### M.5.2 Standards Compliance Checks

- **Check:** Frost susceptibility assessed.
- **Standard:** CD 225
- **Pass condition:** Frost susceptibility classification determined for all subgrade materials.
- **Fail action:** Warn -- "Frost susceptibility not assessed. Required for UK foundation design."

### M.5.3 Departures / Relaxations Process

National Highways has a formal Departures from Standards process. Departure from CD 225 requirements must be submitted and approved through the overseeing organisation. Local authority projects may follow a less formal process but deviations should be documented.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Equilibrium CBR < 2.5% | Foundation Class 1 -- significant capping required | SENIOR REVIEW -- Very weak subgrade. Foundation Class 1 requires minimum 600 mm capping. Consider ground improvement (lime stabilisation) as alternative. |
| Frost-susceptible subgrade | Frost heave risk | SENIOR REVIEW -- Frost-susceptible subgrade. Ensure non-frost-susceptible material to frost penetration depth (typically 450 mm in southern England, deeper in Scotland). |
| Highly variable subgrade | Foundation class changes along route | SENIOR REVIEW -- Foundation class varies from [X] to [Y] along route. Consider uniform design to the worst case or section-by-section design. |

---

## M.7 Worked Example -- UK

### Example: Determine Foundation Class for a UK Bypass

**Source:** Hypothetical, based on typical UK practice.

**Given:**
- Project: A bypass road in Cambridgeshire (fenland area)
- Subgrade: Firm to stiff clay (Oxford Clay)
- Water table: 1.5 m below existing ground level
- 6 in-situ CBR values from plate bearing tests on trial pits:

| Test | CBR (%) |
|------|---------|
| 1 | 4.5 |
| 2 | 3.8 |
| 3 | 5.2 |
| 4 | 3.5 |
| 5 | 4.0 |
| 6 | 4.8 |

**Solution:**

**Step 1: These are in-situ CBR values (approximating equilibrium conditions).** Mean = 4.3%, range 3.5-5.2%.

**Step 2: Determine design CBR.**
- Rank: 3.5, 3.8, 4.0, 4.5, 4.8, 5.2.
- With 6 results, the 10th percentile is approximated by the lowest value: 3.5%.
- Design equilibrium CBR = 3.5% (conservative; could argue for ~3.8% using statistical method: mean 4.3 - 1.28 * 0.61 = 3.5%).

**Step 3: Assign foundation class.**
- CBR 3.5% falls in Foundation Class 2 (2.5-5%).
- Capping layer required.

**Step 4: Frost susceptibility check.**
- Oxford Clay: PI typically 30-50%, high clay content, low permeability.
- Generally non-frost-susceptible (clays with PI > 15 have low permeability preventing ice lens formation).
- No frost protection required beyond normal foundation design.

**Result:** Foundation Class 2. Minimum 350 mm capping (Class 6F2 or equivalent) + 225 mm Type 1 sub-base. No frost concern.

---

## M.8 References

1. Highways England (National Highways), *Design Manual for Roads and Bridges*, CD 225: Design for new pavement foundations.
2. TRL, *Report 615: Development of new road foundation design guidance and its implementation*, 2004.
3. British Standards Institution, *BS 1377: Methods of test for soils for civil engineering purposes*, Part 4, 1990.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft -- general DMRB/CD 225 knowledge, verify against current documents |
