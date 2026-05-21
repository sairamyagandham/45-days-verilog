# Day 31 - Traffic Light Controller

## Description
Implemented a Traffic Light Controller using Verilog HDL and FSM concepts.

## Concept
A Traffic Light Controller changes traffic signals sequentially using state transitions.

The controller cycles through:
RED → GREEN → YELLOW → RED

## Input
- clk

## Outputs
- red
- yellow
- green

## FSM States

| State | Active Light |
|---|---|
| S0 | RED |
| S1 | GREEN |
| S2 | YELLOW |

## Working

### S0
- RED light ON
- GREEN and YELLOW OFF

### S1
- GREEN light ON
- RED and YELLOW OFF

### S2
- YELLOW light ON
- RED and GREEN OFF

After S2, FSM returns to S0.

## Waveform Observation

| Clock Cycle | RED | GREEN | YELLOW |
|---|---|---|---|
| S0 | 1 | 0 | 0 |
| S1 | 0 | 1 | 0 |
| S2 | 0 | 0 | 1 |

The sequence continuously repeats.

## Files Included
- design.sv
- testbench.sv
- waveform_day31.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- FSM Design
- Traffic Light Control
- State Transitions
- Sequential Logic
- Clocked Circuits
- Waveform Verification
