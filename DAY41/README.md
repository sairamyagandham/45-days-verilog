# Day 41 - Debouncer Circuit

## Description
Implemented a Debouncer Circuit using Verilog HDL.

## Concept
Mechanical switches generate multiple unwanted transitions (bounce) when pressed.

A debouncer removes these unwanted transitions and produces a clean output signal.

## Inputs
- clk
- btn

## Output
- btn_out

## Working
- Counter checks how long button remains HIGH.
- If button stays HIGH for a fixed duration:
  - btn_out becomes HIGH.
- If button is released:
  - Counter resets.
  - btn_out becomes LOW.

## Example

Button Input:
0 → 1 → 0 → 1 → 0 → 1

Debounced Output:
0 → 1

## Files Included
- design.sv
- testbench.sv
- waveform_day41.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- Switch Debouncing
- Counter-Based Filtering
- Sequential Logic
- Noise Removal
- Digital System Reliability
- Waveform Verification
