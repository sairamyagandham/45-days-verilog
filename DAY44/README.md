# Day 44 - SPI Master Basics

## Description
Implemented a basic SPI (Serial Peripheral Interface) Master in Verilog HDL.

## Concept
SPI is a synchronous serial communication protocol used for data transfer between a master device and one or more slave devices.

The master generates the clock and controls communication.

## Inputs
- clk
- start
- data_in[7:0]

## Outputs
- mosi
- sclk
- cs

## SPI Signals

| Signal | Description |
|----------|------------|
| MOSI | Master Out Slave In |
| SCLK | Serial Clock |
| CS | Chip Select |

## Working

### Idle State
- CS remains HIGH
- Slave device is not selected

### Transmission
- CS goes LOW
- Data bits are shifted out through MOSI
- SCLK toggles during transmission

### Completion
- After transmitting 8 bits
- CS returns HIGH
- Transmission ends

## Example

Input Data:
10101010

MOSI Output:
1 → 0 → 1 → 0 → 1 → 0 → 1 → 0

## Files Included
- design.sv
- testbench.sv
- waveform_day44.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- SPI Protocol Basics
- Serial Data Transmission
- Shift Registers
- Clock Generation
- Communication Interfaces
- Waveform Verification
