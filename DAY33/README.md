# Day 33 - Vending Machine FSM

## Description
Implemented a Vending Machine Controller using FSM concepts in Verilog HDL.

## Concept
The vending machine dispenses a product after receiving sufficient coins.

The FSM tracks inserted coins using state transitions.

## Inputs
- clk
- coin

## Output
- dispense

## FSM States

| State | Amount |
|---|---|
| S0 | 0 |
| S1 | 5 |
| S2 | 10 (Dispense) |

## Working

### S0
- Initial state
- Waits for first coin

### S1
- One coin inserted
- Waits for second coin

### S2
- Product dispensed
- FSM returns to S0

## State Transitions

S0 → S1 → S2 → S0

## Waveform Observation

| Coin Input | dispense |
|---|---|
| 0 | 0 |
| 1st coin | 0 |
| 2nd coin | 1 |

When sufficient coins are inserted, dispense signal becomes HIGH.

## Files Included
- design.sv
- testbench.sv
- waveform_day33.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- FSM Design
- Vending Machine Logic
- State Transitions
- Sequential Circuits
- Clocked Design
- Waveform Verification
