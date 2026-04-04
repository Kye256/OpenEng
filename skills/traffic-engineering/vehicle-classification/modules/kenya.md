# Vehicle Classification -- Kenya Module

> **Parent Skill:** #3 Vehicle Classification
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.2: Traffic Surveys (2025), Table 2.1; RDM 1.2 Table 8.2 (parking PCU)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.2 | 2025 | Table 2.1 (Vehicle Classification), Section 2.1.2, Section 3.2 | Current |
| Kenya Road Design Manual RDM 1.2 | 2025 | Table 7.3 (Vehicle Classification for Axle Load Surveys), Table 8.2 (Conversion Factors to Car Space Unit) | Current |
| Kenya Traffic Act | Cap 403 | Vehicle definitions and weight limits | Current |

### M.1.2 Institutional Context

Vehicle classification in Kenya serves multiple purposes, each drawing from different tables in RDM 1.2:

- **Traffic surveys and capacity analysis:** Uses Table 2.1 (13-class system) with passenger car unit (PCU) equivalences for capacity analysis. Table 8.2 provides parking space equivalence factors.
- **Axle load surveys and pavement design:** Uses Table 7.3 (6-class system for commercial vehicles only: B, OB, LGV, MGV, HGV, AHGV). Only goods vehicles exceeding 3,500 kg gross weight and buses with seating capacity >= 26 persons are surveyed.
- **Speed surveys:** Classification may be simplified to 3 or fewer classes for queue delay surveys (Section 6.4.2).

**Important distinction:** Table 2.1 is for general traffic surveys and capacity analysis. Table 7.3 is specifically for axle load surveys and excludes non-damaging vehicles. The same vehicle fleet is classified differently depending on the survey purpose.

### M.1.3 Standard Philosophy

The Kenya RDM states that "the vehicle classification system that shall be used for traffic studies" is Table 2.1 (Section 2.1.2). However, it also notes that "classification is a dynamic process and is project based" and classes "are also expected to change slightly with time" (Section 3.2). For a particular survey, partial classes may be surveyed or classes may be broken down further based on the survey objective.

---

## M.2 Country-Specific Knowledge

### M.2.1 Vehicle Classification System (RDM 1.2, Table 2.1)

**Table K.1: Kenya Vehicle Classification for Traffic Studies (Verified)**

**Passenger Vehicles:**

| Vehicle Class | Code | Description (per Traffic Act Cap 403) | Axle Configuration |
|--------------|------|--------------------------------------|-------------------|
| Pedal Cycle | PC | Non-motorised bicycle or tricycle | -- |
| Motorcycle | MC | Self-propelled vehicle with less than 3 wheels | -- |
| Three Wheelers & Tuk-tuks | MR | Self-propelled vehicle with three wheels | -- |
| Cars, Jeeps, SUV, Pick-up | C | Passenger motor vehicle, seating <= 9 persons including driver | -- |
| Microbus | MCB | Two axle rigid chassis, seating 10-14 persons including driver | 2-Axle Rigid |
| Minibus | MB | Two axle rigid chassis, seating 15-25 persons including driver | 2-Axle Rigid |
| Bus | B | Two axle rigid chassis, seating 26-53 persons including driver | 2-Axle Rigid |
| Omnibus | OB | Three or four axle motor vehicles, seating > 53 persons including driver | 3/4-Axle Rigid or Articulated |

**Goods Vehicles:**

| Vehicle Class | Code | Description (per Traffic Act Cap 403) | Axle Configuration |
|--------------|------|--------------------------------------|-------------------|
| Light Goods Vehicle | LGV | Two axle rigid chassis, gross vehicle weight <= 3,500 kg | 2-Axle Rigid |
| Medium Goods Vehicle | MGV | Two axle rigid chassis, gross vehicle weight 3,500-8,500 kg | 2-Axle Rigid |
| Heavy Goods Vehicle | HGV | 3 or 4 axle rigid chassis, gross vehicle weight > 8,500 kg | 3/4-Axle Rigid |
| Articulated Heavy Goods Vehicle | AHGV | Articulated goods vehicle having 3 or more axles, gross weight > 8,500 kg | 3+ Axles Articulated |

**Source:** Kenya RDM 1.2, Table 2.1 (Verified from PDF)

### M.2.2 Axle Load Survey Classification (RDM 1.2, Table 7.3)

For axle load surveys, only commercial vehicles causing pavement damage are classified:

| Vehicle Class | Code | Description | Axle Configuration |
|--------------|------|-------------|-------------------|
| Bus | B | Two axle rigid, seating 26-53 persons | 2-Axle Rigid |
| Omnibus | OB | Three or four axle, seating > 53 persons | 3/4-Axle Rigid or Articulated |
| Light Goods Vehicle | LGV | Two axle rigid, gross weight <= 3,500 kg | 2-Axle Rigid |
| Medium Goods Vehicle | MGV | Two axle rigid, gross weight 3,500-8,500 kg | 2-Axle Rigid |
| Heavy Goods Vehicle | HGV | 3/4 axle rigid, gross weight > 8,500 kg | 3/4-Axle Rigid |
| Articulated Heavy Goods Vehicle | AHGV | Articulated, 3+ axles, gross weight > 8,500 kg | 3+ Axles Articulated |

**Source:** Kenya RDM 1.2, Table 7.3 (Verified from PDF)

**Note:** Cars (C), motorcycles (MC), three-wheelers (MR), microbuses (MCB), minibuses (MB), pedal cycles (PC), and LGVs under 3,500 kg exert insignificant loading on pavements and are excluded from axle load surveys. However, LGV is included in Table 7.3 for completeness.

### M.2.3 PCU and Parking Space Equivalence Factors (RDM 1.2, Table 8.2)

**Table 8.2: Conversion Factors to Car Space Unit (Verified)**

| Vehicle Type | Equivalence Factor for Car Space Unit |
|-------------|--------------------------------------|
| Bicycle | 0.1 |
| Two-wheeler / Three-wheeler | 0.3 |
| Car | 1.0 |
| Minibus | 1.5 |
| LGV | 2.0 |
| MGV | 3.0 |
| Omnibus | 3.9 |
| HGV | 4.0 |

**Source:** Kenya RDM 1.2, Table 8.2 (Verified from PDF)

**Note:** These factors are specifically for parking space unit conversion. For roadway capacity PCU factors by terrain, Kenya RDM 1.3 should be referenced (not available in RDM 1.2). The parking equivalence factors provide a reasonable approximation for general PCU analysis on flat terrain.

### M.2.4 Key Differences from Uganda Vehicle Classification

| Aspect | Kenya (RDM 1.2 Table 2.1) | Uganda (MoWT Table 5-4) |
|--------|--------------------------|------------------------|
| Number of classes | 12 motorised + PC = 13 total | 7 (including PC) |
| Three-wheeler class | Separate class (MR) | Not a separate class |
| Microbus class | Separate (MCB, 10-14 seats) | Grouped under Light goods vehicle |
| Minibus class | Separate (MB, 15-25 seats) | Grouped under Light goods vehicle |
| Bus vs Omnibus | Separated by seat count (26-53 vs >53) | Single "Buses" class |
| HGV threshold | Gross weight > 8,500 kg | GVM > 8,500 kg |
| Code system | Standardised codes (PC, MC, MR, etc.) | Descriptive names |
| Legal basis | Traffic Act (Cap 403) | MoWT manual definitions |

### M.2.5 Kenya Vehicle Fleet Mapping

Common Kenya vehicles mapped to the RDM 1.2 classification:

| Local Vehicle Name | Description | RDM 1.2 Class | Code | Pavement Class (Table 7.3) |
|-------------------|-------------|--------------|------|--------------------------|
| Boda-boda | Motorcycle taxi | Motorcycle | MC | Excluded (negligible) |
| Tuk-tuk | Three-wheeler taxi (Piaggio, Bajaj) | Three Wheelers & Tuk-tuks | MR | Excluded (negligible) |
| Matatu (14-seat) | Nissan Urvan, Toyota HiAce | Microbus | MCB | Excluded (negligible) |
| Matatu (25-seat) | Isuzu NQR, Toyota Coaster | Minibus | MB | Excluded (negligible) |
| Long-distance bus | 45-50 seat coach | Bus | B | Bus (2-axle rigid) |
| Double-decker / articulated bus | > 53 seats | Omnibus | OB | Omnibus (3/4-axle) |
| Pickup / SUV | Toyota Hilux, Land Cruiser | Cars, Jeeps, SUV, Pick-up | C | Excluded (negligible) |
| Isuzu NKR/NPR | Medium rigid truck (2-axle, ~6t GVW) | Medium Goods Vehicle | MGV | MGV (2-axle rigid) |
| Isuzu FVR/FVZ | Heavy rigid truck (3-axle, ~16t GVW) | Heavy Goods Vehicle | HGV | HGV (3/4-axle rigid) |
| Trailer truck | Articulated truck (6-axle, ~40t GVW) | Articulated HGV | AHGV | AHGV (articulated) |
| Canter (Mitsubishi) | Light-medium truck (2-axle, ~3.5t GVW) | LGV or MGV | LGV/MGV | LGV (if <= 3,500 kg) |

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2a (Kenya): Determine purpose
  |- Capacity/LOS analysis -> Use RDM 1.2 Table 2.1 classification; apply PCU factors (Table 8.2 for parking, RDM 1.3 for roadway)
  |- Axle load survey / Pavement design -> Use RDM 1.2 Table 7.3 (commercial vehicles only)
  |- Speed survey / Queue delay -> May simplify to 3 or fewer classes per Section 6.4.2
  |- Both capacity and pavement -> Produce both classifications; clearly label which is which

Step 3a (Kenya): Map to standard classes
  |- Map field count categories to Table 2.1 vehicle classes
  |- Handle matatus: 14-seat -> MCB (Microbus); 25-seat -> MB (Minibus)
  |- Handle boda-bodas -> MC (Motorcycle)
  |- Handle tuk-tuks -> MR (Three Wheelers)
  |- Handle pickups/SUVs -> C (Cars, Jeeps, SUV, Pick-up)
  \- If vehicle type is ambiguous -> Assign to heavier class (conservative)

Step 5a (Kenya): Commercial vehicle identification for pavement
  |- Vehicles for axle load survey = B + OB + MGV + HGV + AHGV (Table 7.3)
  |- Exclude: PC, MC, MR, C, MCB, MB, LGV (exert negligible pavement loading)
  |- But record LGV for completeness (included in Table 7.3)
  \- Note: Buses (B, OB) have high axle loads and MUST be included in pavement analysis
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Motorcycle (boda-boda) traffic is a dominant and growing mode in Kenya.** The Foreword of RDM 1.2 identifies exponential growth of motorcycle traffic as a key challenge. On many urban and peri-urban roads, motorcycles constitute 30-50% of all vehicles. They are critical for road safety analysis and NMT provision but negligible for pavement design. Ensure enumerators are trained to count motorcycles systematically.

**Three-wheelers (tuk-tuks) are significant in coastal towns.** In Mombasa, Malindi, and Lamu, tuk-tuks (MR class) are a major passenger transport mode. On inland roads they are less common. The classification scheme should always include MR as a separate category per Table 2.1.

**The matatu is critical to classify correctly.** A 14-seat matatu (Nissan Urvan / Toyota HiAce) is classified as MCB (Microbus), while a 25-seat matatu (Isuzu NQR) is classified as MB (Minibus). This distinction matters because larger matatus cause more road-space impact and have higher axle loads. Enumerators must be trained to distinguish them by seat count.

**Overloading affects pavement classification more than vehicle type.** As with Uganda, a classified count reveals the vehicle type but not the actual loading. For pavement design, axle load survey data (Skill #4) is essential because overloading is widespread on Kenya's road network.

### M.3.3 Common Errors (Kenya-Specific)

1. **Grouping all matatus together.** The 14-seat (MCB) and 25-seat (MB) matatus have different PCU impacts and different pavement loading. Separate them per Table 2.1.
2. **Not counting three-wheelers in coastal areas.** Tuk-tuks are significant in Mombasa and other coastal towns. Missing them understates capacity demand.
3. **Using Uganda vehicle classes for Kenya projects.** Kenya has its own classification system (Table 2.1) based on Traffic Act Cap 403 definitions. Do not map to Uganda MoWT classes.
4. **Excluding buses from pavement analysis.** Buses (B) and omnibuses (OB) have high axle loads. Table 7.3 explicitly includes them. A capacity-only classification that groups buses with passenger vehicles would miss their pavement damage.
5. **Ignoring PCU contribution of motorcycles.** Even at low individual PCU, high motorcycle volumes contribute significantly to total PCU flow and capacity demand.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Classification system | RDM 1.2 Table 2.1 (13 classes) | Kenya project | -- APPLIED: Kenya RDM 1.2 Table 2.1 vehicle classification system. | RDM 1.2, mandatory |
| HGV threshold | Gross weight > 8,500 kg | Kenya | -- APPLIED: Heavy vehicles defined as gross weight > 8,500 kg per Kenya Traffic Act and RDM 1.2. | RDM 1.2 Table 2.1 |
| Typical HV% (KeNHA trunk road) | 20-35% | No classified data | -- ASSUMED: Heavy vehicle % of [X]% (typical Kenya trunk road range). Verify with classified count. | Based on typical Kenya trunk road composition |
| Typical motorcycle % (urban) | 20-40% | No classified data | -- ASSUMED: Motorcycle % of [X]% (typical Kenya urban road). | Varies significantly by location |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| HV% (KeNHA trunk road) | 5 | 60 | % | Experience | Warn if outside 15-45% (typical Kenya trunk road range) |
| HV% (KeRRA rural road) | 1 | 40 | % | Experience | Warn if outside 5-25% |
| Motorcycle % (urban) | 5 | 60 | % | Experience | Warn if < 10% (motorcycles may not have been counted) |

### M.5.2 Standards Compliance Checks

- **Check:** Classification scheme uses RDM 1.2 Table 2.1 classes (or justified subset).
- **Standard:** RDM 1.2, Section 2.1.2
- **Pass condition:** At minimum, PC, MC, MR, C, MB, B, LGV, MGV, HGV, AHGV classes present
- **Fail action:** Warn -- "Classification scheme does not include all required RDM 1.2 Table 2.1 classes."

- **Check:** Motorcycle (MC) and Three Wheeler (MR) are separate categories.
- **Standard:** RDM 1.2 Table 2.1
- **Pass condition:** MC and MR are distinct count categories
- **Fail action:** Warn -- "Motorcycles and three-wheelers are not separated. RDM 1.2 Table 2.1 requires separate MC and MR classes."

### M.5.3 Departures / Relaxations Process

Departures from the standard classification require approval from the Chief Engineer for Roads. Any simplified classification must be justified based on the survey objective and documented in the traffic survey report.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Very high motorcycle % (> 50%) | Unusual fleet composition; may need motorcycle-specific analysis | SENIOR REVIEW -- Motorcycle traffic exceeds 50% of total volume. Consider motorcycle-specific capacity and safety analysis. |
| Unclassified "other" vehicles > 10% | Classification quality concern | SENIOR REVIEW -- More than 10% of vehicles are unclassified. Re-examine count data and classification scheme. |
| Heavy vehicle % > 40% | May indicate mining/industrial corridor or overloaded fleet | NOTE -- Heavy vehicle % is [X]%. Verify classification and consider axle load survey to assess actual loading. |
| Significant tuk-tuk traffic (MR > 10%) | Coastal town or special context | NOTE -- Three-wheeler traffic is significant at [X]%. Ensure classification separates MR from MC. |

---

## M.7 Worked Example -- Kenya

### Example: Classify Traffic on a KeNHA Trunk Road for Both Capacity and Pavement Purposes

**Source:** Hypothetical, based on RDM 1.2 methodology.

**Given:**
- Road: Nairobi-Mombasa Highway (A109), section near Athi River
- Classified count data (AADT, both directions combined):
  - Cars/Jeeps/SUV/Pickups (C): 4,500
  - Motorcycles (MC): 1,800
  - Three-wheelers (MR): 50
  - Microbuses/14-seat matatus (MCB): 600
  - Minibuses/25-seat matatus (MB): 400
  - Buses (B): 200
  - Omnibuses (OB): 30
  - Light Goods Vehicles (LGV): 500
  - Medium Goods Vehicles (MGV): 800
  - Heavy Goods Vehicles (HGV): 600
  - Articulated HGV (AHGV): 500
  - Pedal Cycles (PC): 100
  - **Total: 10,080 vpd**

**Solution:**

**Part A: Capacity Analysis (PCU, using Table 8.2 parking equivalence as proxy)**

| RDM 1.2 Class | Code | Count | Approx PCU Factor | PCU Volume |
|---------------|------|-------|-------------------|------------|
| Pedal Cycles | PC | 100 | 0.1 | 10 |
| Motorcycles | MC | 1,800 | 0.3 | 540 |
| Three-wheelers | MR | 50 | 0.3 | 15 |
| Cars/Jeeps/SUV | C | 4,500 | 1.0 | 4,500 |
| Microbuses | MCB | 600 | 1.5 | 900 |
| Minibuses | MB | 400 | 1.5 | 600 |
| Buses | B | 200 | 3.9 | 780 |
| Omnibuses | OB | 30 | 3.9 | 117 |
| LGV | LGV | 500 | 2.0 | 1,000 |
| MGV | MGV | 800 | 3.0 | 2,400 |
| HGV | HGV | 600 | 4.0 | 2,400 |
| AHGV | AHGV | 500 | 4.0 | 2,000 |
| **TOTAL** | | **10,080** | | **15,262 pcu** |

**Note:** PCU factors from Table 8.2 (parking equivalence) used as proxy. For detailed roadway capacity analysis, use terrain-specific PCU factors from RDM 1.3 when available.

**Part B: Heavy Vehicle Percentage**

Commercial vehicles (gross weight > 3,500 kg or buses >= 26 seats) = MGV (800) + HGV (600) + AHGV (500) + B (200) + OB (30) = **2,130 vehicles**

**Heavy vehicle % = 2,130 / 10,080 = 21.1%**

(Excluding motorcycles, three-wheelers, and bicycles: 2,130 / 8,130 = 26.2%)

**Part C: Pavement Design Classification (Table 7.3)**

| Pavement Category (Table 7.3) | Vehicles/day | Notes |
|-------------------------------|-------------|-------|
| B (Bus) | 200 | ESA from axle load survey data |
| OB (Omnibus) | 30 | ESA from axle load survey data |
| LGV (Light Goods) | 500 | Included for completeness; minimal damage |
| MGV (Medium Goods) | 800 | ESA from axle load survey data |
| HGV (Heavy Goods) | 600 | ESA from axle load survey data |
| AHGV (Articulated) | 500 | ESA from axle load survey data |
| **Commercial vehicles for ESA** | **2,630** | **Need axle load data from Skill #4** |
| PC + MC + MR + C + MCB + MB (excluded) | 7,450 | Negligible pavement damage |

**Result Summary:**

| Parameter | Value |
|-----------|-------|
| Total AADT | 10,080 vpd |
| PCU-adjusted AADT | 15,262 pcu/day |
| Heavy vehicle % (total) | 21.1% |
| Heavy vehicle % (excl. MC/MR/PC) | 26.2% |
| Commercial vehicles for ESA (Table 7.3) | 2,630 vpd |
| Motorcycle % | 17.9% |

**Escalation:** None -- classification is straightforward. Note that PCU-adjusted flow (15,262 pcu/day) is 1.51x the vehicle count (10,080 vpd). Motorcycle traffic at 17.9% is significant for safety analysis.

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Part 2 -- Traffic Surveys (RDM 1.2)*, 2025, Table 2.1, Table 7.3, Table 8.2.
2. Kenya Traffic Act, Chapter 403, Laws of Kenya.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft. Vehicle classification from RDM 1.2 Table 2.1, axle load survey classes from Table 7.3, parking PCU factors from Table 8.2 verified against RDM 1.2 PDF. Kenya vehicle fleet mapping based on local knowledge. |
