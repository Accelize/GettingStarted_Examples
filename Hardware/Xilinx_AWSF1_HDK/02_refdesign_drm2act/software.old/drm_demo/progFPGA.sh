#!/bin/bash
AGFI=agfi-0d9ba76c72939e3c1
#AGFI=agfi-03a53ce29061cfc22
#AGFI=agfi-0c1847c2b22791bb4
#echo "Programming FPGA with agfi = ${AGFI}"
sudo fpga-load-local-image -S 0 -I ${AGFI}
sudo fpga-load-local-image -S 1 -I ${AGFI}
sudo fpga-load-local-image -S 2 -I ${AGFI}
sudo fpga-load-local-image -S 3 -I ${AGFI}
sudo fpga-load-local-image -S 4 -I ${AGFI}
sudo fpga-load-local-image -S 5 -I ${AGFI}
sudo fpga-load-local-image -S 6 -I ${AGFI}
sudo fpga-load-local-image -S 7 -I ${AGFI}
