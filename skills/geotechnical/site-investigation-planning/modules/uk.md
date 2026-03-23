# Site Investigation Planning -- UK Module

> **Parent Skill:** #7 Site Investigation Planning
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 622; BS 5930:2015; BS EN 1997 (Eurocode 7)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

*(Drafted from general DMRB knowledge -- verify against CD 622 and BS 5930 before use in production)*

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CD 622 | Current | Managing Geotechnical Risk | Current |
| BS 5930 | 2015 (+A2:2020) | Code of Practice for Ground Investigations | Current |
| BS EN 1997-1 | 2004 (+A1:2013) | Eurocode 7: Geotechnical Design -- General Rules | Current |
| BS EN 1997-2 | 2007 | Eurocode 7: Ground Investigation and Testing | Current |

### M.1.2 Institutional Context

In the UK, ground investigation for highways is managed through the DMRB framework for trunk roads (managed by National Highways in England, Transport Scotland, Welsh Government, and DfI Northern Ireland). Local authority roads follow similar principles but are not bound by DMRB. Most UK GI work is commissioned through specialist ground investigation contractors and supervised by geotechnical consultants.

**AGS data format:** UK ground investigation data is typically delivered in AGS format (Association of Geotechnical and Geoenvironmental Specialists), a standardised digital data exchange format. Investigation plans should specify AGS 4.0 (or later) as the required data format.

### M.1.3 Standard Philosophy

DMRB CD 622 takes a risk-based approach to managing geotechnical risk throughout the project lifecycle. The investigation scope is determined by a Geotechnical Risk Register which identifies hazards, their likelihood, and potential consequences. BS 5930 provides the technical standard for planning and executing ground investigations. Eurocode 7 provides the design framework, specifying investigation requirements for different geotechnical categories.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**UK GI methods are more formalised than in many developing countries.** Standard investigation methods include:

| Method | Typical Depth | Application | Standard |
|--------|--------------|-------------|----------|
| Cable percussion borehole | 10-30 m | Standard investigation in soils | BS EN ISO 22475 |
| Rotary cored borehole | 20-100+ m | Rock investigation, deep foundations | BS EN ISO 22475 |
| Window/windowless sample | 3-5 m | Shallow investigation, rapid deployment | -- |
| Machine-excavated trial pit | 1-4.5 m | Shallow soils, visual inspection | BS EN ISO 22475 |
| Dynamic probing (DPH/DPSH) | 5-10 m | In-situ strength profiling | BS EN ISO 22476-2 |
| CPT/CPTu | 20-40 m | Continuous strength/stiffness profiling | BS EN ISO 22476-1 |

**Borehole spacing for UK highway schemes:**

| Scheme Type | Typical Spacing | Notes |
|-------------|----------------|-------|
| New alignment | 100-300 m | Closer in variable ground |
| Widening/improvement | 200-500 m | Supplement with existing data |
| Structures (bridges) | Per foundation | 1-2 boreholes per abutment/pier |
| Earthworks (cuts/fills) | 50-200 m | Based on cut/fill height and variability |
| Retaining walls | 25-50 m | Minimum 3 per wall section |

### M.2.2 Country-Specific Formulas

UK subgrade assessment uses the **equilibrium suction index** method for CBR estimation (DMRB approach):

```
Equilibrium CBR = f(PI, water table depth, pavement construction)
```

This is typically determined from the Highways Agency design chart (HD 25 or its successor) which relates Plasticity Index to long-term CBR for different construction conditions. DCP is less commonly used in the UK than in tropical countries.

### M.2.3 Classification System

UK uses the Geotechnical Category system from Eurocode 7:
- **GC1:** Small, simple structures with negligible risk -- minimal investigation required.
- **GC2:** Conventional structures with no exceptional risk -- standard investigation.
- **GC3:** Large or unusual structures, abnormal risks -- extensive investigation, specialist input.

Most highway schemes fall into GC2.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Determine applicable standards
  |-- Trunk road (National Highways) -> DMRB CD 622 + BS 5930
  |-- Local authority road -> BS 5930 + Eurocode 7 (DMRB often adopted)
  +-- Developer-funded -> Client specification (often DMRB-based)

Step 3a (UK): Geotechnical Risk Register
  |-- Identify hazards from desk study (BGS maps, historical data, mining records)
  |-- Assess likelihood and consequence
  |-- Use risk register to drive investigation scope
  +-- High-risk items require targeted investigation
```

### M.3.2 Professional Judgment (UK-Specific)

**Desk study resources in the UK are excellent.** The British Geological Survey (BGS) provides detailed geological mapping, borehole records database (online), and GeoSure hazard datasets. Historical Ordnance Survey maps reveal past land use (quarries, landfills, industrial sites). These resources should be thoroughly reviewed before planning fieldwork.

**Coal mining legacy** is a significant consideration in many parts of England and Wales. The Coal Authority provides reports on past mining activity, including recorded and unrecorded mine workings, shafts, and adits. Investigation plans in mining areas must address the risk of voids and ground instability.

**Contaminated land** is more commonly encountered on UK brownfield sites than in most developing countries. Environmental investigation (Phase 1 and Phase 2 assessments) may be required alongside geotechnical investigation, particularly for highway schemes with land acquisition.

### M.3.3 Common Errors (UK-Specific)

1. **Not checking BGS records.** The BGS online borehole database contains records from millions of previous investigations. Existing data should be reviewed before commissioning new boreholes.
2. **Ignoring mining records.** Failing to obtain Coal Authority reports in mining areas can lead to unexpected ground voids during construction.
3. **Under-specifying monitoring.** UK schemes often require groundwater monitoring over seasonal cycles. Investigation plans should include piezometer installation where groundwater is relevant.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Borehole spacing | 200 m | Not specified | ASSUMED: 200 m borehole spacing for highway scheme | Mid-range for UK highway schemes |
| Trial pit depth | 3.0 m | Not specified | ASSUMED: 3.0 m trial pit depth -- adjust for expected formation level | Standard machine-excavated depth |
| GI data format | AGS 4.0 | Not specified | ASSUMED: AGS 4.0 data format -- confirm with client | Industry standard for UK GI data |
| Design approach | Eurocode 7 GC2 | Not specified | ASSUMED: Geotechnical Category 2 -- verify project complexity | Standard for conventional highway schemes |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Borehole depth (subgrade) | 2.0 | 30 | m | BS 5930 | Warn if < 3 m for highway subgrade |
| Borehole spacing | 25 | 500 | m | DMRB CD 622 | Warn if > 300 m for new alignment |

### M.5.2 Standards Compliance Checks

- **Check:** Geotechnical Risk Register has been prepared.
- **Standard:** DMRB CD 622
- **Pass condition:** Risk register referenced in investigation plan
- **Fail action:** Warn -- "DMRB CD 622 requires a Geotechnical Risk Register. Prepare before finalising investigation scope."

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Any departure from CD 622 requirements must be formally documented and approved by the Overseeing Organisation. For local authority roads not subject to DMRB, departures are documented in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Former mining area | Risk of mine workings and ground instability | SENIOR REVIEW -- Coal mining area. Obtain Coal Authority report. Consider rotary probing or microgravity survey. |
| Potential contaminated land | Environmental and health hazards | SENIOR REVIEW -- Potential contamination at [location]. Include environmental sampling in GI scope. |
| Soft alluvial deposits | May require specialist foundation design | SENIOR REVIEW -- Soft alluvium at [location]. Consider CPTu and vane testing. |

---

## M.7 Worked Example -- UK

### Example: Plan GI for a Rural Road Improvement in Oxfordshire

**Source:** Hypothetical, based on typical UK practice.

**Given:**
- Road: A4095 improvement scheme (widening and realignment)
- Country: UK (England)
- Authority: Oxfordshire County Council
- Length: 3 km
- Project stage: Detailed design
- Terrain: Flat (Thames Valley)
- Existing data: BGS mapping shows Oxford Clay formation. Some BGS borehole records available.
- Structures: 1 bridge widening over a small river
- Geology: Oxford Clay (stiff to very stiff clay), with alluvial deposits near river

**Solution:**

**Step 1: Desk study**
- BGS 1:50,000 geological sheet review: Oxford Clay (Jurassic), alluvium in river valley
- BGS online borehole records: 5 historical boreholes within 500 m of alignment
- Historical maps: No former industrial use, no mining records
- Flood risk: River crossing within Flood Zone 2/3

**Step 2: Geotechnical Risk Register**
- Risk 1: Soft alluvium at river crossing (Likelihood: High, Consequence: Moderate)
- Risk 2: Shrink-swell potential of Oxford Clay (Likelihood: Moderate, Consequence: Low)
- Risk 3: Groundwater ingress in cuttings (Likelihood: Moderate, Consequence: Moderate)

**Step 3: Investigation scope**
- Cable percussion boreholes: 200 m spacing along alignment = 15 boreholes
- Trial pits: Between boreholes at 100 m spacing = 30 trial pits
- Bridge widening: 2 additional boreholes at existing abutments
- Piezometers: 3 standpipe piezometers for groundwater monitoring
- Total: **17 boreholes, 30 trial pits, 3 piezometers**

**Step 4: Laboratory testing**
- Classification: Atterberg limits, grading, moisture content on all samples
- Strength: CBR (soaked), undrained shear strength (triaxial), consolidation
- Chemical: Sulphate, pH, BRE SD1 suite (concrete aggressivity)
- Data format: AGS 4.0

**Result:**

| Component | Quantity | Spacing | Depth |
|-----------|---------|---------|-------|
| Cable percussion boreholes | 17 | 200 m + bridge | 10-15 m |
| Trial pits | 30 | 100 m | 3.0 m |
| Piezometers | 3 | At key locations | 10 m |
| Lab sample sets | ~60 | Per borehole/pit | -- |

---

## M.8 References

1. National Highways, *DMRB CD 622: Managing Geotechnical Risk*, current edition.
2. BSI, *BS 5930:2015+A2:2020: Code of Practice for Ground Investigations*, 2020.
3. BSI, *BS EN 1997-1:2004+A1:2013: Eurocode 7: Geotechnical Design -- General Rules*, 2013.
4. BSI, *BS EN 1997-2:2007: Eurocode 7: Ground Investigation and Testing*, 2007.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft -- drafted from general DMRB knowledge, verify against CD 622 and BS 5930 |
