# Intersection & Junction Design -- Uganda Module

> **Parent Skill:** #19 Intersection & Junction Design
> **Country/Jurisdiction:** Uganda
> **Standards:** Uganda MoWT Road Design Manual Vol. 1 (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Uganda MoWT Road Design Manual Vol. 1 | 2010 | Section 8 (At Grade Intersections), p152-185 | Current -- primary standard for all roads in Uganda |

### M.1.2 Institutional Context

Same as other Uganda modules. MoWT Road Design Manual is the national standard for all roads in Uganda. UNRA has supplementary guidelines but MoWT is the base standard for geometric design of intersections.

### M.1.3 Standard Philosophy

MoWT provides comprehensive intersection design guidance based on traffic volume thresholds and design speed. Junction type selection is presented graphically (Figures 8-5 to 8-8), which means exact thresholds must be approximated. Visibility splays are tabulated clearly. Turning lane components are tabulated by design speed. Roundabout guidance is basic -- central island size and flow ratio only, without detailed entry geometry or capacity calculation. The manual states minimum requirements ("shall") but acknowledges engineering judgment for specific conditions.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UI.1: Intersection Categories (Table 8-1, p153, Verified)**

| Category | Major Road Control | Minor Road Control | Types |
|----------|-------------------|-------------------|-------|
| Priority | Priority | Stop or give way sign | A: Unchannelised T, B: Partly Channelised T, C: Channelised T |
| Control | Traffic signals or give way sign | -- | D: Roundabout, E: Signalised |

**Visibility Splays:** Detailed visibility splay values are in the JSON table `tables/uganda_junction_visibility.json`. Two conditions:

- **Approach/Yield (Figure 8-11):** Measured from 20 m setback from nearside carriageway edge. Values range from LA = 110 m at 40 km/h to LA = 310 m at 120 km/h.
- **Stop (Figure 8-12):** Measured from 3.0 m setback from nearside carriageway edge. Values range from LS = 120 m at 40 km/h to LS = 500 m at 120 km/h.

**Table UI.2: Left Turn Lane -- Diverging Section Length (Table 8-2, p168, Verified)**

| Junction Design Speed (km/h) | <=70 | 80 | 100 | 120 |
|-------------------------------|------|-----|-----|-----|
| Lc (m) | 30 | 40 | 50 | 60 |

**Table UI.3: Left Turn Lane -- Deceleration Section Length (Table 8-3, p168, Verified)**

| Junction Design Speed (km/h) | <=70 | 80 | 100 | 120 |
|-------------------------------|------|-----|-----|-----|
| LD (m) | 30 | 50 | 70 | 110 |

Exit radius for left turn: **25 m minimum.**

**Table UI.4: Right Turn Lane -- Deceleration Section Length (Table 8-5, p170, Verified)**

| Junction Design Speed (km/h) | 40 | 50 | 60 | 70 | 80 | 100 | 120 |
|-------------------------------|-----|-----|-----|-----|-----|------|------|
| LD (m) | 30 | 50 | 70 | 75 | 85 | 105 | 160 |

**Table UI.5: Right Turn Lane -- Storage Section Length (Table 8-6, p172, Verified)**

| Traffic turning right (pcu/h) | Storage Length (m) |
|-------------------------------|-------------------|
| 0-150 | 20 |
| 151-300 | 40 |
| >300 | N x 9.75 (N = max pcu turning right per 2-min interval) |

**Deceleration/storage lane width:** 3.0 m.

**Table UI.6: Gradient Adjustment Factors for Turning Lane Deceleration (Table 8-4, p169, Verified)**

| Gradient | 6% downgrade | 5% downgrade | 4% downgrade | 3% downgrade | Level | 3% upgrade | 4% upgrade | 5% upgrade | 6% upgrade |
|----------|-------------|-------------|-------------|-------------|-------|-----------|-----------|-----------|-----------|
| Factor | 1.4 | 1.3 | 1.25 | 1.2 | 1.0 | 0.9 | 0.9 | 0.85 | 0.8 |

Apply this factor to the deceleration section length. On downgrades, increase deceleration length (factor > 1.0). On upgrades, decrease (factor < 1.0).

### M.2.2 Country-Specific Formulas

**Junction spacing:** Minimum distance between consecutive junctions = 10 x VD metres, where VD = design speed in km/h.

**Junction design speed:** Within +/-20 km/h of the major road design speed.

**Gradient-adjusted deceleration length:**

```
LD_adjusted = LD x gradient_factor
```

Where LD is from Tables UI.3 or UI.4, and gradient_factor is from Table UI.6.

### M.2.3 Channelisation

**Traffic islands (Section 8.3, p174-178):**
- Raised islands: minimum area **4.5 m2** to be visible to drivers
- Set back **0.30 m** from edge of traffic lane
- Shapes: elongated (splitter islands) or triangular (directional islands)
- Splitter islands on minor road approach separate entering and exiting traffic
- Triangular islands at channelised T-junctions direct left-turning traffic

**Roundabouts (Section 8.2.2.2, p155):**
- Central island radius: >= **10 m** for normal-sized roundabouts; < 10 m for small/mini roundabouts
- Minor road traffic should be at least **10-15%** of total incoming traffic for a roundabout to function well
- Roundabouts are preferred over signalised intersections for most traffic distributions with moderate total flows

**Note:** MoWT roundabout guidance is minimal -- it covers central island size and flow balance but does not provide entry width, deflection angle, or capacity calculation. Supplementary guidance (e.g., TRL Overseas Road Note 6) may be needed for detailed roundabout design. Any supplementary guidance must be flagged as non-MoWT.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

**Junction type selection** is based on Figures 8-5 to 8-8 in MoWT (p159-162). These are graphical charts showing intersection type as a function of major road AADT and minor road AADT. Since the charts are graphical, the following approximate thresholds are encoded. **These are approximate -- the original charts should be consulted for borderline cases.**

**At 50 km/h design speed (approximate from Figure 8-5):**

| Major Road AADT | Minor Road AADT < 200 | Minor AADT 200-500 | Minor AADT 500-1500 | Minor AADT > 1500 |
|-----------------|----------------------|--------------------|--------------------|-------------------|
| < 3000 | Type A (Unchannelised T) | Type A | Type B (Partly channelised) | Type C/D |
| 3000-8000 | Type A | Type B | Type C (Channelised) | Type D/E |
| > 8000 | Type B | Type C | Type D (Roundabout) | Type E (Signalised) |

**At 80 km/h design speed (approximate from Figure 8-6):**

| Major Road AADT | Minor Road AADT < 200 | Minor AADT 200-500 | Minor AADT 500-1500 | Minor AADT > 1500 |
|-----------------|----------------------|--------------------|--------------------|-------------------|
| < 2000 | Type A | Type B | Type B | Type C/D |
| 2000-6000 | Type B | Type B/C | Type C | Type D |
| > 6000 | Type C | Type C | Type D | Type D/E |

**At 100 km/h design speed (approximate from Figure 8-7):**

| Major Road AADT | Minor Road AADT < 200 | Minor AADT 200-500 | Minor AADT 500-1500 | Minor AADT > 1500 |
|-----------------|----------------------|--------------------|--------------------|-------------------|
| < 2000 | Type B | Type B | Type C | Type C/D |
| 2000-5000 | Type B/C | Type C | Type C | Type D |
| > 5000 | Type C | Type C | Type D | Type D/E |

**Important:** These thresholds are approximate readings from graphical charts. For borderline cases, engineering judgment is required. Higher design speeds generally push toward more channelised junction types at lower traffic volumes because approach speeds are higher and the consequences of conflict are more severe.

### M.3.2 Professional Judgment (Uganda-Specific)

**Right turn lanes on trunk roads.** On Uganda's trunk roads (Class I and II), right turn lanes should be provided at all junctions where the design speed is 70 km/h or above, even if traffic volumes are moderate. The combination of high through-traffic speed and mixed traffic (including slow-moving trucks) makes right-turning vehicles a major collision risk.

**Boda-boda and pedestrian movements at junctions.** Uganda's intersections carry significant pedestrian and boda-boda traffic that is not captured in vehicle AADT. Junction design must account for these movements -- particularly at junctions near trading centres. Link to Skill #20 (NMT Facilities) for pedestrian crossing design.

**Visibility splay maintenance.** In Uganda, vegetation growth (particularly sugarcane and banana plantations) frequently encroaches on visibility splays. The design should note the required clear zone and the need for ongoing maintenance or land-use control within the splay area.

### M.3.3 Common Errors (Uganda-Specific)

1. **Confusing approach and stop visibility splay setbacks.** Approach = 20 m setback; stop = 3.0 m setback. This is the single most common error in junction visibility design (see Pitfall #5 in research).
2. **Using Figures 8-5 to 8-8 as exact boundaries.** These are graphical charts with gradual transitions between junction types. Treat the thresholds as approximate guidelines, not sharp boundaries.
3. **Ignoring gradient adjustment for turning lanes.** On sloping approaches, deceleration distances must be adjusted per Table UI.6. A 5% downgrade increases deceleration length by 30%.
4. **Over-relying on MoWT for roundabout design.** MoWT provides only basic roundabout guidance. For detailed roundabout geometry, supplementary sources are needed and must be flagged as non-MoWT.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Junction control | Priority (give way) | Not specified | WARNING ASSUMED: Priority junction (give way). Confirm control type. | Most common for rural T-junctions in Uganda |
| Visibility condition | Approach (20 m setback) | Give way junction | WARNING ASSUMED: Approach condition used (20 m setback). If stop-controlled, use 3.0 m setback instead. | Standard for give-way junctions |
| Turning lane width | 3.0 m | Not specified | WARNING ASSUMED: Turning lane width 3.0 m per MoWT. | MoWT Section 8.3 |
| Left turn exit radius | 25 m | Not specified | WARNING ASSUMED: Left turn exit radius 25 m minimum per MoWT. | MoWT Section 8.3 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Visibility splay LA (approach) | 110 | 310 | m | MoWT Figures 8-11, 8-12 | Reject if outside tabulated range -- check speed |
| Visibility splay LS (stop) | 120 | 500 | m | MoWT Figures 8-11, 8-12 | Reject if outside tabulated range |
| Right turn deceleration | 30 | 160 | m | MoWT Table 8-5 | Flag if outside tabulated range |
| Storage length | 20 | -- | m | MoWT Table 8-6 | Minimum 20 m for up to 150 pcu/h |
| Central island radius | 10 | -- | m | MoWT Section 8.2.2.2 | Warn if < 10 m (mini-roundabout territory) |

### M.5.2 Standards Compliance Checks

- **Check:** Visibility splay distance matches the junction design speed and control type
- **Standard:** MoWT Vol 1, Figures 8-11 and 8-12
- **Pass condition:** LA or LS from table is achievable at the site
- **Fail action:** SENIOR REVIEW -- Visibility splay cannot be achieved. Consider changing junction location, control type, or removing obstruction.

- **Check:** Junction spacing meets 10 x VD minimum
- **Standard:** MoWT Vol 1, Section 8.2.4
- **Pass condition:** Distance to nearest junction >= 10 x design speed
- **Fail action:** SENIOR REVIEW -- Junction spacing [X] m is below minimum [Y] m. Consider consolidating accesses.

- **Check:** Turning lane deceleration length appropriate for design speed
- **Standard:** MoWT Vol 1, Tables 8-3 and 8-5
- **Pass condition:** LD >= tabulated value (adjusted for gradient)
- **Fail action:** Flag -- Deceleration section too short for design speed.

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process. Where the standard cannot be met, the engineer documents the justification in the design report and consults with the Engineer-In-Chief, MoWT.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Visibility splay obstructed by terrain or development | Safety risk -- drivers cannot see approaching traffic | SENIOR REVIEW -- Visibility splay at junction requires LA/LS = [X] m but only [Y] m is achievable. Options: (1) relocate junction, (2) change to stop control, (3) remove obstruction, (4) reduce design speed. |
| Minor road AADT > 30% of major road AADT at priority junction | Priority junction may be inadequate | SENIOR REVIEW -- Minor road carries [X]% of total junction traffic. Consider roundabout for better flow distribution. |
| Roundabout selected but detailed design parameters not available from MoWT | MoWT roundabout guidance is basic | NOTE -- MoWT provides central island size and flow ratio only. Detailed roundabout geometry (entry width, deflection, capacity) requires supplementary guidance (e.g., TRL ORN 6). Any supplementary source must be identified and flagged. |
| Junction near trading centre with high pedestrian volumes | Pedestrian safety at intersection | NOTE -- Junction is near a trading centre. Coordinate with Skill #20 for pedestrian crossing facilities, speed management, and refuge islands. |

---

## M.7 Worked Example -- Uganda

### Example: Priority T-Junction on an 80 km/h Road

**Given:**
- Major road: Class II Paved, design speed 80 km/h
- Minor road: Class III Paved, AADT = 500
- Major road AADT: 4000
- Junction control: Give way (approach condition)
- Terrain at junction: Level (no gradient)
- Design vehicle: Single Unit Truck (SU) from Skill #18

**Step 1 -- Select junction type:**
From the approximate thresholds (Section M.3.1) at 80 km/h:
- Major AADT = 4000 (row: 2000-6000)
- Minor AADT = 500 (column: 200-500)
- Result: **Type B/C (Partly to Fully Channelised T)**

Select Type B (Partly Channelised) as a starting point; upgrade to Type C if right-turn volumes warrant full channelisation.

**Step 2 -- Determine visibility splays:**
Junction design speed = 80 km/h (same as major road).
Control type = Give way --> Approach condition, 20 m setback.

From `tables/uganda_junction_visibility.json`:
- LA = **210 m** at 80 km/h from 20 m setback.

Check: Is 210 m of clear visibility achievable along the major road from the minor road approach? Assume yes for this example.

**Step 3 -- Check right turn lane requirement:**
At 80 km/h, a right turn lane is recommended for all trunk road junctions. With AADT = 4000 on the major road, decelerating right-turning traffic would impede through traffic.

Right turn deceleration (Table UI.4, 80 km/h): **LD = 85 m.**

Assume right-turning traffic = 100 pcu/h. Storage (Table UI.5): traffic 0-150 pcu/h --> **LS = 20 m.**

Gradient adjustment (level): factor = 1.0 (no adjustment).

Total right turn lane = 85 + 20 = **105 m** (deceleration + storage), at 3.0 m width.

**Step 4 -- Check left turn lane requirement:**
At 80 km/h, a left turn lane is desirable. Left turn diverging (Table UI.2, 80 km/h): **Lc = 40 m.** Left turn deceleration (Table UI.3, 80 km/h): **LD = 50 m.**

Total left turn lane = 40 + 50 = **90 m** (diverging + deceleration). Exit radius: 25 m minimum.

**Step 5 -- Channelisation:**
Type B junction: provide a splitter island on the minor road approach to separate entering and exiting traffic. Island minimum area: 4.5 m2, set back 0.30 m from lane edges.

**Result:**

| Parameter | Value |
|-----------|-------|
| Junction type | Type B (Partly Channelised T) |
| Visibility splay (approach) | LA = 210 m from 20 m setback |
| Right turn lane | 85 m deceleration + 20 m storage = 105 m, 3.0 m wide |
| Left turn lane | 40 m diverging + 50 m deceleration = 90 m |
| Left turn exit radius | 25 m minimum |
| Channelisation | Splitter island on minor road approach |
| Gradient adjustment | None (level junction) |

---

## M.8 References

1. Uganda Ministry of Works and Transport, *Road Design Manual, Volume 1: Geometric Design*, January 2010, Section 8 (At Grade Intersections), pp. 152-185.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Tables UI.1-UI.6 verified against MoWT Vol 1 Section 8. Junction type selection thresholds approximate from Figures 8-5 to 8-8. Visibility splays in JSON table. |
