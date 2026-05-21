# Day 32 - Elevator Controller FSM

## Description
Implemented an Elevator Controller using Finite State Machine (FSM) concepts in Verilog HDL.

## Concept
The Elevator Controller changes floors based on request inputs.

The FSM transitions between floor states depending on user requests.

## Inputs
- clk
- req[1:0]

## Output
- floor[1:0]

## Floor Mapping

| Request | Floor |
|---|---|
| 00 | Floor 0 |
| 01 | Floor 1 |
| 10 | Floor 2 |

## FSM States

| State | Floor |
|---|---|
| S0 | Floor 0 |
| S1 | Floor 1 |
| S2 | Floor 2 |

## Working

### S0
- Elevator stays at Floor 0
- If req = 01 → move to Floor 1
- If req = 10 → move to Floor 2

### S1
- Elevator stays at Floor 1
- If req = 00 → move to Floor 0
- If req = 10 → move to Floor 2

### S2
- Elevator stays at Floor 2
- If req = 00 → move to Floor 0
- If req = 01 → move to Floor 1

## Waveform Observation

| Request | Floor Output |
|---|---|
| 00 | 0 |
| 01 | 1 |
| 10 | 2 |
| 00 | 0 |

FSM transitions correctly between floors based on requests.

## Files Included
- design.sv
- testbench.sv
- waveform_day32.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- FSM Design
- Elevator Control Logic
- State Transitions
- Sequential Logic
- Clocked Circuits
- Waveform Verification
