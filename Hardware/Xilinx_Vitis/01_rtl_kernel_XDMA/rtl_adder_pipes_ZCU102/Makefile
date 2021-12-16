#
# Accelize DRM Reference Design Makefile
#
ndef = $(if $(value $(1)),,$(error $(1) must be set prior to running))

VTS_PLATFORM=/tools/xilinx/platforms/xilinx_zcu102_base_202020_1/xilinx_zcu102_base_202020_1.xpfm
OUTPUT_DIR=xclbin
DRM_XO=${OUTPUT_DIR}/drm.xo
DESIGN_OBJ=${OUTPUT_DIR}/rtl_adder_pipes_hdk_4.2.1.12_vitis_2020.2_xilinx_zcu102_base_202020_1.xclbin
VTS_KERNELS = adder input output
VTS_KERNELS_OBJS = $(VTS_KERNELS:%=${OUTPUT_DIR}/%.xo)
VTS_CFG_FILE=connectivity.cfg
APP_DIR=app
APP=${APP_DIR}/app
EMCFG_FILE=xclbin/emconfig.json

# Accelize DRMLib Cross-compilation
DRMLIB_XCOMPILE_DIR = drmlib_xcompile
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
		-lOpenCL -lpthread -lrt -lstdc++ -lxrt_core -lxilinxopencl -ljsoncpp -laccelize_drm
	@mkdir -p ${APP_DIR}/lib
	@cp -f ${JSONCPP_LIBDIR}/libjsoncpp* ${APP_DIR}/lib/.
	@cp -f ${XLZDRMLIB_BUILDDIR}/libaccelize_drm* ${APP_DIR}/lib/.
	@cp ${DESIGN_OBJ} ${APP_DIR}/binary_container_1.xclbin


${EMCFG_FILE}:
	emconfigutil --platform ${VTS_PLATFORM} --od xclbin
	
package/sd_card.img: ${APP} ${EMCFG_FILE}
	echo ${ROOTFS}
	echo ${EMCFG_FILE}
	$(call ndef,ROOTFS)
	v++ -p -t hw --platform ${VTS_PLATFORM} --config zcu102.cfg ${DESIGN_OBJ} -o binary_container_1.xclbin \
		--package.out_dir package \
		--package.rootfs ${ROOTFS}/rootfs.ext4 \
		--package.sd_file ${APP_DIR}/binary_container_1.xclbin \
		--package.sd_file ${ROOTFS}/Image \
		--package.sd_file xrt.ini \
		--package.sd_file ${EMCFG_FILE} \
		--package.sd_dir ${APP_DIR}/lib \
		--package.sd_file ${APP} \
		--package.sd_file ${APP_DIR}/conf.json \
		--package.sd_file ${APP_DIR}/cred.json \
		--package.sd_file run_app.sh
		
clean:
	@rm -rf tmp* vivado* packaged_kernel *.log _x .Xil .ipcache *.out ${APP} package ${EMCFG_FILE} ${APP_DIR}/binary_container_1.xclbin ${APP_DIR}/lib *.xclbin *.xclbin.*
	@make -C src/drm_hdk/controller/vitis clean

clean_all: clean
	@rm -rf ${OUTPUT_DIR}
	@make -C src/drm_hdk/controller/vitis cleanall

all: package/sd_card.img

bitstream: ${DESIGN_OBJ}

app: ${APP}

.PHONY: all clean clean_all bitstream app

.DEFAULT_GOAL := all
