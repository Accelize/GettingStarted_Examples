#!/bin/bash
: ${1?"Usage: $0 <GBS_FILE_PATH>"}

# Get FPGA Boards Info
PCIE_INFO=$(fpgainfo fme | grep PCIe | head -n 1)

# Extract Slot/Bus/Device/Focntion info
SLOT=$(echo $PCIE_INFO | cut -d ':' -f5)
BUS=$(echo $PCIE_INFO | cut -d ':' -f6)
DEV=$(echo $PCIE_INFO | cut -d ':' -f7)
FCT=$(echo $PCIE_INFO | cut -d ':' -f8)

# Hex to Dec
SLOT_DEC=$(echo "obase=10; ibase=16; $SLOT" | bc)
BUS_DEC=$(echo "obase=10; ibase=16; $BUS" | bc)
DEV_DEC=$(echo "obase=10; ibase=16; $DEV" | bc)
FCT_DEC=$(echo "obase=10; ibase=16; $FCT" | bc)

# Prog FPGA Board

echo "$SLOT_DEC / $BUS_DEC / $DEV_DEC / $FCT_DEC"
fpgaconf -v -S $SLOT_DEC -B $BUS_DEC -D $DEV_DEC -F $FCT_DEC $1
