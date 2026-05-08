# Day 14 - 2-bit Comparator

## Description
Implemented a 2-bit Comparator using Verilog HDL.

## Concept
A comparator compares two binary numbers and determines whether:
- A > B
- A < B
- A == B

## Inputs
- a[1:0]
- b[1:0]

## Outputs
- greater
- less
- equal

## Files Included
- design.sv
- testbench.sv
- waveform_day14.png
- README.md

## Test Cases

| A | B | greater | less | equal |
|---|---|---|---|---|
| 00 | 01 | 0 | 1 | 0 |
| 10 | 01 | 1 | 0 | 0 |
| 11 | 11 | 0 | 0 | 1 |
| 01 | 10 | 0 | 1 | 0 |

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Comparator Design
- Relational Operators
- Combinational Logic
- Waveform Verification
