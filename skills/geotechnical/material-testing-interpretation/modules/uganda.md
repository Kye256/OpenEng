# Material Testing Interpretation -- Uganda Module

> **Parent Skill:** #9 Material Testing Interpretation
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol 3 Part I (2010); MoWT General Specifications (2005)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 3 Part I | 2010 | Section 3.0 (Subgrade), Section 5.0 (Practical), Section 5.8 (DCP), Appendix A (Materials) | Current |
| MoWT General Specifications for Road and Bridge Works | 2005 | Section 3700 (Earthworks), Section 3800 (Pavement layers) | Current |
| AASHTO T 193 | Current | CBR of Laboratory Compacted Soils | Test method |
| AASHTO T 180 | Current | Modified Proctor Compaction | Test method |
| AASHTO T 99 | Current | Standard Proctor Compaction | Test method |
| AASHTO T 89 / T 90 | Current | Atterberg Limits | Test methods |

### M.1.2 Institutional Context

Material testing for Uganda road projects follows AASHTO test methods as referenced by the MoWT manual. Laboratories in Uganda vary in quality -- UNRA's Materials Laboratory in Kampala is the national reference lab, and commercial labs operate in major towns. For remote projects, field DCP testing supplements or replaces laboratory CBR in early project stages.

### M.1.3 Standard Philosophy

The MoWT manual uses a catalogue-based pavement design approach where the primary design inputs are traffic class (T1-T8) and subgrade class (S1-S6). Material testing interpretation feeds the subgrade classification (Section 3.0) and confirms material suitability for pavement layers (Table 5.1, Appendix A). The emphasis is on practical, achievable testing using methods widely available in Uganda.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table U.9.1: MoWT Table 5.1 -- Nominal Strength Classification of Materials in the Design Catalogue**

| Layer | Material | Nominal Strength |
|-------|----------|-----------------|
| Base | Granular | Soaked CBR > 80% @ 98% mod. AASHTO density |
| Base | Cemented | 7 day UCS 1.5-3.0 MPa @ 100% mod. AASHTO density (or 1.0-1.5 MPa @ 97% if modified test followed) |
| Base | Bituminous | See surfacing specification |
| Subbase | Granular | Soaked CBR > 30% @ 95% mod. AASHTO density |
| Subbase | Cemented | 7 day UCS 0.75-1.5 MPa @ 100% mod. AASHTO density (or 0.5-0.75 MPa @ 97% if modified test followed) |
| Capping/Selected | Granular | Soaked CBR > 15% @ 93% mod. AASHTO density |

*(Verified from MoWT Vol 3 Part I, Table 5.1)*

**Table U.9.2: MoWT Table 5.2 -- Layer Coefficients**

| Layer/Material | Layer Coefficient |
|----------------|------------------|
| **Surfacing** | |
| Surface dressing | a1 = 0.20 |
| Asphalt concrete | a1 = 0.35 |
| **Base** | |
| Bitumen macadam | a2 = 0.20 |
| Natural or crushed gravel | a2 = 0.12 |
| Crushed stone on natural gravel subbase | a2 = 0.14 |
| Crushed stone on stabilised subbase | a2 = 0.18 |
| Cement treated gravel Type A (UCS 3.5-5.0 MPa) | a2 = 0.18 |
| Cement treated gravel Type B (UCS 2.0-3.5 MPa) | a2 = 0.14 |
| **Subbase** | |
| Natural gravel, CBR >= 30% | a3 = 0.11 |
| Cement treated Type B (UCS >= 2.0 MPa) | a3 = 0.16 |
| Cement treated Type C (UCS 0.7-2.0 MPa) | a3 = 0.12 |

*(Verified from MoWT Vol 3 Part I, Table 5.2)*

**Appendix A Material Specifications Summary:**

| Property | Base (granular) | Subbase (granular) | Capping/Selected |
|----------|----------------|-------------------|-----------------|
| CBR (soaked, 4-day) | >= 80% @ 98% mod. AASHTO MDD | >= 30% @ 95% mod. AASHTO MDD | >= 15% @ 93% mod. AASHTO MDD |
| PI | < 6 (LS < 3) | Generally < 12 | No specific limit |
| Fines non-plastic? | Preferably | Preferably low PI | -- |
| Grading | Per MoWT Spec Table 3702/1-2 | Per MoWT Spec Table 3702/5 | -- |

*(Verified from MoWT Vol 3 Part I, Appendix A, Sections A.2.1, A.2.2, A.2.3)*

**DCP-CBR Correlation (Section 5.8):**

```
log10(CBR) = 2.48 - 1.057 * log10(DN)
```

DCP testing at 100 m intervals, depth to 850 mm (2 m with extensions). The DCP is recommended as a rapid field assessment tool for subgrade CBR, layer uniformity, and construction quality control. It should not be used as the sole basis for construction acceptance (density/strength compliance) -- standard lab tests remain required for formal compliance.

### M.2.2 Country-Specific Formulas

**Design moisture content for dry conditions (MoWT Equation 3):**
```
Design moisture content (%) = 0.67 * OMC (%) + 0.8
```
Where OMC is from the AASHTO T-99 (Proctor) compaction test.

This formula is used when dry subgrade conditions are expected (rainfall < 250 mm/year, low water table). For wet conditions, CBR is tested at OMC with 4-day soaking.

### M.2.3 Classification System

Material suitability is classified against the nominal specifications in Table 5.1:

| Suitability | CBR (soaked) | PI | Typical Material |
|-------------|-------------|-----|-----------------|
| Suitable for base | >= 80% | < 6 | Crushed stone, well-graded laterite |
| Suitable for subbase | >= 30% | < 12 | Good laterite (murram), sandy gravel |
| Suitable for capping | >= 15% | -- | Moderate laterite, sandy clay |
| Suitable for subgrade (as-is) | >= 2% | -- | Most natural soils |
| Requires improvement | < 2% | -- | Soft clay, organic soil, black cotton |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 3a (Uganda): CBR test condition selection
  |-- Per MoWT Table 3.2:
  |   |-- Saturation likely (high rainfall, wet season, high water table)
  |   |   -> CBR tested after 4-day soaking at OMC, 100% MDD
  |   |-- Wet conditions but saturation unlikely (seasonal rainfall > 250 mm)
  |   |   -> CBR at OMC, 100% MDD, no soaking
  |   +-- Dry conditions (rainfall < 250 mm, low water table)
  |       -> CBR at design moisture (Equation 3), 100% MDD, no soaking
  +-- Note: Cohesive materials with PI > 20 should be sealed 24 hours before CBR testing

Step 4a (Uganda): Material suitability assessment
  |-- Compare CBR against Table 5.1 thresholds
  |-- Compare PI against Appendix A limits
  |-- Compare grading against MoWT General Specification envelopes
  |-- Assess if material can serve as base, subbase, capping, or fill
  +-- Identify materials needing treatment (Section 5.2)
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Laterite (murram) CBR is highly sensitive to compaction density and moisture.** A laterite sample may yield CBR 40% at 100% MDD but only CBR 15% at 93% MDD. Always check the test density and compare against the specification density for the intended layer.

**Material degradation under Modified AASHTO compaction** is common with weathered laterite. If the material breaks down excessively during compaction (manifested as a shift in grading toward finer particles and reduced CBR at higher compaction energy), report this and recommend testing at the actual expected field compaction level.

**DCP should supplement, not replace, laboratory CBR for design.** DCP provides rapid field data but has limitations: it does not measure CBR directly (it estimates it via correlation), it cannot test soaked conditions, and the correlation is apparatus-specific. Use DCP for profiling and lab CBR for design values.

**Marginal materials** (CBR close to specification limits) are very common in Uganda. MoWT Appendix A notes that for low-traffic roads (T1-T2), some relaxation of specifications may be appropriate with engineering justification. However, relaxation should be cautious and documented.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using unsoaked CBR for pavement design in wet regions.** Most of Uganda receives > 250 mm rainfall. Soaked CBR should be the default.
2. **Not reporting the compaction density with CBR results.** A CBR value without the test density is meaningless for specification compliance.
3. **Accepting base material with PI > 6 without engineering justification.** Even if CBR is adequate, high PI will cause moisture sensitivity and rutting.
4. **Ignoring linear shrinkage.** LS > 3% for base material indicates excessive fines -- flag for treatment.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| CBR test condition | Soaked (4-day) | Not specified for wet region | ASSUMED: Soaked CBR per MoWT Table 3.2 | Most of Uganda is "wet" (rainfall > 250 mm) |
| Compaction test method | Modified AASHTO (T-180) | Not specified | ASSUMED: Mod. AASHTO -- verify test method on certificates | MoWT Table 5.1 references mod. AASHTO density |
| DCP correlation | log10(CBR) = 2.48 - 1.057*log10(DN) | TRL apparatus | ASSUMED: TRL DCP correlation -- verify apparatus | Standard in Uganda |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| CBR for base (soaked) | 80 | -- | % | MoWT Table 5.1 | Fail -- does not meet base specification |
| CBR for subbase (soaked) | 30 | -- | % | MoWT Table 5.1 | Fail -- does not meet subbase specification |
| CBR for capping (soaked) | 15 | -- | % | MoWT Table 5.1 | Fail -- does not meet capping specification |
| PI for base | 0 | 6 | % | MoWT Appendix A.2.1 | Fail -- exceeds base PI limit |
| PI for subbase | 0 | 12 | % | MoWT Appendix A.2.2 | Warn -- exceeds recommended subbase PI limit |
| LS for base | 0 | 3 | % | MoWT Appendix A.2.1 | Fail -- exceeds base LS limit |

### M.5.2 Standards Compliance Checks

- **Check:** CBR tested at correct density per Table 5.1.
- **Standard:** MoWT Vol 3 Part I, Table 5.1
- **Pass condition:** CBR tested at 98% mod. AASHTO MDD for base, 95% for subbase, 93% for capping
- **Fail action:** Warn -- "CBR tested at [X]% MDD. Specification requires [Y]% MDD for [layer]. Re-test or adjust."

### M.5.3 Departures / Relaxations Process

No formal departures process. The Engineer may accept marginal materials with documented engineering justification, particularly for low-traffic roads (T1-T2) per MoWT Appendix A guidance. Relaxation of PI limits is more common than relaxation of CBR minimums.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Subgrade CBR < 2% | Below MoWT design catalogue minimum | SENIOR REVIEW -- Subgrade CBR [X]% < 2%. Options: lime treatment, removal and replacement, geofabric, pioneer layer. See MoWT Section 5.5. |
| Base material PI > 6 | Exceeds specification | SENIOR REVIEW -- Base material PI = [X]% > 6. Material moisture-sensitive. Recommend crushing/screening to reduce fines, or cement treatment. |
| CBR decreases at higher compaction | Material degradation | SENIOR REVIEW -- Material shows degradation under compaction. CBR at 98% MDD < CBR at 93% MDD. Investigate aggregate breakdown. |

---

## M.7 Worked Example -- Uganda

### Example: Interpret Lab Results from a Uganda Road Project

**Source:** Hypothetical, based on typical Uganda road project data.

**Given:**
- Project: Mbarara-Ntungamo Road, borrow pit investigation
- Material: Laterite (murram) from Borrow Pit BP-03
- Intended use: Subbase layer
- 5 samples tested:

| Sample | CBR (soaked, 4-day) @ 95% MDD | LL (%) | PL (%) | PI (%) | LS (%) | MDD (kg/m3) | OMC (%) |
|--------|-------------------------------|--------|--------|--------|--------|-------------|---------|
| BP3-1 | 38 | 32 | 18 | 14 | 5.5 | 1920 | 12.5 |
| BP3-2 | 45 | 28 | 16 | 12 | 4.8 | 1985 | 11.2 |
| BP3-3 | 32 | 35 | 19 | 16 | 6.5 | 1880 | 13.8 |
| BP3-4 | 42 | 30 | 17 | 13 | 5.2 | 1945 | 12.0 |
| BP3-5 | 28 | 38 | 20 | 18 | 7.2 | 1860 | 14.5 |

**Solution:**

**Step 1: Validate results**
- All CBR values in reasonable range (28-45%). Check.
- PI = LL - PL: All consistent. Check.
- MDD range 1860-1985 kg/m3: Reasonable for laterite. Check.
- OMC range 11.2-14.5%: Reasonable. Check.
- No anomalous results identified.

**Step 2: Assess against subbase specification (MoWT Table 5.1)**

| Sample | CBR >= 30%? | PI < 12? | LS < 3? | Subbase Suitable? |
|--------|------------|---------|---------|------------------|
| BP3-1 | Yes (38%) | No (14) | No (5.5) | Marginal -- PI and LS exceed limits |
| BP3-2 | Yes (45%) | Yes (12, borderline) | No (4.8) | Marginal -- LS exceeds limit |
| BP3-3 | Yes (32%) | No (16) | No (6.5) | Fail -- PI and LS well above limits |
| BP3-4 | Yes (42%) | No (13) | No (5.2) | Marginal -- PI slightly above limit |
| BP3-5 | No (28%) | No (18) | No (7.2) | Fail -- CBR below 30% and PI/LS high |

**Step 3: Assessment**
- All 5 samples meet the CBR criterion (>= 30%) except BP3-5 (28%).
- None meet the PI recommendation (< 12%) or LS recommendation (< 3%).
- **Conclusion:** This laterite source has adequate strength (CBR) for subbase but excessive plasticity. Options:
  1. **Mechanical modification:** Screen out excess fines to reduce PI.
  2. **Lime treatment:** 2-3% lime to reduce PI. Will also increase CBR.
  3. **Blend with non-plastic material:** Add crushed stone or non-plastic sand.
  4. **Accept with engineering justification:** For T1-T2 traffic only, with documented risk.

**Step 4: Material for base?**
- CBR: Only BP3-2 (45%) approaches base requirement; all others well below 80%.
- PI: All exceed PI < 6.
- **Conclusion:** This material is NOT suitable for base in its natural state. Would require significant processing or stabilisation.

**Result:**

| Parameter | Minimum | Maximum | Mean | Specification | Pass? |
|-----------|---------|---------|------|--------------|-------|
| CBR (soaked) | 28% | 45% | 37% | >= 30% (subbase) | 4/5 pass |
| PI | 12 | 18 | 15% | < 12 (recommended) | 0/5 pass |
| LS | 4.8 | 7.2 | 5.8% | < 3% (base only) | 0/5 pass |

**Escalation:** SENIOR REVIEW -- Borrow Pit BP-03 laterite meets CBR for subbase but PI = 12-18% exceeds recommended limit of 12%. Recommend lime treatment (2-3% by weight) to reduce PI before use as subbase. Alternatively, consider mechanical modification by screening to remove excess fines.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3: Pavement Design, Part I: Flexible Pavements*, January 2010.
2. Uganda Ministry of Works and Transport, *General Specifications for Road and Bridge Works*, January 2005.
3. TRL, *Overseas Road Note 31*, 5th edition, 1993.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft -- Tables 5.1, 5.2 and Appendix A specs verified against MoWT Vol 3 Part I |
