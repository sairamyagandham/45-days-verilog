# Day 09 - Full Adder

## Description
Implemented a Full Adder using Verilog HDL.

## Concept
A Full Adder performs addition of three 1-bit inputs:
- Input A
- Input B
- Carry Input (Cin)

Outputs:
- Sum
- Carry Output (Cout)

## Logic Equations
- Sum = A ^ B ^ Cin
- Cout = (A & B) | (B & Cin) | (A & Cin)

## Truth Table

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

## Files Included
- full_adder.v
- tb_full_adder.v
- waveform_day09.png

## Simulation
Simulated using EDA Playground and verified using EPWave.

## Learning Outcome
- Understanding binary addition
- Carry generation
- XOR gate operation
- Arithmetic circuit implementation in Verilog
