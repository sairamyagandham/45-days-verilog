# Day 12 - 4-bit Ripple Carry Subtractor

## Description
Implemented a 4-bit Ripple Carry Subtractor using Verilog HDL.

## Concept
A Ripple Carry Subtractor performs subtraction of two 4-bit binary numbers using cascaded Full Subtractors.

The borrow generated from one stage is propagated to the next stage.

## Inputs
- a[3:0]
- b[3:0]
- bin

## Outputs
- diff[3:0]
- bout

## Files Included
- design.sv
- testbench.sv
- waveform_day12.png
- README.md

## Test Cases

| A | B | Diff | Bout |
|---|---|---|---|
| 0100 | 0001 | 0011 | 0 |
| 0111 | 0010 | 0101 | 0 |
| 1000 | 0001 | 0111 | 0 |
| 0000 | 0001 | 1111 | 1 |

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Full Subtractor Design
- Borrow Propagation
- Multi-bit Binary Subtraction
- Structural Modeling in Verilog
- Waveform Verification
