#
# Accelize Getting Started App Makefile
#
APP=accelize-drmdemo-k26

${APP}: main.cpp
		$(CXX) -Wall -g -std=c++17 -Wno-unused-variable main.cpp -o ${APP} \
		       -I${STAGING_INCDIR} -I${STAGING_INCDIR}/xrt -I${STAGING_INCDIR}/jsoncpp \
		       -lpthread -lrt -lxrt_coreutil -ljsoncpp -laccelize_drm

clean:
		@rm -rf ${APP}

all: ${APP}

.PHONY: all clean

.DEFAULT_GOAL := all

