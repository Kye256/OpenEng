# Culvert Hydraulic Design -- Kenya Module

> **Parent Skill:** #31 Culvert Hydraulic Design
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
| Kenya RDM 2.2: Drainage Design | 2025 | Ch 4 (hydraulic design of culverts -- types Section 4.1, inlet/outlet control Section 4.3, design procedure Section 4.3.6, design limitations Section 4.4, empirical formulae Section 4.6), Appendix A (worked examples A.5/A.6), Appendix B (design charts B.5-B.30) | Current |
| Kenya RDM 2.1: Hydrological Surveys | 2025 | Table 4.1 (return periods for pipe/box culverts -- Skill #29 output) | Current |

### M.1.2 Institutional Context

RDM 2.2 Chapter 4 provides comprehensive culvert hydraulic design procedures for all road agencies in Kenya (KeNHA, KeRRA, KURA, County Governments). The manual follows a dual approach: nomograph-based design using Appendix B design charts AND empirical formulae in Section 4.6. Both approaches must be understood by the designer. For institutional context details, see Skill #13 Kenya module M.1.2.

### M.1.3 Standard Philosophy

RDM 2.2 Chapter 4 follows the standard FHWA/AASHTO approach for culvert design -- checking both inlet control and outlet control, with the higher headwater governing. The manual provides 26 design charts (Appendix B, Charts B.5 to B.30) covering concrete pipe, concrete box, and corrugated metal pipe culverts under various inlet conditions. Section 4.6 provides empirical formulae as an alternative calculation method. The design flowchart is presented in Figure 4.13.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Return Periods for Culverts (from RDM 2.1 Table 4.1):**

| Structure Type | Design Frequency (years) | Check Frequency (years) |
|---------------|--------------------------|------------------------|
| Pipe culverts | 10 | 25 |
| Box culverts (opening < 6.0 m2) | 25 | 50 |
| Box culverts (opening > 6.0 m2) | 50 | 100 |

**Culvert Types (RDM 2.2 Section 4.1):**

- Pipe culverts: circular reinforced concrete pipes (RCP), corrugated metal pipes (CMP)
- Box culverts: precast or cast-in-situ reinforced concrete
- Arch culverts: for larger openings with limited cover

**Inlet and Outlet Control Definitions (RDM 2.2 Section 4.3):**

- **Inlet control** (Section 4.3): Capacity governed by the entrance geometry. Headwater depends on culvert size, inlet geometry, and flow rate. The culvert barrel flows partially full -- downstream conditions do not affect capacity.
- **Outlet control** (Section 4.3): Capacity governed by the full length of culvert barrel, including entrance loss, friction loss, and exit loss. Tailwater depth affects headwater.

**Design Limitations (RDM 2.2 Section 4.4):**

- Maximum headwater to diameter ratio (HW/D): typically 1.2-1.5
- Minimum culvert size: 600 mm diameter for pipe, 600 mm x 600 mm for box
- Minimum cover: as per structural design requirements (RDM 4.2)
- Minimum velocity: 0.6-0.9 m/s (to prevent sedimentation)
- Maximum velocity: depends on downstream erosion potential (cross-reference Skill #32)

**Manning's n for Culvert Materials:**

| Material | Manning's n |
|----------|-------------|
| Reinforced concrete pipe | 0.012 |
| Concrete box culvert | 0.012-0.015 |
| Corrugated metal pipe (CMP) | 0.024-0.027 |

**Entrance Loss Coefficients (Ke):**

| Entrance Type | Ke |
|--------------|-----|
| Projecting from fill, socket end | 0.2 |
| Projecting from fill, cut end | 0.5 |
| Headwall with square edge | 0.5 |
| Headwall with rounded edge | 0.2 |
| Headwall with wingwalls, 30-75 deg | 0.2-0.4 |
| Mitered to conform to fill slope | 0.7 |

**Nomographs (Appendix B -- 26 Design Charts):**

| Chart | Description |
|-------|------------|
| B.5 | Headwater depth and capacity for concrete pipe culverts with inlet control |
| B.6 | Headwater depth and capacity for concrete box culverts with inlet control |
| B.7 | Headwater depth and capacity for C.M. pipe culverts with inlet control |
| B.8 | Critical depth for circular pipes |
| B.9 | Head water depth for concrete pipe flowing full, n=0.012 |
| B.10 | Head water depth for box culvert with inlet control |
| B.11 | Critical depth for rectangular section |
| B.12 | Headwater depth for concrete box flowing full, n=0.012 |
| B.13-B.30 | Additional charts for Manning's equation solutions, storm drains, gutters, inlets |

### M.2.2 Country-Specific Formulas

**Inlet Control Headwater (RDM 2.2 Section 4.3, from design charts):**

For inlet control, headwater is determined from nomographs (Charts B.5-B.7) or from empirical equations:

**Unsubmerged inlet (HW/D < 1.0):**
```
HW/D = Hc/D + K + M * [Q/(A*D^0.5)]
```

**Submerged inlet (HW/D > 1.0):**
```
HW/D = c * [Q/(A*D^0.5)]^2 + Y + Z*S
```

Where K, M, c, Y are constants depending on inlet type, and Z = slope correction factor.

**Outlet Control Headwater (RDM 2.2 Section 4.3):**

```
H = [1 + Ke + (19.63 * n^2 * L / R^1.33)] * V^2 / (2g)
HW_oi = H + ho - So * L
```

Where ho = max(TW, (dc + D)/2), TW = tailwater depth, dc = critical depth, D = culvert height/diameter.

**Empirical Formulae (RDM 2.2 Section 4.6):**

Section 4.6 provides empirical methods as alternatives to the nomograph approach. These include simplified capacity equations for common culvert configurations. The empirical approach is useful for preliminary sizing and field verification.

**Design Procedure (RDM 2.2 Section 4.3.6 and Figure 4.13 Flowchart):**

1. Assemble site data (Q, embankment height, culvert length, slope, tailwater)
2. Select trial culvert size and material
3. Determine inlet control headwater from Charts B.5-B.7 or empirical formulae
4. Determine outlet control headwater from head loss equation
5. Compare: governing HW = max(HW_inlet, HW_outlet)
6. Check HW against allowable (typically HW/D <= 1.2-1.5, and HW < embankment height)
7. If HW exceeds allowable, try larger size or multiple barrels
8. Check outlet velocity for erosion potential (link to Skill #32)

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 3 (Kenya): Select culvert material
  |-- Reinforced concrete pipe: standard for Kenya, n = 0.012
  |-- Concrete box: for openings > ~1200 mm or larger flows
  |-- Corrugated metal pipe: used on some donor-funded projects, n = 0.024
  +-- Arch culvert: for limited cover situations

Step 7 (Kenya): Inlet control
  |-- Use nomographs in Appendix B:
  |    Chart B.5 (concrete pipe inlet control)
  |    Chart B.6 (concrete box inlet control)
  |    Chart B.7 (CMP inlet control)
  |-- Or use empirical formulae from Section 4.6
  +-- Read HW/D for given Q and culvert size

Step 8 (Kenya): Outlet control
  |-- Use head loss equation
  |-- Or use nomographs:
  |    Chart B.9 (concrete pipe flowing full)
  |    Chart B.12 (concrete box flowing full)
  +-- Calculate HW_oi = H + ho - So*L
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Concrete pipe culverts are standard practice in Kenya.** Reinforced concrete pipes are manufactured domestically and are the default material for pipe culverts up to 1200-1500 mm diameter. Box culverts are used for larger openings.

**Both nomographs AND empirical formulae should be understood.** RDM 2.2 emphasises that the designer should be capable of using both approaches. Nomographs (Appendix B) are the traditional method; empirical formulae (Section 4.6) provide calculation-based verification.

**Multiple barrel culverts require special consideration.** When using two or more pipes in parallel, each barrel should be checked independently. Debris blockage potential increases with multiple small pipes -- consider fewer larger pipes where debris is a concern.

**Minimum cover requirements link to structural design.** The minimum cover over a culvert must satisfy both hydraulic requirements and structural design per RDM 4.2 (Skill #33).

**ASAL regions present unique challenges.** In arid and semi-arid areas, ephemeral streams carry high sediment loads. Culvert sizing should account for debris and sediment transport. Self-cleansing velocity (minimum 0.6-0.9 m/s) is essential.

### M.3.3 Common Errors (Kenya-Specific)

1. **Checking only inlet control.** Even on steep slopes, outlet control can govern for long culverts or where tailwater is elevated. Both must always be checked per Section 4.3.
2. **Relying solely on nomographs without checking empirical formulae.** RDM 2.2 provides both approaches (Appendix B and Section 4.6) -- cross-verification improves confidence.
3. **Not accounting for debris in ASAL areas.** Ephemeral streams in Kenya's arid regions carry significant debris during flash floods. Consider debris potential when selecting culvert size and inlet type.
4. **Ignoring the Check Frequency assessment.** Table 4.1 requires assessing performance at the Check Frequency (25 years for pipe, 50 years for box). The structure should survive the check flood, even if some overtopping occurs.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Material | Concrete pipe | Not specified | ASSUMED: Concrete pipe | Standard Kenya practice |
| Manning's n | 0.012 | Concrete pipe | No flag | RDM 2.2 standard value |
| Ke | 0.5 | Headwall entrance | ASSUMED: Ke = 0.5 headwall with square edge | RDM 2.2 |
| Max HW/D | 1.2 | Default | ASSUMED: HW/D <= 1.2 for safety | RDM 2.2 Section 4.4 |
| Min velocity | 0.6 | Self-cleansing | No flag | RDM 2.2 Section 4.4 |
| Min pipe size | 600 mm | All culverts | No flag | RDM 2.2 Section 4.4 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Pipe diameter | 600 | 2400 | mm | RDM 2.2 Section 4.4 | Reject if < 600; consider box if > 2400 |
| HW/D | 0.5 | 1.5 | -- | RDM 2.2 Section 4.4 | Flag if > 1.2; reject if > 1.5 without justification |
| Velocity (outlet) | 0.6 | -- | m/s | RDM 2.2 Section 4.4 | Warn if < 0.6 m/s (sedimentation risk) |

### M.5.2 Standards Compliance Checks

- **Check:** Both inlet and outlet control checked
- **Standard:** RDM 2.2 Section 4.3, Figure 4.13 flowchart
- **Pass condition:** Both HW_inlet and HW_outlet calculated and compared
- **Fail action:** INCOMPLETE -- Both inlet and outlet control must be checked per RDM 2.2 Section 4.3.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Multiple barrel culvert (> 3 barrels) | Debris blockage and maintenance concerns | SENIOR REVIEW -- Consider fewer larger culverts or box culvert instead of multiple pipes. |
| Culvert in ASAL flash flood zone | High debris and sediment load | SENIOR REVIEW -- Consider oversizing by one pipe diameter for debris allowance. Specify debris guards if appropriate. |
| Fish passage required | Environmental permit condition | SENIOR REVIEW -- Fish passage requirements may control culvert invert, slope, and minimum water depth. Coordinate with environmental team. |
| Outlet velocity > 4.5 m/s | Severe erosion potential | SENIOR REVIEW -- High outlet velocity requires specialist erosion protection design (Skill #32). Consider energy dissipation structure. |

---

## M.7 Worked Example -- Kenya

### Example: Pipe Culvert Sizing for a Class C Road Crossing

**Source:** Based on RDM 2.2 Section 4.3.6 design procedure, referencing Appendix A worked examples A.5/A.6

**Given:**
- Design flow: Q = 1.8 m3/s (10-year return period from Table 4.1 for pipe culverts)
- Embankment height: 3.5 m (allowable HW = 3.0 m)
- Culvert length: L = 12 m
- Culvert slope: So = 1.5% (0.015 m/m)
- Tailwater: TW = 0.6 m (from downstream channel analysis)
- Material: Reinforced concrete pipe, n = 0.012
- Entrance: Headwall with square edge, Ke = 0.5
- Available pipe diameters: 600 mm, 900 mm, 1200 mm

**Solution:**

**Step 1 -- Trial size: 900 mm diameter concrete pipe**

D = 0.9 m, A = pi * 0.9^2 / 4 = 0.636 m2, R = D/4 = 0.225 m

**Step 2 -- Inlet control check (from Chart B.5 or empirical):**
For Q = 1.8 m3/s in 900 mm pipe:
Q/(A*D^0.5) = 1.8 / (0.636 * 0.949) = 1.8 / 0.604 = 2.98

From Chart B.5 (concrete pipe inlet control): HW/D approximately 1.6
HW_inlet = 1.6 * 0.9 = 1.44 m

**Step 3 -- Outlet control check:**
dc (critical depth for 900 mm pipe at 1.8 m3/s) approximately 0.75 m (from Chart B.8)
(dc + D)/2 = (0.75 + 0.9)/2 = 0.825 m
ho = max(TW, (dc + D)/2) = max(0.6, 0.825) = 0.825 m

```
H = [1 + Ke + (19.63 * n^2 * L / R^1.33)] * V^2 / (2g)
V = Q/A = 1.8/0.636 = 2.83 m/s
H = [1 + 0.5 + (19.63 * 0.000144 * 12 / 0.225^1.33)] * 2.83^2/(2*9.81)
  = [1.5 + (0.0339 / 0.155)] * 0.408
  = [1.5 + 0.219] * 0.408
  = 1.719 * 0.408 = 0.701 m

HW_outlet = H + ho - So*L = 0.701 + 0.825 - 0.015*12 = 0.701 + 0.825 - 0.180 = 1.346 m
```

**Step 4 -- Governing headwater:**
HW = max(1.44, 1.346) = 1.44 m (inlet control governs)
HW/D = 1.44/0.9 = 1.6 -- exceeds 1.5 limit. Try larger size.

**Step 5 -- Try 1200 mm diameter:**

D = 1.2 m, A = pi * 1.2^2 / 4 = 1.131 m2, R = D/4 = 0.3 m, V = 1.8/1.131 = 1.59 m/s

Inlet control: From Chart B.5, HW/D approximately 0.85
HW_inlet = 0.85 * 1.2 = 1.02 m

Outlet control:
dc approximately 0.55 m (from Chart B.8)
ho = max(0.6, (0.55 + 1.2)/2) = max(0.6, 0.875) = 0.875 m
```
H = [1 + 0.5 + (19.63 * 0.000144 * 12 / 0.3^1.33)] * 1.59^2/19.62
  = [1.5 + 0.094] * 0.129 = 1.594 * 0.129 = 0.206 m
HW_outlet = 0.206 + 0.875 - 0.180 = 0.901 m
```

HW = max(1.02, 0.901) = 1.02 m (inlet control governs)
HW/D = 1.02/1.2 = 0.85 -- within limits.
HW = 1.02 m < HW_allow = 3.0 m -- OK.

Outlet velocity: V = 1.59 m/s -- check downstream erosion protection (Skill #32).

**Result:** Use 1200 mm diameter reinforced concrete pipe culvert. Inlet control governs at HW = 1.02 m (HW/D = 0.85). Outlet velocity = 1.59 m/s. Verify against empirical formulae (Section 4.6) and nomographs (Chart B.5) as cross-check.

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 2: Hydrology and Drainage Design, Part 2 -- Drainage Design (RDM 2.2)*, 2025, Chapter 4, Appendices A and B.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- dual inlet/outlet control from RDM 2.2 Ch 4, nomograph references (Appendix B Charts B.5-B.30), empirical formulae (Section 4.6), worked examples (Appendix A.5/A.6), verified against Kenya RDM 2.2 (2025) PDF |
