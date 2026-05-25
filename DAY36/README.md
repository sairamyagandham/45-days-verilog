# Day 36 - RAM Design

## Description
Implemented a Single-Port RAM using Verilog HDL.

## Concept
RAM (Random Access Memory) stores and retrieves data using memory addresses.

This RAM supports:
- Write Operation
- Read Operation

## Inputs
- clk
- we
- addr[3:0]
- din[7:0]

## Output
- dout[7:0]

## Memory Details
- 16 Memory Locations
- 8-bit Data Width

## Working

### Write Operation
- we = 1
- Data stored into selected address

Example:
Address 3 ← AA

### Read Operation
- we = 0
- Stored data appears on dout

Example:
dout = AA

## Waveform Observation

| Signal | Operation |
|---|---|
| we = 1 | Write Mode |
| we = 0 | Read Mode |
| addr = 3 | Access Memory Location 3 |
| din = AA | Data Written |
| dout = AA | Data Read Successfully |

## Notes
- Initial dout may show XX because memory is uninitialized before writing.

## Files Included
- design.sv
- testbench.sv
- waveform_day36.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- RAM Design
- Memory Read/Write Operations
- Addressing
- Data Storage
- Sequential Logic
- Waveform Verification
