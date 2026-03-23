# Climate Resilience -- Uganda Module

> **Parent Skill:** Skill #63 Climate Resilience
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda National Climate Change Policy, World Bank Climate and Disaster Risk Screening
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda National Climate Change Policy | 2015 | Adaptation priorities, transport sector | Current |
| Uganda National Adaptation Programme of Action (NAPA) | 2007 | Vulnerability assessment, priority adaptation | Current (being updated) |
| Uganda Nationally Determined Contribution (NDC) | 2022 (updated) | Transport sector commitments | Current |
| World Bank Climate and Disaster Risk Screening | As applied in Uganda projects | Project-level screening methodology | Reference |
| MoWT Road Design Manual | Vol 2 (Drainage) | Design return periods, hydrological methods | Current |

### M.1.2 Institutional Context

**Ministry of Water and Environment (MWE):** Hosts the Climate Change Department, which coordinates Uganda's climate change policy and adaptation planning. Issues climate data and projections.

**Uganda National Meteorological Authority (UNMA):** Provides climate data, weather forecasts, and seasonal outlooks. Source of historical rainfall and temperature data for engineering design.

**MoWT / UNRA:** Responsible for integrating climate resilience into road design and maintenance. UNRA increasingly includes climate risk screening in feasibility studies, particularly for World Bank and AfDB-funded projects.

**World Bank and AfDB:** Require climate risk screening for all funded infrastructure projects. The World Bank's Climate and Disaster Risk Screening tool is commonly used for Uganda road projects.

### M.1.3 Standard Philosophy

Uganda's approach to climate resilience in road infrastructure is pragmatic and engineering-focused. The National Climate Change Policy identifies roads as critical infrastructure requiring adaptation. In practice, climate resilience is integrated through: (a) climate risk screening at feasibility stage, (b) design parameter adjustments (increased culvert capacity, modified materials), and (c) maintenance planning that accounts for climate-related damage patterns. Donor-funded projects typically require formal climate risk screening.

---

## M.2 Country-Specific Knowledge

### M.2.1 Uganda Climate Zones and Projected Changes

**Uganda's Climate Regions and Road-Relevant Hazards:**

| Region | Climate Characteristics | Primary Hazards | Secondary Hazards |
|--------|----------------------|-----------------|-------------------|
| Lake Victoria Basin (Central/South) | High rainfall (1,200-2,000 mm/yr), bimodal. Increasing intensity of extreme events. | Flooding, erosion | Extreme heat (urban areas) |
| Karamoja (Northeast) | Semi-arid (500-900 mm/yr), unimodal. Increasing drought frequency and intensity. | Drought, extreme heat | Flash flooding (when rain comes) |
| Western Highlands (Rwenzori) | High rainfall (1,400-2,500 mm/yr), montane. Increasing landslide frequency. | Landslides, flooding | Erosion |
| Eastern Highlands (Mt Elgon) | High rainfall (1,200-1,800 mm/yr), montane. Landslide-prone soils. | Landslides, flooding | Erosion |
| Northern (Acholi, Lango, Teso) | Moderate rainfall (1,000-1,500 mm/yr), unimodal. Seasonal flooding in lowlands. | Seasonal flooding | Drought (dry season) |
| Western (Albertine Rift) | Moderate rainfall (800-1,400 mm/yr). Lake Albert basin flooding. Rift valley heat. | Flooding (lakeside), extreme heat | Landslides (escarpment) |

**Projected Climate Changes for Uganda (mid-century, 2040-2060):**

| Parameter | Projected Change | Confidence | Impact on Roads |
|-----------|-----------------|------------|-----------------|
| Mean temperature | +1.5 to +2.5 C | High | Pavement softening, binder degradation |
| Extreme rainfall intensity | +10 to +30% | Medium-High | Increased culvert flows, embankment overtopping |
| Frequency of extreme events | Increasing | Medium | More frequent flood damage events |
| Drought length (Karamoja) | +10 to +20% longer dry spells | Medium | Subgrade desiccation, shoulder deterioration |
| Landslide frequency (highlands) | Increasing | Medium | Road blockage, slope failure |

### M.2.2 Region-Specific Risk Profiles

**Lake Victoria Basin (Central/South Uganda):**
- **Flooding risk: HIGH.** Lake Victoria basin experiences the most intense rainfall events in Uganda. Extreme daily rainfall of 100-150 mm occurs regularly. Urban areas (Kampala) experience flash flooding. Rural roads are vulnerable to culvert overtopping and embankment washout.
- **Recommended adjustments:** Increase culvert capacity by 30% (CF = 1.3). Use 50-year design return period for cross-drainage. Specify robust erosion protection at all outlets (Skill #32). Raise embankment levels 0.3-0.5m above historical flood levels.

**Karamoja (Northeast Uganda):**
- **Drought risk: HIGH.** Extended dry seasons (6-8 months) cause severe subgrade desiccation. When rain returns, it comes in intense bursts causing flash flooding on dried, cracked ground.
- **Heat risk: HIGH.** Peak temperatures regularly exceed 35 C. Pavement surface temperatures can exceed 70 C.
- **Recommended adjustments:** Use polymer-modified bitumen (PMB) for surface course (Skill #24). Seal shoulders to prevent moisture ingress. Consider lime/cement stabilization for expansive clay subgrades (Skill #28). Design drainage for flash flood events (high intensity, short duration).

**Western Highlands (Rwenzori) and Eastern Highlands (Mt Elgon):**
- **Landslide risk: HIGH.** Steep terrain, deeply weathered soils, and high rainfall create significant landslide risk. Climate change is increasing rainfall intensity, which increases slope saturation and failure frequency.
- **Flooding risk: MEDIUM-HIGH.** Mountain streams respond rapidly to heavy rainfall. Culvert blockage by debris is a major problem.
- **Recommended adjustments:** Install slope drainage (herringbone drains, interceptor drains above road). Reduce cut slope angles. Specify oversized culverts (CF = 1.3-1.5) to allow for debris passage. Install debris guards on culvert inlets. Consider route alignment to avoid the most vulnerable slopes.

### M.2.3 Climate Adjustment Factors for Uganda

**Recommended climate adjustment factors for drainage design in Uganda:**

| Climate Zone | Risk Level | Climate Factor (CF) | Design Return Period | Source |
|-------------|-----------|--------------------|--------------------|--------|
| Lake Victoria Basin | High flooding | 1.3 | 50 years | Adapted from WB guidelines |
| Karamoja | High drought/flash flood | 1.2 (drainage), special pavement | 25 years | Practice-based |
| Western/Eastern Highlands | High landslide/flooding | 1.3-1.5 | 50 years | Adapted from WB guidelines |
| Northern Uganda | Moderate flooding | 1.2 | 25-50 years | Practice-based |
| Central Uganda (non-lake) | Moderate | 1.2 | 25 years | Standard with uplift |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda-Specific Climate Screening:**
```
Step 1 (Uganda): Identify climate zone
  |-- Lake Victoria Basin --> High flood risk profile
  |-- Karamoja --> High drought + heat profile
  |-- Rwenzori / Mt Elgon --> High landslide + flood profile
  |-- Northern Uganda --> Moderate flood + seasonal drought
  +-- Central (non-lake) --> Moderate overall

Step 2 (Uganda): Apply zone-specific risk profile
  --> Use M.2.2 risk profiles for initial hazard screening
  --> Adjust based on specific project characteristics:
      - Elevation (highland roads face different risks than lowland)
      - River/stream proximity (flood risk increases near water)
      - Slope gradient (landslide risk on steep terrain)
      - Soil type (expansive clays = drought risk, sandy soils = erosion risk)

Step 3 (Uganda): Select adaptation measures
  --> Use M.2.3 climate adjustment factors for drainage design
  --> For pavement: PMB for Karamoja and other high-heat areas
  --> For slopes: drainage and stabilization for highland roads
  --> For subgrade: stabilization for expansive soils in drought areas
```

### M.3.2 Professional Judgment (Country-Specific)

**Lake Victoria Basin flooding is the top priority.** The combination of high rainfall intensity, flat terrain, and inadequate existing drainage means that flooding is the most damaging and costly climate hazard for Uganda's road network. UNRA maintenance records show that flood damage is the leading cause of emergency road repairs.

**Karamoja requires a different design philosophy.** Roads in Karamoja face drought for most of the year and flash flooding for a few weeks. Standard drainage design assumes regular rainfall -- Karamoja drainage must handle extreme intensity over short periods after months of no rain. Subgrade protection is more important than in other regions because the desiccation-saturation cycle is more severe.

**Highland landslides are increasing in frequency.** UNRA and MoWT have observed an increase in landslide events on highland roads (Rwenzori, Mt Elgon, Kigezi) over the past decade. Climate adaptation for highland roads should prioritise slope drainage and stabilization.

**Climate data is limited.** Uganda has limited long-term climate monitoring stations, particularly in remote areas (Karamoja, Rwenzori foothills). Where local data is unavailable, use UNMA regional projections or World Bank Climate Change Knowledge Portal data. Always flag data limitations.

### M.3.3 Common Errors (Country-Specific)

1. **Not adjusting drainage for Lake Victoria Basin intensity.** Using MoWT standard design return periods (10-25 years) without climate adjustment in the Lake Victoria Basin underestimates flood risk.
2. **Using standard bitumen in Karamoja.** Standard penetration-grade bitumen (80/100) softens at temperatures common in Karamoja. PMB or harder-grade bitumen is recommended.
3. **Ignoring debris flow risk in highland culvert design.** Highland culverts blocked by debris cause road overtopping and embankment failure. Oversized culverts and debris guards are essential.
4. **Treating all of Uganda as having the same climate risk.** Uganda has diverse climate zones. A uniform climate adjustment factor is inappropriate -- use zone-specific factors from M.2.3.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Climate zone | Central (moderate) | Location not specified | ASSUMED: Central Uganda moderate climate risk. Specify project location for accurate zone assessment. | Default to moderate |
| Climate factor (flow) | 1.2 | Moderate risk zone | ASSUMED: 20% climate uplift on design flow. Adjust for zone-specific risk per M.2.3. | Conservative moderate |
| Climate factor (flow) | 1.3 | High risk zone (Lake Victoria, highlands) | ASSUMED: 30% climate uplift on design flow for high-risk zone. | Adapted from WB guidelines |
| Temperature adjustment | +2 C | All zones | ASSUMED: +2 C mid-century temperature adjustment. Range +1.5 to +2.5 C. | IPCC mid-range for East Africa |
| Pavement binder | Standard (80/100 pen) | Non-Karamoja | Standard binder unless in high-heat zone. | Default for most of Uganda |
| Pavement binder | PMB recommended | Karamoja / high-heat areas | NOTE: Polymer-modified bitumen recommended for Karamoja due to extreme heat. | Temperature exceeds standard binder limits |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Climate factor (flow) | 1.0 | 1.5 | ratio | WB Climate Screening | Below 1.0: no climate adjustment. Above 1.5: flag as very aggressive. |
| Temperature adjustment | 0 | +4 | degrees C | IPCC projections | Above +4 C: upper-range scenario, flag. |
| Design return period | 10 | 100 | years | MoWT Vol 2 | If increased beyond 50 years: flag as exceptional. |

### M.5.2 Standards Compliance Checks

- **Check:** Climate zone correctly identified for project location
- **Standard:** UNMA climate zone classification
- **Pass condition:** Zone matches geographic location and elevation
- **Fail action:** NOTE -- Verify climate zone classification. Zone affects all risk ratings and adjustment factors.

- **Check:** Climate adjustment factor appropriate for zone
- **Standard:** M.2.3 table
- **Pass condition:** Factor matches zone-specific recommendation
- **Fail action:** NOTE -- Climate factor does not match zone recommendation. Verify or justify deviation.

### M.5.3 Departures / Relaxations Process

No formal departures process for climate adjustment. However, any deviation from recommended climate factors should be documented with justification. Donor-funded projects may have specific climate screening requirements in the financing agreement.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Project in Lake Victoria flood zone | High flood risk | NOTE -- Lake Victoria Basin. Apply CF = 1.3 minimum. Consider 50-year design return period for cross-drainage. |
| Project in Karamoja | Drought + heat + flash flood | NOTE -- Karamoja climate zone. PMB recommended for pavement. Design drainage for flash flood events. Protect subgrade from desiccation. |
| Project in Rwenzori or Mt Elgon highlands | Landslide risk | SENIOR REVIEW -- Highland road with landslide risk. Slope stability assessment recommended. Install slope drainage and debris guards on culverts. |
| No climate data for project area | Cannot quantify risk | NOTE -- No local climate data. Using [regional projection source] as proxy. Recommend monitoring plan. |
| Multiple interacting hazards | Cascading risk | NOTE -- Multiple climate hazards (flooding + landslides) identified. Consider interaction: heavy rain triggers both overtopping and slope failure simultaneously. |

---

## M.7 Worked Examples -- Uganda

### Example 1: Road in Lake Victoria Basin Flood-Prone Area

**Project:** 20 km road improvement in Masaka District, southern Uganda, within the Lake Victoria Basin. Road crosses several low-lying areas with seasonal flooding.

**Given:**
- Location: Masaka District, Lake Victoria Basin
- Climate zone: Lake Victoria Basin -- high flood risk
- Road type: Upgrade gravel to paved, design life 20 years
- Existing culverts: 8 cross-drainage culverts, designed for 25-year return period
- Lowest road section: 0.5m above historical flood level
- AADT: 600 vpd

**Climate Screening:**

| Hazard | Likelihood | Consequence | Risk Rating |
|--------|-----------|-------------|-------------|
| Flooding | High | Major (low-lying, flood history) | Very High |
| Extreme Heat | Medium | Minor (not Karamoja) | Low |
| Landslides | Low (flat terrain) | Minor | Low |
| Drought | Low | Minor | Low |

**Recommended Adaptations:**

Flooding (Very High risk):
1. Increase culvert capacity by 30% (CF = 1.3) -- Reference: Skill #31
   - Recalculate design flow: Q_climate = Q_25yr x 1.3
   - Resize all 8 culverts for climate-adjusted flow
2. Raise road embankment at low sections by 0.5m above current design level
   - Current: 0.5m above historical flood. Recommended: 1.0m above historical flood.
3. Increase design return period from 25-year to 50-year for cross-drainage -- Reference: Skill #29
4. Specify erosion protection at all culvert outlets (stone pitching or gabion aprons) -- Reference: Skill #32
5. Install scour protection at bridge foundations -- Reference: Skill #39

**Design Parameter Adjustments:**

| Parameter | Current Value | Recommended Value | Rationale |
|-----------|--------------|-------------------|-----------|
| Design return period | 25 years | 50 years | Lake Victoria Basin high flood risk |
| Climate adjustment factor | 1.0 | 1.3 | 30% uplift for high flood risk zone |
| Embankment freeboard | 0.5m | 1.0m | Additional margin for increased flood levels |

**Result:** Very High flood risk. 30% culvert capacity increase, 50-year design return period, 0.5m additional embankment height, erosion protection at all outlets. Estimated additional cost: 8-12% of drainage and earthworks budget.

### Example 2: Road in Karamoja Exposed to Extreme Heat

**Project:** 35 km road rehabilitation in Moroto District, Karamoja region. Existing paved road showing severe rutting and surface deterioration.

**Given:**
- Location: Moroto District, Karamoja
- Climate zone: Karamoja -- high drought and heat risk
- Road type: Rehabilitation of existing paved road
- Existing pavement: 50mm AC surface on 150mm granular base, standard 80/100 pen bitumen
- Average daily maximum temperature: 33 C (peak: 38 C)
- Subgrade: expansive black cotton soil in sections

**Climate Screening:**

| Hazard | Likelihood | Consequence | Risk Rating |
|--------|-----------|-------------|-------------|
| Flooding | Medium (flash floods) | Moderate | Medium |
| Extreme Heat | High | Major (rutting, binder degradation) | Very High |
| Landslides | Low (flat terrain) | Minor | Low |
| Drought | High | Major (subgrade desiccation) | Very High |

**Recommended Adaptations:**

Extreme Heat (Very High risk):
1. Use polymer-modified bitumen (PMB) for surface course -- Reference: Skill #24
   - Replace 80/100 pen with PMB (PG 76-22 or equivalent)
   - PMB provides better resistance to permanent deformation at high temperatures
2. Consider increasing surface course thickness from 50mm to 60mm -- Reference: Skill #21
   - Thicker surface distributes thermal stress

Drought (Very High risk):
3. Lime-stabilize expansive clay subgrade in affected sections -- Reference: Skill #28
   - 4-6% lime by weight to reduce swell/shrink potential
4. Seal shoulders with bituminous surface treatment -- prevent moisture ingress during desiccation cycle
5. Install moisture barriers (impermeable membrane below shoulder) at critical sections

Flooding (Medium risk -- flash floods):
6. Design drainage for high-intensity, short-duration events -- Reference: Skill #29
   - Use CF = 1.2 for flash flood adjustment
   - Ensure culvert inlets are not blocked by debris from dry-season accumulation

**Result:** Dual Very High risk (heat + drought). PMB surface, lime stabilization, sealed shoulders, flash flood drainage. Estimated additional cost: 12-18% of pavement and earthworks budget.

### Example 3: Mountain Road in Rwenzori with Combined Landslide and Flooding Risk

**Project:** 15 km mountain road in Kasese District, Rwenzori foothills. Road includes 3 km of steep terrain with deep cuts and fills, crossing 4 mountain streams.

**Given:**
- Location: Kasese District, Rwenzori foothills
- Climate zone: Western Highlands -- high landslide and flood risk
- Road type: New road construction
- Terrain: Mountainous, slopes 15-40%
- Soil: Deeply weathered laterite over weathered granite
- Annual rainfall: 2,200 mm (increasing trend)
- 4 stream crossings with steep gradients

**Climate Screening:**

| Hazard | Likelihood | Consequence | Risk Rating |
|--------|-----------|-------------|-------------|
| Flooding | High | Major (steep streams, rapid runoff) | Very High |
| Extreme Heat | Low | Minor (highland elevation) | Low |
| Landslides | High | Major (steep slopes, deep weathering, high rainfall) | Very High |
| Drought | Low | Minor (high rainfall area) | Low |

**Recommended Adaptations:**

Flooding (Very High risk):
1. Increase culvert capacity by 50% (CF = 1.5) for mountain stream crossings -- Reference: Skill #31
   - Mountain streams respond rapidly; standard design flows underestimate peak flows under increasing rainfall
2. Install debris guards on all culvert inlets -- mountain streams carry debris
3. Specify heavy-duty erosion protection at culvert outlets and embankment toes -- Reference: Skill #32
   - Gabion baskets recommended for high-velocity mountain stream outlets
4. Bridge design freeboard increased from 1.5m to 2.0m for mountain stream crossings -- Reference: Skill #39

Landslide (Very High risk):
5. Install herringbone drainage on all cut slopes > 3m height
   - Interceptor drains above road to prevent slope saturation
6. Reduce cut slope angles from 1:1 to 1:1.5 where space permits
   - Increases excavation volume but significantly reduces landslide risk
7. Bioengineering: plant vetiver grass on fill slopes and shallow cut slopes
8. Install monitoring points on 2 most critical slopes (inclinometers)
   - Early warning of slope movement

**Cascading Risk Assessment:**
- Heavy rain simultaneously causes: (a) stream flooding overtopping culverts, (b) slope saturation triggering landslides, and (c) debris blocking culverts, causing further overtopping.
- **Design must address all three simultaneously.** Oversized culverts with debris guards + slope drainage + erosion protection form an integrated system.

**Result:** Dual Very High risk (flooding + landslides) with cascading interaction. 50% culvert capacity increase, debris guards, herringbone slope drainage, reduced cut slopes, bioengineering. Estimated additional cost: 15-25% of earthworks and drainage budget. Specialist geotechnical assessment recommended for the 2 most critical slope sections.

---

## M.8 References

1. Uganda National Climate Change Policy, Ministry of Water and Environment, 2015
2. Uganda National Adaptation Programme of Action (NAPA), 2007
3. Uganda Nationally Determined Contribution (NDC), updated 2022
4. World Bank Climate Change Knowledge Portal -- Uganda Country Profile
5. World Bank, Climate and Disaster Risk Screening Guidelines for Road Projects, 2020
6. IPCC Sixth Assessment Report (AR6), Working Group II: Impacts, Adaptation and Vulnerability -- Africa Chapter, 2022
7. MoWT Road Design Manual, Volume 2: Drainage Design, Republic of Uganda
8. Uganda National Meteorological Authority (UNMA), Climate Data and Projections

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with Uganda climate zones (Lake Victoria, Karamoja, Rwenzori, Mt Elgon, Northern, Western), zone-specific climate factors, 3 worked examples (flood-prone lowland, Karamoja heat/drought, Rwenzori landslide+flood cascading). |
