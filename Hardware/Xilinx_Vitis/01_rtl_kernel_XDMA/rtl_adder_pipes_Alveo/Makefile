#
# Accelize DRM Reference Design Makefile
#
VTS_PLATFORM=/tools/xilinx/platforms/xilinx_u50_gen3x16_xdma_201920_3/xilinx_u50_gen3x16_xdma_201920_3.xpfm
#VTS_PLATFORM=/tools/xilinx/vivado_2019.1/platforms/xilinx_u200_xdma_201830_2/xilinx_u200_xdma_201830_2.xpfm
#VTS_PLATFORM=/tools/xilinx/vivado_2019.1/platforms/xilinx_u250_xdma_201830_1/xilinx_u250_xdma_201830_1.xpfm
#VTS_PLATFORM=/tools/xilinx/platforms/xilinx_u250_xdma_201830_2/xilinx_u250_xdma_201830_2.xpfm
#VTS_PLATFORM=/tools/xilinx/platforms/xilinx_u50_gen3x4_xdma_2_202010_1/xilinx_u50_gen3x4_xdma_2_202010_1.xpfm
#VTS_PLATFORM=/tools/xilinx/platforms/xilinx_u200_gen3x16_xdma_1_202110_1/xilinx_u200_gen3x16_xdma_1_202110_1.xpfm



OUTPUT_DIR=xclbin
DRM_XO=${OUTPUT_DIR}/drm.xo
DESIGN_OBJ=${OUTPUT_DIR}/rtl_adder_pipes_hdk_6.0_vitis_2021.1_xilinx_u50_gen3x16_xdma_201920_3.xclbin
VTS_KERNELS = adder input output
VTS_KERNELS_OBJS = $(VTS_KERNELS:%=${OUTPUT_DIR}/%.xo)
KERNEL_FREQ_MHZ = 100
VTS_CFG_FILE=connectivity.cfg
#AZURE_EXTRA_PARAMETERS = "--advanced.param compiler.acceleratorBinaryContent=dcp"

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
	@v++ -l  ${AZURE_EXTRA_PARAMETERS} --config ${VTS_CFG_FILE} -s -o ${DESIGN_OBJ} ${VTS_INTERKERNELS_STREAMS} -t hw --platform ${VTS_PLATFORM} --kernel_frequency ${KERNEL_FREQ_MHZ} $(DRM_XO) $(VTS_KERNELS_OBJS)

clean:
	@rm -rf tmp* vivado* packaged_kernel *.log _x .Xil *.out
	@make -C src/drm_hdk/controller/vitis clean

clean_all: clean
	@rm -rf ${OUTPUT_DIR}
	@make -C src/drm_hdk/controller/vitis cleanall

all: ${DESIGN_OBJ}

.PHONY: all clean clean_all

.DEFAULT_GOAL := all
