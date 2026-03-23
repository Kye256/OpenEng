---
name: "asset-valuation"
description: "Use when calculating the financial value of road infrastructure assets. Applies depreciated replacement cost (DRC) method per IPSAS public sector accounting standards. Supports straight-line depreciation (age-based) and condition-based depreciation (from Skill #56 condition data). Outputs asset register values for financial reporting and inputs to Skill #59 (Prioritization Methods) for investment planning."
---

# Asset Valuation

> **Skill ID:** 58
> **Domain:** Asset Management
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Calculate the financial value of road infrastructure assets for government asset registers, financial reporting, and investment planning. This skill applies the Depreciated Replacement Cost (DRC) method -- the standard approach for public infrastructure assets that have no market value. Two depreciation approaches are supported: straight-line (age-based, simple, always available) and condition-based (uses Skill #56 condition data for a more accurate reflection of actual asset state). Network-level aggregation produces total asset values for annual financial reporting.

## When to Use This Skill

- **Use when:** Calculating road asset values for government financial statements. Populating or updating a road asset register. Estimating residual value for investment planning. Comparing asset value trends over time.
- **Do not use when:** Estimating construction costs for new projects (use Skill #50). Conducting economic appraisal of road investments (different methodology -- NPV/BCR via Skill #65). Valuing land or non-road assets.
- **Prerequisite skills:** Skill #50 (Engineer's Estimate) or Skill #53 (Uganda/EA Unit Rate Database) for replacement cost per km. Skill #56 (Road Condition Assessment) for condition-based depreciation (optional -- straight-line depreciation requires only age and design life).

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Depreciated Replacement Cost (DRC):**
DRC is the primary valuation method for public infrastructure assets under International Public Sector Accounting Standards (IPSAS 17 -- Property, Plant and Equipment). Since roads have no market value (they are not bought and sold), DRC estimates what it would cost to replace the asset in its current condition. DRC = Replacement Cost x (1 - Depreciation Factor) + Residual Value.

**Replacement Cost:**
The current cost to construct an equivalent road to the same standard. This is not the original construction cost (historical cost) but the current cost at today's prices. Sources:
- Skill #50 (Engineer's Estimate) for project-specific replacement cost
- Skill #53 (Uganda/EA Unit Rate Database) for per-km rates by road class and surface type
- Published unit rates from road agencies (UNRA, MoWT)

**Straight-Line Depreciation (Age-Based):**
The simplest depreciation method. Assumes the asset deteriorates uniformly over its design life.
- Depreciation factor = Age / Design Life
- Remaining useful life = Design Life - Age
- When Age > Design Life: depreciation factor = 1.0 (fully depreciated) unless residual value applies
- Advantage: requires only age and design life -- always available
- Disadvantage: ignores actual condition -- a well-maintained 15-year-old road may be worth more than a neglected 10-year-old road

**Condition-Based Depreciation:**
Uses actual condition data (from Skill #56) to estimate remaining useful life as a percentage.
- Maps condition categories to remaining value percentages:
  - Good: 80-100% of replacement cost
  - Fair: 50-80% of replacement cost
  - Poor: 20-50% of replacement cost
  - Very Poor: 0-20% of replacement cost
- Advantage: reflects actual asset state, captures maintenance history impact
- Disadvantage: requires condition data (Skill #56), condition-to-value mapping is approximate

**Residual Value:**
The value remaining after full depreciation. For roads:
- Earthworks (subgrade, embankments): 10-15% residual value (formation remains even when surface is destroyed)
- Surface layers (AC, gravel): 0% residual value (surface has no value when completely failed)
- Structures (culverts, bridges): 5-10% residual value (structural elements have salvage/reuse value)

**Design Life by Road Type:**

| Road Type | Typical Design Life | Notes |
|-----------|-------------------|-------|
| Paved trunk road (AC) | 20-25 years | To next rehabilitation, not total life |
| Paved district road (AC) | 15-20 years | Lower traffic extends surface life |
| Surface-dressed road | 10-15 years | Periodic resealing extends life |
| Gravel road | 8-12 years | To next resheeting cycle |

### 1.2 Universal Formulas

**Straight-Line DRC:**
```
DRC = Replacement_Cost x (1 - Age / Design_Life) + Residual_Value

Where:
  Replacement_Cost = current cost per km x road length (km)
  Age = years since construction or last rehabilitation
  Design_Life = expected service life in years (see table above)
  Residual_Value = Replacement_Cost x Residual_Percentage (typically 10-15% for earthworks)

  If Age > Design_Life:
    DRC = Residual_Value (minimum value, never negative)
```

**Condition-Based DRC:**
```
DRC = Replacement_Cost x Condition_Factor + Residual_Value

Where:
  Condition_Factor = remaining value percentage from condition mapping:
    Good:      0.80 - 1.00 (midpoint 0.90)
    Fair:      0.50 - 0.80 (midpoint 0.65)
    Poor:      0.20 - 0.50 (midpoint 0.35)
    Very Poor: 0.00 - 0.20 (midpoint 0.10)
```

**Network Value:**
```
Network_Value = Sum(DRC_i) for all road segments i

Where each DRC_i is calculated independently per segment.
```

**Annual Depreciation Charge:**
```
Straight-line annual depreciation = (Replacement_Cost - Residual_Value) / Design_Life
```

### 1.3 Figures & Diagrams

No figures required. The formulas and condition-to-value mapping encode the critical relationships. The depreciation curve is a simple linear relationship (straight-line) or a step function (condition-based).

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine valuation purpose
  |-- Financial reporting (asset register) --> Full network valuation, annual depreciation
  |-- Investment planning --> Segment-level valuation, compare with rehabilitation cost
  +-- Trend analysis --> Year-on-year comparison of network value

Step 2: Select depreciation method
  |-- Condition data available (Skill #56) --> Condition-based depreciation (preferred)
  |-- No condition data --> Straight-line depreciation (age-based)
  +-- Both available --> Use condition-based, report straight-line for comparison

Step 3: Determine replacement cost
  --> From Skill #50 (project-specific estimate) OR
  --> From Skill #53 (unit rate database) OR
  --> From published rates (see country module)
  --> Note: all rates must be at current prices, not historical

Step 4: Apply depreciation
  --> Straight-line: calculate Age/Design_Life ratio
  --> Condition-based: map condition rating to value factor
  --> Add residual value

Step 5: Aggregate for network
  --> Sum DRC across all segments
  --> Report total, by road class, by surface type, by condition category

Step 6: Calculate annual depreciation charge
  --> For financial reporting: total annual depreciation = Sum(segment depreciation)
  --> Report as expense in financial statements
```

### 2.2 Professional Judgment (Universal)

**Condition-based depreciation is preferred when data is available.** Two roads of the same age can have very different conditions depending on maintenance history, traffic loading, and environmental factors. Condition-based depreciation captures this difference; straight-line depreciation does not.

**Roads exceeding design life are not necessarily worthless.** A well-maintained road at age 25 with Good condition should not be valued at zero. When age exceeds design life but condition is Fair or better, use condition-based depreciation to reflect actual value. Straight-line depreciation would give a zero or negative value, which is unrealistic.

**Replacement cost must be at current prices.** Using historical construction cost undervalues the asset due to inflation. The replacement cost is what it would cost TODAY to build the same road. This requires periodic updating of unit rates.

**Rehabilitation resets the depreciation clock.** When a road is rehabilitated (overlay, reconstruction), the age resets to zero (or to the age of the rehabilitation) and a new design life begins. Historical cost is updated to include rehabilitation expenditure.

### 2.3 Common Errors

1. **Using historical cost instead of current replacement cost.** A road built in 2005 for UGX 1 billion per km may cost UGX 4 billion per km to replace today. Using the original cost dramatically undervalues the asset.
2. **Negative depreciation values.** When Age > Design Life, straight-line depreciation gives a negative factor. DRC should never be negative -- cap at residual value (or zero if no residual).
3. **Double-counting rehabilitation expenditure.** If a road was rehabilitated (overlay) at year 15, the replacement cost should reflect the original construction PLUS rehabilitation, and the age should reset. Do not treat the rehabilitation as a separate asset.
4. **Ignoring structures in road corridor valuation.** Culverts and bridges along a road corridor are assets with their own design lives and condition. A corridor valuation should include structures, but their depreciation is separate from the road pavement.
5. **Assuming uniform design life across all road types.** Paved trunk roads (20-25 years), gravel roads (8-12 years), and surface-dressed roads (10-15 years) have different design lives. Using a single design life across the network is incorrect.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Depreciation method | Straight-line | No condition data | ASSUMED: Straight-line depreciation (age-based). Condition-based preferred if Skill #56 data available. | Always available |
| Residual value | 10% of replacement cost | Road with earthworks | ASSUMED: 10% residual value for earthworks component. Surface layers 0%. | Standard for road infrastructure |
| Design life (paved trunk) | 20 years | Not specified | ASSUMED: 20-year design life for paved trunk road. Verify against country module. | Conservative within 20-25 year range |
| Design life (gravel) | 10 years | Not specified | ASSUMED: 10-year design life for gravel road (resheeting cycle). | Midpoint of 8-12 year range |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always flag the replacement cost source** -- whether from Skill #50, Skill #53, or published rates.
3. **Conservative direction:** Use the shorter design life when uncertain (produces lower asset value, conservative for financial reporting).
4. **Flag all unit rates as requiring verification** -- rates change with market conditions.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Replacement cost | > 0 | No limit | Currency/km | Zero or negative replacement cost is invalid |
| Age | 0 | 100 | years | Age > 50 years for a paved road is unusual -- verify |
| Design life | 5 | 50 | years | < 5 years is unusually short; > 30 years is optimistic |
| Residual value | 0 | 20 | % | > 20% residual for road surface is unusual |
| DRC | >= 0 | Replacement cost | Currency | DRC cannot be negative or exceed replacement cost |

### 4.2 Consistency Checks

- **Age vs design life:** If Age > Design Life AND condition is Good, flag inconsistency -- either the design life is too short or the condition assessment is incorrect.
- **DRC vs rehabilitation cost:** If DRC < rehabilitation cost, note that rehabilitation may not be economically justified from a pure asset value perspective (though other factors like safety and access may justify it).
- **Method consistency across network:** If some segments use condition-based and others use straight-line, flag the mixed methodology and note comparability limitations.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific rates | SENIOR REVIEW -- No country module for [jurisdiction]. Replacement costs are generic estimates. Verify. |
| Age > Design Life but condition Good/Fair | Depreciation method conflict | NOTE -- Road age exceeds design life but condition is [X]. Recommend condition-based depreciation to avoid undervaluation. |
| Replacement cost not verified | Rates may be outdated | NOTE -- Replacement costs are PLACEHOLDER rates from [source]. Verify with current market data before use in financial statements. |
| Network value change > 20% year-on-year | Significant change | SENIOR REVIEW -- Network asset value changed by [X]% from previous year. Verify whether due to methodological change, new data, or actual condition change. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| replacement_cost | number | Currency/km | Yes | Skill #50 / Skill #53 | Current cost to construct equivalent road |
| road_length | number | km | Yes | User | Length of road segment |
| road_age | number | years | Yes | User | Years since construction or last rehabilitation |
| design_life | number | years | Recommended | Country module | Expected service life -- defaults by road type if not provided |
| condition_rating | text | -- | Optional | Skill #56 | Good/Fair/Poor/Very Poor -- enables condition-based depreciation |
| road_class | text | -- | Recommended | Skill #13 / User | For design life and replacement cost lookup |
| road_surface_type | text | -- | Recommended | User | Paved/gravel -- affects design life and replacement cost |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| asset_value_DRC | number | Currency | Skill #59, financial reporting | Depreciated replacement cost of the road segment |
| depreciation_percent | number | % | Financial reporting | Percentage of replacement cost depreciated |
| remaining_useful_life | number | years | Investment planning | Estimated remaining service life |
| annual_depreciation | number | Currency/year | Financial reporting | Annual depreciation charge |

**Output Consumer Notes:**
- **Skill #59 (Prioritization Methods):** Asset value provides context for investment prioritization -- higher-value assets may receive priority for preservation.
- **Financial reporting:** DRC values feed directly into government financial statements per IPSAS requirements.

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific design lives, replacement costs, UNRA asset register context | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction. Load Uganda module for UNRA/MoWT context. Obtain country-specific design lives and replacement cost references.

### Step 2: Determine Replacement Cost
Obtain current replacement cost per km from Skill #50 output, Skill #53 unit rate database, or published agency rates. Verify that the cost is at current prices (not historical). Calculate total replacement cost = cost/km x road length.

### Step 3: Select Depreciation Method
If Skill #56 condition data is available: use condition-based depreciation. If not: use straight-line depreciation. Document the method selected and data source.

### Step 4: Calculate DRC
Apply the selected depreciation formula from Section 1.2. Add residual value. Ensure DRC is non-negative and does not exceed replacement cost.

### Step 5: Calculate Supporting Metrics
Remaining useful life, depreciation percentage, annual depreciation charge. These are needed for financial reporting and investment planning.

### Step 6: Aggregate for Network (if multiple segments)
Sum DRC across all segments. Report totals by road class, surface type, and condition category. Calculate weighted average depreciation for the network.

### Step 7: Run Validation
Apply Section 4 checks. Verify DRC range, age vs design life consistency, method consistency.

### Step 8: Produce Output
Format per Section 8. Include DRC, depreciation method, supporting metrics, and flags.

---

## 8. Output Format

```
============================================================
ASSET VALUATION -- [Road Name / Network Name]
Country/Jurisdiction: [country]
Standard: [IPSAS 17 / Country-specific requirements]
Date: [YYYY-MM-DD]
============================================================

ASSET DETAILS
-------------
Road: [name/ID]
Length: [km]
Surface: [Paved / Gravel]
Class: [National / District / etc.]
Age: [years] (since construction/last rehabilitation)
Design life: [years]

REPLACEMENT COST
----------------
Unit rate: [X per km]
Source: [Skill #50 / Skill #53 / Published rate]
Total replacement cost: [X]

DEPRECIATION
------------
Method: [Straight-line / Condition-based]
[If straight-line]: Age/Design Life = [X/Y] = [Z%]
[If condition-based]: Condition = [rating], Factor = [X]
Depreciation amount: [X]
Residual value: [X] ([Y%] of replacement cost)

ASSET VALUE (DRC)
-----------------
DRC: [X]
Remaining useful life: [Y years]
Annual depreciation: [X per year]

[If network valuation:]
NETWORK SUMMARY
---------------
| Road Class | Length (km) | Replacement Cost | DRC | Depreciation % |
|------------|------------|-----------------|-----|----------------|
| | | | | |
| TOTAL | | | | |

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[IPSAS 17, country module references]

============================================================
ASSET VALUATION -- FOR PROFESSIONAL REVIEW
This output provides indicative asset values based on the
DRC method. Professional review and current market rates
required before use in financial statements.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Fair value measurement (market-based -- not applicable to roads). Modified replacement cost (optimised depreciated replacement cost). Component-level depreciation (separating earthworks, base, surface, drainage components with different lives). Impairment testing. Revaluation adjustments.
- **Simplifications:** Condition-to-value mapping uses broad categories (Good/Fair/Poor/Very Poor) rather than continuous functions. Replacement costs are placeholder rates requiring verification. Design lives are typical ranges -- actual life depends on traffic, maintenance, climate, and construction quality.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia (similar IPSAS-based requirements)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with DRC method, straight-line and condition-based depreciation, IPSAS 17 reference, design life tables. |
