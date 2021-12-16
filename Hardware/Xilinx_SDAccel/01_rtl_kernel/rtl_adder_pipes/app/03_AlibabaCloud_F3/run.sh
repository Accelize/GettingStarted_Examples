#!/bin/bash
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/root/xbinst_oem/runtime/platforms/xilinx_vu9p_faas_f3/driver
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib64
./app $*
