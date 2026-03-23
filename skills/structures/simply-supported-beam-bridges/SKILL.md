---
name: "simply-supported-beam-bridges"
description: "Use when performing preliminary design of simply supported beam bridges (RC deck slab, RC T-beam, steel-concrete composite). Requires design loads from Skill #36 (Bridge Loading) and site data from Skill #35 (Bridge Site Selection). Outputs superstructure reactions to Skill #38 (Bridge Substructure). Preliminary sizing level -- detailed reinforcement design requires specialist structural engineer."
---

# Simply Supported Beam Bridges

> **Skill ID:** 37
> **Domain:** Structures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK

## Purpose

Perform preliminary design of simply supported beam bridges -- select bridge type, determine member sizes using span-to-depth ratios, calculate load effects (moment and shear envelopes), and estimate support reactions for substructure design. This skill covers the feasibility and preliminary sizing stage; detailed reinforcement design and construction drawings require specialist structural engineer review.

## When to Use This Skill

- **Use when:** A bridge span and loading have been determined (Skills #35 and #36) and preliminary superstructure sizing is needed for feasibility assessment, quantity estimation, or cost comparison.
- **Do not use when:** Designing continuous or multi-span bridges (beyond simply supported scope). Not for detailed reinforcement calculations or construction drawings (specialist required).
- **Prerequisite skills:** Skill #36 (Bridge Loading) for design loads. Skill #35 (Bridge Site Selection) for span and site data. Skill #17 (Cross-Section Design) for carriageway width.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Bridge Types for Simple Spans:**
- **RC deck slab:** Solid concrete slab spanning between abutments. Simple to construct. Economical for short spans (up to approximately 12m).
- **RC T-beam:** Multiple T-shaped beams with integral deck slab. Versatile for medium spans (8-25m). Most common type in East Africa.
- **Steel-concrete composite:** Steel beams with concrete deck slab acting compositely. Suitable for longer spans (15-40m+) where steel erection is feasible.
- **Precast prestressed beams:** Factory-produced beams placed by crane. Suitable for standardised spans (10-35m) where crane access exists.

**Span-to-Depth Ratios for Preliminary Sizing:**

| Type | Span Range (m) | Depth Ratio | Typical Depth at 20m |
|------|---------------|-------------|---------------------|
| RC deck slab | up to 12 | L/15 to L/20 | N/A (< 12m) |
| RC T-beam | 8-25 | L/12 to L/16 | 1.25-1.67m |
| Steel-concrete composite | 15-40+ | L/18 to L/22 | 0.91-1.11m |
| Precast prestressed beam | 10-35 | L/16 to L/20 | 1.0-1.25m |

These are approximate ratios for preliminary sizing from engineering practice and BS 5400 Part 4 guidance as referenced by MoWT Vol 4.

**Load Distribution:** For simply supported spans, HA loading is applied as UDL + KEL. HB vehicle is positioned for maximum effect. Lane factors determine the proportion of load applied to each notional lane.

**Moment and Shear Envelopes:**
- HA UDL maximum moment: M = w * L^2 / 8 per lane
- HA KEL maximum moment: M = P * L / 4 per lane
- HB positioned to maximise moment (position depends on inner axle spacing)
- Maximum shear at supports

### 1.2 Universal Formulas

**Simply supported bending moment (UDL):**

```
M_udl = w * L^2 / 8
```

**Simply supported bending moment (point load at midspan):**

```
M_kel = P * L / 4
```

**Simply supported shear (UDL):**

```
V_udl = w * L / 2
```

**Factored design moment (ULS):**

```
M_d = gamma_fL * gamma_f3 * (M_dead + M_live)
```

Where gamma_f3 = 1.10 for ULS (from BS 5400 Parts 4/5 as referenced by MoWT Vol 4).

### 1.3 Figures & Diagrams

**Simply supported beam:** A beam resting on two supports (abutments) with no moment transfer at the supports. The maximum bending moment occurs at midspan, and the maximum shear occurs at the supports.

**Bridge cross-section:** The deck width includes carriageway (from Skill #17), parapets (typically 0.5-1.0m each side), and optional footways. Total bridge width = carriageway + 2 * parapet width + footways.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction --> Load country module

Step 2: Determine span and bridge type
  |-- From Skill #35: span estimate
  |-- Select bridge type based on span range:
  |    |-- up to 12m: RC deck slab
  |    |-- 8-25m: RC T-beam (most common)
  |    |-- 15-40m+: composite (if steel erection feasible)
  |    +-- 10-35m: precast (if crane access and standard spans)
  +-- Consider construction capability (country module)

Step 3: Estimate beam depth from span-to-depth ratio
  --> See country module for ratio table
  --> Use mid-range ratio for preliminary design

Step 4: Determine bridge width
  --> Carriageway from Skill #17 + parapets + footways

Step 5: Calculate dead loads
  |-- Self-weight from beam dimensions and concrete density (24 kN/m3)
  |-- Superimposed dead: surfacing + parapets + services
  +-- Apply gamma_fL from Skill #36 load combinations

Step 6: Apply HA and HB loading per Skill #36
  |-- HA: UDL + KEL per notional lane
  |-- HB: position for maximum effect
  +-- Apply gamma_fL from Combination 1

Step 7: Calculate moment and shear envelopes
  |-- M_ha = w*L^2/8 + P*L/4 per lane
  |-- M_hb from HB vehicle positioned at midspan
  |-- V at supports
  +-- Factored moments: M_d = gamma_fL * gamma_f3 * M

Step 8: Check preliminary member sizes
  --> Verify beam depth is sufficient for moment capacity
  --> This is approximate -- detailed design required

Step 9: Estimate support reactions for Skill #38
  --> Total vertical reaction = sum of all loads at support
  --> Horizontal reaction from braking, wind, temperature

Step 10: Produce output
```

### 2.2 Professional Judgment (Universal)

**RC T-beam is the default choice for medium spans (10-25m)** in most developing countries. It requires only basic construction technology (formwork, reinforcement, concrete) and local materials. Composite bridges require steel fabrication and erection capability that may not be available.

**Preliminary sizing is sufficient for feasibility and cost estimation.** Detailed reinforcement design (bending, shear, bond, deflection, crack width) requires specialist structural engineer with experience in the applicable code (BS 5400 Part 4 for Uganda, Eurocode 2 for UK).

### 2.3 Common Errors

1. **Attempting detailed reinforcement calculations.** This skill provides preliminary sizing only. Detailed design is beyond the scope -- always flag for specialist review.
2. **Forgetting gamma_f3.** The additional factor gamma_f3 = 1.10 (ULS) must be applied to the effects of design loads, in addition to gamma_fL.
3. **Ignoring bridge width in self-weight calculation.** Self-weight depends on the full cross-section including parapets and any footways, not just the carriageway.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Concrete density | 24 kN/m3 | Reinforced concrete | No flag (standard) | Standard RC density |
| Surfacing load | 2.4 kN/m2 | 100mm bituminous | ASSUMED: 100mm surfacing at 24 kN/m3 | Common bridge surfacing |
| Parapet load | 1.0 kN/m per side | Not specified | ASSUMED: 1.0 kN/m per parapet | Typical concrete parapet |
| gamma_f3 (ULS) | 1.10 | Not specified | No flag (standard) | BS 5400 Part 4 as referenced by MoWT |

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Beam depth | L/25 | L/8 | m | Warn if outside typical range for type |
| Span | 3 | 40 | m | Warn if > 40m (specialist for long spans) |
| Bridge width | 4 | 30 | m | Verify against Skill #17 carriageway + parapets |
| Self-weight | 5 | 50 | kN/m | Warn if outside typical range for type |

### 4.2 Consistency Checks

- **Span vs bridge type:** Verify span falls within the typical range for the selected bridge type.
- **Beam depth vs span-to-depth ratio:** Verify depth is consistent with the ratio table.
- **Reactions vs total loading:** Verify sum of reactions equals total applied loads.

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Span > 25m (RC T-beam) | Beyond typical range | SENIOR REVIEW -- Span [X]m exceeds typical RC T-beam range. Consider composite or precast option. |
| Span > 40m | Long span specialist design | SENIOR REVIEW -- Span [X]m requires specialist long-span bridge design. |
| Detailed reinforcement design needed | Beyond preliminary scope | SENIOR REVIEW -- Preliminary sizing complete. Detailed reinforcement design per [code] required by specialist structural engineer. |
| No country module available | Cannot apply standards | SENIOR REVIEW -- No country module for [jurisdiction]. |

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Country module selection |
| Span | number | m | Yes | Skill #35 | Bridge span from site assessment |
| Design loads | object | -- | Yes | Skill #36 | HA_udl, HA_kel, HB_axle_load, load_factors |
| Carriageway width | number | m | Yes | Skill #17 | For bridge width determination |
| Wind loads | object | -- | Recommended | Skill #36 | Wind forces on superstructure |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| superstructure_reactions | object | -- | Skill #38 | Vertical and horizontal reactions at supports |
| self_weight_estimate | number | kN/m | Skill #38 | For substructure dead load calculation |
| bridge_type | text | -- | User | Selected bridge type with justification |
| preliminary_dimensions | object | -- | User | Beam depth, width, number of beams |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda MoWT/BS 5400 provisions | Markdown |
| `modules/uk.md` | UK Eurocode provisions (knowledge-based) | Markdown |
| `tables/uganda_span_depth_ratios.json` | Span-to-depth ratios for preliminary sizing | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
### Step 2: Select Bridge Type from span range and construction capability
### Step 3: Estimate Beam Depth from span-to-depth ratio
### Step 4: Determine Bridge Width (carriageway + parapets + footways)
### Step 5: Calculate Dead Loads (self-weight + superimposed)
### Step 6: Apply Live Loading from Skill #36 (HA UDL + KEL, HB)
### Step 7: Calculate Moment and Shear Envelopes
### Step 8: Check Preliminary Member Sizes
### Step 9: Estimate Support Reactions for Skill #38
### Step 10: Produce Output

---

## 8. Output Format

```
============================================================
SIMPLY SUPPORTED BEAM BRIDGE -- [Bridge Name]
Country/Jurisdiction: [country]
Standard: [standard]
Date: [YYYY-MM-DD]
============================================================

BRIDGE GEOMETRY
---------------
Span:               [X] m
Bridge Type:        [RC slab / RC T-beam / Composite / Precast]
Beam Depth:         [X] m (L/[ratio])
Bridge Width:       [X] m
Number of Beams:    [X]

DEAD LOADS
----------
Self-weight:        [X] kN/m
Superimposed Dead:  [X] kN/m
Total Dead:         [X] kN/m

LIVE LOADS (from Skill #36)
---------------------------
HA UDL:             [X] kN/m per lane
HA KEL:             120 kN per lane
HB:                 [X] kN total

MOMENT ENVELOPE (per beam or per metre)
---------------------------------------
Dead Load Moment:   [X] kNm
HA Moment:          [X] kNm
HB Moment:          [X] kNm
Factored Moment:    [X] kNm (Combination 1 ULS)

SHEAR ENVELOPE
--------------
Max Shear at Support: [X] kN (ULS)

SUPPORT REACTIONS (for Skill #38)
---------------------------------
Vertical (ULS):     [X] kN per support
Horizontal (ULS):   [X] kN per support (braking/wind)

ESCALATION FLAGS
----------------
SENIOR REVIEW -- Preliminary sizing complete. Detailed reinforcement
design per [code] required by specialist structural engineer.
[Other flags]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Detailed reinforcement design (bending, shear, crack width, deflection). Continuous/multi-span bridges. Prestressed beam design. Composite beam design (shear connectors, lateral stability). Construction staging.
- **Simplifications:** Uses span-to-depth ratios for preliminary sizing (not structural analysis). Moment calculation assumes simply supported UDL + point load (does not include load distribution between beams). Actual design requires grillage or finite element analysis.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Ethiopia, Tanzania

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with preliminary sizing approach, span-to-depth ratios, moment/shear envelopes |
