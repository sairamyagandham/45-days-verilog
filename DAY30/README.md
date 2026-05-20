# Day 30 - Sequence Detector (Mealy FSM)

## Description
Implemented a Sequence Detector using Mealy FSM in Verilog HDL.

## Concept
A sequence detector identifies a specific bit pattern from serial input data.

This design detects the sequence:
101

## Inputs
- clk
- in

## Output
- out

## FSM States

| State | Meaning |
|---|---|
| S0 | Initial State |
| S1 | Detected '1' |
| S2 | Detected '10' |

## State Transitions

- S0 → S1 when input = 1
- S1 → S2 when input = 0
- S2 → S1 and output = 1 when input = 1

## Detection Sequence
101

## Waveform Observation

| Input Sequence | Output |
|---|---|
| 1 | 0 |
| 10 | 0 |
| 101 | 1 |

## Files Included
- design.sv
- testbench.sv
- waveform_day30.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- FSM Design
- Mealy FSM
- Sequence Detection
- State Transition Logic
- Sequential Circuits
- Waveform Verification
