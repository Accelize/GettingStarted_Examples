#
# Accelize DRM Reference Design Makefile
#
ndef = $(if $(value $(1)),,$(error $(1) must be set prior to running))

VTS_PLATFORM=kv260_vcuDecode_vmixDP.xpfm

OUTPUT_DIR=xclbin
DRM_XO=${OUTPUT_DIR}/drm.xo
DESIGN_OBJ=${OUTPUT_DIR}/rtl_adder_pipes_hdk_4.2.1.12_vitis_2020.2_xilinx_kv260.xclbin
VTS_KERNELS = adder input output
VTS_KERNELS_OBJS = $(VTS_KERNELS:%=${OUTPUT_DIR}/%.xo)
VTS_CFG_FILE=connectivity.cfg
APP_DIR=app
APP=${APP_DIR}/app

# Accelize DRMLib Cross-compilation
DRMLIB_XCOMPILE_DIR = ../rtl_adder_pipes_ZCU102/drmlib_xcompile
JSONCPP_INCDIR      = ${DRMLIB_XCOMPILE_DIR}/jsoncpp/include
JSONCPP_LIBDIR      = ${DRMLIB_XCOMPILE_DIR}/jsoncpp/build/debug/lib
XLZDRMLIB_BUILDDIR  = ${DRMLIB_XCOMPILE_DIR}/drm/build

$(DRM_XO):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@make -C src/drm_hdk/controller/vitis
	@mkdir -p ${OUTPUT_DIR}
	@cp -f src/drm_hdk/controller/vitis/kernel_drm_controller.xo ${DRM_XO}

$(VTS_KERNELS_OBJS):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@mkdir -p ${OUTPUT_DIR}
	@$(eval KRNL=$(basename $(notdir $@)))
	@vivado -mode batch -source scripts/gen_${KRNL}_xo.tcl -tclargs $@ krnl_${KRNL}_stage_rtl hw ${VTS_PLATFORM}

${DESIGN_OBJ}: $(DRM_XO) $(VTS_KERNELS_OBJS)
	@echo -e "\n\n===> Generating ${DESIGN_OBJ} ..."
	@mkdir -p ${OUTPUT_DIR}
	@v++ -l --config ${VTS_CFG_FILE} -s -o ${DESIGN_OBJ} -t hw --platform ${VTS_PLATFORM} $(DRM_XO) $(VTS_KERNELS_OBJS)
	

${APP}: ${APP_DIR}/main.cpp
	$(call ndef,SDKTARGETSYSROOT)
	$(CXX) -Wall -g -std=c++11 ${APP_DIR}/main.cpp -o ${APP_DIR}/app \
		-I/usr/include/xrt -I/opt/xilinx/xrt/include -I${XLZDRMLIB_BUILDDIR}/include  -I${JSONCPP_INCDIR} \
		-L${JSONCPP_LIBDIR} -L${XLZDRMLIB_BUILDDIR} \
		-lpthread -lrt -lstdc++ -lxrt_core -lxilinxopencl -ljsoncpp -laccelize_drm
	@mkdir -p ${APP_DIR}/lib
	@cp -f ${JSONCPP_LIBDIR}/libjsoncpp* ${APP_DIR}/lib/.
	@cp -f ${XLZDRMLIB_BUILDDIR}/libaccelize_drm* ${APP_DIR}/lib/.


clean:
	@rm -rf tmp* vivado* packaged_kernel *.log _x .Xil .ipcache *.out ${APP} ${APP_DIR}/binary_container_1.xclbin ${APP_DIR}/lib *.xclbin *.xclbin.*
	@make -C src/drm_hdk/controller/vitis clean

clean_all: clean
	@rm -rf ${OUTPUT_DIR}
	@make -C src/drm_hdk/controller/vitis cleanall

all: ${DESIGN_OBJ} ${APP}

bitstream: ${DESIGN_OBJ}

app: ${APP}

.PHONY: all clean clean_all bitstream app

.DEFAULT_GOAL := all
