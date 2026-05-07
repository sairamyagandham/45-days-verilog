# Day 10 - Full Subtractor

## Description
Implemented a Full Subtractor using Verilog HDL.

## Concept
A Full Subtractor subtracts:
- Input B
- Borrow input (Bin)

from input A.

Outputs:
- Difference (Diff)
- Borrow output (Bout)

## Logic Equations
- diff = a ^ b ^ bin
- bout = (~a & b) | (b & bin) | (bin & ~a)

## Truth Table

| A | B | Bin | Diff | Bout |
|---|---|-----|------|------|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  0   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

## Files Included
- full_subtractor.v
- tb_full_subtractor.v
- waveform_day10.png

## Simulation
Simulated using EDA Playground and verified using EPWave.

## Learning Outcome
- Understanding binary subtraction
- Borrow generation
- XOR operation
- Arithmetic circuit design using Verilog
