# Traffic Survey Design -- Kenya Module

> **Parent Skill:** #1 Traffic Survey Design
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.2: Traffic Surveys (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.2 | 2025 | Chapters 2-7 (Traffic Survey Planning, Classified Counts, OD Surveys, Traffic Growth, Speed/Delay, Axle Loads) | Current -- mandatory for all classified roads in Kenya |
| Kenya Road Design Manual RDM 1.3 | 2025 | Chapter 2 (Road Classification), Chapter 3 (Design Controls) | Current -- road classification context |
| Kenya Roads Act | 2007 | Institutional framework for road authorities | Current |

### M.1.2 Institutional Context

Traffic surveys in Kenya are conducted by or on behalf of four road authorities under the Ministry of Roads and Transport (MoRT):

- **KeNHA (Kenya National Highways Authority):** Manages national trunk roads (Class A and B -- international and national highways). KeNHA maintains a network of 22 Virtual Weigh Stations (VWS) and 9 permanent weighbridges across the national highway network, providing continuous traffic and axle load data. KeNHA projects typically require comprehensive traffic data including classified counts, speed surveys, and axle load surveys.
- **KeRRA (Kenya Rural Roads Authority):** Manages rural roads (Class C, D, E, and specialist rural classes F, G, K, L, P, R, S, T, U, W). Traffic data on rural roads is often limited. Surveys for KeRRA projects are typically short-duration manual counts commissioned during feasibility or design.
- **KURA (Kenya Urban Roads Authority):** Manages urban roads (Class UA, UC, UL). Urban traffic surveys require intersection turning movement counts, speed and delay surveys, and may include OD surveys and parking surveys for major infrastructure projects.
- **47 County Governments:** Manage county roads under devolved functions per the Constitution of Kenya 2010. Engineering capacity varies significantly between counties. Class D and E roads within counties may have limited traffic data.

### M.1.3 Standard Philosophy

The Kenya RDM 1.2 has the status of a Manual. Users shall apply the contents to fully satisfy the requirements set out (Document Management section). The RDM uses mandatory "shall" language -- this is more prescriptive than the Uganda MoWT Road Design Manual (2010) which uses advisory "should" language.

The RDM 1.2 Preface notes: "the traffic engineer should attempt to meet all criteria presented in the Manual. However, the Manual should not be considered a standard which must be met regardless of impacts." The traffic engineer must exercise good judgment on the scope of individual projects.

**Departures from standards:** Where the designer departs from a standard, written approval must be obtained from the **Chief Engineer for Roads** (RDM 1.3, Section 1.7). This is a formal process.

---

## M.2 Country-Specific Knowledge

### M.2.1 Vehicle Classification System (RDM 1.2, Table 2.1)

The Kenya RDM specifies a 13-class vehicle classification system for traffic studies:

**Passenger Vehicles:**

| Vehicle Class | Code | Description | Axle Configuration |
|--------------|------|-------------|-------------------|
| Pedal Cycle | PC | Non-motorised bicycle or tricycle | -- |
| Motorcycle | MC | Self-propelled vehicle with less than 3 wheels | -- |
| Three Wheelers & Tuk-tuks | MR | Self-propelled vehicle with three wheels | -- |
| Cars, Jeeps, SUV, Pick-up | C | Passenger motor vehicle, seating capacity <= 9 persons | -- |
| Microbus | MCB | Two axle rigid chassis, seating 10-14 persons | 2-Axle Rigid |
| Minibus | MB | Two axle rigid chassis, seating 15-25 persons | 2-Axle Rigid |
| Bus | B | Two axle rigid chassis, seating 26-53 persons | 2-Axle Rigid |
| Omnibus | OB | Three or four axle, seating > 53 persons | 3/4-Axle Rigid or Articulated |

**Goods Vehicles:**

| Vehicle Class | Code | Description | Axle Configuration |
|--------------|------|-------------|-------------------|
| Light Goods Vehicle | LGV | Two axle rigid, gross weight <= 3,500 kg | 2-Axle Rigid |
| Medium Goods Vehicle | MGV | Two axle rigid, gross weight 3,500-8,500 kg | 2-Axle Rigid |
| Heavy Goods Vehicle | HGV | 3 or 4 axle rigid, gross weight > 8,500 kg | 3/4-Axle Rigid |
| Articulated Heavy Goods Vehicle | AHGV | Articulated, 3+ axles, gross weight > 8,500 kg | 3+ Axles Articulated |

**Source:** Kenya RDM 1.2, Table 2.1 (Verified from PDF)

**Key differences from Uganda classification:**
- Kenya has a separate Three Wheeler / Tuk-tuk (MR) class -- absent in Uganda
- Kenya explicitly separates Microbus (MCB, 10-14 seats) from Minibus (MB, 15-25 seats) -- Uganda groups both under "Light goods vehicle"
- Kenya uses code-based classification (PC, MC, MR, C, MCB, MB, B, OB, LGV, MGV, HGV, AHGV) -- Uganda uses descriptive names
- Kenya uses Traffic Act (Cap 403) definitions -- Uganda uses MoWT manual definitions

### M.2.2 Survey Methods for Kenya

The following survey methods are specified in RDM 1.2:

**Manual Classified Count (RDM 1.2, Section 3.4.1):**
- Most common method for project-specific surveys in Kenya.
- Enumerators assigned by the roadside to record traffic as it passes.
- Several applications can be customised to allow entering traffic data into phones or tablets, with some allowing image capture.
- Prone to errors with increasing traffic flow; rotation of enumerators recommended.
- Traffic count surveyors should not be very close to axle load survey team or roadside interviewing team to avoid distraction.

**Automatic Traffic Counter (RDM 1.2, Section 3.4.2):**
- Pneumatic tubes or inductive loops installed on the road.
- Record data continuously over a long period at relatively low operational cost.
- 15-metre-long tubes are standard. Tubes more than 18 metres are not recommended.
- Thicker tubes should be used on roads with high HGV traffic or unpaved surfacing.
- Specialised bicycle-specific counters use thinner tubes.
- On two-tube installation, both tubes should be the same length; manual counting needed to periodically check accuracy.

**Video Survey (RDM 1.2, Section 3.4.2):**
- Used for intersection turning movement counts, especially at busy intersections.
- Video data collected over a 48-hour period can improve level of service calculations.
- Can provide data for traffic signal timing analyses.

**Origin-Destination Survey (RDM 1.2, Chapter 4):**
- Three methods: roadside interviews, registration number plate survey, household survey.
- Kenya vehicle registration format enables plate-based tracking (Figure 4.1).
- Sampling bias must be considered (Section 4.4).

### M.2.3 Survey Duration and Timing (RDM 1.2, Section 3.5.1)

**Duration requirements (from RDM 1.2):**
- **Ideal:** Counts conducted over 12, 16, or 24 hours continuously for at least 7 consecutive days per station.
- **Partial count:** When full overnight counts are not practical, duration should preferably be 16 hours, or at least 12 hours each day, with at least two 24-hour counts, on one weekday and one weekend day.
- **Minimum:** If a 7-day count is not feasible, the survey should run for at least 3 weekdays and either Saturday or Sunday. Reduction in duration must be approved by the traffic engineer.
- **Repeat counts:** If possible, 7-day counts should be repeated at least twice a year, once during the peak season and another during the off-peak season.

**Timing restrictions:**
- Avoid periods of extreme unusual traffic flow: election days, annual festivals, public holidays.
- Abnormal but regular situations (e.g., week of salary payments) should be included and adjusted accordingly.
- School calendars and harvest periods are seasonal factors to consider (Section 3.5.2).

**Intersection turning movement counts (Section 3.6.2):**
- Consecutive 24-hour period, usually 12:00 AM to 12:00 AM.
- 16-hour count may be sufficient if manual counting during night-time is not possible.
- Preferred days: Tuesdays, Wednesdays, and Thursdays.
- Surveys on Monday, Friday, and weekends only if justified by engineering judgement.

### M.2.4 Seasonal Considerations for Kenya

Kenya has distinct wet and dry seasons that vary by region:

| Season | Months (typical) | Traffic Implications |
|--------|-----------------|---------------------|
| Long rains | March -- May | Traffic may decrease on unpaved roads; paved road traffic relatively stable |
| Cool dry season | June -- August | Generally stable traffic; good survey period |
| Short rains | October -- November | Shorter wet period; moderate impact |
| Hot dry season | December -- February | Generally stable; holiday travel in December |

**Seasonal Factors (SF) per RDM 1.2, Section 3.5.2:**
SF = (Traffic volume count for a specific month) / (Average traffic volume count for 12 months) (Equation 3.1)

SF should be obtained from the Chief Engineer (Roads). These factors are to be updated periodically. In the absence of long duration data, data obtained from the virtual weigh stations (VWS) can be used (Section 7.2).

**Neutral survey months (from Section 6.2.1):** February, March, June, July, September, and October are suggested as neutral months based on the typical Kenyan school calendar.

### M.2.5 K-Factor for Design Hour Volume (RDM 1.2, Table 3.1)

**Table 3.1: General Ranges for K Factors (Verified)**

| Facility Type | Normal Range of K-Factor |
|--------------|-------------------------|
| Rural | 0.15 -- 0.25 |
| Semi-urban | 0.12 -- 0.15 |
| Urban | 0.07 -- 0.12 |

**Source:** RDM 1.2, Table 3.1 (Verified from PDF). Source credited to *Traffic Engineering* by Roess, Prassas & MacShane.

Design Hour Volume (DHV) for rural roads is the 30th highest hourly volume (30HV), derived from: DDHV = AADT x K x D (Equation 3.4), where K = K-factor and D = directional split (peak direction typically 55-70% of total).

For urban roads, design for the 100th highest hourly flow is normal practice (Section 3.5.4).

### M.2.6 Station Spacing and Census Points

For Kenya highway projects, the following station guidance applies:

**Permanent Census Points:**
- 22 Virtual Weigh Stations (VWS) distributed on the national highway network (Table 7.1).
- 9 permanent weighbridges (Table 7.2) at key locations (Mariakani, Mtwapa, Athi River, Gilgil, Webuye, Rongo, Juja, Busia, Isinya).
- Count locations should correspond to permanent count stations as much as practicable (Section 3.3).

**Project-specific stations:**
- Uniformly distributed along the road section to give good representation of flow characteristics.
- At major intersections (turning movement counts can effectively cover several road links).
- Road hierarchy and functional class influence selection of census locations.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2a (Kenya): Check project ToR for specific survey requirements
  |- If ToR specifies survey requirements -> Follow ToR (may exceed RDM minimum)
  |- If donor-funded project (World Bank, AfDB, JICA) -> Check donor requirements
  \- If no ToR guidance -> Apply RDM 1.2 standard practice below

Step 4a (Kenya): Select survey type
  |- KeNHA trunk road project -> 7-day ATC + 7-day MCC (or minimum 3 weekdays + weekend) + axle load survey (if pavement design)
  |- KeRRA rural road project -> Minimum 3-day MCC (12-hour) + 1 weekend day
  |- KURA urban road project -> MCC + intersection turning counts + speed/delay survey + possibly parking survey
  |- County road project -> Minimum 3-day MCC; budget constraints likely
  \- If VWS or permanent weighbridge data available on corridor -> Obtain from KeNHA; supplement with project-specific MCC

Step 5a (Kenya): Check motorcycle counting requirements
  |- Motorcycle (MC) and Three Wheeler (MR) are separate classes in Table 2.1
  |- Ensure enumerators are trained to distinguish MC from MR
  |- On urban roads in Nairobi, Mombasa, Kisumu -> Motorcycle volumes may be very high
  \- For NMT counts -> Separate methodology per Section 3.7 (pedestrians, cyclists, handcarts)
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Motorcycle (boda-boda) traffic has grown exponentially in Kenya.** The Foreword of RDM 1.2 specifically notes "exponential growth of motorcycle traffic" as an internal challenge. Kenya maintains a vehicle registry that can be computed with and without motorcycles (Table 5.1 note). Motorcycle traffic is significant for capacity and safety analysis but causes negligible pavement damage.

**Northern Corridor traffic is critical.** The Mombasa-Nairobi-Malaba corridor (A109/A104) carries the majority of Kenya's international freight. Traffic surveys on this corridor must account for port-driven traffic patterns, which may not follow typical seasonal patterns but instead follow shipping cycles.

**Overloading is a widespread problem.** The RDM 1.2 Foreword notes "pavement overloading by heavy goods vehicles" as an internal challenge. Axle load surveys (Chapter 7) should be carried out even where legal limits could theoretically be applied, because actual loading differs significantly from legal limits.

**VWS data is a valuable supplement.** Kenya's 22 Virtual Weigh Stations provide continuous traffic and weight data. The traffic engineer should first check if a VWS exists near the study road before commissioning new surveys. VWS data can provide seasonal factors and growth rate information (Section 7.2).

### M.3.3 Common Errors (Kenya-Specific)

1. **Not counting three-wheelers (tuk-tuks) separately.** In coastal towns (Mombasa, Malindi) and some county towns, three-wheelers are significant. They have a separate class (MR) in Table 2.1.
2. **Using pneumatic tubes on unpaved roads without thicker tubes.** Tubes degrade rapidly under heavy traffic and on poor surfaces (Section 3.4.2).
3. **Conducting counts during avoidance behaviour near axle load surveys.** Traffic flow is normally unusual during an axle load survey because operators of goods vehicles suspect arrests for overloading (Section 3.5.2). Conduct traffic counts before axle load surveys.
4. **Not distinguishing weekday and weekend traffic.** Weekend traffic may differ significantly from weekday traffic in direction and composition, especially on major corridors and urban routes (Section 3.5.2).
5. **Ignoring directional variation on dual carriageways.** The traffic engineer must be cognisant of directional distribution and variation in traffic composition on dual carriageways (Section 3.5.2).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| MCC duration | 12 hours (06:00--18:00) | Rural road | -- ASSUMED: 12-hour count. Partial-day count to be grossed up per RDM 1.2 Equation 3.2. | RDM 1.2 Section 3.5.1 |
| ATC duration | 7 days | Not specified | -- ASSUMED: 7-day ATC count (minimum per RDM 1.2) | RDM 1.2 Section 3.5.1 |
| Survey period | Neutral month (Feb, Mar, Jun, Jul, Sep, Oct) | Not specified | -- ASSUMED: Survey planned for neutral month per RDM 1.2 Section 6.2.1. Seasonal adjustment factors will be applied if conducted in other months. | RDM 1.2 |
| K-factor (rural) | 0.15 | Rural road, no site data | -- ASSUMED: K = 0.15 (lower end of RDM 1.2 Table 3.1 rural range 0.15-0.25). | RDM 1.2 Table 3.1 |
| K-factor (urban) | 0.10 | Urban road, no site data | -- ASSUMED: K = 0.10 (mid-range of RDM 1.2 Table 3.1 urban range 0.07-0.12). | RDM 1.2 Table 3.1 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| MCC duration | 6 | 24 | hours | RDM 1.2 Section 3.5.1 | Warn if < 12 hours |
| MCC count days | 1 | 14 | days | RDM 1.2 Section 3.5.1 | Warn if < 3 weekdays + 1 weekend day |
| ATC duration | 3 | 30 | days | RDM 1.2 Section 3.5.1 | Warn if < 7 days |
| K-factor | 0.07 | 0.25 | decimal | RDM 1.2 Table 3.1 | Reject if outside table range |

### M.5.2 Standards Compliance Checks

- **Check:** Survey classification scheme includes all 13 classes from RDM 1.2 Table 2.1 (or justified subset).
- **Standard:** RDM 1.2, Table 2.1
- **Pass condition:** At minimum, PC, MC, C, MB, B, LGV, MGV, HGV, AHGV classes are present.
- **Fail action:** Warn -- "Classification scheme does not include all RDM 1.2 Table 2.1 vehicle classes. Justify any omissions."

- **Check:** Survey period avoids major Kenyan holidays and unusual events.
- **Standard:** RDM 1.2 Section 3.5.1
- **Pass condition:** Survey dates do not fall on election days, annual festivals, or public holidays.
- **Fail action:** Warn -- "Survey dates coincide with [event]. Data may not be representative."

### M.5.3 Departures / Relaxations Process

Any departure from RDM standards requires written approval from the **Chief Engineer for Roads** (RDM 1.3, Section 1.7). The designer must submit justification including the parameter, standard value, proposed departure value, reason, and any mitigation measures.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No existing traffic data on county/rural road | Common on KeRRA/county network | NOTE -- No existing traffic data. Plan minimum 3-day MCC. Use default AADT estimates by road class for screening only. |
| Northern Corridor road (A109/A104) | Port-driven traffic patterns may not follow typical seasonal patterns | SENIOR REVIEW -- Road is on the Northern Corridor (Mombasa port traffic). Consider port shipping cycle effects on traffic patterns. |
| High motorcycle traffic (> 40% of volume) | Exponential motorcycle growth in Kenya | NOTE -- Motorcycle traffic exceeds 40% of total volume. Ensure classification separates MC from MR. Consider motorcycle-specific safety analysis. |
| Very low traffic on specialist rural road (Class F, G, K, L, P, R, S, T, U, W) | Traffic may be highly seasonal (crop-dependent) | NOTE -- Specialist rural road class. Traffic patterns may be strongly seasonal (harvest periods). Recommend counting during both peak and off-peak agricultural seasons. |
| Survey site near permanent weighbridge | Truck avoidance may affect counts | NOTE -- Permanent weighbridge at [location]. Trucks may divert to avoid weighing. Conduct traffic counts before or at distance from weighbridge. |

---

## M.7 Worked Example -- Kenya

### Example: Planning Traffic Surveys for a KeNHA Trunk Road Upgrade

**Source:** Hypothetical, based on RDM 1.2 methodology.

**Given:**
- Road: Nairobi-Nakuru Highway (A104), section from Naivasha to Gilgil (35 km)
- Country: Kenya
- Authority: KeNHA (Class A road)
- Project stage: Detailed design
- Road function: International highway (Northern Corridor)
- Existing data: VWS data available at Gilgil station; last project-specific survey was 2023 (3-day MCC showing ~12,000 vpd)
- Survey date: Planning for July 2026
- Budget: Adequate for comprehensive survey

**Solution:**

**Step 1: Load Kenya module.** Done.

**Step 2: Check project stage.** Detailed design -- reliable AADT, classified data, speed data, and axle load data required. Pavement design data also needed (classified counts + axle load survey for Skill #4).

**Step 3: Review existing data.** 2023 MCC (3-day) exists but is 3 years old on a high-traffic corridor. VWS at Gilgil provides continuous data -- request from KeNHA for growth trends and seasonal factors. VWS data is partially adequate for establishing growth rates but project-specific classified counts are still needed for detailed design.

**Step 4: Select survey types.**
- 7-day ATC at 3 locations (continuous volume, daily patterns)
- 7-day MCC (12-hour, 06:00-18:00) at 3 locations with at least two 24-hour counts per station (vehicle classification)
- Axle load survey at 1 location (for pavement design -- see Skill #4)
- Speed survey at 2 locations (for geometric design -- see RDM 1.2 Chapter 6)

**Step 5: Locate survey stations.**
- Station 1: km 5 from Naivasha (open road between Naivasha and first major junction)
- Station 2: km 18 (midpoint, between towns -- captures trunk road traffic)
- Station 3: km 32 (approach to Gilgil, before junction influence)
- Axle load survey: Station 2 (representative midpoint location)
- Speed survey: Station 1 and Station 3

**Step 6: Determine duration and timing.**
- ATC: 7 consecutive days (Monday to Sunday)
- MCC: 7 consecutive days (with at least two 24-hour counts -- one weekday, one weekend day)
- Period: July 2026 (neutral month per RDM 1.2 Section 6.2.1; cool dry season)
- Check: July has no major Kenyan public holidays. Acceptable.

**Step 7: Prepare survey plan.**

**Result:**

| Station | Chainage | Location | Survey Type | Duration |
|---------|----------|----------|-------------|----------|
| 1 | km 5 | North of Naivasha | ATC + MCC + Speed | 7 days ATC / 7 days MCC / 2-day speed |
| 2 | km 18 | Midpoint section | ATC + MCC + Axle Load | 7 days ATC / 7 days MCC / 7 days axle load |
| 3 | km 32 | South of Gilgil | ATC + MCC + Speed | 7 days ATC / 7 days MCC / 2-day speed |

**Classification:** Use full RDM 1.2 Table 2.1 classification (PC, MC, MR, C, MCB, MB, B, OB, LGV, MGV, HGV, AHGV). Ensure three-wheelers (MR) counted separately given proximity to Naivasha town.

**Data sources:** Request VWS data from KeNHA Gilgil station for seasonal factors (Equation 3.1) and historical growth rate analysis.

**Escalation:** NOTE -- Road is on Northern Corridor. Port traffic patterns should be considered in seasonal adjustment. Request VWS seasonal factors from KeNHA.

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Part 2 -- Traffic Surveys (RDM 1.2)*, 2025.
2. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Part 3 -- Geometric Design of Highways, Rural Roads and Urban Roads (RDM 1.3)*, 2025.
3. Kenya Roads Act, No. 2 of 2007.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft. Vehicle classification from RDM 1.2 Table 2.1, K-factors from Table 3.1, VWS locations from Table 7.1, weighbridge locations from Table 7.2 verified against RDM 1.2 PDF. |
