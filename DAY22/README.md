# Day 22 - PISO Shift Register

## Description
Implemented a 4-bit PISO (Parallel In Serial Out) Shift Register using Verilog HDL.

## Concept
A PISO shift register loads parallel data and shifts it out serially one bit at a time.

## Inputs
- clk
- load
- parallel_in[3:0]

## Output
- q

## Working
- When load = 1, parallel data is loaded into the register.
- When load = 0, data shifts serially on every positive clock edge.

## Files Included
- design.sv
- testbench.sv
- waveform_day22.png
- README.md

## Example
Input:
1011

Serial Output:
1 → 0 → 1 → 1

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Shift Register Design
- Parallel to Serial Conversion
- Sequential Logic
- Clocked Circuits
- Data Shifting
- Waveform Verification
