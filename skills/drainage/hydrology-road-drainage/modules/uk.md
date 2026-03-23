# Hydrology for Road Drainage -- UK Module

> **Parent Skill:** #29 Hydrology for Road Drainage
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CG 501 (Design of Highway Drainage Systems)
> **Version:** 0.1
> **Status:** Draft -- Knowledge-based (no local DMRB document available)
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CG 501 | Current | Highway drainage design | Current -- not available locally |
| HD 33 (superseded by CG 501) | -- | Surface and sub-surface drainage | Superseded |
| Flood Estimation Handbook (FEH) | 2009+ | Rainfall frequency, flood estimation | Current |

**Engineer review required -- no local DMRB CG 501 document available.** This module is knowledge-based and should be verified against the current DMRB standard before use on UK projects.

### M.1.2 Institutional Context

Highway drainage in the UK is governed by DMRB CG 501 for trunk roads and motorways (managed by National Highways). Local roads may follow local authority standards, which generally reference DMRB principles. The Flood Estimation Handbook (FEH) published by the Centre for Ecology & Hydrology provides the definitive UK rainfall frequency and flood estimation data.

### M.1.3 Standard Philosophy

The UK uses a requirements-based approach (DMRB). CG 501 specifies mandatory requirements ("shall"), advisory clauses ("should"), and formal departures process for non-compliance. Rainfall data comes from the FEH, which provides gridded rainfall data for any UK location. The Modified Rational Method (Lloyd-Davies Method) is the standard approach for highway drainage design. For flood estimation, FEH Statistical and ReFH2 (Revitalised Flood Hydrograph) methods are used.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Return periods (typical UK highway drainage):**

| Structure Type | Design Return Period |
|----------------|---------------------|
| Highway surface water drainage | 1 in 1 year (routine), 1 in 5 year (design) |
| Culverts (minor) | 1 in 100 year + climate change allowance |
| Culverts (major) | 1 in 100 year + climate change allowance |
| SuDS design | 1 in 30 year or 1 in 100 year |

Note: UK uses annual exceedance probability (AEP) terminology (e.g., 1% AEP = 100-year return period) rather than ARI.

**Climate change allowances:** UK design practice requires adding a climate change uplift to rainfall intensity. Typical allowances: +20% to +40% depending on epoch and sensitivity.

### M.2.2 Country-Specific Formulas

**Modified Rational Method (Lloyd-Davies):**

The UK highway drainage design uses the same fundamental Rational Method principle but with FEH rainfall data:

```
Q = C * i * A / 360
```

Same formula as universal, but:
- i is derived from FEH rainfall depth-duration-frequency data for the UK location
- C values may differ from MoWT tables (UK land use and soil conditions)
- Climate change uplift is applied to i

**FEH rainfall estimation:** UK rainfall data is obtained from the FEH Web Service (https://fehweb.ceh.ac.uk/) which provides gridded rainfall statistics for any UK location. This replaces the station-based IDF approach used in East Africa.

**Flood estimation (for larger catchments):**
- FEH Statistical Method: regional growth curves applied to index flood
- ReFH2: Revitalised Flood Hydrograph method (unit hydrograph approach calibrated to UK catchments)

### M.2.3 Classification System

UK roads are classified as:
- Motorways (M-roads)
- Trunk Roads (A-roads, managed by National Highways)
- Principal Roads (A-roads, managed by local authorities)
- Classified Roads (B and C roads)
- Unclassified Roads

Drainage design requirements vary by road classification, primarily affecting the return period and level of service requirements.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 3 (UK): Select return period
  |-- Highway surface drainage: 1 in 1 year routine, 1 in 5 year design
  |-- Culverts: 1 in 100 year + climate change
  +-- Always check against current DMRB CG 501 requirements

Step 5 (UK): Determine rainfall intensity
  |-- Use FEH Web Service for project location
  |-- Obtain depth-duration-frequency data
  |-- Apply climate change uplift per current guidance
  +-- Convert rainfall depth to intensity (I = depth/duration)
```

### M.3.2 Professional Judgment (UK-Specific)

**SuDS (Sustainable Drainage Systems) are a fundamental consideration in UK drainage design.** The UK approach emphasises managing runoff at source through infiltration, attenuation, and water quality treatment, rather than solely conveying flow away from the road. SuDS should be considered for all new road drainage design.

**Climate change is a mandatory design consideration.** UK guidance requires explicit climate change allowances to be applied to design rainfall, typically +20% to +40% depending on the design life and sensitivity of the asset.

**FEH data is significantly more refined than East African IDF data.** The UK has a dense rain gauge network and long records, enabling high-confidence rainfall estimates for any location. This contrasts with the station-based approach in East Africa where interpolation between sparse stations is necessary.

### M.3.3 Common Errors (UK-Specific)

1. **Omitting climate change allowance.** UK design requires explicit climate change uplift to rainfall. This is a mandatory requirement, not optional.
2. **Using overseas C values for UK conditions.** UK soils, land use patterns, and urban development densities differ from East African conditions. Use UK-appropriate C values.
3. **Not considering SuDS.** Planning requirements in England, Wales, and Scotland increasingly require SuDS for new development. Highway drainage design should consider SuDS options.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Climate change uplift | +20% | Central estimate | ASSUMED: +20% climate change uplift applied | Current UK guidance central estimate |
| Rainfall source | FEH Web Service | UK location | No flag | Standard UK rainfall data source |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Climate change uplift | 0 | 40 | % | DMRB / EA guidance | Flag if 0% (likely omitted); warn if > 40% |

### M.5.2 Standards Compliance Checks

- **Check:** Climate change allowance applied to design rainfall
- **Standard:** DMRB CG 501 / EA guidance
- **Pass condition:** Climate change uplift >= 20%
- **Fail action:** SENIOR REVIEW -- No climate change allowance applied. UK design requires explicit uplift.

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Any departure from CG 501 requirements ("shall" clauses) must be formally documented, justified, and approved by National Highways (for trunk roads) or the relevant highway authority.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| CG 501 document not available locally | Cannot verify current requirements | SENIOR REVIEW -- DMRB CG 501 not available for verification. This module is knowledge-based. Verify all requirements against current CG 501 before use. |

---

## M.7 Worked Example -- UK

### Example: Highway Culvert Design Flow (Conceptual)

**Source:** Knowledge-based (no CG 501 available)

**Given:**
- Structure type: Highway culvert
- Road: A-road (trunk road)
- Catchment area: 2.5 hectares
- Location: Southern England
- Soil: Clay (poorly draining)

**Solution (approach):**

1. Obtain FEH rainfall data for the project location grid reference
2. Select 1 in 100 year rainfall depth for duration = Tc
3. Apply +20% climate change uplift
4. Convert to intensity: I = depth * 1.20 / duration
5. Select C for clay soil, gentle slope, grass cover (approximately 0.45-0.55 for UK conditions)
6. Apply Rational Method: Q = 0.00278 * C * I * A

Note: Exact values cannot be calculated without FEH data for the specific location.

**Result:** Approach produces design flow in m3/s, comparable to MoWT method but with FEH rainfall data and climate change uplift.

---

## M.8 References

1. National Highways, *DMRB CG 501: Design of Highway Drainage Systems* (not available locally -- knowledge-based module).
2. Centre for Ecology & Hydrology, *Flood Estimation Handbook (FEH)*, 2009 onwards.
3. CIRIA, *The SuDS Manual (C753)*, 2015.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- knowledge-based, CG 501 not available locally. FEH approach documented. Climate change requirements included. |
