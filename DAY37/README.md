# Day 37 - ROM Design

## Description
Implemented a simple ROM (Read Only Memory) using Verilog HDL.

## Concept
ROM stores fixed predefined data values.

The output depends on the input address.

Unlike RAM, ROM contents are fixed and cannot be modified during operation.

## Input
- addr[3:0]

## Output
- dout[7:0]

## Memory Contents

| Address | Data |
|---|---|
| 0 | 11 |
| 1 | 22 |
| 2 | 33 |
| 3 | 44 |
| 4 | 55 |
| 5 | 66 |
| 6 | 77 |
| 7 | 88 |

## Working
- Address input selects memory location
- Corresponding stored data appears on output
- Undefined addresses output 00

## Example
addr = 2 → dout = 33

## Waveform Observation

| Address | Output |
|---|---|
| 0 | 11 |
| 1 | 22 |
| 2 | 33 |
| 3 | 44 |
| 4 | 55 |

Output changes immediately when address changes.

## Files Included
- design.sv
- testbench.sv
- waveform_day37.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- ROM Design
- Memory Mapping
- Address Decoding
- Lookup Table Concepts
- Combinational Logic
- Waveform Verification
