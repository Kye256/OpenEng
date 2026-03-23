# Site Investigation Planning -- Uganda Module

> **Parent Skill:** #7 Site Investigation Planning
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol 3 Part I (2010); General Specifications for Road and Bridge Works (2005)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 3 Part I | 2010 | Section 3.0 (Subgrade), Section 5.8 (DCP) | Current |
| MoWT General Specifications for Road and Bridge Works | 2005 | Section 3700 (Earthworks materials) | Current |
| TRL Overseas Road Note 31 | 1993 (5th ed.) | Chapter 6 (Subgrade assessment) | Supplementary |

### M.1.2 Institutional Context

Investigation planning in Uganda follows MoWT guidance. UNRA manages national trunk roads (~20,000 km) and typically commissions investigations through design consultants. District roads (~30,000 km) are managed by District Engineering offices with generally less comprehensive investigation programmes. Donor-funded projects (World Bank, AfDB, EU, JICA) may specify additional investigation requirements in the Terms of Reference.

### M.1.3 Standard Philosophy

The MoWT Pavement Design Manual (Vol 3 Part I) provides a catalogue-based pavement design approach. The investigation requirements are driven by the need to classify subgrade strength into classes S1-S6 (Table 3.1) and to determine wet/dry design conditions (Section 4.0). The manual strongly recommends the DCP as "the single most effective testing device for road construction" (Section 5.8). Investigation is kept "as simple as possible" with emphasis on practical field methods.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table U.7.1: MoWT Table 3.3 -- Recommended Minimum Subgrade Depth Meeting Design Strength**

| Subgrade Class | S1 | S2 | S3 | S4 | S5 | S6 |
|----------------|----|----|----|----|----|----|
| CBR Range (%) | 2 | 3-4 | 5-7 | 8-14 | 15-29 | 30+ |
| Minimum Depth (mm) | 250 | 250 | 350 | 450 | 550 | 650 |

*(Verified from MoWT Vol 3 Part I, Table 3.3)*

The depths in Table 3.3 are the minimum depths to which the subgrade must achieve the design strength. They are not depths to which recompaction is required. Rather, the Engineer should confirm that the nominal subgrade strength is available to these depths.

The total investigation depth should be:

```
Investigation depth = Expected pavement thickness + Minimum subgrade depth (Table 3.3)
```

As a general rule, the total pavement layer thickness plus subgrade depth meeting design strength should be 800-1000 mm (MoWT Section 3.3c).

**DCP Guidance (MoWT Section 5.8):**
- DCP testing at intervals of **100 metres** along the alignment to directly measure field CBR strength of the subgrade.
- Continuous measurements to a depth of approximately **850 mm**, or up to **2 metres** with extension shafts.
- Test pit intervals for CBR sampling should be no more than **1.0 km** apart.
- A minimum of **6 representative samples** per uniform section for CBR classification (MoWT Table 3.2 note).

**Borehole/Test Pit Spacing Guidance for Uganda Roads:**

| Project Stage | Road Type | Recommended Spacing | Notes |
|---------------|-----------|-------------------|-------|
| Feasibility | All | 1000-2000 m | DCP survey only, few test pits |
| Preliminary design | Trunk (UNRA) | 500-1000 m | DCP + test pits at representative locations |
| Preliminary design | District | 500-1000 m | DCP survey, targeted test pits |
| Detailed design | Trunk (UNRA) | 200-500 m | DCP at 100 m, test pits at 200-500 m |
| Detailed design | District | 300-500 m | DCP at 100 m, test pits at 300-500 m |
| Structures | All | Per foundation | Minimum 1 borehole per abutment/pier |

### M.2.2 Country-Specific Formulas

**DCP-CBR Correlation (MoWT/TRL):**

The MoWT manual references the TRL DCP apparatus (8 kg hammer, 575 mm drop, 60-degree cone). The standard correlation is:

```
log10(CBR) = 2.48 - 1.057 * log10(DN)
```

Where DN = penetration rate in mm/blow.

This correlation should only be used with the TRL-type DCP. UNRA and most Ugandan contractors use this apparatus. If a different DCP is encountered, the Engineer must verify the appropriate correlation.

### M.2.3 Classification System

Investigation requirements are driven by the MoWT subgrade classification system:

| Subgrade Class | S1 | S2 | S3 | S4 | S5 | S6 |
|----------------|----|----|----|----|----|----|
| CBR Range (%) | 2 | 3-4 | 5-7 | 8-14 | 15-29 | 30+ |

The investigation must provide sufficient data to classify each section into one of these classes. The 10th percentile rule (MoWT Section 3.3b) is used: from a cumulative distribution curve of CBR results, the design CBR is the value at which 10% of samples have a lower CBR.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 3a (Uganda): Assess ground variability
  |-- Western Uganda (Albertine Rift): variable soils, alluvial deposits, swampy areas
  |     -> Reduce spacing, increase depth
  |-- Eastern Uganda (Mt. Elgon foothills): volcanic soils, variable depth to rock
  |     -> Test for expansive clays (black cotton soil common in Karamoja)
  |-- Central Uganda: typically lateritic soils (murram), relatively uniform
  |     -> Standard spacing usually adequate
  |-- Northern Uganda: sandy soils in some areas, black cotton soil in Karamoja
  |     -> Test for collapsible soils in sandy areas

Step 5a (Uganda): DCP survey design
  |-- Spacing: 100 m intervals (MoWT Section 5.8)
  |-- Depth: 850 mm minimum, 2 m with extensions
  |-- At structure locations: supplement with boreholes
  |-- For rehabilitation: DCP on existing pavement to assess layer strengths
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Laterite (murram) is the dominant road-building material in Uganda.** Most subgrades in central and southern Uganda are lateritic soils, typically classifying as A-2-6 to A-7-5 (AASHTO), with CBR values of 5-30% depending on grading, plasticity, and moisture content. Laterite deposits vary significantly in quality over short distances -- the investigation must capture this variability.

**Black cotton soil** is a major hazard in parts of eastern Uganda (Karamoja region) and some areas of northern Uganda. These are expansive clays (AASHTO A-7-5 to A-7-6) with high plasticity indices (PI > 30) and very low CBR when wet (often < 2%). The investigation must identify these soils early so that subgrade improvement can be designed.

**Rock near surface** is common around Jinja, Tororo, and parts of Mukono. Where rock is near the surface, DCP penetration will be refused and test pits may be limited in depth. The investigation plan should note where rock excavation may be needed and adjust methods accordingly.

**UNRA uses DCP extensively** for network-level surveys and project-level investigations. DCP data from UNRA's database may be available for existing national roads and should be reviewed during the desk study phase.

**Borrow pit investigation** is an essential part of the investigation plan for Uganda road projects. Natural gravel (murram) sources must be identified, sampled, and tested for suitability as fill, subbase, or base material. Typical borrow pit investigation involves test pits at a grid of 50-100 m to determine extent and quality.

### M.3.3 Common Errors (Uganda-Specific)

1. **Testing in dry season only.** Uganda has two rainy seasons (March-May and September-November). Subgrade CBR can drop significantly when wet. The investigation should account for wet-season conditions per MoWT Table 3.2.
2. **Ignoring black cotton soil indicators.** Surface cracking, desiccation patterns, and dark colour are field indicators that should trigger additional investigation (Atterberg limits, swell potential).
3. **Insufficient borrow pit investigation.** Murram quality varies significantly within a single deposit. Under-investigation leads to over-estimation of available volume and quality.
4. **Not using DCP at structure locations.** While boreholes are needed for foundation design, DCP provides rapid subgrade data around structures that complements borehole information.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| DCP spacing | 100 m | Not specified | ASSUMED: 100 m DCP spacing per MoWT Section 5.8 | MoWT recommended interval |
| Test pit spacing | 500 m | Not specified | ASSUMED: 500 m test pit spacing -- adjust for ground variability | Mid-range for detailed design |
| Investigation depth | 1.5 m | Not specified | ASSUMED: 1.5 m depth -- verify against Table 3.3 for expected subgrade class | Adequate for pavement + S3-S4 subgrade |
| DCP apparatus | TRL type (8 kg hammer, 575 mm drop, 60-degree cone) | Not specified | ASSUMED: TRL-type DCP -- verify apparatus before applying correlation | Standard in Uganda |
| CBR test condition | Soaked (4-day) | Not specified | ASSUMED: Soaked CBR per MoWT Table 3.2 for wet conditions | Conservative default for Uganda's climate |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| DCP spacing | 50 | 200 | m | MoWT Section 5.8 | Warn if > 200 m (insufficient for subgrade profiling) |
| CBR samples per section | 6 | 30 | count | MoWT Table 3.2 note | Warn if < 6 (statistical classification unreliable) |
| Investigation depth | 0.5 | 3.0 | m | MoWT Table 3.3 | Warn if < minimum for expected subgrade class |

### M.5.2 Standards Compliance Checks

- **Check:** DCP test interval does not exceed 1.0 km.
- **Standard:** MoWT Section 5.8
- **Pass condition:** DCP spacing <= 1000 m
- **Fail action:** Warn -- "DCP spacing exceeds MoWT Section 5.8 maximum of 1.0 km."

- **Check:** Minimum 6 CBR samples per uniform section.
- **Standard:** MoWT Table 3.2, note *
- **Pass condition:** >= 6 representative samples per section
- **Fail action:** Warn -- "Fewer than 6 CBR samples per section. Statistical classification unreliable per MoWT."

### M.5.3 Departures / Relaxations Process

No formal departures process for investigation scope. The investigation plan is typically specified in the Terms of Reference and agreed between the client and the consultant. Departures from MoWT guidance are documented in the investigation report with engineering justification.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Black cotton soil suspected | Expansive clay requires specialist investigation | SENIOR REVIEW -- Possible black cotton soil at [location]. Include Atterberg limits, swell test, and linear shrinkage. Consider subgrade replacement. |
| Investigation budget allows < 1 DCP test per 200 m | Insufficient data for reliable subgrade classification | SENIOR REVIEW -- Investigation scope insufficient per MoWT. Request budget increase or accept higher design risk. |
| No existing geological data for the area | Ground model cannot be established from desk study | SENIOR REVIEW -- No geological maps or previous GI data. Recommend preliminary walkover before scoping detailed GI. |
| High water table areas (swamps, wetlands) | Standard investigation methods may be inadequate | SENIOR REVIEW -- High water table at [location]. Consider piezometer installation and wet-season investigation. |

---

## M.7 Worked Example -- Uganda

### Example: Plan Site Investigation for a 50 km UNRA Trunk Road Upgrade

**Source:** Hypothetical, based on typical UNRA practice.

**Given:**
- Road: Lira-Kamdini Road (upgrading from gravel to paved)
- Country: Uganda
- Authority: UNRA
- Length: 50 km
- Project stage: Detailed design
- Terrain: Rolling (predominantly)
- Existing data: No previous GI reports. UNRA has some DCP data from network surveys (2018).
- Expected soils: Laterite (murram) dominant, some clay sections near Lira
- Structures: 2 major bridges, 15 box culverts, 8 pipe culverts
- Borrow pit requirements: Need to identify murram sources for fill and subbase

**Solution:**

**Step 1: Desk study**
- Review geological maps (1:50,000 series) for the corridor
- Obtain UNRA 2018 DCP data for existing alignment
- Review satellite imagery for terrain features, drainage patterns, and potential problem areas

**Step 2: Investigation methods**
- DCP survey: Primary tool for subgrade assessment
- Test pits: For material sampling and visual inspection
- Boreholes: At bridge locations only
- Borrow pit investigation: Test pits at potential murram sources

**Step 3: DCP survey design**
- Spacing: 100 m intervals (MoWT Section 5.8)
- Total DCP tests: 50,000 m / 100 m = **500 DCP tests**
- Depth: 850 mm minimum, 2 m at problem areas
- Apparatus: TRL-type DCP

**Step 4: Test pit layout**
- Spacing: 500 m (standard for detailed design, trunk road)
- Total test pits: 50,000 m / 500 m = **100 test pits**
- Depth: 1.5 m below proposed formation level
- Increase to 300 m spacing near Lira (clay sections suspected): add approximately 15 additional test pits
- Total: approximately **115 test pits**

**Step 5: Borehole layout**
- 2 major bridges: 2 boreholes per abutment + 1 per pier = approximately **10 boreholes**
- Depth: 15-20 m (to be confirmed based on bridge loads)
- Large box culverts: Selected DCP + test pits (no boreholes unless poor ground)

**Step 6: Borrow pit investigation**
- Identify 6-8 potential murram sources along the route (desk study + local knowledge)
- Test pit grid: 50 m spacing, 10-15 pits per source
- Sampling: CBR, Atterberg limits, grading, compaction for each source
- Total borrow pit test pits: approximately **80-120**

**Step 7: Laboratory testing programme**
- From test pits: Atterberg limits (LL, PL, PI), grading analysis, CBR (soaked, 4-day), compaction (Mod. AASHTO) on all samples
- From borrow pits: As above, plus linear shrinkage
- Frequency: Every test pit (1 per 500 m alignment, all borrow pits)
- Expected lab samples: approximately 200-250

**Result:**

| Component | Quantity | Spacing | Depth |
|-----------|---------|---------|-------|
| DCP tests | 500 | 100 m | 850 mm - 2 m |
| Test pits (alignment) | 115 | 300-500 m | 1.5 m |
| Boreholes (bridges) | 10 | Per foundation | 15-20 m |
| Borrow pit test pits | ~100 | 50 m grid | 2-3 m |
| Lab sample sets | ~250 | Per test pit | -- |

**Escalation:** None -- scope is consistent with MoWT guidance for a 50 km UNRA trunk road upgrade.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3: Pavement Design, Part I: Flexible Pavements*, January 2010.
2. Uganda Ministry of Works and Transport, *General Specifications for Road and Bridge Works*, January 2005.
3. TRL, *Overseas Road Note 31: A Guide to the Structural Design of Bitumen-Surfaced Roads in Tropical and Sub-Tropical Countries*, 5th edition, 1993.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft -- tables verified against MoWT Vol 3 Part I (2010) |
