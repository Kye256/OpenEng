# Pavement Rehabilitation -- Uganda Module

> **Parent Skill:** #25 Pavement Rehabilitation
> **Country/Jurisdiction:** Uganda
> **Standards:** MoWT Road Design Manual Vol 3 Part IV (2010)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| MoWT Road Design Manual Vol 3 Part IV: Pavement Rehabilitation | January 2010 | Sections 3-6, Appendices A-F | Current |

### M.1.2 Institutional Context

MoWT Vol 3 Part IV provides guidance for rehabilitation of existing paved roads. It is closely based on TRL ORN 31 and AASHTO rehabilitation procedures. UNRA uses this manual for rehabilitation design on the national road network.

### M.1.3 Standard Philosophy

The manual provides two overlay design procedures: (1) deflection procedure using Benkelman beam data, and (2) effective analysis procedure using visual condition and DCP data. Both calculate the SN deficit that the overlay must provide.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Table 2.1: Condition vs IRI (Verified against PDF p2-1)**

| IRI Range | Condition |
|-----------|-----------|
| < 6 | Very good |
| 6-11 | Good |
| 11-15 | Fair |
| 15-19 | Poor |
| > 19 | Very poor |

**Damage Quantifiers (Section 3.2):**
- Cracking: measured as % of road surface area
- Rutting: maximum depth in mm (straight edge measurement)
- Patching: % of area with patches
- Ravelling: loss of aggregate from surface

**Overlay Design (Section 4):**
- Deflection procedure (Section 4.1.2): uses Benkelman beam deflection data
- Effective analysis procedure (Section 4.1.3): uses visual condition + DCP

--> Full design tables: `tables/uganda_overlay_design.json`

**Overlay Thickness Formula:**
```
h_overlay (mm) = (SN_new - SN_eff) / a1 * 25.4
```
Where a1 = 0.35 for AC overlay (from MoWT Table 5.2).

**Effective SN from deflection (Appendix F methodology):**
The effective SN is derived from the measured deflection using correlations that account for subgrade strength, pavement temperature, and load magnitude.

### M.2.2 Country-Specific Formulas

**Representative Rebound Deflection:**
```
RRD = mean deflection + 2 * standard deviation
```

**SN_eff from condition factors (effective analysis procedure):**
```
SN_eff = sum(a_i * h_i * CF_i)
```
Where CF_i is the condition factor for each layer:
- Good condition: CF = 1.0
- Fair condition: CF = 0.75
- Poor condition: CF = 0.50
- Failed: CF = 0.0

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Uganda Branch)

**Benkelman beam is standard in Uganda.** Most UNRA deflection surveys use Benkelman beam equipment. FWD is occasionally used on major projects but is not widely available.

**Visual + DCP assessment is often the only data available.** For many rehabilitation projects, particularly on district roads, deflection data is not available. The effective analysis procedure (Section 4.1.3) is particularly valuable in this context.

### M.3.2 Professional Judgment (Uganda-Specific)

**Many Uganda trunk roads were built in the 1960s-1970s and have experienced significant deterioration.** The original pavement structures were often thin by modern standards. Rehabilitation frequently involves substantial overlay or reconstruction.

**Drainage improvement must accompany rehabilitation.** Many pavement failures in Uganda are drainage-related. Overlaying without addressing drainage will result in premature failure of the rehabilitation.

**In Uganda, visual condition + deflection combined assessment is the standard practice.** Engineers typically use both data sources for rehabilitation design.

### M.3.3 Common Errors (Uganda-Specific)

1. **Designing overlay without assessing drainage condition.** If the failure is drainage-related, overlay alone will not solve the problem.
2. **Not correcting deflections for temperature.** Uganda pavement temperatures (30-50 C) significantly affect deflection readings. Must correct to 35 C reference.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Deflection reference temp | 35 C | Not specified | No flag | MoWT standard |
| Overlay coefficient a1 | 0.35 | AC overlay | No flag | Table 5.2 |
| Design life (overlay) | 10 years | Not specified | ASSUMED: 10-year overlay design life | Common Uganda practice |

---

## M.5 Country-Specific Validation

### M.5.1 Standards Compliance Checks

- **Check:** Deflection corrected to 35 C reference temperature
- **Check:** RRD calculated (mean + 2*SD), not just mean deflection
- **Check:** SN_new from AASHTO equation or Appendix E
- **Check:** Pre-overlay repairs specified before overlay design

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Deflection > 2.0 mm | Structural failure | SENIOR REVIEW -- Investigate subgrade condition. Reconstruction may be needed. |
| Cracking > 40% with rutting > 25 mm | Severe combined distress | SENIOR REVIEW -- Reconstruction recommended over overlay. |
| No deflection data for trunk road | Reduced reliability | SENIOR REVIEW -- Recommend Benkelman beam survey before rehabilitation design. |

---

## M.7 Worked Example -- Uganda

### Example 1: Deflection Procedure -- Trunk Road Overlay

**Given:**
- 10-year-old Class I trunk road
- Design traffic for next 10 years: 5M ESAs
- Visual: cracking 15% of area, rutting 12 mm, IRI = 13 (fair)
- Mean deflection: 0.8 mm (Benkelman beam, corrected to 35 C)
- Std deviation: 0.2 mm
- Original SN: 3.5

**Solution:**

**Step 1 -- Condition assessment:**
- IRI 13: Fair condition -- rehabilitation appropriate
- Cracking 15%: below 40% trigger
- Rutting 12 mm: below 25 mm trigger
- No reconstruction triggers -- overlay is appropriate

**Step 2 -- Calculate RRD:**
RRD = 0.8 + 2 * 0.2 = 1.2 mm

**Step 3 -- Determine SN_new for 5M ESAs:**
From Appendix E (using AASHTO equation with R=90%, S0=0.45, CBR=8%, pt=2.5):
SN_new approximately 3.6

**Step 4 -- Determine SN_eff from deflection:**
Using Appendix F methodology with RRD = 1.2 mm:
SN_eff approximately 2.8 (pavement has lost structural capacity from original 3.5)

**Step 5 -- Calculate overlay thickness:**
h_overlay = (3.6 - 2.8) / 0.35 * 25.4 = 58 mm
Round to 60 mm AC14 overlay.

**Result:** 60 mm AC14 overlay with pre-overlay repairs (patch potholes, seal cracks, level depressions with levelling course).

### Example 2: Effective Analysis Procedure -- No Deflection Data

**Given:**
- District road, no deflection data available
- DCP shows base CBR approximately 50% (fair condition)
- Existing structure: 40 mm surface dressing, 150 mm natural gravel base, 125 mm subbase
- Visual: cracking 20%, rutting 15 mm

**Solution:**

**Step 1 -- Assign condition factors:**
- Surface dressing: fair condition (CF = 0.75) -- cracking present
- Base: fair condition (CF = 0.75) -- CBR 50% vs original 80%
- Subbase: good condition (CF = 1.0) -- DCP shows adequate

**Step 2 -- Calculate SN_eff:**
SN_eff = 0.20*40/25.4*0.75 + 0.12*150/25.4*0.75 + 0.11*125/25.4*1.0
SN_eff = 0.24 + 0.53 + 0.54 = 1.31

**Step 3 -- SN_new for design traffic:**
SN_new = 2.5 (for district road traffic and subgrade)

**Step 4 -- Overlay thickness:**
h_overlay = (2.5 - 1.31) / 0.35 * 25.4 = 86 mm
Round to 90 mm (or 50 mm levelling + 40 mm wearing).

---

## M.8 References

1. MoWT, *Road Design Manual Vol 3 Part IV: Pavement Rehabilitation*, January 2010.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft -- Table 2.1, deflection and effective analysis procedures from Part IV |
