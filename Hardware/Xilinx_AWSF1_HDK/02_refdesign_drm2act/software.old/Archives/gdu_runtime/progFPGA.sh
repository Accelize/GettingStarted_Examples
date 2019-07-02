#!/bin/bash
if [ $# -ne 1 ]
  then
    echo "Usage: AGFI Json File"
	exit 1
fi

agfi=$(cat $1 | grep agfi | cut -d'"' -f4)
echo "Programming FPGA with agfi = $agfi"
sudo fpga-load-local-image -S 0 -I $agfi
