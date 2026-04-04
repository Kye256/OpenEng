# Axle Load Surveys -- Kenya Module

> **Parent Skill:** Skill #4 Axle Load Surveys
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.2: Traffic Surveys (2025), Chapter 7; RDM 3.3; RDM 3.4
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.2 | 2025 | Chapter 7 (Axle Load Surveys), Tables 7.1-7.3 | Current -- mandatory |
| Kenya Road Design Manual RDM 3.3 | 2025 | Section 2.5 (Load Equivalency Factor) | Current -- ESA computation |
| Kenya Road Design Manual RDM 3.4 | 2025 | Section 2.5 (Design Traffic and Loading), Table 2.2 (Traffic Classes) | Current -- pavement design traffic |

### M.1.2 Institutional Context

Axle load surveys in Kenya are conducted by or for KeNHA, KeRRA, KURA, or County Governments. Kenya has a well-established weighbridge network:

- **9 Permanent Weighbridges (RDM 1.2, Table 7.2):** Mariakani (A109), Mtwapa (B8), Athi River (A104), Gilgil (A104), Webuye (A104), Rongo (A1), Juja (A2), Busia (B1), Isinya (A104). Types include high-speed WIM and static scales.
- **22 Virtual Weigh Stations (VWS) (RDM 1.2, Table 7.1):** Distributed across the national highway network providing continuous weigh-in-motion data.
- **KeNHA enforcement:** Vehicle Load Control is covered under the Road Operation Manual (ROM), Volume H, Part 2.

### M.1.3 Standard Philosophy

RDM 1.2 strongly recommends axle load surveys for every road design: "It is recommended that an axle load survey be carried out since basing designs on legal axle load limits is not valid given the widespread problem of overloading" (Section 7.1). The manual notes that actual axle loads differ significantly from legal limits due to the unknown proportion of overloaded vehicles and significant differences between vehicle classes on different roads.

Data analysis and computation of design traffic is covered in **RDM 3.3, Section 2.5** (load equivalency factor) and **RDM 3.4** (pavement design traffic classes).

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Legal Axle Load Limits

Kenya's legal axle load limits per the Traffic Act (Cap 403) and enforcement practice:

| Axle Type | Legal Limit (tonnes) | Legal Limit (kN) | Notes |
|-----------|---------------------|-------------------|-------|
| Single axle (dual tyres) | 10 | 98 | Standard enforcement limit |
| Tandem axle | 16 | 157 | Two axles spaced 1.0-2.0 m |
| Triaxle | 24 | 235 | Three axles in a group |
| Steering axle (single tyres) | 8 | 78 | Front steering axle |

**Maximum gross vehicle weight:** 48 tonnes for articulated vehicles (varies by axle configuration).

**Key difference from Uganda:** Kenya legal limits are the same as Uganda (10t single, 16t tandem, 24t triaxle) as both follow East African Community harmonised limits. However, Kenya has a more extensive enforcement network (9 permanent weighbridges + 22 VWS vs Uganda's more limited coverage).

**RDM 3.4, Section 2.5** notes: "During axle load surveys, axles heavier than the legal limit (see RDM Volume 1 Part 2) or 13 tonnes may be recorded. In this case, a sensitivity analysis must be conducted in the computation of the load equivalency factor."

### M.2.2 Vehicle Classes for Axle Load Surveys (RDM 1.2, Table 7.3)

Only commercial vehicles causing pavement damage are weighed:

| Vehicle Class | Code | Description | Axle Configuration |
|--------------|------|-------------|-------------------|
| Bus | B | Two axle rigid, seating 26-53 persons | 2-Axle Rigid |
| Omnibus | OB | Three or four axle, seating > 53 persons | 3/4-Axle or Articulated |
| Light Goods Vehicle | LGV | Two axle rigid, gross weight <= 3,500 kg | 2-Axle Rigid |
| Medium Goods Vehicle | MGV | Two axle rigid, gross weight 3,500-8,500 kg | 2-Axle Rigid |
| Heavy Goods Vehicle | HGV | 3/4 axle rigid, gross weight > 8,500 kg | 3/4-Axle Rigid |
| Articulated Heavy Goods Vehicle | AHGV | Articulated, 3+ axles, gross weight > 8,500 kg | 3+ Axles Articulated |

**Source:** RDM 1.2, Table 7.3 (Verified from PDF)

Goods vehicles of gross weight exceeding 3,500 kg and passenger vehicles of seating capacity 26 or more are to be considered for axle load survey and analysis (Section 7.3).

### M.2.3 Kenya Weighbridge Network

**Table 7.2: Permanent Weighbridges on the Kenya Network (Verified)**

| No. | Location | Road | Type |
|-----|----------|------|------|
| 1 | Mariakani | A109 | High speed WIM and multi deck scales |
| 2 | Mtwapa | B8 | Static |
| 3 | Athi River | A104 | High speed WIM and multi deck scales |
| 4 | Gilgil | A104 | High speed WIM and multi deck scales |
| 5 | Webuye | A104 | High speed WIM and multi deck scales |
| 6 | Rongo | A1 | Static |
| 7 | Juja | A2 | Static |
| 8 | Busia | B1 | Static |
| 9 | Isinya | A104 | High speed WIM and multi deck scales |

**Source:** RDM 1.2, Table 7.2 (Verified from PDF)

### M.2.4 Survey Duration and Methodology (RDM 1.2, Sections 7.5-7.8)

**Duration:** Same as traffic counts -- ideally 7 days continuous (24 hours). Minimum 12 or 16 hours if night surveys not practicable. Surveys less than 7 days are not recommended (Section 7.6).

**Sample size:** On busier roads, target at least 10% of commercial vehicles. The number can be reduced by weighing fewer empty vehicles, as their load distribution is fairly constant (Section 7.5).

**Sampling method:** Select vehicles in rotation (e.g., every third or fourth commercial vehicle) to eliminate bias.

**Avoidance behaviour:** RDM 1.2 explicitly notes that traffic flow is "normally unusual during an axle load survey" because operators suspect enforcement. Surveys may need to be spread over 14 days (half-day sessions) or a full month if avoidance is observed (Section 7.6).

**Site layout:** Three cases described (Figures 7.2, 7.3) for medium-high, low, and alternate-direction layouts using slip roads and hard shoulders.

**Weigh pad capacity:** Minimum 40,000 kg per set, each pad capable of weighing 20,000 kg (Section 7.8).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2a (Kenya): Check existing data sources
  |- If permanent weighbridge exists on or near corridor -> Request data from KeNHA
  |- If VWS exists on or near corridor -> Request WIM data (continuous, but less accurate than static)
  |- If neither -> Plan project-specific axle load survey
  \- Note: VWS data may underestimate steering axle weights and overestimate trailer axle weights (Section 7.4)

Step 3a (Kenya): Select survey methodology
  |- High traffic volume (KeNHA trunk road) -> Static weigh pads on slip road/shoulder (Case 1, Figure 7.2)
  |- Medium traffic volume -> Alternate direction weighing (Case 2)
  |- Low traffic volume (KeRRA rural road) -> Single set of pads, both directions (Case 3, Figure 7.3)
  \- Consider using existing weighbridge data if available and representative

Step 4a (Kenya): Handle overloading
  |- If axle loads > 13 tonnes recorded -> Conduct sensitivity analysis per RDM 3.4 Section 2.5
  |- If significant avoidance behaviour observed -> Extend survey duration or use half-day sessions
  |- For Northern Corridor roads -> Expect high proportion of overloaded vehicles; plan for large sample
  \- Always record direction of travel -- directional loading can be very different (loaded vs empty trucks)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**The Northern Corridor (Mombasa-Nairobi-Malaba) carries the heaviest truck traffic in East Africa.** Overloading is endemic on this corridor despite enforcement. Axle load surveys on Northern Corridor roads typically show 20-40% of trucks exceeding legal limits. The pavement designer must use measured axle loads, not legal limits.

**Port traffic creates strong directional loading patterns.** On the A109 (Mombasa-Nairobi), loaded trucks travel from Mombasa to Nairobi while many return empty. This creates a large directional imbalance in axle loading. Always record direction of travel and analyse each direction separately.

**Avoidance of weighing stations is a significant issue.** RDM 1.2 explicitly warns about this. Trucks may divert to alternative routes or time their journeys to avoid survey periods. Coordinate with traffic police but ensure police presence does not bias the survey.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using legal axle load limits instead of measured loads.** Overloading is widespread. Legal limits underestimate actual pavement loading significantly.
2. **Not recording direction of travel.** On major corridors, loaded and empty directions have very different axle load distributions.
3. **Excluding buses from the survey.** Buses (B) and omnibuses (OB) have high axle loads and are explicitly included in Table 7.3.
4. **Using portable WIM data for design purposes.** RDM 1.2 Section 7.4 warns that portable WIM scales underestimate steering axle weights and overestimate trailer axle weights. Use static scales for design data.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Survey duration | 7 days (24 hours) | Not specified | -- ASSUMED: 7-day continuous axle load survey per RDM 1.2 Section 7.6. | RDM 1.2 |
| Standard axle | 80 kN (8,160 kg) | Kenya | -- APPLIED: Standard axle = 80 kN per RDM 3.3. | RDM 3.3 |
| Legal single axle limit | 10 tonnes (98 kN) | Kenya | -- APPLIED: Kenya legal single axle limit = 10 tonnes. | Traffic Act Cap 403 |
| Sample proportion | 10% of commercial vehicles | Busy road | -- ASSUMED: Target 10% of commercial vehicles per RDM 1.2 Section 7.5. | RDM 1.2 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Survey duration | 3 | 14 | days | RDM 1.2 Section 7.6 | Warn if < 7 days |
| Single axle load | 0 | 200 | kN | Experience | Investigate if > 150 kN (extreme overloading) |
| Overloading % | 0 | 60 | % | Experience | Warn if > 40% (investigate data quality) |

### M.5.2 Standards Compliance Checks

- **Check:** Survey includes all Table 7.3 vehicle classes.
- **Standard:** RDM 1.2, Table 7.3
- **Pass condition:** B, OB, LGV, MGV, HGV, AHGV all surveyed
- **Fail action:** Warn -- "Not all RDM 1.2 Table 7.3 vehicle classes are represented in the survey."

### M.5.3 Departures / Relaxations Process

Departures from survey requirements require approval from the Chief Engineer for Roads. Any reduction in survey duration or sample size must be documented and justified.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Overloading > 30% of vehicles | Widespread non-compliance with legal limits | NOTE -- [X]% of vehicles exceed legal axle load limits. Design must use measured loads, not legal limits. Consider sensitivity analysis per RDM 3.4 Section 2.5. |
| Strong directional loading imbalance | Loaded vs empty direction on corridor | NOTE -- Directional loading imbalance detected. Analyse each direction separately for pavement design. |
| Significant truck avoidance observed | Trucks diverting to avoid survey | SENIOR REVIEW -- Truck avoidance behaviour observed. Consider extending survey to 14 days with half-day sessions per RDM 1.2 Section 7.6. |
| Very heavy traffic (A109 corridor) | High sample size required | NOTE -- Very high commercial vehicle volumes. Target minimum 10% sample with emphasis on loaded direction. |

---

## M.7 Worked Example -- Kenya

### Example: Planning an Axle Load Survey on the Mombasa-Nairobi Highway (A109)

**Source:** Hypothetical, based on RDM 1.2 methodology.

**Given:**
- Road: A109 (Mombasa-Nairobi Highway), section near Mtito Andei
- Authority: KeNHA (Class A road)
- Commercial vehicle volume: ~2,500 commercial vehicles/day (both directions)
- Nearest permanent weighbridge: Mariakani (A109)
- Project: Pavement rehabilitation design
- Budget: Adequate

**Solution:**

**Step 1: Check existing data.** Permanent weighbridge at Mariakani (static and WIM) -- request historical data from KeNHA. However, Mariakani is ~200 km from survey section. Need project-specific survey for representative loading at Mtito Andei.

**Step 2: Select methodology.** High traffic volume -> Use Case 1 layout (two sets of weigh pads on slip road/shoulder, Figure 7.2). Both directions simultaneously.

**Step 3: Determine sample size.** Target 10% of 2,500 = 250 commercial vehicles/day. At ~16 hours of weighing per day, this is ~16 vehicles/hour/direction -- achievable with two weigh pad sets.

**Step 4: Plan survey.**
- Duration: 7 consecutive days (24 hours if possible, minimum 16 hours)
- Location: Flat section with good visibility, away from junctions, on hard shoulder
- Equipment: 2 sets of static weigh pads (capacity 40,000 kg each)
- Timing: July (neutral month, dry season)
- Staff: Traffic controllers, weighing team, data recorders
- Coordination: Inform KeNHA and traffic police. Ensure police presence does not cause avoidance behaviour.

**Step 5: Data recording per vehicle.**
- Direction of travel (Mombasa-bound or Nairobi-bound)
- Vehicle class (Table 7.3: B, OB, LGV, MGV, HGV, AHGV)
- Axle configuration (number of axles, spacing)
- Individual axle loads (each axle weighed separately)
- Commodity carried (from driver interview)
- Loading status (full, part, empty)

**Escalation:** NOTE -- Northern Corridor road. Expect significant overloading (20-40% of trucks). Strong directional loading imbalance expected (loaded trucks Mombasa-to-Nairobi, many empty returns). Design pavement for the heavier direction.

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Part 2 -- Traffic Surveys (RDM 1.2)*, 2025, Chapter 7.
2. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 3: Part 3 -- Pavement Foundation and Materials Design (RDM 3.3)*, 2025, Section 2.5.
3. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 3: Part 4 -- Flexible Pavement Design (RDM 3.4)*, 2025, Section 2.5.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft. Weighbridge network from RDM 1.2 Tables 7.1-7.2, vehicle classes from Table 7.3, survey methodology from Sections 7.4-7.8 verified against RDM 1.2 PDF. Legal axle load limits from Traffic Act Cap 403. Design traffic reference from RDM 3.4 Table 2.2 and Section 2.5. |
