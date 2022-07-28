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

# Build the application
FROM xilinx/xilinx_runtime_base:aws_f1-2021-2-centos AS builder
COPY app/Makefile Makefile
COPY app/main.cpp main.cpp
ENV LD_LIBRARY_PATH /opt/xilinx/xrt/lib
ENV VIVADO_TOOL_VERSION 2021.2
ENV AWS_FPGA_REPO_DIR /aws-fpga
RUN yum -y install yum-utils epel-release redhat-lsb-core gcc gcc-c++ make kernel-devel && \
    yum-config-manager --add-repo https://tech.accelize.com/rpm/accelize_stable.repo && \
    yum install -y sudo git gcc gcc-c++ libstdc++-devel libaccelize-drm libaccelize-drm-devel centos-release-scl boost boost-thread boost-devel && \
    git clone https://github.com/aws/aws-fpga.git $AWS_FPGA_REPO_DIR &&\
    source $AWS_FPGA_REPO_DIR/vitis_runtime_setup.sh &&\
    make all

# Build the container image
FROM xilinx/xilinx_runtime_base:aws_f1-2021-2-centos
COPY app/conf.json /conf.json
COPY --from=builder app /app
COPY app.awsxclbin /app.awsxclbin
RUN yum -y install yum-utils epel-release redhat-lsb-core && \
    yum-config-manager --add-repo https://tech.accelize.com/rpm/accelize_stable.repo && \
    yum install -y sudo libaccelize-drm && \
    yum clean all && \
    rm -rf /var/cache/yum && \
    rm -rf /tmp/*

# Run the application
ENV XILINX_XRT /opt/xilinx/xrt
ENV LD_LIBRARY_PATH /opt/xilinx/xrt/lib
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/xilinx/xrt/bin
ENTRYPOINT ["/app", "/app.awsxclbin"]
