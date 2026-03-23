# Material Testing Interpretation -- UK Module

> **Parent Skill:** #9 Material Testing Interpretation
> **Country/Jurisdiction:** United Kingdom
> **Standards:** DMRB, Specification for Highway Works (SHW), BS 1377, BS EN 13286
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

*(Drafted from general DMRB knowledge -- verify against current SHW Series 600 and 800 before use in production)*

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| BS 1377 | 1990 (Parts 1-9) | Soil testing methods (classification, compaction, CBR, Atterberg limits, grading) | Current (partially superseded by BS EN) |
| BS EN 13286 | Various parts | Unbound and hydraulically bound mixtures -- test methods | Current |
| DMRB CD 225 | Current | Design for new pavement foundations | Current |
| SHW Series 600 | Current | Earthworks -- material specifications | Current |
| SHW Series 800 | Current | Road pavements -- unbound, cement and other hydraulically bound mixtures | Current |
| TRL Report 615 | 2004 | Development of new road foundation design guidance | Reference |

### M.1.2 Institutional Context

Material testing in the UK follows BS 1377 and BS EN standards. Highways England (National Highways) mandates SHW compliance for trunk roads and motorways. Local authorities generally follow SHW for consistency but may accept alternative specifications. The Highways Agency Pavement Design Guide and DMRB CD 225 govern foundation design, using equilibrium suction index and stiffness-based approaches rather than the CBR-catalogue method used in tropical countries.

### M.1.3 Standard Philosophy

The UK approach to material testing is requirements-based ("shall" clauses in SHW) with a formal departures process. Material acceptability is defined by:
- Classification (SHW Table 6/1 for acceptable earthworks materials)
- Compaction requirements (SHW Series 600)
- CBR or stiffness for foundation design (CD 225)
- Grading and plasticity limits for unbound mixtures (SHW Series 800)

The UK increasingly uses stiffness modulus (from plate loading tests or FWD) alongside CBR for foundation design.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**SHW Series 600 -- Earthworks Material Classification (simplified):**

| Class | Material | Typical Use | Key Requirements |
|-------|----------|-------------|-----------------|
| 1A-1C | Granular fill | General fill | Grading limits per Table 6/1 |
| 2A-2E | Cohesive fill | General fill | MC limits, MCV requirements |
| 6F1-6F5 | Selected fill | Capping | CBR, grading, PI requirements |
| 6I/6J | Stabilised capping | Foundation | Strength, durability |

**SHW Series 800 -- Unbound Mixtures (simplified):**

| Type | Description | Key Requirements |
|------|-------------|-----------------|
| Type 1 | Sub-base (crushed rock/slag) | Grading, 10% fines value > 50 kN, LS < 5 |
| Type 2 | Sub-base (wider grading) | Grading, 10% fines value > 50 kN |
| Type 3 | Sub-base (cement bound) | UCS requirements |
| Type 4 | Sub-base (recycled) | Grading, CBR > 30% |

**CBR requirements for foundation classes (CD 225 / IAN 73):**

| Foundation Class | Design CBR | Stiffness | Typical Use |
|------------------|-----------|-----------|-------------|
| Class 1 | < 2% | < 25 MPa | Weak subgrade -- requires capping |
| Class 2 | 2-5% | 25-50 MPa | Medium subgrade |
| Class 3 | 5-15% | 50-100 MPa | Good subgrade |
| Class 4 | > 15% | > 100 MPa | Strong subgrade -- no capping needed |

### M.2.2 Country-Specific Formulas

**Equilibrium suction index CBR (TRL 615):**

The UK uses the concept of equilibrium CBR, which is the long-term in-situ CBR that develops under a sealed pavement. This is typically higher than the soaked CBR used in tropical design. The equilibrium CBR depends on plasticity index and water table depth, and is estimated from published charts (DMRB / TRL 615). The agent should flag that the equilibrium CBR approach differs significantly from the 4-day soaked approach used in Africa.

**Moisture Condition Value (MCV):**

```
MCV is determined from the compaction test per BS 1377: Part 4: 1990
```

MCV is used in the UK for earthworks control (SHW Clause 612/613) as an alternative to moisture content limits. Higher MCV indicates drier, stiffer material.

### M.2.3 Classification System

UK material classification for earthworks follows SHW Table 6/1, which classifies materials into Classes 1-9 based on material type, grading, and plasticity. This is distinct from the AASHTO or USCS classification used elsewhere. For pavement foundation design, subgrade is classified by CBR or stiffness modulus into foundation classes (CD 225).

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 3a (UK): Material acceptability
  |-- Classify material per SHW Table 6/1
  |-- Check compaction requirements per SHW Clause 612
  |-- For sub-base: check against SHW Series 800 Type 1/2/3/4 specs
  |-- For capping: check against SHW Class 6F specifications
  +-- For subgrade: estimate equilibrium CBR per CD 225

Step 4a (UK): Foundation design
  |-- Determine equilibrium CBR from PI and water table
  |-- Assign foundation class (1-4)
  |-- Select foundation treatment per CD 225 design charts
  +-- Note: UK uses stiffness (MPa) alongside CBR
```

### M.3.2 Professional Judgment (UK-Specific)

**Equilibrium CBR is typically higher than soaked CBR.** UK practice uses equilibrium conditions under a sealed pavement rather than worst-case soaked conditions. This can result in significantly different design outcomes compared to tropical practice.

**Moisture Condition Value (MCV) is widely used in the UK** for earthworks acceptance control, particularly for cohesive soils. It provides a rapid site assessment of material suitability without requiring oven-drying.

**UK sub-base specifications focus on stiffness and durability** as much as CBR. The 10% fines value (aggregate crushing value) is critical for Type 1 sub-base -- a requirement not typically used in African road design.

### M.3.3 Common Errors (UK-Specific)

1. **Applying tropical soaked CBR design to UK conditions.** UK equilibrium CBR is the appropriate design value, not 4-day soaked CBR.
2. **Confusing SHW material classes with AASHTO/USCS classes.** They are different systems.
3. **Ignoring frost susceptibility.** UK subgrade frost susceptibility must be checked per CD 225 -- not relevant in tropical countries.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| CBR type | Equilibrium CBR | Not specified | ASSUMED: Equilibrium CBR per CD 225 -- not soaked CBR | UK foundation design practice |
| Compaction standard | BS 1377 Part 4 | Not specified | ASSUMED: BS 1377 compaction | UK test standard |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| CBR for Type 1 sub-base | 30 | -- | % | SHW Clause 803 | Fail -- does not meet sub-base specification |
| CBR for capping (Class 6F2) | 15 | -- | % | SHW Clause 613 | Fail -- does not meet capping specification |
| 10% fines value (Type 1 sub-base) | 50 | -- | kN | SHW Clause 803 | Fail -- aggregate too weak |

### M.5.2 Standards Compliance Checks

- **Check:** Material grading within SHW envelope.
- **Standard:** SHW Table 8/3 (Type 1 sub-base).
- **Pass condition:** All sieve fractions within specified limits.
- **Fail action:** Material does not comply with SHW grading. Consider Type 2 or recycled Type 4.

### M.5.3 Departures / Relaxations Process

National Highways has a formal Departures from Standards process. Any deviation from SHW requirements on trunk road projects must be submitted as a formal departure application, assessed by the overseeing organisation. Local authority projects may have less formal processes but departures should still be documented.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Subgrade CBR < 2% | Foundation Class 1 -- weak subgrade | SENIOR REVIEW -- Very weak subgrade. Capping layer required per CD 225. Consider stabilisation or increased capping thickness. |
| Frost-susceptible subgrade | Risk of frost heave damage | SENIOR REVIEW -- Subgrade is frost-susceptible. Check frost penetration depth and provide frost-resistant foundation per CD 225. |
| Type 1 sub-base fails 10% fines test | Aggregate too soft | SENIOR REVIEW -- Material fails 10% fines value test ([X] kN < 50 kN). Not suitable as Type 1 sub-base. Consider Type 2 or alternative source. |

---

## M.7 Worked Example -- UK

### Example: Interpret Lab Results for a UK Road Improvement

**Source:** Hypothetical, based on typical UK practice.

**Given:**
- Project: A429 Stow-on-the-Wold road improvement, Gloucestershire
- Material: Subgrade samples from trial pits
- 4 samples tested:

| Sample | CBR (equil.) | LL (%) | PL (%) | PI (%) | MCV | Soil Description |
|--------|-------------|--------|--------|--------|-----|-----------------|
| TP1 | 4.5 | 48 | 22 | 26 | 9 | Firm brown clay |
| TP2 | 3.2 | 55 | 24 | 31 | 7 | Stiff grey clay |
| TP3 | 8.0 | 35 | 19 | 16 | 12 | Sandy clay |
| TP4 | 6.5 | 42 | 21 | 21 | 10 | Firm brown clay |

**Solution:**

**Step 1: Subgrade classification per CD 225**
- TP1 (CBR 4.5%): Foundation Class 2 (2-5% range)
- TP2 (CBR 3.2%): Foundation Class 2
- TP3 (CBR 8.0%): Foundation Class 3 (5-15% range)
- TP4 (CBR 6.5%): Foundation Class 3

**Step 2: Design CBR selection**
- Use the lower bound approach. Design CBR should represent the weakest realistic condition.
- Lower quartile CBR = approximately 3.5% -> Foundation Class 2.
- Capping layer required to bring foundation to required stiffness.

**Step 3: Frost susceptibility check**
- PI > 15 for all samples. Check frost susceptibility per CD 225 Table 3.1.
- Clays with PI > 15 are generally non-frost-susceptible (they have low permeability preventing ice lens formation).

**Result:** Foundation Class 2. Capping layer required (minimum 600 mm Class 6F2 or equivalent). Sub-base Type 1 or Type 2 above capping. No frost susceptibility concern.

---

## M.8 References

1. Highways England (National Highways), *Design Manual for Roads and Bridges*, CD 225: Design for new pavement foundations.
2. Highways England, *Manual of Contract Documents for Highway Works, Volume 1: Specification for Highway Works* (SHW), Series 600 and 800.
3. British Standards Institution, *BS 1377: Methods of test for soils for civil engineering purposes*, Parts 1-9, 1990.
4. TRL, *Report 615: Development of new road foundation design guidance and its implementation*, 2004.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft -- general DMRB/SHW knowledge, verify against current documents |
