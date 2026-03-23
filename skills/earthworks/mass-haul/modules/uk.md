# Mass Haul -- UK Module

> **Parent Skill:** #27 Mass Haul
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB, SHW Series 600 (Earthworks)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| SHW Series 600 | Current | Earthworks classification -- relevant for material movement | Current |
| NEC/ICE Conditions of Contract | Various | Free haul and overhaul definitions | Contract-specific |
| DMRB CD 622 | Current | Managing Geotechnical Risk | Current |

### M.1.2 Institutional Context

UK mass haul methods are universal. Contract conditions (typically NEC or ICE) define free haul distances and overhaul payment mechanisms. National Highways requires Materials Management Plans under the CL:AIRE framework for material reuse.

### M.1.3 Standard Philosophy

UK mass haul is governed by the same universal principles as elsewhere. The key UK-specific considerations are: (a) the waste hierarchy (Waste Framework Directive) -- reuse is preferred over disposal, (b) CL:AIRE Materials Management Plans for on-site material reuse, (c) contaminated land protocols, and (d) SHW Series 600 material classification determining which material can be placed where.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UKM.1: Typical UK Free Haul Distances**

| Contract Type | Typical Free Haul Distance | Notes |
|---------------|---------------------------|-------|
| NEC contracts (National Highways) | 200 m | Standard for trunk roads |
| ICE contracts (local authority) | 200 - 300 m | Varies by authority |
| Large infrastructure (HS2, etc.) | 500 m | Major projects |

**Source:** Typical UK contract conditions. Always verify with actual contract documents.

### M.2.2 Country-Specific Formulas

No UK-specific formulas. Mass haul methods are universal.

### M.2.3 Classification System

SHW Series 600 classification (see Skill #26 UK module, Table UKE.1) determines material acceptability for different fill applications. Mass haul analysis must consider that not all cut material may be suitable for all fill locations -- Class 1 material cannot be placed where Class 2 is specified.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Determine free haul distance
  +-- Check contract (NEC/ICE) for specified distance
  +-- Default: 200m for trunk roads

Step 7 (UK): Borrow and spoil considerations
  +-- Surplus material: Apply waste hierarchy (reuse > recycle > dispose)
  +-- Materials Management Plan (CL:AIRE) required for on-site reuse
  +-- Contaminated material: Separate handling required
  +-- Spoil to licensed facility if cannot be reused
```

### M.3.2 Professional Judgment (UK-Specific)

**The waste hierarchy is legally binding in the UK.** Earthworks planning must demonstrate that the waste hierarchy has been considered. Simply spoiling surplus material without considering reuse options is non-compliant. This makes mass haul optimization not just an economic exercise but a regulatory requirement.

**Materials Management Plans enable cost savings.** Under CL:AIRE, excavated material that meets the Definition of Waste Code of Practice can be reused on-site without being classified as waste. This avoids landfill tax (currently significant in the UK) and tip charges. Mass haul optimization that maximises on-site reuse directly reduces waste costs.

**SHW classification constrains mass haul solutions.** Not all cut material can be placed in all fill locations. If a fill zone requires Class 2 (selected granular) but the available cut is Class 6 (cohesive), the material cannot be directly used. Mass haul must consider material compatibility.

### M.3.3 Common Errors (UK-Specific)

1. **Treating all surplus as spoil without considering the waste hierarchy.** UK law requires consideration of reuse before disposal.
2. **Not preparing a Materials Management Plan.** Without a CL:AIRE MMP, on-site material movement may trigger waste regulations.
3. **Ignoring material classification in mass haul.** Moving Class 6 material to a zone specified as Class 2 creates a compliance problem.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Free haul distance | 200 m | Contract not specified | ASSUMED: Free haul 200m (typical UK trunk road). Verify with contract. | Common NEC contract value |
| Overhaul unit | m3-station (500m) | Contract not specified | ASSUMED: Overhaul per m3-station. Verify with contract. | Common measurement |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Free haul distance | 100 | 500 | m | Contract | Warn if outside typical UK range |

### M.5.2 Standards Compliance Checks

- **Check:** Waste hierarchy considered for surplus material
- **Standard:** Waste Framework Directive, Environmental Protection Act 1990
- **Pass condition:** Reuse options documented before disposal
- **Fail action:** NOTE -- Waste hierarchy not demonstrated. Document reuse considerations for surplus material.

### M.5.3 Departures / Relaxations Process

Not applicable for mass haul methods. Contract conditions govern free haul and overhaul definitions.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Spoil volume > 1,000 m3 | Waste management and landfill tax implications | SENIOR REVIEW -- Spoil [X] m3. Apply waste hierarchy. Assess reuse options before disposal. CL:AIRE MMP recommended. |
| Contaminated material in cut | Environmental and regulatory concern | SENIOR REVIEW -- Potential contamination at stations [X-Y]. Separate handling required. Environmental assessment needed. |
| No Materials Management Plan | Regulatory risk | NOTE -- Materials Management Plan not in place. On-site material reuse may trigger waste regulations without CL:AIRE MMP. |

---

## M.7 Worked Example -- UK

### Example: Five-Station Mass Haul on A-road Improvement

**Source:** Typical UK mass haul using universal methods with UK contract context.

**Given:**
- Road: A-road improvement scheme (southern England)
- Free haul distance: 200 m (NEC contract)
- Same data as Uganda example for comparison:
- Net volumes: +200, +150, -100, -300, +50 m3 at 100m intervals

**Solution:**

Mass ordinate calculation identical to Uganda example:

| Station | Chainage | Net Volume (m3) | Mass Ordinate (m3) |
|---------|----------|-----------------|--------------------|
| 1 | 0+000 | -- | 0 |
| 2 | 0+100 | +200 | 200 |
| 3 | 0+200 | +150 | 350 |
| 4 | 0+300 | -100 | 250 |
| 5 | 0+400 | -300 | -50 |
| 6 | 0+500 | +50 | 0 |

**UK-specific considerations:**
- Final mass ordinate = 0 -- balanced, no spoil. Waste hierarchy satisfied (no waste generated).
- Cut material must be classified per SHW Series 600 before placement as fill.
- Materials Management Plan (CL:AIRE) should be prepared to enable on-site reuse without waste classification.
- All cut material to be tested and assigned to SHW Class (1, 2, or 6) before placement.

**Result:**
Same volumes as Uganda example. UK adds: SHW classification requirement, CL:AIRE MMP recommendation, waste hierarchy compliance note.

NOTE -- Materials Management Plan (CL:AIRE) recommended for this project to enable on-site material reuse without waste classification.

NOTE -- All cut material to be classified per SHW Series 600 before placement. Test samples at each cut station.

---

## M.8 References

1. Specification for Highway Works, Series 600 -- Earthworks.
2. CL:AIRE, *Definition of Waste: Development Industry Code of Practice*, Version 2.
3. Waste Framework Directive (2008/98/EC) as implemented in UK law.
4. NEC Engineering and Construction Contract -- Schedule of Cost Components.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- UK free haul conventions, waste hierarchy, CL:AIRE MMP context. Knowledge-based module (no local DMRB document available). |
