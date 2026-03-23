# Culvert Structural Design -- UK Module

> **Parent Skill:** #33 Culvert Structural Design
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 361 (Buried Concrete Box Type Structures); Eurocode basis (EN 1992-1-1 for concrete, EN 1991-2 for loading)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CD 361 | Current | Buried concrete box type structures -- design and detailing | Current -- engineer review required (no local document available) |
| EN 1992-1-1 | Eurocode 2 | Concrete structural design | Current -- UK National Annex applies |
| EN 1991-2 | Eurocode 1 Part 2 | Traffic loads on bridges (LM1, LM3) | Current -- replaced HA/HB loading |
| EN 1997-1 | Eurocode 7 | Geotechnical design (foundation) | Current -- replaced CP 2004 |
| BS EN 1295-1 | Current | Structural design of buried pipelines | Current |

### M.1.2 Institutional Context

In the UK, culvert structural design falls under DMRB (Design Manual for Roads and Bridges) managed by National Highways (formerly Highways England). CD 361 provides specific requirements for buried concrete box type structures. Pipe culvert design follows BS EN 1295-1. Since Eurocode adoption (~2010), UK bridge and structure design uses EN 1991-2 for loading (replacing BS 5400 HA/HB system) and EN 1992 for concrete design.

**Note:** No local copy of DMRB CD 361 is available. This module is knowledge-based and should be flagged as requiring engineer review before application.

### M.1.3 Standard Philosophy

UK culvert design uses Eurocode loading (Load Model 1 for normal traffic, Load Model 3 for special vehicles) rather than the HA/HB system. Earth pressure is calculated per EN 1997-1 with Eurocode partial factors. DMRB CD 361 provides specific requirements for buried box structures including fill depth limits, structural form, and detailing. The UK approach typically requires more detailed analysis than the simplified methods in MoWT Vol 4, with formal Departures from Standards required for non-compliance.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**UK Loading (Eurocode -- knowledge-based):**

| Load Model | Description | Application |
|------------|-------------|-------------|
| LM1 | Tandem axle system + UDL | Normal traffic -- replaces HA loading |
| LM2 | Single axle | Local verification |
| LM3 | Special vehicles | Abnormal traffic -- replaces HB loading |
| LM4 | Crowd loading | Pedestrian areas |

**Earth Pressure Partial Factors (Eurocode, knowledge-based):**

| Factor | ULS (STR) | SLS | Source |
|--------|----------|-----|--------|
| gamma_G (permanent, unfavourable) | 1.35 | 1.00 | EN 1990, Table A2.4(B) |
| gamma_Q (variable, unfavourable) | 1.50 | 1.00 | EN 1990, Table A2.4(B) |

Note: These differ from MoWT Vol 4 factors (gamma_fL = 1.50 for earth pressure). The Eurocode separates permanent (earth) and variable (traffic surcharge) factors.

### M.2.2 Country-Specific Formulas

**Eurocode earth pressure approach:**

The UK uses EN 1997-1 for earth pressure calculations. The coefficient of earth pressure at rest is:

```
K0 = 1 - sin(phi')
```

Where phi' is the effective angle of internal friction. For fill material with phi' = 30 degrees, K0 = 0.50 (same numerical result as Uganda default, different derivation basis).

**Load distribution through fill (DMRB approach):**

DMRB CD 361 provides specific guidance on load distribution through fill to the top of buried structures, which differs from the simplified uniform surcharge approach in MoWT Vol 4. For shallow fills, the Boussinesq distribution or specific DMRB charts apply.

### M.2.3 Classification System

UK classifies culverts and buried structures primarily by:
- **Structural form:** Portal frame, arch, pipe
- **Fill depth:** Different DMRB requirements for different fill depth ranges
- **Road category:** Motorway, all-purpose trunk road, local authority road

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 3 (UK): Earth pressure calculation
  |-- Use Eurocode partial factors (gamma_G = 1.35 permanent, gamma_Q = 1.50 variable)
  |-- K0 = 1 - sin(phi') for at-rest conditions
  |-- Refer to CD 361 for specific buried structure provisions
  +-- Flag as knowledge-based -- engineer review required

Step 4 (UK): Live load surcharge
  |-- Use Eurocode LM1 or LM3 loading
  |-- NOT HA/HB (these are obsolete in the UK)
  +-- Load dispersion through fill per DMRB or Boussinesq

Step 6 (UK): Foundation design
  |-- Use Eurocode 7 (EN 1997-1) for geotechnical design
  |-- NOT CP 2004 (superseded in the UK)
  +-- Partial factor approach per DA1 or DA2
```

### M.3.2 Professional Judgment (UK-Specific)

**Eurocode loading produces different results than HA/HB.** LM1 tandem axle loads are generally more onerous than HA loading for short loaded lengths. Designers must be careful not to mix HA/HB values with Eurocode calculations.

**CD 361 is prescriptive.** Unlike MoWT Vol 4 which gives general guidance, DMRB CD 361 provides mandatory requirements ("shall") for buried concrete box structures. Non-compliance requires a formal Departure from Standards.

**Precast pipe design follows BS EN 1295-1.** This standard provides a comprehensive approach to structural design of buried pipelines, including bedding factors that differ numerically from those used in Uganda practice.

### M.3.3 Common Errors (UK-Specific)

1. **Using HA/HB loading instead of Eurocode load models.** HA/HB loading is from BS 5400, which has been withdrawn in the UK. Eurocode LM1/LM3 must be used.
2. **Using CP 2004 for foundation design.** CP 2004 is superseded by Eurocode 7 in the UK. EN 1997-1 with the UK National Annex must be used.
3. **Not obtaining CD 361 for detailed design.** This module is knowledge-based. Any detailed UK culvert design must reference the actual CD 361 document.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Loading model | LM1 | Normal traffic | ASSUMED: Eurocode LM1 loading | EN 1991-2 |
| Earth pressure K0 | 0.50 | phi' = 30 degrees | ASSUMED: K0 = 0.50 for phi' = 30 deg | EN 1997-1 |
| Concrete class | C32/40 | Not specified | ASSUMED: C32/40 concrete (UK standard for structures) | Common UK practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Earth pressure gamma_G (ULS) | 1.35 | 1.35 | -- | EN 1990, Table A2.4(B) | Flag if Eurocode factor not applied |
| Traffic surcharge gamma_Q (ULS) | 1.50 | 1.50 | -- | EN 1990, Table A2.4(B) | Flag if Eurocode factor not applied |

### M.5.2 Standards Compliance Checks

- **Check:** Eurocode loading used (not HA/HB)
- **Standard:** EN 1991-2
- **Pass condition:** LM1/LM3 loading applied
- **Fail action:** SENIOR REVIEW -- HA/HB loading is obsolete in the UK. Use Eurocode load models.

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Any non-compliance with CD 361 mandatory requirements ("shall" clauses) requires a formal Departure, approved by the Overseeing Organisation (typically National Highways for trunk roads).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No local CD 361 document | Cannot verify detailed requirements | SENIOR REVIEW -- UK culvert design requires DMRB CD 361 (Buried Concrete Box Type Structures). This module is knowledge-based. Obtain and verify against actual standard before detailed design. |
| Eurocode loading application | Complex load model | NOTE -- Eurocode LM1/LM3 loading requires specific application rules from EN 1991-2. Verify load positioning for critical design effects. |

---

## M.7 Worked Example -- UK

### Example: 2.0m x 1.5m Box Culvert, 1.5m Fill, UK Loading

**Source:** Conceptual application of Eurocode principles

**Given:**
- Culvert size: 2000 mm span x 1500 mm rise (single-cell RC box)
- Fill depth: 1.5 m
- UK context -- Eurocode loading
- phi' = 30 degrees for fill material

**Solution (conceptual -- no local CD 361 available):**

**Step 1 -- Earth pressure:**
- K0 = 1 - sin(30) = 0.50
- gamma_soil = 19 kN/m3 (assumed)
- Nominal vertical earth pressure = 19 x 1.5 = 28.5 kN/m2
- Design P_v (ULS, STR): gamma_G x P_v = 1.35 x 28.5 = 38.5 kN/m2

**Step 2 -- Traffic loading:**
- Eurocode LM1: tandem axle (300 kN per lane for Lane 1) + UDL (9 kN/m2 for Lane 1)
- At 1.5 m fill depth, the tandem axle load disperses through fill
- The surcharge effect on the culvert depends on the precise DMRB/CD 361 dispersion methodology
- For preliminary purposes, an equivalent surcharge of approximately 15-25 kN/m2 might apply (this must be verified against CD 361)

**Step 3 -- Note on approach:**
- The exact procedure for UK design requires CD 361, which specifies fill-dependent load dispersion
- Eurocode partial factors (gamma_G = 1.35, gamma_Q = 1.50) apply differently than MoWT factors
- Foundation design would use Eurocode 7 (EN 1997-1), not CP 2004

**Result:** This example demonstrates the UK approach conceptually. Exact values require CD 361 and full Eurocode application. The key differences from Uganda are: different loading model (LM1 not HA), different partial factors (1.35/1.50 not 1.50/1.50), different foundation code (EC7 not CP 2004).

SENIOR REVIEW -- UK culvert design requires DMRB CD 361 and full Eurocode application. This example is conceptual only. Obtain CD 361 for detailed design.

---

## M.8 References

1. DMRB CD 361, *Buried Concrete Box Type Structures* -- not available locally; knowledge-based content.
2. EN 1991-2:2003, *Eurocode 1: Actions on structures -- Part 2: Traffic loads on bridges*, with UK National Annex.
3. EN 1992-1-1:2004, *Eurocode 2: Design of concrete structures -- Part 1-1: General rules*, with UK National Annex.
4. EN 1997-1:2004, *Eurocode 7: Geotechnical design -- Part 1: General rules*, with UK National Annex.
5. BS EN 1295-1, *Structural design of buried pipelines under various conditions of loading*.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- knowledge-based content. DMRB CD 361 not available locally. Eurocode loading and partial factors documented conceptually. |
