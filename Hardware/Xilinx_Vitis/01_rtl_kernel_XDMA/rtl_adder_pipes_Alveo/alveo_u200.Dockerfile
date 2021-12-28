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
#       "-v host_path_to_cred_json:/user/appuser/cred.json"

# Build the application
FROM xilinx/xilinx_runtime_base:alveo-2019-1-ubuntu-1804 AS builder
ENV LD_LIBRARY_PATH /opt/xilinx/xrt/lib
COPY app/Makefile Makefile
COPY app/main.cpp main.cpp
RUN apt-get update && \
apt-get install -y gpg-agent && \
apt-get install -y --no-install-recommends \
    apt-transport-https \
    curl \
    g++ \
    software-properties-common && \
curl -fsSL https://tech.accelize.com/gpg | apt-key add - && \
add-apt-repository "deb https://tech.accelize.com/deb $(lsb_release -cs) stable" && \
add-apt-repository universe && \
apt-get update && \
apt-get install -y --no-install-recommends \
    libaccelize-drm-dev libboost-dev libboost-all-dev cmake git opencl-headers && \
make all 


# Build the container image
FROM xilinx/xilinx_runtime_base:alveo-2019-1-ubuntu-1804
ENV LD_LIBRARY_PATH /opt/xilinx/xrt/lib
RUN useradd appuser --create-home && \
apt-get update && \
apt-get update && \
apt-get install -y gpg-agent && \
apt-get install -y --no-install-recommends \
    apt-transport-https \
    curl \
    software-properties-common && \
curl -fsSL https://tech.accelize.com/gpg | apt-key add - && \
add-apt-repository "deb https://tech.accelize.com/deb $(lsb_release -cs) stable" && \
add-apt-repository universe && \
apt-get update && \
apt-get install -y --no-install-recommends \
    libaccelize-drm libboost-dev libboost-all-dev && \
wget https://tech.accelize.com/cs/github_refdesigns/Xilinx_Vitis/rtl_adder_pipes_hdk_4.2.1_vitis_2019.2.xclbin -O /app.xclbin &&\
apt-get remove -y \
    apt-transport-https \
    curl \
    software-properties-common && \
apt-get autoremove -y --purge && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*
COPY app/conf.json /conf.json
COPY --from=builder app /app
COPY app/conf.json /conf.json 

# Run the application
ENV XILINX_XRT /opt/xilinx/xrt
ENV LD_LIBRARY_PATH /opt/xilinx/xrt/lib
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/xilinx/xrt/bin
ENTRYPOINT ["/app", "/app.xclbin"]
