---
name: "unit-rate-analysis"
description: "Use when building up a unit rate from first principles for any road construction work item. Breaks down rate into Labour + Equipment + Materials + Overheads (L+E+M+OH). Teaches the methodology for rate build-up -- actual rates are illustrative placeholders. Compose with Skill #53 (Uganda/EA Unit Rate Database) for reference rates and Skill #51 (BoQ Preparation) for item descriptions."
---

# Unit Rate Analysis

> **Skill ID:** 52
> **Domain:** Cost Estimation
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Build up a unit rate from first principles for any road construction work item by decomposing the cost into its four components: Labour, Equipment, Materials, and Overheads (L+E+M+OH). This skill teaches the methodology for rate analysis -- how to determine production rates, calculate each component, and assemble the total unit rate. All rates shown are PLACEHOLDER/illustrative values for methodology demonstration only.

## When to Use This Skill

- **Use when:** A unit rate needs to be built up from first principles for a specific work item. This is needed when: (a) no reference rate exists in Skill #53 database, (b) conditions differ significantly from reference rates (remote location, unusual material), or (c) a tendered rate needs to be verified for reasonableness.
- **Do not use when:** Reference rates from Skill #53 are appropriate for the project context. Not for estimating professional services fees (time-based, not measured work). Not for supply-only pricing (no construction component).
- **Prerequisite skills:** Skill #51 (BoQ Preparation) -- provides the item descriptions and units. Skill #53 (Uganda/EA Unit Rate Database) -- provides reference rates for comparison.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Unit Rate Components (L+E+M+OH):**

**(1) Labour**
The labour component represents the cost of human effort per unit of output.

- **Productivity rate:** Output per person per unit time (e.g., a labourer excavates 2 m3/day by hand, or an excavator crew processes 80 m3/hr). Productivity depends on: method (manual vs mechanical), skill level, terrain, weather, and supervision quality.
- **Wage rate by category:**
  - Skilled: operator (excavator, grader, roller), mason, carpenter, welder
  - Semi-skilled: driver, assistant operator
  - Unskilled: labourer, flagman
- **Labour productivity factors:** Apply adjustment factors for adverse conditions: difficult terrain (0.7-0.9), wet season (0.8-0.9), remote location (0.8-0.9), night work (0.7-0.8).
- **Calculation:** Labour cost per unit = (Labour-hours per unit output) x (Wage rate per hour)

**(2) Equipment**
The equipment component represents the cost of plant and machinery per unit of output.

- **Ownership cost:** Depreciation (straight-line over economic life), interest on capital, insurance, and taxes. Calculated per operating hour. Alternative: hire rate from equipment rental market.
- **Operating cost:** Fuel consumption (litres/hr x fuel price), lubricants (typically 10-15% of fuel cost), tyres (for wheeled equipment), and maintenance/repairs (typically 50-100% of depreciation).
- **Utilisation factor:** Equipment is not productive 100% of operating time. Typical utilisation: 45-50 min/hr for earthmoving, 40-45 min/hr for paving. Adjust production rate accordingly.
- **Production rate:** Volume or area of output per operating hour (e.g., excavator 1.0 m3 bucket at 30 cycles/hr with 0.85 bucket fill factor = 25.5 m3/hr bank measure).
- **Calculation:** Equipment cost per unit = (Equipment-hours per unit output) x (Ownership + Operating cost per hour)

**(3) Materials**
The materials component represents the cost of physical materials consumed per unit of output.

- **Delivered cost = Material cost (at source) + Transport cost (to site) + Wastage allowance**
- **Material cost:** Ex-quarry, ex-factory, or ex-supplier price.
- **Transport cost:** Distance x transport rate per tonne-km. In rural areas of developing countries, transport cost often exceeds material cost for aggregates and gravel.
- **Wastage allowance:** Typically 5-10% for granular materials, 3-5% for bituminous products, 2-5% for cement and steel. Covers spillage, compaction loss, over-application, and weather damage.
- **Material testing cost:** Quality control testing may be a separate cost item or included in material cost. Typical allowance: 1-2% of material cost.
- **Calculation:** Material cost per unit = (Material quantity per unit output) x (Delivered cost per unit) x (1 + Wastage %)

**(4) Overheads and Profit**
Overheads cover indirect costs not attributable to a specific work item.

- **Site overheads (10-15% of direct cost):** Site office and facilities, utility costs, supervision staff, safety and first aid, site vehicles, communication, quality control laboratory, environmental compliance.
- **Head office overheads (5-10% of subtotal):** Management and administration, accounting and finance, legal and insurance, business development, office rent and utilities.
- **Profit margin (8-15% of subtotal):** Contractor's profit. Varies with market conditions, competition, and project risk.
- **Calculation:** Apply each overhead as a percentage of the running subtotal.

### 1.2 Universal Formulas

**Unit Rate Build-Up:**
```
Direct Cost = Labour + Equipment + Materials
Subtotal 1 = Direct Cost x (1 + Site Overhead %)
Subtotal 2 = Subtotal 1 x (1 + Head Office Overhead %)
Total Unit Rate = Subtotal 2 x (1 + Profit %)
```

**Equipment Production Rate (Earthmoving):**
```
Production (m3/hr) = Bucket Capacity (m3) x Bucket Fill Factor x Cycles per Hour x Efficiency Factor
```
Where: Bucket fill factor typically 0.80-0.95 depending on material; Cycles per hour depends on cycle time (load + haul + dump + return); Efficiency factor typically 0.75-0.85 (50 min productive per 60 min hour).

**Transport Cost:**
```
Transport (per unit) = Volume or Weight per trip / Trip time x Hourly rate
Trip time = 2 x Distance / Average speed + Loading time + Unloading time
```

### 1.3 Figures & Diagrams

No figures required. The rate build-up is a tabular calculation. See worked examples in Uganda module, Section M.7.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module for local wage rates, equipment costs
  -> All rates will be PLACEHOLDER/illustrative

Step 2: Define the work item and unit
  -> Match to BoQ item from Skill #51
  -> Confirm unit of measurement (m3, m2, m, number, etc.)

Step 3: Determine the construction method
  -> Manual vs mechanical vs combined
  -> Affects all four cost components

Step 4: Determine production rate
  -> How much output per unit time for the selected method
  -> Adjust for site conditions (terrain, weather, access)

Step 5: Calculate Labour component
  -> List all labour categories needed
  -> For each: (hours per unit output) x (wage rate per hour)
  -> Sum all labour categories

Step 6: Calculate Equipment component
  -> List all equipment types needed
  -> For each: (hours per unit output) x (ownership + operating cost per hour)
  -> Sum all equipment types

Step 7: Calculate Materials component
  -> List all materials consumed
  -> For each: (quantity per unit output) x (delivered cost) x (1 + wastage %)
  -> Sum all materials

Step 8: Calculate Direct Cost
  -> Direct = Labour + Equipment + Materials

Step 9: Apply Overheads
  -> Site overheads: Direct x (1 + site OH %)
  -> Head office overheads: Subtotal x (1 + HO OH %)
  -> Profit: Subtotal x (1 + profit %)

Step 10: Total Unit Rate
  -> Final rate per unit of measurement
  -> Flag as PLACEHOLDER
```

### 2.2 Professional Judgment (Universal)

- **Production rates are key:** The most important input to a rate build-up is the production rate. A 20% error in production rate causes a 20% error in the labour and equipment components. Use verified production data where possible.
- **Transport dominates in rural areas:** For road projects in remote locations, the transport cost of materials (gravel, aggregates, bitumen, cement, steel) often exceeds the material cost itself. Always calculate transport separately and explicitly.
- **Overhead percentages compound:** A rate with 15% site overhead, 8% head office, and 10% profit has total overheads of approximately 37% (1.15 x 1.08 x 1.10 = 1.367), not 33% (simple addition). The compounding effect is significant.
- **Cross-check against market:** After building up a rate, compare it against reference rates from Skill #53 or recent contract awards. If the build-up differs by more than 25%, investigate the discrepancy.

### 2.3 Common Errors

1. **Using PLACEHOLDER rates for actual budgeting:** All rates in this skill are illustrative. They demonstrate the methodology but do not represent current market prices.
2. **Ignoring transport costs in material delivery:** In rural road projects, transport cost can be 50-100% of material cost for aggregates. Always include transport explicitly.
3. **Not adjusting productivity for terrain and climate:** Using textbook production rates for flat, dry conditions when the project is in mountainous, wet terrain will underestimate costs.
4. **Double-counting overheads:** Site overheads should cover supervision and site facilities. If these costs are also included in individual item rates, they are double-counted.
5. **Confusing bank and loose volumes:** Excavation is measured in bank (in-situ) volume. Hauling is in loose volume (swell factor applies). Compacted fill is in compacted volume (shrinkage factor applies). Production rates and costs must use consistent volume basis.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Site overheads | 15% | No project data | ASSUMED: 15% site overheads. Adjust based on project-specific overhead schedule. | Mid-range of 10-15% |
| Head office overheads | 8% | No project data | ASSUMED: 8% head office overheads. Adjust based on contractor size and structure. | Mid-range of 5-10% |
| Profit margin | 10% | No project data | ASSUMED: 10% profit. Adjust based on market conditions and project risk. | Mid-range of 8-15% |
| Wastage (granular) | 5% | No material data | ASSUMED: 5% wastage for granular materials. | Industry norm |
| Wastage (bituminous) | 3% | No material data | ASSUMED: 3% wastage for bituminous products. | Industry norm |
| Equipment efficiency | 0.83 | 50 min/hr | ASSUMED: 50 productive minutes per hour. | Standard assumption |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Use lower production rates and higher costs when uncertain.
4. **Flag for investigation:** Every assumed rate includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Site overheads | 5 | 20 | % | Flag: outside typical range |
| Head office overheads | 3 | 15 | % | Flag: outside typical range |
| Profit margin | 5 | 20 | % | Flag: outside typical range |
| Labour as % of direct cost | 5 | 50 | % | Flag: verify labour content |
| Equipment as % of direct cost | 10 | 70 | % | Flag: verify equipment content |
| Materials as % of direct cost | 0 | 80 | % | Flag: verify material content |

### 4.2 Consistency Checks

- Labour + Equipment + Materials should equal 100% of direct cost (no missing component).
- Production rate should be consistent with the construction method (manual methods have lower production rates than mechanical).
- Built-up rate should be within +/- 30% of reference rate from Skill #53 for comparable conditions. If not, investigate.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific wage and equipment rates | SENIOR REVIEW -- No country module for [jurisdiction]. Using generic rates. Verify all cost inputs. |
| Built-up rate differs >30% from reference rate | May indicate error in inputs | SENIOR REVIEW -- Built-up rate [value] differs significantly from reference [value]. Verify production rate and cost inputs. |
| Remote location (>50 km from quarry/supplier) | Transport cost will dominate | SENIOR REVIEW -- Remote location. Transport cost analysis critical. Verify distances and transport rates. |
| PLACEHOLDER rates used | Cannot use for actual budgeting | PLACEHOLDER RATES -- All rates are illustrative. Replace with current market data. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **PLACEHOLDER warning is mandatory** on every rate build-up output.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| work_item | text | -- | Yes | Skill #51 (BoQ Preparation) | Item description and unit of measurement |
| construction_method | text | -- | No | User/Engineer | Manual, mechanical, or combined |
| site_conditions | object | -- | No | User | Terrain, weather, access factors |
| transport_distance | number | km | No | User | Distance from material source to site |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| unit_rate | number | currency/unit | Skill #50 (Engineer's Estimate) | Built-up unit rate for the work item |
| rate_breakdown | object | -- | Skill #53 (Rate Database) | L+E+M+OH breakdown for rate verification |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific wage rates, equipment costs, material prices | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with universal methodology using assumed rates.

### Step 2: Define Work Item
Identify the work item from the BoQ (Skill #51). Confirm the unit of measurement and item description.

### Step 3: Select Construction Method
Determine whether the work will be done manually, mechanically, or by a combination. This affects production rates and cost components.

### Step 4: Determine Production Rate
Establish the output per unit time for the selected method. Adjust for site conditions (terrain, weather, access). Use country module rates where available.

### Step 5: Calculate Labour Component
List all labour categories required. For each, calculate: (hours per unit output) x (wage rate per hour). Sum all labour categories.

### Step 6: Calculate Equipment Component
List all equipment types required. For each, calculate: (hours per unit output) x (hourly cost including ownership and operating). Sum all equipment types.

### Step 7: Calculate Materials Component
List all materials consumed. For each, calculate: (quantity per unit output) x (delivered cost) x (1 + wastage %). Include transport cost explicitly.

### Step 8: Sum Direct Cost
Direct cost = Labour + Equipment + Materials. Present the L+E+M breakdown.

### Step 9: Apply Overheads and Profit
Apply site overheads, head office overheads, and profit margin as percentages of the running subtotal. Use default percentages from Section 3 unless project-specific data is available.

### Step 10: Present Total Unit Rate
State the total unit rate per unit of measurement. Flag as PLACEHOLDER. Compare against reference rate from Skill #53.

---

## 8. Output Format

### Output Template

```
============================================================
UNIT RATE BUILD-UP -- [Item Description]
Country/Jurisdiction: [country]
Unit of Measurement: [unit]
Date: [YYYY-MM-DD]
============================================================

** PLACEHOLDER RATE -- FOR METHODOLOGY DEMONSTRATION ONLY **

RATE BUILD-UP
-------------
LABOUR
| Category | Hours/Unit | Rate/Hr | Cost/Unit |
|----------|-----------|---------|-----------|
| [Skilled] | [hrs] | [rate] | [cost] |
| [Unskilled] | [hrs] | [rate] | [cost] |
| Labour Subtotal | | | [total] |

EQUIPMENT
| Type | Hours/Unit | Rate/Hr | Cost/Unit |
|------|-----------|---------|-----------|
| [Excavator] | [hrs] | [rate] | [cost] |
| [Truck] | [hrs] | [rate] | [cost] |
| Equipment Subtotal | | | [total] |

MATERIALS
| Material | Qty/Unit | Delivered Cost | Wastage | Cost/Unit |
|----------|---------|----------------|---------|-----------|
| [Material] | [qty] | [cost] | [%] | [total] |
| Materials Subtotal | | | | [total] |

SUMMARY
-------
| Component | Amount | % of Direct |
|-----------|--------|-------------|
| Labour | [L] | [%] |
| Equipment | [E] | [%] |
| Materials | [M] | [%] |
| Direct Cost | [D] | 100% |
| Site Overheads ([X]%) | [amt] | |
| Head Office Overheads ([X]%) | [amt] | |
| Profit ([X]%) | [amt] | |
| TOTAL UNIT RATE | [rate] | |

CROSS-CHECK
------------
Reference rate (Skill #53): [ref_rate]
Difference: [%]
[Comment on reasonableness]

ASSUMPTIONS & DEFAULTS
---------------------
[All assumed values with flags]

============================================================
PLACEHOLDER RATE -- Replace with current market data
============================================================
```

---

## 9. Worked Examples

### Example 1: Excavation in Common Material -- Uganda

**Source:** Illustrative rate build-up. ALL RATES ARE PLACEHOLDER.

**Given:**
- Item: Excavation in common material (m3)
- Method: Mechanical (excavator + dump truck)
- Location: Central Uganda

**Solution:** See Uganda module Section M.7 for complete worked rate build-up.

**Key result:** Total rate approximately UGX 6,490/m3. PLACEHOLDER RATE.

### Example 2: DBST Surface Treatment -- Uganda

**Source:** Illustrative rate build-up. ALL RATES ARE PLACEHOLDER.

**Given:**
- Item: Double bituminous surface treatment (m2)
- Method: Mechanical (chip spreader + roller)
- Location: Central Uganda

**Solution:** See Uganda module Section M.7 for complete worked rate build-up.

---

## 10. Limitations & Future Work

- **Not covered:** Detailed equipment costing (depreciation schedules, residual values). Complex production rate calculations for specific equipment combinations. Specialist work items (prestressed concrete, soil nailing, tunnelling).
- **Simplifications:** Overhead percentages are applied as flat rates. In practice, different items may carry different overhead proportions.
- **PLACEHOLDER rates:** All rates in this skill and its modules are illustrative. They demonstrate methodology, not current pricing.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia (East African regional practice)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft |
