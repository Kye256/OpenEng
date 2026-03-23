# Erosion Protection -- Uganda Module

> **Parent Skill:** #32 Erosion Protection
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 2 (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 2 | January 2010 | Section 9.14 (Effects of Scour on Culverts), Section 9.15 (Protection of Culverts Against Scour), Section 10.10 (River Training and Stabilization) | Current |

### M.1.2 Institutional Context

MoWT Vol 2 covers drainage design for all roads in Uganda. UNRA applies this standard for national road projects. Erosion protection is required at all culvert outlets where outlet velocity exceeds the permissible velocity for the native soil.

### M.1.3 Standard Philosophy

MoWT Vol 2 addresses erosion protection primarily in the context of culvert outlets (Sections 9.14-9.15) and bridge sites (Section 10.10). The approach is pragmatic: assess scour risk based on velocity, select protection type based on locally available materials, and size elements using established engineering formulae. The manual emphasises practical solutions appropriate to Uganda's construction capabilities and material availability.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UE.1: Permissible Velocities by Soil Type (MoWT Vol 2, Section 9.14)**

| Soil Type | Permissible Velocity (m/s) | Notes |
|-----------|---------------------------|-------|
| Fine sand, sandy loam | 0.3-0.6 | Highly erodible |
| Silt, silty loam | 0.6-1.0 | Moderately erodible |
| Firm clay, clay loam | 1.0-1.5 | Moderate resistance |
| Gravel, coarse sand | 1.5-2.5 | Good resistance |
| Cobbles, boulders | 2.5-4.0 | High resistance |
| Rock (intact) | > 4.0 | Very high resistance |

**Source:** Engineering practice consistent with MoWT Vol 2 Section 9.14 guidance. Values are representative for design purposes.

**Table UE.2: Protection Type Selection by Velocity Range**

| Velocity Range (m/s) | Protection Type | Typical D50 (mm) | Notes |
|----------------------|-----------------|-------------------|-------|
| 1.5-3.0 | Stone pitching or rip-rap | 150-300 | Standard protection |
| 3.0-4.5 | Heavy rip-rap or gabion mattress | 300-500 | Requires larger stone or gabions |
| 4.5-6.0 | Gabion baskets or concrete apron | -- | Structured protection required |
| > 6.0 | Energy dissipation structure | -- | Specialist hydraulic design |

**Table UE.3: Gabion Basket Specifications**

| Parameter | Specification | Source |
|-----------|--------------|--------|
| Standard basket size | 2.0 x 1.0 x 0.5 m or 2.0 x 1.0 x 1.0 m | Common Uganda practice |
| Wire mesh | Galvanized or PVC-coated, 2.7-3.4 mm diameter | MoWT/general specification |
| Fill stone | 100-250 mm, hard, durable, weathering-resistant | Hand-packed for density |
| Mesh aperture | 60 x 80 mm or 80 x 100 mm hexagonal | Standard double-twist mesh |

### M.2.2 Country-Specific Formulas

**Rip-rap D50 from outlet velocity (simplified Isbash):**

```
D50 = V^2 / (2 * g * C_s * (Ss - 1))
```

Where:
- V = outlet velocity (m/s)
- g = 9.81 m/s2
- C_s = 0.86 (high turbulence at culvert outlet)
- Ss = 2.65 (typical Uganda stone specific gravity)

For V = 3.5 m/s: D50 = 3.5^2 / (2 * 9.81 * 0.86 * 1.65) = 12.25 / 27.8 = 0.44 m = 440 mm

**Apron dimensions (MoWT Section 9.15 guidance):**

```
Apron length = 3 to 4 x culvert diameter (D)
Apron width = 2 x D + channel width (or 3 x D minimum)
Apron thickness = 1.5 x D50, minimum 300 mm
```

### M.2.3 Classification System

MoWT does not have a formal erosion protection classification system. Protection is selected based on:
- Velocity vs permissible velocity comparison
- Local material availability
- Construction capability
- Design life requirements

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 4 (Uganda): Select protection type
  |-- V < 1.5 m/s and soil is clay/gravel: no protection needed
  |-- V = 1.5-3.0 m/s: stone pitching or rip-rap
  |    Consider local stone availability
  |-- V = 3.0-4.5 m/s: heavy rip-rap or gabion mattress
  |    Gabions preferred if suitable stone size not available
  |-- V = 4.5-6.0 m/s: gabion baskets or concrete apron
  |    Cost comparison: gabions often cheaper than concrete in Uganda
  +-- V > 6.0 m/s: ESCALATE -- energy dissipation structure required
       Reference Skill #39 for bridge-scale solutions
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Gabion baskets are the preferred protection method in Uganda.** They use locally available stone (100-250 mm) and semi-skilled labour. Gabion construction is well understood by Ugandan contractors. Wire mesh durability is the main concern -- always specify PVC-coated or heavily galvanized wire in tropical conditions.

**Stone pitching is widely used for ditch lining and moderate protection.** Flat stones (150-300 mm) are laid by hand on a mortar bed. Common for side drain lining in steep sections and at culvert outlets with moderate velocity.

**Concrete aprons are used for high-flow culverts and box culverts.** More expensive than gabions but more durable for high-velocity situations. Common for culverts on Class I and II roads with large flows.

**Rip-rap stone availability varies significantly by region.** Western Uganda (volcanic geology) has abundant basalt. Central Uganda has laterite and granite. Some areas require stone to be transported from quarries, significantly increasing cost. Always check local availability before specifying rip-rap.

**Downstream channel erosion is a persistent maintenance issue.** Many culvert outlets in Uganda show erosion damage due to missing or inadequate protection. Designing adequate outlet protection at the initial construction stage is far more cost-effective than maintenance repairs.

### M.3.3 Common Errors (Uganda-Specific)

1. **Not specifying PVC-coated gabion wire in tropical conditions.** Plain galvanized wire corrodes within 5-10 years in Uganda's humid climate. PVC coating extends life to 25+ years.
2. **Using undersized stone fill in gabions.** Stone smaller than 100 mm falls through the mesh aperture. Minimum stone size must exceed the mesh opening.
3. **Omitting the filter layer beneath rip-rap or gabion mattresses.** Common in Uganda practice but leads to undermining failure within a few years.
4. **Not extending protection far enough downstream.** Scour holes in Uganda's lateritic soils can develop rapidly, extending 5-6 culvert diameters downstream.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Stone Ss | 2.65 | Not specified | ASSUMED: Stone Ss = 2.65 (typical Uganda basalt/granite) | Field experience |
| Gabion wire | PVC-coated, 3.0 mm | Not specified | ASSUMED: PVC-coated gabion wire for tropical durability | Best practice for Uganda |
| Filter layer | Non-woven geotextile | Not specified | ASSUMED: Geotextile filter beneath rip-rap/gabions | Standard practice |
| Apron length | 4 x D | Not specified | ASSUMED: 4 x culvert diameter (conservative) | MoWT Section 9.15 guidance |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| D50 (rip-rap) | 100 | 800 | mm | Engineering practice | Warn if > 600 (availability concern) |
| Gabion stone size | 100 | 250 | mm | Standard specification | Reject if < mesh aperture |
| Apron length | 2*D | 6*D | m | MoWT Section 9.15 | Warn if < 3*D |

### M.5.2 Standards Compliance Checks

- **Check:** Outlet velocity exceeds permissible velocity for soil type
- **Standard:** MoWT Vol 2, Section 9.14
- **Pass condition:** V_outlet <= V_permissible OR protection designed
- **Fail action:** SENIOR REVIEW -- Culvert outlet velocity [X] m/s exceeds permissible [Y] m/s for [soil type]. Design erosion protection.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| V > 6 m/s | Beyond rip-rap/gabion capability | SENIOR REVIEW -- Outlet velocity [X] m/s requires energy dissipation structure. Specialist hydraulic design needed. |
| Large stone not locally available | Cannot construct rip-rap | NOTE -- D50 = [X] mm stone not available locally. Consider gabion baskets (smaller stone) or concrete apron. |
| Gabion wire corrosion concern | Tropical climate durability | NOTE -- Specify PVC-coated or epoxy-coated gabion wire for minimum 25-year design life. |

---

## M.7 Worked Example -- Uganda

### Example: Culvert Outlet Protection, Class II Road

**Source:** Based on MoWT Vol 2 Sections 9.14-9.15 principles

**Given:**
- Culvert: 1200 mm diameter reinforced concrete pipe
- Design flow: Q = 1.8 m3/s (from Skill #29, 25-year return period)
- Outlet velocity: V = 3.5 m/s (from Skill #31 outlet control calculation)
- Native soil at outlet: Sandy clay
- Permissible velocity for sandy clay: 0.8 m/s (Table UE.1)

**Solution:**

**Step 1 -- Assess erosion risk:**
V_actual = 3.5 m/s >> V_permissible = 0.8 m/s
Erosion risk: HIGH -- protection required

**Step 2 -- Select protection type:**
V = 3.5 m/s falls in the 3.0-4.5 m/s range --> Heavy rip-rap or gabion mattress (Table UE.2)
Local stone availability: granite quarry 15 km away, sizes up to 500 mm available.
Decision: Rip-rap apron with geotextile filter

**Step 3 -- Size rip-rap D50:**
D50 = V^2 / (2 * g * C_s * (Ss - 1))
D50 = 3.5^2 / (2 * 9.81 * 0.86 * 1.65)
D50 = 12.25 / 27.8
D50 = 0.44 m = **440 mm** (use D50 = 450 mm)

**Step 4 -- Determine apron dimensions:**
- Culvert diameter D = 1.2 m
- Apron length = 4 x D = 4 x 1.2 = **4.8 m** downstream
- Apron width = 3 x D = 3 x 1.2 = **3.6 m** (minimum)
- Layer thickness = 1.5 x D50 = 1.5 x 450 = **675 mm** (use 700 mm)

**Step 5 -- Specify filter layer:**
- Non-woven geotextile (minimum 200 g/m2) beneath rip-rap
- Geotextile overlap: minimum 300 mm at joints

**Alternative: Gabion mattress option:**
- 2.0 x 1.0 x 0.5 m gabion mattresses, 3 mattresses long x 3 wide
- PVC-coated wire mesh, 80 x 100 mm hexagonal aperture
- Stone fill: 100-200 mm hard stone, hand-packed
- This may be more economical if large rip-rap stone is expensive to transport

**Result:**

| Parameter | Value | Notes |
|-----------|-------|-------|
| Erosion risk | High (3.5 >> 0.8 m/s) | Protection required |
| Protection type | Rip-rap apron | Or gabion mattress alternative |
| D50 | 450 mm | From Isbash formula |
| Apron length | 4.8 m | 4 x 1.2 m culvert diameter |
| Apron width | 3.6 m | 3 x culvert diameter |
| Layer thickness | 700 mm | 1.5 x D50, rounded up |
| Filter | Geotextile, 200 g/m2 | Non-woven, beneath rip-rap |

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 2: Drainage Design*, January 2010, Sections 9.14-9.15 and Section 10.10.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- permissible velocities, rip-rap/gabion design, MoWT Vol 2 Sections 9.14-9.15 |
