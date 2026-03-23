---
name: "climate-resilience"
description: "Use when screening road designs for climate risks and identifying adaptation measures. Covers flooding, extreme heat, landslides, and drought risks with practical design adjustments. Cross-references Skill #29-32 (Drainage) for increased culvert capacity and Skill #21-25 (Pavement) for material selection under temperature extremes. Produces climate risk screening matrix and recommended design modifications. Practical engineering focus, not climate science."
---

# Climate Resilience

> **Skill ID:** 63
> **Domain:** Planning & Safety
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Screen road designs for climate risks and identify practical engineering adaptation measures. This skill assesses four climate hazards -- flooding, extreme heat, landslides, and drought -- against road infrastructure vulnerability, and recommends specific design modifications to improve climate resilience. The focus is practical engineering: what to change in the drainage design, pavement material selection, or geometric alignment to reduce climate risk. This is not an academic climate science exercise -- it is a design review tool that cross-references existing drainage (Skills #29-32) and pavement (Skills #21-25) skills for implementation details.

## When to Use This Skill

- **Use when:** Screening a road design for climate risks, reviewing whether climate adaptation measures should be incorporated into a road improvement project, or assessing the vulnerability of an existing road to climate impacts.
- **Do not use when:** Conducting climate modelling or detailed climate science analysis. Not for environmental impact assessment (use Skill #62). Not for hydrological analysis (use Skill #29 for hydrology, this skill recommends adjustments to the outputs of Skill #29).
- **Prerequisite skills:** Skill #29 (Hydrology for Road Drainage) for baseline design flows. Skill #31 (Culvert Hydraulic Design) for culvert sizing. Skill #24 (Pavement Material Specs) for material selection. These are not strict prerequisites -- climate screening can be done independently -- but adaptation measures reference these skills.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Climate Hazards for Roads:**

Four primary climate hazards affect road infrastructure:

1. **Flooding (increased rainfall intensity):**
   - Impact: Overtopping of culverts and ditches, road embankment washout, erosion of shoulders and slopes, submergence of low-lying road sections.
   - Mechanism: Climate change increases rainfall intensity (more extreme events) even where total annual rainfall may not change significantly. Design storms based on historical data may underestimate future peak flows.
   - Vulnerability: Low-lying roads, inadequate culvert capacity, unprotected embankment slopes, insufficient freeboard at bridge crossings.

2. **Extreme heat (pavement degradation):**
   - Impact: Asphalt softening and rutting, bleeding of bituminous surfaces, accelerated ageing of binder, thermal expansion of concrete pavements.
   - Mechanism: Higher peak temperatures and longer heat waves increase the thermal load on pavement surfaces. Pavement design temperature may be exceeded.
   - Vulnerability: Thin asphalt overlays, standard bitumen grades (not modified), dark-coloured surfaces, heavily loaded roads.

3. **Landslides (slope instability from saturation):**
   - Impact: Road blockage, loss of road formation in cut sections, retaining wall failure, debris flow across carriageway.
   - Mechanism: Increased rainfall intensity saturates slopes, reducing shear strength and triggering landslides. Prolonged wet seasons extend the instability period.
   - Vulnerability: Roads in mountainous terrain, steep cut slopes, inadequate slope drainage, deforested hillsides above road.

4. **Drought (subgrade desiccation):**
   - Impact: Subgrade shrinkage and cracking (expansive soils), loss of subgrade support, shoulder and slope erosion from sudden heavy rain following dry period.
   - Mechanism: Extended dry periods dry out the subgrade. When rain returns, dried and cracked subgrade absorbs water rapidly, causing rapid strength loss.
   - Vulnerability: Roads on expansive clay soils, roads with no moisture barrier, unpaved shoulders that allow moisture ingress.

**Risk Screening Matrix:**

For each climate hazard, assess:
- **Likelihood:** Low / Medium / High -- based on location, climate zone, and projected climate changes.
- **Consequence:** Minor / Moderate / Major -- based on road class, traffic volume, strategic importance, and vulnerability of the road design.
- **Risk rating:** Combined likelihood x consequence:

| Likelihood / Consequence | Minor | Moderate | Major |
|-------------------------|-------|----------|-------|
| Low | Low | Low | Medium |
| Medium | Low | Medium | High |
| High | Medium | High | Very High |

Extract the full risk screening matrix to `tables/climate_risk_screening_matrix.json`.

**Adaptation Measures by Hazard:**

1. **Flooding adaptation:**
   - Increase culvert capacity by 20-30% above historical design flow (Skill #31 design Q x 1.2-1.3)
   - Raise road embankment above projected flood levels (add freeboard)
   - Improve drainage channel capacity (Skill #30 -- increase ditch cross-section)
   - Specify erosion protection at culvert outlets and embankment slopes (Skill #32)
   - Consider increasing design return period (e.g., from 25-year to 50-year storm)
   - Provide scour protection at bridge foundations (Skill #39)

2. **Extreme heat adaptation:**
   - Use polymer-modified bitumen (PMB) or modified binder for pavement surface (Skill #24)
   - Increase pavement thickness to distribute thermal load (Skill #21-23)
   - Use lighter-coloured aggregates or surface treatments to reduce heat absorption
   - Specify higher-grade bitumen (e.g., PG 76-22 instead of PG 64-22 for high-temperature environments)
   - Increase joint spacing and provision for thermal expansion in concrete pavements

3. **Landslide adaptation:**
   - Improve slope drainage (herringbone drains on cut slopes, interceptor drains above road)
   - Reduce cut slope angles or provide benching
   - Install retaining structures where slope stability is marginal
   - Plant vegetation on slopes for root reinforcement (bioengineering)
   - Consider route realignment to avoid the most vulnerable slopes
   - Install early warning monitoring on critical slopes

4. **Drought adaptation:**
   - Protect subgrade from desiccation using moisture barriers or impermeable shoulders
   - Use lime or cement stabilization for expansive clay subgrades (Skill #28)
   - Provide wider sealed shoulders to prevent moisture ingress
   - Specify flexible pavement structure that can accommodate minor subgrade movement
   - Avoid expansive clay as fill material in embankments

**Design Life Adjustment:**

For roads in climate-vulnerable areas, consider whether:
- The design return period for drainage should increase (e.g., 25-year to 50-year storm)
- The pavement design temperature should be adjusted upward
- The design life assumption should account for increased maintenance requirements

### 1.2 Universal Formulas

**Climate-adjusted design flow:**
```
Q_climate = Q_design x CF
```
- Q_design: Design peak flow from Skill #29 (historical data)
- CF: Climate adjustment factor (typically 1.2-1.3 for moderate risk, 1.3-1.5 for high risk)
- This is a simplified approach -- detailed climate-adjusted hydrology uses downscaled GCM outputs

**Risk rating calculation:**
```
Risk = Likelihood x Consequence
```
Both on a 3-point scale (1=Low, 2=Medium, 3=High/Major). Risk rating from the matrix in Section 1.1.

### 1.3 Figures & Diagrams

No figures required. The risk screening matrix is defined in JSON tables. Adaptation measures reference specific design skills for implementation details.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Identify project location and climate zone
  --> Determine geographic region
  --> Identify applicable climate projections (See country module, Section M.2.1)
  --> Note: climate data gaps are common -- use regional projections where local data unavailable

Step 2: Screen each climate hazard using risk matrix
  For each hazard (flooding, extreme heat, landslides, drought):
    |-- Assess likelihood (Low/Medium/High) based on location and climate projections
    |-- Assess consequence (Minor/Moderate/Major) based on road class and vulnerability
    +-- Determine risk rating from matrix

Step 3: For each Medium/High/Very High risk, identify specific design adjustment
  |-- Flooding (Medium+) --> Increase culvert capacity (Skill #31), improve drainage (Skill #30),
  |                          specify erosion protection (Skill #32), consider design return period increase
  |-- Extreme heat (Medium+) --> Modified binder (Skill #24), increased pavement thickness (Skill #21-23)
  |-- Landslides (Medium+) --> Slope drainage, geotechnical stabilization, route realignment
  +-- Drought (Medium+) --> Moisture barriers, stabilization (Skill #28), sealed shoulders

Step 4: Cross-reference relevant design skill for implementation details
  --> Each adaptation measure references a specific skill
  --> The climate resilience skill identifies WHAT to change
  --> The referenced design skill determines HOW to implement the change

Step 5: Summarize climate risks and recommended modifications
  --> Produce risk screening matrix with ratings
  --> List recommended design modifications with cross-references
  --> Note any design return period adjustments recommended
  --> Flag any risks requiring specialist assessment
```

### 2.2 Professional Judgment (Universal)

**Climate resilience is about practical engineering, not climate science.** The engineer does not need to understand General Circulation Models. The engineer needs to know: (a) which hazards are relevant to this location, (b) what design adjustments reduce vulnerability, and (c) which existing design parameters to modify.

**A 20-30% increase in culvert capacity is a pragmatic response to climate uncertainty.** It is not possible to precisely quantify future rainfall intensity changes at the project level. A 20-30% uplift factor on design flow is widely used in practice as a proportionate response. For high-risk locations, a 30-50% uplift or increasing the design return period from 25-year to 50-year may be warranted.

**Not all hazards apply to all roads.** A road in a flat lowland area has no landslide risk. A road in a highland area has minimal drought risk. The screening should identify which hazards are relevant and focus engineering attention on those.

**Climate adaptation measures often have co-benefits.** Larger culverts reduce flood risk AND reduce maintenance costs (less frequent overtopping and scour). Modified binder resists rutting in heat AND improves long-term pavement performance. These co-benefits can help justify the additional cost.

**Adaptation is not free, but damage is more expensive.** Climate adaptation measures add 5-15% to project cost. However, the cost of repairing climate-damaged roads is typically 3-5x the cost of the adaptation measure. The investment case is usually clear.

### 2.3 Common Errors

1. **Ignoring climate risk entirely.** Many road designs use historical climate data without considering whether future conditions will differ. This is particularly problematic for long-design-life infrastructure (20+ years).
2. **Applying a uniform climate adjustment everywhere.** A 30% culvert capacity increase is appropriate for a flood-prone lowland but may be unnecessary for a well-drained upland area. Risk screening determines where adjustments are needed.
3. **Treating climate resilience as a separate design exercise.** Climate adaptation should be integrated into the normal design process -- adjusting drainage design, pavement specification, and alignment design, not producing a separate "climate resilience report" disconnected from the design.
4. **Over-engineering for climate.** Doubling all culvert sizes "for climate" is wasteful. A risk-based approach targets adjustments where they are most needed.
5. **Not considering cascading risks.** Flooding can trigger landslides. Drought followed by heavy rain can cause subgrade failure and slope instability. The interaction between hazards should be considered.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Climate adjustment factor (flooding) | 1.2 | Moderate risk | ASSUMED: 20% climate uplift on design flow for moderate flood risk. Adjust based on site-specific climate assessment. | Conservative standard practice |
| Climate adjustment factor (flooding) | 1.3 | High risk | ASSUMED: 30% climate uplift on design flow for high flood risk. Consider detailed climate-adjusted hydrology. | Higher-risk areas warrant greater margin |
| Design return period | 25 years | Standard design, not specified | ASSUMED: 25-year design return period. Consider 50-year for climate-vulnerable locations. | Standard practice -- may need upward adjustment |
| Pavement temperature adjustment | +2 to +4 degrees C | Climate-vulnerable area | ASSUMED: +2 to +4 C on design temperature for pavement. Verify with climate projections. | IPCC mid-range warming scenario |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always flag climate adjustments** explicitly in output. Never silently apply a climate factor.
3. **When in doubt, apply moderate adjustment.** A 20% culvert capacity increase is always defensible. Omitting climate consideration entirely is not.
4. **Flag for investigation:** When climate data is unavailable, use regional projections and flag the data gap.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Climate adjustment factor (flow) | 1.0 | 2.0 | ratio | If > 1.5, flag as aggressive. If > 2.0, reject as excessive. If 1.0, no climate adjustment applied -- verify this is intentional. |
| Temperature adjustment | 0 | +6 | degrees C | If > +4 C, flag as upper-range scenario. If 0, no temperature adjustment -- verify. |
| Design return period | 10 | 100 | years | If increased beyond 50 years, flag as exceptional -- requires justification. |

### 4.2 Consistency Checks

- **Risk rating vs adaptation:** If a hazard is rated Medium or higher, verify that at least one adaptation measure is recommended.
- **Climate factor vs location:** Verify that climate factors are appropriate for the project location and climate zone.
- **Adaptation vs design skill cross-reference:** Each recommended adaptation should reference the specific design skill for implementation.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific climate projections | SENIOR REVIEW -- No country module for [jurisdiction]. Using global climate projections. Verify with local climate data. |
| No climate data available | Cannot assess likelihood of hazards | NOTE -- No climate data for project area. Using regional projections as proxy. Recommend obtaining site-specific climate information. |
| Very High risk rating for any hazard | Significant climate vulnerability | SENIOR REVIEW -- Very High climate risk ([hazard]) identified. Adaptation measures are critical. Consider specialist climate vulnerability assessment. |
| Multiple interacting hazards | Cascading risk | NOTE -- Multiple climate hazards identified (flooding + landslides). Consider interaction effects and cascading failure scenarios. |
| Design return period increase > 2x | Major drainage cost increase | NOTE -- Recommended design return period increase from [X] to [Y] years. This will significantly increase culvert sizes and drainage costs. Verify cost-benefit. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module and climate zone data to load |
| Project location | text | -- | Yes | User | Region, district, coordinates for climate zone identification |
| Climate zone | text | -- | Recommended | Country module | Climate classification for the project area |
| Road design parameters | object | -- | Recommended | Skills #13-17 | Geometric design details for vulnerability assessment |
| Drainage design | object | -- | Recommended | Skill #29-32 | Design flows and culvert sizes for adjustment calculation |
| Pavement design | object | -- | Optional | Skill #21-25 | Pavement material specification for heat assessment |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| climate_risk_assessment | object | -- | Design team | Risk screening matrix with ratings for each hazard |
| recommended_adaptations | list | -- | Design team | Specific design modifications with cross-references to design skills |
| design_return_period_adjustment | object | -- | Skill #29 | Recommended change to design return period (if any) |
| climate_adjustment_factor | number | ratio | Skill #31 | Multiplier for design peak flow (e.g., 1.2 for 20% increase) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific climate zones and risk profiles | Markdown |
| `tables/climate_risk_screening_matrix.json` | Climate hazard screening matrix template | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction and project location. Load the Uganda module for climate zone identification and region-specific hazard profiles.

### Step 2: Identify Climate Zone and Hazard Profile
Determine the climate zone from the country module. Identify which of the four hazards (flooding, extreme heat, landslides, drought) are relevant to this location.

### Step 3: Screen Each Hazard
For each relevant hazard, assess likelihood and consequence using the risk screening matrix. Determine the risk rating.

### Step 4: Identify Adaptation Measures
For each hazard rated Medium or higher, identify specific design adjustments. Cross-reference the relevant design skill for implementation details.

### Step 5: Calculate Climate Adjustment Factors
Where applicable, calculate the climate adjustment factor for design flows (e.g., 1.2 for moderate flood risk) and pavement temperature adjustment.

### Step 6: Run Validation
Apply all checks from Section 4. Verify that all Medium+ risks have adaptation measures, and that adaptation measures cross-reference correct design skills.

### Step 7: Produce Output
Format per Section 8. Include risk screening matrix, recommended adaptations with skill cross-references, and any design parameter adjustments.

---

## 8. Output Format

### Output Template

```
============================================================
CLIMATE RESILIENCE SCREENING -- [Project/Road Name]
Country/Jurisdiction: [country]
Climate Zone: [zone from country module]
Date: [YYYY-MM-DD]
============================================================

PROJECT LOCATION
----------------
Region: [region]
Climate zone: [zone]
Elevation: [m] (if relevant)
Key climate characteristics: [brief description]

CLIMATE RISK SCREENING MATRIX
------------------------------
| Hazard | Likelihood | Consequence | Risk Rating |
|--------|-----------|-------------|-------------|
| Flooding | [L/M/H] | [Min/Mod/Maj] | [L/M/H/VH] |
| Extreme Heat | [L/M/H] | [Min/Mod/Maj] | [L/M/H/VH] |
| Landslides | [L/M/H] | [Min/Mod/Maj] | [L/M/H/VH] |
| Drought | [L/M/H] | [Min/Mod/Maj] | [L/M/H/VH] |

RECOMMENDED ADAPTATIONS
------------------------
[For each hazard rated Medium or higher:]

[Hazard]: [Risk Rating]
  1. [Adaptation measure] -- Reference: Skill #[XX]
     Implementation: [brief description of what to change in design]
  2. [Adaptation measure] -- Reference: Skill #[XX]
     Implementation: [brief description]

DESIGN PARAMETER ADJUSTMENTS
-----------------------------
| Parameter | Current Value | Recommended Value | Rationale |
|-----------|--------------|-------------------|-----------|
| Design return period | [X] years | [Y] years | [reason] |
| Climate adjustment factor | 1.0 | [1.X] | [reason] |
| Pavement design temperature | [X] C | [X+N] C | [reason] |

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[Climate data sources, adaptation guidelines]

============================================================
CLIMATE RESILIENCE SCREENING -- FOR PROFESSIONAL REVIEW
This screening identifies climate risks and recommends
design adjustments. Implementation requires review of
referenced design skills and professional judgment.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Climate modelling and downscaled climate projections. Detailed flood modelling. Slope stability analysis (use geotechnical specialist). Carbon footprint assessment. Climate finance and Green Climate Fund applications.
- **Simplifications:** Climate adjustment factors are empirical ranges, not derived from site-specific climate modelling. Risk screening uses qualitative ratings, not quantitative probability assessment. Adaptation measures are design adjustments, not a comprehensive climate adaptation strategy.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya (different climate zones and hazards), Tanzania (coastal climate risk), Ethiopia (highland landslide risk)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with 4-hazard risk screening matrix, adaptation measures cross-referencing drainage (#29-32) and pavement (#21-25) skills, climate adjustment factors for design flows. |
