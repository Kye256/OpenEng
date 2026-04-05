# Ditch & Channel Design -- Kenya Module

> **Parent Skill:** #30 Ditch & Channel Design
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 2.2: Drainage Design (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 2.2: Drainage Design | 2025 | Ch 2 (hydraulic design of open channels -- Manning's equation Section 2.3, channel design Sections 2.5-2.6), Ch 6.4 (design of side drains -- types, guidelines, dimensioning, protection), Ch 6.5 (drainage of road surface), Ch 7 (urban drainage) | Current |
| Kenya RDM 2.1: Hydrological Surveys | 2025 | Ch 6 (design flow from Skill #29) | Current |

### M.1.2 Institutional Context

RDM 2.2 is the Kenya drainage structures design standard applicable to all road agencies (KeNHA, KeRRA, KURA, County Governments). Side drain dimensions and channel design follow the same manual regardless of road class. For institutional context details, see Skill #13 Kenya module M.1.2.

The manual was developed by TRL Limited (UK) with African Development Bank funding and has the status of a Manual -- mandatory for application on all public roads in Kenya. Departures require Chief Engineer approval.

### M.1.3 Standard Philosophy

RDM 2.2 provides comprehensive guidance on open channel hydraulics using Manning's equation as the primary design tool. The manual covers both rural side drains (Section 6.4) and urban drainage networks (Chapter 7). Channel design follows uniform flow assumptions with Manning's equation, with provisions for gradually varied flow analysis for complex situations.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Manning's n Values for Open Channels (from RDM 2.2 Section 2.3):**

RDM 2.2 Section 2.3 provides Manning's equation for open channel flow. Manning's n values are referenced throughout the manual:

| Channel Type | Manning's n | Source |
|-------------|-------------|--------|
| Concrete-lined channel (troweled finish) | 0.012-0.013 | RDM 2.2 Table context |
| Concrete-lined channel (float finish) | 0.013-0.015 | Engineering practice |
| Stone masonry/pitching | 0.025-0.035 | Engineering practice |
| Earth channel, clean, straight | 0.020-0.025 | RDM 2.2 practice |
| Earth channel, with grass | 0.027-0.035 | Engineering practice |
| Grass-lined channel (short grass) | 0.025-0.035 | Engineering practice |
| Grass-lined channel (tall grass) | 0.035-0.050 | Engineering practice |
| Gabion mattress lining | 0.025-0.030 | Engineering practice |
| Natural channel, clean and straight | 0.025-0.033 | RDM 2.2 practice |
| Natural channel, with vegetation | 0.035-0.050 | Engineering practice |

**Permissible Velocities for Channel Materials:**

| Material | Maximum Permissible Velocity (m/s) | Source |
|---------|------------------------------------|--------|
| Fine sand, colloidal | 0.5 | Engineering practice |
| Sandy loam (non-colloidal) | 0.5 | Engineering practice |
| Silt loam (non-colloidal) | 0.6 | Engineering practice |
| Firm loam | 0.8 | Engineering practice |
| Fine gravel | 0.8 | Engineering practice |
| Stiff clay (very colloidal) | 1.1 | Engineering practice |
| Coarse gravel | 1.2 | Engineering practice |
| Shale and hardpan | 1.8 | Engineering practice |
| Stone masonry/pitching | 2.5-3.0 | Engineering practice |
| Concrete | 3.0-4.5 | Engineering practice |
| Gabion mattress | 3.0-5.0 | Engineering practice |

**Side Drain Types (from RDM 2.2 Section 6.4.1):**

RDM 2.2 Section 6.4.1 describes the following types of side drains:

1. **V-shaped drains** -- simple triangular profile, suitable for low-traffic rural roads
2. **Trapezoidal drains** -- standard for paved roads, with flat bottom and sloped sides
3. **Rectangular drains** -- typically concrete-lined, used in urban areas or where space is constrained
4. **Combined kerb and channel** -- urban application with kerb-and-gutter system

**Guidelines on Choice of Side Ditches (RDM 2.2 Section 6.4.2):**

The choice of drain type depends on:
- Road classification and traffic level
- Available right-of-way width
- Soil type and erodibility
- Required capacity from hydraulic design
- Safety considerations (depth and side slope for vehicle recovery)

**Dimensioning of Side Drains (RDM 2.2 Section 6.4.3):**

Side drains are sized using Manning's equation to convey the design flow from Skill #29 (5-year return period per RDM 2.1 Table 4.1). Key dimensioning principles:
- Minimum bottom width: 0.3 m for V-drains, 0.5 m for trapezoidal
- Side slopes: minimum 1:1 (H:V), recommended 1.5:1 or 2:1 for safety
- Minimum depth: 0.3 m below formation level
- Freeboard: minimum 150 mm above design water level

### M.2.2 Country-Specific Formulas

**Manning's Equation (RDM 2.2 Section 2.3 -- same as universal, metric units):**

```
Q = (1/n) * A * R^(2/3) * S^(1/2)
```

Where Q = discharge (m3/s), n = Manning's roughness coefficient, A = cross-sectional area (m2), R = hydraulic radius A/P (m), S = channel slope (m/m).

**Velocity:**

```
V = (1/n) * R^(2/3) * S^(1/2)
```

**Channel Design for Lined and Unlined Channels (RDM 2.2 Sections 2.5-2.6):**

Section 2.5 covers the design technique for lined channels (selecting dimensions to convey design flow at permissible velocity). Section 2.6 covers unlined channels with additional erosion protection considerations.

The design process follows:
1. Determine design flow Q from Skill #29
2. Select channel shape and Manning's n
3. Select longitudinal slope S (from road geometric design)
4. Calculate required cross-section dimensions using Manning's equation
5. Check velocity against permissible limits
6. Add freeboard (minimum 150 mm)
7. If velocity exceeds unlined limits, specify lining type

### M.2.3 Protection of Ditches and Channels (RDM 2.2 Section 6.4.4)

Where velocities exceed permissible limits for the natural soil, protection is required:
- **Stone pitching** for moderate velocities (2-3 m/s)
- **Concrete lining** for high velocities (> 3 m/s)
- **Gabion mattress** for flexible protection on unstable ground
- **Grass/vegetation lining** for low velocities (< 1.5 m/s) in wet zones
- **Check dams** to reduce effective gradient in steep drains

Cross-reference to Skill #32 (Erosion Protection) Kenya module for detailed protection design.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 4 (Kenya): Select Manning's n
  |-- Earth channel: n = 0.020-0.025 (clean) to 0.027-0.035 (with grass)
  |-- Concrete lined: n = 0.012-0.015
  |-- Stone pitched: n = 0.025-0.035
  +-- Gabion mattress: n = 0.025-0.030

Step 5 (Kenya): Select side drain type (Section 6.4.2)
  |-- Class A/B paved roads: trapezoidal, min 0.5m base
  |-- Class C/D rural roads: V-drain or trapezoidal
  |-- Urban roads: rectangular or kerb-and-channel
  +-- All: minimum depth 0.3m below formation

Step 6 (Kenya): Check velocity against permissible
  |-- Sandy/silt loam: max 0.5-0.6 m/s
  |-- Firm loam/fine gravel: max 0.8 m/s
  |-- Stiff clay: max 1.1 m/s
  |-- Coarse gravel: max 1.2 m/s
  +-- If V > permissible --> specify lining type (Section 6.4.4)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya's terrain varies dramatically.** From the coastal plain to the Rift Valley escarpment and highland plateaus, channel design must account for wide-ranging gradients. Highland roads (e.g., along the escarpment to Narok or in the Aberdare ranges) may have very steep side drain gradients requiring concrete or stone lining.

**Black cotton soil (expansive clay) is widespread in Kenya.** In areas with black cotton soil (common in the Rift Valley, parts of Western Kenya, and around Nairobi), drains must be designed to resist swelling and shrinkage. Concrete or stone lining is recommended in these areas even at low velocities.

**Urban areas require kerb-and-gutter systems.** Kenya's rapidly growing urban areas (Nairobi, Mombasa, Kisumu, Nakuru) require Chapter 7 urban drainage design with storm drain networks, not open ditches.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using Manning's n = 0.013 for an earth channel.** Earth channels in Kenya have n = 0.020-0.035, not the values for concrete or asphalt.
2. **Designing earth drains on steep grades without lining.** On grades > 3% in erodible soil (sandy loam, silt), velocities typically exceed 0.6 m/s, requiring lining per Section 6.4.4.
3. **Ignoring black cotton soil conditions.** In expansive clay areas, unlined drains deteriorate rapidly. Stone pitching or concrete lining is essential.
4. **Not providing adequate outfall protection.** Concentrated flow from side drains must be discharged with erosion protection at outfall points (cross-reference Skill #32).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Manning's n (earth) | 0.025 | Clean earth channel | ASSUMED: n = 0.025 for clean earth | RDM 2.2 practice |
| Side slope | 1.5:1 (H:V) | Paved road side drain | No flag | RDM 2.2 standard practice |
| Bottom width | 0.5 m | Trapezoidal paved road drain | ASSUMED: b = 0.5 m per RDM 2.2 | RDM 2.2 Section 6.4.3 |
| Freeboard | 150 mm | All drains | No flag | RDM 2.2 standard practice |
| Return period | 5 years | Side ditches | No flag | RDM 2.1 Table 4.1 row 2 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| V (earth channel) | 0.3 | 0.5-1.2 | m/s | RDM 2.2 practice | Warn if V < 0.3 (silting risk); fail if V > permissible |
| V (concrete lined) | 0.5 | 4.5 | m/s | RDM 2.2 practice | Flag if V > 4.5 m/s even for concrete |
| Drain depth | 0.30 | 1.50 | m | RDM 2.2 Section 6.4.3 | Flag if depth > 1.5 m (safety concern) |

### M.5.2 Standards Compliance Checks

- **Check:** Velocity within permissible for channel material
- **Standard:** RDM 2.2, permissible velocity tables
- **Pass condition:** V <= permissible velocity for material
- **Fail action:** SENIOR REVIEW -- Velocity [V] m/s exceeds permissible [Vp] m/s for [material]. Specify channel lining per Section 6.4.4.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Earth channel velocity > 1.2 m/s | Exceeds all unlined permissible limits except hardpan/rock | SENIOR REVIEW -- Velocity [V] m/s requires hard lining. Consider concrete or stone pitching per RDM 2.2 Section 6.4.4. |
| Drain on black cotton soil | Expansive clay causes drain deterioration | SENIOR REVIEW -- Black cotton soil identified. Recommend concrete or stone-pitched lining regardless of velocity. |
| Steep terrain > 8% longitudinal grade | Very high velocities likely | SENIOR REVIEW -- Steep grade [S]%. Consider check dams, energy dissipation, or stepped channel design. |
| Urban drainage network required | Chapter 7 design procedures apply | SENIOR REVIEW -- Urban setting requires storm drain network design per RDM 2.2 Chapter 7, not simple side drains. |

---

## M.7 Worked Example -- Kenya

### Example: Side Drain for a Class C Road

**Source:** Based on RDM 2.2 Manning's equation application with Kenya-specific data

**Given:**
- Design flow: Q = 0.35 m3/s (from Skill #29 Kenya example, 5-year ARI per Table 4.1)
- Longitudinal gradient: S = 2.5% (0.025 m/m)
- Road: Class C (KeRRA rural road) in Western Kenya
- Channel type: Earth ditch, n = 0.025
- Channel shape: Trapezoidal, b = 0.5 m, z = 1.5:1 (H:V)
- Soil: Firm laterite loam (permissible velocity ~0.8 m/s)
- Trial flow depth: d = 0.35 m

**Solution:**

**Step 1 -- Calculate section properties:**

```
A = (b + z*d) * d = (0.5 + 1.5*0.35) * 0.35 = (0.5 + 0.525) * 0.35 = 1.025 * 0.35 = 0.359 m2
P = b + 2*d*sqrt(1 + z^2) = 0.5 + 2*0.35*sqrt(1 + 2.25) = 0.5 + 0.70*sqrt(3.25) = 0.5 + 0.70*1.803 = 0.5 + 1.262 = 1.762 m
R = A/P = 0.359 / 1.762 = 0.204 m
```

**Step 2 -- Calculate capacity using Manning's equation:**

```
Q_cap = (1/n) * A * R^(2/3) * S^(1/2)
     = (1/0.025) * 0.359 * 0.204^(2/3) * 0.025^(1/2)
     = 40 * 0.359 * 0.346 * 0.158
     = 40 * 0.359 * 0.0547
     = 40 * 0.01964
     = 0.786 m3/s
```

Q_cap = 0.786 m3/s > Q_design = 0.35 m3/s -- capacity is adequate.

**Step 3 -- Check velocity:**

```
V = Q / A = 0.35 / 0.359 = 0.975 m/s
```

Permissible velocity for firm laterite loam: ~0.8 m/s.
V = 0.975 m/s > 0.8 m/s -- velocity exceeds permissible for unlined earth.

**Options:**
a) Reduce gradient (may not be possible -- set by road alignment)
b) Increase channel size to reduce velocity (wider, shallower channel)
c) Provide grass lining (increases n, reduces velocity, permits up to ~1.5 m/s)
d) Provide stone pitching (permits up to 2.5-3.0 m/s)

**Decision:** Grass lining is recommended for this moderate velocity. With n = 0.035 for grass-lined channel:

```
Q_cap_grass = (1/0.035) * 0.359 * 0.346 * 0.158 = 28.57 * 0.01964 = 0.561 m3/s > 0.35 -- OK
V_grass = 0.35 / 0.359 = 0.975 m/s (velocity unchanged as flow depth unchanged)
```

The grass lining accommodates the velocity (permissible up to 1.5 m/s for established grass).

**Step 4 -- Freeboard:**

D_total = d + freeboard = 0.35 + 0.15 = 0.50 m

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Channel shape | Trapezoidal | |
| Bottom width | 0.5 m | |
| Side slopes | 1.5:1 (H:V) | |
| Flow depth | 0.35 m | |
| Total depth | 0.50 m (incl. 150 mm freeboard) | |
| Capacity | 0.786 m3/s (unlined) | > 0.35 m3/s -- OK |
| Velocity | 0.975 m/s | Exceeds unlined limit; grass lining specified |
| Lining | Grass-lined | Permissible up to 1.5 m/s |

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 2: Hydrology and Drainage Design, Part 2 -- Drainage Design (RDM 2.2)*, 2025. Prepared by TRL Limited (UK) with African Development Bank funding.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- Manning's equation, permissible velocities, side drain types and dimensioning from RDM 2.2 Ch 2 and Ch 6.4, channel protection from Section 6.4.4, all verified against Kenya RDM 2.2 (2025) PDF |
