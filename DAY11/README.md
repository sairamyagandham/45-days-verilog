# Day 11 - 4-bit Ripple Carry Adder

## Description
Implemented a 4-bit Ripple Carry Adder using Verilog HDL.

## Concept
A Ripple Carry Adder adds two multi-bit binary numbers using multiple Full Adders connected in series.

The carry output from one Full Adder becomes the carry input for the next Full Adder.

Inputs:
- a[3:0]
- b[3:0]
- cin

Outputs:
- sum[3:0]
- cout

## Working
- Four Full Adders are connected together.
- Carry propagates from LSB stage to MSB stage.
- Final carry is generated as cout.

## Files Included
- ripple_carry_adder.v
- tb_ripple_carry_adder.v
- waveform_day11.png

## Test Cases

| A | B | Sum | Cout |
|---|---|---|---|
| 0001 | 0010 | 0011 | 0 |
| 0100 | 0011 | 0111 | 0 |
| 0111 | 0001 | 1000 | 0 |
| 1111 | 0001 | 0000 | 1 |

## Simulation
Simulated using EDA Playground and verified using EPWave.

## Learning Outcome
- Multi-bit binary addition
- Carry propagation
- Full Adder chaining
- Arithmetic circuit implementation using Verilog
