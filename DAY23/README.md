# Day 23 - Ring Counter

## Description
Implemented a 4-bit Ring Counter using Verilog HDL.

## Concept
A Ring Counter is a circular shift register where the output of the last flip-flop is connected back to the first flip-flop.

Only one bit remains HIGH and circulates continuously.

## Input
- clk

## Output
- q[3:0]

## Sequence
0001 → 0010 → 0100 → 1000 → 0001

## Files Included
- design.sv
- testbench.sv
- waveform_day23.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Ring Counter Design
- Shift Register Concept
- Sequential Logic
- Clocked Circuits
- Concatenation Operator
- Waveform Verification
