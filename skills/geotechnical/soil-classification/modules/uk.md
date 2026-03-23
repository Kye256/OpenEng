# Soil Classification -- UK Module

> **Parent Skill:** #8 Soil Classification
> **Country/Jurisdiction:** United Kingdom
> **Standards:** BS 5930:2015; BS EN ISO 14688; DMRB Volume 4
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-19
> **Reviewed By:** --

*(Drafted from general DMRB knowledge -- verify against BS 5930 and BS EN ISO 14688 before use in production)*

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| BS 5930 | 2015 (+A2:2020) | Soil and rock description | Current |
| BS EN ISO 14688-1 | 2018 | Identification and classification of soil -- Part 1 | Current |
| BS EN ISO 14688-2 | 2018 | Identification and classification of soil -- Part 2 | Current |
| DMRB Volume 4 | Various | Geotechnics and drainage | Current |

### M.1.2 Institutional Context

UK soil classification for highway purposes uses the BS/Eurocode system rather than AASHTO or USCS. The BS 5930 descriptive system provides standardised terminology for engineering soil descriptions. BS EN ISO 14688 provides the classification framework aligned with European practice. DMRB Volume 4 provides additional guidance specific to highway geotechnics.

### M.1.3 Standard Philosophy

The UK system emphasises detailed engineering descriptions rather than code-based classification. A BS 5930 soil description follows a structured format: consistency/density, colour, secondary and principal soil type, with additional information on structure, geological formation, and engineering significance.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

**BS 5930 Soil Description Framework:**

The standard description format is:
```
[Consistency/Density] [Colour] [secondary constituents] [PRINCIPAL SOIL TYPE] [additional information]
```

Example: "Firm reddish-brown slightly sandy CLAY with occasional gravel" (London Clay)

**Consistency terms for cohesive soils (BS 5930):**

| Term | Undrained shear strength (kPa) | Field identification |
|------|-------------------------------|---------------------|
| Very soft | < 20 | Exudes between fingers when squeezed |
| Soft | 20-40 | Easily moulded by finger pressure |
| Firm | 40-75 | Can be moulded by strong finger pressure |
| Stiff | 75-150 | Cannot be moulded by fingers, dented by thumb |
| Very stiff | 150-300 | Brittle, can be indented by thumbnail |
| Hard | > 300 | Difficult to indent by thumbnail |

**Density terms for granular soils (BS 5930):**

| Term | SPT N-value | Relative density |
|------|-----------|-----------------|
| Very loose | 0-4 | 0-15% |
| Loose | 4-10 | 15-35% |
| Medium dense | 10-30 | 35-65% |
| Dense | 30-50 | 65-85% |
| Very dense | > 50 | 85-100% |

### M.2.2 Country-Specific Formulas

**Equilibrium CBR estimation from PI (DMRB approach):**

For UK subgrade design, CBR is often estimated from Plasticity Index using the DMRB design chart (HD 25 successor), which relates PI to long-term equilibrium CBR for different construction conditions (heavy clay, thin construction, thick construction).

Approximate relationships:
- PI = 10: Equilibrium CBR approximately 5-8%
- PI = 20: Equilibrium CBR approximately 3-5%
- PI = 40: Equilibrium CBR approximately 1.5-3%
- PI = 60: Equilibrium CBR approximately 1-2%

These are indicative only -- the actual DMRB design chart should be used.

### M.2.3 Classification System

UK uses BS EN ISO 14688 classification:
- **Very coarse soils:** Boulders (> 200 mm), Cobbles (63-200 mm)
- **Coarse soils:** Gravel (2-63 mm), Sand (0.063-2 mm)
- **Fine soils:** Silt (0.002-0.063 mm), Clay (< 0.002 mm)
- **Organic soils:** Peat, organic clay/silt

Note: The UK sieve size boundary between coarse and fine is 0.063 mm (63 microns), not 0.075 mm (No. 200 sieve) as in AASHTO/USCS.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 2 (UK): Classification system
  -> BS 5930 description (primary)
  -> BS EN ISO 14688 classification (supplementary)
  -> USCS may be reported for international projects if required by client

Step 4a (UK): Soil description
  |-- Follow BS 5930 structured format
  |-- Include geological formation name where known
  +-- Note engineering significance (e.g., "London Clay -- high shrink-swell potential")
```

### M.3.2 Professional Judgment (UK-Specific)

**Common UK soils and their highway significance:**
- **London Clay:** Stiff to very stiff brown/grey clay. High PI (typically 30-50). Significant shrink-swell potential. Common in SE England. Equilibrium CBR typically 2-3%.
- **Oxford Clay:** Stiff grey clay. Moderate to high PI. Similar issues to London Clay.
- **Glacial till (boulder clay):** Variable consistency and composition. Can range from soft to very stiff with embedded boulders. PI typically 10-25.
- **Chalk:** Soft to medium-hard carbite rock. Very high CBR when dry but loses strength when wet. Dissolution features (solution hollows, sinkholes) are a major geotechnical hazard.
- **Alluvium:** Soft clays and silts in river valleys. Often organic. Very low CBR (1-3%). Requires capping or replacement.

### M.3.3 Common Errors (UK-Specific)

1. **Mixing USCS and BS systems.** The UK system uses different sieve boundaries (63 microns vs 75 microns) and different terminology. Do not apply AASHTO/USCS group symbols to UK soil descriptions without noting the different classification basis.
2. **Not specifying geological formation.** In the UK, the geological formation name is an important part of the soil description and conveys engineering significance (e.g., "London Clay" immediately implies high plasticity and shrink-swell potential).

---

## M.4 Country-Specific Defaults

| Input | Default Value | Condition | Flag Text | Source/Rationale |
|-------|--------------|-----------|-----------|-----------------|
| Classification system | BS 5930 / BS EN ISO 14688 | Not specified | ASSUMED: BS system for UK soil classification | UK standard |
| CBR estimation method | Equilibrium CBR from PI | No lab CBR data | ASSUMED: Equilibrium CBR estimated from PI per DMRB approach -- confirm with lab testing | Standard DMRB approach for UK subgrade design |

---

## M.5 Country-Specific Validation

### M.5.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Standard Reference | Action if Violated |
|-----------|---------|---------|------|-------------------|-------------------|
| PI (UK clays) | 5 | 80 | % | BS EN ISO 14688 | Warn if > 60 (very high -- verify test procedure) |

### M.5.2 Standards Compliance Checks

- **Check:** Soil description follows BS 5930 structured format.
- **Standard:** BS 5930:2015
- **Pass condition:** Description includes consistency/density, colour, and principal soil type
- **Fail action:** Reformat description to BS 5930 standard.

### M.5.3 Departures / Relaxations Process

No formal departures process for soil classification. Classification follows the relevant British/European standard.

---

## M.6 Country-Specific Escalation

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Chalk with dissolution features | Risk of sinkholes and ground collapse | SENIOR REVIEW -- Chalk with solution features identified. Recommend detailed investigation (rotary probing, geophysics). |
| High-plasticity clay (PI > 40) | Significant shrink-swell potential for highway subgrade | SENIOR REVIEW -- High-plasticity clay. Specify capping layer and consider lime stabilisation for subgrade. |
| Made ground or fill of unknown origin | Uncertain composition and strength | SENIOR REVIEW -- Made ground at [depth]. Characterise composition, check for contamination, assess suitability. |

---

## M.7 Worked Example -- UK

### Example: Classify Soils from a Borehole Log in Surrey

**Source:** Hypothetical, based on typical UK practice.

**Given:**
- Project: A24 improvement scheme, Borehole BH-05
- Location: Near Dorking, Surrey
- Geology: London Clay overlain by river terrace deposits

**Borehole log data:**

| Depth (m) | Description | SPT N | LL (%) | PL (%) | PI (%) | % < 63 um |
|-----------|-------------|-------|--------|--------|--------|-----------|
| 0.0-0.5 | Topsoil | -- | -- | -- | -- | -- |
| 0.5-2.0 | Medium dense brown slightly silty fine to medium SAND with occasional gravel | 15 | NP | NP | NP | 8 |
| 2.0-4.5 | Firm to stiff brown slightly sandy CLAY | 18 | 55 | 22 | 33 | 65 |
| 4.5-10.0 | Stiff grey slightly silty CLAY (London Clay) | 35 | 68 | 28 | 40 | 78 |

**Solution:**

**Stratum 1 (0.5-2.0 m): River Terrace Deposits**
- BS 5930: Medium dense brown slightly silty fine to medium SAND with occasional gravel
- BS EN ISO 14688: Sand, medium dense
- Subgrade suitability: Good -- CBR likely 10-20% depending on density and moisture
- Highway significance: Adequate capping/subgrade material

**Stratum 2 (2.0-4.5 m): Weathered London Clay**
- BS 5930: Firm to stiff brown slightly sandy CLAY
- BS EN ISO 14688: Clay, firm to stiff, high plasticity (PI = 33, > 25)
- Equilibrium CBR estimate from PI = 33: approximately 2-4%
- Subgrade suitability: Poor -- low equilibrium CBR, shrink-swell potential
- Highway significance: Requires capping layer. Consider lime stabilisation.

**Stratum 3 (4.5-10.0 m): London Clay**
- BS 5930: Stiff grey slightly silty CLAY (London Clay Formation)
- BS EN ISO 14688: Clay, stiff, very high plasticity (PI = 40)
- Equilibrium CBR estimate from PI = 40: approximately 1.5-3%
- Subgrade suitability: Very poor -- very low equilibrium CBR
- Highway significance: Governs subgrade design. Will require significant capping.

**Escalation:** SENIOR REVIEW -- London Clay with PI = 40 underlying the road. Equilibrium CBR approximately 1.5-3%. Substantial capping layer (600 mm+) likely required. Consider lime stabilisation of upper London Clay.

---

## M.8 References

1. BSI, *BS 5930:2015+A2:2020: Code of Practice for Ground Investigations*, 2020.
2. BSI, *BS EN ISO 14688-1:2018: Geotechnical Investigation and Testing -- Identification and Classification of Soil, Part 1*, 2018.
3. BSI, *BS EN ISO 14688-2:2018: Part 2: Principles for a Classification*, 2018.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-19 | AI draft | Initial draft -- drafted from general DMRB and BS 5930 knowledge |
