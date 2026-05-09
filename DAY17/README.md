# Day 17 - D Flip-Flop

## Description
Implemented a D Flip-Flop using Verilog HDL.

## Concept
A D Flip-Flop stores 1-bit data on the positive edge of the clock.

The output Q follows input D only during the rising edge of the clock.

## Inputs
- clk
- d

## Output
- q

## Files Included
- design.sv
- testbench.sv
- waveform_day17.png
- README.md

## Working
- Data is captured at the positive edge of the clock.
- Q updates only when the clock transitions from 0 to 1.

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Sequential Logic
- Clock Signal Generation
- posedge Triggering
- always Block
- D Flip-Flop Design
- Waveform Verification
