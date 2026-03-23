# Design Standards Selection — UK Module

> **Parent Skill:** #13 Design Standards Selection
> **Country/Jurisdiction:** United Kingdom (England, Scotland, Wales, Northern Ireland)
> **Standards:** Design Manual for Roads and Bridges (DMRB), primarily CD 109
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-17
> **Reviewed By:** —

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Version | Sections Referenced | Status |
|----------|--------------|---------|---------------------|--------|
| Highway link design | CD 109 | Rev 2 (Nov 2021) | Sections 1–9 | Current |
| Cross-sections and headrooms | CD 127 | Rev 1 (Mar 2020) | Sections 2–5 | Current |
| Introduction to the DMRB | GG 101 | Rev 1 (Mar 2020) | All | Current — governs implementation |
| DMRB index | GG 000 | Updated periodically | All | Current index as of Nov 2024 |

### M.1.2 Institutional Context

The UK has four **Overseeing Organisations** that manage trunk roads:

- **National Highways** (England): Motorways and major A-roads (~4,300 miles of strategic road network). DMRB is mandatory.
- **Transport Scotland:** Scottish trunk road network. DMRB applies with Scottish annexes.
- **Welsh Government (Transport):** Welsh motorway and trunk road network. DMRB applies with Welsh annexes.
- **Department for Infrastructure (Northern Ireland):** NI trunk roads. DMRB applies with NI annexes.

**For trunk roads (motorways and strategic A-roads):** DMRB is mandatory and must be followed. Deviations require formal Departures from Standards.

**For local authority roads:** DMRB is not mandatory but is widely adopted as best practice. Many local authorities apply DMRB standards, sometimes with local amendments. Some use the Manual for Streets (MfS) for residential and urban streets, or local design guides. Always check the specific authority's requirements.

**For developments (Section 278/38 agreements):** Roads to be adopted by the highway authority must typically meet the authority's design standards, which may be DMRB, MfS, or a local design guide.

**Important:** The agent should establish whether the road is a trunk road (DMRB mandatory) or a local authority road (DMRB may or may not apply) early in the process.

### M.1.3 Standard Philosophy

**DMRB uses a requirements-based approach**, fundamentally different from the design manual approach used by AASHTO, ERA, and MoWT. Key features:

1. **Mandatory requirements ("shall"):** These must be complied with. Non-compliance requires a formal Departure from Standards approved by the Overseeing Organisation.

2. **Advisory clauses ("should"):** Best practice guidance. Non-compliance requires a Relaxation, which is a lesser approval than a Departure but must still be documented and approved.

3. **Informative content ("Note:", "For information"):** Background information. No compliance requirement.

4. **Departures and Relaxations process (GG 101):** When a design cannot meet a mandatory requirement, the designer must submit a Departure from Standards application to the Overseeing Organisation. This must demonstrate that the design is safe despite not meeting the standard. Relaxations follow a similar but less onerous process for advisory clauses.

5. **Design speed is derived from the road, not assigned.** Unlike AASHTO/ERA where you choose a design speed, DMRB's approach (since the 2020 revision of CD 109) bases geometric design on the **assessed speed** — the 85th percentile wet-weather speed — and the road's geometry must accommodate this. For new roads, the "design speed" is effectively set by the road category and layout.

This is a critical difference. The agent must understand that UK design doesn't start with "select a design speed" in the same way as AASHTO/ERA. Instead, it starts with "what category of road is this, and what are the speed requirements for that category?"

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UK.1: DMRB Road Categories (CD 109)**

CD 109 classifies roads by type and category. The primary distinction is between motorways and all-purpose roads, then by carriageway type:

| Road Type | Carriageway | CD 109 Category | Speed Limit | Key Characteristics |
|-----------|-------------|-----------------|-------------|---------------------|
| Motorway | Dual 3+ lanes | Motorway | 70 mph (113 km/h) | Grade-separated access only |
| All-purpose | Dual 2+ lanes, category A | D2AP (A) | Typically 70 mph | Grade-separated, limited access |
| All-purpose | Dual 2+ lanes, category B | D2AP (B) | Typically 60–70 mph | At-grade junctions permitted |
| All-purpose | Dual 2+ lanes, category C | D2AP (C) | Typically 40–60 mph | At-grade junctions, more frequent access |
| All-purpose | Wide single 2+1 | WS2+1 | Typically 50–60 mph | Alternating overtaking lanes |
| All-purpose | Single 2-lane | S2 | 30–60 mph | Standard single carriageway |

**Source:** CD 109, Section 2 and Appendix A *(verify against current revision)*

**Table UK.2: Minimum Horizontal Curve Radius by Design Speed (CD 109)**

| Design Speed (km/h) | Desirable Min Radius (m) | One Step Below Desirable (m) | Two Steps Below Desirable (m) |
|---------------------|--------------------------|------------------------------|-------------------------------|
| 120 | 2880 | 2040 | 1440 |
| 100 | 2040 | 1440 | 1020 |
| 85 | 1440 | 1020 | 720 |
| 70 | 1020 | 720 | 510 |
| 60 | 720 | 510 | 360 |
| 50 | 510 | 360 | 255 |

**Source:** CD 109, Table 2.10 *(approximate — verify against current revision)*

**Note on speed units:** DMRB uses a mixed system. Speed limits are in mph (UK law), but design standards and geometric calculations use km/h. The agent must be careful with unit conversions. Key equivalences: 30 mph ≈ 50 km/h, 40 mph ≈ 60 km/h, 50 mph ≈ 85 km/h, 60 mph ≈ 100 km/h, 70 mph ≈ 120 km/h.

**Table UK.3: Stopping Sight Distance (CD 109)**

| Design Speed (km/h) | Desirable Min SSD (m) | One Step Below (m) |
|---------------------|----------------------|-------------------|
| 120 | 295 | 215 |
| 100 | 215 | 160 |
| 85 | 160 | 120 |
| 70 | 120 | 90 |
| 60 | 90 | 70 |
| 50 | 70 | 50 |

**Source:** CD 109, Table 2.9 *(approximate — verify against current revision)*

**Full tables → `tables/uk_classification.json`** *(to be created)*

### M.2.2 Country-Specific Formulas

CD 109 uses specific formulas for:
- **Transition curve length:** L = V³ / (46.7 × q × R) where V is speed in km/h, q is rate of change of radial acceleration (max 0.6 m/s³ mandatory, 0.3 m/s³ advisory), R is radius in metres.
- **Relaxation and Departure thresholds** are defined by "steps below desirable minimum" — see M.5.3.

### M.2.3 Classification System

**DMRB does not classify roads by traffic volume in the same way as AASHTO/ERA.** Instead, the classification is primarily by:

1. **Road type:** Motorway vs All-purpose
2. **Carriageway type:** Dual vs Single, number of lanes
3. **Access provisions:** Grade-separated only, at-grade permitted, direct access permitted
4. **Speed environment:** National speed limit vs restricted

The decision of what type of road to build is made at the scheme appraisal stage (using TAG — Transport Appraisal Guidance), not by this skill. This skill receives the road type as an input and identifies the applicable geometric standards.

**Traffic volume does influence the number of lanes** (capacity analysis), but it does not determine the "class" of road in the way it does in Uganda/AASHTO. A single carriageway road with 500 vpd and one with 5,000 vpd both follow CD 109's S2 standards — but the higher-traffic road is more likely to need capacity improvements (widening, climbing lanes, overtaking sections).

**Design vehicle for UK:**
| Road Type | Design Vehicle | Key Dimension |
|-----------|---------------|---------------|
| Motorway | Articulated vehicle (16.5m) | Maximum Legal Vehicle |
| All-purpose trunk | Articulated vehicle (16.5m) | Maximum Legal Vehicle |
| Local/access | Rigid HGV (12m) or as specified by authority | Varies |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Determine which standard applies
  ├── If trunk road (motorway or strategic A-road)
  │     → DMRB is mandatory
  │     → Overseeing Organisation: National Highways / Transport Scotland / Welsh Govt / DfI NI
  ├── If local authority road
  │     → Check local authority design guide
  │     ├── Many adopt DMRB
  │     ├── Urban/residential → May use Manual for Streets (MfS)
  │     └── Ask user which standards the authority requires
  ├── If Section 278/38 development road
  │     → Adopting authority's standards apply
  └── If unsure → Default to DMRB CD 109 (most widely applicable)
        → Flag: ⚠️ ASSUMED

Step 6 (UK): Assign road category
  ├── Road type already determined (motorway / all-purpose / local)
  ├── Carriageway type (dual / single / WS2+1) based on capacity needs
  ├── Select CD 109 category from Table UK.1
  └── This determines the applicable geometric standards

Step 7 (UK): Determine design speed
  ├── For new roads: Design speed follows from road category
  │     ├── Motorway → 120 km/h
  │     ├── D2AP (A) → 120 km/h
  │     ├── D2AP (B) → 100 km/h
  │     ├── D2AP (C) → 85 km/h
  │     ├── WS2+1 → 85 km/h
  │     └── S2 → 60–100 km/h (depends on context)
  ├── For existing roads (improvement): Design speed based on measured 85th percentile speed
  │     → This is a key difference from AASHTO/ERA
  └── The design speed determines the geometric parameter requirements from CD 109 tables

Step 8 (UK): Design vehicle
  ├── Trunk roads → 16.5m articulated vehicle (maximum legal vehicle)
  └── Local roads → As specified by local authority (typically 12m rigid or 16.5m artic)
```

### M.3.2 Professional Judgment (UK-Specific)

**The Departures process is a feature, not a failure.** In UK practice, Departures from Standards are common and expected on constrained sites. A design with Departures is not necessarily a bad design — it's a design where the engineer has explicitly identified where the standard couldn't be met and demonstrated that the design is safe. The agent should not treat a Departure trigger as an error, but should flag it clearly and provide the information needed for the Departure application.

**The 2020 DMRB revision changed significant aspects of road design.** Engineers trained on TD 9/93 (the predecessor to CD 109) will have learned different terminology and some different approaches. Key changes include the removal of "wet weather speed" concept, changes to superelevation requirements, and restructuring of the standard hierarchy. Be aware that some practice may reference superseded documents.

**Speed limit ≠ design speed ≠ operating speed.** UK speed limits are set by law (national speed limit applies unless signed otherwise). Design speed is a geometric design parameter. Operating speed is what drivers actually do. All three can be different, and the designer must consider all three.

**Manual for Streets (MfS) applies to residential and urban streets.** For roads with a design speed ≤ 60 km/h in a residential/urban context, MfS provides an alternative to DMRB that prioritises placemaking and pedestrian/cycling provision over vehicle throughput. The agent should flag when MfS might be more appropriate than DMRB.

### M.3.3 Common Errors (UK-Specific)

1. **Applying DMRB to a road where Manual for Streets is more appropriate.** Urban residential streets should not be designed as trunk roads.
2. **Using TD 9/93 values instead of CD 109.** The 2020 revision changed many values. Always use the current CD 109.
3. **Confusing mph and km/h.** Speed limits are in mph, design standards are in km/h. A "60 mph" road has a design speed of approximately 100 km/h, not 60 km/h.
4. **Not distinguishing "shall" from "should" in DMRB requirements.** "Shall" is mandatory (Departure needed for non-compliance). "Should" is advisory (Relaxation needed). This distinction matters for the approval process.
5. **Assuming traffic volume determines road type.** In the UK, road type is a strategic/planning decision, not simply a function of AADT.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design standard | DMRB (CD 109, current revision) | UK road, authority not specified | ⚠️ ASSUMED: DMRB applied (verify with local authority if not a trunk road) | DMRB is the most widely applicable UK standard |
| Traffic growth rate | See TAG databook | No forecast data | ⚠️ ASSUMED: Growth rates from TAG databook (obtain project-specific forecast for detailed design) | DfT's Transport Appraisal Guidance provides national forecast factors |
| Design speed (new S2 road) | 100 km/h (national speed limit) | No speed data, rural NSL road | ⚠️ ASSUMED: 100 km/h design speed (national speed limit single carriageway — verify with speed survey if improving existing road) | Rural single carriageway at national speed limit |
| Design vehicle | 16.5m articulated | Trunk road, not specified | ⚠️ ASSUMED: Maximum legal vehicle (16.5m artic) | Standard for trunk roads |
| Overseeing Organisation | National Highways | England, trunk road, not specified | ⚠️ ASSUMED: National Highways (confirm for Scotland/Wales/NI) | England is the largest network |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design speed | 50 | 120 | km/h | CD 109 Table 2.10 | Warn — outside CD 109 range (speeds below 50 km/h may fall under Manual for Streets) |
| Horizontal radius | Per Table UK.2 (speed-dependent) | — | m | CD 109 Table 2.10 | Check Departure/Relaxation thresholds (see M.5.3) |
| SSD | Per Table UK.3 (speed-dependent) | — | m | CD 109 Table 2.9 | Check Departure/Relaxation thresholds |

### M.5.2 Standards Compliance Checks

- **Check:** Road category is valid for CD 109
- **Standard:** CD 109, Section 2
- **Pass condition:** Category matches one from Table UK.1
- **Fail action:** Reject — "Road category [X] is not a valid CD 109 category."

- **Check:** Design speed is appropriate for road category
- **Standard:** CD 109, Sections 3–8 by road type
- **Pass condition:** Design speed matches the category's typical speed environment
- **Fail action:** Warn — "Design speed [X] km/h is unusual for [category]. Verify."

- **Check:** For existing road improvements, design speed should be based on measured speed data
- **Standard:** CD 109, Section 2
- **Pass condition:** Speed data source is cited, or road is new construction
- **Fail action:** Warn — "Improving existing road but no speed survey referenced. CD 109 requires measured 85th percentile speed for existing roads."

### M.5.3 Departures / Relaxations Process

DMRB has a formal process for non-compliance with standards, governed by GG 101:

**Hierarchy of geometric values in CD 109:**
1. **Desirable Minimum:** The preferred value. Meeting this requires no approval.
2. **One Step Below Desirable Minimum:** Acceptable but requires a **Relaxation** — documented justification and approval from the Overseeing Organisation's representative.
3. **Two Steps Below Desirable Minimum:** Requires a **Departure from Standards** — formal application with safety assessment, approved by the Overseeing Organisation.
4. **Below Two Steps:** Not normally permitted. Requires exceptional justification.

**The agent should:**
- Report which level each geometric parameter achieves (Desirable, One Step Below, Two Steps Below)
- Flag any parameter that falls below Desirable Minimum
- Clearly distinguish Relaxation (One Step Below) from Departure (Two Steps Below)
- Note that Departures require a formal safety assessment

**For local authority roads:** The Departures process may be modified or simplified by the authority. Check local requirements.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Any parameter below Desirable Minimum | Requires formal Relaxation or Departure | 🔺 FLAG — [Parameter] is [one/two] step(s) below Desirable Minimum. [Relaxation/Departure] required per GG 101. |
| Design speed < 50 km/h | May fall outside DMRB scope — Manual for Streets may be more appropriate | 🔺 SENIOR REVIEW — Design speed below 50 km/h. Consider whether Manual for Streets is more appropriate than DMRB. |
| Trunk road proposed with at-grade junctions | May conflict with road category requirements | 🔺 SENIOR REVIEW — At-grade junctions on [category] road. Verify this is permitted for the road category per CD 109 Appendix A. |
| Mixed speed limit zones along route | Speed limit transitions affect design speed and geometric requirements | 🔺 SENIOR REVIEW — Route passes through multiple speed limit zones. Each zone needs separate geometric assessment per CD 109. |
| Scotland/Wales/NI project | Devolved administration may have country-specific annexes or procedures | 🔺 NOTE — Verify Scottish/Welsh/NI annex requirements for this standard. |

---

## M.7 Worked Example — UK

### Example: A-road Improvement in Rural England

**Source:** Hypothetical, based on typical National Highways practice.

**Given:**
- Road: A1234 between Townford and Villageton
- Country: UK (England)
- Authority: National Highways
- Function: Strategic A-road, trunk road
- Current layout: Single carriageway (S2), national speed limit (60 mph / 100 km/h)
- Terrain: Rolling
- Current AADT: 12,000 vpd (from traffic surveys)
- 85th percentile measured speed: 93 km/h (dry weather)
- Proposal: Improvement scheme — consider dualling or WS2+1

**Solution:**

**Standard:** National Highways trunk road → DMRB mandatory. Primary document: CD 109.

**Road category options:**
- Option A: Dualling → D2AP (B) or D2AP (C)
- Option B: WS2+1 → WS2+1 category

**Design speed:**
- Existing road: Measured 85th percentile = 93 km/h → Design speed rounds to **100 km/h** (nearest CD 109 design speed)
- If dualled (D2AP B): Design speed 100 km/h
- If WS2+1: Design speed 85 km/h (standard for WS2+1)

**Design vehicle:** 16.5m articulated vehicle (trunk road standard).

**Key CD 109 requirements at 100 km/h (D2AP option):**
- Minimum horizontal radius (Desirable): 2040m
- Minimum horizontal radius (1 step below): 1440m — Relaxation required
- Minimum horizontal radius (2 steps below): 1020m — Departure required
- Desirable minimum SSD: 215m
- Desirable minimum crest K-value: 100 (check CD 109 vertical alignment tables)

**Result:**

| Parameter | D2AP (B) Option | WS2+1 Option |
|-----------|----------------|--------------|
| Standard | DMRB CD 109 | DMRB CD 109 |
| Road Category | D2AP (B) | WS2+1 |
| Design Speed | 100 km/h | 85 km/h |
| Design Vehicle | 16.5m artic | 16.5m artic |
| Min Radius (Desirable) | 2040m | 1440m |
| Min SSD (Desirable) | 215m | 160m |

**Escalation:** 🔺 NOTE — The choice between D2AP and WS2+1 is a strategic/economic decision, not purely a geometric one. It should be resolved at scheme appraisal stage (TAG) based on traffic capacity, safety, cost, and environmental impact. Both options should be carried forward for appraisal.

---

## M.8 References

1. National Highways, *CD 109 Highway Link Design*, Revision 2, November 2021. Available from: standardsforhighways.co.uk
2. National Highways, *CD 127 Cross-sections and Headrooms*, Revision 1, March 2020. Available from: standardsforhighways.co.uk
3. National Highways, *GG 101 Introduction to the Design Manual for Roads and Bridges*, Revision 1, March 2020. Available from: standardsforhighways.co.uk
4. National Highways, *GG 000 Design Manual for Roads and Bridges Index*, updated periodically. Available from: standardsforhighways.co.uk
5. Department for Transport, *Manual for Streets*, 2007.
6. Department for Transport, *Manual for Streets 2: Wider Application of Shared Space*, 2010.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-17 | AI draft | Initial draft — all tables require verification against current CD 109 revision. Departures process description requires review by UK-practising engineer. |
