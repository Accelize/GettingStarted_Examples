# Copyright 2019 Accelize
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Note: The host require to share the Accelize credential file with the container
#       "-v host_path_to_cred_json:/root/cred.json"

# Build the application
FROM xilinx/xilinx_runtime_base:aws_f1-2019-1-centos AS builder
COPY app/Makefile Makefile
COPY app/main.cpp main.cpp
COPY app/utils.mk utils.mk
ENV LD_LIBRARY_PATH /opt/xilinx/xrt/lib
ENV XRT_RELEASE_TAG 2019.2.0.3
ENV VIVADO_TOOL_VERSION 2019.2
ENV XILINX_VITIS /opt/Xilinx/Vitis/2019.2
ENV AWS_FPGA_REPO_DIR /aws-fpga
RUN yum -y install yum-utils epel-release redhat-lsb-core gcc gcc-c++ make kernel-devel && \
    yum-config-manager --add-repo https://accelize.s3.amazonaws.com/rpm/accelize_stable.repo && \
    yum install -y sudo git gcc gcc-c++ libstdc++-devel libaccelize-drm libaccelize-drm-devel centos-release-scl && \
    yum install -y devtoolset-7-gcc* && \
    source scl_source enable devtoolset-7 &&\
    curl -s https://aws-fpga-developer-ami.s3.amazonaws.com/1.8.0/Patches/XRT_2019_2/xrt_201920.2.3.0_7.7.1908-xrt.rpm -o xrt.rpm &&\
    curl -s https://aws-fpga-developer-ami.s3.amazonaws.com/1.8.0/Patches/XRT_2019_2/xrt_201920.2.3.0_7.7.1908-aws.rpm -o xrt-aws.rpm &&\
    yum -y install xrt*.rpm -y &&\
    git clone https://github.com/aws/aws-fpga.git --recursive &&\
    source $AWS_FPGA_REPO_DIR/vitis_runtime_setup.sh &&\
    source /opt/xilinx/xrt/setup.sh &&\
    g++ --version && g++ -dumpversion && \
    make all


# Build the container image
FROM xilinx/xilinx_runtime_base:aws_f1-2019-1-centos
RUN yum -y install yum-utils epel-release redhat-lsb-core && \
    yum-config-manager --add-repo https://accelize.s3.amazonaws.com/rpm/accelize_stable.repo && \
    yum install -y sudo libaccelize-drm && \
    curl -s https://aws-fpga-developer-ami.s3.amazonaws.com/1.8.0/Patches/XRT_2019_2/xrt_201920.2.3.0_7.7.1908-xrt.rpm -o xrt.rpm &&\
curl -s https://aws-fpga-developer-ami.s3.amazonaws.com/1.8.0/Patches/XRT_2019_2/xrt_201920.2.3.0_7.7.1908-aws.rpm -o xrt-aws.rpm &&\
    yum -y install xrt*.rpm -y &&\
    yum clean all && \
    rm -rf /var/cache/yum && \
    rm -rf /tmp/*
COPY app/conf.json /conf.json
COPY --from=builder app /app
COPY app/rtl_adder_pipes_aws-vu9p-f1_shell-v04261818_201920_2.awsxclbin /usr/local/share/app.awsxclbin

# Run the application
ENV XILINX_XRT /opt/xilinx/xrt
ENV LD_LIBRARY_PATH /opt/xilinx/xrt/lib
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/xilinx/xrt/bin
ENTRYPOINT ["/app", "/usr/local/share/app.awsxclbin"]
