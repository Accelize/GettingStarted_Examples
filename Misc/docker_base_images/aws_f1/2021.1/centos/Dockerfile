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

FROM centos:7

# This dockerfile create an image that contain:
# - AWS FPGA runtimes
# - Xilinx XRT runtimes (AWS variant)

RUN yum install -y epel-release && \
yum install -y \
    gcc \
    make \
    sudo && \
mkdir -p /tmp/aws-fpga && \
export AWS_FPGA_RELEASE=$(curl -s https://api.github.com/repos/aws/aws-fpga/releases/latest | grep tag_name | cut -d '"' -f 4) && \
curl -L https://github.com/aws/aws-fpga/archive/$AWS_FPGA_RELEASE.tar.gz | tar xz -C /tmp/aws-fpga --strip-components=1 && \
source /tmp/aws-fpga/sdk_setup.sh && \
yum erase -y sudo && \
curl -s https://aws-fpga-developer-ami.s3.amazonaws.com/1.11.0/Patches/XRT_2021_1/xrt_202110.2.11.0_7.9.2009-x86_64-xrt.rpm -o xrt.rpm && \
curl -s https://aws-fpga-developer-ami.s3.amazonaws.com/1.11.0/Patches/XRT_2021_1/xrt_202110.2.11.0_7.9.2009-x86_64-aws.rpm && \
yum install ./xrt.rpm ./xrt-aws.rpm -y && \
rm -rf /tmp/* && \
rm -rf /var/cache/yum/*
