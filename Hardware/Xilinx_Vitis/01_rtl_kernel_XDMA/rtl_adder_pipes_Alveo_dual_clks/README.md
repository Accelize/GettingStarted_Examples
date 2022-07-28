# Adder With Pipes (RTL) example designs

The following example designs are based on [Xilinx Vitis Accel examples](https://github.com/Xilinx/Vitis_Accel_Examples)
Each of them shows a different environment in which one could integrate the Accelize DRM IPs


## Supported  Environements and Platform

Environement    | Platform           | XRT/VM Image Name  | DockerHub TAG                                 |
:---------------|:-------------------|:------------------:|:---------------------------------------------:|
On-Premise      |Xilinx Alveo U50    |2021.1, 2022.1      | alveo_u50_xrt_2021.1, alveo_u50_xrt_2022.1    |
On-Premise      |Xilinx Alveo U50LV  |2021.1, 2022.1      | alveo_u50lv_xrt_2021.1, alveo_u50lv_xrt_2022.1|
On-Premise      |Xilinx Alveo U55C   |2021.1, 2022.1      | alveo_u55C_xrt_2021.1, alveo_u55C_xrt_2022.1  |
On-Premise      |Xilinx Alveo U200   |2021.1, 2022.1      | alveo_u200_xrt_2021.1, alveo_u200_xrt_2022.1  |
On-Premise      |Xilinx Alveo U250   |2021.1, 2022.1      | alveo_u250_xrt_2021.1, alveo_u250_xrt_2022.1  |
On-Premise      |Xilinx Alveo U280   |2021.1, 2022.1      | alveo_u280_xrt_2021.1, alveo_u280_xrt_2022.1  |
On-Premise      |Xilinx VCK5000      |2021.2              | vck5000_xrt_2021.2                            |
                |                    |                    |                                               |
Cloud           |VMAccel U50         |2021.1, 2022.1      | alveo_u50_xrt_2021.1, alveo_u50_xrt_2022.1    |
Cloud           |VMAccel U55C        |2022.1              | alveo_u55C_xrt_2022.1                         |
Cloud           |VMAccel U200        |2021.1, 2022.1      | alveo_u200_xrt_2021.1, alveo_u200_xrt_2022.1  |
Cloud           |VMAccel U250        |2022.1              | alveo_u250_xrt_2022.1                         |
Cloud           |VMAccel U280        |2021.1, 2022.1      | alveo_u280_xrt_2021.1, alveo_u280_xrt_2022.1  |
Cloud           |VMAccel VCK5000     |2021.2              | vck5000_xrt_2021.2                            |
                |                    |                    |                                               |
Cloud           |AWS F1              |FPGA Dev AMI 1.11.4 / XRT 2021.1 | aws_f1_2021.1                    |
Cloud           |AWS F1              |FPGA Dev AMI 1.12.1 / XRT 2021.2 | aws_f1_2021.2                    |
                |                    |                    |                                               |
Cloud           |Azure NP10s         |xilinx_xrt2021_1_ubuntu1804_deployment_image | azure_np10_2021.1    |


## Instructions:

For each board/platform a specific Makefile is provided: "Makefile.<configuration>"
1. You can run design synthesis using:
```bash
make -f Makefile.<configuration> synthesis
```

2. You can generate an archive with the app and the bistream using:
```bash
make -f Makefile.<configuration> package
```

3. You can generate the docker image using:
```bash
make -f Makefile.<configuration> docker_image
```

**Note:** For AWS and Azure, extra steps are needed after synthesis. Refer to the specific section below.

## Per-platform Steps:

+ Alveo U50
```bash
make -f Makefile.alveo_u50 synthesis
make -f Makefile.alveo_u50 package
make -f Makefile.alveo_u50 docker_image
```

+ Alveo U50LV
```bash
make -f Makefile.alveo_u50lv synthesis
make -f Makefile.alveo_u50lv package
make -f Makefile.alveo_u50lv docker_image
```

+ Alveo U55C
```bash
make -f Makefile.alveo_u55c synthesis
make -f Makefile.alveo_u55c package
make -f Makefile.alveo_u55c docker_image
```

+ Alveo U200
```bash
make -f Makefile.alveo_u200 synthesis
make -f Makefile.alveo_u200 package
make -f Makefile.alveo_u200 docker_image
```

+ Alveo U250
```bash
make -f Makefile.alveo_u250 synthesis
make -f Makefile.alveo_u250 package
make -f Makefile.alveo_u250 docker_image
```

+ Alveo U280
```bash
make -f Makefile.alveo_u250 synthesis
make -f Makefile.alveo_u250 package
make -f Makefile.alveo_u250 docker_image
```

+ AWS F1
```bash
make -f Makefile.aws_f1 synthesis
make -f Makefile.aws_f1 S3_BUCKET_NAME=<VALUE> create_afi
make -f Makefile.aws_f1 AFI_ID=<VALUE> wait_for_afi
make -f Makefile.aws_f1 package
make -f Makefile.aws_f1 docker_image
```

+ Azure NP10
```bash
make -f Makefile.azure_np10 synthesis
make -f Makefile.azure_np10 STORAGE_ACCNT=<VALUE> BLOB_CONTAINER=<VALUE> xclbin_attestation
make -f Makefile.azure_np10 package
make -f Makefile.azure_np10 docker_image
```

+ VCK5000
```bash
make -f Makefile.vck5000 synthesis
make -f Makefile.vck5000 package
make -f Makefile.vck5000 docker_image
```
