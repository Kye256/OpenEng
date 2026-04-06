---
name: "environmental-social-screening"
description: "Use when screening a road project for environmental and social impacts. First determines funding source to select the applicable framework: NEMA (National Environment Management Authority) for GoU-funded projects, World Bank Environmental and Social Framework (ESF) for World Bank-funded projects, or the most restrictive framework for mixed funding. Produces screening outcome (EIA required, ESIA, ESMP, or exempt) and identifies key risks. Same dual-framework pattern as Skill #47 (Procurement Methods). Compose with Skill #63 (Climate Resilience) for climate risk screening."
---

# Environmental & Social Screening

> **Skill ID:** 62
> **Domain:** Planning & Safety
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---
> **Country Modules:** Uganda, Kenya, Ethiopia

## Purpose

Screen a road project for environmental and social impacts to determine the required level of environmental assessment and safeguard instruments. The first and most critical decision is the funding source -- this determines which environmental and social framework applies. Government-funded projects follow the national framework (NEMA in Uganda), while donor-funded projects follow the donor's framework (World Bank ESF, AfDB ISS), and mixed-funded projects apply the most restrictive framework. This is the same dual-framework pattern used in Skill #47 (Procurement Methods), where funding source determines whether PPDA or donor procurement rules apply.

## When to Use This Skill

- **Use when:** A road project needs to be screened for environmental and social impacts at the feasibility or pre-feasibility stage. Also use when reviewing whether the correct screening was applied to an existing project.
- **Do not use when:** Conducting the actual EIA/ESIA study (this skill screens to determine IF an EIA is needed and what instruments are required, not how to conduct one). Not for climate risk screening -- use Skill #63 (Climate Resilience).
- **Prerequisite skills:** None required. This is a starting-point skill for the environmental and social assessment process.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Environmental and Social Screening:**

A preliminary assessment to determine: (a) whether a project requires a full Environmental Impact Assessment (EIA), a less detailed Environmental and Social Impact Assessment (ESIA), or a simpler Environmental and Social Management Plan (ESMP); and (b) what key environmental and social risks the project may pose. Screening is the first step -- it determines the scope and depth of subsequent assessment.

**Dual-Framework Logic:**

The applicable screening framework depends on the funding source:

| Funding Source | Framework | Decision Authority |
|---------------|-----------|-------------------|
| Government budget (GoU) | National environment law (NEMA) | NEMA |
| World Bank (IDA/IBRD) | World Bank Environmental and Social Framework (ESF) | World Bank |
| African Development Bank | AfDB Integrated Safeguards System (ISS) | AfDB |
| Mixed funding | Most restrictive framework applies | Lead funder + national authority |

This is the SAME pattern as Skill #47 (Procurement Methods): funding source determines which rules apply, mixed funding triggers the most restrictive requirements, and national law provides the baseline that donor rules overlay.

**National Framework (NEMA -- Uganda):**

Three Schedules under the National Environment Act determine the screening outcome:
- **Third Schedule:** EIA mandatory. Major roads, bridges in environmentally sensitive areas, new roads > 10 km in protected areas, projects requiring significant land acquisition.
- **Second Schedule:** Summary ESIA or Project Brief required. Road rehabilitation, upgrades within existing corridor, minor widening.
- **First Schedule:** Exempted. Routine maintenance, minor repairs within existing road footprint.

**World Bank Environmental and Social Framework (ESF):**

Risk classification determines the required assessment:
- **High Risk:** Full ESIA + Environmental and Social Management Plan (ESMP) + any additional instruments (RAP, IPP). New road through protected area, significant resettlement, impacts on Indigenous Peoples.
- **Substantial Risk:** Targeted ESIA or detailed ESMP. Upgrade with limited land acquisition, near sensitive receptors.
- **Moderate Risk:** ESMP only. Rehabilitation within existing corridor, minor widening with no resettlement.
- **Low Risk:** No instrument required beyond standard contractual provisions. Routine maintenance, no physical works outside existing footprint.

**AfDB Integrated Safeguards System (ISS):**

Category-based classification:
- **Category 1:** Full EIA required. Significant adverse environmental or social impacts.
- **Category 2:** Limited ESIA or ESMP. Less significant impacts that can be mitigated.
- **Category 3:** Exempt. Negligible impacts.

Similar to World Bank ESF but with different categorisation terminology and thresholds.

**Key Screening Criteria:**

The following criteria determine the screening outcome under all frameworks:
1. **Land acquisition and resettlement:** Any involuntary displacement of people or livelihoods triggers higher-level assessment.
2. **Sensitive ecosystems:** Wetlands, forests, protected areas, wildlife corridors, water bodies.
3. **Cultural heritage:** Historical sites, sacred areas, archaeological sites.
4. **Indigenous Peoples / vulnerable communities:** Special protections under World Bank ESF (ESS 7).
5. **Hazardous materials:** Contaminated land, asbestos in existing structures, fuel/chemical storage.
6. **Occupational health and safety:** Construction worker safety, community safety during construction.
7. **Physical displacement vs economic displacement:** Physical relocation of households is higher risk than temporary economic disruption.

**Safeguard Instruments:**

| Instrument | When Required | Purpose |
|-----------|---------------|---------|
| EIA / ESIA | Third Schedule (NEMA) or High Risk (WB) | Comprehensive impact assessment |
| ESMP | All projects with environmental/social risks | Plan for managing and mitigating impacts |
| RAP (Resettlement Action Plan) | Significant involuntary resettlement (>200 persons) | Plan for compensating and resettling affected people |
| ARAP (Abbreviated RAP) | Minor resettlement (<200 persons, no physical relocation) | Simplified resettlement plan |
| IPP (Indigenous Peoples Plan) | Impacts on Indigenous Peoples (WB ESS 7) | Engagement and mitigation plan for Indigenous Peoples |
| Heritage Impact Assessment | Cultural heritage at risk | Assessment of impacts on cultural heritage |

### 1.2 Universal Principles

No engineering formulas apply. The key relationships are:

**Funding Source Override:**
```
If donor-funded --> Donor environmental framework applies
If mixed funding --> Most restrictive framework applies
If GoU-funded --> National framework (NEMA) applies exclusively
```

**Risk Escalation:**
```
Higher risk factors --> Higher-level assessment required
Land acquisition + sensitive area + resettlement = cumulative risk --> Full EIA/ESIA
```

### 1.3 Figures & Diagrams

No figures required. The decision tree in Section 2.1 encodes the screening flow. Screening criteria are in JSON tables.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Determine funding source
  |-- Government of Uganda (GoU) budget --> Apply NEMA screening (See Uganda module, Section M.3.1a)
  |-- World Bank IDA/IBRD --> Apply World Bank ESF (See Uganda module, Section M.3.1b)
  |-- African Development Bank --> Apply AfDB ISS (See Uganda module, Section M.3.1c)
  +-- Mixed funding --> Apply most restrictive framework (Section 2.2)

Step 2: Screen project against applicable framework
  NEMA Framework:
    |-- Third Schedule project --> EIA mandatory
    |-- Second Schedule project --> Summary ESIA or Project Brief
    +-- First Schedule project --> Exempted

  World Bank ESF:
    |-- High Risk --> Full ESIA + ESMP + additional instruments as needed
    |-- Substantial Risk --> Targeted ESIA or detailed ESMP
    |-- Moderate Risk --> ESMP only
    +-- Low Risk --> No instrument required

  AfDB ISS:
    |-- Category 1 --> Full EIA required
    |-- Category 2 --> Limited ESIA or ESMP
    +-- Category 3 --> Exempt

Step 3: Identify key environmental and social risks
  --> Land acquisition / resettlement required?
  --> Sensitive ecosystems affected (wetlands, forests, protected areas)?
  --> Cultural heritage sites at risk?
  --> Indigenous Peoples / vulnerable communities affected?
  --> Hazardous materials involved?
  --> Occupational health and safety risks?

Step 4: Determine required safeguard instruments
  |-- Resettlement > 200 persons --> RAP required
  |-- Resettlement < 200 persons, no physical relocation --> ARAP may suffice
  |-- Indigenous Peoples affected (WB ESS 7) --> IPP required
  |-- Cultural heritage at risk --> Heritage Impact Assessment
  +-- All projects with risks --> ESMP required

Step 5: Outline terms of reference for required studies
  --> Scope of EIA/ESIA (if required)
  --> Key environmental and social issues to be assessed
  --> Stakeholder engagement requirements
  --> Timeline and budget implications
```

### 2.2 Professional Judgment (Universal)

**The funding source question must come first.** Engineers and project managers sometimes conduct environmental screening using national law without checking whether donor rules apply. For a World Bank-funded project, NEMA screening alone is insufficient -- World Bank ESF must also be applied. When both apply, the more restrictive requirement governs.

**"Most restrictive framework" means comparing each requirement individually.** For mixed-funded projects, compare the screening outcome under each framework. If NEMA says "Project Brief" but World Bank says "Full ESIA," the project requires a Full ESIA. If NEMA requires an EIA certificate but World Bank is satisfied with an ESMP, the project needs both an EIA certificate (NEMA) and an ESMP (World Bank).

**Land acquisition is the most common trigger for higher-level assessment.** Even minor land acquisition (e.g., widening a road by 2 metres into adjacent property) triggers resettlement safeguards under both NEMA and donor frameworks. Early identification of land acquisition needs is critical for project planning and budgeting.

**Screening is not a one-time exercise.** If the project scope changes significantly (new route alignment, increased land acquisition, discovery of cultural heritage), the screening should be revisited. A project screened as "Moderate Risk" may become "High Risk" if the scope expands.

### 2.3 Common Errors

1. **Applying NEMA screening alone to donor-funded projects.** Both NEMA and donor frameworks must be satisfied. Using only NEMA for a World Bank project may result in inadequate assessment.
2. **Ignoring economic displacement.** Land acquisition that does not physically relocate people but affects livelihoods (e.g., removing market stalls along the road) still triggers resettlement safeguards.
3. **Underestimating wetland impacts.** Uganda has extensive wetland systems. Road projects crossing or adjacent to wetlands require NEMA attention even for rehabilitation within existing corridor.
4. **Confusing screening with the actual EIA.** Screening determines IF an EIA is needed and at what level. It does not replace the EIA study itself.
5. **Not involving NEMA early enough.** NEMA screening and EIA approval can take 3-6 months. Late submission delays the entire project.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Funding source | GoU budget | Not specified | ASSUMED: GoU funding. If donor-funded, different framework applies. Verify funding source. | Conservative -- national law is baseline |
| Resettlement | No | Not specified | ASSUMED: No land acquisition or resettlement. Verify -- any land take triggers safeguards. | Conservative -- assume no impact until confirmed |
| Sensitive areas | None identified | Not specified | ASSUMED: No sensitive ecosystems. Verify against protected area maps and wetland inventory. | Requires site-specific confirmation |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Always flag the funding source** explicitly in output. Never silently assume GoU funding.
3. **When in doubt, screen at a higher level.** It is always safer to recommend a higher-level assessment that may be simplified, than to recommend exemption and miss significant impacts.
4. **Flag for investigation:** Every assumed value includes a recommendation for verification.

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Number of affected persons (resettlement) | 0 | No limit | persons | If > 200, RAP required. If > 0, at least ARAP required. |
| Distance to protected area | 0 | No limit | km | If < 1 km, higher-level assessment likely required. |

### 4.2 Consistency Checks

- **Funding source vs framework:** Verify that the correct framework is applied for the funding source (NEMA for GoU, ESF for WB).
- **Screening outcome vs project scope:** Major new road construction should not be screened as "exempt" under any framework.
- **Resettlement vs instruments:** If resettlement is identified, verify that RAP or ARAP is included in the instruments list.
- **Dual-framework consistency:** For mixed-funded projects, verify that the most restrictive requirement from each framework is applied.

### 4.3 Standards Compliance

The agent shall run all validation checks from the loaded country module's Section M.5 in addition to the universal checks above.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| No country module available | Cannot apply country-specific screening criteria | SENIOR REVIEW -- No country module for [jurisdiction]. Cannot determine screening categories. |
| Funding source unclear | Cannot determine which framework applies | SENIOR REVIEW -- Funding source not specified. NEMA and donor requirements differ significantly. Clarify before proceeding. |
| Mixed funding | Complex dual-framework application | NOTE -- Mixed funding identified. Applying most restrictive framework. Verify compliance with each funder's requirements individually. |
| Significant resettlement (> 200 persons) | RAP required -- major social risk | SENIOR REVIEW -- Significant resettlement identified. RAP required. Specialist social safeguards expertise needed. |
| Indigenous Peoples affected | WB ESS 7 triggered | SENIOR REVIEW -- Indigenous Peoples may be affected. Indigenous Peoples Plan (IPP) required under World Bank ESF. Specialist consultation needed. |
| Protected area affected | High environmental risk | SENIOR REVIEW -- Project within or adjacent to protected area. Full EIA likely required. NEMA will require detailed environmental assessment. |

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
| Funding source | text | -- | Yes | User | GoU, World Bank, AfDB, or Mixed |
| Project description | text | -- | Yes | User | Road type, length, location, proposed works |
| Land acquisition required | boolean | -- | Yes | User | Whether any land acquisition is needed |
| Sensitive areas | list | -- | Recommended | User | Wetlands, forests, protected areas, cultural sites near project |
| Number of affected persons | number | persons | If resettlement | User | People requiring physical or economic displacement |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| screening_outcome | text | -- | Project team | EIA required / ESIA / ESMP / Exempt |
| risk_classification | text | -- | Project team | High / Substantial / Moderate / Low (or NEMA Schedule) |
| key_risks_identified | list | -- | EIA consultant | Environmental and social risks for further assessment |
| required_instruments | list | -- | Project team | EIA, ESMP, RAP, ARAP, IPP, etc. |
| framework_applied | text | -- | Project documentation | Which framework was used (NEMA, WB ESF, AfDB ISS) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific NEMA and World Bank ESF context | Markdown |
| `tables/nema_screening_categories.json` | NEMA First/Second/Third Schedule criteria for road projects | JSON |
| `tables/wb_esf_risk_classification.json` | World Bank ESF risk classification criteria | JSON |

---

## 7. Procedure

### Step 1: Confirm Funding Source
Identify the funding source. This is the FIRST and most critical step (same as Skill #47). If mixed funding, identify all sources. If funding source is unclear, flag for clarification.

### Step 2: Load Country Module
Identify the jurisdiction. Load the Uganda module. Load the applicable screening tables (NEMA for GoU, World Bank ESF for WB-funded).

### Step 3: Screen Against Applicable Framework
Compare the project against the screening criteria from the JSON tables. Determine the screening outcome (EIA required, ESIA, ESMP, exempt) under the applicable framework.

### Step 4: Apply Most Restrictive Framework (Mixed Funding)
For mixed-funded projects, compare screening outcomes under each applicable framework. Apply the most restrictive requirement at each decision point.

### Step 5: Identify Key Risks
Systematically assess the project against screening criteria: land acquisition, sensitive ecosystems, cultural heritage, vulnerable communities, hazardous materials, occupational health.

### Step 6: Determine Required Instruments
Based on screening outcome and identified risks, list all required safeguard instruments (EIA, ESMP, RAP, ARAP, IPP, etc.).

### Step 7: Run Validation
Apply all checks from Section 4 (framework-source consistency, screening-scope consistency, instrument completeness).

### Step 8: Produce Output
Format per Section 8. Include funding source determination, screening outcome, identified risks, required instruments, and any escalation flags.

---

## 8. Output Format

### Output Template

```
============================================================
ENVIRONMENTAL & SOCIAL SCREENING -- [Project Name]
Country/Jurisdiction: [country]
Framework: [NEMA / World Bank ESF / AfDB ISS / Mixed]
Date: [YYYY-MM-DD]
============================================================

FUNDING SOURCE
--------------
Source: [GoU budget / World Bank IDA / AfDB / Mixed]
Applicable framework: [National Environment Act / WB ESF / AfDB ISS]

PROJECT DESCRIPTION
-------------------
Type: [New road / Upgrade / Rehabilitation / Bridge]
Length: [km]
Location: [region/district]
Proposed works: [description]

SCREENING OUTCOME
-----------------
Framework applied: [NEMA / WB ESF / AfDB ISS / Most restrictive]
Classification: [NEMA Schedule / WB Risk Level / AfDB Category]
Assessment required: [Full EIA / ESIA / ESMP / Project Brief / Exempt]
Rationale: [why this classification applies]

KEY RISKS IDENTIFIED
--------------------
1. [Risk category]: [description and significance]
2. [Risk category]: [description and significance]

REQUIRED INSTRUMENTS
--------------------
| Instrument | Triggered By | Responsible |
|-----------|-------------|------------|
| [EIA/ESIA/ESMP/RAP/ARAP/IPP] | [trigger] | [who prepares] |

TIMELINE IMPLICATIONS
---------------------
Estimated time for required studies: [months]
Critical path item: [yes/no]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

ESCALATION FLAGS
----------------
[Any flags, or "None"]

REFERENCES
----------
[Framework references cited]

============================================================
ENVIRONMENTAL & SOCIAL SCREENING -- FOR PROFESSIONAL REVIEW
This output provides preliminary screening based on
available project information. Screening should be confirmed
by a qualified environmental specialist.
============================================================
```

---

## 9. Worked Examples

See country module for jurisdiction-specific worked examples:
- **Uganda:** modules/uganda.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Conducting the actual EIA/ESIA study. Stakeholder engagement methodology. Detailed social impact assessment. Biodiversity offset design. Environmental monitoring during construction.
- **Simplifications:** Screening criteria are illustrative for road projects -- the full NEMA Schedules cover all sectors. World Bank ESF risk classification requires project-specific judgment by the Bank. AfDB coverage is brief.
- **Country modules available:** Uganda
- **Country modules needed:** Kenya (NEMA Kenya), Tanzania (NEMC), Ethiopia (EFCCC)

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with dual-framework screening (NEMA + WB ESF), funding-source-first decision tree, screening criteria in JSON tables, safeguard instruments list. |
