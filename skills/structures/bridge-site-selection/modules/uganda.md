# Bridge Site Selection -- Uganda Module

> **Parent Skill:** #35 Bridge Site Selection
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual Vol 4 (2010), Vol 2 Section 10; UNRA Guidelines for Design and Design Review Ver 2.0
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 4 | January 2010 | General principles, bridge components | Current |
| MoWT Road Design Manual Vol 2 | January 2010 | Section 10 (Bridges and waterway area) | Current |
| UNRA Guidelines for Design and Design Review | Ver 2.0 | Design review requirements for bridges | Current |

### M.1.2 Institutional Context

MoWT Road Design Manual is the national standard for all road design in Uganda. UNRA (Uganda National Roads Authority) manages the trunk road network and has supplementary guidelines specifying minimum investigation requirements for bridge sites. District roads may follow simplified procedures but MoWT Vol 4 remains the base standard.

### M.1.3 Standard Philosophy

MoWT provides general guidance on bridge site selection rather than a prescriptive checklist. The manual emphasises the importance of site investigation and professional engineering judgment. Vol 2 Section 10 provides waterway area calculations for bridges. The design approach follows BS 5400 principles as adapted by MoWT, with field investigations tailored to Uganda's conditions (laterite foundations, seasonal rivers, limited investigation budgets).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UBS.1: Site Investigation Checklist for Uganda Bridge Sites**

| Category | Investigation Item | Minimum Requirement | Notes |
|----------|--------------------|---------------------|-------|
| Geotechnical | Boreholes at abutments | 2 minimum (one each abutment) | Depth to 1.5x expected foundation depth or refusal |
| Geotechnical | Boreholes at pier locations | 1 per pier for spans > 20m | May omit for spans < 20m with uniform geology |
| Geotechnical | In-situ testing | SPT at 1.5m intervals | DCP acceptable for preliminary assessment |
| Hydraulic | Flood level marks | Survey high water marks | Interview local residents for flood history |
| Hydraulic | Channel cross-sections | Minimum 3 (at crossing, 100m upstream, 100m downstream) | More for wide flood plains |
| Hydraulic | Bed material | Sample and classify | Critical for scour estimation |
| Topographic | Valley cross-section | Full width including flood plain | Referenced to national datum |
| Environmental | Screening | Visual assessment | Full EIA if triggered by NEMA regulations |

**Table UBS.2: Typical Uganda Bridge Site Challenges**

| Challenge | Description | Typical Locations | Mitigation |
|-----------|-------------|-------------------|------------|
| Seasonal flooding | Rivers with extreme wet/dry flow variation | Northern Uganda, Karamoja | Design for Q100; assess low-flow crossing needs |
| Laterite foundations | Variable bearing capacity, sensitive to moisture | Central and western Uganda | Confirm bearing capacity below scour depth; test soaked CBR |
| Alluvial river channels | Active bed movement, scour risk | Nile tributaries, eastern lowlands | Extend foundations below maximum scour; consider scour protection |
| Limited investigation budgets | Reduced borehole count/depth | District road projects | Use DCP for preliminary assessment; flag for detailed investigation |
| Flood plain settlements | Communities on flood plains | Throughout Uganda | Engage with local communities; assess resettlement implications early |

### M.2.2 Country-Specific Formulas

No Uganda-specific formulas for site selection beyond the universal formulas in Section 1.2. Waterway area calculations follow MoWT Vol 2 Section 10 which uses the rational approach.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2 (Uganda): Investigation requirements
  |-- Follow UNRA minimum investigation requirements (Table UBS.1)
  |-- For trunk roads: full borehole investigation mandatory
  |-- For district roads: DCP-based preliminary assessment acceptable
  +-- Flag if investigation is below UNRA minimum standards

Step 4 (Uganda): Geotechnical assessment
  |-- Check bearing capacity of laterite (common foundation material)
  |    NOTE: Laterite bearing capacity is moisture-sensitive --
  |    use soaked/worst-case values from Skill #10
  |-- Assess scour in alluvial channels
  |    NOTE: Many Uganda rivers have alluvial beds with significant
  |    seasonal scour depth variation
  +-- Depth to rock varies greatly -- western rift valley may have
      shallow rock; central plateau has deep laterite profiles

Step 6 (Uganda): Environmental screening
  |-- Check NEMA (National Environment Management Authority) triggers
  |-- Bridges crossing major rivers typically require EIA
  +-- Document community engagement for flood plain sites
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Many Uganda bridges are on seasonal rivers.** Understanding the flood regime is critical -- some rivers are dry for months then carry very high flows during the two rainy seasons (March-May and September-November). Design must accommodate both extremes.

**Laterite is the most common foundation material** in central and southern Uganda. It generally provides adequate bearing capacity (100-300 kPa) for small to medium bridges when dry, but can lose significant strength when saturated. Always use the soaked/worst-case bearing capacity from Skill #10.

**UNRA design review guidelines** specify minimum investigation requirements that must be met for any bridge project on the trunk road network. Projects that do not meet these requirements will be flagged during design review.

**Western Uganda (rift valley)** has the added consideration of seismic activity -- this feeds into loading assessment in Skill #36. The seismic map (MoWT Vol 4 Figure 9-1) shows Zone 1 (highest seismicity) along the western rift.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using dry-season bearing capacity for laterite.** Laterite strengths drop significantly when saturated. Use soaked values from laboratory testing, consistent with Skill #10 design CBR approach.
2. **Ignoring seasonal variation in channel geometry.** Some Uganda rivers change cross-section significantly between dry and wet seasons. Survey during or just after the wet season if possible.
3. **Insufficient flood level data.** Many Uganda rivers lack gauging stations. Rely on high water marks, local knowledge, and hydrological estimation (Skill #29 Rational/SCS methods).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design return period | Q100 | Permanent bridge on trunk road | No flag (standard practice) | MoWT Vol 2, UNRA Guidelines |
| Minimum freeboard | 1.2 m | Not specified | ASSUMED: 1.2 m freeboard for trunk road bridge | Uganda practice for debris-prone rivers |
| Maximum velocity | 3.0 m/s | Alluvial bed, no protection | ASSUMED: V_max = 3.0 m/s for unprotected alluvial channel | Conservative for Uganda conditions |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Borehole depth | 5 | 50 | m | UNRA Guidelines | Warn if < 10m on trunk road |
| Investigation boreholes | 2 | 20 | count | UNRA Guidelines | Flag if < 2 for any bridge site |
| Freeboard | 0.75 | 3.0 | m | Practice | Warn if < 1.0 for trunk road bridge |

### M.5.2 Standards Compliance Checks

- **Check:** Minimum number of boreholes per UNRA Guidelines
- **Standard:** UNRA Guidelines for Design and Design Review Ver 2.0
- **Pass condition:** >= 2 boreholes (one per abutment) for all bridges
- **Fail action:** SENIOR REVIEW -- Investigation below UNRA minimum. [X] boreholes provided; minimum 2 required.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. Where standards cannot be met, the engineer documents justification and consults with the Engineer-In-Chief, MoWT. UNRA design review provides an additional quality check for trunk road projects.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Investigation below UNRA minimum | Design review will reject | SENIOR REVIEW -- Investigation does not meet UNRA minimum requirements. Additional boreholes/testing needed. |
| Laterite bearing capacity < 100 kPa (soaked) | May require improved foundation or piles | SENIOR REVIEW -- Low soaked bearing capacity. Consider ground improvement or pile foundations (Skill #38 specialist). |
| Western Uganda site (Zone 1 seismic) | Seismic loading required | NOTE -- Site in seismic Zone 1 per MoWT Vol 4 Figure 9-1. Seismic loading provisions required in Skill #36. |
| River crossing without gauging station | Uncertain flood data | NOTE -- No gauging data available. Flood estimation based on [method]. Verify with local flood marks. |

---

## M.7 Worked Example -- Uganda

### Example: River Crossing on Trunk Road

**Source:** Practice-based scenario

**Given:**
- Trunk road crossing of River Katonga (central Uganda)
- Channel width at normal flow: 45 m
- Q100 = 250 m3/s (from Skill #29 using SCS method, catchment 180 km2)
- Laterite profile with soaked bearing capacity 180 kPa at 3m depth (from Skill #10)
- Approach road on 4% grade
- Skew angle approximately 10 degrees
- No existing bridge at this location

**Solution:**

**Step 1 -- Estimate span requirement:**
Required waterway area: A = Q/V = 250/3.0 = 83.3 m2
At normal flow depth ~2.0 m, but Q100 depth estimated ~3.5 m:
Width at Q100 approximately 55-60 m (flood plain expands)
Effective span for Q100: approximately 55 m
With 10-degree skew: L_skew = 55/cos(10) = 55/0.985 = 55.8 m -- round to 56 m
Propose 3-span arrangement: 3 x 19 m = 57 m total (allows standard span lengths)

**Step 2 -- Hydraulic assessment:**
Waterway area at Q100: 57 m x 3.5 m = 199.5 m2 (sufficient for 250 m3/s at V < 2.0 m/s)
Freeboard: deck soffit at flood level + 1.2 m freeboard
Velocity through opening: 250/199.5 = 1.25 m/s (well within 3.0 m/s limit)
Afflux: minimal due to generous waterway area

**Step 3 -- Geotechnical assessment:**
Laterite at 3m depth with 180 kPa soaked bearing capacity -- adequate for medium bridge
Scour estimate: alluvial bed, estimated 2.0-2.5 m general scour + 1.0 m local scour at piers = 3.0-3.5 m
Foundation depth required: at least 3.5 m below bed level = 3.5 m + 3.0 m natural depth = 6.5 m below ground
Laterite at 3 m: foundations in laterite below scour zone -- acceptable for spread footings if laterite extends sufficiently deep.

**Step 4 -- Alignment assessment:**
Approach grade 4%: within desirable maximum for rolling terrain at 80 km/h (from Skill #15)
Skew angle 10 degrees: acceptable, minor cost increase
Sight distance: adequate (no constraints noted)

**Step 5 -- Multi-criteria summary:**
- Hydraulic: PASS -- generous waterway area, low velocity
- Geotechnical: PASS -- adequate bearing capacity, manageable scour depth
- Alignment: PASS -- acceptable grade and skew
- Environmental: PASS (screening) -- no significant concerns noted

**Result:** Site is suitable for bridge construction. Recommend 3-span arrangement (~19m per span), RC T-beam or precast beam superstructure, shallow foundations in laterite below scour depth. Proceed to Skill #36 (loading) and Skill #37 (superstructure design).

NOTE -- Site in central Uganda. Check seismic zone per MoWT Vol 4 Figure 9-1 (likely Zone 2 or 3). Seismic provisions will be addressed in Skill #36.

---

## M.8 References

1. Ministry of Works and Transport, *Road Design Manual, Volume 4: Bridge Design*, January 2010.
2. Ministry of Works and Transport, *Road Design Manual, Volume 2: Drainage Design*, January 2010, Section 10.
3. Uganda National Roads Authority, *Guidelines for Design and Design Review*, Version 2.0.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with Uganda site investigation requirements, laterite foundation considerations, and worked example for River Katonga crossing |
