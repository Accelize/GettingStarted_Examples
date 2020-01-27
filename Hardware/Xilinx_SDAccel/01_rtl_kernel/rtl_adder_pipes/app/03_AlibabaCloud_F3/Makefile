#
# Accelize DRM Reference Design Makefile
#

EXENAME := app
CURDIR := $(shell pwd)

CXX_EXT := cpp
CXX := g++
CXXFLAGS := -Wall -std=c++11 -Wno-unused-variable

ifndef XILINX_SDX
	@$(error Aliyun environment not configured. Try "source /root/xbinst_oem/F3_env_setup.sh xocl" to setup the aliyun environment)
endif

# Xilinx Runtime (XRT)
XRT_INC_DIR := -I${XILINX_SDX}/runtime/driver/include -I${XILINX_SDX}/runtime/include/1_2
XRT_LIBDIR  := -L${XILINX_SDX}/root/xbinst_oem/runtime/platforms/xilinx_vu9p_faas_f3/driver -L${XILINX_SDX}/runtime/lib/x86_64
XRT_LIB     := -lxclgemdrv -lxilinxopencl -lrt -pthread

# Accelize DRMLib
XLZDRM_LIB = -laccelize_drm

SRCS := $(wildcard *.$(CXX_EXT))
OBJS := $(patsubst %.$(CXX_EXT), %.o, $(SRCS))

CXXFLAGS += -I/usr/include/jsoncpp

# Debug Mode
ifeq ($(DEBUG),1)
CXXFLAGS += -g -DDEBUG
endif

CXXFLAGS += $(XRT_INC_DIR)
LDFLAGS  += $(XRT_LIBDIR)
LDLIBS   += $(XRT_LIB) $(XLZDRM_LIB)

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
