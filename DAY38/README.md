# Day 38 - FIFO Design Basics

## Description
Implemented a basic FIFO (First In First Out) memory using Verilog HDL.

## Concept
FIFO stores and retrieves data in the same order.

The first data written into FIFO is the first data read out.

## Inputs
- clk
- rst
- wr_en
- rd_en
- din[7:0]

## Output
- dout[7:0]

## FIFO Details
- FIFO Depth: 8
- Data Width: 8-bit

## Working

### Write Operation
- wr_en = 1
- Data stored into FIFO
- Write pointer increments

### Read Operation
- rd_en = 1
- Oldest data read from FIFO
- Read pointer increments

## Example

### Write
11 → 22 → 33

### Read
11 → 22 → 33

FIFO maintains same order.

## Files Included
- design.sv
- testbench.sv
- waveform_day38.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- FIFO Basics
- Memory Buffering
- Pointer Logic
- Sequential Circuits
- ASIC/FPGA Concepts
- Waveform Verification
