#
# Accelize Getting Started Example Designs  Makefile
# AWS Version
#

EXENAME := app
CXX_EXT := cpp
CXX := g++
CXXFLAGS := -Wall -Werror -std=c++11

# Import XCL2 and OpenCL Libraries
COMMON_REPO  := $(AWS_FPGA_REPO_DIR)/SDAccel/examples/xilinx
ABS_COMMON_REPO = $(shell readlink -f $(COMMON_REPO))
include $(ABS_COMMON_REPO)/libs/opencl/opencl.mk
include $(ABS_COMMON_REPO)/libs/xcl2/xcl2.mk
CXXFLAGS += $(xcl2_CXXFLAGS)
LDFLAGS += $(xcl2_LDFLAGS)
SRCS += $(xcl2_SRCS)
CXXFLAGS += $(opencl_CXXFLAGS) -Wall -O0 -g
LDFLAGS += $(opencl_LDFLAGS)

# AWS Specific XRT Library
XRT_ROOT    := /opt/xilinx/xrt
XRT_INC_DIR := -I$(XRT_ROOT)/include
XRT_LIBDIR  := $(XRT_ROOT)/lib
XRT_LIB := -lxrt_aws

# Accelize DRMLib
XLZDRM_LIB = -laccelize_drm

# Add current app
SRCS += $(wildcard *.$(CXX_EXT))
OBJS += $(patsubst %.$(CXX_EXT), %.o, $(SRCS))
-include $(OBJS:.o=.d)
CXXFLAGS += -g -D_DEBUG -I$(SDK_DIR)/userspace/include $(XRT_INC_DIR) -I/usr/include/jsoncpp
LDFLAGS += -L$(XRT_LIBDIR)
LDLIBS += $(XRT_LIB) -laccelize_drm -lxilinxopencl -lOpenCL -lrt -pthread -lstdc++

all : $(EXENAME)

%.o: %.$(CXX_EXT)
	$(CXX) $(CXXFLAGS) $(MYCFLAGS) $(MYCXXFLAGS) -c $< -o $@
	$(CXX) $(CXXFLAGS) $(MYCFLAGS) $(MYCXXFLAGS) -c -MM $< -o $(patsubst %.o, %.d, $@)

$(EXENAME): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LDLIBS) 

clean:
	rm -rf *.o *.d $(EXENAME)

.PHONY: all

.DEFAULT_GOAL := all
