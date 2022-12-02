#
# Accelize Getting Started App Makefile
#
APP=app

${APP}: main.cpp
	$(CXX) -Wall -g -std=c++11 main.cpp -o ${APP} \
		-I/usr/include/xrt -I/usr/include/jsoncpp -I${STAGING_INCDIR}/xrt -I${STAGING_INCDIR}/jsoncpp \
		-lpthread -lrt -lstdc++ -lxrt_core -lxilinxopencl -ljsoncpp -laccelize_drm

clean:
	@rm -rf ${APP}

all: ${APP}

.PHONY: all clean

.DEFAULT_GOAL := all
