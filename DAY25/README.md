# Day 25 - 4-bit Up Counter

## Description
Implemented a 4-bit Up Counter using Verilog HDL.

## Concept
An Up Counter increments its value by 1 on every positive edge of the clock.

The counter continuously counts upward in binary sequence.

## Input
- clk

## Output
- q[3:0]

## Counting Sequence
0000 → 0001 → 0010 → 0011 → 0100 → 0101 → ...

## Waveform Observation

| Clock Edge | q[3:0] |
|---|---|
| Initial | 0000 |
| ↑ | 0001 |
| ↑ | 0010 |
| ↑ | 0011 |
| ↑ | 0100 |
| ↑ | 0101 |
| ↑ | 0110 |
| ↑ | 0111 |
| ↑ | 1000 |
| ↑ | 1001 |
| ↑ | 1010 |

## Files Included
- design.sv
- testbench.sv
- waveform_day25.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Counter Design
- Sequential Logic
- Clocked Circuits
- Binary Counting
- Non-blocking Assignment
- Waveform Verification
