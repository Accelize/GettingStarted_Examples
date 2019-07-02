#!/bin/bash
echo "Programming FPGA with agfi = ${AGFI}"
sudo fpga-load-local-image -S 0 -I ${AGFI}
sudo fpga-load-local-image -S 1 -I ${AGFI} || true
