# Pavement Rehabilitation -- Ethiopia Module

> **Parent Skill:** #25 Pavement Rehabilitation
> **Country/Jurisdiction:** Ethiopia
> **Standards:** ERA Pavement Rehabilitation and Asphalt Overlay Design Manual (2013)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-05
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| ERA Pavement Rehabilitation and Asphalt Overlay Design Manual | 2013 | Chapters 2-14 (complete manual) | Current -- primary for rehabilitation |
| ERA Flexible Pavement Design Manual Vol I | 2013 | Chapter 10 (Design Catalogue) | Current -- for reconstruction design |
| ERA Site Investigation Manual | 2013 | Pavement investigation methods | Current -- supplementary |

**Note:** The ERA Rehabilitation Manual is a separate publication from the ERA Flexible Pavement Design Manual Vol I. It provides comprehensive guidance on evaluation, diagnosis, and rehabilitation of existing pavements in Ethiopia.

### M.1.2 Institutional Context

ERA is the sole national roads agency responsible for rehabilitation standards for all federal roads. Regional Roads Authorities and Woreda road offices apply the same ERA rehabilitation methodology for their networks.

> Cross-reference: See Skill #13 Ethiopia module (M.1.2) for full institutional context and design class (DC1-DC8) system.

The ERA Rehabilitation Manual was developed with donor support and draws on international practice (AASHTO, TRL, South African) adapted for Ethiopian conditions. It provides a structured approach from data collection through condition assessment, diagnosis, and overlay/reconstruction design.

### M.1.3 Standard Philosophy

The ERA rehabilitation approach follows a systematic diagnostic process: collect data (Chapter 2), evaluate condition (Chapter 3), treat localised defects (Chapter 4), assess structural capacity (Chapter 6), delineate homogeneous sections (Chapter 7), diagnose causes (Chapter 8), and design rehabilitation treatment (Chapters 9-11). Three distinct overlay design methods are provided (empirical, deflection-only, analytical) to accommodate varying levels of data availability and project complexity.

---

## M.2 Country-Specific Knowledge

### M.2.1 Data Collection (Chapter 2)

ERA Chapter 2 specifies data requirements for rehabilitation assessment:

**PMS Branch Records:**
- Road identification and location
- Traffic data (ADT, composition, ESA)
- Previous maintenance and rehabilitation history
- Pavement structure (from construction records or investigation)

**Field Data Requirements:**
- Visual condition survey (cracking, deformation, surface defects)
- Roughness measurement (IRI or similar)
- Deflection testing (Benkelman beam or FWD)
- DCP testing at selected locations
- Trial pit / test pit investigation for layer confirmation
- Laboratory testing of existing materials

### M.2.2 Pavement Evaluation (Chapter 3)

**Condition Survey Methods (Verified from PDF):**

| Assessment Type | Method | Parameters Measured | ERA Reference |
|----------------|--------|--------------------|----|
| Visual survey | Walking survey with standardised forms | Cracking (type, severity, extent), deformation (rutting, shoving), surface defects (ravelling, bleeding, potholes) | Chapter 3, Section 3.2 |
| Roughness | Vehicle-mounted roughness device or rod-and-level | IRI (m/km) or roughness index | Chapter 3, Section 3.3 |
| Deflection | Benkelman beam (standard or modified) or FWD | Maximum deflection, deflection bowl parameters | Chapter 3, Section 3.4 |
| Structural investigation | DCP (Dynamic Cone Penetrometer) | DCP penetration rate (mm/blow) per layer, converted to in-situ CBR | Chapter 6 |
| Destructive testing | Trial pits (test pits) | Layer thicknesses, material condition, moisture content, laboratory CBR/UCS | Chapter 3, Section 3.5 |

**ERA Cracking Classification:**

| Cracking Type | Description | Severity Levels |
|--------------|-------------|-----------------|
| Longitudinal | Along wheel path or between lanes | Fine (<1mm), Medium (1-3mm), Wide (>3mm) |
| Transverse | Across carriageway | Fine, Medium, Wide |
| Block | Interconnected longitudinal and transverse | Fine, Medium, Wide |
| Alligator (crocodile) | Interconnected fatigue cracking | Fine, Medium, Wide |
| Edge | Along pavement edge | Fine, Medium, Wide |

**ERA Surface Deformation Types:**

| Deformation Type | Description | Measurement |
|-----------------|-------------|-------------|
| Rutting | Depression in wheel paths | Rut depth (mm) using straightedge |
| Shoving | Longitudinal displacement of surface | Visual assessment + depth measurement |
| Corrugation | Ripple pattern in surface | Visual assessment + severity rating |
| Heaving | Upward movement (often adjacent to ruts) | Visual assessment |

### M.2.3 Localised Defect Treatment (Chapter 4)

Before overlay design, ERA requires treatment of localised defects:

| Defect | Treatment Method | ERA Reference |
|--------|-----------------|---------------|
| Potholes | Cut out and patch (square edges, tack coat, compact) | Section 4.2 |
| Edge break | Reinstate edge with compacted material | Section 4.3 |
| Wide cracks (>3mm) | Route and seal, or fill with bituminous material | Section 4.4 |
| Bleeding | Apply aggregate to absorb excess binder | Section 4.5 |
| Localised settlement | Level with AC or cold mix | Section 4.6 |

### M.2.4 Structural Measurement (Chapter 6)

**Deflection Testing (Benkelman Beam):**
ERA specifies the standard Benkelman beam test with 80 kN rear axle. The characteristic deflection is calculated as:

```
D_char = D_mean + 2 x SD
```

Where D_mean is the mean deflection for the section and SD is the standard deviation.

**DCP Testing:**
ERA Chapter 6 uses DCP (Dynamic Cone Penetrometer) testing to assess structural capacity of existing pavement layers and subgrade. The DCP penetration rate (mm/blow) is converted to in-situ CBR using the TRL correlation:

```
log10(CBR) = 2.48 - 1.057 x log10(DN)
```

Where DN = DCP penetration rate in mm/blow.

**Falling Weight Deflectometer (FWD):**
Where available, FWD provides more detailed deflection bowl data for back-calculation of layer moduli. ERA Chapter 6 provides guidance on FWD data interpretation for Ethiopian conditions.

### M.2.5 Homogeneous Sections (Chapter 7)

ERA Chapter 7 describes statistical methods for delineating homogeneous sections based on deflection data. Sections with similar deflection characteristics are grouped together for rehabilitation design. Methods include:
- Cumulative sum (CUSUM) analysis of deflection data
- Visual identification of section boundaries from deflection profiles
- Cross-referencing with visual condition survey boundaries and geological changes

### M.2.6 Diagnostic Process (Chapter 8)

ERA Chapter 8 provides a structured approach to diagnosing causes of pavement deterioration:

| Symptom | Possible Cause | Diagnostic Test |
|---------|---------------|-----------------|
| Alligator cracking in wheel paths | Fatigue failure (traffic loading exceeds structural capacity) | Deflection testing, DCP profiling |
| Longitudinal cracking (centre) | Subgrade movement or poor construction joint | Trial pit investigation |
| Transverse cracking at regular intervals | Thermal shrinkage of cemented base | Core extraction, visual assessment |
| Deep rutting (> 20 mm) | Subgrade or subbase deformation | DCP profiling to identify weak layer |
| Surface rutting (< 15 mm) | AC mix instability (binder or temperature) | Core extraction, mix analysis |
| Edge cracking | Inadequate shoulder support | Visual assessment, moisture investigation |

### M.2.7 Overlay Design Methods (Chapter 9)

ERA Chapter 9 provides THREE overlay design methods, each requiring different levels of data and producing different levels of confidence:

**Method 1: Empirical Method**
- Uses visual condition assessment and existing pavement structure data
- Assigns condition factors to each existing layer based on observed distress
- Calculates effective structural capacity of existing pavement
- Determines overlay thickness to meet design traffic requirement
- Least data-intensive; lowest confidence level
- Suitable for lower-class roads (DC6-DC8) where deflection data is not available

**Method 2: Deflection-Only Method**
- Uses characteristic deflection from Benkelman beam or FWD
- Directly relates deflection to required overlay thickness using ERA design curves
- Medium data requirement; medium confidence level
- Suitable for most rehabilitation projects where deflection data is available

**Method 3: Analytical Method**
- Uses full deflection bowl (FWD data) for back-calculation of layer moduli
- Applies multi-layer elastic analysis to determine stresses and strains under design load
- Highest data requirement; highest confidence level
- Suitable for major rehabilitation projects (DC1-DC5 trunk/link roads)

**Cross-Country Comparison: Rehabilitation Methods**

| Feature | ERA (Ethiopia) | MoWT (Uganda) | RDM 5.2 (Kenya) |
|---------|---------------|---------------|------------------|
| Rehabilitation manual | Separate ERA manual (2013) | MoWT Vol 3 Part IV (limited) | RDM 5.2: Pavement Rehabilitation (2025) |
| Overlay methods | 3 methods (empirical, deflection-only, analytical) | Deflection-based (simplified) | 2 methods (deflection-based, condition-based) |
| Deflection equipment | Benkelman beam, FWD | Benkelman beam | FWD, Benkelman beam |
| DCP use | Extensive (Chapter 6) | Standard TRL method | Supplementary to lab CBR |
| Defect catalogue | Yes (Chapter 12, separate classification) | Limited | Referenced in RDM 5.2 |
| Condition classification | Cracking type/severity/extent system | Simplified VCI-based | IRI, rutting, cracking, deflection thresholds |
| Reconstruction trigger | Diagnostic process (Chapter 8) | Deflection exceeds overlay limit | Multiple thresholds (IRI, rut, cracking, deflection) |

### M.2.8 Rehabilitation of Concrete Pavements (Chapter 11)

ERA Chapter 11 covers rehabilitation methods for concrete pavements:

| Technique | Application | Description |
|-----------|------------|-------------|
| Joint repair | Failed joints, spalling | Remove damaged concrete, clean joint, install new sealant |
| Full-depth repair | Localised slab failure | Remove and replace failed slab section; match existing thickness |
| AC overlay on concrete | Functional rehabilitation | Mill or clean concrete surface, apply geotextile interlayer, AC overlay (min 80 mm) |
| Concrete overlay (bonded) | Structural upgrade | Prepare surface, apply bonding agent, place new concrete |
| Concrete overlay (unbonded) | Major structural upgrade | Place separation layer, new concrete slab of designed thickness |

### M.2.9 Defect Catalogue (Chapter 12) and Defect Diagnosis (Chapter 13)

**Chapter 12** provides a visual defect catalogue with photographs and descriptions for standardised identification of:
- Surface cracks (10+ types with severity levels)
- Deformation defects (rutting, shoving, corrugation, depression)
- Surface defects (ravelling, bleeding, stripping, polishing)
- Miscellaneous defects (patching condition, edge deterioration)

**Chapter 13** provides a diagnostic matrix linking observed defects to probable causes and recommended investigation methods. This systematic approach ensures that rehabilitation treats the cause of distress, not just the symptoms.

### M.2.10 Maintenance Techniques (Chapter 14)

ERA Chapter 14 covers routine and periodic maintenance interventions that are less than full rehabilitation:
- Crack sealing (single and multiple cracks)
- Patching (shallow and deep patches)
- Surface dressing (reseal)
- Fog spray and rejuvenation
- Gravel road reshaping and regravelling

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Ethiopia Branch)

```
Step 1: Data collection (ERA Chapter 2)
  |-- Collect PMS records and traffic data
  |-- Conduct visual condition survey (Chapter 3)
  |-- Measure roughness (IRI or equivalent)
  |-- Conduct deflection survey (Benkelman beam or FWD if available)
  |-- DCP testing at selected locations (Chapter 6)
  +-- Trial pit investigation where needed

Step 2: Delineate homogeneous sections (Chapter 7)
  |-- Statistical analysis of deflection data (CUSUM)
  |-- Cross-reference with visual condition and geology
  +-- Group sections with similar characteristics

Step 3: Diagnose cause of deterioration (Chapter 8)
  |-- Match symptoms to probable causes (diagnostic matrix)
  |-- Determine whether failure is traffic-related, moisture-related,
  |   material-related, or construction-related
  +-- This determines the appropriate rehabilitation strategy

Step 4: Determine rehabilitation strategy
  |-- If localised defects only: treat per Chapter 4 + reseal
  |-- If routine maintenance adequate: apply Chapter 14 methods
  |-- If structural deficiency identified: proceed to overlay design
  +-- If catastrophic failure: reconstruction per ERA Vol I Chapter 10

Step 5: Select overlay design method (Chapter 9)
  |-- FWD data available? --> Method 3 (Analytical)
  |-- Benkelman beam data available? --> Method 2 (Deflection-only)
  |-- Visual/DCP data only? --> Method 1 (Empirical)
  +-- For DC1-DC5 roads: Method 2 or 3 preferred

Step 6: Design overlay
  |-- Apply selected method to determine required overlay thickness
  |-- Specify pre-overlay repairs (localised defects, levelling)
  |-- Specify overlay material and construction method
  +-- Consider drainage improvements (Chapter 3 assessment)

Step 7: Specify maintenance plan
  |-- Post-rehabilitation maintenance requirements
  |-- Expected overlay design life
  +-- Monitoring schedule
```

### M.3.2 Professional Judgment (Ethiopia-Specific)

**Many Ethiopian trunk roads were built 15-30 years ago and are due for rehabilitation.** The network expansion under the Road Sector Development Programme (RSDP) means a large proportion of the paved network will reach rehabilitation age within a similar timeframe. Systematic prioritisation is essential.

**Deflection testing capacity in Ethiopia is limited.** FWD equipment is scarce and Benkelman beam surveys require careful execution. For many rehabilitation projects, the empirical method (Method 1) may be the only practical option. Engineers should use Method 1 with conservative assumptions where deflection data is unavailable.

**Ethiopian overloading compounds rehabilitation needs.** The same overloading patterns documented in Section 2.4.2 of the Pavement Vol I accelerate pavement deterioration and increase the rehabilitation traffic loading. Use the "all loaded" ESA factors from Table 2-6 for rehabilitation traffic projections on overloaded corridors.

**Drainage failure is a common root cause.** Side drains, cross-drainage, and shoulder maintenance are often neglected. Rehabilitation designs should always include a drainage assessment and specify drainage improvements where needed. Overlaying without addressing drainage will result in premature failure.

### M.3.3 Common Errors (Ethiopia-Specific)

1. **Designing overlay without diagnosing the cause of failure (skipping Chapter 8).** If the failure is moisture-related, an overlay will not solve the problem. Always complete the diagnostic process.
2. **Using analytical method (Method 3) without FWD data.** Method 3 requires deflection bowl data from FWD; Benkelman beam data alone is insufficient for back-calculation.
3. **Not treating localised defects before overlay.** Potholes, wide cracks, and failed patches must be repaired per Chapter 4 before overlay placement. Overlaying defects leads to premature failure.
4. **Using Kenya RDM 5.2 thresholds for Ethiopian rehabilitation.** ERA has its own condition assessment system. Use ERA Chapter 3 methodology.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Overlay design life | 10 years | DC1-DC5, not specified | ASSUMED: 10-year overlay design life. | Common Ethiopian practice |
| Overlay design life | 7 years | DC6-DC8, not specified | ASSUMED: 7-year overlay design life. | Lower-class road practice |
| Deflection temperature correction | 30 C standard | Not specified | ASSUMED: Corrected to 30 C reference temperature. | ERA standard |
| Design method | Method 2 (deflection-only) | Benkelman beam data available | DEFAULT: Deflection-only method per ERA Chapter 9. | Most common method in Ethiopian practice |
| ESA factor column | All loaded | Rehabilitation on trunk road | ASSUMED: "All loaded" ESA factors per ERA Table 2-6. | Conservative for Ethiopian overloading |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Overlay thickness | 40 | 150 | mm | ERA Chapter 9 | Warn if < 40 mm (impractical); warn if > 150 mm (consider reconstruction) |
| Characteristic deflection | 0.2 | 3.0 | mm | ERA Chapter 6 | Warn if > 2.5 mm (reconstruction likely needed) |
| DCP penetration rate | 1 | 100 | mm/blow | ERA Chapter 6 | Reject if outside expected range for pavement materials |

### M.5.2 Standards Compliance Checks

- **Check:** Diagnostic process (Chapter 8) completed before overlay design
- **Check:** Homogeneous sections delineated (Chapter 7) before analysis
- **Check:** Localised defect treatment specified (Chapter 4) before overlay
- **Check:** Overlay design method appropriate for available data
- **Check:** Drainage assessment included in rehabilitation design
- **Check:** ERA methodology used (not Kenya RDM 5.2 or Uganda MoWT Part IV thresholds)

### M.5.3 Departures / Relaxations Process

Any departure from the ERA Rehabilitation Manual methodology requires written approval through the Quality Assurance, Road Inspection and Safety Directorate at ERA.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Characteristic deflection > 2.5 mm | Severe structural deficiency | SENIOR REVIEW -- Reconstruction likely needed. Overlay may not be cost-effective. |
| Multiple failure mechanisms identified | Complex rehabilitation | SENIOR REVIEW -- Multi-stage rehabilitation may be needed (drainage + structural + functional). |
| No deflection data for DC1-DC5 road | Reduced design confidence | SENIOR REVIEW -- Recommend deflection survey before rehabilitation design. Method 1 (empirical) used with conservative assumptions. |
| Overlay > 120 mm calculated | Very thick overlay | SENIOR REVIEW -- Consider reconstruction or recycling as alternatives. |
| Subgrade CBR < 3% from DCP | Foundation failure | SENIOR REVIEW -- Subgrade improvement required before any overlay. |

---

## M.7 Worked Example -- Ethiopia

### Example: DC4 Trunk Road Rehabilitation, Mekelle-Adigrat Section

**Given:**
- 15 km section of DC4 trunk road in northern Ethiopia (Mekelle to Adigrat)
- Road age: 18 years, last surface treatment 10 years ago
- Condition survey results:
  - Average IRI: 7.2 m/km
  - Maximum rut depth: 18 mm in wheel paths
  - Cracking: 25% of area with moderate alligator cracking in wheel paths
  - Ravelling: 15% of area
- Benkelman beam survey (corrected to 30 C):
  - Mean deflection: 1.1 mm
  - Standard deviation: 0.30 mm
- DCP: existing base CBR approximately 50% (fair), subgrade CBR 7% (S2)
- Future traffic: 6M ESA over 10-year overlay design life (T6)

**Solution:**

**Step 1 -- Data review (Chapter 2):**
Traffic data available, visual survey completed, deflection data available. Sufficient for Method 2 (deflection-only).

**Step 2 -- Homogeneous sections (Chapter 7):**
CUSUM analysis of deflection data identifies the 15 km section as one homogeneous section (consistent deflection pattern).

**Step 3 -- Diagnosis (Chapter 8):**
- Alligator cracking in wheel paths: fatigue failure from traffic loading
- Rutting 18 mm: subgrade/subbase deformation (DCP confirms weak subgrade)
- Ravelling: age-related binder oxidation
- Root cause: combined traffic fatigue and weak subgrade (S2)

**Step 4 -- Rehabilitation strategy:**
Structural deficiency confirmed. Overlay design required. Reconstruction not triggered (deflection < 2.5 mm, cracking < 50%).

**Step 5 -- Overlay design Method 2 (Deflection-only):**

Characteristic deflection:
D_char = 1.1 + 2 x 0.30 = 1.7 mm

Using ERA Chapter 9 deflection-based design curves for T6 traffic (6M ESA):
- D_char = 1.7 mm with T6 traffic: required overlay approximately 90 mm AC

**Step 6 -- Pre-overlay repairs (Chapter 4):**
- Patch all potholes and depressions
- Seal all alligator cracks (apply tack coat + slurry or seal coat)
- Apply levelling course (20-30 mm) in rutted areas
- Clean and prepare existing surface

**Step 7 -- Complete rehabilitation specification:**

| Component | Specification | Thickness/Quantity |
|-----------|--------------|-------------------|
| Pre-overlay repairs | Patching, crack sealing | Variable |
| Levelling course | AC20 base course | 30 mm (in rutted areas) |
| Overlay | AC14 wearing course | 60 mm |
| **Total overlay** | | **90 mm** |

Plus drainage improvements: reshape side drains, clear culverts, repair shoulder erosion.

**Validation:**
- Overlay 90 mm within practical range (40-150 mm)
- Method 2 appropriate for available data (Benkelman beam)
- Diagnosis completed before overlay design
- Pre-overlay repairs specified
- Drainage assessment included

**Result:** 90 mm AC overlay (30 mm levelling + 60 mm wearing) with pre-overlay repairs and drainage improvements. Design life 10 years for T6 traffic (6M ESA).

> **All outputs are preliminary/screening level.** Verify rehabilitation design against ERA Rehabilitation Manual methodology and confirm deflection data with field measurements.

> Cross-reference: See Skill #21 Ethiopia module for traffic class (T6) and design catalogue reference. The rehabilitation traffic loading uses the same T1-T8 classification as new pavement design.

---

## M.8 References

1. Ethiopian Roads Authority, *Pavement Rehabilitation and Asphalt Overlay Design Manual*, 2013, Chapters 2-14.
2. Ethiopian Roads Authority, *Flexible Pavement Design Manual Volume I*, 2013, Chapter 10 (for reconstruction design).
3. Ethiopian Roads Authority, *Site Investigation Manual*, 2013.
4. TRL, *Overseas Road Note 18: A Guide to the Pavement Evaluation and Maintenance of Bitumen-Surfaced Roads in Tropical and Sub-Tropical Countries*, 1999.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-05 | AI draft | Initial draft -- ERA Rehabilitation Manual with three overlay methods (empirical, deflection-only, analytical), defect catalogue, diagnostic process, cross-country comparison |
