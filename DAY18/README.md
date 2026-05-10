# Day 18 - JK Flip-Flop

## Description
Implemented a JK Flip-Flop using Verilog HDL.

## Concept
A JK Flip-Flop is a sequential circuit that stores 1-bit data.

It eliminates the invalid state of SR Flip-Flop.

## Inputs
- clk
- j
- k

## Output
- q

## Truth Table

| J | K | Operation |
|---|---|---|
| 0 | 0 | Hold |
| 0 | 1 | Reset |
| 1 | 0 | Set |
| 1 | 1 | Toggle |

## Files Included
- design.sv
- testbench.sv
- waveform_day18.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Sequential Logic
- JK Flip-Flop Design
- Toggle Operation
- Clocked Circuits
- Case Statement
- Waveform Verification
