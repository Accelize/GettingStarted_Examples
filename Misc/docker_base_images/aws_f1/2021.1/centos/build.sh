#!/usr/bin/env bash
#
# (C) Copyright 2019, Xilinx, Inc.
#
#!/usr/bin/env bash

TAG="xilinx/xilinx_runtime_base:aws_f1-2021-1-centos"

while true
do
case "$1" in
        -t|--tag        ) TAG="$2"     ; shift 2 ;;
*) break ;;
esac
done

docker build -t $TAG .

