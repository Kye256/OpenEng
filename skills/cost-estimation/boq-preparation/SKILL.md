---
name: "boq-preparation"
description: "Use when preparing a Bill of Quantities for a road construction contract. Produces FIDIC-compatible BoQ with items organized by work category (preliminaries, earthworks, pavement, drainage, structures, miscellaneous, dayworks). Each BoQ item traces to an upstream technical skill for quantity derivation. Compose with Skill #26 (earthworks quantities), Skill #21/#22/#23 (pavement quantities), Skill #31 (culvert quantities), Skill #37/#38 (bridge quantities), and Skill #52 (unit rates) to complete the priced BoQ."
---

# BoQ Preparation

> **Skill ID:** 51
> **Domain:** Cost Estimation
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda

## Purpose

Prepare a Bill of Quantities (BoQ) for a road construction contract, organising work items into standard Bills (preliminaries, earthworks, pavement, drainage, structures, miscellaneous, dayworks). Each BoQ item is traceable to an upstream technical skill that provides the quantity derivation methodology, ensuring that the BoQ is grounded in engineering design outputs rather than ad-hoc estimates.

## When to Use This Skill

- **Use when:** A BoQ is needed for a road construction or rehabilitation contract. The BoQ may be for tendering, cost estimation, or payment certification purposes.
- **Do not use when:** Preparing a services contract (consultant appointment) -- those use time-based or lump-sum fee structures, not measured BoQs. Not for maintenance contracts with schedule-of-rates payment (different format).
- **Prerequisite skills:** Skill #26 (Earthworks Calculation) -- cut/fill volumes. Skill #21/#22/#23 (Pavement Design) -- layer types and thicknesses. Skill #31 (Culvert Hydraulic Design) -- culvert types and sizes. Skill #37/#38 (Bridge Design) -- concrete volumes and steel weights. Skill #24 (Pavement Material Specs) -- specification references.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Bill of Quantities (BoQ):** A structured document listing all measured work items for a construction contract. Each item has: item number, description, unit of measurement, quantity, rate, and amount. The BoQ serves three purposes: (1) tendering -- tenderers price each item to establish the contract price, (2) payment -- measured work is valued at tendered rates for interim certificates, (3) variation valuation -- tendered rates form the basis for valuing changes.

**Standard Bill Structure for Road Contracts:**

- **Bill 1: Preliminary & General** -- Items not directly part of permanent works but essential for contract execution. Mobilisation, insurance, performance security, site establishment, traffic management, environmental management, health and safety. Typically measured as Lump Sum (LS) or Provisional Sum (PS).

- **Bill 2: Earthworks** -- Clearing and grubbing (ha), topsoil stripping (m3), excavation in common material (m3), rock excavation (m3), fill from cuttings (m3), fill from approved borrow areas (m3), compaction of fill layers (m3). Quantities derived from Skill #26 (Earthworks Calculation) and Skill #27 (Mass Haul).

- **Bill 3: Pavement Layers** -- Sub-base course (m3), base course -- natural gravel, crushed stone, or cement-stabilised (m3), prime coat (m2), tack coat (m2), surface dressing/DBST (m2), asphalt wearing course (m2 or tonnes). Quantities derived from Skill #21/#22/#23 (Pavement Design) layer selections and road geometry.

- **Bill 4: Drainage** -- Side drains (m3 excavation, m2 lining), mitre drains (number), culverts by type and size (m for pipe, m for box), headwalls and wingwalls (number), energy dissipation structures (number), erosion protection -- gabion baskets (m3), rip-rap (m3). Quantities derived from Skill #30 (Ditch & Channel Design), Skill #31 (Culvert Hydraulic Design), Skill #32 (Erosion Protection), Skill #33/#34 (Culvert Structural/Headwalls).

- **Bill 5: Structures** -- Bridges by type: structural concrete by class (m3), reinforcement steel (kg), formwork (m2), bearing pads (number), bridge railing (m), approach slabs (m3). Retaining walls (m3 concrete, kg steel). Guardrails (m). Quantities derived from Skill #37 (Simply Supported Beam Bridges) and Skill #38 (Bridge Substructure).

- **Bill 6: Miscellaneous** -- Road furniture (signs -- number, guardrails -- m, marker posts -- number), road markings (m for lines, m2 for symbols), landscaping (ha), environmental mitigation measures (LS or item-specific). Quantities from design drawings and environmental management plan.

- **Bill 7: Dayworks** -- Provisional sums for unforeseen work: labour at scheduled rates (by category), equipment at scheduled rates (by type), materials at cost plus percentage. Dayworks are used only when ordered by the Engineer and when no BoQ rate applies. Typically 3-5% of contract value.

**Measurement Rules:**

| Category | Typical Unit | Measurement Basis |
|----------|-------------|-------------------|
| Area clearing | ha | Plan area of road corridor |
| Earthworks | m3 | Volume computed from cross-sections (Skill #26) |
| Pavement layers | m3 or m2 | Volume = area x thickness; area from geometry |
| Bituminous sprays | m2 | Plan area of application |
| Pipe culverts | m (length) | Barrel length including headwall seats |
| Box culverts | m (length) | Internal clear span along road alignment |
| Concrete (structures) | m3 | Net volume of concrete placed |
| Reinforcement | kg | Calculated weight from bar schedules |
| Lump sum items | LS | Not measured -- fixed price |
| Provisional sums | PS | Expended at Engineer's discretion |

**Item Description Format:** Each item description follows the pattern: action + material + location + specification reference. Example: "Supply and compact natural gravel sub-base course, 150mm compacted thickness, to road formation in accordance with Specification Section 4.3."

### 1.2 Universal Formulas

**Pavement Layer Volume:**
- Volume (m3) = Road width (m) x Layer thickness (m) x Road length (m) x (1 + wastage factor)
- Wastage factor typically 5-10% depending on material and placement method.

**Earthworks Volume:** Derived from cross-section areas using average end area method (see Skill #26).

**Reinforcement Weight:**
- Weight (kg) = Sum of (bar length x unit weight per metre) for all bars
- Unit weights: Y10 = 0.617 kg/m, Y12 = 0.888 kg/m, Y16 = 1.579 kg/m, Y20 = 2.466 kg/m, Y25 = 3.854 kg/m, Y32 = 6.313 kg/m

### 1.3 Figures & Diagrams

No figures required. The BoQ is a tabular document. The BoQ template in `tables/boq_item_template.json` provides the standard structure.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine country/jurisdiction
  -> Load the appropriate country module
  -> BoQ format may vary by country practice

Step 2: Identify all work items from design outputs
  -> For each upstream skill output, list the physical work required
  -> Earthworks: Skill #26 cut/fill volumes -> Bill 2 items
  -> Pavement: Skill #21/#22/#23 layer selections -> Bill 3 items
  -> Drainage: Skill #30/#31/#32 drainage structures -> Bill 4 items
  -> Structures: Skill #37/#38 bridge elements -> Bill 5 items

Step 3: Determine quantities for each item
  -> Extract from upstream skill calculations
  -> Apply measurement rules (Section 1.1)
  -> Include wastage allowance where applicable

Step 4: Select appropriate measurement unit
  -> Match to measurement rules table
  -> Ensure consistency with specification

Step 5: Write item description
  -> Follow: action + material + location + specification reference
  -> Reference applicable specification section

Step 6: Organise into Bills
  -> Group by category (Bills 1-7)
  -> Number items sequentially within each Bill
  -> See country module Section M.3 for country-specific numbering
```

### 2.2 Professional Judgment (Universal)

- **Completeness over precision:** It is better to include a BoQ item with an approximate quantity than to omit it entirely. Omitted items require variations during construction, which are more expensive and disruptive.
- **Separating dissimilar work:** Items with significantly different unit rates should be measured separately (e.g., excavation in common material vs rock excavation), even if specifications allow combining them.
- **Provisional sums:** Include provisional sums for items that cannot be fully quantified at design stage (e.g., rock excavation quantity depends on actual ground conditions). Flag these clearly.
- **Dayworks provision:** Standard practice is 3-5% of estimated contract value. Higher on rehabilitation projects where unknowns are greater.

### 2.3 Common Errors

1. **Missing items:** Forgetting ancillary items (bedding material for pipes, backfill around culverts, formwork for concrete). These are often significant cost items.
2. **Wrong units:** Measuring pavement layers in m2 when thickness varies (should be m3), or measuring pipe culverts in number instead of linear metres.
3. **Double counting:** Including an item in both earthworks and drainage (e.g., excavation for side drains counted in both Bill 2 and Bill 4). Each volume of excavation should appear in only one Bill.
4. **Ignoring haul distance:** Earthworks rates are highly sensitive to haul distance. BoQ items should distinguish between cut-to-fill (short haul) and borrow (long haul).

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Wastage allowance | 5% | Granular materials | ASSUMED: 5% wastage. Verify for specific material. | Standard industry practice |
| Dayworks percentage | 5% | Of estimated contract value | ASSUMED: 5% dayworks provision. Adjust based on project risk. | Common for new construction |
| Formwork area | Estimate from concrete surfaces | Structures items | ASSUMED: Formwork area estimated from exposed surfaces. Verify from drawings. | Standard estimating practice |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always state defaults explicitly** in output. Never silently assume.
3. **Conservative direction:** Include items rather than exclude when uncertain.
4. **Flag for investigation:** Every assumed quantity includes a recommendation for obtaining the actual value.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Number of Bills | 5 | 8 | count | Review: standard road BoQ has 7 Bills |
| Item count per Bill | 1 | 100 | count | Review if >50 items in single Bill -- consider sub-Bills |
| Dayworks as % of total | 2 | 10 | % | Flag if outside 3-5% typical range |

### 4.2 Consistency Checks

- Earthworks quantities (Bill 2) should be consistent with mass haul output from Skill #27 (total cut = total fill + surplus OR total fill = total cut + borrow).
- Pavement layer areas (Bill 3) should be consistent with road length x width from geometric design.
- Culvert quantities (Bill 4) should match the drainage schedule from Skill #31.
- All items should have a measurement unit. No blank units.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific item numbering | SENIOR REVIEW -- No country module for [jurisdiction]. Using generic BoQ format. Verify item descriptions and numbering. |
| Quantity differs >25% from preliminary estimate | May indicate design change or measurement error | SENIOR REVIEW -- [Item] quantity [value] differs significantly from preliminary estimate. Verify measurement. |
| Structures Bill exceeds 40% of total | Unusual cost distribution | SENIOR REVIEW -- Structures represent [X]% of estimate. Verify scope. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| earthworks_volumes | object | m3 | Yes | Skill #26 (Earthworks Calculation) | Cut/fill volumes by chainage |
| mass_haul_data | object | m3, m | Yes | Skill #27 (Mass Haul) | Haul distances, borrow/spoil volumes |
| pavement_layers | object | m2, m3 | Yes | Skill #21/#22/#23 (Pavement Design) | Layer types, thicknesses, and areas |
| culvert_quantities | object | number, m | Yes | Skill #31 (Culvert Hydraulic Design) | Culvert types, sizes, lengths |
| bridge_quantities | object | m3, kg | Conditional | Skill #37/#38 (Bridge Design) | Concrete volumes, steel weights. Required only if bridges in scope. |
| material_specs | object | -- | Yes | Skill #24 (Pavement Material Specs) | Specification references for items |
| road_geometry | object | m, km | Yes | Skill #17 (Cross-Section Design) | Road length, width, corridor extent |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| bill_of_quantities | object | -- | Skill #50 (Engineer's Estimate) | Complete BoQ with items, quantities, units |
| measurement_rules | text | -- | Skill #44 (Measurement & Payment) | Rules applied for interim payment certification |
| boq_for_tender | document | -- | Skill #48 (Tender Document Preparation) | BoQ component of tender documents |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific BoQ practice and item numbering | Markdown |
| `tables/boq_item_template.json` | Standard BoQ structure with item codes and source skill links | JSON |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module from `modules/`. If no module exists, flag and proceed with generic FIDIC BoQ format.

### Step 2: Compile Design Outputs
Gather all upstream skill outputs that generate quantities:
- Earthworks volumes from Skill #26 and mass haul data from Skill #27
- Pavement layer selections from Skill #21/#22/#23
- Drainage schedule from Skill #31, structural designs from Skill #33/#34
- Bridge quantities from Skill #37/#38 (if applicable)
- Material specifications from Skill #24

### Step 3: Create Bill 1 -- Preliminary & General
List all preliminary items required for contract execution. These are typically Lump Sum items. Include: mobilisation, performance security, insurance, site establishment, traffic management, environmental management, health and safety.

### Step 4: Create Bill 2 -- Earthworks
From Skill #26 output, create items for: clearing and grubbing, topsoil stripping, excavation (common and rock separately), fill from cuttings, fill from borrow (with mass haul from Skill #27), compaction.

### Step 5: Create Bill 3 -- Pavement Layers
From Skill #21/#22/#23 output, create items for each pavement layer. Calculate volumes from layer thickness x road area. Add items for bituminous sprays (prime coat, tack coat) and surface treatment or asphalt.

### Step 6: Create Bill 4 -- Drainage
From Skill #30/#31/#32/#33/#34 output, create items for side drains, culverts by type and size, headwalls and wingwalls, erosion protection measures.

### Step 7: Create Bill 5 -- Structures
From Skill #37/#38 output (if applicable), create items for structural concrete by class, reinforcement steel, formwork, bearing pads, bridge furniture.

### Step 8: Create Bill 6 -- Miscellaneous
Add items for road furniture, markings, landscaping, and environmental mitigation.

### Step 9: Create Bill 7 -- Dayworks
Include provisional sums for unforeseen work: labour, equipment, and materials at scheduled rates.

### Step 10: Review and Validate
Apply all validation checks from Sections 4.1-4.3 and country module Section M.5. Verify quantity consistency with upstream skills. Check for missing items.

### Step 11: Produce Output
Format the BoQ per Section 8. Include all escalation flags.

---

## 8. Output Format

### Output Template

```
============================================================
BILL OF QUANTITIES -- [Project/Road Name]
Country/Jurisdiction: [country]
Standard: [BoQ format standard -- from country module]
Date: [YYYY-MM-DD]
============================================================

BILL 1: PRELIMINARY & GENERAL
------
| Item | Description | Unit | Quantity | Rate | Amount |
|------|-------------|------|----------|------|--------|
| 1.01 | Mobilization and establishment | LS | 1 | | |
| ... | ... | ... | ... | | |

BILL 2: EARTHWORKS
------
| Item | Description | Unit | Quantity | Rate | Amount |
|------|-------------|------|----------|------|--------|
| 2.01 | Clearing and grubbing | ha | [qty] | | |
| ... | ... | ... | ... | | |

[Continue for Bills 3-7]

SUMMARY
-------
| Bill | Description | Amount |
|------|-------------|--------|
| 1 | Preliminary & General | |
| 2 | Earthworks | |
| 3 | Pavement Layers | |
| 4 | Drainage | |
| 5 | Structures | |
| 6 | Miscellaneous | |
| 7 | Dayworks | |
| | TOTAL CARRIED TO FORM OF TENDER | |

ASSUMPTIONS & DEFAULTS
---------------------
[Universal defaults with flags]
[Country-specific defaults with flags]

VALIDATION
----------
[Universal checks]
[Country-specific checks]

ESCALATION FLAGS
---------------
[Any SENIOR REVIEW items, or "None"]

REFERENCES
----------
[Standard clauses cited -- from country module]

============================================================
PRELIMINARY DESIGN -- FOR PROFESSIONAL REVIEW
This output is screening/preliminary level.
Professional review and detailed design required before implementation.
============================================================
```

---

## 9. Worked Examples

### Example 1: Rural Road BoQ -- Uganda

**Source:** Illustrative example based on typical UNRA project

**Given:**
- 15 km rural trunk road upgrade
- Earthworks: 45,000 m3 cut, 38,000 m3 fill (Skill #26 output)
- Pavement: 150mm gravel sub-base, 200mm crushed stone base, DBST surface (Skill #21 output)
- Drainage: 12 pipe culverts (600-900mm), 3 box culverts (1.5x1.5m) (Skill #31 output)
- No bridges
- Road width: 6.5m carriageway + 1.5m shoulders each side = 9.5m total

**Solution:**
See Uganda module, Section M.7 for complete worked example with item numbering per MoWT standard specifications.

**Key quantities derived:**
- Clearing and grubbing: 15 km x 30m corridor = 45 ha
- Sub-base volume: 15,000m x 9.5m x 0.15m x 1.05 (wastage) = 22,444 m3
- Base course volume: 15,000m x 9.5m x 0.20m x 1.05 = 29,925 m3
- DBST area: 15,000m x 9.5m = 142,500 m2
- Pipe culverts: 12 no. at average 12m length each = 144 m total

---

## 10. Limitations & Future Work

- **Not covered:** Detailed measurement of complex structures (multi-span bridges, interchanges). These require specialist quantity surveying.
- **Simplifications:** BoQ items use standard descriptions. Actual item descriptions should reference project-specific specifications.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya, Tanzania, Ethiopia (East African regional practice), UK (NEC/CESMM measurement)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | | Initial draft |
