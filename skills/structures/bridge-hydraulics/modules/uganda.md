# Bridge Hydraulics -- Uganda Module

> **Parent Skill:** #39 Bridge Hydraulics
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual Vol. 2: Drainage Design (2010), Section 10; HEC-18 5th Edition (FHWA)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol. 2: Drainage Design | 2010 | Section 10 (Hydraulic Design Aspects of Bridges), Section 10.5 (Bridge Scour and Aggradation), Section 10.8 (Methods of Computation of Extent of Scour) | Current |
| HEC-18: Evaluating Scour at Bridges | 5th Edition (FHWA) | Pier scour (CSU equation), contraction scour (live-bed and clear-water), correction factors | Current -- referenced by MoWT Section 10 |

### M.1.2 Institutional Context

MoWT Vol 2, Section 10 provides the policy framework and design criteria for bridge hydraulics in Uganda. For scour computation, MoWT explicitly references the US FHWA HEC-18 methodology (Section 10.5, 10.8). The scour equations, correction factors (Tables 10.1-10.3 in MoWT), and the two-step base flood / superflood evaluation approach are drawn directly from HEC-18. UNRA applies these provisions on all national road bridges.

### M.1.3 Standard Philosophy

MoWT Vol 2, Section 10 takes a policy-based approach: it establishes design principles (Section 10.2), design criteria (Section 10.3), and references HEC-18 for quantitative scour calculations. Key policy provisions:
- Maximum backwater (afflux) allowed: 0.5 m during 100-year flood (Section 10.2)
- Minimum clearance (freeboard): 1.5 m between design approach water surface elevation and low chord of bridge (Section 10.3.2f)
- Scour design: use 100-year flood (1% AEP) as base flood, then check with superflood = 500-year or 1.7 x Q100 (Section 10.3.2g)
- Foundation level shall be positioned below total scour depth whenever practical (Section 10.2)

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Scour Correction Factors:** Reference JSON table for HEC-18 correction factors and Uganda-specific parameters.

--> `tables/uganda_scour_parameters.json`

Contains: pier scour correction factors K1 (pier shape), K2 formula (angle of attack), K3 (bed condition), freeboard requirements by road class, design flood return periods by road class, and acceptable mean velocities by bed material.

**Table UBH.1: Pier Shape Correction Factor K1 (MoWT Table 10.2, Verified)**

| Shape of Pier Nose | K1 |
|--------------------|-----|
| Square nose | 1.1 |
| Round nose | 1.0 |
| Circular nose | 1.0 |
| Sharp nose | 0.9 |
| Group of cylinders | 1.0 |

**Table UBH.2: K2 Angle of Attack Correction Factor (MoWT Table 10.3, Verified)**

| Angle (degrees) | L/a = 4 | L/a = 8 | L/a = 12 |
|-----------------|---------|---------|----------|
| 0 | 1.0 | 1.0 | 1.0 |
| 15 | 1.5 | 2.0 | 2.5 |
| 30 | 2.0 | 2.75 | 3.5 |
| 45 | 2.3 | 3.3 | 4.3 |
| 90 | 2.5 | 3.9 | 5.0 |

L = length of pier, a = width of pier.

**Table UBH.3: K1 for Live-Bed Contraction Scour (MoWT Table 10.1, Verified)**

| V*/w | K1 | Mode of Bed Material Transport |
|------|-----|-------------------------------|
| < 0.50 | 0.59 | Mostly contact bed material discharge |
| 0.50 -- 2.0 | 0.64 | Some suspended bed material discharge |
| > 2.0 | 0.69 | Mostly suspended bed material discharge |

V* = shear velocity = (g * y1 * S1)^0.5; w = fall velocity of bed material based on D50.

**Freeboard Requirements:**

| Road Class | Minimum Freeboard (m) | Source |
|------------|----------------------|--------|
| National roads | 1.5 | MoWT Vol 2, Section 10.3.2f |
| District roads | 1.0 | Engineering practice |
| Community access | 0.6 | Engineering practice |

**Design Flood Return Periods:**

| Road Class | Design Return Period (years) | Check Return Period |
|------------|----------------------------|---------------------|
| National roads | 100 | 500 or 1.7 x Q100 |
| District roads | 50 | 100 |
| Community access | 25 | 50 |

**Acceptable Mean Velocities by Bed Material:**

| Bed Material | Maximum Acceptable Velocity (m/s) | Source |
|-------------|----------------------------------|--------|
| Sand (fine-medium) | 1.5 | Engineering practice |
| Gravel | 2.5 | Engineering practice |
| Cobbles | 3.5 | Engineering practice |
| Rock | 5.0 | Engineering practice |

### M.2.2 Country-Specific Formulas

**HEC-18 Pier Scour (CSU equation) -- as referenced by MoWT Section 10.8.3:**

```
ys = 2.0 * K1 * K2 * K3 * K4 * a * (y1/a)^0.35 * Fr1^0.43
```

Where ys = scour depth (m), a = pier width (m), y1 = upstream flow depth (m), Fr1 = Froude number = V1/(g*y1)^0.5. Correction factors K1-K3 from Tables UBH.1-UBH.2 above. K4 (armouring) = 1.0 unless site-specific armouring data is available.

**Live-bed contraction scour (MoWT Eqn 10.3):**

```
y2/y1 = (Q2/Q1)^(6/7) * (W1/W2)^k1
```

Exponent k1 from Table UBH.3.

**Clear-water contraction scour (MoWT Eqn 10.4):**

```
ys = y1 * {0.13 * [Q / (Dm^(1/3) * Y1^(7/6) * W)]^(7/6) - 1}
```

Where Dm = 1.25 * D50.

**Lacey regime width (for alluvial rivers):**

```
W = 4.836 * Q^0.5
```

Where W = regime width (m), Q = dominant discharge (m3/s). Widely used in East Africa for alluvial river width estimation.

**Critical velocity (Laursen, MoWT Section 10.8):**

MoWT presents Laursen's equation in imperial units: Vc = 10.95 * y1^(1/6) * D50^(1/3) (ft/s). In SI: Vc = 6.19 * y1^(1/6) * D50^(1/3) where y1 is in metres and D50 in metres.

### M.2.3 Classification System

Uganda road classification for bridge hydraulics follows the same hierarchy as other MoWT standards:
- **National roads (UNRA):** Q100 design, 1.5 m freeboard, 0.5 m max afflux
- **District roads (Local Government):** Q50 design, 1.0 m freeboard
- **Community access roads:** Q25 design, 0.6 m freeboard

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Country Branch)

At Step 2 (waterway area), use Lacey regime width as a primary check for alluvial rivers -- most Ugandan rivers in the central and eastern regions are alluvial with sand/gravel beds. At Step 5 (contraction scour), determine live-bed vs clear-water using the critical velocity check. Most Ugandan rivers during flood carry significant sediment, so live-bed conditions are common.

At Step 8 (freeboard), apply the requirements from Section 10.3.2f: 1.5 m minimum for national roads. At Step 9 (afflux), apply the 0.5 m maximum from Section 10.2.

For the superflood check (Section 10.3.2g): after computing total scour for the base flood (Q100), repeat the scour calculation for the superflood (500-year flood or 1.7 x Q100, whichever governs). The foundation design must accommodate the superflood scour with an appropriate safety factor (typically 3.0 per Section 10.3.2g).

### M.3.2 Professional Judgment (Country-Specific)

**Uganda rivers -- seasonal variation:** Many Ugandan rivers have extreme seasonal flow variation. The Nile tributaries in the north experience very different flood characteristics from the Lake Victoria basin rivers. Always consider the hydrological regime when assessing scour.

**Laterite foundations:** In some parts of Uganda (particularly the central and western regions), laterite forms the river bed or underlies alluvial deposits. Laterite can be less predictable for scour than sand/gravel -- it may resist scour initially but erode rapidly once the protective surface is breached. Treat laterite conservatively in scour assessment.

**Alluvial rivers with sand beds:** Many Ugandan rivers (e.g., Manafwa, Mpologoma basin, Aswa, Pager) have highly mobile sand beds. Scour depths in these rivers can be substantial. Use conservative K-factor values and consider the superflood check as mandatory, not optional.

**Bridge-river alignment:** MoWT Section 10.2 notes that spill-through type abutments with side slopes are preferred over deep abutments to minimize scour. This is common practice in Uganda and should be reflected in the abutment scour assessment.

### M.3.3 Common Errors (Country-Specific)

1. **Not using the superflood check.** MoWT Section 10.3.2g requires checking scour for both the base flood (Q100) and the superflood (1.7 x Q100 or Q500). Some practitioners only check the base flood.
2. **Ignoring the alluvial nature of Ugandan rivers.** Using a fixed-bed assumption for clearly alluvial rivers leads to underestimation of contraction scour.
3. **Using MoWT culvert hydraulics (Section 9) for bridge-scale crossings.** Section 9 covers culverts; Section 10 covers bridges. Different methods apply.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Design return period | 100 years | National road | No flag | MoWT Section 10.3.2d |
| Freeboard | 1.5 m | National road | No flag | MoWT Section 10.3.2f |
| Maximum afflux | 0.5 m | All roads | No flag | MoWT Section 10.2 |
| Safety factor for scour | 3.0 | Foundation design | No flag | MoWT Section 10.3.2g |
| Manning's n (natural channel) | 0.035 | Not specified | ASSUMED: n = 0.035 (natural channel with some irregularity) | Common for Ugandan rivers |
| Bed material D50 | 2 mm | Not provided | ASSUMED: D50 = 2 mm (medium sand). Obtain bed samples. | Conservative for alluvial rivers |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Design return period | 25 | 500 | years | MoWT Section 10.3.2d | Warn if < 50 for national road |
| Freeboard | 0.6 | 3.0 | m | MoWT Section 10.3.2f | Fail if < 1.5 m for national road |
| Afflux | 0 | 0.5 | m | MoWT Section 10.2 | Fail if > 0.5 m |
| Mean velocity | 0.5 | 5.0 | m/s | Table UBH acceptable velocities | Warn if exceeds limit for bed material |

### M.5.2 Standards Compliance Checks

- **Check:** Freeboard >= 1.5 m for national roads
- **Standard:** MoWT Vol 2, Section 10.3.2f
- **Pass condition:** Freeboard >= minimum for road class
- **Fail action:** Flag for senior review -- raise soffit or reassess design flood

- **Check:** Afflux <= 0.5 m
- **Standard:** MoWT Vol 2, Section 10.2
- **Pass condition:** Estimated afflux <= 0.5 m
- **Fail action:** Flag -- consider widening bridge opening or additional relief openings

- **Check:** Superflood scour assessed
- **Standard:** MoWT Vol 2, Section 10.3.2g
- **Pass condition:** Scour checked for both Q100 and superflood (1.7 x Q100 or Q500)
- **Fail action:** Flag -- repeat scour calculation for superflood

### M.5.3 Departures / Relaxations Process

MoWT does not have a formal departures process equivalent to DMRB. However, the Engineer-in-Chief's approval is required if backwater exceeds 0.5 m or if the design flood is permitted to overtop the road (Section 10.2). All departures from the minimum freeboard or afflux limits must be documented with engineering justification.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Afflux > 0.5 m | MoWT Section 10.2 limit exceeded | SENIOR REVIEW -- Afflux exceeds 0.5 m limit. Consider widening opening, adding relief openings, or seeking Engineer-in-Chief approval. |
| Freeboard < 1.5 m on national road | Below MoWT Section 10.3.2f minimum | SENIOR REVIEW -- Freeboard [X] m below 1.5 m minimum for national road. Raise soffit level. |
| Alluvial river, no D50 data | Cannot reliably estimate scour | SENIOR REVIEW -- Alluvial river without bed material sampling. Scour estimate uses assumed D50 = 2 mm. Obtain bed samples before detailed design. |
| Laterite foundation detected | Unpredictable scour behaviour | SENIOR REVIEW -- Laterite foundation material may have unpredictable scour characteristics. Specialist geotechnical assessment recommended. |

---

## M.7 Worked Example -- Uganda

### Example: Bridge over Alluvial River -- National Road

**Source:** Based on MoWT Vol 2, Section 10 methodology with HEC-18 equations

**Given:**
- National road bridge over 45 m wide alluvial river
- Q100 = 250 m3/s (from Skill #29)
- 3 piers, each 1.2 m wide, round-nosed
- Bridge opening: 3 spans x 15 m = 45 m total (net opening = 45 - 3 x 1.2 = 41.4 m)
- Mean flow depth at design flood: y1 = 3.0 m
- Bed material: medium sand, D50 = 1 mm (0.001 m)
- Channel slope: S = 0.001 m/m
- Manning's n = 0.030

**Solution:**

**Step 1: Waterway area and velocity**
- Waterway area: A = 41.4 x 3.0 = 124.2 m2
- Mean velocity: V = 250 / 124.2 = 2.01 m/s
- Acceptable velocity for sand: 1.5 m/s --> velocity exceeds limit, some scour expected

**Step 2: Regime width check**
- Lacey regime width: W = 4.836 x 250^0.5 = 4.836 x 15.81 = 76.5 m
- Bridge opening (45 m) = 0.59 x regime width -- significant constriction, contraction scour expected

**Step 3: Determine scour type**
- Shear velocity: V* = (9.81 x 3.0 x 0.001)^0.5 = 0.171 m/s
- Critical velocity (Laursen, SI): Vc = 6.19 x 3.0^(1/6) x 0.001^(1/3) = 6.19 x 1.201 x 0.100 = 0.74 m/s
- V (2.01 m/s) > Vc (0.74 m/s) --> live-bed contraction scour

**Step 4: Contraction scour (live-bed)**
- V*/w ratio: fall velocity for D50 = 1 mm, w approx 0.1 m/s; V*/w = 0.171/0.1 = 1.71 --> K1 = 0.64
- Assume Q2/Q1 = 1.0 (all flow through bridge), W1 = 76.5 m, W2 = 41.4 m
- y2/y1 = (1.0)^(6/7) x (76.5/41.4)^0.64 = 1.0 x (1.848)^0.64 = 1.50
- y2 = 1.50 x 3.0 = 4.50 m
- Contraction scour: ys = y2 - y0 = 4.50 - 3.0 = 1.50 m

**Step 5: Pier scour (CSU equation)**
- K1 = 1.0 (round nose, Table UBH.1)
- K2 = 1.0 (flow parallel, theta = 0)
- K3 = 1.1 (plane bed / live-bed with small dunes)
- K4 = 1.0 (no armouring data, conservative)
- Fr1 = V/(g*y1)^0.5 = 2.01 / (9.81 x 3.0)^0.5 = 2.01 / 5.42 = 0.371
- ys = 2.0 x 1.0 x 1.0 x 1.1 x 1.0 x 1.2 x (3.0/1.2)^0.35 x 0.371^0.43
- (y1/a)^0.35 = (2.5)^0.35 = 1.378
- Fr1^0.43 = 0.371^0.43 = 0.648
- ys = 2.0 x 1.1 x 1.2 x 1.378 x 0.648 = 2.36 m

**Step 6: Total scour**
- Long-term degradation allowance: 0.5 m (assumed, flag)
- Total scour at pier: 1.50 (contraction) + 2.36 (pier) + 0.5 (degradation) = 4.36 m
- Foundation must be at least 4.36 m below existing bed level

**Step 7: Freeboard check**
- Design flood level: assume 3.0 m depth + bed level = need soffit at least 3.0 + 1.5 = 4.5 m above bed level
- If soffit is at 5.0 m above bed: freeboard = 5.0 - 3.0 = 2.0 m > 1.5 m --> PASS

**Step 8: Afflux**
- Qualitative assessment: constriction ratio = 45/76.5 = 0.59, moderate constriction
- Simplified: afflux likely 0.2-0.5 m for this constriction ratio at this flow. Detailed HEC-RAS analysis recommended for precise value.

**Result:**
- Waterway area: marginally adequate (velocity exceeds sand limit)
- Pier scour: 2.36 m (CSU equation)
- Contraction scour: 1.50 m
- Total scour: 4.36 m (foundation depth below existing bed)
- Freeboard: 2.0 m (PASS -- exceeds 1.5 m minimum)
- Afflux: estimated 0.2-0.5 m (within 0.5 m limit, confirm with HEC-RAS)

**Verification:** Scour depth is in the expected range (2-6 m total) for a constricted alluvial river crossing with medium sand bed. HEC-18 methodology correctly applied with all K-factors stated.

---

## M.8 References

1. MoWT Road Design Manual Vol. 2: Drainage Design, Ministry of Works and Transport, Republic of Uganda, January 2010. Section 10: Hydraulic Design Aspects of Bridges.
2. HEC-18: Evaluating Scour at Bridges, 5th Edition, FHWA-HIF-12-003, Federal Highway Administration, 2012.
3. Lacey, G. (1930). "Stable channels in alluvium." Proceedings of the Institution of Civil Engineers, 229, 259-292.
4. Laursen, E.M. (1963). "An Analysis of Relief Bridge Scour." Journal of the Hydraulics Division, ASCE, 89(HY3).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with MoWT Vol 2 Section 10 provisions and HEC-18 scour equations |
