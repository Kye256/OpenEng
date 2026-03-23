# Axle Load Surveys -- Uganda Module

> **Parent Skill:** Skill #4 Axle Load Surveys
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual (2010), Vol. 3 Part I Section 2.2
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual, Vol. 3 Part I | January 2010 | Section 2.2 (Design Traffic Loading), Section 2.5 (Axle and Wheel Load Distribution) | Current |
| Uganda MoWT Road Design Manual, Vol. 1 | January 2010 | Section 5.4.1.5 (Composition of Traffic) | Current |

### M.1.2 Institutional Context

Axle load surveys in Uganda are conducted by or for UNRA (Uganda National Roads Authority) on national trunk roads, by district local governments on district roads, and by KCCA (Kampala Capital City Authority) on Kampala roads. UNRA operates several permanent weighbridge stations on major corridors (e.g., Jinja, Malaba, Busia border crossings). The Uganda Revenue Authority (URA) also operates weighbridges at border crossings, primarily for revenue purposes, but this data can supplement engineering surveys.

### M.1.3 Standard Philosophy

MoWT Vol 3 Part I follows the TRL/SATCC approach to axle load assessment. The methodology is straightforward: measure individual axle loads, convert each to ESAs using the power law formula (Equation 2), and derive vehicle damage factors by class. The manual explicitly states that no average vehicle damage factors are provided because "vehicle classifications, usage, degrees of overloading and legal limits are likely to differ throughout the region" (Section 2.2(a)(iv)). This means site-specific surveys are essential for Uganda.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**MoWT Equation 2 -- Load Equivalency Factor:**

```
F = [P/8160]^n    (for loads in kg)
F = [P/80]^n      (for loads in kN)
```

Where:
- F = load equivalency factor in ESAs
- P = measured axle load (kg or kN)
- n = relative damage exponent (from Table 2.2)

*(Verified from MoWT Vol 3 Part I, Section 2.2(a)(iv), page 2-3)*

**Table 2.2: Recommended relative damage exponents, n**

| Pavement Base/Subbase | Recommended n |
|----------------------|---------------|
| Granular/granular | 4 |
| Granular/cemented | 3 |
| Cemented/cemented | 4.5 |
| Bituminous/granular | 4 |
| Bituminous/cemented | 4 |

*(Verified from MoWT Vol 3 Part I, Table 2.2, page 2-4)*

**Note:** The commonly cited "fourth-power damage law" (n=4) applies to most pavement types except granular/cemented (n=3, lower damage sensitivity) and cemented/cemented (n=4.5, higher damage sensitivity). The pavement base/subbase combination of cemented/granular is "not used in this guide, nor recommended, based on many examples of poor performance deriving from premature cracking and deterioration of the cemented base" (MoWT Vol 3 Part I, page 2-4).

**Table 2.3: Load Equivalency Factors (Reference)**

Table 2.3 provides pre-calculated load equivalency factors for different axle load groups at n=3, n=4, and n=4.5. This table is extracted as a JSON file at `tables/uganda_load_equivalency_factors.json` in Skill #5 (ESA Calculation) since it is primarily used in that skill's calculation process. Key reference values:

| Axle Load Range (kg) | n=3 | n=4 | n=4.5 |
|---------------------|------|------|-------|
| 7500-8499 | 0.95 | 0.95 | 0.94 |
| 8500-9499 | 1.35 | 1.51 | 1.59 |
| 9500-10499 | 1.85 | 2.29 | 2.55 |
| 10500-11499 | 2.46 | 3.34 | 3.90 |

*(Verified from MoWT Vol 3 Part I, Table 2.3, page 2-5)*

Standard axle (8160 kg) falls in the 7500-8499 range with factor approximately 1.0, confirming the calibration.

### M.2.2 Country-Specific Formulas

**Vehicle Damage Factor Calculation (from Equation 2):**

For each weighed vehicle:
1. Record each axle load P_i (in kg)
2. Calculate F_i = [P_i / 8160]^n for each axle
3. VDF = Sum of all F_i for the vehicle

For multi-axle configurations (tandems, triaxles), MoWT recommends treating each axle individually: "Within the bounds of current knowledge and data reliability, and to keep the calculation straightforward, it is recommended that no additional processing be adopted at this stage" regarding tandem/triaxle group factors (MoWT Vol 3 Part I, Section 2.2(a)(iv), page 2-4).

### M.2.3 Uganda Legal Axle Load Limits

The following legal axle load limits apply in Uganda (per the Uganda Traffic and Road Safety Act):

| Axle Type | Legal Limit (tonnes) | Legal Limit (kg) |
|-----------|---------------------|-------------------|
| Single axle | 10 | 10,000 |
| Tandem axle | 16 | 16,000 |
| Triaxle | 24 | 24,000 |

**Note on enforcement:** Uganda has permanent weighbridge stations at Jinja (Nalubaale), Lukaya, Busia, and Malaba, among others. However, enforcement is inconsistent, and overloading rates of 30-50% of heavy vehicles on major corridors are commonly reported. The northern corridor (Mombasa-Kampala-Juba) and routes to mining/oil areas are particularly affected.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Selecting survey method for Uganda:**
```
If permanent weighbridge exists on the corridor:
  -> Use existing weighbridge data (check age -- data > 3 years old should be supplemented)
  -> Supplement with classified traffic counts

If no permanent weighbridge:
  -> Portable weighpads are the most practical option for project-specific surveys
  -> Minimum 3 days per direction per MoWT Section 2.2(a)
  -> Target 50-100 heavy vehicles per direction per day minimum

If WIM data available:
  -> Can be used directly to determine average daily ESAs per direction
  -> See Section 2.2(b) of MoWT Vol 3 Part I
  -> "Reliable WIM survey data provides a direct measurement of axle loads, and these
     can be converted to ESAs directly" (page 2-6)
```

### M.3.2 Professional Judgment (Country-Specific)

**Uganda-specific overloading context:**
- Overloading is pervasive on trunk roads, especially on the northern corridor. Typical damage factors for Uganda heavy vehicle fleets are 2-5 ESA per heavy vehicle on trunk roads, compared to 1-2 ESA in well-regulated environments.
- Sugar cane trucks in eastern Uganda (Jinja-Kamuli corridor) are among the most heavily overloaded vehicles. VDFs of 8-12 ESA per vehicle are not uncommon.
- Fuel tankers on the Mombasa-Kampala corridor are typically at or near legal limits due to volumetric constraints (the tank fills before the weight limit is reached). VDFs of 1.5-3.0 ESA.
- Empty returning trucks still contribute ESAs (approximately 0.3-0.8 ESA per vehicle for rigid trucks, 0.5-1.5 for articulated trucks) due to the weight of the vehicle itself.

**Directional differences on Uganda corridors:**
- Mombasa corridor: loaded (imports) westbound, lighter (exports, empty) eastbound. Damage factor ratio can be 3:1 or higher.
- Mining corridors (Karamoja, Albertine): loaded outbound, empty inbound.
- Design for the most heavily loaded direction per MoWT Table 2.4 guidance.

### M.3.3 Common Errors (Country-Specific)

1. **Using Kenyan or South African default VDFs for Uganda.** Fleet composition, overloading rates, and enforcement levels differ. Always use Uganda-specific survey data or Uganda-specific defaults.
2. **Conducting surveys only during daytime.** Heavy vehicle traffic on Uganda trunk roads often peaks at night to avoid urban congestion and enforcement. Daytime-only surveys will underestimate the heavily loaded vehicle proportion.
3. **Not weighting VDFs by traffic volume.** If 60% of heavy vehicles are 2-axle rigids (VDF 1.5) and 40% are articulated (VDF 5.0), the weighted average VDF is 0.6 x 1.5 + 0.4 x 5.0 = 2.9, not the simple average of (1.5+5.0)/2 = 3.25.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Average VDF (trunk road) | 3.0 ESA/HV | No survey data, trunk road | -- ASSUMED: Default VDF = 3.0 ESA/heavy vehicle for Uganda trunk roads. Based on typical overloaded fleet. Actual values may range from 2.0 to 5.0. Conduct axle load survey for detailed design. | Uganda practice, typical overloaded fleet |
| Average VDF (district road) | 1.5 ESA/HV | No survey data, district road | -- ASSUMED: Default VDF = 1.5 ESA/heavy vehicle for Uganda district roads. Lighter vehicles predominate. | Uganda practice |
| Damage exponent (n) | 4 | Granular/granular pavement (most common in Uganda) | -- ASSUMED: n = 4 for granular/granular pavement. | MoWT Table 2.2 |
| Survey duration | 3 days minimum | Per MoWT | -- ASSUMED: Minimum 3-day survey per MoWT Section 2.2(a) guidance. | MoWT Vol 3 Part I |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Single axle load | 500 | 20000 | kg | Legal limit 10,000 kg | Warn if > 10,000 (overloaded); investigate if > 20,000 (extreme overload or error) |
| VDF per heavy vehicle | 0.3 | 15 | ESA | Typical range | Warn if > 10 (extremely heavily loaded vehicle) |
| Average VDF (trunk road) | 1.0 | 8.0 | ESA/HV | Typical Uganda range | Flag if outside range -- review data |

### M.5.2 Standards Compliance Checks

- **Check:** Minimum survey duration meets MoWT recommendation
- **Standard:** MoWT Vol 3 Part I, Section 2.2(a)
- **Pass condition:** Survey duration >= 3 days
- **Fail action:** Flag: "Survey duration below MoWT minimum recommendation of 3 days. Results may not be representative."

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process for axle load survey methodology. The engineer has discretion within the guidance provided.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Overloading > 40% of heavy vehicles | Extreme overloading, common in Uganda | NOTE -- [X]% of heavy vehicles exceed legal axle load limits. This is [within/above] the typical Uganda range (30-50%). Design should use measured VDFs, not defaults. |
| VDF > 5.0 average | Very heavily loaded corridor | NOTE -- Average VDF of [X] ESA/HV indicates a heavily loaded corridor. Verify data and consider increased pavement design. |
| Survey conducted only at daytime | May miss night-time heavy vehicle peak | NOTE -- Survey conducted during daytime hours only. Uganda trunk roads carry significant night-time heavy vehicle traffic. Results may underestimate loaded vehicle proportion. |

---

## M.7 Worked Example -- Uganda

### Example: Axle Load Survey Analysis on Jinja-Iganga Trunk Road

**Source:** Illustrative example based on typical Uganda trunk road data, using MoWT Vol 3 Part I methodology.

**Given:**
- Road: Jinja-Iganga trunk road (UNRA national road)
- Survey method: Static weighbridge at Jinja
- Survey duration: 3 days
- Pavement type: Bituminous surfacing with granular base/subbase (n = 4)
- 120 heavy vehicles weighed (both directions combined)

Sample data (Direction 1 -- towards Iganga, loaded):

| Vehicle Class | Count | Representative Axle Loads (kg) |
|---------------|-------|-------------------------------|
| 2-axle rigid truck | 35 | Front: 4000, Rear: 8500 |
| 3-axle rigid truck | 20 | Front: 5000, Rear tandem: 7500 + 7000 |
| Articulated 6-axle | 25 | Steer: 5500, Drive tandem: 9000+8500, Trailer triaxle: 8000+7500+7000 |

**Solution:**

*Step 1: Calculate load equivalency factors (n = 4)*

**2-axle rigid truck:**
- Front axle: F = [4000/8160]^4 = [0.490]^4 = 0.058
- Rear axle: F = [8500/8160]^4 = [1.042]^4 = 1.177
- VDF = 0.058 + 1.177 = **1.24 ESA**

**3-axle rigid truck:**
- Front axle: F = [5000/8160]^4 = [0.613]^4 = 0.141
- Rear tandem axle 1: F = [7500/8160]^4 = [0.919]^4 = 0.713
- Rear tandem axle 2: F = [7000/8160]^4 = [0.858]^4 = 0.541
- VDF = 0.141 + 0.713 + 0.541 = **1.40 ESA**

**Articulated 6-axle:**
- Steer: F = [5500/8160]^4 = [0.674]^4 = 0.206
- Drive tandem 1: F = [9000/8160]^4 = [1.103]^4 = 1.480
- Drive tandem 2: F = [8500/8160]^4 = [1.042]^4 = 1.177
- Trailer triaxle 1: F = [8000/8160]^4 = [0.980]^4 = 0.923
- Trailer triaxle 2: F = [7500/8160]^4 = [0.919]^4 = 0.713
- Trailer triaxle 3: F = [7000/8160]^4 = [0.858]^4 = 0.541
- VDF = 0.206 + 1.480 + 1.177 + 0.923 + 0.713 + 0.541 = **5.04 ESA**

*Step 2: Calculate weighted average VDF (Direction 1)*

Weighted VDF = (35 x 1.24 + 20 x 1.40 + 25 x 5.04) / (35 + 20 + 25)
            = (43.4 + 28.0 + 126.0) / 80
            = 197.4 / 80
            = **2.47 ESA/heavy vehicle**

*Step 3: Overloading assessment*
- Legal single axle limit: 10,000 kg
- Rear axle of 2-axle rigid (8500 kg): Below legal limit
- Drive tandem axle 1 of articulated (9000 kg): Below single axle limit
- No single axles exceed 10,000 kg in this sample
- However, if the survey included a range of loads, some vehicles would exceed limits

**Result:**
- Direction 1 average VDF: 2.47 ESA/heavy vehicle
- This value falls within the typical Uganda trunk road range of 2.0-5.0 ESA/HV
- The articulated vehicles dominate the damage contribution (126.0 ESA from 25 vehicles = 64% of total damage from 31% of vehicles)

**Verification:** The calculated VDFs are consistent with published survey results from Uganda trunk roads. A VDF of 2.47 is reasonable for a moderately loaded corridor.

---

## M.8 References

1. Uganda Ministry of Works and Transport. *Road Design Manual, Volume 3: Pavement Design, Part I: Flexible Pavements.* January 2010.
2. Uganda Ministry of Works and Transport. *Road Design Manual, Volume 1: Geometric Design Manual.* January 2010.
3. Transport Research Laboratory. *Overseas Road Note 31: A Guide to the Structural Design of Bitumen-Surfaced Roads in Tropical and Sub-Tropical Countries.* 5th Edition, 1993.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
