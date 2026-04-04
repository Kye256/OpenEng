# Pavement Rehabilitation -- Kenya Module

> **Parent Skill:** #25 Pavement Rehabilitation
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual (RDM) 5.2: Pavement Rehabilitation (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya RDM 5.2: Pavement Rehabilitation | 2025 | Chapters 2-6 | Current -- mandatory for all classified roads |
| Kenya Standard Specification for Road and Bridge Construction | 2025 | Overlay and reconstruction clauses | Current |

### M.1.2 Institutional Context

Kenya has three road authorities under the Ministry of Roads and Transport (MoRT), plus 47 County Governments. All use the Kenya Road Design Manual:

- **KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A and B).
- **KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class C, D, E, and specialist classes).
- **KURA (Kenya Urban Roads Authority):** Manages urban roads (Class UA, UC, UL).
- **47 County Governments:** Manage county roads under devolved functions.

> Cross-reference: See Skill #13 Kenya module (M.1.2) for full institutional context and road classification.

RDM 5.2 covers pavement maintenance, rehabilitation, and overlay design for all classified roads in Kenya. It was developed alongside RDM 3.4 (new pavement design) to provide a complete pavement lifecycle approach.

---

## M.2 Country-Specific Knowledge

### M.2.1 Kenya Condition Assessment Thresholds (RDM 5.2)

RDM 5.2 defines condition thresholds for determining rehabilitation intervention level:

**Roughness (IRI) Thresholds:**

| IRI Range (m/km) | Condition | Intervention |
|-------------------|-----------|-------------|
| < 4.0 | Good | Routine maintenance only |
| 4.0 - 6.0 | Fair | Preventive treatment (surface dressing, slurry seal) |
| 6.0 - 8.0 | Poor | Rehabilitation required (overlay or partial reconstruction) |
| 8.0 - 12.0 | Very poor | Major rehabilitation (thick overlay or reconstruction) |
| > 12.0 | Failed | Reconstruction required |

**Rutting Thresholds:**

| Rut Depth (mm) | Condition | Intervention |
|-----------------|-----------|-------------|
| < 10 | Good | Routine maintenance |
| 10 - 20 | Moderate | Levelling course + overlay |
| 20 - 30 | Severe | Deep overlay or partial reconstruction |
| > 30 | Failed | Reconstruction required |

**Cracking Thresholds:**

| Cracking Severity | % Area | Intervention |
|-------------------|--------|-------------|
| Hairline/narrow | < 10% | Crack sealing, routine maintenance |
| Moderate (> 3mm width) | 10 - 30% | Overlay with crack relief layer or geogrid |
| Severe (block/alligator) | > 30% | Reconstruction or deep recycling |

**Deflection Thresholds (Benkelman beam or FWD):**

| Deflection (mm) | Condition | Intervention |
|------------------|-----------|-------------|
| < 0.5 | Strong | No structural rehabilitation needed |
| 0.5 - 1.0 | Adequate | Thin overlay (functional) |
| 1.0 - 1.5 | Marginal | Structural overlay required |
| 1.5 - 2.0 | Weak | Thick structural overlay |
| > 2.0 | Failed | Reconstruction required |

### M.2.2 Overlay Design Methods (RDM 5.2 Chapter 4)

RDM 5.2 provides two overlay design approaches:

**Method 1: Deflection-Based Overlay Design**
- Uses Falling Weight Deflectometer (FWD) or Benkelman beam deflection data
- Back-calculates effective structural capacity of existing pavement
- Determines additional structural capacity (overlay thickness) needed for future traffic
- Preferred method when deflection data is available

**Method 2: Condition-Based Overlay Design**
- Uses visual condition survey + DCP data to assess remaining structural life
- Assigns condition factors to each existing layer
- Calculates effective SN of existing pavement
- Determines overlay to make up SN deficit
- Used when deflection equipment is not available

**Asphalt Overlay on Granular Base:**
- Pre-overlay repairs: patch potholes, seal cracks, level depressions
- Levelling course: 20-40 mm AC to restore profile
- Wearing course overlay: thickness per design calculation
- Minimum overlay: 40 mm (single wearing course)

**Asphalt Overlay on Existing Asphalt:**
- Mill existing surface if deformed (rutted, bumpy)
- Tack coat on milled or cleaned surface
- Overlay thickness per design calculation
- Consider reflective cracking mitigation (geogrid, stress-absorbing membrane)

### M.2.3 Reconstruction Triggers (RDM 5.2 Chapter 5)

Reconstruction is required when ANY of the following triggers are met:

| Trigger | Threshold | Rationale |
|---------|-----------|-----------|
| IRI | > 12.0 m/km | Beyond practical overlay correction |
| Rut depth | > 30 mm | Structural failure of base/subbase |
| Cracking | > 30% severe (block/alligator) | Full structural failure |
| Deflection | > 2.0 mm (Benkelman beam) | Inadequate structural capacity |
| Base failure | CBR dropped below specification | Layer has lost structural integrity |
| Subgrade failure | CBR < 3% with standing water | Foundation has failed |

When reconstruction is triggered:
1. Full investigation (DCP, trial pits, lab testing of existing materials)
2. Assess if existing materials can be recycled (in-situ or ex-situ)
3. Design new pavement structure per RDM 3.4 (Skill #21 Kenya module)
4. Consider lime or cement stabilisation of existing base for subbase reuse

### M.2.4 Kenya-Specific Rehabilitation Options

| Option | Application | Kenya Context |
|--------|-------------|---------------|
| Fog spray / rejuvenator | Oxidised surface, no structural distress | Common for aged surface dressings |
| Reseal (surface dressing) | Functional deficiency, adequate structure | Most common KeRRA intervention |
| Slurry seal / microsurfacing | Texture restoration, minor cracking | Urban roads (KURA) |
| Thin AC overlay (40-60 mm) | Moderate structural deficiency | Class A/B rehabilitation |
| Thick AC overlay (60-120 mm) | Significant structural deficiency | Major rehabilitation projects |
| Cold in-place recycling | Existing base can be reprocessed | Growing practice in Kenya, reduces material haul |
| Full reconstruction | Structural failure | Last resort -- most expensive |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 1: Assess existing pavement condition
  |-- Visual survey: cracking, rutting, ravelling, patching
  |-- Roughness: IRI measurement
  |-- Deflection: FWD or Benkelman beam (if available)
  |-- DCP: on existing pavement layers and subgrade
  +-- Drainage condition assessment

Step 2: Check reconstruction triggers (RDM 5.2 Chapter 5)
  |-- IRI > 12.0? --> Reconstruction
  |-- Rutting > 30 mm? --> Reconstruction
  |-- Severe cracking > 30%? --> Reconstruction
  |-- Deflection > 2.0 mm? --> Reconstruction
  |-- Base CBR below specification? --> Investigate further
  +-- If ANY trigger met: STOP -- reconstruction required
      If NO triggers met: proceed to overlay design

Step 3: Determine overlay type
  |-- IRI 4.0-6.0, minor cracking: preventive treatment
  |-- IRI 6.0-8.0, moderate distress: structural overlay
  |-- IRI 8.0-12.0, significant distress: thick structural overlay
  +-- Consider recycling options before conventional overlay

Step 4: Design overlay thickness
  |-- If deflection data: use deflection-based method
  |-- If no deflection data: use condition-based method
  |-- Calculate required overlay thickness
  +-- Specify pre-overlay repairs

Step 5: Specify drainage improvements
  |-- ALWAYS assess drainage alongside rehabilitation
  |-- Many Kenya road failures are drainage-related
  +-- Overlay without drainage improvement = premature failure
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Many Kenya trunk roads (Class A and B) were constructed 20-40 years ago.** The original pavement designs were often based on earlier, less comprehensive standards. Rehabilitation frequently requires substantial structural improvement, not just resurfacing.

**The Northern Corridor (Mombasa-Nairobi-Malaba) carries extremely heavy traffic.** Rehabilitation designs for this corridor should account for overloading and use the higher end of design traffic forecasts.

**Cold in-place recycling is gaining acceptance in Kenya.** KeNHA has successfully used this technique on several trunk road rehabilitation projects. It reduces material haul distances and environmental impact. Engineers should consider recycling before specifying full reconstruction.

**Drainage improvement must accompany rehabilitation.** Many pavement failures in Kenya, particularly in the wet climate zone (Lake Victoria basin, coastal strip), are caused by inadequate drainage rather than traffic loading alone. Overlaying without addressing drainage will result in premature failure of the rehabilitation.

### M.3.3 Common Errors (Kenya-Specific)

1. **Designing overlay without assessing drainage condition.** If failure is drainage-related, overlay alone will not solve the problem.
2. **Using Uganda MoWT Part IV thresholds in Kenya.** Kenya RDM 5.2 has its own condition thresholds -- use these for Kenya projects.
3. **Not checking reconstruction triggers before starting overlay design.** If reconstruction triggers are met, overlay is inappropriate.
4. **Ignoring reflective cracking potential when overlaying cracked surfaces.** Specify crack mitigation measures (geogrid, SAMI, or minimum overlay thickness).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Deflection reference temp | 35 C | Not specified | No flag | Kenya standard practice |
| Overlay design life | 10 years | Class A/B, not specified | ASSUMED: 10-year overlay design life | Common Kenya practice |
| Overlay design life | 7 years | Class C/D/E, not specified | ASSUMED: 7-year overlay design life | KeRRA practice |
| Overlay coefficient a1 | 0.35 | AC overlay | No flag | Standard AC coefficient |
| Minimum overlay | 40 mm | AC overlay | No flag | Practical minimum |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Overlay thickness | 40 | 150 | mm | RDM 5.2 | Warn if < 40 (impractical); warn if > 150 (consider reconstruction) |
| IRI | 0.5 | 25 | m/km | RDM 5.2 | Reject if < 0.5 (measurement error) |

### M.5.2 Standards Compliance Checks

- **Check:** Reconstruction triggers assessed BEFORE overlay design
- **Check:** RDM 5.2 condition thresholds used (not Uganda MoWT Part IV)
- **Check:** Drainage condition assessed alongside pavement condition
- **Check:** Pre-overlay repairs specified before overlay design
- **Check:** If overlay > 100 mm, consider whether reconstruction is more cost-effective

### M.5.3 Departures / Relaxations Process

Departures from RDM 5.2 standard rehabilitation approaches require approval from the relevant authority's Chief Engineer and must be documented with technical and economic justification.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Deflection > 2.0 mm | Structural failure | SENIOR REVIEW -- Investigate subgrade. Reconstruction likely needed. |
| Cracking > 30% with rutting > 20 mm | Combined severe distress | SENIOR REVIEW -- Reconstruction recommended over overlay. |
| No deflection data for Class A/B road | Reduced rehabilitation design reliability | SENIOR REVIEW -- Recommend FWD or Benkelman beam survey before rehabilitation design. |
| Overlay > 120 mm calculated | Very thick overlay | SENIOR REVIEW -- Consider reconstruction or in-place recycling as alternatives. |
| Drainage failure identified | Root cause of distress | NOTE -- Address drainage BEFORE rehabilitation. Overlay without drainage repair will fail prematurely. |

---

## M.7 Worked Example -- Kenya

### Example: Class B Road Rehabilitation

**Given:**
- 30 km section of Class B road (KeNHA) in western Kenya
- Road age: 15 years, last surface treatment 8 years ago
- Condition survey results:
  - Average IRI: 6.5 m/km
  - Maximum rut depth: 15 mm
  - Cracking: 30% of area with moderate severity (3-5 mm width)
  - Ravelling: localised, approximately 10% of area
- Deflection survey (Benkelman beam, corrected to 35 C):
  - Mean deflection: 0.9 mm
  - Standard deviation: 0.25 mm
- DCP: existing base CBR approximately 55% (fair), subgrade CBR 8%
- Future traffic: 4 MCESA over 10-year overlay design life

**Solution:**

**Step 1 -- Condition assessment (RDM 5.2 thresholds):**
- IRI 6.5 m/km: Poor (6.0-8.0 range) -- rehabilitation required
- Rutting 15 mm: Moderate (10-20 mm range) -- levelling course + overlay
- Cracking 30% moderate: At boundary of moderate/severe -- crack mitigation needed
- Deflection 0.9 mm: Adequate to marginal (0.5-1.0 range)

**Step 2 -- Check reconstruction triggers:**
- IRI 6.5 < 12.0: No trigger
- Rutting 15 mm < 30 mm: No trigger
- Cracking 30% moderate: Not severe (block/alligator) -- no trigger (but borderline)
- Deflection 0.9 mm < 2.0 mm: No trigger
- Base CBR 55% > specification: No trigger

**Result: No reconstruction triggers. Overlay is appropriate.**

**Step 3 -- Determine overlay type:**
IRI 6.0-8.0 with moderate cracking: Structural overlay required.
Cracking at 30% moderate: specify geogrid or stress-absorbing membrane for reflective cracking mitigation.

**Step 4 -- Overlay design (deflection-based method):**

RRD = 0.9 + 2 * 0.25 = 1.4 mm

SN_new for 4 MCESA on CBR 8% subgrade (from AASHTO equation, R=90%):
SN_new approximately 3.5 inches

SN_eff from deflection (Appendix methodology with RRD = 1.4 mm):
SN_eff approximately 2.6 inches (pavement has lost capacity from original)

Overlay thickness:
h_overlay = (3.5 - 2.6) / 0.35 * 25.4 = 65 mm

Round to 70 mm (40 mm AC14 wearing course + 30 mm AC20 levelling course).

**Step 5 -- Pre-overlay repairs:**
- Patch all potholes and depressions
- Seal all cracks > 3 mm width
- Level ruts > 15 mm with AC levelling course
- Install geogrid over cracked areas before overlay

**Step 6 -- Drainage assessment:**
- Inspect side drains, culverts, and cross-drainage
- Clear blocked culverts and reshape side drains
- Ensure adequate gradient for water flow
- Repair shoulder erosion before overlay

**Result:**

| Component | Specification | Thickness |
|-----------|--------------|-----------|
| Pre-overlay repairs | Patching, crack sealing, levelling | Variable |
| Geogrid | Over cracked areas (30% of area) | -- |
| Levelling course | AC20 | 30 mm |
| Wearing course | AC14 | 40 mm |
| **Total overlay** | | **70 mm** |

Rehabilitation strategy: 70 mm AC overlay (levelling + wearing) with geogrid for reflective cracking mitigation, pre-overlay patching and crack sealing, and drainage improvements. Estimated overlay design life: 10 years.

---

## M.8 References

1. Kenya Ministry of Roads and Transport, *Road Design Manual Part 5.2: Pavement Rehabilitation*, 2025.
2. Kenya Ministry of Roads and Transport, *Standard Specification for Road and Bridge Construction*, 2025.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- RDM 5.2 rehabilitation methods, Kenya condition thresholds, overlay and reconstruction design |
