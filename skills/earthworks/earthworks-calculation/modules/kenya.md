# Earthworks Calculation -- Kenya Module

> **Parent Skill:** #26 Earthworks Calculation
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya RDM 3.3: Pavement Foundation and Materials Design (2025), Chapter 5 (Earthworks); Kenya Standard Specification for Road and Bridge Construction (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 3.3: Pavement Foundation and Materials Design | 2025 | Chapter 5 -- Earthworks: Section 5.2 (Cuttings), Section 5.3 (Fill Embankments), Section 5.3.4 (Slope Stability) | Current -- mandatory for design |
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Earthworks clauses: compaction requirements, layer thickness limits, material acceptance criteria, test frequencies | Current -- mandatory for construction |
| Kenya RDM 3.1: Ground Investigations | 2025 | Chapter 3 (Kenya soil types), Chapter 8 (Borrow pit investigations) | Current |

### M.1.2 Institutional Context

Earthworks design and construction in Kenya follows the RDM 3.3 for design requirements and the Standard Specification for construction acceptance criteria.

- **KeNHA:** National trunk roads (Classes A, B, C). Earthworks on these projects typically involve the largest volumes and most complex terrain.
- **KeRRA:** Rural and county roads (Classes D, E). Earthworks tend to be smaller scale but material quality challenges are common due to remoter borrow pit locations.
- **KURA:** Urban authorities (Classes UA, UC, UL). Earthworks constrained by adjacent structures and utilities.
- **County Governments:** Local access roads. Earthworks are typically simple but oversight capacity is limited.

All agencies use the same Standard Specification for earthworks material acceptance and compaction requirements.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

### M.1.3 Standard Philosophy

The Kenya RDM 3.3 Chapter 5 takes a prescriptive approach to earthworks: it specifies slope gradients by material type, compaction standards by zone within the embankment, and material acceptance criteria. The Standard Specification provides the contractual construction requirements (compaction percentages, test frequencies, acceptance limits). The 2025 edition introduces a climate resilience emphasis -- minimum S3 subgrade (CBR >= 7%) for paved road foundations, and mandatory 4-day soaked CBR testing even in dry areas.

---

## M.2 Country-Specific Knowledge

### M.2.1 Cuttings (RDM 3.3 Section 5.2)

**Table KE.1: Kenya Cut Slope Gradients by Material Type (from RDM 3.3 Section 5.2)**

| Material Classification | Cut Slope (V:H) | Maximum Cut Height (m) | Drainage Requirements | Notes |
|------------------------|-----------------|----------------------|----------------------|-------|
| Black cotton soil / expansive clay | 1:3 to 1:4 | 3 | Lined drains mandatory; subsoil drainage | Highly problematic -- common in Rift Valley, parts of Central |
| Soft clay / silt | 1:2 to 1:3 | 5 | Side drains + subsoil drainage | Stability depends on moisture content |
| Laterite (murram) | 1:1 to 1:1.5 | 8 | Side drains at toe | Most common road material in Kenya |
| Weathered rock | 1:0.5 to 1:1 | 10 | Rock face drains where seepage present | May require controlled blasting |
| Sound rock | 1:0.25 (near-vertical) | 15 | Catch drains at toe | Blasting required; rock classification determines excavation method |

**Rock classification for excavation payment:**
- **Common excavation:** All materials that can be excavated by ripping or digging without blasting.
- **Hard material excavation:** Requires pneumatic tools or light blasting.
- **Rock excavation:** Requires drilling and blasting. Classified where UCS > 10 MPa or material cannot be ripped by a D8-class bulldozer.

**Drainage of cuttings (Section 5.2):**
- All cuttings require side drains at the toe of the cut slope.
- Deep cuttings (> 5m) in clay or silt require subsoil drainage (herringbone pattern or interceptor drains above cut face).
- Seepage faces must be treated with filter material and collector drains.
- Crest of cut slope must have catch ditches where rainfall runoff could erode the slope face.

### M.2.2 Fill Embankments (RDM 3.3 Section 5.3)

**Table KE.2: Kenya Compaction Standards by Embankment Zone (from Standard Specification)**

| Embankment Zone | Layer Thickness (max) | Compaction Standard | Minimum Density | Material Requirement |
|----------------|----------------------|--------------------|-----------------|--------------------|
| Upper 600mm (selected subgrade) | 150mm compacted | Modified AASHTO (T180) | 95% MDD | Min CBR 15% (Class S3 or better) -- G15 minimum |
| Lower fill (below 600mm from formation) | 200mm compacted | Standard Proctor (T99) | 93% MDD | Min CBR 5% -- G5 minimum for fill |
| Embankment core (below lower fill) | 300mm compacted | Standard Proctor (T99) | 90% MDD | Min CBR 3% -- G3 minimum |

**Moisture conditioning requirements (Standard Specification):**
- Fill material shall be placed at moisture content within -2% to +2% of optimum moisture content (OMC).
- If material is too dry, it shall be moistened by sprinkling and mixing before compaction.
- If material is too wet, it shall be aerated (spread and turned) before compaction.
- No compaction shall proceed during or immediately after heavy rainfall.

**Layer thickness limits:**
- Maximum loose layer thickness before compaction: 200mm for upper 600mm zone, 300mm for lower fill, 400mm for embankment core.
- Minimum compacted layer thickness: 100mm.
- Each layer must be tested and approved before the next layer is placed.

### M.2.3 Slope Stability (RDM 3.3 Section 5.3.4)

**Table KE.3: Kenya Fill Slope Design Criteria**

| Fill Height | Fill Slope (V:H) | Safety Factor (min) | Stability Check Required |
|------------|-----------------|--------------------|-----------------------|
| Up to 3m | 1:1.5 | 1.3 (static) | Visual inspection sufficient |
| 3m to 6m | 1:1.5 to 1:2 | 1.3 (static), 1.0 (seismic) | Slope stability analysis for clay fills |
| 6m to 10m | 1:2 | 1.5 (static), 1.1 (seismic) | Full stability analysis required |
| Over 10m | 1:2 to 1:3 | 1.5 (static), 1.1 (seismic) | Specialist geotechnical design required |

**Benching requirements:**
- Fill embankments > 6m height: horizontal benches at 5m vertical intervals, minimum 2m wide.
- When fill is placed on sloping ground (cross-slope > 1V:5H): existing surface must be benched in horizontal steps before fill placement to prevent sliding at the interface.

### M.2.4 Standard Specification Requirements

**Compaction test frequencies (from Standard Specification):**

| Test | Frequency | Standard |
|------|-----------|----------|
| Field density (sand replacement or nuclear gauge) | 1 per 500 m2 per layer | KS/EN equivalent of BS 1377 |
| Moisture content | Every density test location | KS/EN |
| CBR (lab, soaked 4-day) | 1 per 2,000 m3 of placed material | KS/EN -- 4-day soak mandatory |
| Atterberg limits | 1 per 2,000 m3 | KS/EN |
| Grading analysis | 1 per 2,000 m3 | KS/EN |

**Material acceptance criteria:**
- Each compacted layer must achieve the specified minimum density (Table KE.2).
- Failed density test locations: re-compact and re-test. If still failing, remove and replace material.
- Material not meeting G-code requirements at source: reject and source alternative material.

---

## M.3 Country-Specific Considerations

### M.3.1 Regional Soil Types and Earthworks Challenges

**Table KE.4: Kenya Regional Soil Types and Earthworks Implications**

| Region | Dominant Soil Types | CBR Range | Earthworks Challenges | Typical Shrinkage Factor |
|--------|-------------------|-----------|----------------------|------------------------|
| Rift Valley (Naivasha, Nakuru) | Black cotton soil (vertisols), volcanic ash | 2-8% | Expansive clays, high swelling pressure, deep cuttings unstable when wet | 1.25-1.40 |
| Western Kenya (Kisumu, Kakamega) | Laterite (red murram), tropical clay | 10-45% | Good laterite sources available; seasonal moisture affects workability | 1.15-1.25 |
| Central Highlands (Nairobi, Nyeri) | Red volcanic soil (nitisols), murram | 15-50% | Generally good fill material; steep terrain creates large cut volumes | 1.15-1.20 |
| Coastal (Mombasa, Malindi) | Coral limestone, sandy soils, marine clay | 5-30% | Coral aggregate available; marine clay problematic; salt contamination risk | 1.10-1.20 |
| Northern/Eastern (Isiolo, Garissa) | Sandy soils, arid gravels | 8-25% | Material sources scarce; long haul distances; desiccation cracking | 1.10-1.15 |
| Mt. Kenya / Aberdares | Volcanic soil, weathered basalt | 20-60% | Excellent fill material from weathered rock; steep terrain challenges | 1.10-1.20 |

### M.3.2 Shrinkage and Bulking Factors for Common Kenya Materials

**Table KE.5: Shrinkage Factors for Kenya Materials**

| Material | Shrinkage Factor | Conditions | Notes |
|----------|-----------------|-----------|-------|
| Laterite (good quality, CBR > 25%) | 1.15-1.20 | Well-graded, moderate PI | Most common road fill in Kenya |
| Laterite (poor quality, CBR 10-25%) | 1.20-1.30 | Higher fines content | Requires careful moisture control |
| Black cotton soil | 1.30-1.45 | UNSUITABLE for fill | Use only in embankment core with encapsulation -- senior review required |
| Sandy soil (coastal/northern) | 1.05-1.15 | Low cohesion | Good shrinkage but may lack fines for adequate compaction |
| Weathered rock / decomposed basalt | 1.10-1.20 | Variable grading | Excellent fill material when available |
| Coral aggregate (coastal) | 1.10-1.15 | Porous material | Specific to coastal Kenya; check for salt contamination |

**Table KE.6: Bulking Factors for Kenya Materials**

| Material | Bulking Factor | Notes |
|----------|---------------|-------|
| Laterite | 1.20-1.30 | Standard range for haulage planning |
| Sandy soils | 1.10-1.20 | Low bulking |
| Clay soils (including black cotton) | 1.30-1.45 | High bulking; lumps in excavated material |
| Rock (blasted) | 1.40-1.60 | Significant bulking |
| Coral | 1.15-1.25 | Porous structure partially collapses |

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Shrinkage factor (laterite) | 1.20 | Laterite fill, no test data | ASSUMED: Shrinkage 1.20 for Kenya laterite fill. Verify with geotechnical data per RDM 3.1. | Mid-range for Kenya laterite (Table KE.5) |
| Shrinkage factor (general) | 1.20 | Soil type unknown | ASSUMED: Shrinkage 1.20 (Kenya general). Verify with Skill #8 soil data. | Conservative mid-range for Kenya conditions |
| Cut slope (laterite) | 1V:1H | Material not specified | ASSUMED: Cut slope 1:1 (laterite). Verify material type per RDM 3.3 Section 5.2. | Common for laterite cuts in Kenya |
| Fill slope | 1V:1.5H | Material not specified | ASSUMED: Fill slope 1:1.5. Verify material type and fill height per RDM 3.3 Section 5.3.4. | Standard Kenya practice for fills up to 6m |
| Upper embankment compaction | 95% MDD (T180) | Not specified | No flag (Standard Specification requirement) | Mandatory for upper 600mm |
| Lower fill compaction | 93% MDD (T99) | Not specified | No flag (Standard Specification requirement) | Mandatory for lower fill |
| Cross-section interval | 25 m | Not specified | No flag (standard interval) | Standard for detailed design in Kenya |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Shrinkage factor (laterite) | 1.10 | 1.30 | -- | Engineering practice | Warn if outside range; check material classification |
| Shrinkage factor (black cotton) | 1.25 | 1.50 | -- | Engineering practice | Warn if used as fill at all -- senior review required |
| Cut slope (laterite) | 1:0.75 | 1:2 | V:H | RDM 3.3 Section 5.2 | Warn if steeper than 1:0.75 |
| Fill height | 0 | 15 | m | RDM 3.3 Section 5.3.4 | Warn if > 6m (stability analysis required); escalate if > 10m |
| Layer thickness (compacted) | 100 | 300 | mm | Standard Specification | Reject if upper 600mm layers > 150mm compacted |

### M.5.2 Standards Compliance Checks

- **Check:** Compaction standard matches zone requirements (Table KE.2)
- **Standard:** Standard Specification, RDM 3.3 Section 5.3
- **Pass condition:** Upper 600mm at 95% MDD (T180); lower fill at 93% MDD (T99); core at 90% MDD (T99)
- **Fail action:** NOTE -- Compaction standard does not match Standard Specification zone requirements. Verify layer designation.

- **Check:** Material suitability for fill zone
- **Standard:** RDM 3.3 Chapter 8, Standard Specification
- **Pass condition:** Material meets minimum G-code for designated zone (G15 for upper 600mm, G5 for lower fill, G3 for core)
- **Fail action:** REJECT -- Material does not meet minimum strength requirement. Assess alternative material source with Skill #28.

- **Check:** Fill placed within moisture tolerance
- **Standard:** Standard Specification
- **Pass condition:** Moisture content within OMC +/- 2%
- **Fail action:** NOTE -- Material moisture content outside specification. Aerate or add moisture before compaction.

### M.5.3 Departures / Relaxations Process

Departures from Standard Specification compaction requirements require approval from the Engineer (per contract conditions). Departures from RDM 3.3 slope gradients require approval from the relevant road authority (KeNHA/KeRRA/KURA) with supporting geotechnical analysis.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Black cotton soil in alignment | Expansive clay -- serious earthworks cost and stability implications | SENIOR REVIEW -- Black cotton soil (vertisol) encountered at stations [X-Y]. Material unsuitable for fill (PI typically > 35, swell > 3%). Requires removal and replacement. Assess additional borrow with Skill #28. Common in Rift Valley and parts of Central Kenya. |
| Swamp or waterlogged ground crossing | Special foundation treatment required | SENIOR REVIEW -- Swamp/waterlogged ground at stations [X-Y]. Requires specialist treatment: geotextile separation, surcharging, lightweight fill, or realignment. RDM 3.3 Section 5.3 refers to specialist design. |
| Landslide-prone area (steep terrain > 25%) | Slope failure risk during and after construction | SENIOR REVIEW -- Route traverses landslide-prone terrain at stations [X-Y]. Full slope stability analysis required. Consider retaining structures or realignment. Common in Western Highlands, Mt. Kenya slopes. |
| Deep cutting > 8m in any material | Slope stability and drainage critical | SENIOR REVIEW -- Cut depth [X]m at station [Y]. Benching at 5m intervals required for cuts > 6m. Full stability analysis needed. Check for groundwater seepage. |
| Fill height > 6m | Stability analysis required per RDM 3.3 Section 5.3.4 | SENIOR REVIEW -- Fill height [X]m at station [Y]. Full slope stability analysis required. Minimum safety factor 1.5 (static). Consider benching. |
| Shrinkage factor not from test data | Volume estimate uncertainty | NOTE -- Shrinkage factor [X] assumed for [soil type]. Request laboratory compaction test data per RDM 3.1 for verification. |

---

## M.7 Worked Example -- Kenya

### Example: Earthworks for a Kenya Class C Road Upgrade Through Rolling Terrain

**Source:** Typical Kenya calculation using RDM 3.3 Chapter 5 and Standard Specification requirements.

**Given:**
- Road: Class C Paved (county road, Western Kenya)
- Terrain: Rolling (average gradient 8%)
- Predominant soil: Laterite (red murram), CBR 20-35%
- Shrinkage factor: 1.18 (from laboratory compaction test on laterite)
- Bulking factor: 1.25 (for haulage estimation)
- Cross-section spacing: 25 m
- Formation width: 9.0 m (per RDM 1.3 Class C)
- Four consecutive cross-sections:

| Station | Chainage | Cut Area (m2) | Fill Area (m2) |
|---------|----------|---------------|----------------|
| 1 | 0+000 | 15.8 | 2.0 |
| 2 | 0+025 | 11.2 | 4.5 |
| 3 | 0+050 | 3.6 | 12.8 |
| 4 | 0+075 | 0.8 | 18.3 |

**Solution:**

**Step 1 -- Calculate cut volumes (average end area):**

Segment 1-2 (chainage 0+000 to 0+025):
```
V_cut = (15.8 + 11.2) / 2 x 25 = 13.5 x 25 = 337.5 m3
```

Segment 2-3 (chainage 0+025 to 0+050):
```
V_cut = (11.2 + 3.6) / 2 x 25 = 7.4 x 25 = 185.0 m3
```

Segment 3-4 (chainage 0+050 to 0+075):
```
V_cut = (3.6 + 0.8) / 2 x 25 = 2.2 x 25 = 55.0 m3
```

Total cut volume = 337.5 + 185.0 + 55.0 = **577.5 m3**

**Step 2 -- Calculate fill volumes (average end area):**

Segment 1-2:
```
V_fill = (2.0 + 4.5) / 2 x 25 = 3.25 x 25 = 81.25 m3
```

Segment 2-3:
```
V_fill = (4.5 + 12.8) / 2 x 25 = 8.65 x 25 = 216.25 m3
```

Segment 3-4:
```
V_fill = (12.8 + 18.3) / 2 x 25 = 15.55 x 25 = 388.75 m3
```

Total fill volume (compacted) = 81.25 + 216.25 + 388.75 = **686.25 m3**

**Step 3 -- Apply shrinkage factor:**
```
Shrinkage-adjusted fill = 686.25 x 1.18 = 809.8 m3
```

**Step 4 -- Compute net earthworks balance:**
```
Net = 577.5 - 809.8 = -232.3 m3
```

**Step 5 -- Check compaction requirements per Standard Specification:**
- Upper 600mm of fill: 95% MDD (T180), maximum compacted layer thickness 150mm, material must be G15 minimum (CBR >= 15%)
- Lower fill: 93% MDD (T99), maximum compacted layer thickness 200mm, material G5 minimum
- Moisture content to be within OMC +/- 2% at time of compaction

**Step 6 -- Estimate haulage volume:**
```
Loose volume for haulage = 577.5 x 1.25 = 721.9 m3 (truck capacity planning)
```

**Result:**

| Parameter | Value | Unit |
|-----------|-------|------|
| Total cut volume (in-situ) | 577.5 | m3 |
| Total fill volume (compacted) | 686.25 | m3 |
| Shrinkage-adjusted fill | 809.8 | m3 |
| Net earthworks balance | -232.3 | m3 |
| Status | Borrow needed | -- |
| Borrow volume required | 232.3 | m3 |
| Borrow as % of total fill | 33.9% | -- |
| Loose volume for haulage | 721.9 | m3 |

**Interpretation:** The geometric cut (577.5 m3) is insufficient to meet the shrinkage-adjusted fill requirement (809.8 m3). The project requires 232.3 m3 of borrow material, representing 33.9% of the total fill volume. This is significant and requires identification of a suitable laterite borrow pit.

SENIOR REVIEW -- Borrow requirement of 232.3 m3 (33.9% of total fill). Identify laterite borrow pit source and assess material suitability using Skill #28 Kenya module. Borrow material must meet G-code requirements for the designated embankment zone.

NOTE -- Shrinkage factor 1.18 from laboratory compaction testing on laterite (verified). If sections with different soil types are encountered, reassess shrinkage factors per Table KE.5.

> Cross-reference: Skill #28 Kenya module for material suitability assessment of borrow source. Skill #27 Kenya module for mass haul optimisation of borrow haulage.

---

## M.8 References

1. Ministry of Roads and Transport (Kenya), *Road Design Manual Part 3: Pavement Foundation and Materials Design (RDM 3.3)*, 2025, Chapter 5 -- Earthworks.
2. Ministry of Roads and Transport (Kenya), *Standard Specification for Road and Bridge Construction*, 2025 -- Earthworks clauses (compaction, layer thickness, testing).
3. Ministry of Roads and Transport (Kenya), *Road Design Manual Part 3: Ground Investigations (RDM 3.1)*, 2025 -- Chapter 3 (Kenya soil types), Chapter 8 (Borrow pit investigations).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- Kenya earthworks from RDM 3.3 Ch5, Standard Specification compaction requirements, regional soil types, shrinkage factors, worked example for Class C road. |
