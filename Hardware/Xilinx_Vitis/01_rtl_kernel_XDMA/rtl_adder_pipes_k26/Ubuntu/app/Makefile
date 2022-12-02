#
# Accelize Getting Started App Makefile
#
APP=accelize-k26-drmdemo

${APP}: main.cpp
		$(CXX) -Wall -g -std=c++17 -Wno-unused-variable main.cpp -o ${APP} \
		       -I/usr/include -I/usr/include/xrt -I/usr/include/jsoncpp \
		       -lpthread -lrt -lxrt_coreutil -ljsoncpp -laccelize_drm

clean:
		@rm -rf ${APP}

all: ${APP}

.PHONY: all clean

.DEFAULT_GOAL := all

