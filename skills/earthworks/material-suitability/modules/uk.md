# Material Suitability -- UK Module

> **Parent Skill:** #28 Material Suitability
> **Country/Jurisdiction:** United Kingdom
> **Standards:** SHW Series 600 (Earthworks), DMRB CD 622 (Managing Geotechnical Risk)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| SHW Series 600 | Current | Earthworks material classification (Classes 1-9) | Current |
| SHW Series 800 | Current | Road pavements -- unbound, cement-bound, hydraulically-bound mixtures | Current |
| DMRB CD 622 | Current | Managing Geotechnical Risk | Current |
| BS 6031 | 2009 | Code of Practice for Earthworks | Current |

### M.1.2 Institutional Context

UK material suitability for earthworks is governed by SHW Series 600 (material classes for fill) and Series 800 (pavement layer materials). National Highways and local highway authorities use these standards for all publicly funded schemes.

### M.1.3 Standard Philosophy

The UK uses a class-based system (SHW Classes 1-9) rather than a strength-based system (like MoWT G80/G60 etc.). Each class has specific requirements for material type, grading, moisture content, and compaction. The suitability assessment matches available material properties to the appropriate SHW class. The UK places particular emphasis on waste hierarchy compliance and materials management.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UKS.1: SHW Series 600 Fill Material Classes -- Suitability Requirements**

| Class | Description | Key Requirements | Typical Sources |
|-------|-------------|------------------|----------------|
| 1A | Well-graded granular | Grading limits, max 10% passing 63um | Natural gravel, crushed rock |
| 1B | Uniformly graded granular | Grading limits | Sand, single-size aggregate |
| 1C | Coarse granular | Min 75% > 37.5mm | Rockfill |
| 2A | Granular (wet cohesive mix) | MCV 8-12 | Selected granular material |
| 2B | Granular (dry cohesive mix) | MCV 5-8 | Granular with cohesive fines |
| 2C | Stony cohesive | Max 20% > 20mm, MCV limits | Mixed material |
| 2D | Silty cohesive | MCV limits, max stone content | Fine-grained fill |
| 6A | Selected fill (granular) | CBR >= 15%, PI limits | Structural fill |
| 6B | Selected fill (cohesive) | MCV limits, CBR requirements | Structural fill zones |
| 6F | Selected fill (conditioned) | Conditioned to spec | Processed material |

**Note:** UK uses Moisture Condition Value (MCV) as a key field acceptance parameter -- this differs from the CBR-based approach used in Uganda/MoWT.

**Table UKS.2: SHW Series 800 Pavement Material Requirements (Summary)**

| Layer | Material Type | Key Requirements |
|-------|-------------|-----------------|
| Sub-base (Type 1) | Granular | Grading limits per SHW 803 |
| Sub-base (Type 2) | Granular | Wider grading, lower quality than Type 1 |
| Capping | Selected | CBR >= 15% (Class 6 fill) |
| CBGM (Cement-bound) | Cemented | UCS limits per SHW 823/824 |

### M.2.2 Country-Specific Formulas

No UK-specific formulas. Material suitability is a classification-based assessment.

### M.2.3 Classification System

The SHW class-based system differs from MoWT in that:
- Classes define material **type and behaviour** (granular vs cohesive) as well as quality
- MCV (Moisture Condition Value) is a key acceptance parameter in the UK -- it measures workability and compactability rather than strength
- CBR is used for subgrade and capping assessment, but SHW fill classes rely more on grading and MCV
- The UK system explicitly addresses contaminated materials, recycled materials, and waste hierarchy

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 3 (UK): Compare against SHW Series 600
  +-- Identify material type (granular, cohesive, mixed)
  +-- Determine appropriate SHW Class
  +-- Check grading against class requirements
  +-- Check MCV against class requirements
  +-- For capping: check CBR >= 15%

Step 5 (UK): Treatment and alternatives
  +-- Conditioning to adjust MCV (drying or wetting)
  +-- Lime or cement treatment (creates Class 4 stabilised material)
  +-- Blending different materials to meet class requirements
  +-- Crushing oversize to meet grading requirements
  +-- Consider waste hierarchy: reuse > recycle > dispose
```

### M.3.2 Professional Judgment (UK-Specific)

**MCV vs CBR for earthworks acceptance.** In the UK, the Moisture Condition Value test is the primary field acceptance criterion for earthworks compaction, not CBR. MCV measures the workability of the material -- whether it can be compacted effectively in the field. A material with good CBR but poor MCV (too wet) cannot be compacted and is rejected.

**The waste hierarchy drives material decisions.** UK environmental law requires that all earthworks material management follows the waste hierarchy. This affects suitability assessment: if material is marginal, treatment to enable reuse is preferred over disposal and import of virgin material.

**Contaminated land is a significant UK consideration.** Unlike Uganda, UK projects frequently encounter contaminated soils from former industrial sites. Contaminated material requires specialist assessment beyond standard geotechnical testing -- chemical analysis for contaminants (heavy metals, hydrocarbons, asbestos) is required before suitability can be determined.

**Sustainability metrics.** UK schemes increasingly require carbon footprint assessment of earthworks options. Material reuse on-site has lower carbon than importing borrow material.

### M.3.3 Common Errors (UK-Specific)

1. **Using CBR as the primary acceptance criterion for fill.** In the UK, SHW fill classes use grading and MCV as primary criteria. CBR is secondary except for capping (Class 6).
2. **Not considering MCV in material suitability.** Material with adequate strength but MCV outside the class range will be rejected on-site during construction.
3. **Treating all surplus as waste.** Under CL:AIRE, surplus earthworks can be reused under a Materials Management Plan without waste classification. Failure to prepare an MMP makes material "waste" and triggers landfill tax.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Classification system | SHW Series 600 | UK project | No flag (standard requirement) | Mandatory for UK highway earthworks |
| Capping CBR | >= 15% | UK capping layer | No flag | SHW Class 6 capping requirement |
| Contamination check | Required | UK project | NOTE -- Chemical testing required for contamination screening | UK regulatory requirement |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| CBR for capping (Class 6) | 15 | 100 | % | SHW Series 600 | Reject if < 15% for capping use |
| MCV (Class 2) | 5 | 12 | -- | SHW Series 600 | Reject if outside range |

### M.5.2 Standards Compliance Checks

- **Check:** Material classified to correct SHW class
- **Standard:** SHW Series 600
- **Pass condition:** Material meets all requirements for assigned class
- **Fail action:** NOTE -- Material does not meet SHW Class [X] requirements. Reassign or treat.

### M.5.3 Departures / Relaxations Process

DMRB Departures from Standards process applies if material does not meet SHW requirements and a departure is sought. Departures require justification and approval from the Overseeing Organisation.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Contamination suspected | Regulatory and health risk | SENIOR REVIEW -- Potential contamination at [location]. Chemical testing required before suitability assessment can be completed. |
| No suitable SHW class | Material does not fit any class | SENIOR REVIEW -- Material does not meet any SHW Series 600 class. Consider treatment or disposal. Waste hierarchy assessment required. |
| MCV outside range | Field compaction concern | NOTE -- MCV [X] is outside acceptable range for Class [Y]. Material may need conditioning (drying or wetting) before placement. |

---

## M.7 Worked Example -- UK

### Example: Same Test Data Assessed Against SHW Classes

**Source:** Typical UK material suitability assessment using SHW Series 600.

**Given:**
- Material source: Cut excavation on A-road improvement
- Same test results as Uganda example for comparison:
  - CBR (soaked): 25%
  - PI: 18%
  - LL: 35%
  - Passing 63 um: 22%
  - Swell: 0.5%

**Solution:**

**Step 1 -- Classify material type:**
Material has 22% passing 63 um and PI 18%. This is a cohesive-granular mix -- potentially SHW Class 2C (stony cohesive) or Class 2D (silty cohesive).

**Step 2 -- Check SHW Class 2 requirements:**
- Class 2C (stony cohesive): Max 20% > 20mm, MCV limits. Need MCV data (not provided in this example). Material is a potential fit based on grading.
- Class 2D (silty cohesive): MCV limits. Need MCV data.

**Step 3 -- Check for capping/Class 6:**
- CBR 25% > 15% requirement for Class 6A/6B capping. PASS.
- PI 18% -- check against Class 6 PI limits. For Class 6A (granular selected fill), PI should be < 6. FAIL for Class 6A.
- For Class 6B (cohesive selected fill): MCV limits apply. Material may be suitable as Class 6B capping if MCV is within range.

**Step 4 -- Overall assessment:**
- Class 1 (general granular): FAIL -- too many fines (22% passing 63 um)
- Class 2C/2D (stony/silty cohesive fill): POTENTIAL FIT -- needs MCV data
- Class 6A (selected granular fill): FAIL -- PI 18% exceeds 6% limit
- Class 6B (selected cohesive fill): POTENTIAL FIT -- needs MCV data
- Sub-base Type 1: FAIL -- grading and PI do not meet SHW 803
- General fill: SUITABLE as Class 2

**Result:**

| Assessment | Determination |
|-----------|---------------|
| SHW Class | Class 2C or 2D (pending MCV) |
| Capping (Class 6) | Potentially Class 6B (pending MCV) |
| Sub-base | UNSUITABLE for Type 1 |
| Recommended use | General fill (Class 2), pending MCV confirmation |
| Data gap | MCV test required for definitive classification |

NOTE -- MCV test data required for definitive SHW classification. Material appears suitable as Class 2 general fill and potentially Class 6B capping, pending MCV confirmation.

NOTE -- Chemical contamination screening required before final acceptance per UK regulatory requirements.

---

## M.8 References

1. Specification for Highway Works, Series 600 -- Earthworks.
2. Specification for Highway Works, Series 800 -- Road Pavements.
3. DMRB CD 622 -- Managing Geotechnical Risk.
4. BS 6031:2009 -- Code of Practice for Earthworks.
5. CL:AIRE, *Definition of Waste: Development Industry Code of Practice*, Version 2.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- SHW Series 600 classification, MCV acceptance criteria, waste hierarchy context. Knowledge-based module (no local SHW document available). |
