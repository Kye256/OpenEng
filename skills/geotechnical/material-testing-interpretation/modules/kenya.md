# Material Testing Interpretation -- Kenya Module

> **Parent Skill:** #9 Material Testing Interpretation
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual (RDM) 3.2: Materials Field and Laboratory Testing (2025); RDM 3.3 (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 3.2 | 2025 | All chapters (test standards for field and laboratory testing) | Current -- mandatory |
| Kenya RDM 3.1 | 2025 | Section 6.3.2 (Frequency of sampling and testing), Section 8.3 (Borrow pit testing) | Current |
| Kenya RDM 3.3 | 2025 | Table 4.1 (Subgrade classes), Table 8.8 (Material codes), Charts GM1-GM13 | Current |
| Kenya Standard Specification | 2025 | Material acceptance criteria | Current |
| BS EN ISO 14688-2:2018 | Current | Soil classification (ESCS) | Reference |

### M.1.2 Institutional Context

Material testing in Kenya follows the test standards referenced in RDM 3.2. The manual references AASHTO, ASTM, BS, and BS EN test methods (Section 2.5). Manufactured products (cement, lime, hydraulic binders) shall be tested according to the relevant Kenya Standard (KS). Where a KS is not available, an international standard applies.

KENAS (Kenya Accreditation Service) provides yearly calibration certification for laboratory equipment (Section 2.3). The MTRD (Materials Testing and Research Division) is the national reference laboratory.

**Important transitional note:** Kenya is transitioning from BS to KS/EN standards. RDM 3.2 Section 2.5 states: "For contracting purposes, the current and active test standard at twenty eight (28) days before the closing date of the tender shall be applicable." Many test tables in RDM 3.2 still reference BS standards (e.g., BS 1377-9:1990 for field tests) alongside international standards (ISO 22476 series). Where a KS exists, it takes precedence.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context.

### M.1.3 Standard Philosophy

RDM 3.2 provides test standards for all materials used in road construction, organized by material type (field tests, geotechnical tests, soils/gravels, aggregates, lime, cement, bituminous materials, concrete, etc.). The approach is to specify the applicable test standard for each property and material type, with the test being conducted in accordance with the referenced standard. Appendix 1 provides the full titles of all test standards referenced.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table K.9.1: Key Test Standards Referenced in Kenya RDM 3.2 (Verified against PDF)**

**Field Ground Tests (RDM 3.2 Table 3.1):**

| Test | Standard | Notes |
|------|----------|-------|
| Field Density -- Sand Replacement | BS 1377-9:1990, Cl. 2.1/2.2 | Small and large pouring cylinder |
| Field Density -- Nuclear method | BS 1377-9:1990, Cl. 2.5 | |
| In-situ CBR | BS 1377-9:1990, Cl. 4.3 | |
| Plate Loading Test | BS 1377-9:1990, Cl. 4.1 | |
| Static Cone Penetration Test (SCPT) | ISO 22476-1 (electrical), BS EN 22476-12 (mechanical) | |
| Dynamic Probing (DP) | ISO 22476-2 | Includes DCP |
| Standard Penetration Test (SPT) | ISO 22476-3 | |
| In-situ Vane Shear Strength | ISO 22476-9 | |

**Soils and Gravels -- Disturbed Samples (RDM 3.2 Table 5.1):**

| Test | Standard | KS/EN Equivalent | Transitional Notes |
|------|----------|-----------------|-------------------|
| Particle Size Distribution (sieving) | BS EN ISO 17892-4 | KS where available | Replaces BS 1377-2 |
| Particle Size Distribution (sedimentation) | BS EN ISO 17892-4 | KS where available | Hydrometer analysis |
| Liquid Limit (cone penetrometer) | BS EN ISO 17892-12 | KS where available | Replaces BS 1377-2 |
| Plastic Limit | BS EN ISO 17892-12 | KS where available | |
| Linear Shrinkage | BS 1377-2 | No EN equivalent | BS standard retained |
| Compaction (Standard -- 2.5 kg rammer) | AASHTO T 99 | | AASHTO method retained |
| Compaction (Modified -- 4.5 kg rammer) | AASHTO T 180 | | AASHTO method retained |
| CBR (laboratory) | AASHTO T 193 | | AASHTO method retained |
| Swell (during CBR soak) | AASHTO T 193 | | Measured during 4-day soak |

**Aggregates for GCS (RDM 3.2 Table 6.2):**

| Test | Standard | Notes |
|------|----------|-------|
| Aggregate Crushing Value (ACV) | BS 812-110 | |
| Ten Percent Fines Value (TFV) | BS 812-111 | |
| Los Angeles Abrasion (LAA) | ASTM C131 or ASTM C535 | |
| Flakiness Index (FI) | BS EN 933-3 | EN standard |
| Aggregate Impact Value (AIV) | BS 812-112 | |
| Sodium Sulphate Soundness (SSS) | ASTM C88 / BS EN 1367-2 | Dual reference |
| Water Absorption | BS EN 1097-6 | EN standard |

**Hydraulically Modified and Bound Materials (RDM 3.2 Table 12.1):**

| Test | Standard | Notes |
|------|----------|-------|
| Initial Consumption of Cement (ICC) | BS EN 13286-45 | EN standard |
| Initial Consumption of Lime (ICL) | BS EN 13286-49 | EN standard |
| UCS (cement/lime treated) | BS EN 13286-41 | EN standard; 7-day cure + 7-day soak |
| Indirect Tensile Strength (ITS) | BS EN 13286-42 | EN standard |

### M.2.2 Country-Specific Formulas

No Kenya-specific interpretation formulas. Material testing interpretation uses the same fundamental calculations (CBR as % of standard, PI = LL - PL, etc.) as universal practice. The Kenya-specific aspect is the reference standard used for each test.

### M.2.3 Classification System

Test results are interpreted against RDM 3.3 material specifications (Table 8.8 and Charts GM1-GM13). Kenya material classes use a distinct coding system from Uganda -- see Skill #24 Kenya module for the full G3-G80/GCS/HBS/HIG/HMS classification.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
IF Kenya project:
  1. Identify test standard used (check if BS, KS, EN, or AASHTO)
  2. For each test result:
     a. CBR: Compare against RDM 3.3 Table 4.1 subgrade classes and Table 8.8 material codes
        - Check: was CBR tested at correct density and soak condition?
        - Subgrade CBR: 100% MDD (AASHTO T99), 4-day soak
        - Base/subbase CBR: 95% MDD (AASHTO T180), 4-day soak
     b. Atterberg Limits: Compare against material specification charts (GM1-GM13)
        - Each chart specifies PI and LL limits for the material class
        - Check wet area vs dry area PI limits (some charts differentiate)
     c. Compaction: Verify correct standard used
        - AASHTO T 99 (2.5 kg rammer) for subgrade
        - AASHTO T 180 (4.5 kg rammer) for base/subbase materials
     d. Grading: Compare against chart grading envelopes
  3. Classify material per RDM 3.3 Table 8.8 code system
  4. Flag any test using BS-only standard where KS/EN replacement exists
```

### M.3.2 Professional Judgment (Kenya-Specific)

**KS/EN transition considerations:** Many Kenya laboratories still use BS test equipment and procedures. RDM 3.2 acknowledges this by referencing both BS and EN/ISO standards. The designer should verify which standard was used and note any differences in the test report. For contracting purposes, the current standard at 28 days before tender closing applies.

**Climate-CBR linkage (RDM 3.3 Section 3.4):** All subgrades shall be assessed at 4-day soaked CBR, even in dry areas (rainfall < 500 mm/year). This is a climate resilience measure in the 2025 RDM. In dry areas, higher plasticity materials may be accepted for pavement materials but subgrade CBR must still be soaked.

**Modified vs Standard compaction:** Kenya follows the same distinction as Uganda: Standard Proctor (AASHTO T99, 2.5 kg rammer) for subgrade CBR, Modified AASHTO (T180, 4.5 kg rammer) for base and subbase CBR. This is specified in RDM 3.1 Section 6.3.2 and RDM 3.3 material charts.

### M.3.3 Common Errors (Kenya-Specific)

1. **Reporting CBR tested to BS standard without noting the Kenya requirement for AASHTO T 193.** Kenya uses AASHTO T 193 for CBR testing, not BS 1377-4. Results may differ due to surcharge weight and test procedure differences.
2. **Not distinguishing Standard Proctor from Modified AASHTO compaction.** RDM 3.1 Section 6.3.2 specifies 2.5 kg rammer (Standard, AASHTO T99) for subgrade and 4.5 kg rammer (Modified, AASHTO T180) for base/subbase.
3. **Using unsoaked CBR for wet areas.** RDM 3.3 Section 3.4 requires all subgrades to be assessed at 4-day soaked CBR for climate resilience, even in dry areas.
4. **Omitting swell measurement during CBR soaking.** RDM 3.1 Section 6.3.2 requires swell to be measured during the 4-day CBR soak.
5. **Referencing BS 1377 without checking for BS EN ISO replacement.** Many BS 1377 parts have been superseded by BS EN ISO 17892 series (e.g., Atterberg limits now BS EN ISO 17892-12).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| CBR test standard | AASHTO T 193 | Not specified | No flag | RDM 3.1 Section 6.3.2 |
| Compaction (subgrade) | AASHTO T 99 (2.5 kg) | Not specified | No flag | RDM 3.1 Section 6.3.2 |
| Compaction (base/subbase) | AASHTO T 180 (4.5 kg) | Not specified | No flag | RDM 3.3 Charts |
| CBR soak condition | 4 days soak | Not specified | ASSUMED: Soaked | Climate resilience |
| Atterberg limits standard | BS EN ISO 17892-12 | Not specified | No flag | RDM 3.2 Table 5.1 |
| Grading standard | BS EN ISO 17892-4 | Not specified | No flag | RDM 3.2 Table 5.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source | Error if Outside |
|-----------|-----------|--------|-----------------|
| CBR (subgrade, soaked) | 2-60% | RDM 3.3 Table 4.1 | Below 2% requires improvement; above 60% exceptional |
| PI for G30 material | Max 12 | RDM 3.3 Chart GM8 | Exceeds specification |
| PI for G45 material | Max 10 | RDM 3.3 Chart GM9 | Exceeds specification |
| PI for G80 material | Max 10 | RDM 3.3 Chart GM10 | Exceeds specification |
| Swell (subbase/base) | Max 0.5-1.0% | RDM 3.3 Charts | Excessive swell |
| LAA for G45 | Max 70% | RDM 3.3 Chart GM9 | Aggregate too soft |
| ACV for G80 | Max 35% | RDM 3.3 Chart GM10 | Aggregate too soft |

### M.5.2 Standards Compliance Checks

- Check test report identifies which standard was used (BS, KS, EN, AASHTO)
- Laboratory shall have KENAS calibration (RDM 3.2 Section 2.3)
- Soil classification shall use ESCS (BS EN ISO 14688-2:2018) not AASHTO M 145

### M.5.3 Departures / Relaxations Process

Chief Engineer for Roads approval required for departure from material specifications (RDM 3.3 Section 1.5). The Chief Engineer (Materials) at MTRD provides technical oversight.

---

## M.6 Country-Specific Escalation

| Trigger | Action | Source |
|---------|--------|--------|
| CBR tested unsoaked in wet area (rainfall > 500 mm) | Reject -- retest with 4-day soak | RDM 3.3 Section 3.4 |
| CBR tested at wrong compaction standard | Reject -- retest at correct standard (T99 for subgrade, T180 for base/subbase) | RDM 3.1 Section 6.3.2 |
| Material PI exceeds specification but CBR passes | Flag inconsistency -- high PI with adequate CBR suggests moisture-sensitive material | Professional judgment |
| Swell > 1.0% during CBR soaking | Flag expansive material; treatment or replacement required | RDM 3.3 Chapter 6 |
| Test uses superseded BS standard where EN replacement exists | Note in report; verify results comparable | RDM 3.2 Section 2.5 |
| Laboratory not KENAS accredited | Flag quality concern; recommend retesting at accredited lab | RDM 3.2 Section 2.3 |

---

## M.7 Worked Example -- Kenya

**Scenario:** Interpret test results for a Kenya road project base material: CBR=82, PI=8, LL=28, MDD=2.15 t/m3, OMC=8.2%.

**Step 1: Identify test conditions**
- CBR 82% -- check: at what density and soak condition?
- Assume tested at 95% MDD (AASHTO T180) and 4-day soak (appropriate for base material per RDM 3.3 charts)

**Step 2: Classify against RDM 3.3 Table 8.8 material codes**
- CBR 82% >= 80% --> material meets G80 strength requirement (Chart GM10)
- Check G80 specification (Chart GM10):
  - CBR at 95% MDD (AASHTO T180) and 4 days soak: Min 80% --> PASS (82%)
  - LAA: Max 50% --> need LAA result (not provided -- flag)
  - ACV: Max 35% --> need ACV result (not provided -- flag)
  - PI: Max 10% --> PASS (PI = 8%)
  - Plasticity Modulus: Max 250 --> PM = PI x % passing 0.425 mm (need grading data)

**Step 3: Check Atterberg limits**
- PI = 8, LL = 28 --> Low plasticity material (ESCS: L zone, LL < 35%)
- PI = 8 < Max 10 for G80 --> PASS
- For wet area PI limit: check if Chart GM10 differentiates wet/dry (it does not -- single PI limit of Max 10)

**Step 4: Assess compaction**
- MDD = 2.15 t/m3 at Modified AASHTO (T180) -- reasonable for crushed stone/dense gravel
- OMC = 8.2% -- consistent with a well-graded granular material

**Step 5: Transitional standard check**
- CBR tested to AASHTO T 193 --> correct Kenya standard
- Atterberg limits -- should be tested per BS EN ISO 17892-12 (Kenya standard); if tested to BS 1377-2, results are comparable but note in report

**Conclusion:**
Material meets G80 requirements for CBR and PI. However, LAA and ACV data are missing and must be obtained before confirming G80 compliance (Chart GM10 requires LAA Max 50% and ACV Max 35%). Grading data needed to verify grading envelope compliance and calculate Plasticity Modulus.

**Recommended use:** Base course for traffic classes TC1, TC3, and TC10, and sub-base for TC17 (per RDM 3.3 Table 8.8 G80 application).

---

## M.8 References

1. Kenya RDM 3.2: Materials Field and Laboratory Testing (2025). Ministry of Roads and Transport, Republic of Kenya.
2. Kenya RDM 3.1: Ground Investigations and Material Prospecting (2025). Section 6.3.2, Section 8.3.
3. Kenya RDM 3.3: Pavement Foundation and Materials Design (2025). Table 8.8, Charts GM1-GM13.
4. BS EN ISO 17892-4: Geotechnical investigation and testing -- Laboratory testing of soil -- Part 4: Determination of particle size distribution.
5. BS EN ISO 17892-12: Geotechnical investigation and testing -- Laboratory testing of soil -- Part 12: Determination of liquid and plastic limits.

---

**Module Changelog**
- 0.1 (2026-04-04): Initial Kenya module created from RDM 3.2 (2025). Test standard references verified against PDF tables.
