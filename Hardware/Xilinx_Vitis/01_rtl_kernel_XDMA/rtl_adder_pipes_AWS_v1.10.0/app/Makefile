#
# Accelize Getting Started Example Designs  Makefile
# AWS Version
#

EXENAME := app
CXX_EXT := cpp
CXX := g++
CXXFLAGS := -Wall -std=c++11

HOST_ARCH := x86
SYSROOT :=
include ./utils.mk

# Import XCL2 and OpenCL Libraries
COMMON_REPO  := $(AWS_FPGA_REPO_DIR)/Vitis/examples/xilinx_2019.2
ABS_COMMON_REPO = $(shell readlink -f $(COMMON_REPO))
include $(ABS_COMMON_REPO)/common/includes/opencl/opencl.mk
include $(ABS_COMMON_REPO)/common/includes/xcl2/xcl2.mk
CXXFLAGS += $(xcl2_CXXFLAGS)
LDFLAGS += $(xcl2_LDFLAGS)
HOST_SRCS += $(xcl2_SRCS)

CXXFLAGS += $(opencl_CXXFLAGS) -Wall -O0 -g
LDFLAGS += $(opencl_LDFLAGS)

# XRT Library
XRT_ROOT    := /opt/xilinx/xrt
XRT_INC_DIR := -I$(XRT_ROOT)/include
XRT_LIBDIR  := -L$(XRT_ROOT)/lib
XRT_LIB := -lxrt_core

# Accelize DRMLib
XLZDRM_LIB_DIR = -L/usr/lib64
XLZDRM_LIB_C = -laccelize_drmc

# Add current app
HOST_SRCS += $(wildcard *.$(CXX_EXT))
OBJS += $(patsubst %.$(CXX_EXT), %.o, $(HOST_SRCS))
CXXFLAGS += -g -D_DEBUG $(XRT_INC_DIR) -I/usr/include/jsoncpp
LDFLAGS += $(XRT_LIBDIR) $(XRT_LIB) $(XLZDRM_LIB_DIR) $(XLZDRM_LIB_C) -lrt -lpthread -lstdc++ -lxrt_core

all : $(EXENAME)

$(EXENAME): $(HOST_SRCS) $(HOST_HDRS)
	$(CXX) $(CXXFLAGS) $(HOST_SRCS) $(HOST_HDRS) -o '$@' $(LDFLAGS)

clean:
	rm -rf *.o *.d $(EXENAME)

.PHONY: all
.DEFAULT_GOAL := all
