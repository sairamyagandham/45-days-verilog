# Day 39 - PWM Generator

## Description
Implemented a PWM (Pulse Width Modulation) Generator using Verilog HDL.

## Concept
PWM generates digital pulses with varying ON and OFF times.

Duty cycle controls how long the output remains HIGH.

## Inputs
- clk
- duty[3:0]

## Output
- pwm

## Duty Cycle Formula
Duty Cycle = (ON Time / Total Time) × 100%

## Working
- Counter increments continuously
- If count < duty:
  - pwm = HIGH
- Else:
  - pwm = LOW

## Example
duty = 4

Counter Range:
0 → 15

PWM HIGH:
4 counts

PWM LOW:
12 counts

Duty Cycle:
25%

## Files Included
- design.sv
- testbench.sv
- waveform_day39.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- PWM Basics
- Duty Cycle Control
- Counter-based Design
- Digital Pulse Generation
- FPGA/ASIC Concepts
- Waveform Verification
