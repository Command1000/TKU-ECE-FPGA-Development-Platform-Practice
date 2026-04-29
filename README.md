# TKU-ECE-FPGA-DEVELOPMENT-PLATFORM-INTRODUCTION-LAB-PRACTICE

## Project Overview
Coursework for TKU ECE: FPGA Development Platform Introduction.

This project implements a synchronized Multi-Speed Large-Scale Ring Display across four 7-segment displays (HEX0-HEX3) on the Terasic DE0 (Cyclone III) FPGA board. The design features a continuous rectangular animation loop and real-time frequency switching logic.

## Logic Implementation
* Large-Scale Loop: The LED light travels across the top segments of all four displays, turns at the right edge (HEX0), returns via the bottom segments, and turns back at the left edge (HEX3).
* Quad-Speed Selection: Real-time frequency switching between 1Hz, 2Hz, 10Hz, and 1kHz using SW[1:0].
* Modular Architecture: Separated logic into top-level mapping, timing control, and path driving to ensure code clarity.

## Files Included
* DE0_TOP.v: Top-level module and I/O mapping.
* ring_controller.v: Timing logic and 12-step state machine.
* ring_driver.v: Large ring path decoder for 7-segment displays.
* DE0_TOP.qpf: Quartus Project File.
* DE0_TOP.qsf: Quartus Settings File.
* DE0_TOP.sdc: Synopsys Design Constraints.

## Notice & License
* Academic Integrity: For reference only. Direct copying is not recommended for academic integrity.
* Hardware Template: The top-level design is based on the official hardware template provided by Terasic Technologies Inc.
* Logic Design: All custom logic (ring path, speed MUX, and state control) is implemented by TSENG SHENG YU.
* Usage: This repository is for academic and educational purposes only.
