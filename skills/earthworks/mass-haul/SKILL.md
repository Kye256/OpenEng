---
name: "mass-haul"
description: "Use when optimizing earthworks haulage, identifying borrow and spoil locations, or interpreting mass haul diagrams. Requires cut/fill volumes from Skill #26 (Earthworks Calculation). Outputs feed into Skill #50 (Engineer's Estimate) for earthworks costing."
---

# Mass Haul

> **Skill ID:** 27
> **Domain:** Earthworks
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-03-20
> **Reviewed By:** ---
> **Country Modules:** Uganda, UK, Kenya

## Purpose

Construct and interpret mass haul diagrams from station-by-station earthworks volumes. This skill determines the optimal movement of earthworks material along the alignment -- identifying free haul and overhaul quantities, locating borrow pits and spoil sites, and selecting balance lines to minimize total haulage cost. Mass haul optimization directly affects project earthworks cost, which is often the largest single item in road construction.

## When to Use This Skill

- **Use when:** Station-by-station cut and fill volumes are available (from Skill #26) and earthworks haulage needs to be optimized, or when a mass haul diagram needs to be interpreted.
- **Do not use when:** Only total earthworks volumes are needed without haulage optimization (Skill #26 provides totals). Not for structural excavation or foundation material haulage.
- **Prerequisite skills:** Skill #26 (Earthworks Calculation) -- provides station-by-station cut and fill volumes with shrinkage applied.

---

## 1. Knowledge (Universal)

### 1.1 Key Concepts

**Mass ordinate:** The cumulative algebraic sum of net volumes (cut minus shrinkage-adjusted fill) along the alignment, calculated station by station. A positive mass ordinate indicates cumulative surplus (more cut than fill to that point). A negative mass ordinate indicates cumulative deficit (more fill than cut to that point).

```
Mass ordinate at station n = Sum of (cut_i - adjusted_fill_i) for i = 1 to n
```

**Mass haul diagram:** A plot of mass ordinate (vertical axis) against chainage (horizontal axis). The shape of this diagram reveals the earthworks balance and haulage requirements along the alignment.

**Key features of the mass haul diagram:**
- **Rising curve:** Indicates a cut section (material surplus accumulating). The slope indicates the rate of cut.
- **Falling curve:** Indicates a fill section (material deficit accumulating). The slope indicates the rate of fill.
- **Peak (local maximum):** Transition from cut to fill. Material moves forward from this point.
- **Trough (local minimum):** Transition from fill to cut. Material moves backward to this point.
- **Zero crossing:** Point where cumulative cut equals cumulative fill (local balance).

**Balance line:** A horizontal line drawn on the mass haul diagram. Between any two points where the balance line intersects the mass curve, the cut equals the fill -- material within this zone is "self-contained." The position of the balance line determines the direction and distance of material movement.

**Free haul distance:** The maximum haulage distance included in the earthworks unit rate. Material moved within the free haul distance is paid for as part of the cut or fill unit rate. Typical free haul distances: 200-500m, depending on the contract.

**Overhaul:** Material hauled beyond the free haul distance. Overhaul is paid separately, typically per m3-station (usually 500m) or per m3-km. Overhaul is more expensive than free haul because it involves additional truck-hours.

**Determining free haul and overhaul from the diagram:**
1. At each balance point, draw a horizontal line of length equal to the free haul distance.
2. The volume of material within the free haul distance (measured vertically between the mass curve and the balance line, limited by the free haul width) is free haul volume.
3. The remaining volume (beyond the free haul distance) is overhaul volume.
4. Overhaul quantity = overhaul volume x overhaul distance (typically measured to centre of gravity of the overhaul zone).

**Borrow:** Material brought from outside the alignment (borrow pit) when the mass ordinate at the end of the project is negative -- total fill exceeds total cut. Borrow locations should be chosen to minimize haul distance and cost.

**Spoil:** Surplus cut material that cannot be economically placed as fill. Occurs when the mass ordinate at the end of the project is positive. Spoil disposal locations must consider environmental requirements and haul distance.

**Balancing points:** Where the balance line intersects the mass curve. Material between any two consecutive balancing points is self-contained -- it moves entirely within that segment.

**Direction of haul:** Material moves from peak to trough on the mass haul diagram. If the balance line is above the curve, material moves to the right (forward). If the balance line is below the curve, material moves to the left (backward). Downhill haul is cheaper than uphill haul.

### 1.2 Universal Formulas

**Mass ordinate:**
```
M_n = M_(n-1) + (Cut_n - AdjFill_n)
```
Where: M_n = mass ordinate at station n (m3), Cut_n = cut volume for segment n (m3), AdjFill_n = shrinkage-adjusted fill volume for segment n (m3).

**Free haul volume:**
Determined graphically or computationally as the volume between the mass curve and the balance line within the free haul distance.

**Overhaul quantity:**
```
Overhaul = Volume_overhaul x Distance_overhaul
```
Where: Volume_overhaul in m3, Distance_overhaul in stations (typically 500m) or km. Result in m3-station or m3-km.

**Optimal balance line position:**
Minimize: Total cost = (Free haul volume x unit rate_cut) + (Overhaul quantity x unit rate_overhaul) + (Borrow volume x unit rate_borrow)

### 1.3 Figures & Diagrams

**Mass haul diagram interpretation:** The mass haul diagram is plotted with chainage on the horizontal axis and mass ordinate (cumulative net volume) on the vertical axis. A rising curve indicates cut (surplus material), a falling curve indicates fill (deficit). The balance line is drawn horizontally; where it intersects the curve defines balancing points. Material between two balancing points moves in the direction from peak to trough. The vertical distance between the curve and the balance line at any point represents the volume of material that has been or needs to be moved through that point.

**Relationship to alignment profile:** The mass haul diagram mirrors the longitudinal profile but in terms of volume rather than elevation. Deep cuts correspond to steeply rising sections of the mass curve. High fills correspond to steeply falling sections. The mass haul diagram is typically plotted below or alongside the longitudinal profile for visual correlation.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Receive station-by-station volumes from Skill #26
  +-- Cut volumes (in-situ) at each station interval
  +-- Fill volumes (shrinkage-adjusted) at each station interval
  +-- Verify shrinkage has been applied

Step 2: Compute net volumes at each station
  +-- Net_i = Cut_i - AdjFill_i
  +-- Positive net = surplus material at this station
  +-- Negative net = deficit at this station

Step 3: Compute cumulative mass ordinates
  +-- M_0 = 0
  +-- M_n = M_(n-1) + Net_n
  +-- Record mass ordinate at each station

Step 4: Construct mass haul diagram (describe interpretation)
  +-- Identify peaks (cut-to-fill transitions)
  +-- Identify troughs (fill-to-cut transitions)
  +-- Note final mass ordinate (overall balance)

Step 5: Select balance line(s)
  --> See country module for free haul distance
  +-- For short projects: single balance line
  +-- For long projects: multiple balance lines may be optimal
  +-- Position to minimize overhaul + borrow cost

Step 6: Determine free haul and overhaul
  +-- At each balancing point pair, measure the horizontal distance
  +-- Volume within free haul distance = free haul volume
  +-- Volume beyond free haul distance = overhaul volume
  +-- Calculate overhaul quantity (volume x distance)

Step 7: Identify borrow and spoil
  +-- If final mass ordinate < 0 --> Borrow needed
  +-- If final mass ordinate > 0 --> Spoil generated
  +-- Locate optimal borrow/spoil positions
  +-- Flag for Skill #28 material suitability check on borrow source

Step 8: Optimize balance line position
  +-- Adjust balance line to minimize total cost
  +-- Consider: unit rates, haul distances, borrow availability
  +-- Consider direction of haul (downhill cheaper)

Step 9: Run validation (Section 4 + country module Section M.5)

Step 10: Produce output (Section 8)
```

### 2.2 Professional Judgment (Universal)

**Optimize the balance line, not just the volumes.** The cheapest earthworks solution is not always the one with the least total movement. Downhill haul is significantly cheaper than uphill haul (gravity assists). A balance line that results in more downhill haul may be cheaper than one that minimizes total distance.

**Consider borrow pit economics vs overhaul.** Sometimes it is cheaper to open a borrow pit close to a fill area than to haul cut material from a distant section. Compare the cost of: (a) overhaul from distant cut, (b) borrow from local pit, (c) vertical alignment adjustment to reduce the imbalance.

**Multiple balance lines for long projects.** On alignments longer than 2-3 km, a single balance line rarely gives the optimal solution. Divide the alignment into zones, each with its own balance line, to minimize overhaul distances.

**Borrow pit selection involves more than distance.** The borrow source must provide suitable material (Skill #28). A closer borrow pit with marginal material may be more expensive than a farther pit with high-quality material, because of the additional processing or the risk of rejection.

### 2.3 Common Errors

1. **Not applying shrinkage before constructing the mass haul diagram.** The mass haul diagram must use shrinkage-adjusted fill volumes. Using geometric fill volumes produces an incorrect balance.
2. **Ignoring the direction of haul.** Uphill haul costs significantly more than downhill. The mass haul diagram alone does not show elevation -- the longitudinal profile must be consulted.
3. **Single balance line on a long alignment.** Using one balance line for a 10+ km road typically results in excessive overhaul. Use multiple balance lines.
4. **Not verifying borrow material suitability.** Mass haul identifies the quantity of borrow needed but not whether the available borrow material meets specifications. Always link to Skill #28.
5. **Confusing mass ordinate with volume.** The mass ordinate is cumulative -- it represents the running total, not the volume at a single station.

---

## 3. Defaults (Universal)

| Input | Default Value | Condition | Flag Text | Rationale |
|-------|--------------|-----------|-----------|-----------|
| Free haul distance | 200 m | Not specified | ASSUMED: Free haul distance 200m. Verify with contract documents. | Common minimum for road projects |
| Overhaul unit | m3-station (500m) | Not specified | ASSUMED: Overhaul charged per m3-station (500m). Verify with contract. | Common measurement unit |
| Balance line position | Minimize overhaul | Not specified | No flag | Standard optimisation objective |

### Default Behaviour Rules

1. **Country module defaults take precedence** over universal defaults.
2. **Free haul distance is contract-specific.** Always check the contract documents for the specified free haul distance.
3. **Conservative direction:** When in doubt, assume shorter free haul distance (produces more overhaul -- conservative for cost estimation).

---

## 4. Validation (Universal)

### 4.1 Range Checks

| Parameter | Minimum | Maximum | Unit | Action if Violated |
|-----------|---------|---------|------|--------------------|
| Free haul distance | 100 | 1,000 | m | Warn if outside 200-500m typical range |
| Mass ordinate | -100,000 | 100,000 | m3 | Warn if magnitude > 50,000 (very large earthworks) |
| Number of stations | 3 | 1,000 | -- | Warn if < 5 (insufficient data for meaningful diagram) |
| Overhaul distance | 0 | 10,000 | m | Warn if > 5,000m (very long haul) |

### 4.2 Consistency Checks

- **Final mass ordinate vs Skill #26 balance:** The final mass ordinate should equal the net earthworks balance from Skill #26. If they differ, the input data has been incorrectly transferred.
- **Monotonicity within segments:** Within a continuous cut segment, the mass curve should be strictly rising. Within a continuous fill segment, strictly falling. Reversals within a segment indicate data errors.
- **Mass ordinate sign vs terrain:** Cross-check peaks and troughs against the longitudinal profile. Peaks should correspond to elevated terrain (cuts), troughs to low terrain (fills).

### 4.3 Standards Compliance

The agent runs all checks from the country module's Section M.5 in addition to universal checks. Mass haul methods are universal; country-specific aspects are primarily free haul distances and contract measurement conventions.

---

## 5. Escalation (Universal)

### 5.1 Escalation Triggers

| Trigger | Reason | Suggested Action |
|---------|--------|-----------------|
| Overhaul exceeds 30% of total earthworks volume | High earthworks cost | SENIOR REVIEW -- Overhaul volume [X] m3 represents [Y]% of total. Consider vertical alignment adjustment or additional borrow pits. |
| Borrow volume > 20% of total fill | Significant external material needed | SENIOR REVIEW -- Borrow [X] m3 required. Identify borrow sources and assess suitability (Skill #28). |
| Haul distance > 3 km for any segment | Very expensive haul | SENIOR REVIEW -- Haul distance [X] km for segment [Y-Z]. Consider local borrow pit as alternative. |
| Final mass ordinate significantly non-zero (> 10% of total) | Major cut-fill imbalance | SENIOR REVIEW -- Final mass ordinate [X] m3 ([Y]% of total). Consider vertical alignment optimization. |
| No country module available | Cannot determine free haul conventions | SENIOR REVIEW -- No country module. Free haul distance assumed 200m. Verify with contract. |

### 5.2 Escalation Behaviour

- **Never suppress an escalation flag.** Even if the rest of the output is complete, the flag must appear.
- **Provide context** with each flag.
- **Continue working** where possible. Flag the issue but complete the rest of the task.
- **Country module escalations** are merged with universal escalations in the output.

---

## 6. Interfaces

### 6.1 Inputs

| Input | Type | Unit | Required? | Source Skill | Description |
|-------|------|------|-----------|-------------|-------------|
| Country/jurisdiction | text | -- | Yes | User | Determines which country module to load |
| Station-by-station cut volumes | list of numbers | m3 | Yes | Skill #26 | Cut volumes at each station interval |
| Station-by-station fill volumes (shrinkage-adjusted) | list of numbers | m3 | Yes | Skill #26 | Fill volumes with shrinkage applied |
| Station chainages | list of numbers | m | Yes | Skill #26 | Chainage of each station |
| Free haul distance | number | m | No | Contract documents | Maximum distance in unit rate |
| Overhaul unit rate | number | currency/m3-stn | No | Contract documents | Cost per unit of overhaul |
| Borrow unit rate | number | currency/m3 | No | Contract documents | Cost per unit of borrow |
| Longitudinal profile | geometry | m | No | Skill #15 | For haul direction assessment |

### 6.2 Outputs

| Output | Type | Unit | Consumers | Description |
|--------|------|------|-----------|-------------|
| Mass haul diagram data | list of (chainage, mass ordinate) | m, m3 | User | Data points for mass haul diagram |
| Free haul volume | number | m3 | Skill #50 (Engineer's Estimate) | Volume moved within free haul distance |
| Overhaul volume | number | m3 | Skill #50 (Engineer's Estimate) | Volume moved beyond free haul distance |
| Overhaul quantity | number | m3-station or m3-km | Skill #50 (Engineer's Estimate) | Overhaul for payment |
| Borrow volume | number | m3 | Skill #28, Skill #50 | External material needed |
| Spoil volume | number | m3 | Skill #50 | Surplus for disposal |
| Balance line position(s) | number(s) | m3 | User | Optimal balance line ordinate(s) |

### 6.3 Data Files

| File | Description | Format |
|------|-------------|--------|
| `modules/uganda.md` | Uganda-specific free haul and contract context | Markdown |
| `modules/uk.md` | UK-specific earthworks management context | Markdown |
| `modules/kenya.md` | Kenya Standard Specification haul categories and regional material context | Markdown |

---

## 7. Procedure

### Step 1: Load Country Module
Identify the jurisdiction from user input. Load the corresponding country module for free haul distance and contract conventions.

### Step 2: Receive Input Data
Receive station-by-station cut and fill volumes from Skill #26. Confirm shrinkage has been applied to fill volumes. Receive free haul distance from contract or country module default.

### Step 3: Compute Net Volumes
Calculate net volume (cut minus adjusted fill) at each station interval.

### Step 4: Compute Mass Ordinates
Calculate cumulative mass ordinate at each station, starting from zero at the first station.

### Step 5: Construct Mass Haul Diagram
Describe the mass haul diagram shape, identify peaks, troughs, zero crossings, and the final mass ordinate. Provide the data points for plotting.

### Step 6: Select Balance Line(s)
Position the balance line(s) to minimize total haulage cost. For single balance line: position at the level that minimizes the sum of overhaul and borrow costs.

### Step 7: Determine Free Haul and Overhaul
At each balance segment, determine the volume moved within the free haul distance and the volume (and distance) of overhaul.

### Step 8: Identify Borrow and Spoil
Based on the final mass ordinate and balance line position, identify borrow and spoil requirements. Flag borrow for Skill #28 assessment.

### Step 9: Run Validation
All universal + country-specific checks from Section 4 and the country module.

### Step 10: Produce Output
Format per Section 8. Include mass ordinate data for diagram plotting.

---

## 8. Output Format

```
============================================================
MASS HAUL ANALYSIS -- [Road Name / Project]
Country/Jurisdiction: [country]
Standard: [standard or "Universal methods"]
Free Haul Distance: [X] m
Date: [YYYY-MM-DD]
============================================================

INPUT SUMMARY
-------------
Number of stations:          [N]
Alignment length:            [X] m
Total cut (in-situ):         [X] m3
Total fill (shrinkage-adj):  [X] m3
Net earthworks balance:      [X] m3

MASS ORDINATE TABLE
-------------------
Station   Chainage   Net Vol    Mass Ordinate
          (m)        (m3)       (m3)
--------  ---------  ---------  -------------
1         0+000      --         0
2         0+[XXX]    [net]      [M]
...

MASS HAUL DIAGRAM INTERPRETATION
---------------------------------
[Description of diagram shape, peaks, troughs, balance points]

BALANCE LINE ANALYSIS
---------------------
Balance line position:       [X] m3
Balancing points:            [list of chainages]
Number of zones:             [N]

HAULAGE SUMMARY
---------------
Free haul volume:            [X] m3
Overhaul volume:             [X] m3
Overhaul quantity:           [X] m3-station
Borrow volume:               [X] m3
Spoil volume:                [X] m3
Direction of haul:           [description]

ASSUMPTIONS & DEFAULTS
----------------------
[All assumed values with flags]

VALIDATION
----------
[Universal checks -- PASS or FAIL]
[Country-specific checks -- PASS or FAIL]

ESCALATION FLAGS
----------------
[Flags or "None"]

REFERENCES
----------
[Standard clauses cited]

============================================================
PRELIMINARY ANALYSIS -- FOR PROFESSIONAL REVIEW
This output is a mass haul analysis based on computed volumes.
Optimize with detailed cost data and contract conditions.
============================================================
```

---

## 9. Worked Examples

See country modules for worked examples:
- **Uganda:** modules/uganda.md, Section M.7
- **UK:** modules/uk.md, Section M.7
- **Kenya:** modules/kenya.md, Section M.7

---

## 10. Limitations & Future Work

- **Not covered:** Automated balance line optimization (requires iterative cost calculation with unit rates). 3D mass haul considering lateral haul (material moved perpendicular to alignment). Temporary stockpile planning. Haul road design.
- **Simplifications:** Mass haul diagram is described textually rather than plotted graphically. Balance line optimization is manual (position described). Direction of haul is qualitative (no detailed cost model for uphill vs downhill).
- **Country modules available:** Uganda, UK, Kenya
- **Country modules needed:** Ethiopia, Tanzania, South Africa

---

## Changelog

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 0.1 | 2026-03-20 | AI draft | Initial draft with mass haul diagram construction, free haul/overhaul determination, balance line concepts. Uganda and UK modules. |
