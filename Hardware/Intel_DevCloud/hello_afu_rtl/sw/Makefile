#
# Accelize DRM Reference Design Makefile
#

EXENAME := app
CURDIR := $(shell pwd)

CXX_EXT := cpp
CXX := g++
CXXFLAGS := -Werror -Wno-unused-variable -O2 -std=c++11

############################################################
# Makefile setting required to comply with SDL
############################################################

# stack execution protection
LDFLAGS +=-z noexecstack

# data relocation and projection
LDFLAGS +=-z relro -z now

# stack buffer overrun detection
# Note that CentOS 7 has gcc 4.8 by default.  When we switch
# to a system with gcc 4.9 or newer this should be changed to
# CFLAGS="-fstack-protector-strong"
CXXFLAGS +=-fstack-protector

# Position independent execution
CXXFLAGS +=-fPIE -fPIC
LDFLAGS +=-pie

# fortify source
CXXFLAGS+=-O2 -D_FORTIFY_SOURCE=2

# format string vulnerabilities
CXXFLAGS+=-Wformat -Wformat-security

############################################################

AFU_JSON_MGR = afu_json_mgr
LDFLAGS += -luuid
LDFLAGS += -lpthread
LDFLAGS += -lopae-c

# Accelize DRMLib
XLZDRM_LIB = -laccelize_drm

SRCS := $(wildcard *.$(CXX_EXT))
OBJS := $(patsubst %.$(CXX_EXT), %.o, $(SRCS))
-include $(OBJS:.o=.d)

CXXFLAGS += -Iinclude -I$(SDK_DIR)/userspace/include -Iinclude/jsoncpp 
LDFLAGS += 
LDLIBS += -lrt -pthread $(XLZDRM_LIB)

# Debug Mode
ifeq ($(DEBUG),1)
CXXFLAGS += -g -DDEBUG
endif

all: $(EXENAME)

afu_json_info.h: ../hw/rtl/hello_afu.json
	$(AFU_JSON_MGR) json-info --afu-json=$^ --c-hdr=$@

%.o: %.$(CXX_EXT)
	$(CXX) $(CXXFLAGS) $(CSP) $(NLPROV) -c $< -o $@
	$(CXX) $(CXXFLAGS) -c -MM $< -o $(patsubst %.o, %.d, $@)

$(EXENAME): afu_json_info.h $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LDLIBS) 

clean:
	@rm -rf *.o *.d *.log $(EXENAME) afu_json_info.h
	
  
.PHONY: all clean

.DEFAULT_GOAL := all

