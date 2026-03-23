---
name: "vehicle-classification"
description: "Use when mapping classified traffic counts to standard vehicle categories, calculating heavy vehicle percentages, or determining PCU factors for capacity analysis. Requires AADT from Skill #2 (Traffic Data Processing). Outputs feed into Skill #4 (Axle Load Surveys) and Skill #5 (ESA Calculation)."
---

# Vehicle Classification

> **Skill ID:** 3
> **Domain:** Traffic Engineering
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --
> **Country Modules:** Uganda, UK

## Purpose

Map observed traffic into standard vehicle classification systems, calculate heavy vehicle percentages, and determine PCU (Passenger Car Unit) factors for capacity analysis. This skill bridges traffic counting (Skill #2) and pavement loading (Skill #4) by translating raw classified counts into the vehicle categories needed for both geometric design (capacity/LOS) and pavement design (axle load damage).

## When to Use This Skill

- **Use when:** Classified traffic count data is available and needs to be mapped to standard design categories for capacity analysis (PCU-adjusted flows) or pavement design (heavy vehicle percentage, vehicle damage factors).
- **Do not use when:** Only total (unclassified) volume data is available -- return to Skill #1 to plan classified counts. Also not needed if vehicle classification has already been completed and the output is in the required format.
- **Prerequisite skills:** Skill #2 (Traffic Data Processing) provides AADT and classified volume data. However, this skill can also process classified count data provided directly by the user.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Vehicle Classification Systems:**

Classification systems group the diverse range of vehicles on a road into standard categories for design purposes. Different classification systems serve different purposes:

- **Capacity analysis** uses PCU-adjusted flows -- each vehicle type is converted to an equivalent number of passenger cars based on its road space and speed impact.
- **Pavement design** uses vehicle categories grouped by axle configuration and loading -- the focus is on pavement damage, not road space.
- These are **different groupings for different purposes**, and the same traffic stream may be classified differently depending on whether the analysis is for capacity or pavement design.

**Common Classification Systems:**

- **FHWA 13-class system (USA):** 13 categories from motorcycles through multi-trailer trucks, based on number of axles and configuration.
- **East African classification:** Varies by country but typically includes cars, pickups/4x4, minibuses, buses, medium trucks, heavy trucks, truck-trailers, motorcycles.
- **DfT classification (UK):** Cars, LGV, OGV1, OGV2, PSV, motorcycles, pedal cycles.
- **MoWT classification (Uganda):** Passenger cars, light goods vehicles, medium goods vehicles, heavy goods vehicles, buses, motorcycles/scooters, pedal cycles (from Table 5-4).

**Passenger Car Unit (PCU) / Passenger Car Equivalent (PCE):**

A PCU factor converts a vehicle of any type to an equivalent number of passenger cars in terms of its impact on traffic flow. A heavy truck might have a PCU of 3.5 on flat terrain, meaning it affects traffic flow as much as 3.5 passenger cars. PCU factors depend on:
- Vehicle size and performance
- Terrain (larger factors on grades where speed differential is greater)
- Road type (two-lane vs multi-lane)

**Heavy Vehicle Percentage:**

The proportion of traffic that consists of heavy vehicles (typically defined as vehicles with GVM >= 3,500-4,000 kg). This is critical for:
- **Pavement design:** Heavy vehicles cause virtually all pavement damage
- **Capacity analysis:** Heavy vehicles reduce capacity due to their size and lower speed
- **Safety analysis:** Heavy vehicle mix affects accident rates and severity

### 1.2 Universal Formulas

**PCU-adjusted flow:**
```
Flow_PCU = Sum over all classes (Volume_class_i x PCU_factor_class_i)
```

**Heavy vehicle percentage:**
```
HV% = (Volume_heavy_vehicles / Volume_total) x 100
```

Where "heavy vehicles" are defined per the applicable standard (typically GVM >= 3,500-4,000 kg, excluding buses in some definitions).

**Truck factor (for capacity analysis):**
```
f_HV = 1 / (1 + P_T(E_T - 1) + P_R(E_R - 1))
```

Where P_T = proportion of trucks, P_R = proportion of recreational vehicles, E_T = PCE for trucks, E_R = PCE for recreational vehicles. This is the HCM (Highway Capacity Manual) formulation.

### 1.3 Figures & Diagrams

**Vehicle Classification Hierarchy:** A diagram showing how observed vehicles on the road map into classification categories. The agent should understand that the same vehicle (e.g., a Fuso Canter) might be classified as "medium goods vehicle" for capacity analysis (PCU factor 2.5) but as a "2-axle rigid truck" for pavement design (specific axle load and damage factor). The classification depends on the purpose of the analysis.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> If no module exists, flag and use closest available

Step 2: Determine the purpose of classification
  |- Capacity analysis / Level of Service -> Need PCU factors; use country module Section M.2 PCU table
  |- Pavement design -> Need heavy vehicle %, vehicle damage factors; use country module Section M.2 pavement categories
  |- Both -> Classify for both purposes; clearly distinguish the two outputs
  \- General traffic reporting -> Use standard country classification

Step 3: Map observed vehicles to standard classes
  |- Identify the classification scheme used in the count data
  |- Map each observed category to the standard classes in the country module
  |- Handle unclassified or unusual vehicles conservatively
  \- If mapping is ambiguous -> Flag and assign conservatively (higher PCU / heavier class)

Step 4: Calculate heavy vehicle percentage
  |- Define "heavy vehicle" per the applicable standard
  |- Sum heavy vehicle volumes
  |- Calculate HV% = heavy volume / total volume x 100
  \- Report HV% for both directions combined and per direction

Step 5: Calculate PCU-adjusted flow (if capacity analysis)
  |- Apply PCU factors from country module Section M.2 for the appropriate terrain
  |- Calculate total PCU flow
  \- Report both vehicle flow (vpd/vph) and PCU flow (pcu/day or pcu/hr)

Step 6: Prepare vehicle class distribution table
  |- Tabulate each class: count, percentage, PCU factor, PCU-adjusted volume
  |- Include both directions combined and per direction
  \- This table feeds directly into Skill #4 (Axle Load Surveys) and capacity analysis

Step 7: Run validation (Section 4 + country module Section M.5)

Step 8: Check escalation triggers (Section 5 + country module Section M.6)

Step 9: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**PCU factors are terrain-dependent.** A bus on flat terrain might have PCU 2.0, but on a steep grade it could be PCU 6.0 or more because of the greater speed differential with cars. Always use PCU factors appropriate for the terrain of the road section being analysed.

**"Heavy vehicle" has different definitions for different purposes.** For pavement design, even a medium truck causes significant damage. For capacity analysis, the threshold is usually GVM > 3,500 kg. For safety analysis, "heavy" may mean only the largest trucks. Always clarify which definition is being used.

**The classification scheme must match the count data.** If the field count classified vehicles differently from the standard design categories, a mapping is needed. Document this mapping explicitly -- it is a common source of error.

**Motorcycles and NMT need separate treatment.** Motorcycles affect capacity (low PCU but high volume) and safety but do not affect pavement design. Pedal cycles and pedestrians affect cross-section design and safety but not capacity or pavement loading in the traditional sense.

### 2.3 Common Errors

1. **Using flat-terrain PCU factors on mountainous roads.** PCU factors increase dramatically with gradient. Using flat factors on steep grades underestimates the capacity impact of heavy vehicles.
2. **Conflating capacity and pavement classifications.** A "medium truck" for capacity (PCU 2.5) may be in a different pavement damage category than a "medium truck" for ESA calculation.
3. **Ignoring motorcycles in capacity analysis.** In countries with high motorcycle traffic, ignoring them in capacity analysis underestimates total PCU flow.
4. **Counting buses as heavy vehicles for pavement design.** In some standards, buses are separated from goods vehicles for pavement design because their axle configurations differ. Check the standard.
5. **Not reporting classification proportions alongside totals.** The heavy vehicle percentage is as important as the AADT for downstream design skills.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Heavy vehicle definition | GVM >= 4,000 kg | Not specified | -- ASSUMED: Heavy vehicles defined as GVM >= 4,000 kg (check applicable standard) | MoWT definition; other standards may use 3,500 kg |
| Terrain for PCU | Rolling | Not specified | -- ASSUMED: Rolling terrain for PCU factors. Use flat or mountainous if terrain is known. | Conservative middle assumption |
| Motorcycle PCU | 0.5 | Not specified | -- ASSUMED: Motorcycle PCU = 0.5 (varies by standard; some use 0.75 or 1.0) | Common developing-country value |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output.
3. **Conservative direction:** Use higher PCU factors (overestimates capacity impact, more conservative for design).
4. **Flag for investigation:** Every assumed classification parameter includes a recommendation for verification.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Heavy vehicle % | 0 | 80 | % | Warn if > 50% (unusual for most road types; verify data) |
| PCU factor (any vehicle) | 0.3 | 25 | -- | Reject if outside range (data error) |
| Unclassified vehicles | 0 | 10 | % | Warn if > 5% (classification quality issue) |

### 4.2 Consistency Checks

- **Sum check:** Total classified volumes should equal total count volume (within 5%).
- **Proportion check:** Heavy vehicle % should be consistent with road function (trunk roads: 10-40%; district roads: 5-20%; urban: 5-15%).
- **Motorcycle proportion:** In East Africa, motorcycle % on district roads can be 30-50%. If reported as 0% or < 5% on an East African district road, verify that motorcycles were counted.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific classification | SENIOR REVIEW -- No country module. Using generic classification. |
| Unclassified vehicles > 10% | Classification quality is poor | SENIOR REVIEW -- More than 10% of vehicles are unclassified. Data quality insufficient for reliable classification. |
| Very high heavy vehicle % (> 40%) | Unusual composition; may indicate special corridor | NOTE -- Heavy vehicle % is [X]%. Verify this is correct -- may indicate mining/industrial corridor or data classification error. |
| Motorcycle % > 50% | Unusual composition affecting all downstream analysis | NOTE -- Motorcycle traffic exceeds 50% of total. Capacity analysis and cross-section design must account for this. Standard PCU approach may not be adequate. |

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
| Vehicle count data | table | vehicles | Yes | Skill #2 or User | Classified traffic counts by vehicle type |
| Country/jurisdiction | text | -- | Yes | User | Determines which country module and classification system to load |
| Purpose | category | -- | Yes | User | Capacity analysis / Pavement design / Both |
| Terrain | category | -- | No | Skill #11 or User | Flat / Rolling / Mountainous (for PCU factor selection) |
| AADT | number | vpd | No | Skill #2 | For calculating volumes by class |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Vehicle class distribution | table | vehicles and % | Skill #4 | Count and percentage by standard vehicle class |
| PCU factors | table | pcu/vehicle | Capacity analysis | PCU factor for each vehicle class by terrain |
| Heavy vehicle percentage | number | % | Skills #4, #5 | Proportion of heavy vehicles in traffic stream |
| Fleet composition | table | % by class | Skill #4 | Percentage breakdown by vehicle category for ESA calculation |
| PCU-adjusted flow | number | pcu/day or pcu/hr | Capacity analysis | Total flow converted to passenger car units |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda classification and PCU factors | Markdown |
| `modules/uk.md` | UK classification system | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load the corresponding module.

### Step 2: Determine Purpose
Establish whether the classification is for capacity analysis (PCU), pavement design (heavy vehicle groups), or both.

### Step 3: Map Vehicles to Standard Classes
Map the observed count categories to the standard classification in the country module.

### Step 4: Calculate Distribution and HV%
Tabulate volumes by class. Calculate heavy vehicle percentage.

### Step 5: Apply PCU Factors (if capacity analysis)
Apply terrain-appropriate PCU factors from the country module. Calculate PCU-adjusted flows.

### Step 6: Prepare Pavement Classification (if pavement design)
Map vehicles to pavement design categories per the country module. Distinguish capacity vs pavement groupings.

### Step 7: Validate and Check Escalation
Run universal and country-specific checks.

### Step 8: Produce Output
Format per Section 8.

---

## 8. Output Format

```
============================================================
VEHICLE CLASSIFICATION -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [Selected standard -- from country module]
Date: [YYYY-MM-DD]
============================================================

CLASSIFICATION SUMMARY
----------------------
Purpose:                [Capacity analysis / Pavement design / Both]
Terrain:                [Flat / Rolling / Mountainous]
AADT (total):           [X] vpd (from Skill #2)
Heavy Vehicle %:        [X]%

VEHICLE CLASS DISTRIBUTION
--------------------------
| Vehicle Class | Volume (vpd) | % of Total | PCU Factor | PCU Volume |
|---------------|-------------|------------|------------|------------|
| [class 1]     | [X]         | [X]%       | [X]        | [X]        |
| ...           |             |            |            |            |
| TOTAL         | [X]         | 100%       | --         | [X] pcu    |

CAPACITY ANALYSIS PARAMETERS
-----------------------------
Total PCU Flow:         [X] pcu/day
PCU-adjusted AADT:      [X] pcu/day
Heavy Vehicle Adjustment Factor (f_HV): [X]

PAVEMENT DESIGN PARAMETERS
---------------------------
| Pavement Category | Vehicles/day | % of Heavy Vehicles |
|-------------------|-------------|---------------------|
| [category]        | [X]         | [X]%                |

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

- **Not covered:** Axle load damage factors (see Skill #4). Traffic microsimulation vehicle types. Non-motorised transport classification in detail.
- **Simplifications:** PCU factors are from standard tables, not calibrated to specific sites. Speed-based PCU estimation is not covered.
- **Country modules available:** Uganda, UK
- **Country modules needed:** Kenya, Tanzania, Ethiopia, Rwanda, South Africa, Nigeria, Ghana

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft |
