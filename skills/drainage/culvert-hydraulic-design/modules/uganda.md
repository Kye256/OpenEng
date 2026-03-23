# Culvert Hydraulic Design -- Uganda Module

> **Parent Skill:** #31 Culvert Hydraulic Design
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
| Uganda MoWT Road Design Manual Vol. 2 | January 2010 | Section 9 (Design of Hydraulic Culverts), Appendices 9.1-9.21 | Current |

### M.1.2 Institutional Context

MoWT Vol 2 Section 9 provides comprehensive culvert design guidance adapted from AASHTO Model Drainage Manual. The design procedure (Section 9.5.1) follows a 16-step process summarized in the flowchart of Appendix 9.8. Approximate capacity tables are provided in Appendices 9.19-9.21 for quick sizing.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Minimum Culvert Size (MoWT Section 9.10, verified p105):**
- Pipe culvert under a road: minimum 600 mm diameter
- Precast concrete portal: minimum 600 mm x 450 mm
- May be reduced to 450 mm x 400 mm where self-scouring velocities are achieved

**Manning's n for Culvert Pipes (from MoWT Appendix 9.7 and Section 9.5.2):**

| Material | Manning's n |
|----------|-------------|
| Reinforced concrete pipe | 0.012-0.015 |
| Corrugated metal pipe | 0.024-0.027 |
| Box culvert (concrete) | 0.012-0.017 |
| Slab culvert (paved waterway) | 0.019 |

**Entrance Loss Coefficients (from MoWT Appendix 9.6):**

| Entrance Type | Ke |
|--------------|-----|
| Projecting from fill | 0.9 |
| Headwall or headwall and wingwalls, square edge | 0.5 |
| Headwall, rounded edge (radius > D/12) | 0.2 |
| Wingwalls, 30-75 deg flare | 0.2-0.4 |
| Beveled edge, 45 deg or 33.7 deg | 0.2 |
| Side- or slope-tapered inlet | 0.2 |

**Freeboard (MoWT Section 9.6, verified p104):**
- Major roads: 250 mm minimum
- Minor roads: 100 mm minimum
- Design flood may overtop to 200 mm depth only with Engineer-in-Chief approval

**Culvert Capacity Tables:** --> `tables/uganda_culvert_capacity.json`

Approximate capacities from Appendices 9.19 (pipe culverts), 9.20 (box culverts), and 9.21 (slab culverts). These use a 200% efficiency factor (design discharge = 2x available discharge) for safety.

**Culvert Gradient Requirements (MoWT Section 9.9):**
- Minimum gradient: 1% (avoid silting). Gradients < 0.5% should not be used.
- Steep gradients > 10%: concrete pipes need anchors
- Gradients > 20%: special anchoring for all pipe types

### M.2.2 Country-Specific Formulas

**Outlet Control (MoWT Vol 2, Eqn 9.6):**

```
H = [1 + Ke + (19.63*n^2*L / R^1.33)] * V^2/(2g)
```

**Outlet Control Headwater (MoWT Eqn 9.11):**

```
HW_oi = H + ho - So*L
```

Where ho = max(TW, (dc + D)/2).

**Approximate Procedure (MoWT Section 9.5.2):**

For quick sizing, use capacity tables in Appendices 9.19-9.21 with 200% efficiency factor. Design discharge for table entry = 2 x actual design Q. Select culvert size from table that accommodates this doubled discharge.

### M.2.3 Classification System

Culverts are classified by span:
- Pipe (span < 2m): return period per Table 3.2
- Culvert (2m < span < 6m): higher return period
- Short span bridge (6m < span < 15m): bridge-level return period

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 3 (Uganda): Select culvert material
  |-- Reinforced concrete pipe: most common, n = 0.012
  |-- Box culvert: for larger flows, n = 0.012-0.017
  |-- Corrugated metal: rarely used (corrosion in tropical climate)
  +-- Slab culvert: for low-cost crossings, n = 0.019

Step 7 (Uganda): Inlet control
  |-- Use nomographs in Appendix 9.3 (concrete pipe)
  |    or Appendix 9.4 (CM pipe) or Appendix 9.5 (box culvert)
  +-- Read HW/D for given Q and culvert size

Step 8 (Uganda): Outlet control
  |-- Use head loss charts in Appendix 9.12 (concrete pipe)
  |    or Appendix 9.13 (CM pipe) or Appendix 9.14 (box culvert)
  +-- Calculate HW_oi = H + ho - So*L
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Reinforced concrete pipe culverts are the standard in Uganda.** Concrete is widely available and durable in the tropical climate. Corrugated steel is rarely used due to corrosion concerns in the wet tropics.

**Multiple barrel culverts are common for large catchments.** Two or three pipes in parallel are simpler to construct than a single large pipe and provide redundancy if one barrel is partially blocked.

**Box culverts are used for larger flows.** When pipe sizes exceed approximately 1200-1500 mm, box culverts become more practical.

**Headwater depth is constrained by embankment height.** In Uganda's generally low-fill road embankments (2-3 m), allowable headwater may be the controlling constraint.

### M.3.3 Common Errors (Uganda-Specific)

1. **Checking only inlet control for steep culverts.** Even on steep grades, outlet control can govern if the culvert is long or tailwater is high.
2. **Using the approximate method (Appendix 9.19-9.21) as final design.** The capacity tables provide estimates only. Detailed design should use the full 16-step procedure.
3. **Forgetting to check the 200% efficiency factor.** When using Appendix 9.19-9.21, the design discharge entered is 2x the actual Q. This safety factor is built into the tables.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Material | Concrete pipe | Not specified | ASSUMED: Concrete pipe | Most common in Uganda |
| Manning's n | 0.012 | Concrete pipe | No flag | MoWT Appendix 9.7 |
| Ke | 0.5 | Headwall entrance | ASSUMED: Ke = 0.5 headwall | MoWT Appendix 9.6 |
| Max HW/D | 1.2 | Default | ASSUMED: HW/D <= 1.2 | MoWT Section 9.3 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Pipe diameter | 600 | 2400 | mm | MoWT Section 9.10 | Reject if < 600; consider box if > 2400 |
| HW/D | 0.5 | 1.5 | -- | MoWT Section 9.3 | Flag if > 1.2; reject if > 1.5 |

### M.5.2 Standards Compliance Checks

- **Check:** Both inlet and outlet control checked
- **Standard:** MoWT Vol 2, Section 9.4, Appendix 9.8 flowchart
- **Pass condition:** Both HW_i and HW_oi calculated and compared
- **Fail action:** INCOMPLETE -- Both inlet and outlet control must be checked per MoWT Section 9.4.

---

## M.7 Worked Example -- Uganda

### Example: Culvert Sizing for Cross-Drainage

**Source:** Based on MoWT Vol 2 Section 9.5 design procedure

**Given:**
- Design flow: Q = 1.8 m3/s (25-year ARI from Skill #29)
- Embankment height: 3.0 m (allowable HW = 2.5 m)
- Culvert length: L = 10 m
- Culvert slope: So = 2% (0.02 m/m)
- Tailwater: TW = 0.5 m
- Material: Concrete pipe, n = 0.012
- Entrance: Headwall, Ke = 0.5

**Solution:**

**Step 1 -- Trial size: 900 mm diameter concrete pipe**

D = 0.9 m, A = pi*0.9^2/4 = 0.636 m2, R = D/4 = 0.225 m, V = 1.8/0.636 = 2.83 m/s.

**Step 2 -- Inlet control check:**
From Appendix 9.3 nomograph for 900 mm concrete pipe at Q = 1.8 m3/s:
HW/D approximately 1.6 (estimated from nomograph reading).
HW_i = 1.6 * 0.9 = 1.44 m.

**Step 3 -- Outlet control check:**
dc (critical depth for 900 mm pipe at 1.8 m3/s) approximately 0.75 m.
(dc + D)/2 = (0.75 + 0.9)/2 = 0.825 m.
ho = max(0.5, 0.825) = 0.825 m.

H = [1 + 0.5 + (19.63 * 0.012^2 * 10 / 0.225^1.33)] * 2.83^2/(2*9.81)
  = [1 + 0.5 + (19.63 * 0.000144 * 10 / 0.155)] * 0.408
  = [1 + 0.5 + 0.182] * 0.408
  = 1.682 * 0.408
  = 0.686 m

HW_oi = H + ho - So*L = 0.686 + 0.825 - 0.02*10 = 0.686 + 0.825 - 0.2 = 1.311 m.

**Step 4 -- Governing headwater:**
HW_c = max(1.44, 1.31) = 1.44 m (inlet control governs)
HW/D = 1.44/0.9 = 1.6 -- exceeds 1.5 limit.

**Step 5 -- Try larger size: 1200 mm diameter**

D = 1.2 m, A = pi*1.2^2/4 = 1.131 m2, R = D/4 = 0.3 m, V = 1.8/1.131 = 1.59 m/s.

Inlet control: HW/D approximately 0.9 (estimated). HW_i = 0.9 * 1.2 = 1.08 m.

Outlet control:
dc approximately 0.55 m. (dc + D)/2 = (0.55 + 1.2)/2 = 0.875 m.
ho = max(0.5, 0.875) = 0.875 m.
H = [1 + 0.5 + (19.63*0.000144*10/0.3^1.33)] * 1.59^2/19.62
  = [1.5 + 0.067] * 0.129
  = 1.567 * 0.129 = 0.202 m
HW_oi = 0.202 + 0.875 - 0.2 = 0.877 m.

HW_c = max(1.08, 0.877) = 1.08 m (inlet control governs)
HW/D = 1.08/1.2 = 0.9 -- within limits.
HW_c = 1.08 m < HW_allow = 2.5 m -- OK.

Outlet velocity: V_o = Q/A = 1.8/1.131 = 1.59 m/s.

**Result:** Use 1200 mm diameter concrete pipe culvert. Inlet control governs at HW = 1.08 m (HW/D = 0.9). Outlet velocity = 1.59 m/s -- check against downstream channel permissible velocity for erosion protection needs (Skill #32).

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 2: Drainage Design*, January 2010, Section 9, Appendices 9.1-9.21.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- dual inlet/outlet control procedure from Section 9.5, entrance coefficients from Appendix 9.6, Manning's n from Appendix 9.7 |
