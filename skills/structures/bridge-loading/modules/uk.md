# Bridge Loading -- UK Module

> **Parent Skill:** #36 Bridge Loading
> **Country/Jurisdiction:** United Kingdom
> **Standards:** EN 1991-2 (Eurocode 1 Part 2: Traffic Loads on Bridges) + UK National Annex
> **Version:** 0.1
> **Status:** Draft -- Knowledge-based
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---

**NOTE: This module is knowledge-based.** The referenced Eurocode standards and DMRB bridge loading documents are not available locally for detailed table extraction. Content is based on general knowledge of UK bridge loading practice post-Eurocode adoption. Engineer review recommended before use on UK projects.

---

## M.1 Standards & Institutional Context

### M.1.1 Applicable Standards

| Standard | Edition/Year | Sections Referenced | Status |
|----------|-------------|---------------------|--------|
| EN 1991-2 | 2003 + UK NA | Traffic loads on bridges | Current |
| EN 1990 | 2002 + UK NA | Basis of structural design (partial factors) | Current |
| DMRB bridge loading standards | Current | UK-specific implementation | Current |

### M.1.2 Institutional Context

The UK adopted Eurocodes for bridge design circa 2010, withdrawing BS 5400. Bridge loading is now governed by EN 1991-2 with the UK National Annex. DMRB provides additional requirements for highway bridges on the strategic road network. The HA/HB loading system used in MoWT Vol 4 (from BS 5400 Part 2) has been replaced in the UK by Load Models LM1-LM4.

### M.1.3 Standard Philosophy

EN 1991-2 uses a different loading philosophy from BS 5400. Instead of HA (UDL + KEL) and HB (abnormal vehicle), the Eurocode uses:

- **LM1:** General traffic (UDL + tandem system per lane). The tandem system replaces the KEL concept but with different values per lane (300 kN axle in Lane 1, 200 kN in Lane 2, 100 kN in Lane 3).
- **LM2:** Single axle (400 kN on a single axle, for local effects).
- **LM3:** Special vehicles (SV and SOV) replacing HB loading. Specific vehicle configurations defined by National Annex.
- **LM4:** Crowd loading (5.0 kN/m2).

Partial factors follow EN 1990 using gamma_G (permanent) and gamma_Q (variable) rather than the single gamma_fL system.

---

## M.2 Country-Specific Knowledge

### M.2.1 Design Tables

No tables extracted (knowledge-based module). Key EN 1991-2 parameters (approximate, for context):

**LM1 characteristic values per lane:**

| Lane | Tandem System (kN) | UDL (kN/m2) |
|------|--------------------|-----------  |
| Lane 1 | 2 x 150 = 300 | 9.0 (UK NA: 5.5 for limited access) |
| Lane 2 | 2 x 100 = 200 | 2.5 |
| Lane 3 | 2 x 50 = 100 | 2.5 |
| Other lanes | 0 | 2.5 |
| Remaining area | 0 | 2.5 |

**NOTE:** UK National Annex may modify these values. The alpha adjustment factors from the NA should be applied.

### M.2.2 Country-Specific Formulas

EN 1991-2 uses a different approach -- lane-by-lane application of tandem systems and UDL rather than a single formula for loaded length. The concept of "loaded length" determining UDL intensity (as in HA loading) does not directly apply.

---

## M.3 Country-Specific Reasoning

### M.3.1 Decision Logic (UK Branch)

```
Step 3 (UK): Calculate traffic loading
  |-- Apply LM1: tandem system + UDL per lane
  |    (NOT HA UDL formula -- different loading model)
  |-- Check LM2 for local member design
  |-- If abnormal vehicles required: use LM3 (SV/SOV from NA)
  +-- LM4 (crowd) for pedestrian bridges or bridges with footways

Step 8 (UK): Assemble load combinations
  |-- Use EN 1990 combination rules (not Table 1)
  |-- gamma_G * G + gamma_Q * Q_k * psi factors
  +-- Different from the 5-combination system in MoWT Vol 4
```

### M.3.2 Professional Judgment (UK-Specific)

**HA/HB loading is withdrawn in the UK.** The HA/HB system from BS 5400 (and MoWT Vol 4) has been completely replaced by Eurocode Load Models LM1-LM4 in the UK. Designs using HA/HB are only applicable for assessment of existing BS 5400-designed bridges, not for new design in the UK.

**HB loading replaced by SV/SOV.** The concept of "HB units" does not exist in Eurocode. Special vehicles in LM3 are defined by specific vehicle configurations in the National Annex, replacing the generic HB vehicle.

**Partial factor approach differs fundamentally.** EN 1990 uses separate gamma_G (permanent actions) and gamma_Q (variable actions) with combination (psi) factors, rather than the single gamma_fL applied to each load type in MoWT Vol 4.

### M.3.3 Common Errors (UK-Specific)

1. **Applying HA/HB loading for UK new design.** HA/HB is withdrawn. Use EN 1991-2 LM1-LM4.
2. **Using MoWT Vol 4 load combinations for UK design.** EN 1990 combination rules apply, not Table 1.

---

## M.4 Country-Specific Defaults

| Parameter | UK Default | Condition | Rationale |
|-----------|-----------|-----------|-----------|
| Load model | LM1 | Normal traffic | EN 1991-2 replaces HA loading |
| gamma_G (unfavourable) | 1.35 | ULS | EN 1990 UK NA |
| gamma_Q (traffic) | 1.35 | ULS | EN 1990 UK NA |
| Seismic loading | Not required | UK is non-seismic for bridge design | EN 1998-1 |

---

## M.5 Country-Specific Validation

- **Loading model:** Verify EN 1991-2 LM1 used (not HA/HB which is withdrawn in UK).
- **Partial factors:** Verify EN 1990 gamma_G and gamma_Q used (not gamma_fL from Table 1).
- **Combination rules:** Verify EN 1990 combination expressions (not MoWT 5-combination system).
- **National Annex:** Verify UK NA alpha adjustment factors applied to LM1 values.

---

## M.6 Country-Specific Escalation

| Trigger | Action |
|---------|--------|
| HA/HB loading specified for UK new design | SENIOR REVIEW -- HA/HB withdrawn in UK. Use EN 1991-2 LM1-LM4. |
| SV/SOV vehicles not in NA | SENIOR REVIEW -- Check current UK NA for special vehicle configurations. |

---

## M.7 Worked Example -- UK

### Example: 25m Bridge with EN 1991-2 LM1 Loading (Conceptual)

**Given:** 25m simply supported bridge, 7.3m carriageway (2 lanes), UK.

**UK Approach:**
1. **Lane layout:** 2 notional lanes per EN 1991-2 (lane widths differ from BS 5400 -- 3.0m standard lane width in Eurocode).
2. **LM1 loading:**
   - Lane 1: Tandem 2 x 150 kN axles + 9.0 kN/m2 UDL (or alpha-adjusted per UK NA)
   - Lane 2: Tandem 2 x 100 kN axles + 2.5 kN/m2 UDL
   - Remaining area: 2.5 kN/m2
3. **Partial factors (EN 1990, STR limit state):**
   - Permanent: gamma_G = 1.35 (unfavourable), 1.0 (favourable)
   - Variable (traffic): gamma_Q = 1.35 (UK NA value), psi_0 = 0.75 (for combination)
4. **No seismic loading** (UK is non-seismic for bridge design purposes)
5. **Wind loading** per EN 1991-1-4 + UK NA (different from MoWT Vol 4 approach)

**Key differences from Uganda example:**
- LM1 (UDL + tandem per lane) replaces HA (UDL + KEL formula)
- LM3 special vehicles replace HB loading
- EN 1990 partial factors replace gamma_fL from Table 1
- No seismic loading in UK

---

## M.8 References

1. BS EN 1991-2:2003, Eurocode 1: Actions on structures, Part 2: Traffic loads on bridges.
2. BS EN 1990:2002+A1:2005, Eurocode: Basis of structural design, with UK National Annex.
3. Design Manual for Roads and Bridges, bridge loading standards.

---

## Module Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial knowledge-based draft. EN 1991-2 LM1-LM4 documented. HA/HB replacement noted. No local Eurocode documents available. |
