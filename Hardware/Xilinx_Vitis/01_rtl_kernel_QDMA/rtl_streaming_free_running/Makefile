#
# Accelize DRM Reference Design Makefile
#
VTS_PLATFORM=/tools/xilinx/platforms/xilinx_u200_qdma_201920_1/xilinx_u200_qdma_201920_1.xpfm
#VTS_PLATFORM=/tools/xilinx/platforms/xilinx_u250_qdma_201920_1/xilinx_u250_qdma_201920_1.xpfm
OUTPUT_DIR=xclbin
DRM_XO=${OUTPUT_DIR}/drm.xo
DESIGN_OBJ=${OUTPUT_DIR}/rtl_streaming_free_running_u200_qdma_201920_1_hdk_v4.2.1.xclbin
VTS_KERNELS = myadder1
VTS_KERNELS_OBJS = $(VTS_KERNELS:%=${OUTPUT_DIR}/%.xo)
KERNEL_FREQ_MHZ = 100
VTS_CFG_FILE=connectivity.cfg

$(DRM_XO):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@make -C src/drm_hdk/controller/vitis
	@mkdir -p ${OUTPUT_DIR}
	@cp -f src/drm_hdk/controller/vitis/kernel_drm_controller.xo ${DRM_XO}

$(VTS_KERNELS_OBJS):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@mkdir -p ${OUTPUT_DIR}
	@$(eval KRNL=$(basename $(notdir $@)))
	@vivado -mode batch -source src/gen_${KRNL}_xo.tcl -tclargs $@ ${KRNL} hw ${VTS_PLATFORM}

${DESIGN_OBJ}: $(DRM_XO) $(VTS_KERNELS_OBJS)
	@echo -e "\n\n===> Generating ${DESIGN_OBJ} ..."
	@mkdir -p ${OUTPUT_DIR}
	@v++ -l  --config ${VTS_CFG_FILE} -s -o ${DESIGN_OBJ} ${VTS_INTERKERNELS_STREAMS} -t hw --platform ${VTS_PLATFORM} --kernel_frequency ${KERNEL_FREQ_MHZ} $(DRM_XO) $(VTS_KERNELS_OBJS)

clean:
	@rm -rf tmp* vivado* packaged_kernel *.log _x .Xil *.out
	@make -C src/drm_hdk/controller/vitis clean

clean_all: clean
	@rm -rf ${OUTPUT_DIR}
	@make -C src/drm_hdk/controller/vitis cleanall

all: ${DESIGN_OBJ}

.PHONY: all clean clean_all

.DEFAULT_GOAL := all
