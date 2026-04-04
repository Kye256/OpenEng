# AASHTO 93 Pavement Design -- Kenya Module

> **Parent Skill:** #22 AASHTO 93 Pavement Design
> **Country/Jurisdiction:** Kenya
> **Standards:** AASHTO Guide for Design of Pavement Structures (1993); Kenya RDM 3.4: Flexible Pavement Design (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| AASHTO Guide for Design of Pavement Structures | 1993 | Design equation, SN method | Reference -- not Kenya's primary method |
| Kenya RDM 3.4: Flexible Pavement Design | 2025 | Chapters 2-5 | Current -- Kenya's PRIMARY design method |
| Kenya RDM 3.3: Pavement Foundation and Materials Design | 2025 | Chapters 4, 8 | Current -- material specifications |

**AASHTO 93 is NOT Kenya's primary flexible pavement design method.** Kenya's primary method is the RDM 3.4 mechanistic-empirical method (see Skill #21 Kenya module). AASHTO 93 may be required on specific projects, particularly:

- **Donor-funded projects** where the funding agency (World Bank, AfDB, JICA, etc.) specifies AASHTO 93 as a condition of financing
- **Cross-checking** RDM 3.4 designs where additional verification is desired
- **Projects predating RDM 3.4** where the original design used AASHTO 93 and continuity is needed

### M.1.2 Institutional Context

Kenya has three road authorities under the Ministry of Roads and Transport (MoRT), plus 47 County Governments. All use the Kenya Road Design Manual:

- **KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A and B).
- **KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class C, D, E, and specialist classes).
- **KURA (Kenya Urban Roads Authority):** Manages urban roads (Class UA, UC, UL).
- **47 County Governments:** Manage county roads under devolved functions.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

For national projects, RDM 3.4 governs pavement design. AASHTO 93 may only be used as a verification method or where specifically required by project terms of reference.

### M.1.3 Relationship Between RDM 3.4 and AASHTO 93

Both RDM 3.4 and AASHTO 93 use traffic loading and subgrade strength as primary design inputs, but the design approach is fundamentally different:

| Aspect | AASHTO 93 | Kenya RDM 3.4 |
|--------|-----------|----------------|
| Design philosophy | Empirical -- based on AASHO Road Test results | Mechanistic-empirical -- multi-layer elastic theory + transfer functions |
| Design output | Structural Number (SN) then layer thicknesses | Select from 16 pre-designed standard structure types |
| Traffic input | W18 (ESALs) | MESA / CESA (Million Equivalent Standard Axles) |
| Subgrade input | Resilient modulus MR (from CBR correlation) | Kenya subgrade class (from RDM 3.3 Table 4.2.2) |
| Reliability | R and S0 parameters | Built into structure type designation |
| Serviceability | PSI loss (p0 - pt) | Not explicit -- incorporated in M-E analysis |
| Climate treatment | Drainage coefficients (m) | Regional climate zones |
| Layer design | Engineer selects materials + thicknesses to achieve SN | Pre-designed layer configurations per structure type |

**Key departures in Kenya practice:**

1. **Layer coefficients:** Kenya does not publish country-specific AASHTO layer coefficients in the RDM series (unlike Uganda MoWT Table 5.2). When AASHTO 93 is used in Kenya, layer coefficients are typically sourced from the AASHTO Guide directly or from the engineer's experience.
2. **Subgrade characterisation:** RDM 3.3 uses CBR-based subgrade classes. For AASHTO 93 application, CBR must be converted to MR using the correlation MR (psi) = 1500 * CBR.
3. **Drainage coefficients:** Kenya's regional climate zone approach does not directly map to AASHTO drainage coefficients. Engineers must assess local drainage conditions independently.

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya-Specific AASHTO 93 Application Notes

**Layer Coefficients for Kenya Practice:**

Since Kenya does not publish official AASHTO layer coefficients, the following values are commonly used in Kenya practice (based on typical Kenya materials):

| Layer/Material | Coefficient | Notes |
|----------------|-------------|-------|
| **Surfacing** | | |
| Asphalt concrete (AC14/AC20) | a1 = 0.35-0.44 | Depends on mix design and binder grade |
| Surface dressing | a1 = 0.15-0.20 | Lower structural contribution |
| **Base** | | |
| Graded Crushed Stone (GCS) | a2 = 0.13-0.14 | Kenya GCS per RDM 3.3 Chapter 8 |
| Hydraulically Stabilised Material (HSM) | a2 = 0.14-0.18 | Depends on UCS achieved |
| Asphalt concrete base | a2 = 0.20-0.30 | Hot-mix asphalt base layer |
| **Subbase** | | |
| Natural gravel G45 | a3 = 0.10-0.12 | Soaked CBR >= 45% |
| Natural gravel G30 | a3 = 0.08-0.10 | Soaked CBR >= 30% |
| Hydraulically Stabilised Material (HSM) | a3 = 0.12-0.16 | Depends on UCS achieved |

**CAUTION:** These are indicative values. When AASHTO 93 is used in Kenya, the engineer should verify layer coefficients against actual material testing results for the specific project.

**Structural Number Calculation:**

```
SN = a1*D1 + a2*m2*D2 + a3*m3*D3
```

Where D1, D2, D3 are layer thicknesses in inches (convert from mm: divide by 25.4), and m2, m3 are drainage coefficients.

**Drainage Coefficients for Kenya Climate Zones:**

| Kenya Climate Zone | Typical m value | Reasoning |
|--------------------|-----------------|-----------|
| Wet (Lake Victoria, coastal) | 0.80-0.90 | Prolonged wet conditions, poor drainage potential |
| Seasonal (central highlands) | 0.90-1.00 | Distinct dry season allows drainage |
| Dry/Semi-arid | 1.00-1.10 | Good drainage conditions, short wet periods |
| Arid | 1.10-1.20 | Excellent drainage, minimal moisture |

### M.2.2 Design Parameters for Kenya

| Parameter | Value | Notes |
|-----------|-------|-------|
| Reliability R (Class A/B roads) | 85-95% | KeNHA trunk roads |
| Reliability R (Class C/D/E) | 75-85% | KeRRA rural roads |
| Standard deviation S0 | 0.45 | Standard AASHTO value |
| Initial serviceability p0 | 4.2 | AASHTO standard |
| Terminal serviceability pt (trunk) | 2.5 | Class A/B roads |
| Terminal serviceability pt (rural) | 2.0 | Class C/D/E roads |
| MR from CBR | MR (psi) = 1500 * CBR | AASHTO approximation |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
When to use AASHTO 93 in Kenya:
  |-- Donor-funded project requires AASHTO 93
  |     |-- World Bank, AfDB, JICA, etc. may specify AASHTO 93
  |     +-- Check project Terms of Reference for design method requirement
  |-- Cross-checking RDM 3.4 design
  |     |-- AASHTO 93 SN can verify adequacy of selected RDM 3.4 structure
  |     +-- Compare total SN of RDM 3.4 structure against AASHTO 93 required SN
  |-- Legacy project continuity
  |     +-- Original design used AASHTO 93, rehabilitation design maintains consistency
  +-- DEFAULT: Use RDM 3.4 (Skill #21 Kenya module) as primary design method

For national projects (KeNHA/KeRRA/KURA):
  --> RDM 3.4 ALWAYS governs where no donor requirement exists
  --> If AASHTO 93 gives a significantly different result, RDM 3.4 result governs
  --> Document both results in the design report when cross-checking
```

### M.3.2 Professional Judgment (Kenya-Specific)

**RDM 3.4 and AASHTO 93 may give different results for the same inputs.** This is expected because the methods have different analytical bases. When cross-checking, differences of 10-15% in total pavement thickness are normal and do not indicate an error.

**Significant differences (> 20%) warrant investigation.** If AASHTO 93 and RDM 3.4 give substantially different results, review the input assumptions -- particularly the layer coefficient values, drainage coefficients, and reliability level.

**For donor-funded projects, obtain agreement on design parameters early.** Different donors may have different expectations for reliability level, serviceability loss, and layer coefficients. Agree these in the inception report.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using AASHTO 93 as the primary method when RDM 3.4 should be used.** For national projects, RDM 3.4 is the mandated standard. AASHTO 93 is only primary when the donor specifically requires it.
2. **Using Uganda MoWT Table 5.2 layer coefficients in Kenya.** Kenya materials (GCS, HSM) have different properties from Uganda materials (G80, C1). Use Kenya-appropriate coefficient values.
3. **Not converting between ESALs and MESA.** AASHTO 93 uses ESALs (= ESAs); Kenya RDM uses MESA (millions). Ensure consistent unit conversion when cross-referencing.
4. **Ignoring the RDM 3.4 result when AASHTO 93 gives a thinner design.** For national projects, RDM 3.4 governs.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| R | 90% | Class A/B, not specified | ASSUMED: R = 90% | Mid-range for Kenya trunk roads |
| R | 80% | Class C/D/E, not specified | ASSUMED: R = 80% | Mid-range for Kenya rural roads |
| S0 | 0.45 | Not specified | No flag | AASHTO standard value |
| pt | 2.5 | Trunk road | No flag | Standard practice |
| m | 0.90 | Drainage not specified | ASSUMED: m = 0.90 (moderate drainage) | Conservative for Kenya wet/seasonal zones |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| SN | 1.0 | 8.0 | inches | Practice | Warn if outside expected range |
| Layer coefficient | 0.05 | 0.44 | -- | AASHTO Guide | Reject if outside AASHTO range |

### M.5.2 Standards Compliance Checks

- **Check:** If national project, confirm RDM 3.4 design also performed (AASHTO 93 is cross-check only)
- **Check:** Layer coefficients appropriate for Kenya materials (not Uganda MoWT Table 5.2)
- **Check:** AASHTO 93 result compared with RDM 3.4 result -- document any significant differences
- **Check:** SN conversion correct if comparing with mm-based units

### M.5.3 Cross-Check with RDM 3.4

When AASHTO 93 is used as a cross-check for an RDM 3.4 design:
1. Calculate the SN of the selected RDM 3.4 structure using AASHTO layer coefficients
2. Compare with the AASHTO 93 required SN
3. If SN_achieved (from RDM 3.4 structure) >= SN_required (from AASHTO 93): design is adequate
4. If SN_achieved < SN_required: review assumptions, but RDM 3.4 governs for national projects

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| AASHTO 93 SN > RDM 3.4 SN by > 20% | Significant method disagreement | SENIOR REVIEW -- Investigate layer coefficient assumptions and drainage coefficients. |
| Donor requires AASHTO 93 only | National standard bypassed | NOTE -- Document in design report that RDM 3.4 result differs. Recommend presenting both results to the Engineer. |

---

## M.7 Worked Example -- Kenya

### Example: Donor-Funded Class B Road -- AASHTO 93 with RDM 3.4 Comparison

**Given:**
- World Bank-funded Class B road in Kenya (KeNHA)
- Design traffic: 5 MCESA (= 5,000,000 ESALs for AASHTO input)
- Design CBR: 6%
- Donor requires AASHTO 93 design with RDM 3.4 cross-check
- Available materials: AC surfacing, GCS base, G30 subbase
- Climate zone: Seasonal (central highlands, ~800 mm annual rainfall)

**Solution:**

**AASHTO 93 Design:**

**Step 1 -- Convert CBR to MR:**
MR = 1500 * 6 = 9,000 psi

**Step 2 -- Design parameters:**
R = 90% (Class B trunk road) --> ZR = -1.282
S0 = 0.45
delta_psi = 4.2 - 2.5 = 1.7
m2 = m3 = 0.95 (seasonal climate, adequate drainage)

**Step 3 -- Calculate required SN:**
Solving AASHTO equation iteratively: SN_required approximately 3.8 inches

**Step 4 -- Layer design using Kenya materials:**
- Surfacing: 50 mm AC, a1 = 0.35 --> SN1 = 0.35 * 50/25.4 = 0.69
- Base: 200 mm GCS, a2 = 0.14, m2 = 0.95 --> SN2 = 0.14 * 0.95 * 200/25.4 = 1.05
- Subbase: 225 mm G30, a3 = 0.10, m3 = 0.95 --> SN3 = 0.10 * 0.95 * 225/25.4 = 0.84
- SN_achieved = 0.69 + 1.05 + 0.84 = 2.58

This is less than 3.8. Increase layers or use better materials:
- Base: 250 mm GCS with a2 = 0.14 --> SN2 = 0.14 * 0.95 * 250/25.4 = 1.31
- Subbase: 250 mm HSM with a3 = 0.14, m3 = 0.95 --> SN3 = 0.14 * 0.95 * 250/25.4 = 1.31
- SN_achieved = 0.69 + 1.31 + 1.31 = 3.31

Still below 3.8. Increase AC or base:
- Surfacing: 60 mm AC --> SN1 = 0.35 * 60/25.4 = 0.83
- Base: 275 mm GCS, a2 = 0.14 --> SN2 = 0.14 * 0.95 * 275/25.4 = 1.44
- Subbase: 250 mm HSM, a3 = 0.14 --> SN3 = 0.14 * 0.95 * 250/25.4 = 1.31
- SN_achieved = 0.83 + 1.44 + 1.31 = 3.58

Close. Round up subbase to 275 mm:
- SN3 = 0.14 * 0.95 * 275/25.4 = 1.44
- SN_achieved = 0.83 + 1.44 + 1.44 = 3.71

Still short of 3.8. Use higher base coefficient (a2 = 0.18 for GCS on stabilised subbase):
- Base: 250 mm GCS on HSM, a2 = 0.18 --> SN2 = 0.18 * 0.95 * 250/25.4 = 1.68
- SN_achieved = 0.83 + 1.68 + 1.31 = 3.82 >= 3.8 **OK**

**AASHTO 93 Result:**

| Layer | Material | Thickness | Coefficient | SN |
|-------|----------|-----------|-------------|-----|
| Surfacing | Asphalt concrete | 60 mm | a1 = 0.35 | 0.83 |
| Base | GCS (on HSM subbase) | 250 mm | a2 = 0.18 | 1.68 |
| Subbase | HSM | 250 mm | a3 = 0.14 | 1.31 |
| **Total** | | **560 mm** | | **SN = 3.82** |

**RDM 3.4 Cross-Check:**
For 5 MCESA on CBR 6% subgrade in seasonal zone:
- Traffic class TLC05 (3.0-6.0 MESA)
- Structure types applicable: ST03 or ST04 (granular base, cemented subbase)
- ST04: 40 mm AC + 175 mm GCS + 175 mm HSM = 390 mm total

**Comparison:** AASHTO 93 gives 560 mm total; RDM 3.4 (ST04) gives 390 mm total. The AASHTO 93 result is approximately 44% thicker. This difference reflects the different analytical basis -- present both results to the Engineer with recommendation to use RDM 3.4 for national compliance.

> **Cross-reference:** For Kenya's primary flexible pavement design method, see Skill #21 Kenya module (RDM 3.4).

---

## M.8 References

1. AASHTO, *Guide for Design of Pavement Structures*, 1993.
2. Kenya Ministry of Roads and Transport, *Road Design Manual Part 3.4: Flexible Pavement Design*, 2025.
3. Kenya Ministry of Roads and Transport, *Road Design Manual Part 3.3: Pavement Foundation and Materials Design*, 2025.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- AASHTO 93 Kenya application, RDM 3.4 relationship, donor project context |
