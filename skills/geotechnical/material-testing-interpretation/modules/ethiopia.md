# Material Testing Interpretation -- Ethiopia Module

> **Parent Skill:** #9 Material Testing Interpretation
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Flexible Pavement Design Manual Vol I - 2013, Appendices I, J, K; ERA Geotechnical Design Manual - 2013, Chapter 2
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Flexible Pavement Design Manual Vol I | 2013 | Appendix I (DCP Testing and Correlation), Appendix J (Probe Penetration Testing), Appendix K (Applicable Test Standards) | Current -- primary test interpretation |
| ERA Geotechnical Design Manual (GDM) | 2013 | Chapter 2, Section 2.2 (Subgrade strength, stiffness, moisture/density) | Current -- subgrade testing context |
| ERA Flexible Pavement Design Manual Vol I | 2013 | Chapter 3, Section 3.3 (Design CBR determination) | Current -- CBR interpretation for design |
| AASHTO T-193 | Current | California Bearing Ratio (CBR) | Primary strength test |
| AASHTO T-99 | Current | Moisture-Density Relations (Standard Proctor) | Subgrade compaction standard |
| AASHTO T-180 | Current | Moisture-Density Relations (Modified AASHTO) | Base/subbase compaction standard |
| AASHTO T-89 | Current | Liquid Limit | Plasticity testing |
| AASHTO T-90 | Current | Plastic Limit and Plasticity Index | Plasticity testing |
| ASTM D 6951 | Current | Standard Test Method for DCP in Shallow Pavement Applications | DCP reference standard |

### M.1.2 Institutional Context

ERA references AASHTO and ASTM test standards throughout all manuals. This is stated explicitly in the preface of both the Pavement Design Manual and the Geotechnical Design Manual. Test results from any accredited laboratory using AASHTO or ASTM methods are accepted. ERA does not reference BS or BS EN ISO test standards for routine pavement materials testing.

ERA Pavement Vol I Appendix K provides the full list of applicable AASHTO/ASTM test designations for Ethiopian road projects.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context.

### M.1.3 Standard Philosophy

ERA's material testing philosophy centres on the California Bearing Ratio (CBR) as the primary strength parameter for pavement design. Soaked CBR is the design standard. The Dynamic Cone Penetrometer (DCP) is used extensively as a rapid field assessment tool, with correlations to CBR provided in Appendix I. Probe penetration testing (Appendix J) provides additional in-situ assessment capability. All test interpretations feed into the subgrade classification (S1-S5) and material specification system (GB1-GC).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table E.9.1: ERA Applicable Test Standards for Pavement Materials (From ERA Pavement Vol I Appendix K) (Verified from PDF)**

| Property | Test Standard | Application |
|----------|--------------|-------------|
| Particle size analysis | AASHTO T-88 | All soils and granular materials |
| Liquid limit | AASHTO T-89 | Plasticity assessment |
| Plastic limit / PI | AASHTO T-90 | Plasticity assessment |
| Soil classification | AASHTO M 145 | Primary classification system |
| Standard Proctor compaction | AASHTO T-99 | Subgrade MDD/OMC |
| Modified AASHTO compaction | AASHTO T-180 | Base/subbase MDD/OMC |
| California Bearing Ratio | AASHTO T-193 | Subgrade and material strength |
| Los Angeles Abrasion | AASHTO T-96 | Aggregate durability |
| Aggregate Crushing Value | BS 812 Part 110 | Aggregate strength (ERA references BS for this test) |
| Flakiness Index | BS 812 Section 105.1 | Aggregate shape |
| 10% Fines Value (TFV) | BS 812 Part 111 | Aggregate strength |
| Soundness (sodium sulphate) | AASHTO T-104 | Aggregate durability |

**Note:** ERA primarily uses AASHTO/ASTM standards but references certain BS standards for aggregate testing (ACV, TFV, Flakiness). This is a historical convention, not a departure from AASHTO.

### M.2.2 ERA DCP Testing and CBR Correlation

ERA Pavement Vol I Appendix I provides the DCP-CBR correlation for Ethiopian conditions. The DCP (Dynamic Cone Penetrometer) uses an 8 kg hammer falling 575 mm, driving a 60-degree cone through the soil. The penetration rate (mm/blow) is correlated to CBR.

**DCP-CBR correlation formula (From ERA Appendix I) (Verified from PDF):**

log10(CBR) = 2.81 - 1.32 x log10(DN)

Where:
- CBR = California Bearing Ratio (%)
- DN = DCP penetration rate (mm/blow)

**Table E.9.2: DCP Penetration Rate to CBR Correlation (Derived from ERA Appendix I formula)**

| DCP Rate (mm/blow) | Estimated CBR (%) | ERA Subgrade Class |
|--------------------|-------------------|-------------------|
| 2 | 100+ | S5 (30%+) |
| 5 | 45 | S5 (30%+) |
| 10 | 20 | S4 (15-29%) |
| 15 | 13 | S3 (8-14%) |
| 20 | 9 | S3 (8-14%) |
| 30 | 5.5 | S2 (5-7%) |
| 40 | 4 | S1 (2-4%) |
| 60 | 2.5 | S1 (2-4%) |
| 80 | 1.8 | Below S1 |

**Note:** DCP-CBR correlations are approximate. ERA requires laboratory CBR for design purposes; DCP provides rapid field screening and verification.

### M.2.3 ERA CBR Testing Requirements

| Material Application | Compaction Standard | Soaking Condition | CBR Requirement |
|---------------------|--------------------|--------------------|-----------------|
| Subgrade (in-situ) | AASHTO T-99 (Standard Proctor) | 4-day soaked | Design CBR for S1-S5 classification |
| Selected subgrade / capping (GC) | 93% Modified AASHTO | 4-day soaked | CBR >= 15% |
| Granular subbase (GS) | 95% Modified AASHTO | 4-day soaked | CBR >= 30% |
| Natural gravel base (GB2, GB3) | 98% Modified AASHTO | 4-day soaked | CBR >= 80% |
| Crushed stone base (GB1) | 98% Modified AASHTO | 4-day soaked | CBR >= 80% |

### M.2.4 Cross-Country Comparison: Test Regimes

| Feature | ERA (Ethiopia) | MoWT (Uganda) | RDM (Kenya) |
|---------|---------------|---------------|-------------|
| Primary strength test | CBR (AASHTO T-193) | CBR (AASHTO T-193) | CBR (BS 1377) |
| Field rapid assessment | DCP (Appendix I) | DCP (TRL correlation) | DCP (RDM 3.1 Section 6.3) |
| DCP-CBR formula | log CBR = 2.81 - 1.32 log DN | log CBR = 2.48 - 1.057 log DN (TRL) | Similar TRL-derived |
| Compaction standard (subgrade) | AASHTO T-99 (Standard Proctor) | AASHTO T-99 (Standard Proctor) | BS 1377-4:1990 |
| Compaction standard (base) | AASHTO T-180 (Modified AASHTO) | AASHTO T-180 (Modified AASHTO) | BS 1377-4:1990 |
| Aggregate durability | AASHTO T-96 (LA Abrasion) | AASHTO T-96 (LA Abrasion) | BS standards |
| Probe penetration | Appendix J (ERA-specific) | Not standard | Not standard |
| Classification test | AASHTO M 145 | AASHTO M 145 | BS EN ISO 14688-2 (ESCS) |

### M.2.5 ERA Probe Penetration Testing

ERA Pavement Vol I Appendix J describes probe penetration testing as a supplementary in-situ assessment method. The probe penetration test uses a standard probe driven into the ground to assess layer stiffness variations with depth. Results are used to identify layer boundaries and relative stiffness changes, not to derive absolute CBR values.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic

**Step 1: Determine test programme based on material application**
- Subgrade: AASHTO classification (T-88, T-89, T-90), Proctor compaction (T-99), soaked CBR (T-193).
- Base/subbase: As above plus Modified AASHTO compaction (T-180), grading analysis, LA Abrasion (T-96), ACV, TFV.
- Special soils: Additional tests per ERA GDM Section 2.3 (swell, collapse potential, consolidation).

**Step 2: Interpret CBR results**
- Compare soaked CBR to ERA subgrade classes S1-S5 (see Skill #10 Ethiopia module).
- For multiple test results, use lower 10th percentile method for design CBR (ERA Section 3.3).

**Step 3: Interpret DCP results (field verification)**
- Apply DCP-CBR correlation: log10(CBR) = 2.81 - 1.32 x log10(DN).
- Compare DCP-derived CBR with laboratory CBR for consistency.
- If DCP and lab CBR disagree by more than one subgrade class: investigate further.

**Step 4: Assess material quality for pavement layers**
- Check CBR against minimum requirements for intended layer (GC >= 15%, GS >= 30%, GB >= 80%).
- Check grading against Tables 6-1 to 6-7 (see Skill #24 Ethiopia module).
- Check PI against limits for intended material code.

> Next in pipeline: See Skill #10 Ethiopia module for subgrade classification from design CBR.

### M.3.2 Professional Judgment

- ERA's DCP-CBR correlation (Appendix I) has a different coefficient from the TRL correlation used in Uganda. Always use the ERA-specific formula for Ethiopian projects.
- Volcanic soils in Ethiopia can give misleadingly high CBR values when tested at natural moisture content. Always test at soaked condition for design.
- Laterite soils may degrade during compaction testing -- compare field and laboratory results for consistency.
- When DCP refusal occurs at shallow depth, investigate for cemented layers, rock, or compacted fill.

### M.3.3 Common Errors

1. **Using the TRL/Uganda DCP-CBR formula instead of ERA Appendix I.** The ERA formula (log CBR = 2.81 - 1.32 log DN) differs from the TRL formula (log CBR = 2.48 - 1.057 log DN). Using the wrong formula produces materially different CBR estimates.
2. **Testing subgrade CBR at Modified AASHTO instead of Standard Proctor.** ERA specifies T-99 (Standard Proctor) for subgrade, T-180 (Modified AASHTO) for base and subbase. Using the wrong compaction standard invalidates the CBR result.
3. **Accepting unsoaked CBR for pavement design.** ERA requires 4-day soaked CBR for all pavement design. Unsoaked CBR overestimates in-service strength.
4. **Not checking aggregate durability for base materials.** CBR alone is insufficient -- base materials must also meet LA Abrasion, ACV/TFV, and soundness requirements.

---

## M.4 Country-Specific Defaults

| Parameter | Default Value | Flag Text | Source |
|-----------|--------------|-----------|--------|
| CBR soaking period | 4 days | "STANDARD: 4-day soaked CBR per ERA requirements." | AASHTO T-193 / ERA |
| Subgrade compaction | Standard Proctor (AASHTO T-99) | "STANDARD: T-99 for subgrade per ERA practice." | ERA Pavement Vol I |
| Base/subbase compaction | Modified AASHTO (AASHTO T-180) | "STANDARD: T-180 for base/subbase per ERA practice." | ERA Pavement Vol I |
| DCP-CBR formula | log CBR = 2.81 - 1.32 log DN | "STANDARD: ERA Appendix I correlation." | ERA Pavement Vol I Appendix I |
| Minimum CBR for subgrade | 2% (S1 lower bound) | "STANDARD: Below CBR 2%, subgrade improvement required." | ERA Table 3-1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Valid Range | Flag If Outside |
|-----------|------------|-----------------|
| Subgrade CBR (soaked) | 1-100% | CBR <2% requires improvement; CBR >60% unusual for natural soils |
| Base material CBR (soaked) | 30-150% | CBR <80% fails GB standard; CBR >120% verify test procedure |
| DCP penetration rate | 1-100 mm/blow | DN <1 indicates rock; DN >100 indicates very weak material |
| Proctor MDD | 1400-2400 kg/m3 | Values outside range: verify test procedure and material type |
| Optimum moisture content | 5-35% | OMC >25% indicates highly plastic soil |
| LA Abrasion loss | 5-60% | Loss >45% fails ERA aggregate specification |
| ACV | 10-40% | ACV >30% fails ERA specification for base material |

### M.5.2 Standards Compliance

- All test results shall reference AASHTO or ASTM test designations per ERA convention.
- CBR for subgrade shall be at Standard Proctor compaction (T-99).
- CBR for base and subbase shall be at Modified AASHTO compaction (T-180).
- DCP correlation shall use ERA Appendix I formula (not TRL/Uganda formula).

### M.5.3 Departures Process

Any departure from ERA test standards or interpretation methods requires written approval through the regional directorate to the Quality Assurance, Road Inspection and Safety Directorate (ERA GDM Section 2.3).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Action |
|---------|--------|--------|
| CBR <2% at any test location | Below minimum subgrade class S1 -- subgrade improvement required | Escalate for subgrade treatment design (lime/cement stabilization, removal and replacement) |
| DCP-CBR and lab CBR disagree by >1 subgrade class | Inconsistent results may indicate testing error or variable conditions | Investigate cause; additional testing required; escalate to senior geotechnical engineer |
| LA Abrasion >45% for proposed base material | Material does not meet ERA durability requirements | Reject material or investigate alternative sources; escalate |
| Swell pressure >50 kPa in subgrade test | Expansive soil requiring special treatment per ERA GDM 2.3.1 | Escalate to senior geotechnical engineer; subgrade treatment design required |
| CBR results show high variability (CV >40%) | Heterogeneous subgrade requiring subsection analysis | Subdivide alignment into uniform sections; escalate for design approach |

---

## M.7 Worked Example

### CBR and DCP Interpretation for Awash-Mille Highway

**Project:** Awash to Mille highway rehabilitation, test location km 120+500 (Afar region, arid climate).

**Laboratory Results (sample from 0.5 m depth):**
- AASHTO Classification: A-2-6 (2) (silty clayey gravel)
- Standard Proctor MDD: 1,850 kg/m3 at OMC 14.5%
- 4-day soaked CBR at 100% T-99: 11%

**DCP Field Results (same location):**
- Average penetration rate: 18 mm/blow (depth 0-800 mm)

**Step 1: Interpret laboratory CBR**
- CBR = 11% at Standard Proctor.
- ERA subgrade class: S3 (CBR 8-14%).
- Adequate for pavement design without subgrade improvement.

**Step 2: Interpret DCP results**
- Apply ERA Appendix I: log10(CBR) = 2.81 - 1.32 x log10(18) = 2.81 - 1.32(1.255) = 2.81 - 1.657 = 1.153.
- CBR from DCP = 10^1.153 = 14.2%.
- DCP-derived subgrade class: S3 (CBR 8-14%).

**Step 3: Compare lab and DCP**
- Lab CBR = 11%, DCP-derived CBR = 14.2%. Both classify as S3.
- Results are consistent -- proceed with S3 for this section.

**Step 4: Check for special conditions**
- A-2-6 classification: moderate plasticity, not typically expansive.
- Arid region: check for collapsible soils (aeolian deposits per ERA GDM 2.3.3).
- No evidence of collapsibility from DCP profile (no sudden penetration increase).

**Result:** Subgrade class S3, design CBR 11%. No special treatment required at this location.

> **All outputs are preliminary/screening level.** Verify test interpretation against full laboratory programme and ERA Pavement Vol I requirements.

---

## M.8 References

| Reference | Citation |
|-----------|----------|
| ERA Pavement Vol I App I | Ethiopian Roads Authority, *Flexible Pavement Design Manual Vol I*, 2013, Appendix I: DCP Testing and Correlation to CBR. DCP-CBR formula and field procedure. |
| ERA Pavement Vol I App J | Ethiopian Roads Authority, *Flexible Pavement Design Manual Vol I*, 2013, Appendix J: Probe Penetration Testing. Supplementary in-situ assessment. |
| ERA Pavement Vol I App K | Ethiopian Roads Authority, *Flexible Pavement Design Manual Vol I*, 2013, Appendix K: Applicable Test Standards. Full list of AASHTO/ASTM test designations. |
| ERA Pavement Vol I Ch 3 | Ethiopian Roads Authority, *Flexible Pavement Design Manual Vol I*, 2013, Chapter 3: Subgrade. Section 3.3 (Design CBR method). |
| ERA GDM Ch 2 | Ethiopian Roads Authority, *Geotechnical Design Manual*, 2013, Chapter 2: Pavement Subgrade. Section 2.2 (Strength, stiffness, moisture/density). |
| AASHTO T-193 | Standard Method of Test for The California Bearing Ratio (CBR). |
| AASHTO T-99 | Standard Method of Test for Moisture-Density Relations (Standard Proctor). |
| AASHTO T-180 | Standard Method of Test for Moisture-Density Relations (Modified AASHTO). |
| AASHTO T-96 | Standard Method of Test for Resistance to Degradation by Los Angeles Machine. |
