# Design Vehicle & Swept Path -- UK Module

> **Parent Skill:** #18 Design Vehicle & Swept Path
> **Country/Jurisdiction:** United Kingdom
> **Standards:** Knowledge-based (no local DMRB design vehicle document available)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Version | Sections Referenced | Status |
|----------|--------------|---------|---------------------|--------|
| Cross-sections and headrooms | CD 127 | Not available locally | Vehicle dimensions for lane width design | Current -- NOT AVAILABLE |
| EU Directive 96/53/EC | --- | 1996 (as amended) | Maximum legal vehicle dimensions | EU law, retained in UK law |

### M.1.2 Institutional Context

UK design vehicle standards are based on EU Directive 96/53/EC (retained in UK law post-Brexit) which sets maximum legal vehicle dimensions. The DMRB standard CD 127 (Cross-sections and Headrooms) uses these dimensions for lane width and headroom design but is not available locally for verification.

UK practice does not use the AASHTO vehicle designation system (P, SU, WB-15 etc.). Instead, vehicles are classified by maximum legal dimensions and regulatory category.

### M.1.3 Standard Philosophy

The UK approach to design vehicles differs from AASHTO/MoWT in several ways:
- **Regulatory basis:** Vehicle dimensions are set by law (EU/UK regulations), not by a design manual
- **Maximum legal dimensions:** The "design vehicle" is effectively the largest vehicle legally permitted on the road type
- **Swept path analysis:** UK practice relies on swept path analysis software (Autodesk Vehicle Tracking is the industry standard) rather than manual turning templates
- **No single "design vehicle table":** Instead, engineers select the critical vehicle for their specific project based on traffic analysis

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UKDV.1: UK Standard Design Vehicles (from knowledge -- NOT PDF-verified)**

| Vehicle Type | Overall Length (m) | Overall Width (m) | Overall Height (m) | Min Turning Radius (m) | Notes |
|---|---|---|---|---|---|
| Passenger car | 4.8 | 1.8 | 1.5 | 5.3 | Typical large car |
| Large rigid (2-axle) | 12.0 | 2.55 | 3.5 | 10.1 | Maximum legal rigid |
| Articulated vehicle (standard) | 16.5 | 2.55 | 4.2 | 12.5 | EU/UK maximum legal length |
| Articulated vehicle (long) | 18.75 | 2.55 | 4.2 | 12.5 | EU maximum with drawbar trailer |
| Bus / coach | 12.0 | 2.55 | 4.2 | 12.0 | Standard single-deck |
| Articulated bus | 18.0 | 2.55 | 4.2 | 12.0 | Bendy bus |

**Source:** Knowledge-based. Values are typical for UK/EU standard vehicles. NOT verified against a local DMRB document. Engineer review required.

**Key UK dimension:** The 16.5m articulated vehicle is the standard design vehicle for UK trunk roads. This is the maximum legal length for a tractor-semitrailer combination under EU/UK regulations.

**Maximum legal widths:**
- General vehicles: 2.55 m
- Refrigerated vehicles: 2.6 m
- Maximum legal height: 4.2 m (no legal maximum in UK, but 4.2m is practical limit for bridge clearances)

### M.2.2 Country-Specific Formulas

No UK-specific formulas for design vehicle dimensions. Swept path analysis in UK practice is performed using software:
- **Autodesk Vehicle Tracking** -- industry standard for UK swept path analysis
- **AutoTURN** (Transoft Solutions) -- alternative package
- **Manual calculation** -- the universal off-tracking formula from SKILL.md can be used for preliminary checks

UK practice does not provide turning templates in the design manual (unlike MoWT).

### M.2.3 Classification System

UK vehicle classification for design purposes:
- **Light vehicles:** Cars, vans (up to 3.5t GVW)
- **Heavy goods vehicles (HGV):** Rigid and articulated trucks over 3.5t
- **Public service vehicles (PSV):** Buses and coaches
- **Abnormal loads:** Vehicles exceeding normal legal dimensions (require special order)

For design purposes, the critical vehicle is typically:
- **Urban streets:** Large rigid (12.0m) or fire appliance
- **Trunk roads / motorways:** 16.5m articulated vehicle
- **Bus routes:** 12.0m single-deck bus (or 18.0m articulated bus for BRT)
- **Industrial access:** 16.5m articulated vehicle

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Select design vehicle
  +-- Motorway or trunk road --> 16.5m articulated vehicle
  +-- All-purpose dual carriageway --> 16.5m articulated vehicle
  +-- Urban street (bus route) --> 12.0m bus + check 16.5m artic for servicing
  +-- Urban street (no buses) --> Large rigid (12.0m)
  +-- Residential access --> Large rigid (fire appliance check)
  +-- Industrial / distribution access --> 16.5m articulated vehicle
  +-- If abnormal loads expected --> project-specific analysis required

Step 4 (UK): Geometric implications
  +-- Check junction radii accommodate the design vehicle
  +-- For 16.5m artic at junctions: minimum inner kerb radius typically 10-12m
  +-- UK does not have a single "15m minimum" rule like MoWT
  +-- Swept path check required at all constrained junctions
```

### M.3.2 Professional Judgment (UK-Specific)

**The 16.5m articulated vehicle is the default design vehicle for most UK trunk road design.** This has been the standard for decades and is well understood by the design profession. Designing for anything smaller on a trunk road requires specific justification.

**Swept path analysis is expected on all UK junction designs.** Unlike MoWT which provides turning templates, UK practice requires computer-based swept path analysis for any junction where vehicle tracking is critical. This is a standard deliverable in UK design submissions.

**Fire appliance access is a critical check for residential and commercial developments.** UK Building Regulations require fire appliance access. The standard UK fire appliance is approximately 8.5m long and requires minimum access road widths and turning circles -- this should be checked even when the traffic design vehicle is a car.

**Long combination vehicles (LCVs) are being trialled in the UK.** Vehicles up to 25.25m length are being tested. Future designs may need to accommodate these, but they are not yet standard.

### M.3.3 Common Errors (UK-Specific)

1. **Using AASHTO vehicle designations for UK designs.** UK does not use SU, WB-15 etc. Use UK/EU vehicle categories and dimensions.
2. **Not checking fire appliance access.** Even for car-only residential streets, fire appliance tracking must be checked.
3. **Assuming all articulated vehicles have the same turning radius.** Turning radius varies with wheelbase configuration. Use the specific vehicle for swept path analysis, not a generic "16.5m artic."

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design vehicle (trunk) | 16.5m articulated | Trunk road, not specified | WARNING ASSUMED: 16.5m articulated vehicle (UK standard for trunk roads) | EU/UK maximum legal length |
| Design vehicle (urban) | 12.0m rigid / bus | Urban, not specified | WARNING ASSUMED: 12.0m vehicle (rigid truck or bus) | Typical urban design vehicle |
| Maximum width | 2.55 m | Not specified | WARNING ASSUMED: Vehicle width 2.55m (UK legal maximum) | EU Directive 96/53/EC |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Vehicle length | 4.0 | 18.75 | m | EU Directive 96/53/EC | Warn if > 16.5m (special vehicle) |
| Vehicle width | 1.8 | 2.6 | m | EU Directive 96/53/EC | Flag if > 2.55m (refrigerated exception only) |
| Junction turning radius (inner kerb) | 6 | --- | m | Good practice | Flag if < 10m for HGV access |

### M.5.2 Standards Compliance Checks

- **Check:** Design vehicle dimensions are within UK legal maxima
- **Standard:** EU Directive 96/53/EC (retained in UK law)
- **Pass condition:** Length <= 16.5m (artic) or 18.75m (drawbar), width <= 2.55m
- **Fail action:** NOTE -- Vehicle dimensions exceed UK legal maxima. Abnormal load provisions may apply.

### M.5.3 Departures / Relaxations Process

No formal departures process for design vehicle selection -- this is a design choice, not a standard requirement. However, if junction geometry cannot accommodate the design vehicle, this may trigger a Departure from CD 123 or CD 116 (junction design standards).

**Gap flag:** This UK module is drafted from knowledge. No local DMRB design vehicle document is available for verification. Engineer review required before finalising any UK design vehicle selection.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No DMRB design vehicle document available | Incomplete standard coverage | NOTE -- This UK module is knowledge-based. No local CD 127 or design vehicle document available. Engineer review required. |
| Junction cannot accommodate 16.5m artic | Access restriction | SENIOR REVIEW -- Junction geometry cannot accommodate 16.5m articulated vehicle. Available radius [X]m. Consider revised geometry or access restrictions. |
| Abnormal load route identified | Non-standard vehicle dimensions | SENIOR REVIEW -- Route may carry abnormal loads exceeding standard dimensions. Project-specific vehicle analysis required. |

---

## M.7 Worked Example -- UK

### Example: 16.5m Articulated Vehicle, Check Junction Turning Radius

**Given:**
- Road type: All-purpose dual carriageway (D2AP)
- Design vehicle: 16.5m articulated vehicle
- Junction: Priority T-junction with 12m inner kerb radius
- Question: Is the 12m radius adequate for the design vehicle?

**Solution:**

**Step 1 -- Look up vehicle dimensions from Table UKDV.1:**
- 16.5m articulated vehicle
- Minimum turning radius: 12.5m (outer front wheel)
- Overall width: 2.55m

**Step 2 -- Compare available radius with vehicle requirement:**
- Available inner kerb radius: 12.0m
- Vehicle minimum turning radius (outer front): 12.5m
- The inner kerb radius and the outer front turning radius are different measurements. The inner kerb radius defines the boundary that the inner rear wheel must not cross.

**Step 3 -- Assess adequacy:**
At 12.0m inner kerb radius, the 16.5m articulated vehicle should be able to complete the turn, but with minimal clearance. The inner rear wheel will track approximately 5-6m inside the front outer wheel path (depending on the specific vehicle configuration).

**Preliminary assessment:** 12.0m is at the lower limit of adequacy for a 16.5m artic. A swept path analysis using Vehicle Tracking software should be performed to confirm.

**Step 4 -- Recommendation:**
- 12.0m is marginal. Consider increasing to 15m for a comfortable turn.
- Swept path analysis software must be used to confirm -- this manual check is preliminary only.

**Result:**

| Parameter | Value | Assessment |
|-----------|-------|------------|
| Design vehicle | 16.5m articulated | Standard UK trunk road vehicle |
| Available inner kerb radius | 12.0 m | Provided |
| Vehicle min turning radius | 12.5 m | From knowledge table |
| Adequacy | Marginal | Swept path software check required |
| Recommendation | Increase to 15m if possible | Provides safety margin |

**Gap note:** This assessment is based on knowledge-based vehicle dimensions. Swept path analysis using Autodesk Vehicle Tracking or equivalent software is required to confirm the result. Engineer review required.

---

## M.8 References

1. EU Directive 96/53/EC, *Council Directive laying down for certain road vehicles circulating within the Community the maximum authorised dimensions in national and international traffic and the maximum authorised weights in international traffic*, 1996 (as amended). Retained in UK law.
2. National Highways, *CD 127 Cross-sections and Headrooms* -- referenced but NOT available locally for verification.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Knowledge-based module. Vehicle dimensions from EU/UK regulations (not PDF-verified). Flagged for engineer review. No local DMRB design vehicle document available. |
