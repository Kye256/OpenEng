# Maintenance Planning -- Uganda Module

> **Parent Skill:** Skill #57 Maintenance Planning
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Maintenance Manual, UNRA Maintenance Planning Procedures
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-21
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Maintenance Manual | Current edition | Trigger levels, treatment selection, maintenance activities | Current |
| UNRA Maintenance Planning Procedures | Internal | Annual work planning, maintenance programme | Current |
| DUCAR Programme Guidelines | Current | District road maintenance planning | Current |

### M.1.2 Institutional Context

**UNRA (Uganda National Roads Authority):** Manages maintenance of national roads. Prepares annual maintenance work plans based on condition data from network surveys. Maintenance budget from Uganda Road Fund allocation. UNRA distinguishes between routine maintenance (force account or term contracts) and periodic maintenance/rehabilitation (project contracts).

**District Local Governments:** Manage district and community access road maintenance. Planning is typically less systematic than UNRA. DUCAR (District, Urban and Community Access Roads) programme supports district road maintenance planning and provides technical guidance.

**Uganda Road Fund (URF):** Provides ring-fenced funding for road maintenance. Allocates funds to UNRA (national roads), KCCA (Kampala), municipalities, and districts based on road network length and condition. Funding levels consistently below maintenance needs -- prioritization is essential.

### M.1.3 Standard Philosophy

Uganda maintenance planning follows a condition-responsive approach: trigger levels determine when intervention is needed, and treatment selection is based on the type and severity of distress. The MoWT maintenance manual provides the framework, but practical implementation varies between UNRA (more systematic, condition-data-driven) and districts (often reactive, addressing worst problems first). Budget constraints mean that not all triggered interventions can be funded -- prioritization (Skill #59) is required.

---

## M.2 Country-Specific Knowledge

### M.2.1 Uganda Trigger Levels

**Table: Maintenance Trigger Levels** --> `tables/maintenance_trigger_levels.json`

Representative trigger levels used in Uganda road maintenance planning:

**Paved Roads:**

| Parameter | Routine Threshold | Periodic Trigger | Rehabilitation Trigger | Unit |
|-----------|-------------------|-----------------|----------------------|------|
| IRI | < 4 | 4 - 6 | > 6 | m/km |
| VCI | > 80 | 40 - 80 | < 40 | score |
| Rutting | < 10 | 10 - 25 | > 25 | mm |
| Cracking extent | < 10 | 10 - 30 | > 30 | % area |

**Gravel Roads:**

| Parameter | Routine Threshold | Periodic Trigger | Rehabilitation Trigger | Unit |
|-----------|-------------------|-----------------|----------------------|------|
| IRI | < 8 | 8 - 14 | > 14 | m/km |
| VCI | > 70 | 40 - 70 | < 40 | score |
| Gravel thickness loss | < 25 | 25 - 50 | > 50 | % lost |
| Corrugation | Low | Medium | High | severity |

### M.2.2 Treatment Practice in Uganda

**Routine Maintenance Activities (UNRA):**
- Pothole patching (cold mix or hot mix depending on availability)
- Crack sealing (bitumen application)
- Drainage clearing (side drains, mitre drains, culvert inlets/outlets)
- Vegetation control (grass cutting, bush clearing within ROW)
- Road furniture maintenance (signs, guardrails, delineators)
- Shoulder maintenance (grading and compaction)

**Periodic Maintenance Treatments (UNRA):**
- Surface dressing (single or double seal) -- for surface distress on otherwise sound pavement
- Thin overlay (30-50mm AC) -- for moderate rutting and cracking
- Gravel resheeting (150mm compacted) -- standard periodic treatment for gravel roads
- Shaped patching -- repair of localised failures before periodic treatment

**Rehabilitation (project-based):**
- Thick overlay (>50mm AC) -- when structural capacity needs restoration
- Mill and replace -- remove failed surface, replace with new AC
- Base repair and overlay -- when base layer has failed
- Full reconstruction -- when subgrade failure or geometric deficiency
- Designed per Skill #25 (Pavement Rehabilitation)

### M.2.3 DUCAR District Road Maintenance

District road maintenance planning under DUCAR uses a simplified approach:
- Visual assessment by District Engineer (no IRI profiling)
- Trigger levels based on visual condition categories
- Emphasis on routine maintenance (drag, grade, clear drains) and periodic resheeting
- Limited rehabilitation budget -- most district road rehabilitation requires central government or donor funding

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

**Uganda-specific branching:**
```
Determine road authority:
  |-- UNRA national road --> Use UNRA trigger levels and treatment standards
  |                          IRI data typically available
  |                          Budget from Uganda Road Fund (UNRA allocation)
  |
  |-- District road --> Use simplified DUCAR triggers
  |                     Visual assessment likely (no IRI)
  |                     Budget from Uganda Road Fund (district allocation)
  |                     More limited treatment options
  |
  +-- Community access road --> Basic maintenance only
                                 Routine: drain clearing, pothole filling
                                 Periodic: gravel resheeting if budget permits
                                 Rehabilitation: rare -- needs project funding
```

### M.3.2 Professional Judgment (Country-Specific)

**Uganda Road Fund allocations are typically 30-50% of maintenance needs.** This means not all triggered interventions can be funded. Maintenance planning must be realistic about budget constraints. Prioritization (Skill #59) determines which roads receive treatment.

**Gravel road resheeting cycle in Uganda is typically 5-7 years, but often delayed.** Ideally, gravel roads should be resheeted every 3-5 years (before the wearing course is completely lost). In practice, budget constraints extend this to 7-10 years or more. When gravel loss exceeds 50%, the road has effectively lost its wearing course and needs reconstruction -- not just resheeting.

**Material availability affects treatment selection.** Hot mix asphalt is available near Kampala and along major corridors but may not be available in remote districts. Cold mix or surface dressing may be the only practical periodic treatment in areas far from asphalt plants.

**Overloading on trunk roads accelerates structural distress.** When selecting rehabilitation treatments for trunk roads with known overloading (see Skill #4), the maintenance plan should note that standard overlay thickness may be inadequate without traffic management measures to control overloading.

### M.3.3 Common Errors (Country-Specific)

1. **Planning maintenance without considering budget constraints.** A technically correct maintenance plan that exceeds available budget by 300% is not useful. Always relate the plan to available budget and prioritize.
2. **Applying paved road treatments to gravel roads.** Resealing a gravel road is not standard practice. Gravel roads require resheeting (new gravel layer), reshaping, and drainage improvement.
3. **Not including drainage in the maintenance plan.** In Uganda, drainage failure is the single largest cause of premature pavement failure. Every maintenance plan should include drainage condition assessment and drainage repair activities.
4. **Deferring routine maintenance while planning periodic treatment.** Routine maintenance (especially drain clearing and pothole patching) should continue even when periodic treatment is programmed. Deferring routine maintenance during the planning period accelerates deterioration.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Trigger levels | UNRA representative levels | Uganda jurisdiction | ASSUMED: UNRA trigger levels from tables/maintenance_trigger_levels.json. Representative ranges. | MoWT maintenance manual |
| Overlay thickness | 50mm AC | Periodic overlay | ASSUMED: 50mm AC overlay. Actual thickness from Skill #25 design. | Standard UNRA practice |
| Resheeting thickness | 150mm compacted | Gravel resheeting | ASSUMED: 150mm compacted natural gravel. | Standard UNRA practice |
| Surface dressing | Double seal | Periodic surface treatment | ASSUMED: Double surface dressing. Single seal for lower-traffic roads. | Standard practice |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| AC overlay thickness | 30 | 150 | mm | MoWT practice | < 30mm is surface treatment; > 100mm suggests reconstruction |
| Gravel resheeting thickness | 100 | 200 | mm compacted | MoWT practice | < 100mm insufficient; > 200mm unusual |

### M.5.2 Standards Compliance Checks

- **Check:** Treatment type matches road surface type
- **Standard:** MoWT maintenance manual
- **Pass condition:** Paved treatments for paved roads, gravel treatments for gravel roads
- **Fail action:** SENIOR REVIEW -- Treatment type does not match road surface type. Verify.

- **Check:** Drainage included in maintenance plan
- **Standard:** Engineering best practice
- **Pass condition:** Drainage condition assessed and drainage maintenance included
- **Fail action:** NOTE -- Drainage not addressed in maintenance plan. Drainage failure is a major cause of premature pavement failure in Uganda.

### M.5.3 Departures / Relaxations Process

No formal departures process for maintenance treatment selection. Treatment selection is based on engineering judgment within the framework of the maintenance manual. Significant departures (e.g., using non-standard materials or treatments) should be documented and approved by the supervising engineer.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Maintenance need exceeds 2x available budget | Severe under-funding | SENIOR REVIEW -- Maintenance needs significantly exceed budget. Prioritization essential (Skill #59). Consider phased intervention over 2-3 years. |
| Gravel wearing course completely lost | Beyond resheeting -- needs reconstruction | SENIOR REVIEW -- Gravel wearing course absent. Resheeting alone insufficient -- base/subgrade assessment needed. |
| Repeated rehabilitation on same section | Structural or drainage problem not addressed | SENIOR REVIEW -- Section has required rehabilitation twice in [X] years. Investigate root cause (drainage, subgrade, overloading). |

---

## M.7 Worked Examples -- Uganda

### Example 1: Paved National Road -- Rehabilitation Trigger

**Project:** Maintenance planning for 10km section of national trunk road.

**Given:**
- Condition from Skill #56: Poor (IRI = 7.5 m/km, VCI = 38)
- Distress summary: alligator cracking at High severity covering 25% area, rutting 22mm average, patching 15% area
- Road surface: Paved (AC), 7m carriageway, 2 lanes
- Traffic: 2,500 vpd

**Solution:**

Step 1: Check trigger levels (paved road):
- IRI 7.5 > 6 m/km rehabilitation trigger --> TRIGGERED
- VCI 38 < 40 rehabilitation trigger --> TRIGGERED
- Rutting 22mm < 25mm (within periodic range, not yet rehabilitation)
- Cracking 25% within periodic range (10-30%)

Step 2: Intervention level: **Rehabilitation** (IRI and VCI both exceed rehabilitation triggers)

Step 3: Treatment assessment:
- Structural distress indicated (alligator cracking at High severity)
- Deep rutting approaching rehabilitation threshold
- Structural investigation recommended before overlay design

Step 4: Recommended treatments:
- Pre-rehabilitation: pothole and shaped patching of worst failures (immediate, routine)
- Investigation: FWD/DCP testing for structural assessment
- Rehabilitation design: refer to Skill #25 for overlay thickness design
- Preliminary scope: 50-80mm AC overlay on 10km x 7m = 70,000 m2 (subject to Skill #25 design)
- Drainage: check and repair side drains, clean culverts before overlay

**Result:** Rehabilitation triggered. Refer to Skill #25 for detailed overlay design. Preliminary scope: 70,000 m2 AC overlay (thickness TBD by Skill #25). Estimated cost: refer to Skill #50 with quantities. Drainage repair must precede surface treatment.

### Example 2: Gravel District Road -- Periodic Resheeting

**Project:** Maintenance planning for 15km district gravel road in western Uganda.

**Given:**
- Condition from visual survey: Poor (VCI = 48, no IRI data)
- Distress: corrugation at Medium severity over 30%, potholes at Low severity 8%, gravel loss estimated at 40%
- Road surface: Gravel, 6m width
- Traffic: 150 vpd

**Solution:**

Step 1: Check trigger levels (gravel road):
- VCI 48 within periodic trigger range (40-70) --> Periodic TRIGGERED
- Gravel loss 40% within periodic range (25-50%) --> Periodic TRIGGERED
- Corrugation Medium severity --> Periodic TRIGGERED

Step 2: Intervention level: **Periodic maintenance** (multiple periodic triggers exceeded)

Step 3: Treatment selection:
- Dominant distress: gravel loss (40%) + corrugation
- Treatment: gravel resheeting (150mm compacted thickness)
- Pre-treatment: pothole repair, reshape cross-section, clean drains

Step 4: Quantities:
- Resheeting: 15 km x 6m x 0.15m = 13,500 m3 compacted gravel
- Allow 25% for compaction loss: 13,500 / 0.75 = 18,000 m3 loose gravel required
- Pothole patching: 15,000 x 6 x 0.08 = 7,200 m2 (8% area, minor)
- Drain clearing: 15 km x 2 sides = 30 km of drain

**Result:** Periodic maintenance -- gravel resheeting. Quantities: 18,000 m3 loose gravel, 30 km drain clearing. Refer to Skill #50 for cost estimate with these quantities.

### Example 3: Routine Maintenance Programme for 50km Mixed-Condition Section

**Project:** Annual routine maintenance programme for 50km national road with mixed condition.

**Given:**
- 30km in Good condition (IRI < 4, VCI > 80)
- 15km in Fair condition (IRI 4-6, VCI 60-80)
- 5km in Poor condition (IRI 6-8, VCI 40-60) -- periodic maintenance programmed separately

**Solution:**

Step 1: Routine maintenance applies to all 50km (including the 5km with periodic intervention programmed).

Step 2: Routine maintenance activities for 50km:
- Pothole patching: estimated 500 m2 (based on 0.5% of carriageway area for Good/Fair sections)
- Crack sealing: estimated 2,000 linear metres (Fair and Poor sections)
- Drainage clearing: 50 km x 2 sides = 100 km of drain clearing
- Vegetation control: 50 km x 2 sides x 3m width = 300,000 m2 grass cutting (3 cuts/year)
- Sign/furniture: 50km corridor -- 25 signs to inspect/maintain
- Shoulder maintenance: 30km of Fair/Poor sections x 2 shoulders = 60km shoulder grading

**Result:** Annual routine maintenance programme covering all 50km. Quantities provided for each activity. Refer to Skill #50 for cost estimate. Note: the 5km Poor section needs periodic treatment IN ADDITION to routine maintenance.

---

## M.8 References

1. MoWT, Road Maintenance Manual, Ministry of Works and Transport, Uganda (current edition)
2. UNRA Annual Maintenance Work Plan Guidelines, Uganda National Roads Authority (internal)
3. DUCAR Programme -- District Road Maintenance Planning Guidelines
4. Uganda Road Fund, Allocation Formula and Disbursement Guidelines
5. MoWT, Road Design Manual Volume 3: Pavement Design (for rehabilitation reference), 2010

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-21 | AI draft | Initial draft with UNRA trigger levels, treatment practice (routine/periodic/rehabilitation), DUCAR context, 3 worked examples. |
