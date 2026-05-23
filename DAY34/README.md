# Day 34 - UART Transmitter Basics

## Description
Implemented a basic UART Transmitter using Verilog HDL.

## Concept
UART (Universal Asynchronous Receiver Transmitter) is used for serial communication.

The transmitter sends:
- Start Bit
- 8 Data Bits
- Stop Bit

## Inputs
- clk
- start
- data[7:0]

## Output
- tx

## UART Frame Format

| Part | Bits |
|---|---|
| Start Bit | 1 |
| Data Bits | 8 |
| Stop Bit | 1 |

## Data Used
AA (Hexadecimal)

Binary:
10101010

## Working

### Idle State
- tx remains HIGH

### Start Bit
- tx becomes LOW

### Data Transmission
- Data bits transmitted serially
- LSB transmitted first

### Stop Bit
- tx becomes HIGH again

## Counter Operation

| Count | Function |
|---|---|
| 0 | Start Bit |
| 1-8 | Data Bits |
| 9 | Stop Bit |

## Waveform Observation
- UART frame transmitted correctly
- Counter increments from 0 to 9
- tx line follows UART protocol

## Files Included
- design.sv
- testbench.sv
- waveform_day34.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- UART Basics
- Serial Communication
- Bit-wise Transmission
- Sequential Logic
- Counter-based Control
- Waveform Verification
