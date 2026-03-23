# ESA/ESAL Calculation -- UK Module

> **Parent Skill:** Skill #5 ESA/ESAL Calculation
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 226 (Design for New Pavement Construction)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB CD 226 | Current revision | Traffic assessment for pavement design | Current |
| DfT Road Traffic Statistics | Annual | Standard wear factors | Current |
| TRL publications | Various | Fourth-power damage law | Current |

*(Drafted from general DMRB knowledge -- verify against current CD 226 revision before use in production)*

### M.1.2 Institutional Context

UK pavement design for the Strategic Road Network (managed by National Highways) follows DMRB standards. Local highway authorities generally adopt DMRB methodology for consistency. The traffic assessment for pavement design is governed by CD 226, which provides the methodology for calculating cumulative traffic loading in msa (million standard axles).

### M.1.3 Standard Philosophy

The UK approach uses:
- Standard axle = 80 kN (same as MoWT/TRL)
- Fourth-power damage law universally (n=4 for all pavement types)
- Cumulative traffic expressed in **msa** (million standard axles) -- equivalent to millions of ESAs
- Standard wear factors published by DfT based on national fleet surveys, rather than requiring site-specific axle load data for each project

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**UK Traffic Loading Classification:**

The UK does not use the same traffic class system as MoWT. Instead, cumulative msa is used directly as input to the pavement design process. CD 226 provides design charts and tables that relate cumulative msa directly to pavement layer thicknesses.

*(Drafted from general DMRB knowledge -- verify against current CD 226 before use in production)*

### M.2.2 Country-Specific Formulas

**UK Cumulative Traffic Formula (TRL approach):**

The UK approach calculates cumulative msa similarly to the MoWT method:

```
Cumulative msa = Daily ESAs x 365 x [(1+r)^p - 1] / r x 10^-6
```

Where:
- Daily ESAs = daily standard axles in the design lane
- r = growth rate (as decimal, e.g., 0.02 for 2%)
- p = design period (typically 20 or 40 years for UK)
- 10^-6 converts to millions

**Note on UK growth rates:** UK traffic growth rates are generally lower than developing countries, typically 1-3% per annum for the Strategic Road Network. DfT publishes National Road Traffic Forecasts that provide growth rate assumptions.

*(Drafted from general DMRB knowledge -- verify against current CD 226 and DfT forecasts before use in production)*

**Note on UK design periods:** UK pavement design typically uses longer design periods than East African practice:
- 20 years for flexible pavements (DMRB standard)
- 40 years for long-life pavements
- 60 years for concrete pavements

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

```
For UK pavement design:
  -> Use CD 226 methodology
  -> Apply DfT standard wear factors (not site-specific VDFs)
  -> Calculate cumulative msa for the design lane
  -> Use CD 226 design charts/tables for pavement thickness
```

### M.3.2 Professional Judgment (Country-Specific)

- UK traffic growth forecasts are published by DfT and should be used rather than assumed. Growth rates have been relatively flat in recent years (0-2% nationally).
- For heavily trafficked motorways and trunk roads, cumulative msa values of 50-200 msa over 20 years are common. For rural single carriageways, 5-20 msa.
- UK practice allows for "long-life" pavement design above a threshold of approximately 80 msa, where additional traffic beyond the threshold does not significantly affect the required pavement thickness.

### M.3.3 Common Errors (Country-Specific)

1. **Using developing-country growth rates for UK roads.** UK growth rates are typically 1-3%, not 4-7%.
2. **Not using DfT standard wear factors.** The UK system relies on national fleet data, not project-specific surveys.
3. **Confusing msa with ESAs.** 1 msa = 1,000,000 ESAs. The numbers look very different.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design period | 20 years | Flexible pavement | -- ASSUMED: 20-year design period (DMRB standard) | CD 226 |
| Growth rate | 2% | No DfT forecast | -- ASSUMED: 2% growth rate. Verify against DfT National Road Traffic Forecasts. | Typical UK average |
| Damage exponent | 4 | All pavement types | -- | TRL standard |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Cumulative msa | 0.5 | 300 | msa | CD 226 range | Warn if outside typical design range |
| Growth rate | 0 | 5 | % | DfT forecasts | Warn if > 3% (unusual for UK) |

### M.5.2 Standards Compliance Checks

- **Check:** Cumulative traffic within CD 226 design range
- **Standard:** CD 226
- **Pass condition:** msa within published design chart range
- **Fail action:** Consult National Highways for non-standard cases

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Departures from CD 226 traffic assessment methodology require formal approval through the National Highways departures process.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| msa > 200 | Very heavily trafficked | NOTE -- Consider long-life pavement design approach. |
| Growth rate assumption differs from DfT forecast | Inconsistency | NOTE -- Growth rate used differs from published DfT National Road Traffic Forecast. Justify or update. |

---

## M.7 Worked Example -- UK

### Example: Cumulative msa Calculation for A-Road

**Source:** Based on general DMRB methodology.

**Given:**
- Road: Single carriageway A-road, rural England
- AADT: 5,000 vpd (both directions)
- Heavy vehicles (OGV1+OGV2): 12%
- Standard wear factor: 1.5 ESA per heavy vehicle (DfT published)
- Growth rate: 2% per annum
- Design period: 20 years
- Directional split: 50/50
- Lane factor: 1.0 (single carriageway, all traffic in one lane per direction)

**Solution:**

Daily heavy vehicles (one direction):
= 5,000 x 12% x 0.5 = 300 HV/day

Daily ESAs (one direction):
= 300 x 1.5 = 450 ESA/day

Cumulative ESAs:
= 450 x 365 x [(1.02)^20 - 1] / 0.02
= 164,250 x 24.30
= 3,991,275 ESAs
= approximately **4.0 msa**

This is a moderate level of traffic, appropriate for a standard flexible pavement design.

*(Drafted from general DMRB knowledge -- verify wear factors against current DfT publication before use in production)*

---

## M.8 References

1. National Highways. *DMRB CD 226: Design for New Pavement Construction.* Current revision.
2. Department for Transport. *Road Traffic Statistics.* Annual publication.
3. Department for Transport. *National Road Traffic Forecasts.* Current edition.
4. Transport Research Laboratory. Various publications on standard axle and wear factors.

*(Drafted from general DMRB knowledge -- exact document editions should be verified before use in production)*

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
