# Day 08 - Half Adder

## Description
Implemented a Half Adder using Verilog HDL.

## Concept
A Half Adder adds two single-bit binary numbers and produces:
- SUM
- CARRY

## Equations
- sum = a ^ b
- carry = a & b

## Truth Table

| a | b | sum | carry |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

## Files Included
- half_adder.v
- tb_half_adder.v
- waveform_day08.png

## Simulation
Verified functionality using EDA Playground and EPWave waveform viewer.

## Learning Outcome
- Understanding binary addition
- XOR gate operation
- AND gate operation
- Arithmetic circuit basics
- Waveform verification
