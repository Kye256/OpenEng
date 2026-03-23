# Cross-Section Design -- UK Module

> **Parent Skill:** #17 Cross-Section Design
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB CD 109 Highway Link Design (Revision 1, March 2020); CD 127 Cross-sections and Headrooms (not available locally)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Document Code | Version | Sections Referenced | Status |
|----------|--------------|---------|---------------------|--------|
| Highway link design | CD 109 | Rev 1 (Mar 2020) | Table 2.3 (carriageway types), Section 5.2 (min gradient) | Current |
| Cross-sections and headrooms | CD 127 | Not available locally | Full cross-section detail | Current -- NOT AVAILABLE for verification |

### M.1.2 Institutional Context

Same as Skill #14 UK module. CD 109 is mandatory for trunk roads (National Highways in England, Transport Scotland, Welsh Government, DfI Northern Ireland). CD 127 provides the detailed cross-section design parameters (lane widths, hard shoulder widths, verge widths, central reserve widths) but is not available locally for verification.

### M.1.3 Standard Philosophy

In the DMRB system, cross-section design is primarily governed by CD 127, not CD 109. CD 109 provides the carriageway type classification (Table 2.3) which determines the basic carriageway configuration, but detailed widths, verges, and headrooms come from CD 127.

This module provides what can be extracted from CD 109 (carriageway types and their widths) and notes the gap where CD 127 is required. For full UK cross-section design, CD 127 must be obtained.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table UKCS.1: CD 109 Table 2.3 -- Carriageway Types (Verified)**

| Road Type Code | Description | Carriageway Width | Notes |
|---------------|-------------|-------------------|-------|
| S2 | Single 2-lane | 6.0 m | Standard single carriageway |
| WS2 | Wide single 2-lane | 7.3 m | Higher-speed single carriageway |
| WS2+1 | Wide single with climbing/overtaking lane | 10.0 m | 3 lanes (2+1 arrangement) |
| D2AP | Dual 2-lane all-purpose | 11.5 m (total both directions) | No hard shoulder |
| D3AP | Dual 3-lane all-purpose | 7.3 m per carriageway | Each carriageway dual |
| D2M | Dual 2-lane motorway | 7.3 m + hard shoulder per carriageway | Includes hard shoulder |
| D3M | Dual 3-lane motorway | 11.0 m + hard shoulder per carriageway | Includes hard shoulder |
| D4M | Dual 4-lane motorway | 14.7 m + hard shoulder per carriageway | Includes hard shoulder |

**Source:** CD 109, Table 2.3 (Verified against uploaded document)

**Minimum gradient:** 0.5% on kerbed roads (CD 109, clause 5.2, verified). This minimum ensures adequate surface water drainage to kerb channels and gullies.

**Verge widths:** CD 109 uses verge widths as a "layout constraint" (Lc) for design speed determination, not as direct design values. Typical verge widths range from 0 m (urban kerbed) to 3.3 m (rural single carriageway). Full verge design requirements are in CD 127.

### M.2.2 Country-Specific Formulas

No cross-section formulas in CD 109 -- carriageway types are selected by classification, not calculated. Width parameters for detailed design come from CD 127.

### M.2.3 Classification System

UK road cross-section types are classified by:
1. **Single vs Dual carriageway** -- determined by traffic flow requirements
2. **All-purpose vs Motorway** -- determined by access control requirements
3. **Number of lanes** -- determined by capacity analysis

The carriageway type code (S2, WS2, D2AP, D3M, etc.) encapsulates the cross-section configuration. This code is the primary input to CD 127 for detailed cross-section dimensions.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Determine carriageway type
  +-- Is this a motorway? --> D2M, D3M, or D4M based on lanes
  +-- Is this a dual all-purpose? --> D2AP or D3AP
  +-- Is this a single carriageway?
        +-- Standard (60 km/h and below) --> S2 (6.0m)
        +-- Higher speed (70+ km/h) --> WS2 (7.3m)
        +-- With climbing/overtaking lane --> WS2+1 (10.0m)

Step 3 (UK): Look up carriageway width
  --> From Table UKCS.1 using carriageway type code

Step 4 (UK): Determine remaining cross-section
  --> REQUIRES CD 127 (not available locally)
  --> For this module: use CD 109 carriageway widths as the primary dimension
  --> Flag that full cross-section design requires CD 127
```

### M.3.2 Professional Judgment (UK-Specific)

**S2 vs WS2 selection is speed-dependent.** The S2 (6.0m) carriageway is adequate for lower-speed roads (typically 60 km/h design speed) but WS2 (7.3m) is standard for higher-speed single carriageways. The additional 1.3m provides significantly better overtaking sight distance and lateral clearance.

**Hard shoulders on motorways serve multiple functions.** They provide emergency stop space, maintenance access, and can be used as "smart motorway" running lanes. Their width (typically 3.3m) is specified in CD 127.

**The 0.5% minimum gradient is critical on kerbed roads.** Without this minimum gradient, surface water pools at low points and creates aquaplaning risk. In flat terrain, this may require the vertical alignment to be designed with an artificial minimum gradient.

### M.3.3 Common Errors (UK-Specific)

1. **Using CD 109 carriageway widths as the complete cross-section.** CD 109 provides carriageway widths only. Full cross-section (verges, central reserve, hard shoulder, footways) requires CD 127.
2. **Assuming UK single carriageway is always 7.3m.** S2 roads are 6.0m. Only WS2 and above are 7.3m+.
3. **Not applying 0.5% minimum gradient on kerbed roads.** This requirement is easily overlooked when the vertical alignment is designed independently of the cross-section.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Normal crossfall | 2.5% | Not specified | WARNING ASSUMED: Normal crossfall 2.5% (UK standard camber) | CD 109 standard |
| Carriageway type | WS2 (7.3m) | Single carriageway, speed not specified | WARNING ASSUMED: WS2 carriageway (verify design speed and CD 127) | Conservative for trunk road |
| Minimum gradient (kerbed) | 0.5% | Kerbed road | WARNING NOTE: Minimum 0.5% gradient required on kerbed roads (CD 109 cl. 5.2) | Drainage requirement |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Carriageway width (S2) | 5.5 | 6.5 | m | CD 109 Table 2.3 | Flag if not 6.0m for S2 |
| Carriageway width (WS2) | 7.0 | 7.6 | m | CD 109 Table 2.3 | Flag if not 7.3m for WS2 |
| Gradient on kerbed road | 0.5 | --- | % | CD 109 cl. 5.2 | Reject if < 0.5% (drainage requirement) |

### M.5.2 Standards Compliance Checks

- **Check:** Carriageway width matches the selected carriageway type from CD 109 Table 2.3
- **Standard:** CD 109, Table 2.3
- **Pass condition:** Width matches the standard for the carriageway type code
- **Fail action:** FLAG -- Carriageway width [X]m does not match standard [Y]m for type [code].

- **Check:** Minimum gradient on kerbed roads
- **Standard:** CD 109, clause 5.2
- **Pass condition:** Gradient >= 0.5% on all kerbed sections
- **Fail action:** SENIOR REVIEW -- Gradient [X]% is below the 0.5% minimum on kerbed road. Drainage failure risk.

### M.5.3 Departures / Relaxations Process

Per GG 101: Departures from "shall" requirements in CD 109 require formal application to the Overseeing Organisation. However, most detailed cross-section requirements are in CD 127, not CD 109. The agent should flag that CD 127 departures may also be needed but cannot assess them without the document.

**Gap flag:** This UK module is based on CD 109 only. Full cross-section design requires CD 127 (Cross-sections and Headrooms), which is not available locally. Engineer review required before finalising any UK cross-section design.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| CD 127 not available for full cross-section | Incomplete standard coverage | NOTE -- CD 127 is required for full UK cross-section design (verge widths, central reserve, hard shoulder). This module covers CD 109 carriageway types only. Obtain CD 127 before detailed design. |
| Gradient below 0.5% on kerbed road | Drainage failure | SENIOR REVIEW -- Gradient [X]% below 0.5% minimum on kerbed road (CD 109 cl. 5.2). Increase gradient or provide alternative drainage. |
| Carriageway type selection unclear | Design speed / flow mismatch | NOTE -- Verify carriageway type selection against traffic capacity analysis and design speed determination from Skill #13. |

---

## M.7 Worked Example -- UK

### Example: S2 Single Carriageway, Determine Carriageway Width

**Given:**
- Road type: All-purpose single carriageway
- Design speed: 60B km/h
- Context: Rural trunk road
- Carriageway type: S2 (determined from traffic flow and access requirements)

**Solution:**

**Step 1 -- Look up carriageway width from Table UKCS.1:**
S2 carriageway width = 6.0 m

**Step 2 -- Determine crossfall:**
Normal crossfall = 2.5% (UK standard)

**Step 3 -- Note limitations:**
Full cross-section (verge widths, verge details, drainage provisions) requires CD 127. From CD 109, we know:
- Carriageway width: 6.0m (2 lanes at 3.0m each -- typical for S2)
- Minimum gradient on kerbed sections: 0.5%
- Verge: exists but width determined by CD 127

**Step 4 -- Note that for higher-speed alternatives:**
If design speed were 100A km/h, WS2 (7.3m) would be the appropriate carriageway type.

**Result:**

| Parameter | Value | Source |
|-----------|-------|--------|
| Carriageway type | S2 | CD 109 Table 2.3 |
| Carriageway width | 6.0 m | CD 109 Table 2.3 |
| Normal crossfall | 2.5% | UK standard |
| Min gradient (kerbed) | 0.5% | CD 109 cl. 5.2 |
| Verge width | Requires CD 127 | Not available |
| Full cross-section | Requires CD 127 | Not available |

**Gap note:** This example can only be completed to carriageway width level. Full cross-section design (verge widths, ditch/drain details, footway requirements) requires CD 127 which is not available locally. Engineer review required.

---

## M.8 References

1. National Highways, *CD 109 Highway Link Design*, Revision 1, March 2020, Table 2.3 and Section 5.2.
2. National Highways, *CD 127 Cross-sections and Headrooms* -- referenced but NOT available locally for verification.
3. National Highways, *GG 101 Introduction to the Design Manual for Roads and Bridges*, Version 0.1.0, September 2021, Section 2 (Departures).

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- CD 109 Table 2.3 carriageway types verified against PDF. CD 127 gap noted. Minimum gradient requirement (0.5%) from clause 5.2 included. |
