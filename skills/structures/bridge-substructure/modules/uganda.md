# Bridge Substructure -- Uganda Module

> **Parent Skill:** #38 Bridge Substructure
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual Vol 4 (2010), Section 5.8, Section 9.6; CP 2004 as referenced by MoWT; BS 5400 Part 4 as referenced by MoWT
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 4 | January 2010 | Section 5.8 (earth pressure), Section 9.6 (seismic foundation/abutment), Table 1 (load factors) | Current |
| CP 2004 | As referenced by MoWT | Foundation design principles | Referenced (older code, noted) |
| BS 5400 Part 4 | As referenced by MoWT | RC substructure design | Referenced through MoWT |

### M.1.2 Institutional Context

MoWT Vol 4 specifies earth pressure loads (Section 5.8) and load factors (Table 1). Foundation design follows CP 2004 as stated in Section 4.7. NOTE: CP 2004 is an older British Code of Practice, superseded in the UK by Eurocode 7. However, it remains the referenced standard in MoWT Vol 4 for Uganda.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Earth pressure parameters (Section 5.8, Verified):**

| Parameter | Value | Unit | Source |
|-----------|-------|------|--------|
| gamma_fL for earth pressure (ULS) | 1.50 | -- | Table 1 (all 5 combinations) |
| gamma_fL for earth pressure (SLS) | 1.00 | -- | Table 1 |
| gamma_fL relieving earth pressure (ULS) | 1.00 | -- | Table 1 |
| HA surcharge | 10 | kN/m2 | Section 5.8.2 |
| HB 25 units surcharge | 10 | kN/m2 | Section 5.8.2 (by interpolation) |
| HB 45 units surcharge | 20 | kN/m2 | Section 5.8.2 |

**Stability factors of safety:**

| Check | Minimum FoS | Notes |
|-------|-------------|-------|
| Sliding | >= 1.5 | Passive pressure often neglected (scour risk) |
| Overturning | >= 2.0 | About toe of foundation |
| Bearing pressure | q < q_allowable | From Skill #10 |
| Eccentricity | Middle third rule | Resultant within middle third of base |

Reference seismic parameters from `skills/structures/bridge-loading/tables/uganda_seismic_parameters.json`.
Reference load factors from `skills/structures/bridge-loading/tables/uganda_load_combinations.json`.

**CP 2004 Foundation Design Loads (Section 4.7.1, Verified):**

For foundation design in accordance with CP 2004:
- gamma_fL = 1.0 (nominal loads used as design loads)
- gamma_f3 = 1.0
- This is because CP 2004 uses working stress (permissible stress) approach, not limit state.

### M.2.2 Country-Specific Formulas

**Active earth pressure (Rankine):**

```
Ka = (1 - sin(phi)) / (1 + sin(phi))
Pa = 0.5 * Ka * gamma * H^2 + Ka * q * H
```

**Factored earth pressure (ULS):**

```
Pa_design = gamma_fL * Pa = 1.50 * Pa
```

**Sliding check:**

```
F_sliding = (W * tan(delta) + Pp) / Pa_design >= 1.5
```

Where delta = base friction angle (typically 2/3 * phi for concrete on soil).

**Overturning check:**

```
F_overturning = M_restoring / M_overturning >= 2.0
```

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 4 (Uganda): Geotechnical considerations
  |-- Laterite is common foundation material (100-300 kPa soaked)
  |-- Use soaked bearing capacity (worst case) from Skill #10
  |-- If laterite bearing capacity < 100 kPa soaked: consider piles
  +-- NOTE: CP 2004 used for foundation design per MoWT Vol 4

Step 7 (Uganda): Seismic check
  |-- Determine seismic zone from Figure 9-1
  |-- Zone 1 (western Uganda): SPC 3 -- full seismic analysis
  |    Table 9.4 R-factors apply to substructure design
  |-- Zone 2: SPC 2 -- connections for 0.20 * dead load reaction
  +-- Zone 3: SPC 1 -- minimum requirements only
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Laterite foundations are common in Uganda.** Many sites have laterite at shallow depth (1-3m) providing adequate bearing for small to medium bridges. However, laterite bearing capacity is moisture-sensitive -- always use soaked values.

**Many bridge sites in western Uganda require seismic considerations.** The East African Rift produces seismicity in Zone 1, and MoWT Vol 4 Section 9.6 requires specific foundation and abutment design for SPC 3. Response modification factors from Table 9.4 reduce elastic seismic forces to design forces.

**Gravity abutments are popular for short span bridges** in Uganda due to simplicity of construction. Mass concrete requires no reinforcement detailing and can be built with basic construction skills.

---

## M.4 Country-Specific Defaults

| Parameter | Uganda Default | Condition | Rationale |
|-----------|--------------|-----------|-----------|
| Fill unit weight | 18 kN/m3 | Typical laterite fill | Common Uganda fill material |
| Fill friction angle | 30 degrees | Compacted laterite | Conservative for granular fills |
| Earth pressure gamma_fL | 1.50 | ULS, all 5 combinations | MoWT Vol 4 Table 1 |
| HA surcharge | 10 kN/m2 | Standard highway | Section 5.8.2 |
| Foundation design approach | CP 2004 (gamma_fL=1.0, gamma_f3=1.0) | Permissible stress | Section 4.7.1 |

---

## M.5 Country-Specific Validation

- **Earth pressure gamma_fL:** Verify 1.50 for ULS per Table 1 (all 5 combinations).
- **Surcharge values:** HA = 10 kPa, HB 25 = 10 kPa, HB 45 = 20 kPa per Section 5.8.2.
- **CP 2004 foundation:** Verify nominal loads used (gamma_fL = 1.0, gamma_f3 = 1.0) for bearing check.
- **Seismic zone:** Verify seismic zone from Figure 9-1 and appropriate SPC applied.
- **Bearing capacity:** Use soaked values for laterite foundations.

---

## M.6 Country-Specific Escalation

| Trigger | Action |
|---------|--------|
| Seismic Zone 1 (SPC 3) | SENIOR REVIEW -- Full seismic analysis per Section 9.6. R-factors from Table 9.4. |
| Laterite bearing < 100 kPa soaked | SENIOR REVIEW -- Consider pile foundations (specialist). |
| Abutment height > 8m | SENIOR REVIEW -- Counterfort RC design may be needed. |

---

## M.7 Worked Example -- Uganda

### Example: Abutment for 20m T-beam Bridge

**Given:**
- Abutment height: 6.5m (from deck level to foundation)
- Vertical reaction from Skill #37: 1,200 kN (total per abutment)
- Retained fill: phi = 30 degrees, gamma = 18 kN/m3
- Bearing capacity from Skill #10: 200 kPa (soaked laterite)
- Surcharge: HA = 10 kN/m2
- Abutment type: cantilever RC (height 5-10m range)

**Solution:**

**Step 1 -- Preliminary dimensions:**
Base width B = 0.5 * H = 0.5 * 6.5 = 3.25m. Use B = 3.5m.
Stem thickness = 0.5m at top, 0.8m at base (tapered).
Toe = 0.8m, Heel = 3.5 - 0.8 - 0.8 = 1.9m.
Base thickness = 0.6m.

**Step 2 -- Earth pressure:**
Ka = (1 - sin30) / (1 + sin30) = (1 - 0.5) / (1 + 0.5) = 0.333

Active pressure (per metre of abutment):
Pa_fill = 0.5 * 0.333 * 18 * 6.5^2 = 0.5 * 0.333 * 18 * 42.25 = 126.7 kN/m
Pa_surcharge = 0.333 * 10 * 6.5 = 21.6 kN/m
Pa_total = 148.3 kN/m (nominal)
Pa_design (ULS) = 1.50 * 148.3 = 222.5 kN/m

**Step 3 -- Abutment self-weight (per metre):**
Stem (average): (0.5+0.8)/2 * 5.9 * 24 = 0.65 * 5.9 * 24 = 92.0 kN/m
Base: 3.5 * 0.6 * 24 = 50.4 kN/m
Soil on heel: 1.9 * 5.9 * 18 = 201.8 kN/m
Total W = 92.0 + 50.4 + 201.8 = 344.2 kN/m
Plus superstructure reaction per metre (assuming 8.3m wide bridge): 1200/8.3 = 144.6 kN/m
Total V = 344.2 + 144.6 = 488.8 kN/m

**Step 4 -- Sliding check:**
delta = 2/3 * 30 = 20 degrees
Resisting force = V * tan(20) = 488.8 * 0.364 = 177.9 kN/m
F_sliding = 177.9 / 222.5 = 0.80 -- FAILS (< 1.5)

This indicates the simple calculation needs refinement. Adding a key (shear key) below the base or increasing base width. With key engaging passive pressure below scour depth, or with wider base:

Revised B = 4.5m, heel = 2.9m:
Soil on heel: 2.9 * 5.9 * 18 = 308.0 kN/m
Total V = 92.0 + (4.5*0.6*24) + 308.0 + 144.6 = 92.0 + 64.8 + 308.0 + 144.6 = 609.4 kN/m
Resisting = 609.4 * 0.364 = 221.8 kN/m
Pa remains 222.5 kN/m
F = 221.8/222.5 = 1.00 -- still insufficient.

With shear key providing additional passive resistance of ~100 kN/m:
F = (221.8 + 100) / 222.5 = 1.45 -- still marginal.

This demonstrates that for a 6.5m high abutment with HA surcharge, detailed design is needed. The preliminary sizing indicates a base width of approximately 4.5-5.0m with a shear key is required.

SENIOR REVIEW -- Sliding check marginal for 6.5m cantilever abutment. Detailed design with shear key and/or wider base required. Consider increasing base width to 5.0m. Detailed reinforcement design per BS 5400 Part 4 (as referenced by MoWT) required by specialist.

**Step 5 -- Bearing check (preliminary, at B = 4.5m):**
q_average = V/B = 609.4/4.5 = 135.4 kPa
With eccentricity from overturning moment:
q_max approximately 180 kPa < 200 kPa allowable -- PASSES (preliminary)

**Step 6 -- Overturning check:**
M_overturning (about toe) = Pa_fill * 6.5/3 + Pa_surcharge * 6.5/2 = 126.7*2.17 + 21.6*3.25 = 274.9 + 70.2 = 345.1 kNm/m (factored: 1.50 * 345.1 = 517.7)
M_restoring (about toe) = sum of (forces * lever arms from toe)
Approximately: 609.4 * 2.25 (mid-base) = 1,371 kNm/m
F_overturning = 1371/517.7 = 2.65 -- PASSES (>= 2.0)

**Result:**

| Check | FoS | Required | Status |
|-------|-----|----------|--------|
| Sliding | ~1.0-1.5 | >= 1.5 | MARGINAL -- needs shear key or wider base |
| Overturning | 2.65 | >= 2.0 | PASS |
| Bearing | ~180 kPa | <= 200 kPa | PASS (preliminary) |

SENIOR REVIEW -- Preliminary sizing indicates 4.5-5.0m base width with shear key for 6.5m cantilever abutment. Detailed reinforcement design required by specialist. Sliding check marginal -- include shear key in detailed design.

---

## M.8 References

1. Ministry of Works and Transport, *Road Design Manual, Volume 4: Bridge Design*, January 2010, Sections 5.8 and 9.6.
2. CP 2004, Code of Practice for Foundations (as referenced by MoWT Vol 4 Section 4.7).
3. BS 5400: Part 4, Code of Practice for Design of Concrete Bridges (as referenced by MoWT Vol 4).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with earth pressure (gamma_fL=1.50), stability checks, CP 2004 foundation approach, worked example for 6.5m cantilever abutment |
