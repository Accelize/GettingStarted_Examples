# Copyright 2020 Accelize
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
FROM xilinx/xilinx_runtime_base:aws_f1-2019-1-centos
COPY software/Makefile Makefile
COPY software/main.cpp main.cpp
COPY software/conf.json conf.json
RUN yum -y install yum-utils epel-release redhat-lsb-core gcc gcc-c++ make kernel-devel && \
    yum-config-manager --add-repo https://accelize.s3.amazonaws.com/rpm/accelize_stable.repo && \
    yum install -y sudo git gcc gcc-c++ libstdc++-devel libaccelize-drm libaccelize-drm-devel && \
    git clone https://github.com/aws/aws-fpga.git aws-fpga &&\
    source /aws-fpga/sdk_setup.sh &&\
    make clean all &&\
    rm -rf /aws-fpga &&\
    yum remove -y libaccelize-drm-devel &&\    
    yum clean all && \
    rm -rf /var/cache/yum && \
    rm -rf /tmp/*

# Run the application
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/xilinx/xrt/bin
ENTRYPOINT ["/app"]
