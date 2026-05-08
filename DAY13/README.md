# Day 13 - 2-to-4 Decoder

## Description
Implemented a 2-to-4 Decoder using Verilog HDL.

## Concept
A decoder converts binary input data into one active output line.

For every input combination, only one output becomes HIGH.

## Inputs
- a
- b

## Outputs
- y0
- y1
- y2
- y3

## Files Included
- design.sv
- testbench.sv
- waveform_day13.png
- README.md

## Truth Table

| a | b | y0 | y1 | y2 | y3 |
|---|---|---|---|---|---|
| 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 1 | 0 | 0 |
| 1 | 0 | 0 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 | 0 | 1 |

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Decoder Design
- Combinational Logic
- Boolean Expressions
- Waveform Verification
