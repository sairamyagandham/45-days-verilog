# Day 21 - SIPO Shift Register

## Description
Implemented a 4-bit SIPO (Serial In Parallel Out) Shift Register using Verilog HDL.

## Concept
A SIPO shift register accepts serial input data and provides parallel output.

Data shifts one stage on every positive edge of the clock.

## Inputs
- clk
- data_in

## Output
- q[3:0]

## Working
At every positive clock edge:
- q[0] gets data_in
- q[1] gets previous q[0]
- q[2] gets previous q[1]
- q[3] gets previous q[2]

## Files Included
- design.sv
- testbench.sv
- waveform_day21.png
- README.md

## Waveform Observation

| Clock Edge | data_in | q[3:0] |
|---|---|---|
| Initial | - | 0000 |
| ↑ | 1 | 0001 |
| ↑ | 0 | 0010 |
| ↑ | 1 | 0101 |
| ↑ | 1 | 1011 |
| ↑ | 0 | 0110 |

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Sequential Logic
- Shift Register Design
- Serial to Parallel Conversion
- Clocked Circuits
- Non-blocking Assignment
- Waveform Verification
