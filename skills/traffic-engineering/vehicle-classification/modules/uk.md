# Vehicle Classification -- UK Module

> **Parent Skill:** #3 Vehicle Classification
> **Country/Jurisdiction:** United Kingdom (England, Scotland, Wales, Northern Ireland)
> **Standards:** DfT Vehicle Classification, DMRB
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Version | Sections Referenced | Status |
|----------|--------------|---------|---------------------|--------|
| DfT Vehicle Classification | Various | Current | Standard count categories | Current |
| DMRB traffic assessment | CD 171 / TA 46 | *(Not available locally)* | Vehicle classification for design | Current |

*(Drafted from general DMRB knowledge -- verify against current DMRB traffic assessment documents before use in production)*

### M.1.2 Institutional Context

The UK uses a well-standardised vehicle classification system:

- **DfT standard classification** is used for all national count programme data. It defines seven categories (cars/taxis, LGV, OGV1, OGV2, PSV, motorcycles, pedal cycles).
- **DMRB** uses the DfT classification for traffic assessment but may require additional detail for specific analyses (e.g., separating articulated from rigid HGVs for structural loading).
- **Vehicle classifications are consistent nationwide** -- unlike some developing countries, the UK has a single standardised system.

### M.1.3 Standard Philosophy

*(Drafted from general DMRB knowledge -- verify against current DMRB traffic assessment documents before use in production)*

UK vehicle classification is primarily weight-based, aligned with UK vehicle licensing categories:
- **Light vehicles:** Cars, taxis, LGVs (< 3.5t GVW)
- **Heavy vehicles:** OGV1, OGV2, PSV (> 3.5t GVW)
- The 3.5t threshold is the UK legal dividing line between light and heavy goods vehicles and determines licensing requirements.

---

## M.2 Country-Specific Knowledge

### M.2.1 DfT Vehicle Classification

*(Drafted from general DMRB knowledge -- verify against current DfT traffic data guidance before use in production)*

| Category | Code | Description | Typical GVW | Heavy? |
|----------|------|-------------|-------------|--------|
| Cars and taxis | Car | Passenger vehicles including estates, MPVs, SUVs | < 3.5t | No |
| Light Goods Vehicles | LGV | Vans and goods vehicles < 3.5t GVW | < 3.5t | No |
| Ordinary Goods Vehicles 1 | OGV1 | Rigid goods vehicles > 3.5t, 2 axles | 3.5-18t | Yes |
| Ordinary Goods Vehicles 2 | OGV2 | Rigid goods vehicles > 3.5t, 3+ axles; all articulated vehicles | 18-44t | Yes |
| Public Service Vehicles | PSV | Buses and coaches | 5-20t | Yes |
| Motorcycles | M/C | Two-wheeled motor vehicles | < 0.5t | No |
| Pedal cycles | Cyc | Bicycles | -- | No |

**Heavy vehicle definition (UK):** Vehicles with GVW > 3.5 tonnes. This includes OGV1, OGV2, and PSV.

### M.2.2 UK PCU Factors

*(Drafted from general DMRB knowledge -- verify against current DMRB traffic assessment documents before use in production)*

PCU factors are used less frequently in UK practice than in developing countries because DMRB capacity analysis (using COBA/TUBA and junction modelling software) typically works with vehicle flows directly, applying specific adjustment factors within the analysis tools.

However, approximate PCU factors used in UK practice:

| Vehicle Type | PCU Factor (level) | Notes |
|-------------|-------------------|-------|
| Cars and taxis | 1.0 | Reference vehicle |
| LGV | 1.0 | Similar performance to cars |
| OGV1 | 1.5 -- 2.0 | Moderate capacity impact |
| OGV2 | 2.0 -- 3.0 | Significant capacity impact |
| PSV | 2.0 -- 3.0 | Similar to OGV2 |
| Motorcycles | 0.4 -- 0.5 | Small road footprint |
| Pedal cycles | 0.2 -- 0.5 | Context-dependent |

*(Approximate values -- verify against current DMRB guidance)*

### M.2.3 UK Fleet Composition (Typical)

*(Drafted from DfT published statistics -- verify against current year data)*

| Category | Approximate Share of UK Traffic | Notes |
|----------|-------------------------------|-------|
| Cars and taxis | 78-82% | Dominant category |
| LGV | 12-15% | Growing trend (delivery vans) |
| OGV1 | 2-3% | Declining as fleet moves to larger vehicles |
| OGV2 | 2-3% | Relatively stable |
| PSV | 0.5-1.5% | Higher in urban areas |
| Motorcycles | 0.5-1.5% | Seasonal variation |
| Pedal cycles | Variable | Not always counted; growing in urban areas |

**Heavy vehicle % (HGV = OGV1 + OGV2):** Typically 4-8% on most UK roads. Higher (up to 15-20%) on motorways and major freight corridors. Much lower than developing country roads.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2a (UK): Determine purpose
  |- Capacity analysis -> Use DfT classification; apply PCU factors or use analysis software directly
  |- Pavement design -> Use OGV1/OGV2 split for structural design; need axle load data for detailed ESA
  |- DMRB scheme appraisal -> DfT standard classification; COBA/TUBA analysis uses vehicle flows directly
  \- Planning application (development traffic) -> DfT classification; TRICS trip rates by vehicle type

Step 3a (UK): Map to standard classes
  |- DfT count data -> Already in standard categories; no mapping needed
  |- ATC data (tube counter) -> Length-based classification; map short/medium/long to DfT categories
  \- If non-standard data provided -> Map to DfT categories; document mapping
```

### M.3.2 Professional Judgment (UK-Specific)

**UK HGV percentages are much lower than developing countries.** A typical UK rural road has 4-8% HGVs compared to 20-35% on an East African trunk road. This means that heavy vehicles have less impact on capacity in the UK (but still dominate pavement damage).

**LGV growth is a significant UK trend.** Light goods vehicles (vans) have been the fastest-growing vehicle category in the UK, driven by online shopping deliveries. LGVs are classified as "light" (< 3.5t) but contribute to congestion and pavement wear.

**ATC tube counters classify by length, not weight.** Mapping length-based ATC classes to DfT weight-based categories introduces some error (e.g., a long van may be classified as a short HGV). Supplementary MCC data helps calibrate this mapping.

### M.3.3 Common Errors (UK-Specific)

1. **Using developing-country PCU factors in the UK.** UK HGVs are better maintained and have better performance than many developing-country trucks. UK PCU factors are lower.
2. **Ignoring LGV growth.** LGVs now constitute ~14% of UK traffic. Treating them as "cars" for all purposes may underestimate capacity impacts on urban routes.
3. **Assuming ATC length-class = DfT weight-class.** There is not a perfect correspondence. Some long vans are classified as short HGVs by tube counters.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Heavy vehicle definition | GVW > 3.5t (OGV1 + OGV2) | UK | -- ASSUMED: Heavy vehicles = OGV1 + OGV2 (UK legal definition, > 3.5t GVW). PSV counted separately. | UK vehicle licensing definition |
| HV% (rural A-road) | 5-10% | No classified data | -- ASSUMED: HV% of [X]% (typical UK rural A-road). Verify with DfT count data. | DfT statistics |
| PCU factors | See M.2.2 | UK | -- ASSUMED: Approximate PCU factors. *(Verify against current DMRB guidance.)* | General UK practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| HV% (rural road) | 1 | 25 | % | DfT statistics | Warn if outside 3-15% (typical UK rural range) |
| HV% (motorway) | 5 | 30 | % | DfT statistics | Warn if outside 8-20% |
| LGV% | 5 | 25 | % | DfT statistics | Warn if outside 10-18% |

### M.5.2 Standards Compliance Checks

- **Check:** Classification uses DfT standard categories.
- **Standard:** DfT classification guidance
- **Pass condition:** All seven DfT categories are present
- **Fail action:** Warn -- "Non-standard classification. DfT comparison requires standard categories."

### M.5.3 Departures / Relaxations Process

No formal departures process for vehicle classification methodology. For DMRB scheme appraisal, DfT standard classification must be used.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| HV% > 15% on non-motorway road | Unusual for UK; may indicate freight corridor or data issue | NOTE -- HV% is [X]%, above typical range for this road type. Verify classification data. |
| ATC-only data with no MCC calibration | Length-to-weight mapping may be inaccurate | NOTE -- ATC data classified by vehicle length only. Consider supplementary MCC to calibrate classification. |

---

## M.7 Worked Example -- UK

### Example: Classify Traffic on a UK Rural A-Road

**Source:** Hypothetical, based on typical UK practice.

**Given:**
- Road: A4321, rural Oxfordshire
- AADT: 4,000 vpd (both directions)
- Classified count data:
  - Cars and taxis: 3,200 (80%)
  - LGV: 480 (12%)
  - OGV1: 120 (3%)
  - OGV2: 80 (2%)
  - PSV: 40 (1%)
  - Motorcycles: 60 (1.5%)
  - Pedal cycles: 20 (0.5%)
- Terrain: Flat

**Solution:**

**Heavy vehicle percentage:**
HV = OGV1 + OGV2 = 120 + 80 = 200
HV% = 200 / 4,000 = **5.0%**

(Including PSV: 200 + 40 = 240 = 6.0%)

**PCU-adjusted flow (approximate):**

| Category | Volume | PCU Factor | PCU Volume |
|----------|--------|-----------|------------|
| Cars/taxis | 3,200 | 1.0 | 3,200 |
| LGV | 480 | 1.0 | 480 |
| OGV1 | 120 | 1.5 | 180 |
| OGV2 | 80 | 2.5 | 200 |
| PSV | 40 | 2.5 | 100 |
| Motorcycles | 60 | 0.4 | 24 |
| Pedal cycles | 20 | 0.3 | 6 |
| **TOTAL** | **4,000** | | **4,190 pcu** |

**Result:**

| Parameter | Value |
|-----------|-------|
| Total AADT | 4,000 vpd |
| PCU-adjusted AADT | 4,190 pcu/day |
| HV% (OGV1+OGV2) | 5.0% |
| HV% (incl PSV) | 6.0% |

**Escalation:** None -- fleet composition is typical for a UK rural A-road.

---

## M.8 References

*(Drafted from general DMRB knowledge -- verify against current DfT traffic data guidance before use in production)*

1. Department for Transport, *Road Traffic Statistics* (roadtraffic.dft.gov.uk).
2. Department for Transport, *Vehicle Licensing Statistics*.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft. UK vehicle classification and PCU factors drafted from general knowledge. Gap flags applied throughout. |
