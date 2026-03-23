# Ditch & Channel Design -- Uganda Module

> **Parent Skill:** #30 Ditch & Channel Design
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 2: Drainage Design (January 2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 2 | January 2010 | Section 8 (Pavement Drainage), Section 8.4 (Flow in Gutters), Section 9.1 (Rural Road Drainage) | Current |

### M.1.2 Institutional Context

MoWT Vol 2 Section 8 covers pavement drainage including gutter flow using Manning's equation. Section 9.1 covers rural road drainage with guidance on side drain design. Manning's n values are provided in Table 8-3 (gutters) and Table 4-3 (overland flow). Permissible velocities are provided in Table 9.1.

### M.1.3 Standard Philosophy

MoWT provides a design manual approach. The engineer sizes channels using Manning's equation and checks velocities against permissible limits for the channel material. Standard ditch profiles are specified in Vol 1 (Geometric Design) cross-section tables.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Manning's n Values for Open Channels (from MoWT Vol 2 and engineering practice):**

| Channel Type | Manning's n | Source |
|-------------|-------------|--------|
| Earth channel, clean, straight | 0.025 | Engineering practice |
| Earth channel, with grass | 0.030 | Engineering practice |
| Concrete-lined channel | 0.013-0.015 | MoWT Table 8-3 context |
| Stone pitching (hand-placed) | 0.025-0.035 | Engineering practice |
| Grass-lined channel | 0.035-0.045 | Engineering practice |
| Gabion mattress lining | 0.025-0.030 | Engineering practice |
| Asphalt pavement gutter | 0.013-0.017 | MoWT Table 8-3 |
| Concrete gutter (troweled) | 0.012 | MoWT Table 8-3 |

**Permissible Velocities (from MoWT Vol 2 Table 9.1, verified p104):**

| Material in Channel | Maximum Permissible Velocity (m/s) |
|--------------------|-----------------------------------|
| Sand, loam, fine gravel, volcanic ash | 0.6 |
| Stiff clay | 1.1 |
| Coarse gravel | 1.5 |
| Conglomerate, hard shale, soft rock | 2.0 |
| Hard rock | 3.0 |
| Masonry | 3.0 |
| Concrete | 3.0 |

Note: MoWT Table 9.1 also provides roughness coefficients (25-60 range) -- these are Strickler roughness coefficients (k = 1/n * 1000^(1/6)), not Manning's n directly.

**Typical MoWT Side Drain Dimensions (from Vol 1 cross-section standards):**

| Road Class | Shape | Bottom Width (m) | Side Slopes (H:V) | Depth (m) |
|-----------|-------|-----------------|-------------------|-----------|
| Paved I, II | Trapezoidal | 0.5 | 1.5:1 | 0.5-0.8 |
| Paved III | Trapezoidal/V | 0.3-0.5 | 1:1 to 1.5:1 | 0.4-0.6 |
| Gravel | V-shaped | 0 (V-ditch) | 1:1 to 2:1 | 0.3-0.5 |

### M.2.2 Country-Specific Formulas

**Manning's Equation (same as universal, metric units):**

```
Q = (1/n) * A * R^(2/3) * S^(1/2)
```

All units consistent in metric system -- no conversion needed.

**Gutter Flow Capacity (MoWT Vol 2, Eqn 8.3):**

```
Q = (Kc/n) * Sx^1.67 * SL^0.5 * T^2.67
```

Where Kc = 0.377, n = Manning's n, Sx = cross slope (m/m), SL = longitudinal slope (m/m), T = spread width (m).

### M.2.3 Classification System

Side drains follow road classification. Higher-class roads have larger standard ditch sections. Urban sections may use kerb-and-gutter systems (Section 8) rather than open ditches.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 4 (Uganda): Select Manning's n
  |-- Earth channel: n = 0.025 (clean) to 0.030 (with grass)
  |-- Concrete lined: n = 0.013-0.015
  +-- Stone pitched: n = 0.025-0.035

Step 6 (Uganda): Check velocity against Table 9.1
  |-- Bare earth (sandy): max 0.6 m/s
  |-- Stiff clay: max 1.1 m/s
  |-- Coarse gravel: max 1.5 m/s
  +-- If V > permissible --> specify lining type
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Most side drains in Uganda are unlined earth channels.** This limits velocities to 0.6-1.5 m/s depending on soil type. On steep terrain, lining becomes essential.

**Concrete-lined drains are used in urban sections and steep terrain.** They are more expensive but can handle velocities up to 3 m/s and reduce maintenance.

**Stone pitching is common where local stone is available.** It provides intermediate erosion resistance (2-4 m/s) and uses local materials and labor.

**Outfalls must discharge away from the road embankment.** Concentrated flow from a side drain discharged directly onto the embankment slope causes severe erosion. Outfall points require erosion protection (Skill #32).

### M.3.3 Common Errors (Uganda-Specific)

1. **Using Manning's n = 0.013 for an earth channel.** Earth channels have n = 0.025-0.030, not the values for concrete or asphalt.
2. **Designing earth drains on steep grades without lining.** On grades > 3% in erodible soil, velocities typically exceed 0.6 m/s, requiring lining.
3. **Ignoring maintenance condition.** Manning's n increases with vegetation growth and sediment accumulation. Design for the maintained condition but note sensitivity.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Manning's n (earth) | 0.025 | Clean earth channel | ASSUMED: n = 0.025 for clean earth | Engineering practice |
| Side slope | 1.5:1 (H:V) | Paved road side drain | No flag | MoWT standard profile |
| Bottom width | 0.5 m | Paved road side drain | ASSUMED: b = 0.5 m per MoWT standard | MoWT Vol 1 cross-section |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| V (earth channel) | 0.3 | 0.6-1.5 | m/s | MoWT Table 9.1 | Warn if V < 0.3 (silting); fail if V > permissible |

### M.5.2 Standards Compliance Checks

- **Check:** Velocity within permissible for channel material per Table 9.1
- **Standard:** MoWT Vol 2, Table 9.1
- **Pass condition:** V <= permissible velocity for material
- **Fail action:** SENIOR REVIEW -- Velocity [V] m/s exceeds permissible [Vp] m/s. Specify channel lining.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Earth channel velocity > 1.5 m/s | Exceeds all unlined permissible limits | SENIOR REVIEW -- Velocity [V] m/s requires hard lining (concrete or stone). Consider reducing gradient or increasing channel size. |

---

## M.7 Worked Example -- Uganda

### Example: Side Drain for Paved Road

**Source:** Based on MoWT Vol 2 Manning's equation application

**Given:**
- Design flow: Q = 0.375 m3/s (from Skill #29 example)
- Longitudinal gradient: S = 2% (0.02 m/m)
- Channel type: Earth ditch, n = 0.025
- Channel shape: Trapezoidal, b = 0.5 m, z = 1.5:1 (H:V)
- Trial flow depth: d = 0.4 m

**Solution:**

**Step 1 -- Calculate section properties:**

```
A = (b + z*d) * d = (0.5 + 1.5*0.4) * 0.4 = (0.5 + 0.6) * 0.4 = 1.1 * 0.4 = 0.44 m2
P = b + 2*d*sqrt(1 + z^2) = 0.5 + 2*0.4*sqrt(1 + 2.25) = 0.5 + 0.8*sqrt(3.25) = 0.5 + 0.8*1.803 = 0.5 + 1.442 = 1.942 m
R = A/P = 0.44 / 1.942 = 0.227 m
```

**Step 2 -- Calculate capacity:**

```
Q_cap = (1/0.025) * 0.44 * 0.227^(2/3) * 0.02^(1/2)
     = 40 * 0.44 * 0.372 * 0.1414
     = 40 * 0.44 * 0.0526
     = 0.926 m3/s (checking...)
```

Let me recalculate: 0.227^(2/3) = 0.227^0.667 = 0.372. sqrt(0.02) = 0.1414.
Q_cap = (1/0.025) * 0.44 * 0.372 * 0.1414 = 40 * 0.0231 = 0.926 m3/s.

Wait -- that seems high. Recheck: 0.44 * 0.372 = 0.1637. 0.1637 * 0.1414 = 0.0231. 0.0231 * 40 = 0.926. Actually this is correct for 2% gradient, which is steep.

Actually let me be more careful. 0.44 * 0.372 * 0.1414 = 0.44 * 0.0526 = 0.02314. * 40 = 0.926.

Hmm, the plan says Q_capacity = 0.46 m3/s. Let me recheck the plan's numbers. The plan used Q_capacity = (1/0.025)*0.44*0.227^(2/3)*0.02^(1/2) = 0.46. Let me recompute: 0.227^(2/3): ln(0.227) = -1.482, * 2/3 = -0.988, e^(-0.988) = 0.373. OK so R^(2/3) = 0.373. S^(1/2) = 0.1414. (1/n) = 40. A = 0.44.

40 * 0.44 * 0.373 * 0.1414 = 40 * 0.44 * 0.0527 = 40 * 0.0232 = 0.928.

The plan value of 0.46 appears to be an error in the plan -- the correct Manning's result is approximately 0.93 m3/s. Let me use the correct calculation.

Q_cap = 0.93 m3/s > 0.375 m3/s -- OK, capacity is adequate.

**Step 3 -- Check velocity:**

```
V = Q / A = 0.375 / 0.44 = 0.85 m/s
```

From Table 9.1: Stiff clay max = 1.1 m/s, coarse gravel max = 1.5 m/s.
For typical Uganda laterite soil: permissible approximately 1.0-1.5 m/s.
V = 0.85 m/s is within permissible limits for most Uganda soils (except sand/fine gravel at 0.6 m/s).

If soil is sandy: V = 0.85 m/s > 0.6 m/s -- lining required.
If soil is stiff clay: V = 0.85 m/s < 1.1 m/s -- OK.

**Step 4 -- Freeboard:**

D_total = d + freeboard = 0.4 + 0.15 = 0.55 m

**Result:**

| Parameter | Value | Status |
|-----------|-------|--------|
| Channel shape | Trapezoidal | |
| Bottom width | 0.5 m | |
| Side slopes | 1.5:1 (H:V) | |
| Flow depth | 0.4 m | |
| Total depth | 0.55 m (incl. 150 mm freeboard) | |
| Capacity | 0.93 m3/s | > 0.375 m3/s -- OK |
| Velocity | 0.85 m/s | Check against soil type |

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 2: Drainage Design*, January 2010, Sections 8, 9.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Manning's equation, permissible velocities from Table 9.1, standard ditch dimensions from MoWT practice |
