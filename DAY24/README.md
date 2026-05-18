# Day 24 - Johnson Counter

## Description
Implemented a 4-bit Johnson Counter using Verilog HDL.

## Concept
A Johnson Counter is a modified ring counter where the inverted output of the last flip-flop is fed back to the first flip-flop.

It generates 2N states using N flip-flops.

## Input
- clk

## Output
- q[3:0]

## Sequence
0000 → 1000 → 1100 → 1110 → 1111 → 0111 → 0011 → 0001 → 0000

## Files Included
- design.sv
- testbench.sv
- waveform_day24.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Johnson Counter Design
- Shift Register Concept
- Sequential Logic
- Feedback Logic
- Concatenation Operator
- Waveform Verification
