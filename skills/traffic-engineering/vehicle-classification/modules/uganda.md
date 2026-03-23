# Vehicle Classification -- Uganda Module

> **Parent Skill:** #3 Vehicle Classification
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual (2010), Vol. 1 Section 5.4.1.5 and Table 5-4; Vol. 3 Part I Section 2.2
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual | 2010 | Vol. 1, Section 5.4.1.5 (Composition), Table 5-4 (PCU factors) | Current |
| Uganda MoWT Road Design Manual | 2010 | Vol. 3 Part I, Section 2.2 (Design Traffic Loading) | Current |

### M.1.2 Institutional Context

Vehicle classification in Uganda serves two distinct purposes, each drawing from different parts of the MoWT manual:

- **Capacity / Level of Service analysis (Vol. 1):** Uses Table 5-4 PCU factors to convert mixed traffic to equivalent passenger car units. This determines whether the road has adequate capacity.
- **Pavement design (Vol. 3 Part I):** Uses vehicle categories from Section 2.2 to calculate ESAs (Equivalent Standard Axles). This determines the pavement structure required.

**Important distinction:** Vol. 1 Table 5-4 is for capacity/LOS analysis. Vol. 3 Section 2.2 categories are for pavement design (axle load damage). The same vehicle fleet is classified differently for each purpose.

### M.1.3 Standard Philosophy

The MoWT manual defines vehicle types primarily by gross vehicle mass (GVM) and axle configuration. Section 5.4.1.5 states: "Vehicle in the truck class are normally those having 4000kg or greater gross vehicle mass (GVM) rating of the manufacturer and vehicles having dual tires on rear axle."

---

## M.2 Country-Specific Knowledge

### M.2.1 PCU Factors for Capacity Analysis (MoWT Vol. 1)

**Table 5-4: Conversion Factor of Vehicle into Equivalent Passenger Car (Verified)**

| Vehicle Type | Level (Flat) | Rolling | Mountainous |
|-------------|-------------|---------|-------------|
| Passenger cars | 1.0 | 1.0 | 1.5 |
| Light goods vehicle | 1.0 | 1.5 | 3.0 |
| Medium goods vehicle* | 2.5 | 5.0 | 10.0 |
| Heavy goods vehicle | 3.5 | 8.0 | 20.0 |
| Buses | 2.0 | 4.0 | 6.0 |
| Motor cycles, Scooters | 1.0 | 1.0 | 1.5 |
| Pedal cycles | 0.5 | 0.5 | NA |

\* also representative for combined group of medium and heavy goods vehicles and buses.

**Source:** MoWT Vol. 1, Table 5-4 (Verified)

**Vehicle type definitions (from MoWT Vol. 1, Section 5.4.1.5 and Table 5-4 notes):**

| Vehicle Type | Description |
|-------------|-------------|
| Passenger cars | Passenger vehicles with less than nine seats |
| Light goods vehicle | Land rovers, minibuses and good vehicles of less than 1,500kg unladen weight with payload capacities less than 760 kg |
| Medium goods vehicle | Maximum gross vehicle weight 8,500 kg |
| Heavy goods vehicle | Gross vehicle weight greater than 8,500 kg |
| Buses | All passenger vehicles larger than minibus |
| Motor cycles, Scooters | Two-wheeled motor vehicles (includes boda-bodas) |
| Pedal cycles | Bicycles |

**Source:** MoWT Vol. 1, Table 5-4 notes (Verified)

**MoWT Table 5-4 worked example (from the manual):**

"An hourly traffic volume of 5 passenger cars, 10 light goods vehicle, 10 medium goods vehicles, 40 heavy goods vehicles, and 20 buses totaling 85 vehicles in rolling terrain represents [(5 x 1.0) + (10 x 1.5) + (10 x 5.0) + (40 x 8.0) + (20 x 4.0)] = 470 passenger car units per hour."

**Source:** MoWT Vol. 1, Section 5.5 (Verified)

### M.2.2 Vehicle Categories for Pavement Design (MoWT Vol. 3 Part I)

For pavement design, the MoWT Vol. 3 Part I Section 2.2 uses a different classification approach focused on axle loads and vehicle damage:

**Normal categories (from Section 2.2(a)(ii)):**

| Category | Description | Relevance to ESA |
|----------|-------------|-----------------|
| Cars/small pick-ups | Passenger vehicles, small 4x4s | Negligible pavement damage; excluded from ESA calculation |
| Light goods vehicles | Including 4-wheel drives, panel vans, minibus/combis | Negligible pavement damage; excluded from ESA |
| Trucks (several sub-classifications) | Rigid trucks, articulated vehicles; differentiated by axle configuration | Primary source of pavement damage; ESA calculated from axle load data |
| Trucks with trailers | Various multi-axle configurations typical to the area | Heavy pavement damage; ESA from axle loads |
| Buses | Passenger buses | Moderate pavement damage; ESA from axle loads |

**Key point:** For pavement design, the critical parameter is not the vehicle category per se, but the **axle load** of each axle. Vehicle classification for pavement purposes is a means to estimate axle loads when direct axle load survey data is not available (using average vehicle damage factors per class).

The Vol. 3 manual explicitly states (Section 2.2(a)(iv)): "No average vehicle damage factors for different vehicle classes are given in this document, as vehicle classifications, usage, degrees of overloading and legal limits are likely to differ throughout the region."

### M.2.3 East African Fleet Classification Mapping

The typical Ugandan vehicle fleet includes vehicles not found in international standards. Mapping to the MoWT classification:

| Local Vehicle Name | Description | MoWT Capacity Class (Table 5-4) | MoWT Pavement Class (Vol. 3) |
|-------------------|-------------|-------------------------------|------------------------------|
| Boda-boda | Motorcycle taxi | Motor cycles, Scooters | Excluded (negligible damage) |
| Matatu / Taxi | 14-seat minibus (Toyota HiAce) | Light goods vehicle | Light goods vehicle |
| Coaster | 25-30 seat bus (Toyota Coaster) | Buses | Buses |
| Fuso Canter | Medium rigid truck (2-axle, ~8t GVW) | Medium goods vehicle | Truck (rigid, 2-axle) |
| Fuso Fighter | Heavy rigid truck (3-axle, ~16t GVW) | Heavy goods vehicle | Truck (rigid, 3-axle) |
| Trailer truck | Articulated truck (6-axle, ~40t GVW) | Heavy goods vehicle | Truck with trailer |
| Tanker | Fuel/water tanker (articulated or rigid) | Heavy goods vehicle | Truck (by axle config) |
| Pickup / 4x4 | Toyota Hilux, Land Cruiser, etc. | Passenger cars or Light goods | Cars/small pick-ups |
| Bicycle | Pedal cycle | Pedal cycles | Excluded |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

```
Step 2a (Uganda): Determine purpose
  |- Capacity/LOS analysis -> Use MoWT Table 5-4 PCU factors
  |- Pavement design -> Use Vol. 3 Part I categories; need axle load data from Skill #4
  |- Both -> Produce both classifications; clearly label which is which

Step 3a (Uganda): Map to standard classes
  |- Map field count categories to Table 5-4 vehicle types
  |- Handle matatus -> Light goods vehicle (or Buses if > 16 seats)
  |- Handle boda-bodas -> Motor cycles, Scooters
  |- Handle pickups/4x4 -> Passenger cars (if < 9 seats) or Light goods (if cargo)
  \- If vehicle type is ambiguous -> Assign to heavier class (conservative)

Step 5a (Uganda): Select terrain for PCU
  |- Flat (transverse slope around 5%) -> Use "Level" column of Table 5-4
  |- Rolling (transverse slope 5-20%) -> Use "Rolling" column
  |- Mountainous (transverse slope > 20%) -> Use "Mountainous" column
  \- If terrain varies along route -> Process sections separately or use predominant terrain
```

### M.3.2 Professional Judgment (Uganda-Specific)

**Overloading significantly affects pavement classification.** A "medium goods vehicle" (8.5t GVW by classification) operating at 150% of legal load causes pavement damage equivalent to a much heavier vehicle. The classification tells you what the vehicle is; the axle load survey (Skill #4) tells you what it actually weighs. For pavement design, always use measured axle loads when available.

**The matatu/taxi is a borderline classification.** A 14-seat Toyota HiAce is classified as "Light goods vehicle" in MoWT Table 5-4 (unladen weight < 1,500 kg, payload capacity < 760 kg). However, when fully loaded with passengers and roof-rack cargo, its actual weight may place it in a higher category. For PCU purposes, the LGV classification is appropriate (similar road-space impact as a large car). For pavement purposes, it causes negligible damage.

**Boda-boda traffic does not affect pavement design but dominates capacity on some roads.** On urban and peri-urban roads in Uganda, boda-bodas can constitute 40-60% of traffic volume. While their PCU is low (1.0), their absolute numbers mean they contribute significantly to total PCU flow. Ignoring them in capacity analysis would substantially underestimate demand.

### M.3.3 Common Errors (Uganda-Specific)

1. **Using flat-terrain PCU factors on mountainous roads.** A heavy goods vehicle has PCU 3.5 on flat terrain but 20.0 on mountainous terrain. This 6x difference fundamentally changes the capacity analysis.
2. **Classifying all trucks as "heavy goods vehicles."** The distinction between medium (GVW < 8,500 kg) and heavy (GVW > 8,500 kg) matters for both PCU (2.5 vs 3.5 on flat) and pavement design.
3. **Not separating capacity and pavement classifications.** A capacity analysis using Vol. 3 pavement categories, or a pavement analysis using Vol. 1 PCU categories, will produce incorrect results.
4. **Ignoring boda-boda contribution to PCU flow.** Even at PCU 1.0, 500 boda-bodas/hour add 500 pcu/hr to the flow.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| PCU factors | MoWT Table 5-4 | Uganda | See Table 5-4 in M.2.1 | MoWT Vol. 1, verified |
| Heavy vehicle definition | GVM >= 4,000 kg | Uganda | -- ASSUMED: Heavy vehicles = GVM >= 4,000 kg per MoWT Section 5.4.1.5 | MoWT definition |
| Terrain for PCU | Rolling | Not specified | -- ASSUMED: Rolling terrain. PCU factors from MoWT Table 5-4 "Rolling" column. | Conservative middle assumption |
| Typical HV% (trunk road) | 25-35% | No classified data | -- ASSUMED: Heavy vehicle % of [X]% (typical Uganda trunk road range). Verify with classified count data. | Based on typical Uganda trunk road composition |
| Typical HV% (district road) | 10-20% | No classified data | -- ASSUMED: Heavy vehicle % of [X]% (typical Uganda district road). | Based on typical Uganda district road composition |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| HV% (trunk road) | 5 | 60 | % | Experience | Warn if outside 15-45% (typical Uganda trunk road range) |
| HV% (district road) | 1 | 40 | % | Experience | Warn if outside 5-25% |
| Motorcycle % (district road) | 5 | 70 | % | Experience | Warn if < 10% (motorcycles may not have been counted) |

### M.5.2 Standards Compliance Checks

- **Check:** PCU factors match MoWT Table 5-4 for the specified terrain.
- **Standard:** MoWT Vol. 1, Table 5-4
- **Pass condition:** Factors match the table values exactly
- **Fail action:** Warn -- "PCU factor for [vehicle type] on [terrain] does not match MoWT Table 5-4 value of [expected]."

- **Check:** Motorcycle/boda-boda category is present in classification.
- **Standard:** Uganda practice
- **Pass condition:** Boda-boda/motorcycle is a separate classification category
- **Fail action:** Warn -- "No motorcycle category in classification. Boda-bodas are a significant traffic component on most Uganda roads."

### M.5.3 Departures / Relaxations Process

No formal departures process. Vehicle classification methodology follows the MoWT definitions. Non-standard classification schemes should be documented and justified in the design report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Very high motorcycle % (> 50%) | Unusual fleet composition; standard PCU approach may be inadequate | SENIOR REVIEW -- Motorcycle traffic exceeds 50% of total volume. Consider motorcycle-specific capacity analysis methodology. |
| Unclassified "other" vehicles > 10% | Classification quality concern | SENIOR REVIEW -- More than 10% of vehicles are unclassified. Re-examine count data and classification scheme. |
| Heavy vehicle % > 40% | May indicate mining/industrial corridor or overloaded fleet | NOTE -- Heavy vehicle % is [X]%. Verify classification and consider axle load survey to assess actual loading. |
| Significant tanker traffic | Special loading considerations for pavement design | NOTE -- Tanker traffic observed. Tankers often travel loaded in one direction and empty in the other -- directional loading analysis may be needed for Skill #5 (ESA). |

---

## M.7 Worked Example -- Uganda

### Example: Classify Traffic on a Uganda Trunk Road for Both Capacity and Pavement Purposes

**Source:** Hypothetical, based on MoWT methodology.

**Given:**
- Road: Jinja-Iganga Road (trunk road, paved, rolling terrain)
- Classified count data (AADT, both directions combined):
  - Passenger cars: 600
  - Pickups/4x4: 350
  - Matatus/taxis (14-seat): 200
  - Buses (large): 80
  - Medium trucks (2-axle rigid, ~8t GVW): 150
  - Heavy trucks (3-axle rigid, >8.5t GVW): 120
  - Truck-trailers (articulated, 6-axle): 90
  - Boda-bodas (motorcycles): 400
  - Bicycles: 60
  - **Total: 2,050 vpd**

**Solution:**

**Part A: Capacity Analysis (PCU, Rolling Terrain)**

Mapping to MoWT Table 5-4 categories and applying rolling terrain PCU factors:

| MoWT Category | Vehicles | Count | PCU Factor (Rolling) | PCU Volume |
|---------------|----------|-------|---------------------|------------|
| Passenger cars | Cars + Pickups | 950 | 1.0 | 950 |
| Light goods vehicle | Matatus/taxis | 200 | 1.5 | 300 |
| Medium goods vehicle | Medium trucks | 150 | 5.0 | 750 |
| Heavy goods vehicle | Heavy trucks + Truck-trailers | 210 | 8.0 | 1,680 |
| Buses | Large buses | 80 | 4.0 | 320 |
| Motor cycles, Scooters | Boda-bodas | 400 | 1.0 | 400 |
| Pedal cycles | Bicycles | 60 | 0.5 | 30 |
| **TOTAL** | | **2,050** | | **4,430 pcu** |

**Notes:**
- Pickups/4x4 classified as "Passenger cars" (< 9 seats, primarily passenger use)
- Matatus classified as "Light goods vehicle" per MoWT definition (unladen < 1,500 kg)
- Heavy trucks and truck-trailers combined into "Heavy goods vehicle" (GVW > 8,500 kg)

**Part B: Heavy Vehicle Percentage**

Heavy vehicles (GVM >= 4,000 kg) = Medium trucks (150) + Heavy trucks (120) + Truck-trailers (90) + Buses (80) = **440 vehicles**

**Heavy vehicle % = 440 / 2,050 = 21.5%**

(Excluding motorcycles and bicycles from denominator: 440 / 1,590 = 27.7%)

**Part C: Pavement Design Classification (Vol. 3 Part I)**

For pavement design, the relevant vehicles are those causing pavement damage:

| Pavement Category | Vehicles/day | Notes |
|-------------------|-------------|-------|
| Cars/pickups (negligible damage) | 950 | Excluded from ESA calculation |
| Light goods (negligible damage) | 200 | Excluded from ESA |
| Medium rigid trucks (2-axle) | 150 | ESA from axle load survey data |
| Heavy rigid trucks (3-axle) | 120 | ESA from axle load survey data |
| Articulated trucks (6-axle) | 90 | ESA from axle load survey data |
| Buses | 80 | ESA from axle load survey data |
| Motorcycles/bicycles | 460 | Excluded from ESA |
| **Commercial vehicles for ESA** | **440** | **Need axle load data from Skill #4** |

**Important:** The pavement design categories require actual axle load data (from Skill #4) to calculate vehicle damage factors and ESAs. The classification here identifies which vehicles to include in the ESA calculation; the actual damage is calculated in Skill #5.

**Result Summary:**

| Parameter | Value |
|-----------|-------|
| Total AADT | 2,050 vpd |
| PCU-adjusted AADT (rolling) | 4,430 pcu/day |
| Heavy vehicle % (total) | 21.5% |
| Heavy vehicle % (excl. M/C and bicycles) | 27.7% |
| Commercial vehicles for ESA | 440 vpd |

**Escalation:** None -- classification is straightforward. Note that PCU-adjusted flow (4,430 pcu/day) is 2.16x the vehicle count (2,050 vpd), reflecting the significant impact of heavy vehicles on rolling terrain.

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Section 5.4.1.5 and Table 5-4.
2. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 3 Part I: Flexible Pavements*, January 2010, Section 2.2.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft. MoWT Table 5-4 verified against Vol. 1 PDF. Vol. 3 vehicle categories from Section 2.2 verified. Capacity vs pavement classification distinction explicitly documented. |
