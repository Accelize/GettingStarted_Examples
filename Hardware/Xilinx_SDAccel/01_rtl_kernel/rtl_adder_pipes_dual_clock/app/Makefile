#
# Accelize DRM Reference Design Makefile
#

EXENAME := app
CURDIR := $(shell pwd)

CXX_EXT := cpp
CXX := g++
CXXFLAGS := -Wall -std=c++11 -Wno-unused-variable


# Xilinx Runtime (XRT)
XRT_ROOT    := /opt/xilinx/xrt
XRT_INC_DIR := -I$(XRT_ROOT)/include
XRT_LIBDIR  := -L$(XRT_ROOT)/lib
XRT_LIB := -lxrt_core -lxilinxopencl -lOpenCL

# Accelize DRMLib
XLZDRM_LIB = -laccelize_drm

SRCS := $(wildcard *.$(CXX_EXT))
OBJS := $(patsubst %.$(CXX_EXT), %.o, $(SRCS))
-include $(OBJS:.o=.d)

CXXFLAGS += -Iinclude -I$(SDK_DIR)/userspace/include -I/usr/include/jsoncpp
LDFLAGS += 
LDLIBS += -lrt -pthread

# Debug Mode
ifeq ($(DEBUG),1)
CXXFLAGS += -g -DDEBUG
endif

CXXFLAGS += -Iinclude/xclhal2 $(XRT_INC_DIR)
LDFLAGS += $(XRT_LIBDIR)
LDLIBS += $(XRT_LIB) $(XLZDRM_LIB)

all: $(EXENAME)

%.o: %.$(CXX_EXT)
	$(CXX) $(CXXFLAGS) $(MYCFLAGS) $(MYCXXFLAGS) $(CSP) $(NLPROV) -c $< -o $@
	$(CXX) $(CXXFLAGS) $(MYCFLAGS) $(MYCXXFLAGS) -c -MM $< -o $(patsubst %.o, %.d, $@)

$(EXENAME): $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LDLIBS) 

clean:
	@rm -rf *.o *.d *.log $(EXENAME)
	
  
.PHONY: all clean

.DEFAULT_GOAL := all
