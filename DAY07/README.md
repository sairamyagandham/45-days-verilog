# Day 07 - Priority Encoder

## Description
Implemented a 4:2 Priority Encoder using Verilog HDL.

## Concept
A Priority Encoder gives priority to the highest-order input when multiple inputs are HIGH.

Priority Order:
in[3] > in[2] > in[1] > in[0]

## Truth Table

| Input | Output |
|--------|--------|
| 0001 | 00 |
| 0010 | 01 |
| 0100 | 10 |
| 1000 | 11 |
| 1010 | 11 |
| 0110 | 10 |

## Files Included
- priority_encoder_4to2.v
- tb_priority_encoder_4to2.v
- waveform_day07.png

## Simulation
Verified functionality using EDA Playground and EPWave waveform viewer.

## Learning Outcome
- Understanding of Priority Encoder
- Priority-based logic handling
- if-else implementation in Verilog
- Handling multiple active inputs
- Waveform verification
