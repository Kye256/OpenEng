# Earthworks Calculation -- Ethiopia Module

> **Parent Skill:** #26 Earthworks Calculation
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Geotechnical Design Manual (GDM) - 2013, Chapters 3 (Road Embankments) and 4 (Roadside Slopes); ERA Flexible Pavement Design Manual Vol I - 2013, Chapter 4 (Earthworks); ERA Standard Technical Specifications
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Geotechnical Design Manual (GDM) | 2013 | Chapter 3 (Road Embankments: types, design considerations, settlement, stability, fill slopes, benches); Chapter 4 (Roadside Slopes: soil slope cuts, cut slope angles, benches, rock cuts) | Current -- primary for earthworks design |
| ERA Flexible Pavement Design Manual Vol I | 2013 | Chapter 4 (Earthworks: embankment zones, compaction requirements, slope ratios) | Current -- supplementary for compaction and material zones |
| ERA Standard Technical Specifications | 2013 | Earthworks clauses: compaction requirements, layer thickness limits, material acceptance criteria, test frequencies | Current -- mandatory for construction |
| ERA Geometric Design Manual (GDM) | 2013 | Chapter 6 (Cross-Section Elements) for formation width and side slope context | Current |

### M.1.2 Institutional Context

Earthworks design and construction in Ethiopia follows ERA design manuals for design requirements and the ERA Standard Technical Specifications for construction acceptance criteria. The institutional framework is structured by design class (DC1 through DC8).

- **ERA (Ethiopian Roads Authority):** Federal trunk roads (DC5-DC8). Earthworks on these projects typically involve the largest volumes, most complex terrain (highland escarpments, Rift Valley crossings), and most demanding specifications.
- **Regional Roads Authorities:** Regional roads (DC3-DC4). Earthworks follow the same ERA manuals but projects are administered by regional bodies.
- **Woreda Administrations:** Local access roads (DC1-DC2). Earthworks are typically simpler but material quality challenges are common due to remote locations and limited borrow pit options.

All agencies follow the same ERA design manuals and Standard Technical Specifications for earthworks material acceptance and compaction requirements.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and design class system.

### M.1.3 Standard Philosophy

ERA takes a material-type-based approach to earthworks: the GDM Chapter 3 classifies fill as rock fill or earth fill and provides fill slope angles by material type and height (Table 3-8). Chapter 4 provides cut slope ratios by material type and height (Table 4-8). The GDM devotes significant attention to embankments in hilly areas (Section 3.8) and to special soils -- particularly expansive soils (Section 2.3.1, 8 pages), which are widespread in the Ethiopian highlands and Rift Valley margins. ERA explicitly requires embankments over 5 m high or steeper than 1.5H:1V to undergo detailed stability analysis (Section 3.6). The earthworks volume calculation methods are universal (average end area, prismoidal formula) -- the Ethiopia-specific aspects are cut/fill slope ratios, compaction standards, shrinkage factors for Ethiopian soils, and special soil treatment requirements.

---

## M.2 Country-Specific Knowledge

### M.2.1 Cut Slopes (ERA GDM 2013 Chapter 4, Table 4-8)

**Table E.26.1: ERA Soil Cut Slope Ratios (H:V) for Preliminary Design (From ERA GDM 2013 Table 4-8) (Verified from PDF)**

| Type of Material | 3-6 m Height | 6-10 m Height | 10-15 m Height | Remarks |
|-----------------|-------------|--------------|---------------|---------|
| Residual clay soils | 1:1 | 1:1 | 2:1 | Consider benching when height > 6 m; vegetation cover highly recommended |
| Heavy, plastic clay soils | 1.5:1 | 2:1 | -- | Keeping the slope dry is extremely important |
| Granular soils with some clays | 1.5:1 | 2:1 | -- | Keep a constant slope; appropriate drainage and vegetation necessary |
| Dense transported soils (sub-angular cobbles, gravels and sands in fine matrix) | 0.75:1 | 1.5:1 | 2:1 | Reduce the upper portion to 1:1 to limit gully formation or widening |
| Loose to medium dense transported soils (boulders, sub-angular cobbles and gravels in fine matrix), or talus | 1:1 | 1.5:1 | 2:1 | Cover slope with grass and suitable plants; keep slope dry |

**Notes from ERA GDM Section 4.4:**
- Cut slopes up to 3-5 m height are generally designed based on past experience with similar materials in the surrounding area.
- Cut slopes greater than 5 m may require geotechnical analysis.
- Slope angles are indicative and require site-specific assessment.
- Minimum design factor of safety for cut slopes: 1.3 (static).
- If near-surface groundwater or seepage water exists, slopes should be flatter than Table 4-8 values.
- Bench width: good practice is one-third of the height of the cut immediately above the bench (ERA GDM Section 4.4.2).
- Benches should have 3-5% inward slope for drainage.

**Rock cut slopes (ERA GDM Section 4.5, Table 4-12):**
- Rock cuts require assessment of discontinuities (joints, bedding, foliation).
- Preliminary rock cut slopes without discontinuity control: range from 0.25:1 (strong massive rock) to 1:1 (highly weathered/fractured rock).
- Ethiopian context: volcanic rocks (basalt, tuff, ignimbrite) common in highlands; sedimentary sequences (limestone, sandstone, shale) in northern and eastern Ethiopia.

### M.2.2 Fill Embankments (ERA GDM 2013 Chapter 3, Table 3-8)

**Table E.26.2: ERA Preliminary Fill Slope Angles (From ERA GDM 2013 Table 3-8) (Verified from PDF)**

| Fill Materials | < 5 m Height | 5-10 m Height | 10-15 m Height |
|---------------|-------------|--------------|---------------|
| Rock fill | 1.5H:1V | -- | 2H:1V |
| Well graded sand, gravels, and silt mixed with gravels | 1.5H:1V to 2H:1V | -- | 2H:1V |
| Poorly graded sand | 2H:1V to 3H:1V | -- | -- |
| Sandy clay soils, silty clay soils and stiff to hard clayey soils | 2H:1V | 3H:1V | -- |
| Soft clay soils, plastic clays | 3H:1V | -- | -- |

**Notes from ERA GDM Section 3.9:**
- Common practice for earth fill side-slopes is 2H:1V or lower.
- Rock fill can use steeper slopes (1.5H:1V) due to mechanical interlock of coarse particles.
- For embankments in hilly terrain, side slopes are often designed based on local experience and the properties of the fill material.
- Rip-rap may be placed on the downslope side of fill for slope protection.

### M.2.3 Compaction Requirements

**Table E.26.3: ERA Compaction Requirements for Embankment Fill (From ERA GDM 2013 Ch 3, ERA Pavement Vol I Ch 4) (Verified from PDF)**

| Embankment Zone | Compaction Standard | Minimum Compaction | Maximum Layer Thickness |
|----------------|--------------------|--------------------|----------------------|
| Upper 600 mm (selected subgrade) | Modified AASHTO (T-180) | 93% MDD | 200 mm compacted |
| Lower fill (above 600 mm from formation) | Standard Proctor (T-99) | 95% MDD | 250 mm compacted |
| Core / deep fill | Standard Proctor (T-99) | 90% MDD | 300 mm compacted |
| Rock fill | Method specification | Heavy compaction | 300 mm layers |

**Notes:**
- Rock fill: 90% of fragments > 100 mm should have Point Load Strength >= 2.0 MPa.
- Non-durable rock (slake durability failure): treat as earth fill.
- Shales and mudstones in northern and eastern Ethiopia are examples of low-durability rock requiring special compaction.

### M.2.4 Stability Requirements (ERA GDM 2013 Sections 3.6 and 3.2)

**Table E.26.4: ERA Minimum Factors of Safety for Embankments**

| Condition | Minimum Factor of Safety | Notes |
|-----------|------------------------|-------|
| General road embankment (< 5 m, slopes <= 1.5H:1V) | 1.3 | Ordinary method of slices sufficient; no detailed analysis required |
| Embankments supporting non-critical structures | 1.3 | Stability analysis required |
| Bridge approach embankments and embankments supporting critical structures | 1.3 to 1.5 | All bridge approach embankments require FS >= 1.5 |
| Critical structures (failure would cause property damage) | 1.5 | Detailed analysis required; Spencer's or Morgenstern-Price methods recommended |
| Seismic condition (Rift Valley and seismically active zones) | Consider seismic loading | Liquefaction potential assessment required for granular soils below water table |

**Notes from ERA GDM Section 3.2:**
- Embankments under 5 m high on stable ground with slopes not steeper than 1.5H:1V do not require detailed geotechnical investigation and analysis.
- Embankments over 5 m high, on soft soils, or in unstable areas require detailed stability analysis.
- Benches: 1.5 m minimum width, not more than 6 m apart vertically.
- Rule of thumb for preliminary FS on clay: FS = 6c / (gamma_Fill x H_Fill).

### M.2.5 Cross-Country Comparison: Earthworks Requirements

**Table E.26.C1: Compaction Requirements -- ERA vs MoWT (Uganda) vs RDM (Kenya)**

| Parameter | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Upper zone compaction | 93% MDD (T-180) | 95% MDD (BS 1377) | 95% MDD (T-180) |
| Upper zone depth | 600 mm | 300 mm | 600 mm |
| Lower fill compaction | 95% MDD (T-99) | 93% MDD (BS 1377) | 93% MDD (T-99) |
| Maximum layer thickness (upper) | 200 mm | 150 mm | 200 mm |
| Maximum layer thickness (lower) | 250 mm | 200 mm | 250 mm |
| Rock fill layer thickness | 300 mm | 300 mm | 300 mm |

**Critical departure:** ERA specifies 93% MDD T-180 for the upper 600 mm, while Kenya and Uganda both specify 95% MDD. The ERA upper zone is also 600 mm deep (same as Kenya), while Uganda uses only 300 mm. Always apply the ERA-specific values when the project is in Ethiopia.

**Table E.26.C2: Cut and Fill Slope Ratios -- ERA vs MoWT (Uganda) vs RDM (Kenya)**

| Slope Type | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|-----------|---------------|---------------|-------------|
| Fill slope (H < 6 m, good material) | 1V:2H | 1V:2H | 1V:2H |
| Fill slope (H > 10 m) | 1V:2.5H to 1V:3H | 1V:2H (benched) | 1V:2H (benched) |
| Cut slope (stiff clay) | 1V:2H to 1V:3H | 1V:1.5H to 1V:2H | 1V:1.5H to 1V:2H |
| Cut slope (weathered rock) | 1V:1H to 1V:1.5H | 1V:0.5H to 1V:1H | 1V:0.5H to 1V:1H |
| Cut slope (sound rock) | 4V:1H to vertical | 1V:0.25H | Near vertical |
| Bench interval (cuts > 8-10 m) | Every 8-10 m height | Every 6-8 m | Every 8-10 m |

ERA fill slopes for heights above 10 m are generally flatter than Uganda and Kenya equivalents. ERA cut slopes in weathered rock are also more conservative. Always use ERA-specific slope ratios.

---

## M.3 Country-Specific Considerations

### M.3.1 Regional Soil Types and Earthworks Challenges

**Table E.26.5: Ethiopian Regional Soil Types and Earthworks Implications**

| Region | Dominant Soil Types | CBR Range | Earthworks Challenges | Typical Shrinkage Factor |
|--------|-------------------|-----------|----------------------|------------------------|
| Central Highlands (Addis Ababa, Debre Markos) | Red latosols (nitisols), residual clay, expansive clay (black cotton) | 5-30% (latosols); 2-8% (black cotton) | Expansive clays widespread; deep weathering profile; hilly terrain with large cut volumes | 1.20-1.35 |
| Rift Valley (Hawassa, Ziway, Afar) | Volcanic ash, pumice, lacustrine clays, collapsible soils | 3-15% | Collapsible soils (aeolian/volcanic); seismic activity; expansive lacustrine clays; very soft foundation conditions | 1.15-1.30 |
| Northern Highlands (Gondar, Lalibela) | Residual soils from basalt, sandstone/limestone sequences, black cotton in valleys | 10-40% (basalt residual); 2-10% (valley clay) | Steep terrain; basalt cuttings common; shale/mudstone intercalations create weak layers | 1.15-1.25 |
| Western Lowlands (Gambella, Benishangul) | Alluvial clays, laterite, sandy soils | 5-25% | High water table; seasonal flooding; soft ground conditions; remote locations increase haul costs | 1.20-1.30 |
| Eastern Escarpment (Harar, Dire Dawa) | Limestone, sandstone, residual soils, colluvium | 15-50% (rock-derived); 5-15% (colluvium) | Steep escarpment terrain; colluvium and talus slopes prone to landslides; variable material quality | 1.10-1.25 |
| Southern Lowlands (Jinka, Konso) | Lateritic gravel, volcanic soil, alluvial deposits | 10-35% | Remote areas; limited borrow sources; seasonal access challenges | 1.15-1.25 |

### M.3.2 Shrinkage and Bulking Factors for Common Ethiopian Materials

**Table E.26.6: Shrinkage Factors for Ethiopian Materials**

| Material | Shrinkage Factor | Conditions | Notes |
|----------|-----------------|-----------|-------|
| Red latosol (nitisol) -- good quality | 1.15-1.25 | Well-graded, moderate PI | Most common fill material in Ethiopian highlands |
| Red latosol (nitisol) -- high clay content | 1.25-1.35 | Higher fines, PI > 25 | Requires careful moisture control; common in deeply weathered basalt profiles |
| Black cotton soil (vertisol) | 1.30-1.50 | UNSUITABLE for fill | Remove and replace per ERA GDM Section 2.3.1 -- senior review mandatory |
| Volcanic ash / pumice | 1.10-1.20 | Low density, porous | Common in Rift Valley; check for collapse potential per ERA GDM Section 2.3.3 |
| Weathered basalt | 1.10-1.20 | Variable grading | Excellent fill material when available; common in highlands |
| Decomposed granite / gneiss | 1.15-1.25 | Sandy gravel texture | Good fill material; common in parts of western and southern Ethiopia |
| Sandstone / limestone rock fill | 1.05-1.15 | Block material | Low shrinkage; assess durability (slake test) |

**Table E.26.7: Bulking Factors for Ethiopian Materials**

| Material | Bulking Factor | Notes |
|----------|---------------|-------|
| Red latosol | 1.20-1.30 | Standard range for haulage planning |
| Volcanic ash / pumice | 1.15-1.25 | Low bulking due to porous structure |
| Clay soils (including black cotton) | 1.30-1.50 | High bulking; lumps in excavated material |
| Basalt (blasted) | 1.50-1.70 | Significant bulking; hard, angular fragments |
| Sandstone / limestone (blasted) | 1.40-1.60 | Moderate to high bulking |
| Colluvium / talus | 1.10-1.25 | Variable; depends on void ratio |

### M.3.3 ERA Special Soils Relevant to Earthworks

**Expansive soils (ERA GDM Section 2.3.1 -- 8 pages):**
- Black cotton soils (vertisols) are the most common problematic soil in Ethiopia, widespread in central highlands, Rift Valley margins, and valley floors.
- Identification: PI > 25, free swell > 50%, linear shrinkage > 8%.
- Treatment options: lime stabilization (2-6%), removal and replacement, moisture barriers, inert fill blanket.
- ERA requires removal and replacement to a depth of at least 600 mm below formation level when expansive soils are encountered in subgrade.

**Collapsible soils (ERA GDM Section 2.3.3):**
- Common in Ethiopian latosols and aeolian deposits (Afar region, Rift Valley).
- Collapse potential > 1% indicates potentially problematic soils.
- Treatment: pre-wetting and compaction, removal and replacement, dynamic compaction.

**Dispersive soils (ERA GDM Section 2.3.4):**
- Sodium-rich soils in arid lowlands.
- Pinhole test class D1/D2, ESP > 10%.
- Treatment: chemical treatment (lime, gypsum), filter protection, surface sealing.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Shrinkage factor (red latosol) | 1.20 | Red latosol fill, no test data | ASSUMED: Shrinkage 1.20 for Ethiopian red latosol fill. Verify with geotechnical data per ERA Site Investigation Manual. | Mid-range for Ethiopian latosol (Table E.26.6) |
| Shrinkage factor (general) | 1.25 | Soil type unknown | ASSUMED: Shrinkage 1.25 (Ethiopia general). Verify with Skill #8 soil data. | Conservative mid-range for Ethiopian conditions |
| Cut slope (residual clay) | 1H:1V | Material not specified, height 3-6 m | ASSUMED: Cut slope 1:1 (residual clay, 3-6 m). Verify material type per ERA GDM Table 4-8. | Table 4-8 residual clay, 3-6 m height |
| Fill slope | 2H:1V | Material not specified | ASSUMED: Fill slope 2:1. Verify material type and fill height per ERA GDM Table 3-8. | Common practice for earth fill in Ethiopia |
| Upper embankment compaction | 93% MDD (T-180) | Not specified | No flag (ERA Standard Technical Specification requirement) | Mandatory for upper 600 mm |
| Lower fill compaction | 95% MDD (T-99) | Not specified | No flag (ERA Standard Technical Specification requirement) | Mandatory for lower fill |
| Cross-section interval | 20 m | Not specified | No flag (standard interval) | Standard for detailed design in Ethiopia |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Shrinkage factor (latosol) | 1.10 | 1.35 | -- | Engineering practice | Warn if outside range; check material classification |
| Shrinkage factor (black cotton) | 1.25 | 1.55 | -- | Engineering practice | Warn if used as fill at all -- senior review required |
| Cut slope (clay, 3-6 m) | 0.75:1 | 2:1 | H:V | ERA GDM Table 4-8 | Warn if steeper than 0.75:1 for any soil |
| Fill height | 0 | 15 | m | ERA GDM Section 3.6 | Warn if > 5 m (stability analysis required); escalate if > 10 m |
| Layer thickness (compacted) | 100 | 300 | mm | ERA Standard Technical Specifications | Reject if upper 600 mm layers > 200 mm compacted |

### M.5.2 Standards Compliance Checks

- **Check:** Compaction standard matches zone requirements (Table E.26.3)
- **Standard:** ERA Standard Technical Specifications, ERA GDM Chapter 3
- **Pass condition:** Upper 600 mm at 93% MDD (T-180); lower fill at 95% MDD (T-99); core at 90% MDD (T-99)
- **Fail action:** NOTE -- Compaction standard does not match ERA zone requirements. Verify layer designation.

- **Check:** Material suitability for fill zone
- **Standard:** ERA GDM Chapter 3, ERA Pavement Vol I Chapter 4
- **Pass condition:** Material meets minimum CBR for designated zone (15% for selected fill/GC, 5% for general fill, 30% for subbase/GS)
- **Fail action:** REJECT -- Material does not meet minimum strength requirement. Assess alternative material source with Skill #28 Ethiopia module.

- **Check:** Expansive soil detection
- **Standard:** ERA GDM Section 2.3.1
- **Pass condition:** PI <= 25, free swell <= 50%, linear shrinkage <= 8%
- **Fail action:** ESCALATE -- Expansive soil detected (PI [X]%, free swell [Y]%). Requires removal and replacement per ERA GDM Section 2.3.1 or lime stabilization (2-6%). Senior review mandatory.

### M.5.3 Departures / Relaxations Process

Departures from ERA Standard Technical Specification compaction requirements require approval from the Engineer (per contract conditions). Departures from ERA GDM slope angles require approval from ERA or the regional roads authority with supporting geotechnical analysis. All departures must be documented with reference to the specific ERA manual section.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Expansive soil (black cotton) in alignment | Most common problematic soil in Ethiopia -- serious earthworks cost and stability implications | SENIOR REVIEW -- Expansive soil (vertisol) encountered at stations [X-Y]. PI [A]%, free swell [B]%. Material unsuitable for fill (ERA GDM Section 2.3.1). Requires removal and replacement to minimum 600 mm below formation. Assess additional borrow with Skill #28 Ethiopia module. Common in central highlands and Rift Valley margins. |
| Collapsible soil in foundation | Collapse upon wetting can cause sudden settlement | SENIOR REVIEW -- Collapsible soil at stations [X-Y]. Collapse potential [A]% (ERA GDM Section 2.3.3). Requires pre-wetting and compaction or removal and replacement. Common in Rift Valley volcanic ash and Afar region aeolian deposits. |
| Embankment height > 5 m | Stability analysis required per ERA GDM Section 3.6 | SENIOR REVIEW -- Fill height [X] m at station [Y]. Stability analysis required per ERA GDM Section 3.6. Minimum FS 1.3 (ordinary method of slices). Consider benching at 6 m vertical intervals. |
| Bridge approach embankment | All bridge approaches require FS >= 1.5 | SENIOR REVIEW -- Bridge approach embankment at station [Y]. ERA GDM Section 3.6 requires FS >= 1.5 for all bridge approach fills. Consider preloading, vertical drains, or staged construction per ERA GDM Section 3.4. |
| Deep cutting > 6 m in clay | Long-term stability deterioration in cohesive soils | SENIOR REVIEW -- Cut depth [X] m at station [Y] in clay material. ERA GDM Table 4-8 suggests benching when height > 6 m. Long-term stability may deteriorate as pore pressures equilibrate (ERA GDM Figure 4-17). Full stability analysis required. |
| Hilly terrain with side-long fill | Embankment stability on hillslopes is complex | SENIOR REVIEW -- Side-long fill at station [Y] on cross-slope > 1V:5H. ERA GDM Section 3.8 requires benching of existing surface before fill placement. Multiple failure modes possible (ERA GDM Figure 3-19). |
| Landslide-prone terrain | Common feature of Ethiopian highland roads | SENIOR REVIEW -- Route traverses landslide-prone terrain at stations [X-Y]. ERA GDM Section 4.3 applies. Identify landslide type (rotational, translational, flow) and implement remedial measures per ERA GDM Table 4-7. |
| Shrinkage factor not from test data | Volume estimate uncertainty | NOTE -- Shrinkage factor [X] assumed for [soil type]. Request laboratory compaction test data per ERA Site Investigation Manual for verification. |

---

## M.7 Worked Example -- Ethiopia

### Example: Earthworks for an ERA DC4 Road Through Highland Rolling Terrain

**Source:** Typical Ethiopia calculation using ERA GDM 2013 Chapters 3 and 4, and ERA Pavement Vol I Chapter 4.

**Given:**
- Road: DC4 Paved (regional road, Central Highlands)
- Terrain: Rolling (average gradient 10%)
- Predominant soil: Red latosol (nitisol), CBR 15-30%
- Shrinkage factor: 1.22 (from laboratory compaction test on latosol)
- Bulking factor: 1.25 (for haulage estimation)
- Cross-section spacing: 20 m
- Formation width: 8.6 m (per ERA GDM for DC4)
- Cut slope: 1:1 (residual clay, height 3-6 m, ERA GDM Table 4-8)
- Fill slope: 2:1 (earth fill, ERA GDM Table 3-8)
- Four consecutive cross-sections:

| Station | Chainage | Cut Area (m2) | Fill Area (m2) |
|---------|----------|---------------|----------------|
| 1 | 0+000 | 18.4 | 1.5 |
| 2 | 0+020 | 12.6 | 3.8 |
| 3 | 0+040 | 4.2 | 14.5 |
| 4 | 0+060 | 1.0 | 22.0 |

**Solution:**

**Step 1 -- Calculate cut volumes (average end area):**

Segment 1-2 (chainage 0+000 to 0+020):
```
V_cut = (18.4 + 12.6) / 2 x 20 = 15.5 x 20 = 310.0 m3
```

Segment 2-3 (chainage 0+020 to 0+040):
```
V_cut = (12.6 + 4.2) / 2 x 20 = 8.4 x 20 = 168.0 m3
```

Segment 3-4 (chainage 0+040 to 0+060):
```
V_cut = (4.2 + 1.0) / 2 x 20 = 2.6 x 20 = 52.0 m3
```

Total cut volume = 310.0 + 168.0 + 52.0 = **530.0 m3**

**Step 2 -- Calculate fill volumes (average end area):**

Segment 1-2:
```
V_fill = (1.5 + 3.8) / 2 x 20 = 2.65 x 20 = 53.0 m3
```

Segment 2-3:
```
V_fill = (3.8 + 14.5) / 2 x 20 = 9.15 x 20 = 183.0 m3
```

Segment 3-4:
```
V_fill = (14.5 + 22.0) / 2 x 20 = 18.25 x 20 = 365.0 m3
```

Total fill volume (compacted) = 53.0 + 183.0 + 365.0 = **601.0 m3**

**Step 3 -- Apply shrinkage factor:**
```
Shrinkage-adjusted fill = 601.0 x 1.22 = 733.2 m3
```

**Step 4 -- Compute net earthworks balance:**
```
Net = 530.0 - 733.2 = -203.2 m3
```

**Step 5 -- Check compaction requirements per ERA Standard Technical Specifications:**
- Upper 600 mm of fill: 93% MDD (T-180), maximum compacted layer thickness 200 mm, material must meet GC standard (CBR >= 15%)
- Lower fill: 95% MDD (T-99), maximum compacted layer thickness 250 mm, material CBR >= 5%
- Core: 90% MDD (T-99), maximum compacted layer thickness 300 mm

**Step 6 -- Check stability requirements:**
- Maximum fill height (Station 4): approximately 4.5 m (estimated from fill area and formation width)
- This is below 5 m threshold -- no detailed stability analysis required per ERA GDM Section 3.6, provided slopes are not steeper than 1.5H:1V.
- Fill slope at 2H:1V (earth fill) -- satisfactory.

**Step 7 -- Estimate haulage volume:**
```
Loose volume for haulage = 530.0 x 1.25 = 662.5 m3 (truck capacity planning)
```

**Result:**

| Parameter | Value | Unit |
|-----------|-------|------|
| Total cut volume (in-situ) | 530.0 | m3 |
| Total fill volume (compacted) | 601.0 | m3 |
| Shrinkage-adjusted fill | 733.2 | m3 |
| Net earthworks balance | -203.2 | m3 |
| Status | Borrow needed | -- |
| Borrow volume required | 203.2 | m3 |
| Borrow as % of total fill | 33.8% | -- |
| Loose volume for haulage | 662.5 | m3 |

**Interpretation:** The geometric cut (530.0 m3) is insufficient to meet the shrinkage-adjusted fill requirement (733.2 m3). The project requires 203.2 m3 of borrow material, representing 33.8% of the total fill volume. Given the highland setting, red latosol borrow is likely available within reasonable haul distance.

SENIOR REVIEW -- Borrow requirement of 203.2 m3 (33.8% of total fill). Identify borrow pit source and assess material suitability using Skill #28 Ethiopia module. Borrow material must meet GC requirements (CBR >= 15%) for selected fill zone, or CBR >= 5% for general fill.

NOTE -- Shrinkage factor 1.22 from laboratory compaction testing on red latosol (verified). If sections with different soil types are encountered (particularly expansive clay in valley floors), reassess shrinkage factors per Table E.26.6.

NOTE -- Check for expansive soils at transition from cut to fill (valley floor at Station 3-4). If PI > 25 or free swell > 50%, removal and replacement required per ERA GDM Section 2.3.1.

> Cross-reference: Skill #28 Ethiopia module for material suitability assessment of borrow source. Skill #27 Ethiopia module for mass haul optimisation of borrow haulage.

---

## M.8 References

1. Ethiopian Roads Authority, *Geotechnical Design Manual - 2013*, Chapter 3 (Road Embankments: types, design considerations, settlement analysis, stability assessment, fill slopes and benches), Chapter 4 (Roadside Slopes: soil slope cuts, cut slope angles and benches, rock cuts, slope stability analyses).
2. Ethiopian Roads Authority, *Pavement Design Manual Volume I Flexible Pavements - 2013*, Chapter 4 (Earthworks: embankment zones, compaction requirements, material specifications).
3. Ethiopian Roads Authority, *Standard Technical Specifications - 2013*, Earthworks clauses (compaction, layer thickness, testing).
4. Ethiopian Roads Authority, *Site Investigation Manual - 2013*, Borrow pit investigation and material prospecting.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- Ethiopia earthworks from ERA GDM 2013 Chs 3-4, Table 3-8 fill slopes, Table 4-8 cut slopes, compaction requirements, regional soil types, shrinkage factors, worked example for DC4 highland road. |
