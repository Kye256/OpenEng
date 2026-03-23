# Traffic Forecasting -- Uganda Module

> **Parent Skill:** Skill #6 Traffic Forecasting
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual (2010), Vol. 1 Section 5.4; Vol. 3 Part I Section 2.2
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual, Vol. 1 | January 2010 | Section 5.4 (Traffic Characteristics), Section 5.4.1 (Volume) | Current |
| Uganda MoWT Road Design Manual, Vol. 3 Part I | January 2010 | Section 2.2(a)(iii) (Equation 1 -- cumulative traffic projection) | Current |

### M.1.2 Institutional Context

Traffic forecasting in Uganda is conducted as part of road design studies commissioned by UNRA, district local governments, or KCCA. UNRA maintains some historical traffic data from permanent count stations and periodic surveys. The Uganda Bureau of Statistics (UBOS) publishes economic indicators (GDP, population growth) that support traffic growth rate estimation. The Ministry of Finance provides macroeconomic forecasts used for economic evaluation of road projects.

### M.1.3 Standard Philosophy

MoWT Vol 1 defines the "design year" as "usually selected as year 10 after the year of opening to traffic. It is the last year of the design life of the road or any other facility" (Section 5.4.1, page 57). Traffic forecasting uses compound growth with growth rates "based on all available indicators including historical data, and socio-economic trends" (Vol 3 Part I, page 2-3). The approach is pragmatic -- no formal transport demand modelling is prescribed.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Uganda Traffic Growth Rate Guidance:**

MoWT Vol 3 Part I states that growth rates "will normally be in the range of 2 to 15 per cent per annum" (Section 2.2(a)(iii), page 2-3).

*(Verified from MoWT Vol 3 Part I, Section 2.2(a)(iii), page 2-3)*

Based on Uganda practice and historical trends:

| Road Type | Typical Growth Rate Range | Notes |
|-----------|--------------------------|-------|
| National trunk roads (UNRA) | 4-7% | Higher on major corridors (northern, Mombasa) |
| District roads | 3-5% | Lower but can spike with new developments |
| Urban roads (KCCA) | 5-8% | Rapid urbanisation driving growth |
| Mining/oil corridors | 7-15% | Short-term high growth associated with development |
| Community access roads | 2-4% | Organic growth from rural development |

**Note:** These ranges are based on Uganda practice and historical traffic data analysis, not from a specific MoWT table. MoWT does not prescribe specific growth rates -- it states a broad range (2-15%) and requires the designer to justify the selected rate.

**MoWT Design Year Definition:**

MoWT Vol 1, Section 5.4.1 (page 57):
- For low volume roads: design control is AADT in the "design year"
- For routes with large seasonal variations: design control is ADT during peak months of the "design year"
- The "design year" is usually selected as year 10 after the year of opening to traffic
- It is the last year of the design life of the road

*(Verified from MoWT Vol 1, Section 5.4.1, page 57)*

**Note:** The Vol 1 reference to "year 10" as the design year relates to geometric design (capacity, LOS). For pavement design, the design period is 15-20 years per MoWT Vol 3 Part I Table 2.1.

### M.2.2 Country-Specific Formulas

**MoWT Equation 1 -- Cumulative Design Traffic (from Vol 3 Part I):**

```
DT = T x 365 x [(1 + r/100)^p - 1] / (r/100)
```

Where:
- DT = cumulative design traffic in a vehicle category, for one direction
- T = average daily traffic in a vehicle category in the first year (one direction)
- r = average assumed growth rate, percent per annum
- p = design period in years

*(Verified from MoWT Vol 3 Part I, Section 2.2(a)(iii), page 2-3)*

This equation is shared with Skill #5 (ESA Calculation). This skill provides the growth rate r and the traffic projections; Skill #5 applies Equation 1 with vehicle damage factors to get cumulative ESAs.

**Compound growth projection:**

```
Future_AADT = Base_AADT x (1 + r/100)^n
```

This is the standard compound growth formula used for projecting AADT to the design year.

### M.2.3 Uganda GDP-Traffic Growth Correlation

Uganda's GDP growth has averaged approximately 5-6% per annum over the last two decades (with fluctuations). Traffic growth typically correlates with GDP growth with an elasticity of 0.8-1.2:

```
Traffic_growth_rate = GDP_growth_rate x elasticity
```

For Uganda:
- GDP growth 5-6% x elasticity 1.0 = traffic growth 5-6% (national average)
- This is consistent with observed historical traffic growth on trunk roads

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Selecting growth rate for Uganda:**
```
If historical traffic data available (3+ years):
  -> Calculate compound annual growth rate from historical counts
  -> Verify against national trends
  -> Use historical rate with judgment adjustments

If no historical data but corridor context known:
  -> Northern corridor (Mombasa-Kampala-Juba): 5-7%
  -> Mining/oil corridor (Albertine, Karamoja): 7-10% (short-term)
  -> Urban fringe (Kampala, Jinja, Mbarara): 6-8%
  -> Rural district road: 3-5%

If no data and no corridor context:
  -> Use default 5% for trunk roads, 4% for district roads
  -> Flag prominently for review
```

### M.3.2 Professional Judgment (Country-Specific)

**Uganda-specific forecasting context:**
- Traffic growth in Uganda has been sustained at 4-7% on trunk roads over the past two decades, driven by economic growth, population growth (3.3% per annum), and increasing motorisation.
- The northern corridor (Mombasa-Kampala-Juba-South Sudan) carries international transit traffic that responds to regional economic conditions, not just Uganda-specific factors.
- Oil discovery in the Albertine Graben has driven exceptionally high growth on western Uganda routes (Hoima, Buliisa, Pakwach). This growth may moderate as the construction phase ends.
- Motorcycle traffic (boda-boda) has grown explosively in the 2000s-2020s, particularly on district roads. However, motorcycles do not significantly affect pavement design (negligible ESA contribution).
- Generated traffic on Uganda road improvements is significant. Converting a gravel road to paved standard typically generates 15-25% additional traffic within 2-3 years of opening.

**Multi-period growth considerations:**
- For major trunk road upgrades with significant generated traffic, consider:
  - Years 1-3: Higher growth (base + generated traffic ramp-up): 8-10%
  - Years 4-10: Moderate growth as generated traffic stabilises: 5-7%
  - Years 11-20: Long-term organic growth: 4-5%

### M.3.3 Common Errors (Country-Specific)

1. **Applying national average growth to a specific corridor.** The northern corridor grows faster than the national average. Rural feeder roads grow slower. Use corridor-appropriate rates.
2. **Not accounting for generated traffic on paving projects.** Paving a gravel road in Uganda typically generates 15-25% additional traffic. This is well-documented in Uganda project evaluations.
3. **Using 10-year design period from Vol 1 for pavement design.** Vol 1 Section 5.4.1 refers to geometric design, where the design year is typically 10 years. For pavement design, Vol 3 Part I Table 2.1 recommends 15-20 years.
4. **Projecting high growth rates (> 7%) for 20 years without review.** At 7% growth, traffic quadruples in 20 years. Check whether this is physically realistic for the corridor.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Growth rate (UNRA trunk) | 5% | No historical data | -- ASSUMED: Growth rate = 5% per annum for UNRA trunk road. Based on Uganda historical average. Verify with historical counts or transport study. | Uganda practice |
| Growth rate (district) | 4% | No historical data | -- ASSUMED: Growth rate = 4% per annum for district road. | Uganda practice |
| Growth rate (urban) | 6% | No historical data, urban | -- ASSUMED: Growth rate = 6% per annum for urban road. | Kampala/urban growth trends |
| Generated traffic | 15% | Gravel-to-paved improvement | -- ASSUMED: Generated traffic = 15% of normal traffic for gravel-to-paved upgrade. Based on Uganda project experience. | Uganda project evaluations |
| Design period (geometric) | 10 years | MoWT Vol 1 | -- | MoWT Vol 1, Section 5.4.1 (for geometric design) |
| Design period (pavement) | 15-20 years | MoWT Vol 3 | -- | MoWT Vol 3 Part I, Table 2.1 (for pavement design) |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Growth rate | 2 | 15 | % | MoWT Vol 3, page 2-3 | MoWT states range 2-15%. Values outside need strong justification. |
| Design-year AADT | 50 | 50,000 | vpd | Uganda road capacity | Warn if > 30,000 (may exceed 2-lane capacity) |
| Generated traffic factor | 0 | 0.25 | decimal | Uganda practice | > 25% generated traffic is unusual -- verify |

### M.5.2 Standards Compliance Checks

- **Check:** Growth rate within MoWT guidance range
- **Standard:** MoWT Vol 3 Part I, Section 2.2(a)(iii)
- **Pass condition:** Growth rate between 2% and 15%
- **Fail action:** Justify departure from MoWT range.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. The engineer has discretion in selecting growth rates within the guidance range.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Growth rate > 7% for > 10 years | Unsustainably high growth | NOTE -- Growth rate of [X]% sustained over [Y] years may be unrealistic. Consider multi-period growth with higher initial rate tapering to 4-5% long-term. |
| No historical traffic data | Cannot validate growth assumption | SENIOR REVIEW -- No historical traffic data to validate growth rate of [X]%. Recommend obtaining historical counts or conducting a trend analysis. |
| Design-year AADT > 20,000 on 2-lane road | Capacity concern | NOTE -- Design-year AADT of [X] vpd may exceed the capacity of a 2-lane road. Consider dual carriageway or staged widening. |

---

## M.7 Worked Example -- Uganda

### Example: Traffic Forecasting for Trunk Road Upgrade

**Source:** Illustrative example using MoWT methodology.

**Given:**
- Road: UNRA trunk road upgrade (gravel to paved)
- Base AADT (count year 2025): 2,000 vpd
- Construction period: 2 years (opening year 2027)
- Design period: 20 years (design year 2047)
- Selected growth rate: 5% per annum (based on corridor historical trend)
- Generated traffic: 10% of normal traffic (road improvement project)
- Heavy vehicle percentage: 25%

**Solution:**

*Step 1: Grow AADT from count year to opening year*

Opening AADT (2027) = 2,000 x (1.05)^2 = 2,000 x 1.1025 = **2,205 vpd**

*Step 2: Add generated traffic*

Generated traffic = 2,205 x 10% = 221 vpd
Total opening AADT = 2,205 + 221 = **2,426 vpd**

*Step 3: Project to design year (20 years from opening)*

Design-year AADT (2047) = 2,426 x (1.05)^20 = 2,426 x 2.6533 = **6,438 vpd**

*Step 4: Growth scenarios*

| Scenario | Growth Rate | Opening AADT | Design-Year AADT (2047) |
|----------|-----------|--------------|-------------------------|
| Low | 3% | 2,426 | 2,426 x (1.03)^20 = 4,382 vpd |
| Medium | 5% | 2,426 | 2,426 x (1.05)^20 = 6,438 vpd |
| High | 7% | 2,426 | 2,426 x (1.07)^20 = 9,389 vpd |

*Step 5: Cumulative traffic for Skill #5*

Using Equation 1 for medium growth scenario:
Heavy vehicles per day (one direction) = 2,426 x 25% x 0.5 = 303 HV/day

This value T = 303 is the input to Equation 1 in Skill #5.
Growth rate r = 5% is the input to Equation 1 in Skill #5.

*Step 6: Heavy vehicle forecast*

Design-year heavy vehicles = 6,438 x 25% = 1,610 HV/day (both directions)
If heavy vehicle proportion is growing: adjust % upward (but MoWT does not prescribe class-specific growth rates, so this is typically held constant unless there is specific reason to change it).

**Result:**
- Opening-year AADT: **2,426 vpd** (including 10% generated traffic)
- Design-year AADT (medium): **6,438 vpd**
- Growth rate for Skill #5: **5% per annum**
- Design-year heavy vehicles: **1,610 HV/day**
- At low growth (3%), design-year AADT = 4,382 vpd
- At high growth (7%), design-year AADT = 9,389 vpd

**Verification:** The compound growth calculation is mathematically correct: (1.05)^20 = 2.6533. The growth scenarios show the range of uncertainty. The generated traffic addition of 10% is consistent with Uganda practice for road improvements. The design-year AADT of 6,438 is well within the capacity of a 2-lane paved road.

---

## M.8 References

1. Uganda Ministry of Works and Transport. *Road Design Manual, Volume 1: Geometric Design Manual.* January 2010.
2. Uganda Ministry of Works and Transport. *Road Design Manual, Volume 3: Pavement Design, Part I: Flexible Pavements.* January 2010.
3. Uganda Bureau of Statistics. *Statistical Abstract.* (for GDP and population growth data).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
