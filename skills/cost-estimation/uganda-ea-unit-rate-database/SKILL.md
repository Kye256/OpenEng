---
name: "uganda-ea-unit-rate-database"
description: "Provides a template unit rate database for Uganda road construction organized by work category (earthworks, pavement, drainage, structures). ALL RATES ARE PLACEHOLDER -- designed as a template for population with actual market data. Rates shown are illustrative for methodology demonstration only. Compose with Skill #52 (Unit Rate Analysis) for rate build-up methodology and Skill #50 (Engineer's Estimate) for estimate preparation."
---

# Uganda/EA Unit Rate Database

> **Skill ID:** 53
> **Domain:** Cost Estimation
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Provide a structured template unit rate database for road construction in Uganda and East Africa, organised by work category to match the BoQ structure from Skill #51. ALL RATES ARE PLACEHOLDER values designed for methodology demonstration -- they are not current market rates and must not be used for actual budgeting. The database is intended as a template to be populated with current market data from contractor quotations, recent contract awards, or market surveys.

## When to Use This Skill

- **Use when:** A reference rate is needed for a standard road construction work item in Uganda. The database provides a starting point that must be verified and updated with current market data.
- **Do not use when:** Current market rates are available from recent contract awards or contractor quotations (use those instead). Not for specialist or non-standard work items (use Skill #52 to build up from first principles).
- **Prerequisite skills:** Skill #52 (Unit Rate Analysis) -- provides the methodology behind each rate. Skill #51 (BoQ Preparation) -- provides the item descriptions that rates map to.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Rate Database Structure:** The database is organised by work category, matching the Bill structure from Skill #51:

| Category | JSON File | Matches |
|----------|-----------|---------|
| Earthworks | `tables/unit_rates_earthworks.json` | Bill 2 |
| Pavement | `tables/unit_rates_pavement.json` | Bill 3 |
| Drainage | `tables/unit_rates_drainage.json` | Bill 4 |
| Structures | `tables/unit_rates_structures.json` | Bill 5 |

Bills 1, 6, and 7 (Preliminaries, Miscellaneous, Dayworks) do not have standard unit rates -- they are project-specific lump sums or provisional sums.

**Rate Entry Structure:** Each rate entry contains:
- `item_code`: Unique identifier within the category
- `description`: Standardised item description
- `unit`: Unit of measurement
- `rate_ugx`: Rate in Uganda Shillings (PLACEHOLDER)
- `rate_usd`: Rate in US Dollars at illustrative exchange rate (PLACEHOLDER)
- `notes`: Key factors affecting the rate (transport, material source, etc.)
- `source_skill`: The upstream technical skill that generates the quantity for this item

**Rate Adjustment Factors:** Base rates are for Central Uganda (Kampala corridor). Adjustments for other regions:

| Region | Factor | Rationale |
|--------|--------|-----------|
| Central Uganda (base) | 1.00 | Kampala corridor, good access, supplier competition |
| Eastern Uganda | 1.10 - 1.20 | Moderate transport distances, fewer suppliers |
| Western Uganda | 1.10 - 1.20 | Hilly terrain, moderate transport, quarry access varies |
| Northern Uganda | 1.15 - 1.25 | Longer transport, limited suppliers, post-conflict recovery |
| Karamoja | 1.25 - 1.40 | Remote, limited access, security considerations, water scarcity |

**PLACEHOLDER WARNING:** ALL RATES in this database are illustrative. They are provided solely to demonstrate the database structure and rate lookup methodology. Before using any rate for cost estimation, replace it with current market data.

### 1.2 Universal Formulas

**Regional Rate Adjustment:**
```
Adjusted Rate = Base Rate x Regional Factor
```

**Inflation Adjustment:**
```
Current Rate = Base Year Rate x (1 + Annual Inflation)^(Years since base)
```

### 1.3 Figures & Diagrams

No figures required. The database is a set of JSON tables referenced by item code.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> Select the correct rate database files

Step 2: Identify the BoQ item from Skill #51
  -> Match the item description and unit

Step 3: Look up the rate in the database
  -> Find matching item_code in the appropriate category JSON
  -> If no match, flag and recommend Skill #52 build-up

Step 4: Apply regional adjustment
  -> Determine project region
  -> Apply regional factor from Section 1.1

Step 5: Apply inflation adjustment (if applicable)
  -> Check base year of rates vs current year
  -> Apply annual inflation adjustment

Step 6: Apply location-specific adjustments
  -> Transport distance from material source
  -> Access conditions
  -> Project size (economies of scale)

Step 7: Present the adjusted rate
  -> Flag as PLACEHOLDER
  -> Note all adjustments applied
  -> Compare with Skill #52 build-up if available
```

### 2.2 Professional Judgment (Universal)

- **Database rates are starting points:** They provide order-of-magnitude guidance. Always verify against project-specific conditions.
- **Regional factors are approximate:** The regional adjustment factors capture general cost patterns. Specific project conditions (proximity to a quarry, local labour market, etc.) may dominate.
- **Rate vintage matters:** A rate from a base year 3 years ago, with 7% annual inflation, is 22.5% below current value. Always adjust for inflation.
- **Items not in database:** For work items not found in the database, use Skill #52 (Unit Rate Analysis) to build up a rate from first principles. Flag that a new rate has been created and recommend adding it to the database.

### 2.3 Common Errors

1. **Using PLACEHOLDER rates as budget figures:** The rates in this database are illustrative. They must be replaced with current market data before any budgetary use.
2. **Not adjusting for region and access:** A rate appropriate for the Kampala corridor will be 15-40% too low for a remote project in Karamoja.
3. **Ignoring inflation since base year:** Rates are expressed in a base year. Without inflation adjustment, they understate current costs.
4. **Mixing rate bases:** Some rates include overheads and profit, some are direct cost only. The rates in this database include overheads and profit (all-in rates). Do not add overheads again.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Region | Central Uganda | No region specified | ASSUMED: Central Uganda base rates. Specify region for adjustment. | Base region for database |
| Base year | 2024 | As stated in JSON | ASSUMED: Base year 2024. Adjust for inflation to current year. | Database base year |
| Exchange rate | UGX 3,700 = USD 1 | Illustrative | ASSUMED: Illustrative exchange rate. Use current Bank of Uganda rate. | Approximate |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always flag PLACEHOLDER status** in every output.
3. **Conservative direction:** When a rate range exists, use the higher end for budgeting purposes.
4. **Flag for investigation:** Every rate lookup recommends verification with current market data.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Regional factor | 0.8 | 1.5 | ratio | Flag: outside expected range |
| Inflation adjustment | 0 | 50 | % total | Flag: rates may be too outdated |
| Rate items per category | 3 | 30 | count | Flag: database may be incomplete |

### 4.2 Consistency Checks

- Rate units should match BoQ item units from Skill #51.
- USD rates should be consistent with UGX rates at the stated exchange rate.
- Rates within a category should be internally consistent (e.g., rock excavation > common excavation).

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Item not found in database | No reference rate available | SENIOR REVIEW -- Item [description] not in database. Use Skill #52 to build up rate from first principles. |
| Base year >2 years old | Rates may be significantly outdated | SENIOR REVIEW -- Database rates are from [year]. Apply inflation adjustment or update with current data. |
| PLACEHOLDER rates used for budgeting | Rates are illustrative only | PLACEHOLDER RATES -- ALL rates in this database are illustrative. Replace with current market data before budgetary use. |
| Regional factor >1.3 applied | Significant cost premium | SENIOR REVIEW -- Regional adjustment of [factor] applied. Verify with local market data. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **PLACEHOLDER warning is mandatory** on every rate lookup output.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which rate database to use |
| boq_item | object | -- | Yes | Skill #51 (BoQ Preparation) | Item description and unit for rate lookup |
| project_region | text | -- | No | User | Region for rate adjustment |
| base_year_override | number | year | No | User | If rates have been updated, specify base year |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| unit_rate | number | currency/unit | Skill #50 (Engineer's Estimate) | Rate for the BoQ item |
| rate_metadata | object | -- | Skill #52 (Unit Rate Analysis) | Source, base year, adjustments applied |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific rate context and sources | Markdown |
| `tables/unit_rates_earthworks.json` | Earthworks rates (PLACEHOLDER) | JSON |
| `tables/unit_rates_pavement.json` | Pavement rates (PLACEHOLDER) | JSON |
| `tables/unit_rates_drainage.json` | Drainage rates (PLACEHOLDER) | JSON |
| `tables/unit_rates_structures.json` | Structures rates (PLACEHOLDER) | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. Currently only Uganda is available.

### Step 2: Identify BoQ Item
Receive the BoQ item description and unit from Skill #51 output.

### Step 3: Look Up Rate
Search the appropriate category JSON file for a matching item. Match by description and unit.

### Step 4: Check if Match Found
If match found: proceed to Step 5. If no match: flag the item, recommend Skill #52 build-up, and escalate.

### Step 5: Apply Regional Adjustment
If the project is outside Central Uganda, apply the appropriate regional factor from Section 1.1.

### Step 6: Apply Inflation Adjustment
If the current year differs from the database base year, apply annual inflation adjustment.

### Step 7: Present Rate
State the adjusted rate. Include: original base rate, adjustments applied, final rate, PLACEHOLDER warning. Include both UGX and USD.

### Step 8: Cross-Check
Compare the database rate against any available Skill #52 build-up or recent contract data. Note any significant differences.

---

## 8. Output Format

### Output Template

```
============================================================
UNIT RATE LOOKUP -- [Item Description]
Country/Jurisdiction: [country]
Region: [region]
Date: [YYYY-MM-DD]
============================================================

** PLACEHOLDER RATE -- NOT CURRENT MARKET DATA **

RATE LOOKUP
-----------
Item Code: [code]
Description: [description]
Unit: [unit]
Base Rate (Central Uganda, [base_year]):
  UGX [rate_ugx] / [unit]
  USD [rate_usd] / [unit] (at UGX [exchange_rate] = USD 1)

ADJUSTMENTS
-----------
| Adjustment | Factor | Adjusted Rate (UGX) |
|------------|--------|---------------------|
| Regional ([region]) | [factor] | [adjusted] |
| Inflation ([years] years at [rate]%) | [factor] | [adjusted] |
| FINAL ADJUSTED RATE | | [final] |

NOTES
-----
[Rate-specific notes from database]
Source Skill: [source_skill]

PLACEHOLDER WARNING
-------------------
This rate is ILLUSTRATIVE ONLY. Replace with:
- Recent contract award prices
- Contractor quotations
- Updated market survey data

============================================================
```

---

## 9. Worked Examples

### Example 1: Rate Lookup for Rural Road BoQ -- Uganda

**Source:** Illustrative example using PLACEHOLDER rates

**Given:**
- 15 km rural road upgrade, Northern Uganda
- BoQ items: excavation (common), fill from borrow, crushed stone base, DBST, pipe culverts 600mm, headwalls
- Region: Northern Uganda (factor 1.20)
- Base year: 2024

**Solution:** See Uganda module Section M.7 for complete rate lookup with regional adjustments and comparison between Central and Northern Uganda rates. ALL RATES ARE PLACEHOLDER.

---

## 10. Limitations & Future Work

- **Not covered:** Rates for specialist items (prestressed concrete, soil stabilisation with geosynthetics, traffic signals, tunnel lining). These require Skill #52 first-principles build-up.
- **PLACEHOLDER rates:** ALL rates are illustrative. The database is a template for structure and methodology, not a price book.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia (East African regional database)
- **Future work:** Integration with published cost indices (Bank of Uganda, national statistics) for automatic inflation adjustment.

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft |
