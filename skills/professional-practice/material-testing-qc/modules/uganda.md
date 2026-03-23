# Material Testing & QC -- Uganda Module

> **Parent Skill:** Skill #55 Material Testing & QC
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT General Specifications for Road and Bridge Works; BS 1377, BS 812, BS 1881
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT General Specifications for Road and Bridge Works | Various editions | Material testing and acceptance requirements | Current |
| BS 1377: Methods of test for soils for civil engineering purposes | 1990 | Parts 1-9 (soil classification, compaction, CBR, density) | Current (referenced by MoWT) |
| BS 812: Testing aggregates | Various parts | Grading, ACV, LAA, 10% FACT, flakiness | Current (referenced by MoWT) |
| BS 1881: Testing concrete | Various parts | Cube strength, slump, aggregate testing | Current (referenced by MoWT) |
| BS 4449: Steel for reinforcement of concrete | 2005 | Tensile, yield, bend tests | Current |
| AASHTO T-99: Standard Proctor compaction | Current | Subgrade compaction reference | Accepted alternative to BS |
| AASHTO T-180: Modified Proctor compaction | Current | Base/subbase compaction reference | Accepted alternative to BS |

### M.1.2 Institutional Context

**MoWT General Specifications:** The primary technical specification for road construction in Uganda. References BS standards for test methods but AASHTO methods are also widely accepted. Test frequencies are specified in the General Specifications or in project-specific specifications.

**UNRA Central Laboratory:** Located in Kampala (Kireka). Provides verification testing, specialist tests (Marshall stability, binder tests, steel tests), and arbitration testing when field results are disputed. Turn-around time is typically 2-4 weeks.

**Regional Laboratories:** Some UNRA regional offices have basic laboratory facilities. Capacity varies -- not all regions have functional labs.

**Site Laboratories:** Required for most significant road projects. Typically equipped for: grading analysis, Atterberg limits, Proctor compaction, sand replacement density, DCP, and concrete cube preparation/curing. More sophisticated tests (CBR press, Marshall) may or may not be available depending on contract requirements.

### M.1.3 Standard Philosophy

MoWT specifications reference BS test methods as the default, but AASHTO methods are accepted as alternatives. This dual-standard acceptance reflects Uganda's position between British and American engineering traditions. The key practical implication is that test reports should always state which method was used, as results from different methods may not be directly comparable.

For field testing, pragmatism prevails. DCP testing (TRL correlation to CBR) is widely used for subgrade assessment in locations where laboratory CBR testing is not practical. Nuclear density gauges are used for rapid density checks but must be calibrated against sand replacement tests.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Test Frequency Table:** See `tables/test_frequency_table.json` for testing frequencies by material type and layer.

### M.2.2 Country-Specific Testing Notes

**DCP (Dynamic Cone Penetrometer):** Widely used in Uganda for in-situ subgrade assessment, particularly on remote projects where laboratory access is limited. The TRL correlation (Log CBR = 2.48 - 1.057 x Log(mm/blow)) provides an estimate of in-situ CBR. DCP results are useful for screening and preliminary assessment but should not be the sole basis for acceptance of structural layers (base, sub-base).

**Nuclear Density Gauge:** Used for rapid field density checks during compaction. Must be calibrated against sand replacement density tests at the start of each project and periodically during construction (at least monthly). Regulatory note: nuclear gauges require a license from the Atomic Energy Council of Uganda. Proper storage, transport, and handling protocols must be followed.

**Concrete Testing in Remote Locations:** Curing concrete cubes in the field requires proper curing tanks or ponds maintained at 20 +/- 2 degrees C. In remote Uganda locations, curing conditions may be difficult to maintain. If curing is not to standard, flag this when reporting results.

### M.2.3 Material Classes (MoWT Reference)

Material classification follows MoWT General Specifications, aligned with Skill #24 (Pavement Material Specs):

| Material Class | Typical Use | Key Requirement | Compaction Standard |
|---------------|------------|-----------------|-------------------|
| Selected fill (S-class) | Subgrade improvement | CBR per class (S3: >= 5%, S5: >= 8%, S7: >= 15%) | Standard Proctor (T-99) |
| Sub-base (G30) | Sub-base layer | CBR >= 30% (soaked) | Modified AASHTO (T-180) |
| Base (G80) | Base course | CBR >= 80% (soaked) | Modified AASHTO (T-180) |
| Crushed stone base | Base course (high traffic) | CBR >= 100%, LAA <= 30% | Modified AASHTO (T-180) |
| Cemented base (C-class) | Stabilised base | UCS 1.5-3.0 MPa (C1) | Modified AASHTO (T-180) |

Detailed specifications are in Skill #24 and `skills/pavement-design/pavement-material-specs/tables/uganda_material_specifications.json`.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Step 3a: Determine available testing facilities**
```
What laboratory facilities are available?
  |-- Full site laboratory (CBR press, Marshall, grading, Atterberg, compaction)
  |   --> All routine tests on site
  |   --> Send specialist tests (binder, steel) to UNRA central lab
  |
  |-- Basic site laboratory (grading, Atterberg, compaction, cubes only)
  |   --> CBR, Marshall, and specialist tests to nearest regional or central lab
  |   --> Plan for 2-4 week turnaround on sent-away samples
  |   --> Use DCP for interim subgrade assessment
  |
  +-- No site laboratory
      --> All testing at nearest laboratory (may be 100+ km away)
      --> Rely heavily on DCP and nuclear gauge for field checks
      --> Flag: quality assurance significantly compromised
      --> Escalate to Engineer/UNRA for lab provision
```

**Step 4a: Uganda-specific acceptance assessment**
```
Test result vs MoWT specification:
  |-- PASS (meets or exceeds specification) --> Record, proceed
  |
  |-- FAIL by small margin (within 5% of specification value)
  |   --> Additional testing at closer spacing
  |   --> If isolated: consider acceptance with reduced payment
  |   --> Consult Skill #24 for exact specification values
  |
  +-- FAIL by significant margin (> 5% below specification)
      --> NCR and remedial action required
      --> For base course: likely removal and replacement
      --> For subgrade: reworking and re-compaction may suffice
```

### M.3.2 Professional Judgment (Country-Specific)

**Laterite gravels are Uganda's most common pavement material.** Natural laterite gravels from borrow pits are used extensively for sub-base and (where quality permits) base course. Their PI values may be higher than would be acceptable in temperate climates, but they perform adequately in tropical conditions. However, PI must still be controlled -- excessively plastic material will rut and deform under traffic.

**Laboratory delays are a real constraint.** For projects far from Kampala (e.g., northern or eastern Uganda), getting samples to the UNRA central lab and receiving results can take 3-4 weeks. The Materials Engineer should submit samples early -- do not wait until material is needed to send samples for testing.

**Rainy season affects test results.** Field density tests during rain are unreliable (moisture content affected). Concrete cube curing may be difficult to control. Schedule critical testing for dry conditions where possible.

**Fuel and access constraints.** Site laboratories may experience power outages (generator fuel) and equipment calibration challenges. Maintain backup power and plan calibration schedules carefully.

### M.3.3 Common Errors (Country-Specific)

1. **Using DCP as the sole acceptance test for base course.** DCP is a screening tool, not an acceptance test for structural layers. Laboratory CBR is required for base course compliance.
2. **Not calibrating nuclear gauge against sand replacement.** Without periodic calibration, nuclear gauge readings may drift. Calibrate at least monthly.
3. **Accepting laterite gravel based on appearance alone.** "Good red laterite" is not a specification. Always test -- laterite properties vary widely even within the same borrow pit.
4. **Sending samples to UNRA central lab without clear identification.** Samples must be clearly labeled (project, chainage, layer, depth, date, required tests). Poorly labeled samples cause delays and confusion.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Test standard (soils) | BS 1377 | Not specified | ASSUMED: BS 1377 for soil testing (MoWT default). AASHTO also accepted. | MoWT General Specifications |
| Test standard (aggregates) | BS 812 | Not specified | ASSUMED: BS 812 for aggregate testing | MoWT General Specifications |
| Test standard (concrete) | BS 1881 | Not specified | ASSUMED: BS 1881 for concrete testing | MoWT General Specifications |
| Field density method | Sand replacement (BS 1377) | Not specified | ASSUMED: Sand replacement as reference method. Nuclear gauge for rapid checks. | Standard practice |
| Compaction (base/subbase) | Modified AASHTO T-180 | Not specified | No flag | MoWT specification |
| Compaction (subgrade) | Standard Proctor T-99 | Not specified | No flag | MoWT specification |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Base CBR (soaked) | 80 | 150 | % | MoWT Spec | Below 80% fails spec. Verify compaction standard used (must be Modified AASHTO). |
| Sub-base CBR (soaked) | 30 | 100 | % | MoWT Spec | Below 30% fails typical sub-base spec |
| Base field density | 98 | 105 | % MDD | MoWT Spec | Below 98% fails spec. Above 105% check test validity. |
| Sub-base field density | 97 | 105 | % MDD | MoWT Spec | Below 97% fails spec |
| Subgrade field density | 95 | 105 | % MDD | MoWT Spec | Below 95% fails spec (Standard Proctor) |
| Base PI | 0 | 6 | -- | MoWT Spec | Above 6 fails base spec. Reference Skill #24. |
| LAA (base) | 0 | 30 | % | MoWT Spec | Above 30% fails spec for crushed stone base |
| Concrete 28-day (Class 25) | 22 | 45 | N/mm2 | BS 1881 / MoWT | Below 22 (fck-3) fails individual test. Above 40 unusual for road structures. |

### M.5.2 Standards Compliance Checks

- **Check:** Correct compaction standard used for CBR testing
- **Standard:** MoWT General Specifications
- **Pass condition:** Base/subbase CBR at Modified AASHTO (T-180); subgrade CBR at Standard Proctor (T-99)
- **Fail action:** SENIOR REVIEW -- CBR tested at wrong compaction standard. Results not valid for compliance. Retest required.

- **Check:** Nuclear gauge calibrated against sand replacement
- **Standard:** Good practice
- **Pass condition:** Calibration performed within last 30 days at current project
- **Fail action:** NOTE -- Nuclear gauge calibration overdue. Results may not be reliable.

### M.5.3 Departures / Relaxations Process

MoWT specifications do not have a formal departures process like DMRB. However, acceptance with reduced payment for marginally non-compliant work is a recognised procedure that requires the Engineer's determination. Any acceptance of non-compliant work should be documented in writing with the Engineer's justification and the reduced payment calculation.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No site laboratory on major project | Quality assurance compromised | SENIOR REVIEW -- No site laboratory. All testing requires samples sent to [location]. Turnaround [X] weeks. Quality assurance significantly compromised. |
| UNRA central lab turnaround > 4 weeks | Delays material source approvals | NOTE -- Central lab turnaround exceeding 4 weeks. Consider alternative accredited laboratory. |
| Multiple borrow pit failures | Material availability constraint | SENIOR REVIEW -- [X] proposed borrow pits failed specification. Consider material treatment (cement/lime stabilisation) or extended haul from approved source. |
| Concrete cube results consistently low | Systematic mix design issue | SENIOR REVIEW -- Concrete cube results below target for [X] consecutive pours. Mix design review required. |

---

## M.7 Worked Examples -- Uganda

### Example 1: Approve Borrow Material Source for Subgrade Fill

**Project:** UNRA road rehabilitation, earthworks phase. Contractor proposes a borrow pit at Km 15+200 (left side, 500m from road) for selected fill (subgrade improvement layer).

**Specification requirement (MoWT, reference Skill #24):**
- Selected fill class S7: CBR >= 15% (soaked, Standard Proctor)
- PI <= 20
- Material free from organic matter, clay lumps, and other deleterious material

**Testing conducted:**

| Test | Standard | Result | Specification | Status |
|------|----------|--------|--------------|--------|
| CBR (soaked, 4-day, Standard Proctor) | BS 1377 | 22% | >= 15% | PASS |
| Grading | BS 1377 | Continuous, 38mm max | Well-graded, max 75mm | PASS |
| Liquid Limit | BS 1377 | 38 | -- | Recorded |
| Plastic Limit | BS 1377 | 22 | -- | Recorded |
| Plasticity Index | BS 1377 | 16 | <= 20 | PASS |
| Compaction (Std Proctor) | AASHTO T-99 | MDD: 1,820 kg/m3, OMC: 12.5% | Reference values | Recorded |
| Visual inspection | -- | Red laterite gravel, no organics | No deleterious material | PASS |

**Decision:** Source APPROVED for selected fill (S7 class).

**Conditions of approval:**
1. Regular verification testing during construction: 1 CBR test per 500 m3 of material used.
2. Field density tests at 1 per 500 m2 per compacted layer.
3. Contractor to maintain consistent extraction depth and area within approved zone.
4. Re-testing required if material character visibly changes (colour, texture, moisture).

### Example 2: Base Course Compaction Test Fails

**Project:** UNRA road project, base course placement at Km 8+400 to Km 8+600.

**Test result:**
- Sand replacement field density test at Km 8+500: 1,945 kg/m3
- Laboratory MDD (Modified AASHTO T-180): 2,050 kg/m3
- Field density as % of MDD: 1,945 / 2,050 x 100 = **94.9%**
- Specification requirement: **>= 98% MDD (Modified AASHTO T-180)**

**Assessment:**
The result of 94.9% MDD is significantly below the specification requirement of 98% MDD -- a shortfall of 3.1 percentage points. This is not a marginal failure.

**NCR issued (NCR-023):**
- Non-conformance: Field density 94.9% MDD vs specification 98% MDD at Km 8+500
- Specification reference: MoWT General Specifications, base course compaction
- Chainage: Km 8+400 to Km 8+600 (200m section potentially affected)

**Decision tree walkthrough:**

Step 1: Assess extent -- is this an isolated failure or systemic?
- Additional testing ordered at 50m intervals (closer than standard 200m2 spacing):
  - Km 8+450: 97.2% MDD -- FAIL (marginal)
  - Km 8+500: 94.9% MDD -- FAIL (significant)
  - Km 8+550: 98.5% MDD -- PASS

Step 2: Results indicate the problem is concentrated around Km 8+450 to Km 8+550 (approximately 100m section), not the full 200m.

Step 3: Assess remedial options:
- **(a) Additional testing:** Already done -- confirms localised failure.
- **(b) Accept with reduced payment:** Not appropriate -- shortfall of 3.1% at Km 8+500 is too significant for a base course layer (structural integrity concern).
- **(c) Rework and re-compact:** Most appropriate option. The material is already placed and meets CBR specification -- the issue is insufficient compaction.
- **(d) Remove and replace:** Not necessary if reworking achieves target density.

**Decision:** Contractor to rework Km 8+450 to Km 8+550:
1. Scarify the base course layer to full depth.
2. Add moisture if below OMC (likely cause of low density).
3. Re-compact with vibratory roller (minimum 8 passes).
4. Re-test at 50m intervals.
5. Results must achieve >= 98% MDD before proceeding with surfacing.

**NCR closed:** After reworking, re-test results:
- Km 8+450: 99.1% MDD -- PASS
- Km 8+500: 98.7% MDD -- PASS
- Km 8+550: 99.3% MDD -- PASS
- NCR-023 CLOSED.

### Example 3: Concrete Cube Strength Assessment at 7 Days

**Project:** UNRA road project, culvert construction at Km 22. Concrete Class 25 (fck = 25 N/mm2).

**7-day cube test results (3 cubes from same pour):**
- Cube 1: 18.5 N/mm2
- Cube 2: 17.2 N/mm2
- Cube 3: 18.0 N/mm2
- Mean: 17.9 N/mm2

**Assessment at 7 days:**

Using the approximate 7-day to 28-day relationship (28-day approximately equals 7-day / 0.67):
- Estimated 28-day mean: 17.9 / 0.67 = approximately 26.7 N/mm2
- This suggests the concrete is on track to achieve the specified 25 N/mm2 at 28 days.

However, the lowest individual result (17.2 N/mm2) gives an estimated 28-day value of 17.2 / 0.67 = 25.7 N/mm2. This is above fck (25) but close to the individual minimum of fck - 3 = 22 N/mm2 when projected. This is marginal but not alarming.

**Decision at 7 days:**
- Results are within the expected range for Class 25 concrete at 7 days.
- No immediate action required.
- Flag for attention at 28-day testing.
- If 28-day results show any cube below 22 N/mm2 or mean below 25 + 1.64s, an NCR will be required.

**28-day results (when received):**
- Cube 1: 27.5 N/mm2
- Cube 2: 25.8 N/mm2
- Cube 3: 26.9 N/mm2
- Mean: 26.7 N/mm2

**28-day assessment:**
- Individual minimum check: lowest is 25.8 N/mm2 vs minimum 22 N/mm2 (fck - 3) -- PASS
- Mean check: 26.7 N/mm2 (for compliance, need mean >= fck + 1.64s; using initial s = 8: need >= 25 + 13.1 = 38.1 which is very conservative. With actual production data showing s approximately 0.9: need >= 25 + 1.5 = 26.5 N/mm2) -- PASS (using production data s)
- Note: Initial production s = 8 is very conservative and applies to the first few results before production data is established.

**Result:** Concrete PASSES acceptance criteria. No NCR required.

---

## M.8 References

1. MoWT General Specifications for Road and Bridge Works (Uganda)
2. BS 1377: 1990 -- Methods of test for soils for civil engineering purposes
3. BS 812 -- Testing aggregates (various parts)
4. BS 1881 -- Testing concrete (various parts)
5. BS 4449: 2005 -- Steel for the reinforcement of concrete
6. AASHTO T-99 -- Standard Proctor compaction
7. AASHTO T-180 -- Modified Proctor compaction
8. TRL Overseas Road Note 31 -- DCP-CBR correlation (Log CBR = 2.48 - 1.057 x Log(mm/blow))
9. UNRA Central Laboratory procedures (internal)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with MoWT/BS testing context, UNRA laboratory system, 3 worked examples (borrow pit approval, base course compaction failure, concrete cube assessment). |
