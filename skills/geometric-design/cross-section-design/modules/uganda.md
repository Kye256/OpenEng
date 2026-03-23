# Cross-Section Design -- Uganda Module

> **Parent Skill:** #17 Cross-Section Design
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 1 (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 1 | 2010 | Section 7 (Cross Section Elements), Tables 4-3 to 4-9, Figures 7-14 to 7-18 | Current -- primary standard for all roads in Uganda |

### M.1.2 Institutional Context

Same as Skill #13 Uganda module -- MoWT Road Design Manual is the national standard for all roads in Uganda. UNRA has supplementary guidelines but MoWT is the base standard. Cross-section parameters are defined per design class in the design class parameter tables (Tables 4-3 through 4-9) and illustrated in the typical cross-section figures (Figures 7-14 through 7-18).

### M.1.3 Standard Philosophy

MoWT provides prescriptive cross-section parameters by design class. Each design class (Paved Ia through Gravel C) has a defined set of cross-section dimensions that "shall be used." The manual provides separate cross-section types for rural/normal sections, town paved sections, town gravel sections, and dual carriageway (Paved Ia) sections. The distinction between rural and town cross-sections is critical -- town sections include outer lanes and footways that protect pedestrians.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Cross-Section Parameters:** The comprehensive table of all cross-section parameters by design class and context is stored in `tables/uganda_cross_sections.json`. Load this file for complete data.

The JSON table contains four sections:
- **rural_normal**: 6 design classes (Paved Ib, II, III; Gravel A, B, C) with road reserve width, roadway width, carriageway width, lanes, lane width, shoulder width, crossfall, and side slope.
- **town_paved**: 3 design classes (Paved Ib, II, III) with outer lane and footway widths.
- **town_gravel**: 3 design classes (Gravel A, B, C) with outer lane and footway widths.
- **dual_carriageway**: Paved Ia with median, travel lanes, outer lanes, and footways.

**Clear Zones (MoWT Table 7-5, p142, Verified):**

| Speed Limit (km/h) | Desired Clear Zone (m) | Minimum Clear Zone (m) |
|---------------------|----------------------|----------------------|
| 70 | 5 | 3 |
| 80 | 6 | 4 |
| 100 | 9 | 6 |

Clear zone is measured from the edge of the carriageway (not from the shoulder edge). On curves, the clear zone on the outside increases -- a correction factor up to 2.0 applies at R=300m (MoWT Figure 7-6).

**Median Guidance (MoWT Section 7.13, p144, Verified):**

| Parameter | Value | Notes |
|-----------|-------|-------|
| Absolute minimum width | 1.2 m | Physical barrier or raised median |
| Practical minimum width | 1.8 m | Allows for median drainage |
| Desirable for right-turn lanes | 4.8 - 5.0 m | Accommodates right-turn storage lane |
| High-speed dual (80 km/h) | 6.0 m | Minimum for recovery at speed |
| High-speed dual (100 km/h) | 9.0 m | Minimum for recovery at speed |

Median barriers are not normally needed at speeds below 80 km/h.

### M.2.2 Country-Specific Formulas

Cross-section design in MoWT is entirely table-based. No formulas are provided -- parameters are looked up from the design class tables and cross-section figures. The agent should use `tables/uganda_cross_sections.json` for lookups.

### M.2.3 Classification System

The cross-section type is determined by two factors:

1. **Design class** (from Skill #13): Paved Ia, Ib, II, III; Gravel A, B, C
2. **Context**: Rural/Normal vs Town

The mapping:
- **Paved Ia** always uses the **dual carriageway** cross-section (Figure 7-17)
- **Paved Ib, II, III in rural areas** use **rural/normal** cross-section (Figure 7-14)
- **Paved Ib, II, III in towns** use **town paved** cross-section (Figure 7-16)
- **Gravel A, B, C in rural areas** use **rural/normal** cross-section (Figure 7-14)
- **Gravel A, B, C in towns** use **town gravel** cross-section (Figure 7-16)

Note: **Gravel C is a single-lane road** (1 lane, 4.0m carriageway) in both rural and town contexts. This is intentional for very low traffic volumes (< 50 vpd).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Determine context type
  +-- Is the road segment in a rural/normal area?
  |     +-- Use rural cross-section (Figure 7-14 values)
  +-- Is the road segment in a town/trading centre?
  |     +-- Is it paved? --> Use town paved cross-section (Figure 7-16)
  |     +-- Is it gravel? --> Use town gravel cross-section (Figure 7-16)
  +-- Is the design class Paved Ia?
  |     +-- Use dual carriageway cross-section (Figure 7-17)
  +-- CRITICAL: A road may have both rural and town sections along its length.
        Each section must use the appropriate cross-section type.

Step 3 (Uganda): Look up parameters
  --> Load tables/uganda_cross_sections.json
  --> Select the section matching design class and context
  --> Extract all parameters

Step 5 (Uganda): Side slopes
  +-- Standard fill slopes: 1:1.5 to 1:4 depending on fill height and material
  +-- Typical values:
  |     Fill height < 2m: 1:2 to 1:4
  |     Fill height 2-6m: 1:1.5 to 1:2
  |     Fill height > 6m: 1:1.5 (requires stability analysis)
  +-- Cut slopes depend on material (rock vs soil)
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Normal crossfall values:**
- Paved roads: 2.5%
- Gravel roads: 4.0%
These values are from MoWT Tables 4-3 to 4-9 and apply to tangent sections. On curves, superelevation replaces crossfall as determined by Skill #14.

**Town sections are common along trunk roads.** In Uganda, trunk roads (Classes Ia-II) frequently pass through trading centres. Each trading centre requires a transition from rural to town cross-section. The transition zone is often the most critical design element -- the widening for footways and outer lanes must begin before the built-up area.

**Gravel road shoulders serve a dual function.** On gravel roads, shoulders provide lateral support for the gravel wearing course and help prevent edge break. Inadequate shoulder width or poor shoulder maintenance is a leading cause of gravel road deterioration in Uganda.

**Right-of-way encroachment is endemic.** In practice, the nominal road reserve width (15-40m) is frequently encroached upon by buildings, fences, and crops. The design must work within the available road reserve, which may be less than the standard specifies. Document any constraint.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using rural cross-section for town segments.** MoWT has separate figures for rural (7-14) and town (7-16). Town cross-sections include outer lanes and footways. Omitting these in trading centres is a pedestrian safety failure.
2. **Assuming Gravel C is 2-lane.** Gravel C is a single-lane road (4.0m carriageway). Entering 2 lanes with 2.0m lane width is incorrect.
3. **Confusing Paved III and Gravel A dimensions.** Both have similar carriageway widths but different shoulder widths and crossfall values.
4. **Not accounting for dual carriageway median.** Paved Ia includes a central median (1.2-5.0m). Omitting the median from roadway width calculations is incorrect.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Crossfall (paved) | 2.5% | Not specified | WARNING ASSUMED: Crossfall 2.5% (MoWT standard for paved) | MoWT Tables 4-3 to 4-6 |
| Crossfall (gravel) | 4.0% | Not specified | WARNING ASSUMED: Crossfall 4.0% (MoWT standard for gravel) | MoWT Tables 4-7 to 4-9 |
| Side slope (fill) | 1:2 | Not specified | WARNING ASSUMED: Side slope 1:2 (typical MoWT fill slope) | Section 7, typical for moderate fill |
| Context | Rural | Not specified | WARNING ASSUMED: Rural context -- verify road does not pass through town | Default; verify against project data |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Lane width | 2.8 | 3.65 | m | MoWT Tables 4-3 to 4-9 | Flag if outside range for design class |
| Shoulder width | 1.2 | 2.5 | m | MoWT Tables 4-3 to 4-9 | Flag if outside range for design class |
| Crossfall (paved) | 2.0 | 3.0 | % | MoWT | Reject if outside range |
| Crossfall (gravel) | 3.5 | 5.0 | % | MoWT | Reject if outside range |
| Road reserve width | 15 | 40 | m | MoWT Tables 4-3 to 4-9 | Flag if outside standard for class |
| Footway width (town) | 2.0 | 3.0 | m | MoWT Figure 7-16 | Flag if < 2.0m |

### M.5.2 Standards Compliance Checks

- **Check:** Cross-section type matches context (rural vs town)
- **Standard:** MoWT Vol. 1, Section 7, Figures 7-14 and 7-16
- **Pass condition:** Rural sections used in rural areas; town sections used in urban areas
- **Fail action:** SENIOR REVIEW -- Cross-section type mismatch. [Rural/Town] cross-section applied in [town/rural] context.

- **Check:** Lane width matches design class standard
- **Standard:** MoWT Vol. 1, Tables 4-3 to 4-9
- **Pass condition:** Lane width equals the tabulated value for the design class
- **Fail action:** FLAG -- Lane width [X]m does not match the standard [Y]m for Design Class [Z].

- **Check:** Carriageway width is consistent with lane count and lane width
- **Standard:** Universal
- **Pass condition:** Cw = n x Lw (within 0.1m tolerance)
- **Fail action:** FLAG -- Carriageway width [X]m is inconsistent with [N] lanes at [Y]m each.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. Where the standard cross-section cannot be provided (e.g., constrained right-of-way in a town), the engineer documents the justification in the design report and consults with the Engineer-In-Chief, MoWT. Common constrained situations include narrow road reserves in established towns and bridge approaches where the full cross-section cannot be maintained.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Lane width below standard for design class | Safety and capacity concern | SENIOR REVIEW -- Lane width [X]m is below the standard [Y]m for Design Class [Z]. Verify right-of-way constraints. |
| Rural cross-section in town context | Pedestrian safety risk | SENIOR REVIEW -- Rural cross-section proposed for town segment at [location]. Town cross-section with footways required per MoWT Figure 7-16. |
| Road reserve insufficient for standard cross-section | Design constraint | NOTE -- Available road reserve [X]m is less than the standard [Y]m for Design Class [Z]. Reduced cross-section requires justification. |
| Single-lane road (Gravel C) in town context | Access and safety concern | NOTE -- Gravel C cross-section is single-lane (4.0m). In town context, verify whether traffic volume warrants upgrade to Gravel B or higher. |

---

## M.7 Worked Example -- Uganda

### Example: Class II Paved Road, Rolling Terrain, Town Section

**Given:**
- Design Class: II Paved
- Terrain: Rolling
- Context: Town section (road passes through a trading centre)
- Design Speed: 70 km/h (from Skill #13)
- Surface: Paved

**Solution:**

**Step 1 -- Determine cross-section type:**
Context is town + paved --> Use town paved cross-section (MoWT Figure 7-16).

**Step 2 -- Look up parameters from JSON table (town_paved, Paved II):**

| Parameter | Value |
|-----------|-------|
| Road reserve width | 30.0 m |
| Roadway width | 17.0 m |
| Carriageway width | 12.0 m |
| Number of lanes | 2 |
| Bus/through lane width | 3.0 m |
| Outer lane width | 3.0 m |
| Footway width | 2.5 m |

**Step 3 -- Determine crossfall:**
Paved road --> Normal crossfall = 2.5%

**Step 4 -- Verify dimensions:**
- Carriageway = 2 lanes x 3.0m = 6.0m (through lanes only)
- Plus 2 outer lanes x 3.0m = 6.0m
- Total paved width including outer lanes = 12.0m -- matches table
- Plus 2 footways x 2.5m = 5.0m
- Total roadway width = 12.0m + 5.0m = 17.0m -- matches table

**Step 5 -- Clear zone:**
At 70 km/h (closest to table): Desired 5m, Minimum 3m.
In a town section, the clear zone is effectively limited by building setback. Flag if buildings are within 3m of carriageway edge.

**Result:**

| Parameter | Value |
|-----------|-------|
| Cross-section type | Town paved (Figure 7-16) |
| Road reserve width | 30.0 m |
| Roadway width | 17.0 m |
| Carriageway width | 12.0 m (incl. outer lanes) |
| Lane width | 3.0 m |
| Outer lane width | 3.0 m |
| Footway width | 2.5 m (each side) |
| Normal crossfall | 2.5% |
| Compliance | PASS -- matches MoWT standard for Class II Paved, town section |

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Section 7 (Cross Section Elements), Tables 4-3 to 4-9, Figures 7-14 to 7-18.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Cross-section parameters from MoWT Figures 7-14 to 7-18 verified. JSON table created. Clear zones from Table 7-5 and median guidance from Section 7.13 embedded. |
