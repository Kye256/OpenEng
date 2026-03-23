# Axle Load Surveys -- UK Module

> **Parent Skill:** Skill #4 Axle Load Surveys
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 226 (Traffic Assessment), DfT Traffic Statistics
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
| DfT Road Traffic Statistics | Annual publication | Vehicle weight data, standard damage factors | Current |

*(Drafted from general DMRB knowledge -- verify against current CD 226 revision before use in production)*

### M.1.2 Institutional Context

In the UK, axle load data is managed through the DfT's Continuing Survey of Road Goods Transport (CSRGT) and the WIM network. National Highways (formerly Highways England) maintains WIM stations on the Strategic Road Network. Local highway authorities generally use national standard damage factors from DfT rather than conducting site-specific axle load surveys.

### M.1.3 Standard Philosophy

The UK approach relies primarily on national standard damage factors derived from extensive WIM data rather than requiring site-specific surveys for each project. The TRL fourth-power damage law is the foundation, with a standard axle of 80 kN (equivalent to 8160 kg). Standard wear factors are published by DfT for different vehicle categories (OGV1, OGV2) and are updated periodically based on national fleet surveys.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**UK Standard Axle:** 80 kN single axle with dual tyres (same as MoWT/TRL).

**UK Standard Damage Factors:**

*(Drafted from general DMRB knowledge -- verify against current DfT publication before use in production)*

The DfT publishes standard wear factors for UK vehicle categories. Approximate values:

| Vehicle Category | Description | Approximate Wear Factor (msa/100 cv) |
|-----------------|-------------|--------------------------------------|
| OGV1 | Other Goods Vehicles > 3.5t, rigid 2-3 axle | Varies by axle configuration |
| OGV2 | Other Goods Vehicles > 3.5t, articulated and multi-axle rigid | Varies by axle configuration |
| PSV | Public Service Vehicles (buses/coaches) | Lower than OGV due to controlled loading |

**Note:** UK practice expresses cumulative traffic loading in **msa** (million standard axles) rather than ESAs. The conversion is straightforward: 1 msa = 1,000,000 ESAs.

### M.2.2 Country-Specific Formulas

**TRL Damage Law:**
```
F = [P/80]^4    (for loads in kN)
```

The UK universally uses the fourth-power law (n=4) for all pavement types. This differs from the MoWT approach which varies n by pavement type.

*(Drafted from general DMRB knowledge -- verify against current TRL documentation before use in production)*

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**UK axle load assessment:**
```
If designing for Strategic Road Network (National Highways):
  -> Use DfT standard wear factors
  -> WIM data may be available from nearby stations
  -> CD 226 provides traffic assessment methodology

If designing for local authority road:
  -> DfT standard wear factors are generally appropriate
  -> Site-specific surveys rarely needed unless unusual traffic composition
  -> Consider WebTRIS for nearby WIM data availability
```

### M.3.2 Professional Judgment (Country-Specific)

- UK legal axle load limits are well-enforced compared to developing countries. Single axle limit is 10.5 tonnes, tandem 19 tonnes, triaxle 24 tonnes. Overloading is relatively uncommon.
- Standard damage factors are generally reliable for UK conditions due to well-regulated fleet.
- For roads serving specific heavy industries (quarries, ports, distribution centres), site-specific assessment may be warranted as standard factors may underestimate loading.

### M.3.3 Common Errors (Country-Specific)

1. **Applying developing-country VDFs in UK context.** UK fleet is well-regulated with much lower overloading rates. Using East African VDFs would over-design.
2. **Confusing msa with ESAs.** They are the same concept, different scale. 1 msa = 1 million ESAs.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Damage exponent (n) | 4 | All pavement types | -- ASSUMED: n = 4 (UK standard fourth-power law) | TRL standard |
| Standard axle | 80 kN | Always | -- | TRL/DMRB standard |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Single axle load | 500 | 15000 | kg | Legal limit 10,500 kg | Warn if > 10,500 (overloaded -- unusual in UK) |
| Average VDF | 0.5 | 5.0 | ESA/HV | UK fleet typical range | Warn if outside range |

### M.5.2 Standards Compliance Checks

- **Check:** Damage factors consistent with DfT published values
- **Standard:** DfT Road Traffic Statistics
- **Pass condition:** VDFs within reasonable range of published standard factors
- **Fail action:** Investigate discrepancy -- may indicate unusual fleet composition

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process managed through National Highways. For axle load assumptions, departures are rarely needed as standard factors are well-validated.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Overloading detected | Unusual in UK -- investigate | SENIOR REVIEW -- Overloading detected on UK road. This is unusual -- verify data and check for specific industrial traffic. |

---

## M.7 Worked Example -- UK

### Example: Standard Damage Factor Application

**Source:** Based on general DfT methodology.

**Given:**
- Road: A-road in rural England
- No site-specific axle load survey (standard practice in UK)
- Traffic composition from DfT count: 8% OGV1, 4% OGV2, 2% PSV

**Solution:**
In UK practice, site-specific axle load surveys are typically not conducted. Standard wear factors from DfT publications are applied directly. The standard factors already account for the national fleet composition, loading patterns, and legal enforcement levels.

The output is expressed in msa (million standard axles) for the design period, calculated using the method in CD 226.

*(Drafted from general DMRB knowledge -- verify against current CD 226 and DfT wear factors before use in production)*

---

## M.8 References

1. Department for Transport. *Road Traffic Statistics.* Annual publication.
2. National Highways. *DMRB CD 226: Design for New Pavement Construction.* Current revision.
3. Transport Research Laboratory. Standard damage factor publications.

*(Drafted from general DMRB knowledge -- exact document editions should be verified before use in production)*

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
