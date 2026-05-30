# Day 42 - Stopwatch Design

## Description
Implemented a simple Stopwatch using Verilog HDL.

## Concept
A stopwatch is a digital timer that counts clock pulses when enabled.

The stopwatch supports:
- Start
- Stop
- Reset

## Inputs
- clk
- start
- stop
- reset

## Output
- count[7:0]

## Working

### Reset Operation
- When reset = 1
- Counter is cleared to 0

### Start Operation
- When start = 1 and stop = 0
- Counter increments on every positive clock edge

### Stop Operation
- When stop = 1
- Counter holds its current value

### Resume Operation
- When stop returns to 0
- Counter resumes counting

## Waveform Observation

| Condition | Counter Behavior |
|------------|------------------|
| reset = 1 | count = 0 |
| start = 1 | counting starts |
| stop = 1 | counting pauses |
| stop = 0 | counting resumes |
| reset = 1 | count resets to 0 |

Observed Count:
0 → 1 → 2 → 3 → Hold → Resume → Reset → 0

## Files Included
- design.sv
- testbench.sv
- waveform_day42.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Sequential Circuit Design
- Counter Design
- Start/Stop Control Logic
- Reset Logic
- Clocked Systems
- Waveform Verification
