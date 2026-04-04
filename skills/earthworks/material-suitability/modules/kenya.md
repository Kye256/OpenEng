# Material Suitability -- Kenya Module

> **Parent Skill:** #28 Material Suitability
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Standard Specification for Road and Bridge Construction (2025); Kenya RDM 3.3: Pavement Foundation and Materials Design (2025), Chapter 5 (Earthworks), Chapter 8 (Pavement Materials)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Earthworks material requirements, fill acceptance criteria | Current -- mandatory for construction |
| Kenya RDM 3.3 | 2025 | Chapter 5 (Earthworks: Cuttings, Fill Embankments, Slopes), Chapter 8 (Materials Classification, Table 8.8) | Current -- mandatory for design |
| Kenya RDM 3.1 | 2025 | Chapter 8 (Borrow pit investigation) | Current |

### M.1.2 Institutional Context

Material suitability assessment in Kenya follows the RDM 3.3 for design requirements and the Standard Specification for construction acceptance criteria. The RDM provides the design framework (material codes, earthworks design), while the Standard Specification provides the contractual construction requirements (compaction standards, testing frequency, acceptance criteria).

- **KeNHA/KeRRA/KURA/County:** All follow the same Standard Specification for construction requirements.
- **MTRD:** Provides testing services and arbitrates material quality disputes.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

### M.1.3 Standard Philosophy

The Kenya RDM 3.3 takes a strength-based approach to material suitability. Materials are classified by their soaked CBR strength into the G-code system (G3 to G80), with each code having defined requirements for the layer it can be used in. The Standard Specification provides the construction-phase requirements for placing, compacting, and testing materials to ensure they achieve the designed performance.

The 2025 edition introduces a climate resilience philosophy: minimum S3 subgrade for paved roads, more stringent plasticity limits, and mandatory 4-day soaked CBR even in dry areas.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table K.28.1: Kenya Material Suitability by G-Code (from RDM 3.3 Table 8.8 and Charts GM1-GM10)**

| G-Code | Min CBR (4-day soak) | Max PI | Max Swell (%) | Suitable Layer | CBR Test Density |
|--------|---------------------|--------|---------------|----------------|-----------------|
| G3 | 3% | 50 | 3.0 | Embankment fill only | 100% MDD T99 |
| G8 | 8% | 50 | 3.0 | Lower capping (S1 to S2) | 95% MDD T180 |
| G10 | 10% | 30 | 2.5 | Capping (S1/S2, F1) | 95% MDD T180 |
| G14 | 14% | 30 | 1.0 | Capping (S1-S3, F1/F2) | 95% MDD T180 |
| G23 | 23% | 25 | 1.0 | Capping (S2/S3, F2/F3) | 95% MDD T180 |
| G25 | 25% | 15/20 (wet/dry) | 1.0 | Sub-base (TC0.5, TC0.25) | 95% MDD T180 |
| G30 | 30% | 12 | 0.5 | Sub-base/Base (various TC) | 95% MDD T180 |
| G45 | 45% | 10 | 0.5 | Capping/Sub-base/Base (various) | 95% MDD T180 |
| G80 | 80% | 10 | -- | Base (TC1, TC3, TC10) | 95% MDD T180 |

**Table K.28.2: Kenya Earthworks Requirements (from RDM 3.3 Chapter 5)**

**Cuttings (Section 5.2):**
- Material type classification per Table 5.1 (Rock Excavation Characteristics):
  - Very soft rock: UCS 1.7-3.0 MPa (easy ripping)
  - Soft rock: UCS 3.0-10 MPa (hard ripping)
  - Hard rock: UCS 10-20 MPa (very hard ripping)
  - Very hard rock: UCS 20-70 MPa (extremely hard ripping or blasting)
  - Extremely hard rock: UCS > 70 MPa (blasting)
- Cut material suitability for reuse assessed per Section 8.9 material codes
- Cut depth > 5 m requires specific geotechnical study (Section 6.4)

**Slope Batters for Excavated Slopes (Table 5.2):**
| Material | Slope Batter (V:H) |
|----------|-------------------|
| Cohesionless sands | 1:2 |
| Silty sands-silts | 1:1 |
| Eluvial soils (red friable clays) | 1.5:1 (depth < 4 m); 1.5:1 (depth >= 4 m) |
| Weathered rock | 2:1 to 4:1 |
| Sound rock | 5:1 to 10:1 |

**Fill Embankments (Section 5.3):**

| Item | Requirement | Source |
|------|------------|--------|
| Minimum fill material | G3 (CBR >= 3%, LL Max 70, PI Max 50, Swell Max 3.0%) | Chart GM1 |
| Fill placement | Layer thickness max 250 mm (G3), 150-200 mm (higher G-codes) | Charts |
| Compaction (general fill) | 100% MDD (AASHTO T99) | Chart GM1 |
| Compaction (improved subgrade) | 95% MDD (AASHTO T180) | Charts GM2-GM4 |
| Hard material in fill | Not within 600 mm of formation level; placed to depth of 300 mm | Section 5.3.5 |
| Hard material definition | UCS > 7.5 MPa or Mohs hardness >= 5 | Section 5.3.5 |
| Unsuitable material | CBR < 3% soaked, or organic, or highly expansive with swell > 3% | Implied from G3 minimum |

**Stability of Slopes (Section 5.3.4):**

| Material | Embankment Height | Recommended Slope (V:H) |
|----------|-------------------|------------------------|
| Cohesionless sands | h <= 1 m | 1:3 |
| Cohesionless sands | h > 1 m | 1:2 |
| Other materials | h <= 1 m | 1:3 |
| Other materials | 1 m < h < 3 m | 1:2 |
| Other materials | 3 m < h < 10 m | 1:1.5 |

Safety factors for stability:
- Non-critical embankments: minimum 1.25
- Supporting non-critical structures: 1.3
- Bridge approach embankments and critical structures: 1.5
- Soil slopes shall not exceed 40 degrees (Section 5.3.4)

**Table K.28.3: Requirements for Fill and Improved Subgrade Layers (from RDM 3.3 Table 7.5)**

| Layer | Material Code | CBR Requirement | Swell Limit | PI Limit |
|-------|-------------|----------------|-------------|----------|
| General embankment fill | G3 | >= 3% at 100% MDD T99 | Max 3.0% | Max 50 |
| Lower capping (S1 to S2) | G8 | >= 8% at 95% MDD T180 | Max 3.0% | Max 50 |
| Capping (S1/S2 for F1) | G10 | >= 10% at 95% MDD T180 | Max 2.5% | Max 30 |
| Capping (S1-S3 for F1/F2) | G14 | >= 14% at 95% MDD T180 | Max 1.0% | Max 30 |
| Capping (S2/S3 for F2/F3) | G23 | >= 23% at 95% MDD T180 | Max 1.0% | Max 25 |
| Capping (S3-S5 for F2-F4) | G45 | >= 45% at 95% MDD T180 | Max 0.5% | Max 10 |

### M.2.2 Country-Specific Formulas

No Kenya-specific formulas for suitability assessment. Material suitability is a comparison of test results against specification requirements.

### M.2.3 Classification System

Kenya uses the G-code system (G3 to G80) for granular material strength classification, where the number represents the minimum soaked CBR percentage. This differs from Uganda's system in test conditions and specification details. See Skill #24 Kenya module for the complete material classification system including GCS, HIG, HMS, HBS, and BSM codes.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
IF Kenya project:
  1. Obtain material test results (CBR, PI, LL, swell, grading, MDD, OMC) from Skill #9
  2. Classify soil per ESCS (Skill #8)
  3. Compare results against Kenya G-code requirements (highest first):
     +-- CBR >= 80% @ 95% MDD T180? --> G80 candidate (check PI, LAA, ACV)
     +-- CBR >= 45% @ 95% MDD T180? --> G45 candidate (check PI, LAA, ACV, swell)
     +-- CBR >= 30% @ 95% MDD T180? --> G30 candidate (check PI, PM, swell)
     +-- CBR >= 25% @ 95% MDD T180? --> G25 candidate (check PI wet/dry, swell)
     +-- CBR >= 14% @ 95% MDD T180? --> G14 candidate (capping)
     +-- CBR >= 10% @ 95% MDD T180? --> G10 candidate (capping)
     +-- CBR >= 8% @ 95% MDD T180? --> G8 candidate (lower capping)
     +-- CBR >= 3% @ 100% MDD T99? --> G3 (fill only)
     +-- CBR < 3% --> UNSUITABLE (remove and replace)
  4. For each candidate class, verify ALL requirements from the chart (not just CBR)
  5. If material fails on PI but passes CBR:
     a. Consider treatment (lime to reduce PI)
     b. Consider blending with low-PI material
     c. Consider mechanical stabilisation
  6. Assess highest suitable use and recommend borrow for higher layers if needed
  7. DO NOT reference Uganda material codes (G80-Uganda, C1, C2, C3)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Regional material suitability in Kenya:**
- **Lateritic gravels (Central/Western):** Typically S5-S6 soaked, suitable for G30-G45 as natural material; may reach G80 with mechanical stabilisation or blending with crushed aggregate
- **Black cotton soils (Rift Valley, SE Nairobi):** S1 soaked -- UNSUITABLE for fill or pavement layers. Must be removed and replaced, or treated with lime (specialist design required)
- **Red friable clays (Highlands):** S3 soaked -- suitable for G14 capping at best; erodible on steep slopes
- **Coral gravels (Coast):** S5-S6 soaked -- good material for G30-G45; variable quality requires thorough testing
- **Volcanic ash/pumice:** S3-S4 soaked -- caution: MDD < 1400 kg/m3 means CBR classification not valid; must meet GCS-E minimum

**Fill material from cuttings:** RDM 3.3 Section 5.2.2 requires assessment of cut material for reuse as fill, capping, subbase, or even base. The specifications in Section 8.9 charts determine the highest use.

**Minimum S3 for paved foundations:** The 2025 RDM climate resilience measure means that even if natural subgrade is S1 or S2, the improved subgrade must achieve equivalent S3 through capping. Material for capping must meet G10 (F1), G14 (F1/F2), or G23 (F2/F3) requirements.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using fill material with CBR < 3%.** G3 (CBR 3%) is the absolute minimum for Kenya embankment fill. Material below this must be removed and replaced.
2. **Accepting fill material based on CBR alone without checking swell.** G3 allows Max 3.0% swell, G14 allows Max 1.0%, G30-G80 allow Max 0.5%. High-CBR material with excessive swell is not suitable.
3. **Placing hard material (UCS > 7.5 MPa) within 600 mm of formation.** Hard material must be placed at depth >= 300 mm below formation per Section 5.3.5. Maximum particle size within 600 mm of formation is 100 mm.
4. **Applying Uganda fill acceptance criteria to Kenya projects.** Kenya G3 minimum (CBR 3%) differs from Uganda general fill minimum (CBR 5%). The specifications are different standards.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Minimum fill material | G3 (CBR >= 3%) | Not specified | No flag | Chart GM1 |
| Compaction (general fill) | 100% MDD (AASHTO T99) | Not specified | No flag | Chart GM1 |
| Compaction (improved subgrade) | 95% MDD (AASHTO T180) | Not specified | No flag | Charts GM2-GM4 |
| CBR soak condition | 4 days | Not specified | ASSUMED: Soaked | Climate resilience |
| Maximum fill layer thickness | 250 mm (G3); 200 mm (G10-G45) | Not specified | No flag | Charts |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Source | Error if Outside |
|-----------|-----------|--------|-----------------|
| Fill CBR (soaked) | >= 3% | Chart GM1 | Material unsuitable for fill |
| Fill swell | Max 3.0% (G3), Max 1.0% (G14), Max 0.5% (G30+) | Charts | Excessive swell -- treatment or rejection |
| Fill PI | Max 50 (G3), Max 30 (G10/G14), Max 12 (G30) | Charts | Exceeds specification |
| Embankment slope (< 3 m, other materials) | 1:2 | Table 5.4 | Steeper than recommended |
| Embankment slope (3-10 m) | 1:1.5 | Table 5.4 | Steeper than recommended |
| FOS (non-critical) | >= 1.25 | Section 5.3.4 | Below minimum safety factor |
| FOS (bridge approach) | >= 1.5 | Section 5.3.4 | Below minimum safety factor |

### M.5.2 Standards Compliance Checks

- Fill material tested per RDM 3.2 standards
- CBR at correct compaction standard (T99 for fill, T180 for improved subgrade)
- 4-day soak for all CBR tests
- Material classified per ESCS before suitability assessment
- Standard Specification acceptance criteria applied during construction

### M.5.3 Departures / Relaxations Process

Chief Engineer for Roads approval required for departure from Standard Specification requirements. Use of S2 subgrade for unpaved roads is permissible without departure. Use of material below G3 requires removal and replacement -- no departure permitted.

---

## M.6 Country-Specific Escalation

| Trigger | Action | Source |
|---------|--------|--------|
| Material CBR < 3% (soaked) | UNSUITABLE -- remove and replace with suitable material | Chart GM1 |
| Black cotton soil encountered | Remove and replace; or lime treatment with specialist design; S1 soaked classification | Table 4.2, Section 6.7.1 |
| Swell > 3.0% | UNSUITABLE even as fill; likely expansive clay requiring removal | Chart GM1 limit |
| Cut material proposed for fill -- cut depth > 5 m | Specific geotechnical study required before reuse assessment | Section 6.4 |
| Embankment > 3 m on soft ground | Geotechnical design required: stability, settlement, construction sequence | Section 5.3.3, 5.3.4 |
| All available material below G30 for sub-base | Consider hydraulic improvement (HIG series) to upgrade material | RDM 3.3 Section 7.5 |

---

## M.7 Worked Example -- Kenya

**Scenario:** Assess the suitability of excavated material from a road cutting in Central Kenya for use as fill in a nearby embankment. Material properties: PI=18, LL=42, CBR=12 (soaked at 100% MDD T99), MDD=1.75 t/m3, swell=0.8%.

**Step 1: Classify soil per ESCS**
- PI=18, LL=42 --> Intermediate plasticity (I zone: 35-50%)
- Likely a lateritic clay or sandy clay -- plot on ESCS plasticity chart
- ESCS: likely ClI (CLAY of Intermediate Plasticity)

**Step 2: Assess against Kenya G-code requirements (highest first)**

| G-Code | CBR Requirement | CBR Result | PI Limit | PI Result | Swell Limit | Swell Result | Verdict |
|--------|----------------|-----------|----------|-----------|------------|-------------|---------|
| G80 | >= 80% | 12% | Max 10 | 18 | -- | 0.8% | FAIL (CBR) |
| G45 | >= 45% | 12% | Max 10 | 18 | Max 0.5% | 0.8% | FAIL (CBR, PI, swell) |
| G30 | >= 30% | 12% | Max 12 | 18 | Max 0.5% | 0.8% | FAIL (CBR, PI, swell) |
| G25 | >= 25% | 12% | Max 15 (wet) | 18 | Max 1.0% | 0.8% | FAIL (CBR, PI) |
| G14 | >= 14% | 12% | Max 30 | 18 | Max 1.0% | 0.8% | FAIL (CBR) |
| G10 | >= 10% | 12% | Max 30 | 18 | Max 2.5% | 0.8% | PASS |
| G8 | >= 8% | 12% | Max 50 | 18 | Max 3.0% | 0.8% | PASS |
| G3 | >= 3% | 12% | Max 50 | 18 | Max 3.0% | 0.8% | PASS |

**Note:** CBR was tested at 100% MDD T99 (Standard Proctor). For G10 and above, the specification requires CBR at 95% MDD T180 (Modified AASHTO). The CBR at Modified compaction would likely be higher, but the test must be conducted at the correct standard. Recommend retesting at 95% MDD T180 for improved subgrade assessment.

**Step 3: Determine highest suitable use**
- At Standard Proctor compaction: Suitable as G10 (capping for S1/S2 subgrade, foundation class F1)
- If retested at Modified AASHTO: May qualify for G14 (capping for S1-S3, F1/F2)
- NOT suitable for sub-base (G25, G30) due to CBR and PI limitations

**Step 4: Treatment options**
- Lime treatment (2-4%) could reduce PI from 18 to < 12 and increase CBR
- Blending with low-PI natural gravel or crushed stone aggregate
- After treatment: retest to confirm upgraded G-code compliance

**Conclusion:**
Material is suitable as general fill (G3-G8) and potentially as capping (G10) pending Modified AASHTO compaction retest. Not suitable for sub-base or base. Borrow required for sub-base (G30/G45) and base (G80/GCS) layers. Lime treatment could upgrade the material for use as G14 or G23 capping, reducing borrow requirements.

---

## M.8 References

1. Kenya Standard Specification for Road and Bridge Construction (2025). Ministry of Roads and Transport, Republic of Kenya.
2. Kenya RDM 3.3: Pavement Foundation and Materials Design (2025). Chapter 5 (Earthworks), Chapter 7 (Pavement Foundations), Chapter 8 (Materials).
3. Kenya RDM 3.1: Ground Investigations and Material Prospecting (2025). Chapter 8 (Borrow pit investigation).

---

**Module Changelog**
- 0.1 (2026-04-04): Initial Kenya module created from RDM 3.3 Chapter 5 and Standard Specification (2025). Material codes verified against PDF Table 8.8.
