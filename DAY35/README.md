# Day 35 - UART Receiver Basics

## Description
Implemented a basic UART Receiver using Verilog HDL.

## Concept
UART Receiver converts serial input data into parallel 8-bit data.

The receiver detects:
- Start Bit
- Data Bits
- Stop Bit

## Inputs
- clk
- rx

## Output
- data_out[7:0]

## UART Frame Format

| Part | Bits |
|---|---|
| Start Bit | 1 |
| Data Bits | 8 |
| Stop Bit | 1 |

## Data Received
AA (Hexadecimal)

Binary:
10101010

## Working

### Idle State
- rx remains HIGH

### Start Bit Detection
- Receiver detects rx = 0

### Data Reception
- Serial bits received one-by-one
- Bits stored into data_out register

### Stop Bit
- Reception completes after stop bit

## Counter Operation

| Count | Function |
|---|---|
| 0 | Waiting for Start Bit |
| 1-8 | Receiving Data Bits |
| 9 | Stop Bit |

## Waveform Observation
- Receiver correctly detects start bit
- Counter increments from 0 to 9
- data_out builds gradually
- Final received data becomes AA

## Files Included
- design.sv
- testbench.sv
- waveform_day35.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- UART Receiver Design
- Serial Communication
- Bit Reception
- Parallel Data Storage
- Sequential Logic
- Waveform Verification
