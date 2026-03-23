# Simply Supported Beam Bridges -- Uganda Module

> **Parent Skill:** #37 Simply Supported Beam Bridges
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual Vol 4 (2010); BS 5400 Part 4 (concrete) and Part 5 (composite) as referenced by MoWT
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 4 | January 2010 | Loading provisions (Sections 3-6) | Current |
| BS 5400 Part 4 | As referenced by MoWT | Concrete bridge design | Referenced through MoWT Vol 4 |
| BS 5400 Part 5 | As referenced by MoWT | Composite bridge design | Referenced through MoWT Vol 4 |

### M.1.2 Institutional Context

MoWT Vol 4 provides the loading specifications. For material design (concrete member sizing, reinforcement detailing), MoWT references BS 5400 Parts 4 and 5. These are applied through MoWT, not independently. Detailed reinforcement design requires a specialist structural engineer familiar with BS 5400 Part 4.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Span-to-Depth Ratios:** --> `tables/uganda_span_depth_ratios.json`

Reference load combinations from `skills/structures/bridge-loading/tables/uganda_load_combinations.json`.

**Table USSB.1: Bridge Type Selection by Span Range**

| Span Range (m) | Recommended Type | Construction Complexity | Uganda Suitability |
|----------------|-----------------|----------------------|-------------------|
| up to 12 | RC deck slab | Low | Excellent -- simple formwork |
| 8-25 | RC T-beam | Medium | Excellent -- most common in Uganda |
| 15-40+ | Steel-concrete composite | High | Limited -- requires steel fabrication/erection |
| 10-35 | Precast prestressed | Medium-High | Depends on crane access and precasting facilities |

### M.2.2 Country-Specific Formulas

**Simply supported bending moment formulas (per lane):**

```
HA UDL moment:  M_udl = w * L^2 / 8
HA KEL moment:  M_kel = P * L / 4
HB moment:      Position 4-axle vehicle for maximum effect (varies with inner spacing)
```

**Factored design moment (Combination 1 ULS):**

```
M_d = gamma_fL * gamma_f3 * (M_dead + M_live)
```

Where:
- gamma_fL from `tables/uganda_load_combinations.json` (Combination 1)
- gamma_f3 = 1.10 for ULS (BS 5400 Part 4 as referenced by MoWT)

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Bridge type selection
  |-- RC T-beam is default for 10-25m spans
  |    (most common bridge type in Uganda, proven construction practice)
  |-- RC deck slab for very short spans (< 10m)
  |-- Composite only if steel erection logistics confirmed
  +-- Precast if precasting yard and crane access available

Step 5 (Uganda): Dead loads
  |-- Concrete density: 24 kN/m3 (reinforced concrete)
  |-- Surfacing: typically 75-100mm bituminous at 24 kN/m3
  +-- Parapets: typically concrete posts and rails, ~1.0 kN/m per side
```

### M.3.2 Professional Judgment (Uganda-Specific)

**RC T-beam is the workhorse of Uganda bridge construction.** It requires only basic construction technology and locally available materials. Most Uganda contractors have experience with T-beam construction. For spans up to 25m, this is almost always the preferred option.

**Construction supervision is critical** (connects to Skill #54 in Phase 5). Uganda bridge construction quality depends heavily on supervision of formwork, reinforcement placement, and concrete quality. The design should allow for practical construction tolerances.

**Crane availability limits precast options.** In rural Uganda, crane mobilisation may be prohibitively expensive or impractical. Precast beams require crane capacity proportional to beam weight. Verify logistics before specifying precast.

---

## M.4 Country-Specific Defaults

| Parameter | Uganda Default | Condition | Rationale |
|-----------|--------------|-----------|-----------|
| Bridge type (10-25m) | RC T-beam | Default for Uganda | Most common, proven construction practice |
| Surfacing thickness | 100 mm | Not specified | Common bridge surfacing in Uganda |
| Parapet load | 1.0 kN/m per side | Concrete posts and rails | Typical MoWT parapet |
| gamma_f3 (ULS) | 1.10 | BS 5400 Part 4 | As referenced by MoWT Vol 4 |

---

## M.5 Country-Specific Validation

- **Load factors:** Verify gamma_fL values from `uganda_load_combinations.json` used (Combination 1: HA alone gamma_fL = 1.50, dead concrete gamma_fL = 1.15).
- **gamma_f3:** Verify gamma_f3 = 1.10 applied to load effects (not to loads directly).
- **Bridge type vs span:** Verify selected type falls within recommended span range (Table USSB.1).
- **Span-to-depth ratio:** Verify depth is within range from `uganda_span_depth_ratios.json`.

---

## M.6 Country-Specific Escalation

| Trigger | Action |
|---------|--------|
| Span > 25m RC T-beam | SENIOR REVIEW -- Consider composite or precast option. |
| No crane access for precast | NOTE -- Precast option not available without crane mobilisation. |
| Detailed reinforcement required | SENIOR REVIEW -- Specialist structural engineer with BS 5400 Part 4 experience required. |

---

## M.7 Worked Example -- Uganda

### Example: 20m RC T-beam Bridge Preliminary Design

**Given:**
- Span: 20m simply supported
- Carriageway: 7.3m (2 notional lanes)
- Loading: HA + 25 HB, Combination 1 (from Skill #36)
- HA UDL: W = 30.0 kN/m (L = 20m <= 30m)
- HA KEL: 120 kN per lane

**Solution:**

**Step 1 -- Select bridge type:** RC T-beam (20m within 8-25m range, suitable for Uganda).

**Step 2 -- Estimate beam depth:**
From span-to-depth ratio L/14 (mid-range for RC T-beam):
d = 20/14 = 1.43m. Round to d = 1.4m.

**Step 3 -- Bridge width:**
Carriageway 7.3m + 2 parapets (0.5m each) = 8.3m total
Assume 5 T-beams at ~1.7m centres spanning the 8.3m width.

**Step 4 -- Dead loads (per metre of bridge):**
Self-weight estimate: 5 beams, each with web 0.3m x 1.0m + flange contribution
Approximate self-weight: ~15 kN/m per metre of bridge (including slab)
Superimposed dead: surfacing 0.1m * 7.3m * 24 = 17.5 kN/m + parapets 2 * 1.0 = 2.0 kN/m
Total dead per metre: ~15 + 17.5 + 2.0 = 34.5 kN/m

**Step 5 -- HA moment (per lane):**
M_udl = 30.0 * 20^2 / 8 = 1,500 kNm per lane
M_kel = 120 * 20 / 4 = 600 kNm per lane
Total HA moment per lane = 2,100 kNm

**Step 6 -- Dead load moment (total bridge):**
M_dead = 34.5 * 20^2 / 8 = 1,725 kNm (total bridge)

**Step 7 -- Factored moment (Combination 1 ULS, HA alone, 2 lanes):**
M_d = gamma_f3 * [gamma_fL(dead) * M_dead + gamma_fL(HA) * M_HA * (2 full + 0 partial lanes)]
M_d = 1.10 * [1.15 * 1,725 + 1.50 * 2,100 * 2]
M_d = 1.10 * [1,984 + 6,300]
M_d = 1.10 * 8,284 = **9,112 kNm** (total bridge, ULS)

Per beam (5 beams): approximately 1,822 kNm per beam (simplified equal distribution -- actual requires grillage analysis).

**Step 8 -- Support reactions:**
Total ULS vertical reaction per support = M_d related shear:
V_dead = 34.5 * 20 / 2 = 345 kN
V_HA per lane = 30.0 * 20 / 2 + 120 = 420 kN (UDL shear + KEL at support)
V_HA 2 lanes = 840 kN
Factored V = 1.10 * [1.15 * 345 + 1.50 * 840] = 1.10 * [397 + 1,260] = **1,823 kN per support (total bridge)**

**Result:** Preliminary sizing: 20m RC T-beam, depth 1.4m, 5 beams, total bridge width 8.3m. Factored midspan moment approximately 9,100 kNm (total bridge). Support reaction approximately 1,800 kN per support.

SENIOR REVIEW -- Preliminary sizing complete. Detailed reinforcement design per BS 5400 Part 4 (as referenced by MoWT Vol 4) required by specialist structural engineer.

---

## M.8 References

1. Ministry of Works and Transport, *Road Design Manual, Volume 4: Bridge Design*, January 2010.
2. BS 5400: Part 4, Code of Practice for Design of Concrete Bridges (as referenced by MoWT Vol 4).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with RC T-beam preliminary design, span-to-depth ratios, worked example for 20m bridge |
