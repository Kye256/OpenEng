---
name: "traffic-signal-design"
description: "Use when designing traffic signals at intersections -- performing signal warrant analysis, determining phasing, calculating signal timing (cycle length, green splits, intergreen), selecting controller type, and designing pedestrian phases. Requires junction layout from Skill #19 (Intersection Design), marking layout from Skill #67 (Road Marking Design), and signage from Skill #68 (Traffic Sign Design). This is the most technically complex traffic management skill."
---

# Traffic Signal Design

> **Skill ID:** 69
> **Domain:** Traffic Management
> **Version:** 0.1
> **Status:** Draft
> **Last Updated:** 2026-04-04
> **Reviewed By:** ---
> **Country Modules:** Kenya

## Purpose

Design traffic signals at intersections including warrant analysis, phasing, timing calculation, controller selection, detection, and pedestrian phases. This skill produces signal timing plans and equipment specifications. It does NOT cover the geometric design of the intersection (Skill #19), the markings at the intersection (Skill #67), or the signs at the intersection (Skill #68) -- those are upstream inputs.

**Scope:** Preliminary/feasibility-level signal design. Full signal coordination (green wave), adaptive signal control, and detailed HCM capacity analysis are escalation triggers.

**Scope boundary:** For marking specifications at signalised intersections, see Skill #67 (Road Marking Design). For signage requirements at signalised intersections, see Skill #68 (Traffic Sign Design). For geometric layout of the junction itself, see Skill #19 (Intersection Design).

## When to Use This Skill

- **Use when:** Evaluating whether an intersection needs traffic signals and when designing signal timing for a new or modified signal installation. Also use when reviewing an existing signal installation for timing adequacy.
- **Do not use when:** Designing the geometric layout of intersections (Skill #19), road markings (Skill #67), traffic signs (Skill #68), or traffic control devices such as speed humps and barriers (Skill #70). Not for detailed HCM capacity analysis or adaptive signal system design.
- **Prerequisite skills:** Skill #13 (Design Standards Selection) -- road class and design speed. Skill #19 (Intersection Design) -- junction geometry and lane configuration. Skill #67 (Road Marking Design) -- stop line positioning and crossing markings. Skill #68 (Traffic Sign Design) -- regulatory and warning signs at signalised intersections.

---

## 1. Knowledge (Universal)

### 1.1 Signal Warrant Analysis

A signal warrant is a set of criteria used to determine whether the installation of a traffic signal is justified at a given intersection. Meeting a warrant does not mandate installation -- it indicates that a signal may be considered. Engineering judgment must confirm that a signal is the best solution (alternatives include roundabouts, channelisation, or grade separation).

**Warrant types:**

1. **Minimum vehicular volume (8-hour):** The main reason for providing a signal. Satisfied when the traffic volume in passenger car units (pcu) on the major and minor approaches exceeds threshold values for 8 or more hours on an average day.
2. **Interruption of continuous traffic (4-hour):** Applied when traffic on the major road is so heavy that minor road traffic suffers excessive delay. Satisfied when pcu volumes exceed threshold values for any 4 hours.
3. **Peak-hour volume:** Applied when delay to minor road traffic during the peak hour is unacceptable. Uses higher volume thresholds but only needs to be satisfied for 1 hour.
4. **Pedestrian volume:** Applied when pedestrian crossing demand is high. Typically requires 600+ pcu/hr on the major road and 150+ pedestrians/hr crossing.
5. **Crash experience:** Applied when the severity and frequency of crashes are principal reasons. Typically requires 5+ crashes with injury and property damage in 12 months where alternatives were tried and were not effective.
6. **Combination:** When no single warrant is met, two or more warrants may be considered together if they meet 80% or more of their respective criteria.
7. **School crossing:** Applied near schools where gaps in traffic are inadequate for children to cross safely.

Reference `tables/signal_warrant_thresholds.json` for specific volume thresholds by lane configuration.

### 1.2 Signal Phasing

A **phase** is a part of a signal cycle during which one or more non-conflicting movements receive right of way. Phasing design determines which movements run together and in what sequence.

**Basic phase configurations:**

- **2-phase (simple cross):** Phase A serves the major road (both directions), Phase B serves the minor road. Simplest and most efficient where turning volumes are low.
- **3-phase (with protected turn):** Adds a dedicated phase for a protected turning movement. Used when turning traffic conflicts with opposing through traffic or pedestrians.
- **4-phase (dual protected turns):** Both opposing turning movements get separate phases. Used at high-volume intersections with heavy turning demand on multiple approaches.

**Phase sequence options:**

- **Leading turn:** The protected turn phase runs before the through phase on the same approach. Clears turning vehicles before through traffic starts.
- **Lagging turn:** The protected turn phase runs after the through phase. Allows through traffic to discharge first.
- **Split-approach:** Each approach gets its own phase. All movements from one approach run simultaneously. Used when geometry prevents standard phasing.
- **Lead-lag:** One direction gets a leading turn, the opposing direction gets a lagging turn. Can improve coordination but introduces the "right-turn trap" risk (for right-hand traffic countries) or "left-turn trap" (for left-hand traffic countries).

**Terminology note:** This skill uses "nearside turn" (turn towards the near kerb, i.e., left turn in left-hand traffic, right turn in right-hand traffic) and "offside turn" (turn across oncoming traffic, i.e., right turn in left-hand traffic, left turn in right-hand traffic) where possible. Country modules specify the traffic direction.

**Pedestrian phase types:**

- **Concurrent (parallel):** Pedestrians cross in parallel with the adjacent vehicle through movement. The pedestrian Walk signal runs during the vehicle green. Turning vehicles must yield to pedestrians.
- **Exclusive (all-red / scramble):** All vehicle traffic stops and pedestrians may cross in any direction, including diagonally. Safest for pedestrians but reduces vehicle capacity.
- **Protected:** Turning traffic is held on red arrow while pedestrians cross. Eliminates the conflict between turning vehicles and pedestrians.

### 1.3 Signal Timing Calculation

This section contains the core formulas for signal timing design. All outputs are preliminary estimates -- detailed design requires traffic modelling software.

**Webster's optimum cycle length:**

```
C_opt = (1.5L + 5) / (1 - Y)
```

Where:
- C_opt = optimum cycle length (seconds)
- L = total lost time per cycle (seconds) = sum of start-up lost time + all-red for all phases
- Y = sum of critical flow ratios = y_1 + y_2 + ... + y_n
- y_i = q_i / s_i for each phase i
- q_i = demand flow for the critical lane group in phase i (veh/hr or pcu/hr)
- s_i = saturation flow for the critical lane group in phase i (typically 1800-1900 pcu/hr/lane)

**Practical limits:**
- C_min: typically 25-30 seconds (shorter cycles have excessive lost time proportion)
- C_max: typically 120 seconds (150 seconds absolute maximum -- longer cycles cause unacceptable pedestrian delay and driver frustration)
- If C_opt < C_min, use C_min
- If C_opt > C_max, the intersection is near capacity -- escalate for capacity improvements

**Critical constraint:** If Y >= 0.85, the intersection is at or near capacity. Signal timing alone cannot solve the problem -- geometric improvements (additional lanes, turn bays) are needed. Escalate.

**Green time allocation:**

```
g_i = (y_i / Y) * (C - L)
```

Where:
- g_i = effective green time for phase i (seconds)
- y_i = critical flow ratio for phase i
- Y = sum of all critical flow ratios
- C = selected cycle length (seconds)
- L = total lost time per cycle (seconds)

Each phase green must meet the minimum green time requirement (typically 7 seconds for vehicles, longer for pedestrian phases).

**Intergreen calculation:**

```
I = A + R
```

Where:
- I = intergreen time (seconds) -- the period between the end of green for one phase and the start of green for the next
- A = amber time (seconds), typically 3 seconds for approach speeds up to 60 km/h, 4 seconds for 70-80 km/h, 5 seconds for higher speeds
- R = all-red time (seconds)

**All-red time:**

```
R = (W + L_veh) / v_approach
```

Where:
- W = clearance distance -- the distance from the stop line to the far side of the conflicting crossing (m)
- L_veh = vehicle length (typically 6 m for a design vehicle)
- v_approach = approach speed (m/s) -- typically 85th percentile speed or the speed limit

All-red must be positive. If the calculation gives zero or negative, use a minimum of 1 second.

**Pedestrian phase timing:**

```
t_ped_green = 7 + (W / v_walk)
```

Where:
- t_ped_green = total pedestrian green time required (seconds)
- 7 = minimum Walk interval (seconds) to allow pedestrians to step off the kerb and begin crossing
- W = crossing width (m) -- the distance from kerb to kerb (or to the refuge island if staged crossing)
- v_walk = design walking speed:
  - 1.2 m/s standard (healthy adult)
  - 0.8 m/s for areas with high proportions of elderly or disabled pedestrians

The pedestrian green must be accommodated within the signal cycle. If the required pedestrian time exceeds the available vehicle green time, the cycle length may need to be increased or the crossing staged using a refuge island.

**Saturation flow estimation:**

Default saturation flow is 1800-1900 pcu/hr/lane for a standard 3.0-3.5 m lane. Adjust for:
- Narrow lanes (< 3.0 m): reduce by 5-10%
- Heavy vehicle proportion: reduce by the HV percentage (approximately)
- Gradient: reduce by 2% per 1% uphill gradient
- Nearside turning traffic: reduce by 10-15% for nearside turns from a shared lane
- Offside turning traffic: reduce by 15-25% for offside turns from a shared lane

### 1.4 Detection

Detection systems inform the signal controller about the presence or arrival of vehicles and pedestrians.

**Inductive loop detectors:** Wire loops embedded in the road surface. The standard detection method. Types include:
- **Stop-line loops:** Placed at the stop line, detect queued vehicles. Typically 2.0 m x 2.0 m or 2.5 m x 2.5 m.
- **Advance loops:** Placed upstream of the stop line (typically 30-50 m), detect approaching vehicles for gap-out logic.
- **Queue loops:** Placed in turn bays to detect queue build-up and call a turn phase.

**Video detection:** Camera-based detection using image processing. Less invasive to install than loops but affected by weather and lighting.

**Microwave/radar detection:** Above-ground sensors detecting vehicle presence. Useful for temporary installations.

**Pedestrian push buttons (PBUs):** Mounted on signal poles at pedestrian crossings. The pedestrian presses the button to register a demand for a pedestrian phase. PBUs should be located within 1 m of the crossing projection and mounted at approximately 1.1 m height.

### 1.5 Controller Types

- **Fixed-time:** Phase sequence and durations are preset. No detection required. Suitable for isolated intersections with stable, predictable traffic patterns. Simplest to maintain.
- **Vehicle-actuated (VA) -- isolated:** Phase durations vary based on detector inputs. The controller can skip phases with no demand and extend green for phases with continuing demand up to a maximum. Requires detection on all approaches.
- **Semi-actuated:** Detection only on minor approaches. The major road holds green until a minor road demand is detected. Common for intersections where the major road is clearly dominant.
- **Fully-actuated:** Detection on all approaches. All phase durations are variable. Most responsive to changing demand.
- **Coordinated/linked:** Multiple intersections operate with synchronised cycle lengths and offsets to create a "green wave" along a corridor. Requires a common cycle length across all intersections in the group.
- **Adaptive (centralised computer control):** A central computer adjusts phase timings in real time based on system-wide detector data. Examples include SCATS and SCOOT. Escalation trigger -- specialist design required.

---

## 2. Reasoning (Universal)

### 2.1 Decision Logic

```
Step 1: Confirm design inputs
  |-- Road class and design speed (from Skill #13)
  |-- Junction geometry and lane configuration (from Skill #19)
  |-- Traffic volumes: classified turning movement counts for peak and off-peak
  |-- Pedestrian volumes: crossing demand by movement
  |-- Crash history: frequency and severity at the intersection
  |-- Existing control: unsignalised, signalised (to be modified), or new intersection

Step 2: Signal warrant analysis
  |-- Check each warrant against the applicable standard (country module or universal)
  |-- If one or more warrants met --> proceed to signal design
  |-- If no warrant met --> do NOT recommend signals
      |-- Recommend alternatives: roundabout, channelisation, give way, pedestrian refuge
      |-- If client/community insists on signals despite unmet warrants --> escalate

Step 3: Determine phasing
  |-- Start with 2-phase (simplest)
  |-- IF offside turning volume > 150 veh/hr OR turning crash history significant
      |-- Add protected turn phase (3-phase)
  |-- IF both opposing offside turns > 150 veh/hr
      |-- Consider 4-phase or split-approach
  |-- Check pedestrian requirements
      |-- IF pedestrian volume > 150/hr on any crossing
          |-- Add pedestrian phase (concurrent, exclusive, or protected based on context)

Step 4: Calculate signal timing
  |-- Determine critical flow ratios (y_i) for each phase
  |-- Calculate Y = sum of critical flow ratios
  |-- IF Y >= 0.85 --> ESCALATE (capacity problem)
  |-- Calculate C_opt using Webster's formula
  |-- Apply practical limits (C_min, C_max)
  |-- Allocate green times using g_i formula
  |-- Check minimum green requirements
  |-- Calculate intergreen (amber + all-red) for each phase transition
  |-- Calculate pedestrian timing requirements
  |-- Verify pedestrian time fits within allocated green

Step 5: Select controller type
  |-- IF isolated intersection with stable patterns --> fixed-time or VA
  |-- IF on a corridor with adjacent signals --> coordinated (common cycle length)
  |-- IF complex/variable demand --> fully-actuated
  |-- IF part of area-wide system --> adaptive (escalate)

Step 6: Specify detection and equipment
  |-- Loop placement, PBU locations, signal head positions
  |-- Reference Skill #67 for stop line and crossing markings
  |-- Reference Skill #68 for signal advance warning signs
```

---

## 3. Professional Judgment (Universal)

### 3.1 Oversaturated Conditions

When Y >= 0.85 or the calculated cycle length exceeds 120 seconds, the intersection is at or near capacity. Options to consider before escalating:
- Add turn lanes or flared approaches to increase capacity
- Implement queue management (queue detection with adaptive phases)
- Consider alternative junction forms (roundabout, grade separation)
- Accept higher delay during a short peak period if off-peak operation is satisfactory

### 3.2 Flared Approaches

A flared approach widens the road at the stop line to provide additional lanes for short distances. This increases the saturation flow during the green period. Flares are effective when the queue can fill the additional lane(s) during the red period. Minimum flare length should accommodate at least 5 vehicles (approximately 30-35 m).

### 3.3 Queue Storage

Check that turn bays have adequate storage length for the 95th percentile queue. Queue length depends on the arrival rate during the red period and the number of cycles over which vehicles queue. If storage is insufficient, vehicles will block the adjacent through lane, reducing intersection capacity.

### 3.4 Signal Coordination Considerations

When multiple signalised intersections are close together (typically less than 800 m apart), coordination should be considered. Coordination requires a common cycle length across all intersections. The offset between intersections is set to create a "green wave" for the major traffic flow. Note that coordination for one direction may increase delay for the opposing direction -- the designer must determine the priority direction.

---

## 4. Common Errors (Universal)

1. **Under-counting pedestrians:** Pedestrian demand is often underestimated, leading to inadequate pedestrian phase time. Always conduct pedestrian counts alongside vehicle counts.
2. **Ignoring lost time in cycle calculation:** Each phase transition has start-up lost time and intergreen lost time. Failing to account for total lost time (L) produces incorrect cycle length calculations.
3. **Setting all-red too short:** All-red must allow a vehicle at the stop line when amber starts to clear the intersection. Using the formula R = (W + L_veh) / v_approach is critical. Underestimating the clearance distance creates a collision risk.
4. **Not checking maximum cycle length against delay tolerance:** A cycle length over 120 seconds means pedestrians wait over 2 minutes for a crossing opportunity. Many pedestrians will cross against the signal, creating a safety hazard.
5. **Omitting pedestrian phase entirely:** Even at intersections with low pedestrian volumes, some pedestrian provision is required. At minimum, concurrent pedestrian movement with adequate Walk time should be provided.
6. **Using nominal saturation flow without adjustment:** The default 1800 pcu/hr/lane must be adjusted for gradient, lane width, turning traffic, and heavy vehicles. Using the unadjusted value overpredicts capacity.
7. **Ignoring cycle failures:** If green time is too short for queued vehicles to clear, some vehicles are left over from the previous cycle (cycle failure). This compounds across cycles and rapidly degrades intersection performance.

---

## 5. Defaults (Universal)

When site-specific data is unavailable, use the following defaults. Flag all defaults clearly in outputs.

| Parameter | Default Value | Notes |
|-----------|---------------|-------|
| Saturation flow | 1800 pcu/hr/lane | Standard 3.0-3.5 m lane, flat grade, no turning |
| Lost time per phase | 2-3 seconds | Start-up lost time; depends on detection type |
| Amber time | 3 seconds | For approach speeds up to 60 km/h |
| All-red minimum | 1 second | Must calculate from clearance distance |
| Walking speed | 1.2 m/s | Standard; use 0.8 m/s near elderly/disability facilities |
| Minimum green (vehicle) | 7 seconds | To clear vehicles between stop line and detection zone |
| Minimum green (pedestrian Walk) | 4-7 seconds | To allow pedestrians to step off kerb |
| Vehicle length | 6 m | For all-red calculation |
| Eye height / signal visibility | 1.05 m driver eye | Stopping sight distance to signal head |
| Maximum cycle length | 120 seconds | 150 seconds absolute maximum |
| Minimum cycle length | 25-30 seconds | Below this, lost time proportion is excessive |

---

## 6. Validation (Universal)

Before finalising a signal timing plan, check:

1. **Cycle length within range:** 25 seconds <= C <= 150 seconds. If outside this range, review inputs.
2. **Green times meet minimums:** Every vehicle phase >= 7 seconds. Every pedestrian Walk phase >= 4 seconds.
3. **Y < 0.85:** If Y >= 0.85, the intersection is near capacity. Flag and escalate.
4. **All-red is positive:** R must be > 0 for every phase transition. If calculation gives zero, use 1 second minimum.
5. **Pedestrian time sufficient:** t_ped_green >= 7 + (W / v_walk) for every pedestrian crossing.
6. **Phase green >= pedestrian green:** If a vehicle phase has a concurrent pedestrian crossing, the vehicle green time must be at least as long as the pedestrian green time.
7. **Sum of phase times equals cycle:** Sum of (green + intergreen) for all phases should equal the cycle length.
8. **Queue storage adequate:** Turn bay lengths should accommodate the 95th percentile queue.

---

## 7. Escalation Triggers (Universal)

Refer to a senior traffic engineer or specialist when:

- **Y >= 0.85** -- Intersection at capacity; geometric improvements needed
- **C_opt > 120 seconds** -- Excessive delay; review junction form
- **Signal coordination required** -- Multiple intersections requiring linked operation
- **Adaptive control needed** -- Area-wide traffic control system (SCATS, SCOOT)
- **Unusual geometry** -- 5+ arm intersections, signalised roundabouts, staggered junctions
- **Full HCM v/c analysis needed** -- Detailed capacity/level of service assessment
- **Signalised roundabout** -- Specialist phasing and geometric design
- **Community pressure overrides engineering judgment** -- Signals requested where warrants are not met; political/community decision, not engineering
- **Railway level crossing interaction** -- Signal coordination with rail crossings
- **BRT or tram priority** -- Transit signal priority requiring special phases

---

## 8. Interfaces (Universal)

### 8.1 Inputs From Other Skills

| Source Skill | Data Received |
|-------------|---------------|
| Skill #13 (Design Standards Selection) | Road class, design speed, speed limit |
| Skill #19 (Intersection Design) | Junction geometry, lane configuration, turning radii, visibility splays |
| Skill #67 (Road Marking Design) | Stop line position, crossing marking type, junction marking layout |
| Skill #68 (Traffic Sign Design) | Signal advance warning signs, regulatory signs at intersection |

### 8.2 Outputs To Other Skills

| Destination Skill | Data Provided |
|-------------------|---------------|
| Skill #61 (Road Safety Audit) | Signal timing plan for safety review, phase conflict check |
| Skill #67 (Road Marking Design) | Signal-specific marking requirements (stop lines, crossing markings at signalised junctions) |
| Skill #68 (Traffic Sign Design) | Signal advance warning sign requirements, turn restriction signs |

---

## 9. Procedure (Universal)

1. **Collect data:** Classified turning movement counts (peak and off-peak), pedestrian counts, crash history, junction geometry, approach speeds. Reference Skill #19 for geometric data.
2. **Check warrants:** Apply warrant criteria from the applicable country module or the universal thresholds in `tables/signal_warrant_thresholds.json`. Document which warrants are met and which are not.
3. **If warrants not met:** Document the finding. Recommend alternatives. Do NOT proceed with signal design unless directed otherwise (and flag as escalation).
4. **Design phasing:** Start with 2-phase, add protected turns and pedestrian phases as needed based on volumes and crash history. Sketch the phase diagram showing movements served in each phase.
5. **Calculate timing:** Apply Webster's formula for cycle length, allocate green times, calculate intergreen for each phase transition, check pedestrian timing.
6. **Select controller:** Fixed-time, VA, semi-actuated, or fully-actuated based on context.
7. **Specify detection:** Loop placement plan, PBU locations, advance detection if VA.
8. **Specify equipment:** Signal head types and positions, pole locations (reference Skill #68 for sign placement on shared poles).
9. **Validate:** Check all validation criteria (Section 6). Adjust timing if necessary.
10. **Document:** Produce signal timing plan with phase diagram, timing values, equipment list, and detection layout.

---

## 10. Output Format (Universal)

### Signal Timing Plan

```
INTERSECTION: [Name/ID]
ROAD CLASS: [from Skill #13]
DESIGN SPEED: [km/h]
CONTROL TYPE: [fixed-time / VA / semi-actuated / fully-actuated]

WARRANT ANALYSIS:
  Warrant 1 (8-hr volume): [MET / NOT MET] -- [values vs thresholds]
  Warrant 2 (4-hr volume): [MET / NOT MET] -- [values vs thresholds]
  [etc.]
  Conclusion: Signal [justified / not justified]

PHASING:
  Phase A: [movements served, e.g., "N-S through + nearside turn"]
  Phase B: [movements served]
  Phase C: [if applicable]
  Pedestrian phases: [concurrent with Phase A / exclusive / etc.]

TIMING:
  Critical flow ratios: y_A = [value], y_B = [value], ...
  Y (sum) = [value]
  L (total lost time) = [value] seconds
  C_opt = (1.5 x [L] + 5) / (1 - [Y]) = [value] seconds
  C_selected = [value] seconds (practical adjustment if needed)

  Phase A: Green = [value]s, Amber = [value]s, All-red = [value]s
  Phase B: Green = [value]s, Amber = [value]s, All-red = [value]s
  Pedestrian: Walk = [value]s, Clearance = [value]s

  Cycle time = [value] seconds
  
EQUIPMENT:
  Signal heads: [count and type per approach]
  Detection: [loop/video/PBU locations]
  Controller: [type and features]

NOTES / ASSUMPTIONS:
  [List all assumptions, defaults used, and flags]

ESCALATION:
  [Any escalation triggers identified]
```

**Preliminary design disclaimer:** All signal timing outputs are preliminary/screening level. Detailed signal design requires traffic modelling software (e.g., SIDRA, LinSig, Synchro) and site-specific calibration. Professional review is required before implementation.
