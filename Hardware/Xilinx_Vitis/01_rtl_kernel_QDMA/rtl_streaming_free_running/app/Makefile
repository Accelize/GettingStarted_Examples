#
# Accelize DRM Reference Design Makefile
#

EXENAME := app
CURDIR := $(shell pwd)

CXX_EXT := cpp
CXX := g++
CXXFLAGS := -Wall -std=c++11 -Wno-unused-variable

# Points to top directory of Git repository
COMMON_REPO = /home/labo/Vitis_Accel_Examples
ABS_COMMON_REPO = $(shell readlink -f $(COMMON_REPO))
include $(ABS_COMMON_REPO)/common/includes/opencl/opencl.mk
xcl2_SRCS:=${COMMON_REPO}/common/includes/xcl2/xcl2.cpp
xcl2_HDRS:=${COMMON_REPO}/common/includes/xcl2/xcl2.hpp
xcl2_CXXFLAGS:=-I${COMMON_REPO}/common/includes/xcl2
CXXFLAGS += $(xcl2_CXXFLAGS)
LDFLAGS += $(xcl2_LDFLAGS)

# Xilinx Runtime (XRT)
XRT_ROOT    := /opt/xilinx/xrt
XRT_INC_DIR := -I$(XRT_ROOT)/include
XRT_LIBDIR  := -L$(XRT_ROOT)/lib
XRT_LIB := -lxrt_core -lxilinxopencl -lOpenCL

# Accelize DRMLib
XLZDRM_LIB = -laccelize_drm

SRCS := $(wildcard *.$(CXX_EXT))
SRCS += $(xcl2_SRCS)
OBJS := $(patsubst %.$(CXX_EXT), %.o, $(SRCS))

CXXFLAGS += -Iinclude -I$(SDK_DIR)/userspace/include -I/usr/include/jsoncpp
LDLIBS += -lrt -pthread

# Debug Mode
ifeq ($(DEBUG),1)
CXXFLAGS += -g -DDEBUG
endif

CXXFLAGS += $(XRT_INC_DIR)
LDFLAGS += $(XRT_LIBDIR)
LDLIBS += $(XRT_LIB) $(XLZDRM_LIB)

all: $(EXENAME)

%.o: %.$(CXX_EXT)
	$(CXX) $(CXXFLAGS) -c $< -o $@
	$(CXX) $(CXXFLAGS) -c -MM $< -o $(patsubst %.o, %.d, $@)

$(EXENAME): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LDLIBS) 

clean:
	@rm -rf *.o *.d *.log $(EXENAME)
	
  
.PHONY: all clean

.DEFAULT_GOAL := all
