# Intersection & Junction Design -- UK Module

> **Parent Skill:** #19 Intersection & Junction Design
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 116 (Roundabouts), CD 122 (Grade Separated), CD 123 (At-Grade Priority and Signal)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

**IMPORTANT: This UK module is drafted from knowledge. No local DMRB junction design documents (CD 116, CD 122, CD 123) are available for verification. All values should be treated as indicative and require engineer review before use in design.**

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Sections Referenced | Status |
|----------|--------------|---------------------|--------|
| Geometric design of roundabouts | CD 116 | Roundabout geometry, entry width, ICD | Current -- NOT available locally |
| Geometric design of grade separated junctions | CD 122 | Interchange layout | Current -- NOT available locally |
| Geometric design of at-grade priority and signal controlled junctions | CD 123 | Priority junction geometry, visibility | Current -- NOT available locally |
| Highway link design | CD 109 | Cl. 2.13 -- visibility on approaches to junctions | Current -- available locally |

### M.1.2 Institutional Context

Junction design on trunk roads in England is governed by National Highways through the DMRB. CD 123 covers at-grade priority and signalised junctions; CD 116 covers roundabouts; CD 122 covers grade-separated junctions. Local authority roads may use different guidance (Manual for Streets for urban roads) but often follow DMRB principles.

### M.1.3 Standard Philosophy

DMRB junction design documents use a requirements-based approach with mandatory "shall" clauses and advisory "should" clauses. The departures process (GG 101) applies to all non-compliance with mandatory requirements. Visibility requirements at junctions are linked to the design speed of the main road and are generally more stringent than link visibility because of the conflict nature of junctions.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Visibility at Junctions (from knowledge -- CD 109 cl. 2.13):**

CD 109, clause 2.13 states that no relaxations from the desirable minimum SSD shall be permitted on the immediate approaches to at-grade junctions. This means the full desirable minimum SSD from CD 109 Table 2.10 must be provided:

| Design Speed (km/h) | 120 | 100 | 85 | 70 | 60 | 50 |
|---------------------|-----|-----|-----|-----|-----|-----|
| Desirable min SSD (m) | 295 | 215 | 160 | 120 | 90 | 70 |

**Source:** CD 109 Table 2.10 (verified from local document). No relaxations on junction approaches.

**Roundabout Geometry (from knowledge -- CD 116):**

| Parameter | Typical Range | Notes |
|-----------|--------------|-------|
| Inscribed Circle Diameter (ICD) | 28-100 m (normal), 15-28 m (compact) | Depends on design vehicle and speed |
| Entry width | 4.0-15.0 m | Varies by number of entry lanes |
| Entry angle | 20-60 degrees | Affects capacity and safety |
| Approach half-width | 3.65-7.3 m | Per approach lanes |
| Central island radius | Varies with ICD | ICD minus 2 x circulating carriageway width |
| Circulating carriageway width | 1.0-1.2 x max entry width | Must accommodate design vehicle |

**Note:** These are approximate values from knowledge. CD 116 provides detailed geometric design requirements that are not available for verification.

**Signal Junction Guidance (from knowledge -- CD 123):**

- Signal-controlled junctions: geometry must accommodate swept paths of the design vehicle through all permitted movements
- Intergreen periods based on junction geometry and approach speeds
- Pedestrian stages: minimum green man period based on crossing distance and walking speed (1.2 m/s)

### M.2.2 Country-Specific Formulas

**UK visibility at priority junctions** follows a different approach from MoWT. DMRB uses the "x-distance" (setback from the major road edge) and "y-distance" (visibility along the major road). The y-distance is related to the SSD at the design speed. Typical x-distances are 2.4 m (stop condition) and 4.5 m (cars below kerb) or 9.0 m (approach condition at uncontrolled crossroads).

**Note:** Exact x-distance and y-distance values are in CD 123, which is not available locally. The values above are from knowledge and should be verified.

### M.2.3 Junction Type Selection (UK)

UK practice classifies junctions as:
- **Simple priority (T or staggered):** Low to moderate minor road flows
- **Ghost island priority:** Right-turn lane provided using road markings (no physical island)
- **Single-lane dualling:** Physical central reservation through junction
- **Roundabout:** Moderate to high flows, good for balanced approach flows
- **Signalised:** High flows, complex movements, or where roundabout is not feasible

The choice depends on approach flows, turning movements, and the strategic importance of the junction. DMRB provides junction assessment guidance, but detailed capacity analysis uses ARCADY (roundabouts), PICADY (priority), or LinSig (signals).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Select junction type
  |-- Low minor road flows, rural --> Simple priority T or ghost island
  |-- Moderate flows, balanced approaches --> Roundabout (CD 116)
  |-- High flows or complex movements --> Signalised (CD 123)
  |-- Trunk road junction --> Typically roundabout or grade-separated
  +-- Note: Capacity analysis required for final type selection

Step 4 (UK): Visibility at junction
  |-- No relaxation from desirable minimum SSD on junction approaches (CD 109 cl. 2.13)
  |-- x-distance and y-distance per CD 123 (not available locally)
  +-- Use desirable minimum SSD from CD 109 Table 2.10 as the y-distance
```

### M.3.2 Professional Judgment (UK-Specific)

**Ghost island junctions** are common on UK single carriageway roads. They provide a right-turn lane using road markings and hatching without physical islands. This is a cost-effective way to protect right-turning traffic on roads where a full channelised junction is not warranted.

**Roundabout deflection** is critical for safety. A roundabout that does not provide adequate deflection of the entry path allows vehicles to traverse at excessive speed, negating the safety benefit. The deflection check is a mandatory part of CD 116 design.

**Mini-roundabouts** (ICD < 28 m) are used in constrained urban areas. They rely on road markings rather than a physical central island and are only appropriate for speeds below about 50 km/h.

### M.3.3 Common Errors (UK-Specific)

1. **Permitting SSD relaxation on junction approaches.** CD 109 cl. 2.13 is clear: no relaxations on the immediate approach to an at-grade junction. This is a mandatory requirement.
2. **Designing a roundabout without checking deflection.** A roundabout without adequate deflection is less safe than a priority junction.
3. **Using DMRB junction standards for non-trunk roads without adaptation.** Local authority roads may use Manual for Streets, which has different (generally more urban-friendly) visibility requirements.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Visibility (y-distance) | Desirable minimum SSD from CD 109 Table 2.10 | Junction approach | WARNING ASSUMED: Using desirable min SSD as visibility requirement per CD 109 cl. 2.13. | No relaxation permitted on junction approaches |
| x-distance (stop) | 2.4 m | Stop-controlled junction | WARNING ASSUMED: x-distance 2.4 m from knowledge. Verify against CD 123. | Standard stop line setback (from knowledge) |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Visibility on junction approach | Desirable min SSD per CD 109 Table 2.10 | -- | m | CD 109 cl. 2.13 | Reject -- no relaxation permitted |
| Roundabout ICD | 15 | 100 | m | CD 116 (knowledge) | Warn if outside normal range |

### M.5.2 Standards Compliance Checks

- **Check:** Visibility on approach to junction meets desirable minimum SSD
- **Standard:** CD 109, clause 2.13
- **Pass condition:** Visibility >= desirable minimum SSD from Table 2.10
- **Fail action:** SENIOR REVIEW -- Departure from Standards required. No relaxation permitted on junction approaches.

### M.5.3 Departures / Relaxations Process

**This UK module is drafted from knowledge. No local DMRB junction design documents (CD 116, CD 122, CD 123) are available for verification. Engineer review is required before using this module for design purposes.**

Per GG 101: Non-compliance with mandatory ("shall") requirements in CD 116, CD 122, or CD 123 requires a formal Departure application to the Overseeing Organisation. Non-compliance with advisory ("should") clauses requires documented justification with safety risk assessment.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Any junction design using this UK module | Module is knowledge-based, not verified | NOTE -- UK junction design module is drafted from knowledge. No local CD 116/CD 122/CD 123 available. Engineer review required before use. |
| SSD relaxation proposed on junction approach | Mandatory requirement violated | SENIOR REVIEW -- CD 109 cl. 2.13 prohibits SSD relaxation on junction approaches. Departure from Standards required. |

---

## M.7 Worked Example -- UK

### Example: Priority Junction on a 60A km/h Road

**Given:**
- Road type: All-purpose single carriageway, rural, 60A km/h design speed
- Junction type: Simple priority T-junction
- Minor road: Low traffic, stop-controlled

**Step 1 -- Visibility requirement:**
CD 109 cl. 2.13: No relaxation on junction approaches.
Desirable minimum SSD at 60 km/h = **90 m** (from CD 109 Table 2.10).

The y-distance (visibility along the major road) must be at least 90 m from the minor road approach.

**Step 2 -- Setback (x-distance):**
For a stop-controlled junction, the x-distance is typically 2.4 m (from knowledge -- verify against CD 123).

**Step 3 -- Assessment:**
The driver at the stop line on the minor road (2.4 m back from the major road edge) must be able to see at least 90 m in both directions along the major road. Any obstruction (hedges, walls, embankments) within this visibility envelope must be removed or set back.

**Result:**

| Parameter | Value | Source |
|-----------|-------|--------|
| Design speed | 60A km/h | |
| Required y-distance | 90 m | CD 109 Table 2.10 |
| x-distance | 2.4 m | From knowledge -- verify against CD 123 |
| Relaxation | Not permitted | CD 109 cl. 2.13 |
| Module confidence | Knowledge-based -- engineer review required | |

**Note:** This example uses CD 109 visibility requirements only. Full junction design per CD 123 requires additional parameters not available in this module.

---

## M.8 References

1. National Highways, *CD 109 Highway Link Design*, Revision 1, March 2020, clause 2.13 (visibility on approaches to junctions).
2. National Highways, *CD 116 Geometric design of roundabouts* -- referenced but NOT available locally.
3. National Highways, *CD 123 Geometric design of at-grade priority and signal controlled junctions* -- referenced but NOT available locally.
4. National Highways, *GG 101 Introduction to the Design Manual for Roads and Bridges*, Version 0.1.0, September 2021, Section 2 (Departures).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- knowledge-based module. CD 109 cl. 2.13 verified from local document. All CD 116/CD 122/CD 123 content from knowledge only. |
