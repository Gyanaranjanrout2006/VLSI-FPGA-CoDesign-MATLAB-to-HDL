# VLSI & FPGA Co-Design — MATLAB to HDL FIR Filter

## Project Overview

This project demonstrates the complete VLSI and FPGA co-design flow
from MATLAB algorithm development to HDL generation and FPGA-oriented
implementation using Xilinx Vivado.

## Tools Used

- MATLAB R2024b
- HDL Coder
- Fixed-Point Designer
- Xilinx Vivado 2025.1
- Verilog HDL

## Design

- FIR Filter
- Sampling Frequency: 1000 Hz
- Cutoff Frequency: 100 Hz
- Filter Order: 15
- Number of Taps: 16
- Fixed-point format: 16-bit

## Design Flow

MATLAB
↓
Fixed-Point FIR Filter
↓
HDL Coder
↓
Verilog
↓
Vivado Simulation
↓
RTL Analysis
↓
Synthesis
↓
Implementation
↓
Timing Analysis
↓
Power Analysis

## Results

### Timing

- WNS: 7.925 ns
- WHS: 0.163 ns
- Failing Endpoints: 0
- Timing Constraints: Met

### Resource Utilization

- LUTs: 255
- Registers: 224
- DSPs: 13

### Power

- Total On-Chip Power: 0.12 W
- Dynamic Power: 0.041 W
- Static Power: 0.078 W

## Repository Structure

matlab/
hdl/
constraints/
screenshots/
report/

## Conclusion

The project successfully demonstrates the MATLAB-to-HDL
VLSI/FPGA co-design flow using a fixed-point FIR digital filter.
