# Erosion Protection -- UK Module

> **Parent Skill:** #32 Erosion Protection
> **Country/Jurisdiction:** United Kingdom
> **Standards:** CIRIA C689, DMRB HA 107/04
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| CIRIA C689 | 2010 | Culvert Design and Operation Guide -- scour protection | Current |
| DMRB HA 107/04 | 2004 | Design of Outfall and Culvert Details | Current |
| CIRIA C551 | 2001 | Manual on Scour at Bridges and Other Hydraulic Structures | Current |

**Note:** These standards are not available locally for detailed reference. This module is knowledge-based and provides the UK approach at a conceptual level. Engineer review required before application.

### M.1.2 Institutional Context

In England, Highways England (National Highways) applies DMRB standards for trunk roads. Local highway authorities generally follow DMRB guidance. CIRIA guides are widely used by consulting engineers for detailed hydraulic design.

### M.1.3 Standard Philosophy

UK practice follows the same hydraulic principles as universal erosion protection design. The emphasis is on:
- Environmental sensitivity -- minimising impact on aquatic habitats
- Fish passage -- ensuring erosion protection does not create barriers to fish migration
- Aesthetics and landscape integration
- Whole-life cost assessment including maintenance

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

UK permissible velocities are similar to universal values. CIRIA C689 provides detailed guidance on scour assessment and protection design. Key differences from tropical practice:

- Greater emphasis on environmental mitigation
- Bioengineering solutions (willow spiling, coir rolls) used where appropriate
- Pre-cast concrete headwall and wingwall designs standardised
- Less use of gabions compared to tropical practice

### M.2.2 Country-Specific Formulas

UK uses the same Isbash-type formulae for rip-rap sizing. CIRIA C689 provides additional methods including the Escarameia-May formula for rip-rap design considering turbulence intensity:

```
D50 = C_T * V^2 / (2 * g * (Ss - 1))
```

Where C_T is a turbulence coefficient (higher than Isbash coefficient for high turbulence).

### M.2.3 Classification System

UK does not have a formal erosion protection classification but categorises scour as:
- Local scour (at structures)
- Contraction scour
- General scour (natural channel processes)

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

UK approach follows the same velocity-based logic as universal:
1. Assess velocity vs permissible for bed/bank material
2. If V_actual > V_permissible, design protection
3. Consider environmental constraints before selecting protection type

### M.3.2 Professional Judgment (UK-Specific)

**Environmental considerations are paramount in UK practice.** The Water Framework Directive, wildlife legislation, and planning requirements often constrain protection options. Hard engineering (concrete, rip-rap) may require environmental impact assessment. Softer solutions (bioengineering, planted gabions) are preferred where hydraulically adequate.

**Fish passage requirements affect culvert outlet design.** Environment Agency guidance requires that culvert outlets do not create barriers to fish migration. This may affect the choice of scour protection at outlets -- the protection must allow fish to pass during low-flow conditions.

**Whole-life cost analysis is standard practice.** UK designs consider maintenance costs over the design life (typically 120 years for trunk road structures). Gabion wire life (25-50 years) means gabions require at least one replacement cycle.

### M.3.3 Common Errors (UK-Specific)

1. **Not considering fish passage at culvert outlets.** Environmental legislation requires fish passage assessment.
2. **Over-engineering protection without environmental assessment.** Hard engineering solutions may be disproportionate to the risk and environmentally damaging.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design life | 120 years | Trunk road | ASSUMED: 120-year design life per DMRB | Highways England standard |
| Stone Ss | 2.65 | Not specified | ASSUMED: Ss = 2.65 (UK sourced stone) | Typical UK aggregate |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

Same as universal validation. UK practice uses the same hydraulic principles.

### M.5.2 Standards Compliance Checks

- **Check:** Environmental impact assessment completed for hard engineering solutions
- **Standard:** CIRIA C689, Environment Agency guidance
- **Pass condition:** Environmental constraints documented
- **Fail action:** NOTE -- Environmental impact assessment recommended for proposed erosion protection.

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Where environmental or landscape constraints prevent standard protection, a departure may be required.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Fish passage concern | Environmental legislation | NOTE -- Assess fish passage requirements at culvert outlet per Environment Agency guidance. |
| Environmental constraint | Water Framework Directive | NOTE -- Consider softer engineering solutions (bioengineering) where hydraulically adequate. |

---

## M.7 Worked Example -- UK

### Example: Culvert Outlet Protection

**Source:** Based on CIRIA C689 principles (conceptual -- no local DMRB document available)

**Given:**
- Culvert: 900 mm diameter concrete pipe on a single carriageway road
- Outlet velocity: 3.0 m/s
- Bed material: Sandy gravel (permissible velocity ~1.5 m/s)
- Environmental constraint: Fish passage required, no significant wildlife site

**Solution:**

**Step 1 -- Assess erosion risk:**
V_actual = 3.0 m/s > V_permissible = 1.5 m/s --> Protection required

**Step 2 -- Environmental screening:**
Fish passage: Required -- protection design must allow low-flow passage
Wildlife constraints: None identified

**Step 3 -- Select protection type:**
Rip-rap apron with natural stone, designed to allow fish passage at low flows.
Apron surface to be level with natural bed to avoid creating a drop.

**Step 4 -- Size rip-rap:**
D50 = V^2 / (2 * g * 0.86 * 1.65) = 9.0 / 27.8 = 0.32 m = **320 mm**

**Step 5 -- Apron dimensions:**
Length = 4 x 0.9 = 3.6 m; Width = 3 x 0.9 = 2.7 m

**Result:** Rip-rap apron with D50 = 320 mm, 3.6 m long, 2.7 m wide, with geotextile filter. Apron set flush with natural bed for fish passage.

NOTE: Engineer review required -- no local DMRB/CIRIA document available for detailed design verification.

---

## M.8 References

1. CIRIA, *C689 Culvert Design and Operation Guide*, 2010.
2. Highways Agency, *HA 107/04 Design of Outfall and Culvert Details*, DMRB, 2004.
3. CIRIA, *C551 Manual on Scour at Bridges and Other Hydraulic Structures*, 2001.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- knowledge-based, CIRIA C689 principles, environmental considerations |
