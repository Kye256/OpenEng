# Material Suitability -- Uganda Module

> **Parent Skill:** #28 Material Suitability
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 3 Part I (2010), Table 5.1 and Appendix A
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 3 Part I | 2010 | Table 5.1 (Material Strength Classification), Section 5.2 (Materials Availability), Appendix A (Material Specifications) | Current |
| Uganda MoWT Road Design Manual Vol. 3 Part III | 2010 | Section 6 (Gravel Wearing Course Material) | Current |
| Uganda General Specification for Road and Bridge Works | 2005 | Section 3804 (Mechanical Modification) | Current |

### M.1.2 Institutional Context

MoWT provides material strength classifications in Vol. 3 Part I Table 5.1, which defines the nominal strength requirements for base, sub-base, and capping/selected fill layers used in the pavement design catalogue. Appendix A provides detailed grading and plasticity specifications. The General Specification (2005) covers construction requirements including compaction standards.

### M.1.3 Standard Philosophy

MoWT classifies pavement materials by strength grade: granular materials by soaked CBR (G80, G60, G45, G30, G15) and cemented materials by UCS (C-series). The material strength classification is used to match available materials to the design catalogue structures. The philosophy is practical -- use the best locally available material, upgrade marginal materials by treatment if economical, and import from borrow only when necessary.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UM.1: MoWT Table 5.1 -- Nominal Strength Classification of Materials (Verified against PDF)**

| Layer | Material | Nominal Strength |
|-------|----------|-----------------|
| Base | Granular | Soaked CBR > 80% @ 98% mod. AASHTO density |
| Base | Cemented | 7-day UCS 1.5-3.0 MPa @ 100% mod. AASHTO density (or 1.0-1.5 MPa @ 97% if modified test) |
| Base | Bituminous | See specification |
| Sub-base | Granular | Soaked CBR > 30% @ 95% mod. AASHTO density |
| Sub-base | Cemented | 7-day UCS 0.75-1.5 MPa @ 100% mod. AASHTO density (or 0.5-0.75 MPa @ 97% if modified test) |
| Capping/Selected fill | Granular | Soaked CBR > 15% @ 93% mod. AASHTO density |

**Source:** MoWT Vol. 3 Part I, Table 5.1, p5-2 (Verified against PDF).

**Table UM.2: Material Strength Classes for Suitability Assessment**

| Class | Minimum Soaked CBR | Compaction Standard | Typical Use |
|-------|-------------------|---------------------|-------------|
| G80 | 80% | 98% Modified AASHTO | Base course |
| G60 | 60% | 97% Modified AASHTO | High-quality sub-base |
| G45 | 45% | 95% Modified AASHTO | Sub-base |
| G30 | 30% | 95% Modified AASHTO | Sub-base (minimum) |
| G15 | 15% | 93% Modified AASHTO | Selected fill / capping |
| General fill | 5% | 95% Standard Proctor | Embankment body |

**Source:** MoWT Vol. 3 Part I, Table 5.1 and Appendix A, cross-referenced with Skill #24.

**Table UM.3: Typical Uganda Soil Suitability**

| Soil Type | Typical CBR (soaked) | Typical PI | Suitability | Notes |
|-----------|---------------------|-----------|-------------|-------|
| Laterite (good quality murram) | 30-60% | 8-18 | Sub-base (G30-G45); may reach base (G80) if crushed | Most common road material in Uganda. Quality varies significantly by source. |
| Laterite (poor quality) | 8-20% | 15-25 | Selected fill (G15); marginal for sub-base | May benefit from mechanical modification or blending |
| Black cotton soil | 2-5% | 35-55 | UNSUITABLE for fill | High swelling potential. Must be removed and replaced. Lime stabilization possible but requires specialist design. |
| Sandy soil | 5-25% | 5-12 | General fill to selected fill | Well-graded sand may reach G30. May lack fines for compaction -- check MDD. |
| Decomposed rock (weathered) | 20-80% | 5-15 | Selected fill to base | Often excellent material when properly graded. Crushing may be needed. |
| Murram-clay mix | 10-30% | 15-30 | General fill to selected fill | Depends on clay content. High PI limits use. |
| Volcanic soils | 15-40% | 10-20 | Selected fill to sub-base | Found in eastern Uganda (Mt. Elgon). Generally good material. |

### M.2.2 Country-Specific Formulas

No Uganda-specific formulas. Material suitability is a comparison-based assessment.

### M.2.3 Classification System

MoWT uses a strength-based classification (G80, G60, G45, G30, G15) where the number represents the minimum soaked CBR percentage. This differs from the UK SHW Series 600 class-based system. The MoWT system directly links material strength to structural capability in the pavement.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 3 (Uganda): Compare against MoWT Table 5.1
  +-- For base: CBR >= 80% @ 98% mod. AASHTO?
  +-- For sub-base: CBR >= 30% @ 95% mod. AASHTO?
  +-- For capping/selected fill: CBR >= 15% @ 93% mod. AASHTO?
  +-- For general fill: CBR >= 5%?
  +-- Check PI and grading against Appendix A requirements (via Skill #24)

Step 5 (Uganda): Treatment options for marginal materials
  +-- Lime treatment (2-5% by weight): Effective for reducing high PI,
      normally enhances CBR. Use for expansive clays if treatment is
      more economical than replacement. Caution: carbonation may cause
      longer-term reversion to original properties. (MoWT Section 5.2.1)
  +-- Bitumen-emulsion treatment (0.7-1.5% residual bitumen by weight):
      Enhances compactability and strength/CBR. (MoWT Section 5.2.1)
  +-- Cement treatment: Produces cemented layers with UCS requirements.
      (MoWT Table 5.1 cemented classes)
  +-- Mechanical modification: Adding soil binder to improve load bearing
      capacity, PI, grading. (General Specification Section 3804)
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Laterite is Uganda's primary road-building material.** It is widely available across most of Uganda and generally suitable for fill and sub-base. However, quality varies enormously between borrow pits -- even within the same pit, quality can change with depth. Always test multiple samples at different depths and locations within a laterite pit.

**Black cotton soil is a persistent problem in specific regions.** Found predominantly in eastern Uganda (Teso sub-region, Karamoja), parts of the Lake Victoria basin, and scattered locations in central Uganda. Black cotton soil is characterised by:
- Very high PI (typically 35-55)
- Very high LL (typically 60-80)
- Linear shrinkage > 8%
- Soaked CBR typically 2-5%
- Significant swell when wetted (5-15%)

**Treatment of black cotton soil with lime is possible but requires careful design.** Lime (2-5% by weight) reduces PI and swell potential, and can increase CBR to 15-30%. However, lime-treated black cotton requires careful moisture control during construction and may revert to original properties over time due to carbonation. Complete removal and replacement is the most reliable solution for critical applications.

**Sandy soils in northern Uganda and Karamoja.** These soils may have adequate CBR but lack fines for proper compaction. Blending with laterite can produce a good fill material. Check MDD to ensure compaction is achievable.

**Quality assurance is essential.** On Uganda projects, material testing during construction is critical because: (a) borrow pit quality can change rapidly with depth, (b) laterite quality varies within the same deposit, (c) seasonal moisture changes affect field CBR. DCP testing during construction is strongly recommended (MoWT Section 5.8).

### M.3.3 Common Errors (Uganda-Specific)

1. **Accepting laterite without testing.** "It's murram so it must be suitable" is a dangerous assumption. Laterite CBR ranges from 8% to 80% -- always test.
2. **Using black cotton soil as fill.** Even with lime treatment, black cotton soil in fill is risky. Removal and replacement is preferred for structural areas.
3. **Not testing at the design compaction density.** MoWT Table 5.1 specifies CBR at specific compaction densities (e.g., 98% modified AASHTO for base). CBR measured at a different density is not comparable.
4. **Ignoring PI requirements when CBR is adequate.** Material with CBR 35% but PI 30 may pass the CBR check for G30 sub-base but is likely to be moisture-sensitive and perform poorly in wet conditions.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| CBR test standard | Soaked, 4-day | Not specified | No flag (MoWT standard) | MoWT Table 3.2 requires soaked CBR for design |
| Compaction standard (base) | Modified AASHTO (T-180) | Not specified | No flag (MoWT Table 5.1) | MoWT requires modified AASHTO for base/sub-base |
| Compaction standard (subgrade) | Standard Proctor (T-99) | Not specified | No flag (MoWT Table 3.2) | MoWT requires Standard Proctor for subgrade CBR |
| Shrinkage factor (laterite) | 1.20 | Laterite fill, no specific data | ASSUMED: Shrinkage 1.20 for laterite. Verify with compaction data. | Mid-range for Uganda laterite |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| CBR for base (G80) | 80 | 100 | % | MoWT Table 5.1 | Reject if < 80 at 98% mod. AASHTO |
| CBR for sub-base (G30) | 30 | 100 | % | MoWT Table 5.1 | Reject if < 30 at 95% mod. AASHTO |
| CBR for capping (G15) | 15 | 100 | % | MoWT Table 5.1 | Reject if < 15 at 93% mod. AASHTO |
| CBR for general fill | 5 | 100 | % | Engineering practice | Warn if < 5 (unsuitable for fill) |
| PI for base | 0 | 6 | % | MoWT Appendix A | Reject if > 6 for base |
| PI for sub-base | 0 | 12 | % | MoWT Appendix A | Warn if > 12 |

### M.5.2 Standards Compliance Checks

- **Check:** CBR tested at correct compaction standard
- **Standard:** MoWT Vol. 3 Part I, Table 5.1
- **Pass condition:** CBR at specified density (98% mod. AASHTO for base, 95% for sub-base, etc.)
- **Fail action:** NOTE -- CBR not tested at MoWT-specified density. Results may not be comparable to Table 5.1 requirements.

- **Check:** Material grading within specification envelope
- **Standard:** MoWT Vol. 3 Part I, Appendix A
- **Pass condition:** Grading curve falls within specified upper and lower bounds
- **Fail action:** NOTE -- Grading outside specification envelope. Material may require crushing or screening.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process for material specifications. Where available materials do not meet specifications, Section 5.2 provides guidance on treatment options. The Engineer should document any departures from Table 5.1 requirements with justification and consult the Engineer-In-Chief, MoWT.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Black cotton soil encountered | High swell, unsuitable for fill | SENIOR REVIEW -- Black cotton soil (PI [X]%, swell [Y]%). Remove and replace to depth specified by Engineer. Budget for additional borrow. |
| No laterite source within 20 km | Material availability and cost | SENIOR REVIEW -- No suitable laterite source within economical haul distance. Consider treatment of available material or alternative sources. |
| CBR results highly variable within pit | Unreliable source | SENIOR REVIEW -- CBR results from borrow pit [location] range from [X]% to [Y]%. Source quality inconsistent. Additional testing recommended. |
| Material requires lime stabilization | Specialist design needed | NOTE -- Lime stabilization recommended. Specialist mix design required. Trial section recommended before full-scale application. |

---

## M.7 Worked Example -- Uganda

### Example: Laterite Cut Material Assessment for Class II Road

**Source:** Typical Uganda material suitability assessment using MoWT Table 5.1.

**Given:**
- Material source: Cut excavation at station 2+500, western Uganda
- Soil classification (Skill #8): Laterite (murram), AASHTO A-2-6
- Intended use: Assess for all layers (base, sub-base, selected fill, general fill)
- Test results from Skill #9:

| Parameter | Value |
|-----------|-------|
| CBR (soaked, 4-day, 98% mod. AASHTO) | 25% |
| Plasticity Index (PI) | 18% |
| Liquid Limit (LL) | 35% |
| Linear Shrinkage (LS) | 5% |
| Passing 75 um sieve | 22% |
| Swell | 0.5% |
| MDD (Modified AASHTO) | 1,850 kg/m3 |
| OMC | 14% |

**Solution:**

**Step 1 -- Compare against MoWT Table 5.1 requirements:**

| Layer | CBR Requirement | Actual CBR | Status |
|-------|----------------|-----------|--------|
| Base (G80) | >= 80% @ 98% mod. AASHTO | 25% | FAIL -- CBR 25% << 80% |
| Sub-base (G30) | >= 30% @ 95% mod. AASHTO | 25% (at 98%) | FAIL -- CBR 25% < 30% (even at higher density) |
| Selected fill (G15) | >= 15% @ 93% mod. AASHTO | 25% (at 98%, would be higher at 93%) | PASS -- CBR 25% > 15% |
| General fill | >= 5% | 25% | PASS -- CBR 25% >> 5% |

**Step 2 -- Check additional parameters for selected fill:**

| Parameter | Requirement (G15) | Actual | Status |
|-----------|-------------------|--------|--------|
| CBR (soaked) | >= 15% | 25% | PASS |
| PI | <= 25% | 18% | PASS |
| Swell | < 2% | 0.5% | PASS |

**Step 3 -- Determine suitability:**

- **Base (G80):** UNSUITABLE -- CBR 25% is far below the 80% requirement. No practical treatment can bridge this gap for natural granular base.
- **Sub-base (G30):** UNSUITABLE -- CBR 25% is below the 30% requirement. Marginal -- lime or cement treatment could potentially upgrade to G30, but would require trial.
- **Selected fill (G15):** SUITABLE -- CBR 25% exceeds 15% requirement. PI 18% is within G15 limits. Swell 0.5% is acceptable. No treatment needed.
- **General fill:** SUITABLE -- CBR 25% far exceeds 5% requirement.

**Result:**

| Assessment | Determination |
|-----------|---------------|
| Intended highest use | Sub-base G30 |
| Suitability for G30 sub-base | Unsuitable (CBR 25% < 30%) |
| Suitability for G15 selected fill | Suitable |
| Suitability for general fill | Suitable |
| **Recommended use** | **Selected fill (G15)** |
| Treatment option | Lime treatment (3-4%) may upgrade to G30 -- trial required |
| Shrinkage factor | 1.20 (laterite fill) |
| Borrow needed for sub-base? | Yes -- source G30+ material from alternative borrow pit |

NOTE -- Material suitable for selected fill (G15) but not sub-base (G30). If sub-base is needed, source from alternative borrow pit with CBR >= 30% or consider lime treatment trial.

NOTE -- Shrinkage factor 1.20 recommended for this laterite. Verify with field compaction data.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3 Part I: Flexible Pavements*, January 2010, Table 5.1 (Material Strength Classification), Section 5.2 (Materials Availability), Appendix A (Material Specifications).
2. Uganda Ministry of Works and Transport, *General Specification for Road and Bridge Works*, January 2005, Section 3804 (Mechanical Modification).
3. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3 Part III: Gravel Roads*, January 2010, Section 6 (Gravel Wearing Course Material).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- MoWT Table 5.1 verified against PDF, Uganda soil suitability guidance (laterite, black cotton), worked example with G15/G30 assessment. |
