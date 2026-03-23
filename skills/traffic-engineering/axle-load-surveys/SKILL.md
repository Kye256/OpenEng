---
name: "axle-load-surveys"
description: "Use when processing axle load data from weighbridge, WIM, or weighpad measurements into vehicle damage factors (ESAs per vehicle class) and assessing overloading. Requires vehicle classes from Skill #3 (Vehicle Classification). Outputs feed into Skill #5 (ESA Calculation) for pavement design loading."
---

# Axle Load Surveys

> **Skill ID:** 4
> **Domain:** Traffic Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK

## Purpose

Determine the axle load characteristics of traffic on a road through static weighbridge surveys, weigh-in-motion (WIM), or portable weighpad measurements. This skill converts raw axle load data into vehicle damage factors (ESAs per vehicle class) and assesses overloading relative to legal limits. The outputs feed directly into ESA/ESAL calculation (Skill #5) for pavement design.

## When to Use This Skill

- **Use when:** Axle load data is available from weighbridge surveys, WIM stations, or portable weighpad measurements and needs to be processed into vehicle damage factors for pavement design. Also use when assessing overloading on a road corridor.
- **Do not use when:** Only traffic count data is available without axle load measurements -- in that case, use default damage factors from the country module (see Skill #5). Also not needed if vehicle damage factors have already been determined.
- **Prerequisite skills:** Skill #3 (Vehicle Classification) provides the vehicle class distribution that determines which vehicle categories to measure. However, this skill can process axle load data provided directly by the user.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Axle Load Survey:**

An axle load survey measures the actual wheel and axle loads of vehicles using a road. The primary purpose is to determine vehicle damage factors for pavement design. Survey methods include:

- **Static weighbridge:** Permanent or semi-permanent installation. Vehicles are diverted to the weighbridge and weighed axle-by-axle. Most accurate but causes traffic disruption. Typically captures 50-200 heavy vehicles per day depending on traffic levels.
- **Weigh-in-motion (WIM):** Sensors embedded in or placed on the road surface that measure axle loads as vehicles pass at normal speed. Higher throughput, less disruption, but lower accuracy than static weighing. WIM data can be converted directly to ESAs.
- **Portable weighpads:** Flat plate scales placed on the road surface. Vehicles drive slowly over the pads. Intermediate accuracy and portability. Useful for temporary surveys.

**Vehicle Damage Factor (VDF):**

The vehicle damage factor expresses the pavement damage caused by one passage of a vehicle in terms of equivalent standard axles (ESAs). A vehicle with VDF = 3.5 causes the same damage as 3.5 passes of the standard axle. VDFs are calculated from measured axle loads using load equivalency factors.

**Standard Axle:**

The reference axle load used to express pavement damage. Different standards use different standard axle definitions:
- MoWT / TRL: 8160 kg (80 kN) single axle with dual tyres
- AASHTO: 18,000 lb (80 kN / 8.2 tonnes) single axle with dual tyres

**Load Equivalency Factor:**

The load equivalency factor converts an individual axle load to its equivalent number of standard axle passes. It is calculated using the power law:

```
F = [P / Ps]^n
```

Where:
- F = load equivalency factor (ESAs)
- P = measured axle load
- Ps = standard axle load (8160 kg or 80 kN)
- n = damage exponent (typically 4 for granular pavements, varies by pavement type)

This means damage increases very rapidly with axle load. An axle carrying 1.5 times the standard load causes (1.5)^4 = 5.06 times the damage.

**Axle Load Spectrum:**

The distribution of measured axle loads across all axle load groups. Typically presented as a histogram showing the number of axles in each load range (e.g., 0-2000 kg, 2000-4000 kg, etc.). The spectrum reveals whether the fleet is predominantly light or heavily overloaded.

**Overloading Assessment:**

Comparison of measured axle loads against legal axle load limits for the jurisdiction. Overloading is a major concern in developing countries where enforcement is weak. Even moderate overloading causes disproportionate damage due to the power law relationship.

### 1.2 Universal Formulas

**Load equivalency factor (power law):**
```
F = [P / Ps]^n
```

Where:
- F = load equivalency factor (dimensionless, in ESAs)
- P = measured axle load (kg or kN)
- Ps = standard axle load (8160 kg for MoWT, 80 kN equivalent)
- n = relative damage exponent (see country module for values by pavement type)

**Vehicle damage factor from axle loads:**
```
VDF = Sum of F_i for all axles on the vehicle
```

Where F_i is the load equivalency factor for each individual axle.

**Average vehicle damage factor for a class:**
```
VDF_class = (1/N) x Sum of VDF_j for j = 1 to N
```

Where N = number of vehicles measured in that class.

**Overloading percentage:**
```
Overloading % = (Number of axles exceeding legal limit / Total axles measured) x 100
```

### 1.3 Figures & Diagrams

**Axle Load Spectrum Histogram:** A bar chart showing number of axles measured in each axle load group (e.g., 1000 kg intervals). The standard axle load (8160 kg) should be marked on the x-axis. Axles to the right of this mark cause more than 1 ESA of damage each. A heavily overloaded fleet will show a long right tail extending well beyond the standard axle.

**Vehicle Damage Factor vs Axle Load Curve:** A curve showing how damage (ESAs) increases with axle load. The curve is strongly non-linear due to the power law -- doubling the axle load increases damage by a factor of 16 (for n=4). This visual reinforces why overloading is so destructive.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Determine available axle load data
  |- Static weighbridge data -> Proceed to Step 3 with measured axle loads
  |- WIM data -> Proceed to Step 3 with WIM-recorded axle loads
  |- Portable weighpad data -> Proceed to Step 3 with measured axle loads
  |- No axle load data available -> Use default damage factors from country module
     -> Flag: "No axle load survey data. Default VDFs assumed. Recommend survey."
     -> Skip to Step 7

Step 3: Quality-check the axle load data
  |- Minimum sample size: 50 heavy vehicles per direction (MoWT recommends minimum 3 days)
  |- Check for unrealistic values (single axle > 25 tonnes suggests measurement error)
  |- Check that all vehicle classes are represented
  |- If sample size is inadequate -> Flag and proceed with caution
  \- If data quality is poor -> Flag limitations; consider using regional defaults

Step 4: Calculate load equivalency factors for each axle
  |- Apply F = [P/Ps]^n using country module damage exponent
  |- For multi-axle configurations -> See country module Section M.2
  \- Sum F values for all axles on each vehicle to get vehicle ESA

Step 5: Calculate vehicle damage factors by class
  |- Group vehicles by classification (from Skill #3 or survey classification)
  |- Calculate average VDF per class
  |- Report range (min, max) within each class
  \- Note directional differences if significant

Step 6: Assess overloading
  |- Compare measured axle loads to legal limits from country module
  |- Calculate overloading percentage by axle type
  |- Quantify additional damage caused by overloading
  \- Flag severe overloading for escalation

Step 7: Run validation (Section 4 + country module Section M.5)

Step 8: Check escalation triggers (Section 5 + country module Section M.6)

Step 9: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Sample size matters more than survey duration.** A 2-day survey on a busy truck corridor with 200 heavy vehicles weighed is more useful than a 7-day survey on a low-traffic road with 30 heavy vehicles. The key is capturing enough vehicles in each class to calculate representative damage factors.

**Directional differences can be large.** On corridors with industrial activity at one end (mines, factories, ports), loaded trucks travel one direction and return empty. Damage factors in the loaded direction can be 5-10 times higher than in the return direction. Always report damage factors by direction.

**Overloading in developing countries is the norm, not the exception.** In many East African countries, 30-50% of heavy vehicles exceed legal axle load limits. Default damage factors from developed countries will significantly underestimate actual pavement damage. Site-specific surveys are essential.

**WIM data requires calibration and validation.** WIM sensors drift over time and are affected by temperature, pavement condition, and vehicle speed. Always check WIM data against static weighbridge measurements when possible.

### 2.3 Common Errors

1. **Using a single average VDF for all heavy vehicles.** Different vehicle classes have very different damage factors. A 2-axle rigid truck (VDF 0.5-2.0) is very different from a 7-axle truck-trailer (VDF 4.0-12.0). Always report by class.
2. **Ignoring empty/unladen vehicles.** Including unladen trucks (VDF near zero) in the average will underestimate the damage factor for laden trucks. Report laden and unladen separately, or use weighted averages considering the loaded proportion.
3. **Applying the wrong damage exponent.** The exponent n varies by pavement type (Table 2.2 in MoWT). Using n=4 for a cemented pavement (which should use n=4.5) will underestimate damage.
4. **Not accounting for axle groupings.** Tandem and triaxle groups may need modified analysis. Some standards apply group factors; MoWT recommends treating each axle individually for simplicity.
5. **Confusing gross vehicle weight with axle load.** The damage formula applies to individual axle loads, not gross vehicle weight. A 20-tonne vehicle with well-distributed loads causes less damage than one with poorly distributed loads.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Damage exponent (n) | 4 | No pavement type specified | -- ASSUMED: Damage exponent n = 4 (fourth power law for granular pavements). Verify pavement type. | Most common value; conservative for most pavement types |
| Standard axle load | 8160 kg (80 kN) | Not specified | -- ASSUMED: Standard axle = 8160 kg (MoWT/TRL). Check if AASHTO standard (8200 kg / 18 kip) applies. | MoWT/TRL standard |
| Survey duration | 3 days minimum | Not specified | -- ASSUMED: Minimum 3 days axle load survey per MoWT recommendation. | MoWT Vol 3 Part I, Section 2.2(a) |
| Default VDF (no survey data) | 2.0-4.0 ESA/HV | No axle load data | -- ASSUMED: Default VDF = [value] ESA per heavy vehicle. This is a regional average -- actual values may differ significantly. Recommend axle load survey. | Conservative range for East African trunk roads |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Use higher damage factors when uncertain (leads to thicker pavement design, more conservative).
4. **Flag for investigation:** Every assumed damage factor includes a recommendation for obtaining actual survey data.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| VDF per vehicle | 0 | 30 | ESA | Warn if > 15 (extremely heavily loaded); reject if > 30 (data error) |
| Single axle load | 500 | 25000 | kg | Warn if > 15000 (severe overloading); reject if > 25000 (measurement error) |
| Damage exponent (n) | 2.5 | 6 | -- | Reject if outside range (not a recognized value) |
| Overloading % | 0 | 100 | % | Warn if > 50% (extreme overloading -- verify data) |

### 4.2 Consistency Checks

- **VDF vs vehicle type:** 2-axle rigid trucks should typically have VDF 0.5-3.0; multi-axle articulated vehicles 3.0-12.0. Values outside these ranges suggest classification or measurement errors.
- **Laden vs unladen:** Average VDF for unladen vehicles should be < 1.0 ESA. If higher, check whether vehicles were correctly classified as unladen.
- **Directional consistency:** If directional VDFs differ by more than a factor of 3, verify that the survey captured representative conditions in both directions.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific legal limits or default VDFs | SENIOR REVIEW -- No country module for [jurisdiction]. Using generic damage factors. |
| No axle load survey data | Cannot determine site-specific damage factors | SENIOR REVIEW -- No axle load survey data available. Default VDFs assumed. Recommend conducting axle load survey before detailed pavement design. |
| Overloading > 30% | Severe overloading affecting pavement design life | NOTE -- [X]% of measured axles exceed legal limits. Design must account for overloading. Consider using measured VDFs rather than defaults. |
| Sample size < 30 heavy vehicles | Statistical reliability is poor | SENIOR REVIEW -- Only [N] heavy vehicles measured. Sample may not be representative. Consider extending survey. |
| VDF > 10 ESA/vehicle average | Extremely high damage -- verify data | NOTE -- Average VDF exceeds 10 ESA/vehicle. Verify axle load data and check for measurement errors. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.**
- **Provide context** with each flag.
- **Continue working** where possible.
- **Country module escalations** are merged with universal escalations in output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Vehicle class distribution | table | vehicles and % | No | Skill #3 | Standard vehicle classes for organizing survey results |
| Heavy vehicle percentage | number | % | No | Skill #3 | Proportion of heavy vehicles in traffic stream |
| Fleet composition | table | % by class | No | Skill #3 | Percentage breakdown by vehicle category |
| Axle load data | table | kg or kN | Yes | User (survey) | Raw axle load measurements by vehicle class |
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Legal axle load limits | table | kg or tonnes | No | Country module | Legal limits for overloading assessment |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Vehicle damage factors | table | ESA/vehicle by class | Skill #5 | Average VDF for each vehicle class |
| Axle load spectrum | table | axles by load group | Skill #5, User | Distribution of axle loads across load ranges |
| Overloading assessment | text | -- | User/report | Summary of overloading severity and implications |
| Average equivalency factor | number | ESA/heavy vehicle | Skill #5 | Weighted average VDF across all heavy vehicle classes |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda axle load survey guidance and legal limits | Markdown |
| `modules/uk.md` | UK axle loading approach | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load the corresponding module for legal limits, standard axle definition, and damage exponents.

### Step 2: Review Axle Load Data
Check data quality: sample size, coverage of vehicle classes, measurement method, survey duration.

### Step 3: Calculate Load Equivalency Factors
Apply F = [P/Ps]^n to each measured axle using the appropriate damage exponent from the country module.

### Step 4: Calculate Vehicle Damage Factors
Sum the load equivalency factors for all axles on each vehicle. Calculate average VDF by vehicle class.

### Step 5: Assess Overloading
Compare measured loads to legal limits. Calculate overloading percentage and additional damage.

### Step 6: Validate and Check Escalation
Run universal and country-specific checks.

### Step 7: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
AXLE LOAD SURVEY ANALYSIS -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard -- from country module]
Date: [YYYY-MM-DD]
============================================================

SURVEY SUMMARY
--------------
Survey Method:          [Static weighbridge / WIM / Portable weighpad]
Survey Duration:        [X days]
Survey Location:        [location description]
Total Vehicles Weighed: [X]
Heavy Vehicles Weighed: [X]

VEHICLE DAMAGE FACTORS
----------------------
| Vehicle Class | Count | Avg VDF (ESA) | Min | Max | Laden % |
|---------------|-------|---------------|-----|-----|---------|
| [class 1]     | [X]   | [X]           | [X] | [X] | [X]%   |
| ...           |       |               |     |     |         |

Weighted Average VDF (all HV): [X] ESA/heavy vehicle

Direction 1 Average VDF: [X] ESA/HV
Direction 2 Average VDF: [X] ESA/HV

AXLE LOAD SPECTRUM
------------------
| Axle Load Range (kg) | Number of Axles | % of Total | Cumulative % |
|----------------------|-----------------|------------|--------------|
| 0 - 2000             | [X]             | [X]%       | [X]%         |
| ...                  |                 |            |              |

OVERLOADING ASSESSMENT
----------------------
Legal Single Axle Limit:   [X] tonnes
Legal Tandem Axle Limit:   [X] tonnes
Axles Exceeding Limit:     [X] ([X]%)
Average Overload:          [X]% above legal limit
Additional Damage Factor:  [X] (ratio of actual to legal-limit ESAs)

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

ESCALATION FLAGS
----------------
[Any flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

See country modules for country-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Axle load survey equipment specification and procurement. WIM system calibration procedures in detail. Enforcement strategies for overloading.
- **Simplifications:** Multi-axle group corrections are not applied (each axle treated independently per MoWT recommendation). Speed effects on WIM accuracy are not modelled.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia, Rwanda, South Africa, Nigeria, Ghana

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
