# Day 43 - Digital Clock

## Description
Implemented a simple Digital Clock using Verilog HDL.

## Concept
A digital clock counts elapsed time using a counter driven by a clock signal.

This implementation counts seconds from 0 to 59 and then rolls over back to 0.

## Inputs
- clk
- reset

## Output
- seconds[5:0]

## Working

### Reset Operation
- When reset = 1
- seconds is cleared to 0

### Counting Operation
- On every positive edge of clk
- seconds increments by 1

### Roll Over
- When seconds reaches 59
- It resets back to 0

## Counter Sequence

0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 10 ...

After reaching:

59 → 0

## Waveform Observation

- Reset initializes the counter to 0
- Counter increments correctly on every clock edge
- Sequential counting behavior verified

Observed Values:

0 → 1 → 2 → 3 → 4 → 5 → 6 → 7 → 8 → 9 → 10

## Files Included
- design.sv
- testbench.sv
- waveform_day43.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Counter Design
- Sequential Logic
- Clock-Driven Circuits
- Time Counting
- Reset Logic
- Waveform Verification
