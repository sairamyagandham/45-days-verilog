# Day 45 - I2C Controller Basics

## Description
Implemented a basic I2C Controller in Verilog HDL.

## Concept
I2C (Inter-Integrated Circuit) is a two-wire serial communication protocol used to connect processors, sensors, EEPROMs, RTC modules, and other peripherals.

## Inputs
- clk
- start

## Outputs
- scl
- sda

## I2C Signals

| Signal | Description |
|----------|------------|
| SCL | Serial Clock Line |
| SDA | Serial Data Line |

## Working

### Idle State
- SCL = 1
- SDA = 1

### START Condition
- SDA transitions from HIGH to LOW
- SCL remains HIGH

### Data Transfer
- Data is transferred using SDA
- Clock pulses generated on SCL

### STOP Condition
- SDA transitions from LOW to HIGH
- SCL remains HIGH

## State Sequence

Idle → Start → Transfer → Stop → Idle

## Waveform Observation

### Idle
SCL = 1
SDA = 1

### Start Condition
SDA goes LOW while SCL remains HIGH

### Stop Condition
SDA returns HIGH while SCL remains HIGH

## Files Included
- design.sv
- testbench.sv
- waveform_day45.png
- README.md

## Tools Used
- Verilog HDL
- EDA Playground
- EPWave
- GitHub

## Learning Outcome
- I2C Protocol Basics
- Start/Stop Conditions
- Serial Communication
- FSM-Based Design
- Communication Interfaces
- Waveform Verification
