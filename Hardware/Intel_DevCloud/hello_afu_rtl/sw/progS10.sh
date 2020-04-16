#!/bin/bash
: ${1?"Usage: $0 <GBS_FILE_PATH>"}

# Get FPGA Boards Info
PCIE_INFO=$(lspci | grep accel | cut -d':' -f 1 | tail -n 1)

# Prog FPGA Board
fpgaconf -B 0x$PCIE_INFO $1
