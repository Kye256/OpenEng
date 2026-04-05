# Bridge Hydraulics -- Kenya Module

> **Parent Skill:** #39 Bridge Hydraulics
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 2.2 (2025) Chapter 5: Hydraulic Design of Bridges; Kenya RDM 4.2 (2025) Section 2.7
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 2.2 -- Drainage Design | 2025 | Ch 5 (Hydraulic Design of Bridges): Sections 5.1-5.6 | Current (mandatory) |
| Kenya RDM 4.2 -- Bridge and Culvert Design | 2025 | Section 2.7 (Hydrological and Hydraulic Design Requirements) | Current (mandatory) |
| HEC-18 (FHWA) | 5th Edition | Scour equations (referenced by RDM 2.2 Section 5.6) | Reference methodology |
| HEC-RAS | Current | Bridge hydraulic modelling software | Recommended tool |

### M.1.2 Institutional Context

KeNHA/KeRRA/KURA and County Governments as described in Skill #35 Kenya module. RDM 2.2 Chapter 5 provides the Kenya-specific hydraulic design framework for bridges. The manual references HEC-18/HEC-RAS methodology for scour computation and hydraulic modelling. Design flood return periods follow Table 5.1 (matching Table 2.5 in RDM 4.2).

### M.1.3 Standard Philosophy

RDM 2.2 Section 5.1.2 establishes key policies:
- Maximum backwater (afflux) allowed: **0.5 m** (Section 5.1.2a) unless justified by special hydraulic conditions
- Foundation level shall be positioned below total scour depth whenever practical (Section 5.1.2f)
- Specified clearance (freeboard) shall allow passage of debris (Section 5.1.2d)
- Degradation, contraction scour and local scour shall be estimated as part of design (Section 5.1.2e)
- Super flood check: 500-year event or 1.7 x Q100 (Section 5.3.3i)

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table KBH.1: Design Return Periods for Bridges (Table 5.1, Verified)**

| Structure Type | Design Flood (years) | Check Flood (years) |
|---------------|---------------------|---------------------|
| Short bridges (6m < L <= 15m) | 50 | 100 |
| Medium bridges (15m < L <= 50m) | 50 | 100 |
| Long bridge (L > 50m) | 100 | 200 |

**Note:** Climate change adaptation -- RDM 2.2 recommends increasing design return periods by 50% or 100% in high-risk areas.

**Table KBH.2: Minimum Freeboard Under Bridge Superstructure (Table 5.2, Verified)**

| Structure Type | Minimum Freeboard (m) |
|---------------|----------------------|
| Short and medium bridges (6m < L <= 50m) | 1.0* |
| Long span bridge (L > 50m) | 1.5 |

*Recommended up to 1.5m if vertical alignment permits.

**Additional Hydraulic Requirements from RDM 4.2 Section 2.7:**
- Bearings shall not be less than 0.50m above design high flood level
- Minimum freeboard for approach embankments: 1.50m

**Table KBH.3: Orifice Coefficients C_o and e (Table 5.3, Verified)**

| L/W | C_o | e |
|-----|-----|---|
| 0.50 | 0.892 | 1.050 |
| 0.55 | 0.880 | 1.030 |
| 0.60 | 0.870 | 1.000 |
| 0.65 | 0.867 | 0.975 |
| 0.70 | 0.865 | 0.925 |
| 0.75 | 0.868 | 0.860 |
| 0.80 | 0.875 | 0.720 |
| 0.85 | 0.897 | 0.510 |
| 0.90 | 0.923 | 0.285 |
| 0.95 | 0.960 | 0.125 |

**Scour Parameters:** --> `tables/kenya_scour_parameters.json`

**Bridge Scour Methods (Section 5.6):**
RDM 2.2 Section 5.6 covers scour types: general (long-term degradation/aggradation), contraction scour, and local scour at piers and abutments. The methodology follows HEC-18 principles with Kenya-specific application.

**Key Scour Equations from Section 5.6:**

*Pier Scour (CSU equation):*
```
y_s/y_1 = 2.0 * K_1 * K_2 * K_3 * (a/y_1)^0.65 * Fr_1^0.43
```
Where K_1 = pier shape, K_2 = angle of attack, K_3 = bed condition

*Contraction Scour (live-bed):*
```
y_2/y_1 = (Q_2/Q_1)^(6/7) * (W_1/W_2)^(k1)
```

### M.2.2 Country-Specific Formulas

**Orifice Method for Bridge Discharge (Equation 5.3):**
```
Q = C_o * L * y_1 * [(y_1 - y_2) + (1+e) * V^2/(2g)]^0.5
```
Where C_o and e from Table 5.3, L = effective waterway length, y_1/y_2 = upstream/downstream depths.

**Simplified Discharge (Equation 5.4a):**
```
Q = 1.833 * W * H^(3/2)  for single opening
Q = 1.833 + 1.655(n'-1) * W * H^(3/2)  for multiple openings
```

**Manning's Equation for Bridge Flow (Equation 5.1):**
```
V = R^(2/3) * S^(1/2) / n
Q = A * V
```

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 1 (Kenya): Determine design flood
  |-- Select return period from Table 5.1
  |-- Short/medium bridges: Q50 design, Q100 check
  |-- Long bridges: Q100 design, Q200 check
  +-- Consider climate change adjustment (50-100% increase in high-risk areas)

Step 2 (Kenya): Freeboard check
  |-- Short/medium bridges: minimum 1.0m (Table 5.2)
  |-- Long bridges: minimum 1.5m (Table 5.2)
  |-- Bearings >= 0.50m above design HFL (RDM 4.2 Section 2.7)
  +-- Approach embankments: freeboard >= 1.50m (RDM 4.2 Section 2.7)

Step 3 (Kenya): Backwater (afflux) check
  |-- Maximum allowed: 0.5m (Section 5.1.2a)
  |-- Calculate using orifice method (Equation 5.3) or HEC-RAS
  +-- Afflux for all bridges with design velocity > 1.0 m/s

Step 4 (Kenya): Scour assessment
  |-- Estimate pier scour (CSU equation, Section 5.6)
  |-- Estimate contraction scour
  |-- Total scour = general + contraction + local
  |-- Foundation level below total scour depth
  +-- Super flood check: Q500 or 1.7 * Q100
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya's river systems are highly seasonal.** Many rivers in semi-arid eastern Kenya are ephemeral (seasonal), while rivers in the western highlands carry significant year-round flow. The Tana River (longest in Kenya, ~1,000 km) and Athi-Galana-Sabaki system present major scour challenges due to sand-bed conditions and high flood variability.

**Sand-bed rivers are common in Kenya** and require careful scour estimation. Live-bed scour conditions typically govern for sand-bed rivers. The super flood check (1.7 x Q100 or Q500) is critical for large bridges on major rivers.

**Climate change is explicitly addressed in RDM 2.2.** The manual recommends increasing design return periods by 50-100% in high-risk areas -- a significant departure from older design approaches.

### M.3.3 Common Errors (Kenya-Specific)

- **Using Uganda MoWT scour parameters directly:** While both reference HEC-18 methodology, extract coefficients independently from RDM 2.2 Section 5.6.
- **Ignoring climate change adjustment:** RDM 2.2 explicitly recommends increased return periods for high-risk areas.
- **Insufficient freeboard:** Table 5.2 values are minimums; recommended up to 1.5m for short/medium bridges.

---

## M.4 Country-Specific Defaults

| Parameter | Kenya Default | Condition | Rationale |
|-----------|-------------|-----------|-----------|
| Design return period (short/medium) | Q50 | 6m < L <= 50m | Table 5.1 |
| Design return period (long) | Q100 | L > 50m | Table 5.1 |
| Minimum freeboard (short/medium) | 1.0m | 6m < L <= 50m | Table 5.2 |
| Minimum freeboard (long) | 1.5m | L > 50m | Table 5.2 |
| Maximum afflux | 0.5m | All bridges | Section 5.1.2a |
| Super flood | Q500 or 1.7 * Q100 | Scour check | Section 5.3.3i |
| Approach freeboard | 1.50m | All bridges | RDM 4.2 Section 2.7 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source |
|-----------|-----------|--------|
| Freeboard | >= 1.0m (short/medium) or >= 1.5m (long) | Table 5.2 |
| Afflux | <= 0.5m | Section 5.1.2a |
| Foundation below scour | Foundation level < total scour depth | Section 5.1.2f |
| Bearing elevation | >= 0.50m above design HFL | RDM 4.2 Section 2.7 |

### M.5.2 Standards Compliance Checks

- Verify design return period from Table 5.1
- Verify freeboard from Table 5.2
- Verify afflux limit 0.5m
- Verify scour depth estimated per Section 5.6 methods
- Verify super flood check performed

---

## M.6 Country-Specific Escalation

| Trigger | Action | Rationale |
|---------|--------|-----------|
| Major river crossing (Q > 500 m3/s) | Detailed hydraulic modelling with HEC-RAS | Section 5.4.3.1 |
| Sand-bed river with deep scour potential | Specialist scour assessment | Section 5.6 |
| Tidal crossing | Specialist tidal hydraulic analysis | Coastal conditions |
| Afflux exceeds 0.5m | Redesign or seek special justification | Section 5.1.2a |
| Climate change high-risk area | Increase return period 50-100% | Table 5.1 note |
| Catchment > 300 km2 | Computer-based hydraulic design methods | Section 5.4.3.1 |

---

## M.7 Worked Example -- Kenya

**Scenario:** Assess hydraulic adequacy of a proposed bridge over a seasonal river in Kenya. Design flow Q50 = 450 m3/s, waterway width 30m, river bed is sandy gravel.

**Step 1 -- Classification and Return Period:**
- Bridge span approximately 35m: medium bridge (15m < L <= 50m)
- Design flood: Q50 = 450 m3/s (Table 5.1)
- Check flood: Q100

**Step 2 -- Freeboard Check (Table 5.2):**
- Medium bridge: minimum freeboard = 1.0m (recommended 1.5m)
- Estimate normal depth using Manning's equation
- Assuming trapezoidal channel, n = 0.030 (sandy gravel), slope = 0.002:
  - V = R^(2/3) * S^(1/2) / n
  - Iterate for normal depth approximately 3.0m
- Set soffit level >= 3.0m + afflux + 1.0m above riverbed

**Step 3 -- Afflux Check:**
- Contracted waterway: 30m with piers
- Maximum allowed: 0.5m (Section 5.1.2a)
- Use orifice method (Equation 5.3) or HEC-RAS to verify

**Step 4 -- Scour Assessment (Section 5.6):**
- Pier scour (CSU equation): assume round-nosed pier 1.2m diameter
  - K_1 = 1.0 (round nose), K_3 = 1.1 (clear-water/plane bed)
  - y_s/y_1 = 2.0 * 1.0 * K_2 * 1.1 * (1.2/3.0)^0.65 * Fr^0.43
  - Estimated pier scour approximately 2.0-2.5m
- Contraction scour: approximately 0.5-1.0m (depending on constriction ratio)
- Total scour: approximately 3.0-3.5m

**Step 5 -- Foundation Level:**
- Foundation below total scour: riverbed level - 3.5m minimum
- Plus 2.0m minimum below scour per RDM 4.2 Section 2.9
- Foundation level approximately 5.5m below riverbed

**Step 6 -- Protection Recommendation:**
- Sandy gravel bed: riprap protection at piers and abutments recommended
- Consider guide banks at abutments per RDM 2.2 Section 6.2.4.2
- Scour depth is significant -- recommend scour monitoring during operation

**Conclusion:** Bridge hydraulically adequate subject to afflux verification (must be <= 0.5m). Scour depth of 3.0-3.5m requires foundation depth approximately 5.5m below riverbed. Riprap protection recommended at piers. Check flood Q100 should also be assessed.

---

## M.8 References

- Kenya RDM 2.2 -- Drainage Design (2025), Chapter 5: Hydraulic Design of Bridges
- Kenya RDM 4.2 -- Bridge and Culvert Design (2025), Section 2.7: Hydrological and Hydraulic Design Requirements
- HEC-18: Evaluating Scour at Bridges, 5th Edition (FHWA)
- HEC-RAS: River Analysis System (US Army Corps of Engineers)

---

## Module Changelog

| Date | Version | Changes |
|------|---------|---------|
| 2026-04-05 | 0.1 | Initial Kenya module -- RDM 2.2 Ch 5 bridge hydraulics with scour and freeboard |
