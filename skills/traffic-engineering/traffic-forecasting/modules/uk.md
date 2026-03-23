# Traffic Forecasting -- UK Module

> **Parent Skill:** Skill #6 Traffic Forecasting
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB, DfT National Road Traffic Forecasts, TEMPro
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| DMRB TA 46 (now CD 171/172) | Current revision | Traffic forecasting methodology | Current |
| DfT National Road Traffic Forecasts (NRTF/NRTM) | Latest scenario set | National growth assumptions | Current |
| DfT TEMPro | Current version | Local area growth factors | Current |

*(Drafted from general DMRB knowledge -- verify against current document codes and editions before use in production)*

### M.1.2 Institutional Context

UK traffic forecasting for highway schemes follows a structured process governed by DMRB guidance. National Highways uses TAG (Transport Analysis Guidance) and WebTAG for transport scheme appraisal. Local authorities use similar methodology, often supplemented with local transport models. DfT publishes national traffic growth scenarios through the National Road Traffic Model (NRTM), and local growth factors are available through the TEMPro tool.

### M.1.3 Standard Philosophy

The UK approach to traffic forecasting is more formalised than the MoWT approach:
- Growth factors derived from DfT national model scenarios rather than assumed by the designer
- Low and high growth scenarios are standard practice
- Generated traffic (induced demand) is recognised and has been extensively studied (the SACTRA report)
- Variable demand modelling is used for major scheme appraisals

*(Drafted from general DMRB knowledge -- verify against current TAG/WebTAG guidance before use in production)*

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**UK Growth Rate Context:**

UK traffic growth rates are significantly lower than developing countries:

| Period | National Growth Trend | Notes |
|--------|----------------------|-------|
| 1990-2007 | ~1.5% per annum | Sustained pre-recession growth |
| 2008-2012 | ~ -1% to 0% | Recession and recovery |
| 2013-2019 | ~0.5-1.5% | Moderate growth |
| 2020-2021 | -20% to -10% | COVID impact |
| 2022+ | Recovery, ~1-2% | Post-COVID recovery |

**TEMPro Growth Factors:**

TEMPro (Trip End Model Presentation Program) provides local area growth factors based on land use, demographics, and economic forecasts. These factors vary significantly by location:
- Fast-growing areas (new housing, enterprise zones): 1.5-3% per annum
- Mature urban areas: 0-1%
- Rural areas: 0.5-1.5%

*(Drafted from general DMRB knowledge -- verify against current TEMPro version before use in production)*

### M.2.2 Country-Specific Formulas

**UK traffic projection (same compound growth):**
```
Future_AADT = Base_AADT x (1 + r)^n
```

Where r is expressed as a decimal (e.g., 0.02 for 2%), unlike the MoWT convention of percentage.

**DfT National Scenarios:**
DfT publishes traffic growth scenarios (typically "Low Growth" and "High Growth") based on different assumptions about economic growth, fuel prices, and transport policy. These should be used rather than assumed rates.

*(Drafted from general DMRB knowledge -- verify against current DfT scenario publications before use in production)*

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

```
For UK traffic forecasting:
  -> Obtain DfT growth factors from TEMPro for the local area
  -> Apply DfT national scenario low/high growth factors
  -> For major schemes: use TAG-compliant transport model
  -> Do not assume growth rates -- use published DfT scenarios
```

### M.3.2 Professional Judgment (Country-Specific)

- UK traffic growth has been relatively flat since 2007. Sustained growth rates above 2% are unusual nationally, though specific corridors may see higher growth due to development.
- The SACTRA (Standing Advisory Committee on Trunk Road Assessment) report established that road improvements generate additional traffic. This is embedded in UK appraisal methodology through variable demand modelling.
- UK practice increasingly considers the potential for traffic reduction through mode shift, congestion charging, and travel demand management.

### M.3.3 Common Errors (Country-Specific)

1. **Assuming developing-country growth rates for UK roads.** UK growth rates are 0-2%, not 4-7%.
2. **Not using DfT published scenarios.** The designer should not assume growth rates -- use TEMPro or DfT national scenarios.
3. **Ignoring the possibility of flat or declining traffic.** Parts of the UK have experienced flat or declining traffic for over a decade.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Growth rate | Use TEMPro | Always | -- ASSUMED: DfT TEMPro growth factors applied. Verify TEMPro version is current. | DfT standard methodology |
| Design period (pavement) | 20 years | Flexible pavement | -- | DMRB CD 226 |
| Design period (geometric) | 15 years opening + 15 years | Geometric design | -- | TAG |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Growth rate | -1 | 5 | % | DfT national scenarios | Warn if outside DfT scenario range |
| Design-year AADT | 100 | 200,000 | vpd | UK road capacity | Flag if exceeding capacity |

### M.5.2 Standards Compliance Checks

- **Check:** Growth factors from DfT published source
- **Standard:** TAG / TEMPro
- **Pass condition:** Growth factors traceable to DfT publication
- **Fail action:** Justify departure from DfT published scenarios

### M.5.3 Departures / Relaxations Process

DMRB has a formal Departures from Standards process. Departure from DfT traffic growth scenarios requires approval.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Growth rate > 3% | Unusual for UK | NOTE -- Growth rate of [X]% exceeds typical UK range. Verify against TEMPro and DfT national scenarios. |
| Traffic declining | May affect design assumptions | NOTE -- Historical trend shows declining traffic. Verify whether this trend is expected to continue. |

---

## M.7 Worked Example -- UK

### Example: Traffic Forecasting for A-Road Improvement

**Source:** Based on general UK methodology.

**Given:**
- Road: A-road improvement scheme in rural area
- Base AADT (2025): 5,000 vpd
- TEMPro growth factor: 1.3% per annum (local area)
- Design period: 20 years (design year 2045)
- Project type: Road improvement (widening)

**Solution:**

Design-year AADT = 5,000 x (1.013)^20 = 5,000 x 1.2936 = **6,468 vpd**

Low scenario (DfT low: 0.8%):
= 5,000 x (1.008)^20 = 5,000 x 1.1729 = 5,865 vpd

High scenario (DfT high: 1.8%):
= 5,000 x (1.018)^20 = 5,000 x 1.4282 = 7,141 vpd

No significant generated traffic estimated for a widening scheme on an existing alignment.

*(Drafted from general DMRB knowledge -- verify growth factors against current TEMPro and DfT scenarios before use in production)*

---

## M.8 References

1. Department for Transport. *National Road Traffic Forecasts.* Current edition.
2. Department for Transport. *TEMPro Trip End Model.* Current version.
3. Department for Transport. *TAG: Transport Analysis Guidance.* Current edition.
4. National Highways. *DMRB.* Various documents on traffic assessment.

*(Drafted from general DMRB knowledge -- exact document editions should be verified before use in production)*

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
