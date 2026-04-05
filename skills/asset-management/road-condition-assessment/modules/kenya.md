# Road Condition Assessment -- Kenya Module

> **Parent Skill:** Skill #56 Road Condition Assessment
> **Country/Jurisdiction:** Kenya
> **Standards:** RDM 5.1 (2025) Pavement Condition Surveys, Kenya Roads Board Survey Guidelines
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| RDM 5.1 Pavement Condition Surveys | 2025 | Ch 4 Condition Rating Criteria (Tables 4.6-4.10), Ch 5 Survey Categories (Tables 5.1-5.4), Ch 7 Detailed Surveys, Ch 8 Testing Methods | Current |
| Kenya Roads Board Survey Guidelines | Current | Network survey methodology, condition survey coordination | Current |
| RDM 5.2 Pavement Maintenance, Rehabilitation and Overlay Design | 2025 | Ch 6 Pavement Evaluation, Ch 7 Criteria for Maintenance and Rehabilitation | Current (cross-reference) |

### M.1.2 Institutional Context

**KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A, B, and C roads, approximately 22,000 km). Conducts condition surveys on the national network using both automated survey equipment (roughness profilers, FWD) and visual condition surveys. KeNHA has the most developed condition monitoring capability among Kenyan road authorities.

**KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class D and E roads, approximately 134,000 km). Condition surveys are predominantly visual (walk-through VCS) due to limited automated survey equipment. KeRRA covers the largest network by length but with lower survey capacity.

**KURA (Kenya Urban Roads Authority):** Manages urban roads in cities and municipalities (approximately 9,000 km). Urban road condition assessment includes pavement distress plus additional considerations (utility cuts, drainage, pedestrian infrastructure).

**County Governments:** Manage county roads devolved under the 2010 Constitution. Survey capacity varies significantly between counties. Many counties rely on visual assessment by county road engineers.

**Kenya Roads Board (KRB):** Coordinates road management policy across KeNHA, KeRRA, KURA, and counties. Administers the Road Maintenance Levy Fund (RMLF) from fuel levy. KRB sets survey guidelines and reporting standards that all road authorities follow.

**Ministry of Roads and Transport (MoRT):** Sets national road standards including the RDM series. The Materials Testing and Research Division provides technical oversight for condition survey methodology.

### M.1.3 Standard Philosophy

Kenya road condition assessment per RDM 5.1 uses a structured system of severity ratings (1-5 scale) and extent ratings (1-5 scale) for each defect type. The Deterioration Index (DI = Severity x Extent) quantifies individual defects, and the Pavement Condition Index (PCI) provides an overall composite score (0-100%, where 100% = new pavement). RDM 5.1 distinguishes four survey categories: network management, maintenance/rehabilitation design, compliance, and special investigations. Kenya uses IRI for roughness assessment with PSR/PSI derived from IRI, alongside the PCI from visual surveys. The approach is context-sensitive, recognising that survey methods should match the purpose and available resources.

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Condition Rating System (RDM 5.1)

**Severity Rating (Table 4.6):**

| Severity Rating | Description |
|----------------|-------------|
| 1 | Slight: Noticeable but no effect on structural integrity or functionality |
| 2 | Mild: Clearly visible but slightly affects pavement performance |
| 3 | Moderate/Warning: Notable distress, starting to negatively affect functionality and structural integrity |
| 4 | Severe: Major or significant defects, evidence of major structural issues requiring immediate intervention |
| 5 | Critical/Very Severe: Extreme level of deterioration posing safety risks and critical pavement damage |

**Extent Rating (Table 4.7):**

| Extent Rating | Percentage of Length Affected | Description |
|--------------|------------------------------|-------------|
| 1 | 0 - 10 | Isolated, or sporadic occurrence |
| 2 | 10 - 20 | Scattered, but no regular occurrence |
| 3 | 20 - 50 | Regularly occurring, but moderate concern |
| 4 | 50 - 80 | Widespread and seriously concerning |
| 5 | 80 - 100 | Critical level of deterioration with extensive occurrence |

**Deterioration Index:** DI = Severity x Extent (maximum 25 per defect type)

### M.2.2 Visual Surface Condition Rating (Table 4.8)

| Rating | Reduction in Serviceability (%) | Condition | Description |
|--------|-------------------------------|-----------|-------------|
| 1 | 0-5 | Excellent | Must be new or like new and fully functional |
| 2 | 5-10 | Good | Nearly new with minor defects or damage requiring minor maintenance |
| 3 | 10-25 | Fair | Defects causing significant reduction in serviceability, functionality and capacity. Substantial additional maintenance or repair is required |
| 4 | 25-50 | Poor | Defects causing significant reduction in serviceability, functionality and capacity. Major maintenance or reconstruction is required |
| 5 | >50 | Very Poor | Beyond restoration via routine maintenance. Reconstruction is required |

### M.2.3 Pavement Condition Index (RDM 5.1 Equations 4.2-4.4)

PCI is calculated from the Surface Condition Rating (SCR):

SCR = [Sum of (I_1 + I_2 + ... + I_k)/k / 25] x 100

PCI = PCI_max - SCR

Where:
- PCI_max = 100% (new pavement)
- I = Defect index (DI = Severity x Extent) for each defect type
- k = Number of defect types considered

**PCI Condition Categories (Table 4.10):**

| PSR | PCI (%) | Condition |
|-----|---------|-----------|
| 1 | < 25 | Very Poor |
| 2 | 25 - 40 | Poor |
| 3 | 40 - 60 | Fair |
| 4 | 60 - 80 | Good |
| 5 | 80 - 100 | Very Good |

### M.2.4 IRI Thresholds for Kenya

**IRI Condition Categories (from RDM 5.1 Figure 4.1):**

| Surface Type | Very Good | Good | Fair | Poor | Very Poor | Unit |
|-------------|-----------|------|------|------|-----------|------|
| New/airport runways | < 1.5 | 1.5-2.0 | - | - | - | m/km |
| Paved (newer) | < 2.5 | 2.5-3.5 | 3.5-6.0 | 6.0-10.0 | > 10.0 | m/km |
| Paved (older) | - | - | < 6.0 | 6.0-10.0 | > 10.0 | m/km |
| Maintained unpaved | - | - | 3.5-4.0 | 4.0-8.0 | > 8.0 | m/km |
| Rough unpaved | - | - | - | 8.0-11.0 | > 11.0 | m/km |

**Notes:**
- IRI thresholds from RDM 5.1 Figure 4.1 cover different surface types and conditions.
- For paved roads in typical Kenya network management, use: Good <4, Fair 4-6, Poor 6-10, Very Poor >10 m/km as practical thresholds.
- Unpaved road IRI thresholds are higher than paved, reflecting inherently rougher surfaces.
- Present Serviceability Index: PSI = 5 - a(IRI) - b(log IRI), where a and b are country-specific coefficients (RDM 5.1 Equation 4.5).

### M.2.5 Survey Frequency and Coverage

**RDM 5.1 Section 3.2 / Table 5.1 Survey Requirements:**

| Survey Type | Frequency | Applicable Roads |
|-------------|-----------|-----------------|
| Traffic and Functional condition surveys | Annually | All road classes |
| Structural condition surveys | Every 4 years | Major roads (paved) |
| Walk-through VCS | Sample 300m every 3-5 km | Network level |
| Roughness (IRI) | Annually for network | Paved roads |
| Deflection testing (FWD) | Every 2-3 years for major roads | High-volume paved roads |
| DCP tests | 1 per 5-10 km | Subgrade assessment |
| Test/trial pits | 1 per 10-20 km | Detailed investigation |

### M.2.6 Deflection Testing Requirements

RDM 5.1 Section 7.5 specifies deflection measurement using FWD (preferred for high-volume roads), Benkelman beam (for sample sections on high-volume or low-traffic roads), and LWD (for low-volume roads). The representative deflection d_90 = d_m + 1.3S (90% confidence, per RDM 5.2 Equation 6.6). CUMSUMS method is used to identify homogeneous sections. Coefficient of variation (CoV) thresholds: <0.20 = good homogeneity, 0.2-0.3 = moderate, >0.3 = poor.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Kenya-specific branching from core Step 2:**
```
Determine road authority and class:
  |-- KeNHA (Class A/B/C) --> IRI profiler data likely available
  |                           FWD deflection data for structural assessment
  |                           Use RDM 5.1 PCI methodology with full defect indices
  |                           Apply paved road IRI thresholds
  |
  |-- KeRRA (Class D/E) --> IRI data may be limited
  |                          Visual survey (VCS) primary method
  |                          Walk-through survey per Table 5.1
  |                          Mix of paved and unpaved -- select correct thresholds
  |
  |-- KURA (Urban roads) --> Visual survey plus urban-specific considerations
  |                           Utility cuts, drainage, pedestrian facilities
  |                           Higher traffic complexity
  |
  +-- County road --> Survey capacity varies
                      Visual survey likely primary method
                      Flag: "County road -- survey capacity may be limited"
```

### M.3.2 Professional Judgment (Country-Specific)

**Kenya's road network is large relative to survey capacity.** The classified road network exceeds 160,000 km, but automated survey equipment is concentrated at KeNHA. KeRRA and county roads rely heavily on visual assessment. Survey data quality varies significantly across the network.

**Overloading is a significant factor on trunk roads.** Kenya's Northern Corridor (Mombasa-Nairobi-Uganda border) carries heavy freight traffic with known overloading issues. Condition assessment should note whether overloading is a known factor, as it affects structural distress interpretation.

**Climate variation affects deterioration patterns.** Kenya ranges from arid/semi-arid (North Eastern, parts of Rift Valley) to humid highlands (Central, Western). Arid regions may show thermal cracking and flash flood damage; humid regions show moisture-related distress. Survey timing should account for seasonal variation.

**Conservative rating approach:** When different condition indicators disagree (e.g., IRI suggests Good but PCI suggests Poor), use the worse category. This ensures maintenance needs are not underestimated.

### M.3.3 Common Errors (Country-Specific)

1. **Applying paved road thresholds to unpaved roads.** Kenya has a large proportion of unpaved roads. IRI thresholds differ significantly -- unpaved Good is roughly equivalent to paved Poor. Always verify surface type before applying thresholds.
2. **Not recording defect location within the cross-section.** RDM 5.1 specifies position notation: Left (L), Centre (C), Right (R), Outer Wheel Path (OWP), Inner Wheel Path (IWP). Position data is critical for diagnosing structural vs surface distress.
3. **Ignoring drainage condition in the assessment.** RDM 5.1 Table 5.1 Item 9 explicitly includes pavement drainage as a condition survey requirement. Blocked drains, poor crossfall, and standing water accelerate pavement deterioration.
4. **Mixing authority responsibilities.** A Class C road is KeNHA, not KeRRA. Misidentifying the responsible authority leads to incorrect survey standards and reporting channels.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Condition rating system | RDM 5.1 PCI (Severity x Extent) | Kenya jurisdiction | ASSUMED: RDM 5.1 Pavement Condition Index methodology. | RDM 5.1 Section 4.3 |
| IRI thresholds | Paved: Good <4, Fair 4-6, Poor 6-10, Very Poor >10 m/km | Kenya paved roads | ASSUMED: Practical IRI thresholds from RDM 5.1 Figure 4.1. | RDM 5.1 Figure 4.1 |
| Survey method | Visual condition survey (VCS) | KeRRA/County road | ASSUMED: Visual survey only (IRI profiling unlikely for rural/county roads). | Equipment availability |
| Sample rate | 300m per 3-5 km | Network-level | ASSUMED: 300m sample section per RDM 5.1 Table 5.1. | RDM 5.1 Table 5.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| IRI (paved) | 0 | 20 | m/km | RDM 5.1 practice | IRI > 12 m/km on paved road is extreme -- verify measurement |
| IRI (unpaved) | 2 | 30 | m/km | RDM 5.1 practice | IRI < 2 on unpaved is unusually smooth -- verify measurement and surface type |
| PCI | 0 | 100 | % | RDM 5.1 Equation 4.4 | PCI outside 0-100 range indicates calculation error |
| Severity rating | 1 | 5 | scale | RDM 5.1 Table 4.6 | Rating outside 1-5 is invalid |
| Extent rating | 1 | 5 | scale | RDM 5.1 Table 4.7 | Rating outside 1-5 is invalid |

### M.5.2 Standards Compliance Checks

- **Check:** Severity and extent recorded for each defect type
- **Standard:** RDM 5.1 Section 4.3
- **Pass condition:** All distress records have severity (1-5) and extent (1-5)
- **Fail action:** NOTE -- Missing severity or extent data. PCI calculation will be incomplete.

- **Check:** IRI thresholds match road surface type
- **Standard:** RDM 5.1 Figure 4.1
- **Pass condition:** Paved thresholds used for paved roads, unpaved thresholds for unpaved roads
- **Fail action:** SENIOR REVIEW -- Wrong IRI threshold set applied. Paved and unpaved thresholds differ significantly.

### M.5.3 Departures / Relaxations Process

RDM 5.1 states that users shall follow standards and seek Ministry approval for any departures. Changes to condition rating methodology should be documented and approved by the Chief Engineer, Materials Testing and Research Division, State Department for Roads.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| IRI > 12 m/km on paved Class A/B road | Extreme roughness for trunk road | SENIOR REVIEW -- IRI exceeds 12 m/km on paved trunk road. Verify measurement. If confirmed, road may be approaching unserviceable condition -- rehabilitation urgent. |
| PCI < 25% on KeNHA road | Very Poor condition on national road | SENIOR REVIEW -- PCI below 25%. Reconstruction likely required. Refer to RDM 5.2 for rehabilitation assessment. |
| No condition data for Class A/B road | Data gap for national trunk road | NOTE -- No condition data available. KRB/KeNHA network survey should include this road. Recommend survey before programming maintenance. |
| Rapid PCI decline (>20% drop in 1 year) | Accelerated deterioration | SENIOR REVIEW -- Rapid condition decline indicates possible structural failure, overloading, or drainage problem. Investigate root cause. |

---

## M.7 Worked Examples -- Kenya

### Example 1: Paved Class B Road Condition Assessment

**Project:** Condition assessment of a 20km section of Kenya Class B road (KeNHA responsibility).

**Given:**
- Road surface: Paved (asphalt concrete)
- IRI from roughness profiler: 5.2 m/km
- Visual condition survey of 300m sample section:
  - Crocodile cracking: Severity 3, Extent 3 (20-50% affected)
  - Rutting: Severity 2, Extent 2
  - Potholes: Severity 3, Extent 1 (isolated)

**Solution:**

Step 1: Calculate Deterioration Index for each defect:
- Crocodile cracking DI = 3 x 3 = 9
- Rutting DI = 2 x 2 = 4
- Potholes DI = 3 x 1 = 3
- Total defect indices: 9 + 4 + 3 = 16, k = 3 defect types

Step 2: Calculate SCR (RDM 5.1 Equation 4.3):
- SCR = [(16/3) / 25] x 100 = [5.33 / 25] x 100 = 21.3%

Step 3: Calculate PCI (RDM 5.1 Equation 4.4):
- PCI = 100 - 21.3 = 78.7%
- PCI 60-80% --> **Good condition** (Table 4.10)

Step 4: IRI classification:
- IRI = 5.2 m/km for paved road --> **Fair condition**

Step 5: Overall condition (conservative -- use worse indicator):
- PCI = Good, IRI = Fair --> **Overall: Fair**
- KeNHA is responsible authority for Class B road

**Result:** Fair condition. Intervention trigger: periodic maintenance approaching. The crocodile cracking at moderate severity indicates fatigue distress developing. IRI of 5.2 m/km confirms ride quality degradation. Refer to RDM 5.2 for maintenance treatment selection. KeNHA should programme this section for detailed investigation (FWD deflection testing per RDM 5.1 Section 7.5).

---

## M.8 References

1. Ministry of Roads and Transport, RDM 5.1 Pavement Condition Surveys, Road Design Manual Volume 5 Part 1, Republic of Kenya, 2025
2. Ministry of Roads and Transport, RDM 5.2 Pavement Maintenance, Rehabilitation and Overlay Design, Road Design Manual Volume 5 Part 2, Republic of Kenya, 2025
3. Kenya Roads Board, Road Inventory and Condition Survey Guidelines (current edition)
4. Sayers, M.W., Gillespie, T.D., Paterson, W.D.O., "Guidelines for Conducting and Calibrating Road Roughness Measurements", World Bank Technical Paper No. 46, 1986
5. TRL Limited, Consultant for Kenya Road Design Manuals review and update (RDM 5.1 Acknowledgements)

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft with RDM 5.1 PCI methodology (severity/extent 1-5 scale, DI=SxE), IRI thresholds from Figure 4.1, survey frequency from Table 5.1, KeNHA/KeRRA/KURA/County institutional context, 1 worked example. |
