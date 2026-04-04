# Cross-Section Design -- Kenya Module

> **Parent Skill:** #17 Cross-Section Design
> **Country/Jurisdiction:** Kenya
> **Standards:** Kenya Road Design Manual RDM 1.3: Geometric Design of Highways, Rural Roads and Urban Roads (2025)
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** --

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| Kenya Road Design Manual RDM 1.3 | 2025 | Chapter 4 (Cross Section), Chapters 14-17 (Design Catalogues) | Current -- mandatory for all classified roads in Kenya |

### M.1.2 Institutional Context

Same as Skill #13 Kenya module -- Kenya RDM is the mandatory standard. Departures require Chief Engineer for Roads approval (Section 1.7).

### M.1.3 Standard Philosophy

Kenya RDM 1.3 provides 9 standard rural cross-sections (R1-R9) and 9 standard urban cross-sections (U1-U9). The cross-section is selected based on the design standard (DR1-DR7 for rural, DU1-DU6 for urban) which maps to the functional class and traffic volume. Lane widths range from 3.00 m (Class E/local roads) to 3.75 m (urban arterials), with the standard for Class A/B inter-urban roads being 3.65 m. This is wider than Uganda's standard (3.5 m for Class Ia/Ib).

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**Cross-section parameters:** Reference JSON table for full data.

--> `tables/kenya_cross_sections.json`

Contains lane widths (Table 4.1), shoulder widths (Table 4.2), rural cross-sections R1-R9 (Table 4.23), and urban cross-sections U1-U9 (Table 4.24).

**Table KC.1: Lane Widths by Road Class (Table 4.1, RDM 1.3)**

| Road Category | Road Class | Lane Width (m) |
|--------------|-----------|----------------|
| Inter-urban | A | 3.65 |
| Inter-urban | B | 3.65 |
| Inter-urban | C | 3.50 |
| Rural | D | 3.50 |
| Rural | E | 3.25-3.50 |
| Rural local | F, G, P, R, S, T, U, W | 3.00-3.50 |
| Urban | UA | 3.75 |
| Urban | UC | 3.75 |
| Urban | UL | 3.00-3.50 |

**Source:** Kenya RDM 1.3, Table 4.1 (Verified from PDF)

**Table KC.2: Shoulder Widths by Road Class (Table 4.2, RDM 1.3)**

| Road Category | Road Class | Shoulder Width (m) |
|--------------|-----------|-------------------|
| Inter-urban | A | 2.7 |
| Inter-urban | B | 2.7 |
| Inter-urban | C | 2.0 |
| Rural | D | 1.5 |
| Rural | E | 1.0 |
| Rural local | F-W | 1.0 |
| Urban | UA | 1.0-1.5 |
| Urban | UC | 1.0-1.5 |
| Urban | UL | 1.0-1.5 |

**Source:** Kenya RDM 1.3, Table 4.2 (Verified from PDF)

**Table KC.3: Crossfall Requirements (Section 4.3.4, Table 4.3)**

| Surface | Crossfall (%) |
|---------|--------------|
| Bituminous pavement | 2.5 |
| Gravel pavement | 4.0 |
| Earth surface | 5.0 |
| Shoulders (all) | 4.0 |

**Source:** Kenya RDM 1.3, Section 4.3.4 and Table 4.3 (Verified from PDF)

**Table KC.4: Expressway (DR1) Cross-Section -- Class A with Full Access Control**

Cross-section R1 (expressway standard):
- 4-carriageway (2 carriageways per direction with frontage road)
- Lane width: 3.65 m per lane
- Inner shoulder: 1.50 m
- Outer shoulder: 2.70 m
- Central median: 2.00 m
- Outer separator: 2.00 m
- Frontage road MT lane: 2 x 3.25 m
- Full access control

**Table KC.5: Urban Cross-Section Summary**

| Cross-Section | Design Standard | Carriageways | Lane Width (m) | Walkway (m) | Cycle Track (m) | Parking Bay (m) |
|---------------|----------------|-------------|---------------|------------|----------------|----------------|
| U1 | DU1 | 4 | 3.65 | 2.0 | 2.0 | 3.50 |
| U2 | DU1 | 4 | 3.65 | 2.0 | 2.0 | 3.50 |
| U3 | DU2 | 3 | 3.65 | 3.0 | -- | 3.50 |
| U4 | DU3 | 2 | 3.50 | 3.0 | -- | -- |
| U5 | DU4 | 1 | 3.50 | 3.0 | -- | 3.50 |
| U6 | DU5 | 1 | 3.65 | 3.0 | 2.0 | -- |
| U7 | DU5 | 1 | 3.65 | 3.0 | 3.0 | -- |
| U8 | DU6 | -- | -- | 3.0 | 3.0 | -- |
| U9 | DU6 | -- | -- | 3.0 | -- | -- |

**Source:** Kenya RDM 1.3, Table 4.24 (Verified from PDF)

### M.2.2 Country-Specific Formulas

No Kenya-specific formulas for cross-section beyond the universal widening formulas (Table 4.15, Table 4.16). Cross-section selection is table-driven from the design standard mapping.

### M.2.3 Key Differences from Uganda

- Kenya lane widths are wider: 3.65 m for Class A/B (vs 3.5 m in Uganda Ia/Ib)
- Kenya urban roads use 3.75 m lanes (vs 3.5 m in Uganda urban)
- Kenya has 9 cross-section types each for rural and urban (vs fewer categories in Uganda)
- Kenya includes motorcycle lanes (Section 4.7) and cycle tracks as standard elements in urban cross-sections
- Kenya crossfall for paved roads is 2.5% (same as Uganda paved)

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (Kenya Branch)

```
Step 2 (Kenya): Select cross-section
  +-- Determine design standard (DR1-DR7 or DU1-DU6) from Skill #13
  +-- Map design standard to cross-section type:
  |     +-- DR1 -> R1, R2 (expressway)
  |     +-- DR2 -> R3, R4
  |     +-- DR3 -> R4, R5
  |     +-- DR4 -> R5, R6
  |     +-- DR5 -> R6, R7
  |     +-- DR6 -> R7, R8
  |     +-- DR7 -> R8, R9
  |     +-- DU1 -> U1, U2
  |     +-- DU2 -> U2, U3
  |     +-- DU3 -> U3, U4
  |     +-- DU4 -> U4, U5
  |     +-- DU5 -> U5, U6
  |     +-- DU6 -> U6
  \-- Check Tables 4.23/4.24 for specific dimensions
```

### M.3.2 Professional Judgment (Kenya-Specific)

**Kenya cross-sections are more generous than Uganda.** Class A/B roads use 3.65 m lanes vs Uganda's 3.5 m. This reflects Kenya's higher truck volumes and expressway provision. Urban roads in Kenya use 3.75 m lanes to accommodate buses and matatus.

**Urban cross-sections include NMT elements by default.** U1-U3 include cycle tracks and walkways as standard. Even U6-U9 include walkways. This reflects Kenya RDM's emphasis on NMT provision.

**Motorcycle lanes are a Kenya innovation.** Section 4.7 provides specific warrants and dimensions for motorcycle (boda-boda) lanes on UA and UC roads. This is not found in Uganda's MoWT manual.

### M.3.3 Common Errors (Kenya-Specific)

1. **Using Uganda cross-section widths for Kenya roads.** Kenya lane widths differ from Uganda. Always use Table 4.1 for Kenya.
2. **Omitting NMT elements from urban cross-sections.** Kenya RDM requires walkways on all arterial and collector roads. Do not omit these.
3. **Not providing for expressway cross-section (R1/R2).** DR1 standard requires divided carriageway with central median, inner and outer shoulders, and full access control.

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Crossfall (paved) | 2.5% | Not specified | ASSUMED: 2.5% crossfall for paved road | RDM 1.3, Section 4.3.4 |
| Crossfall (gravel) | 4.0% | Not specified, gravel | ASSUMED: 4.0% crossfall for gravel road | RDM 1.3, Section 4.3.4 |
| Shoulder crossfall | 4.0% | Not specified | ASSUMED: 4.0% shoulder crossfall | RDM 1.3, Table 4.3 |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| Lane width (Class A/B) | 3.65 | 3.65 | m | RDM 1.3, Table 4.1 | Warn if different from 3.65 m |
| Lane width (Class C/D) | 3.50 | 3.50 | m | RDM 1.3, Table 4.1 | Warn if different from 3.50 m |
| Shoulder width (Class A/B) | 2.7 | 2.7 | m | RDM 1.3, Table 4.2 | Warn if different from 2.7 m |

### M.5.2 Standards Compliance Checks

- **Check:** Cross-section matches the design standard for the road
- **Standard:** RDM 1.3, Tables 4.23, 4.24
- **Pass condition:** Cross-section type matches design standard mapping
- **Fail action:** Warn -- cross-section [X] does not match design standard [DR/DU].

### M.5.3 Departures / Relaxations Process

Same formal departures process as other Kenya modules (Section 1.7).

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Lane width below minimum for class | Safety and operational concern | SENIOR REVIEW -- Lane width [X]m below standard [Y]m for Class [Z]. |
| NMT elements omitted from urban cross-section | Non-compliance with RDM | SENIOR REVIEW -- Walkway/cycle track omitted from urban cross-section. Required per RDM 1.3. |
| Expressway without median | Safety-critical deficiency | SENIOR REVIEW -- DR1 standard requires divided carriageway with central median. |

---

## M.7 Worked Example -- Kenya

### Example: Cross-Section for Class C Road, Rural

**Given:**
- Road: Class C (KeNHA/KeRRA inter-county road)
- Design Standard: DR3 (AADT 2000-4000)
- Terrain: Rolling
- Context: Rural

**Solution:**

From Table 4.23 (kenya_cross_sections.json): DR3 maps to R4 or R5 cross-section.

Select R5 for the lower end of DR3 range:
- Surface: Paved
- Carriageways: 1 (single)
- Lanes: 2-way
- Lane width: 3.50 m (Table 4.1, Class C)
- Shoulder width: 2.00 m (Table 4.2, Class C)
- Crossfall: 2.5% (paved)
- Shoulder crossfall: 4.0%
- Access control: Partial

**Result:**

| Parameter | Value |
|-----------|-------|
| Cross-section type | R5 |
| Lane width | 3.50 m |
| Number of lanes | 2 (1 per direction) |
| Carriageway width | 7.00 m |
| Shoulder width | 2.00 m each side |
| Total roadway width | 11.00 m |
| Crossfall | 2.5% (paved) |
| Shoulder crossfall | 4.0% |

---

## M.8 References

1. Ministry of Roads and Transport, Republic of Kenya, *Road Design Manual, Volume 1: Geometric Design, Part 3: Geometric Design of Highways, Rural Roads and Urban Roads (RDM 1.3)*, 2025. Chapter 4, Chapters 14-17.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-04-04 | AI draft | Initial draft -- lane widths from Table 4.1, shoulder widths from Table 4.2, cross-sections from Tables 4.23/4.24 verified against Kenya RDM 1.3 PDF. Key differences from Uganda: wider lanes (3.65m), expressway cross-section R1, NMT integration in urban sections. |
