#
# Accelize DRM Reference Design Makefile
#
#
VTS_PLATFORM=/tools/xilinx/platforms/xilinx_u250_gen3x16_xdma_3_1_202020_1/xilinx_u250_gen3x16_xdma_3_1_202020_1.xpfm
OUTPUT_DIR=xclbin
DESIGN_OBJ=${OUTPUT_DIR}/rtl_adder_pipes_drm_c_dual_clock_hdk_v6.0_v2021.1_u250.xclbin
VTS_KERNELS = input output drm_controller_with_activator
VTS_KERNELS_OBJS = $(VTS_KERNELS:%=${OUTPUT_DIR}/%.xo)
VTS_HLS_KERNELS = adder
VTS_HLS_KERNELS_OBJS = $(VTS_HLS_KERNELS:%=${OUTPUT_DIR}/%.xo)
VTS_OCL_KERNELS =
VTS_OCL_KERNELS_OBJS = $(VTS_OCL_KERNELS:%=${OUTPUT_DIR}/%.xo)
VTS_CFG_FILE=connectivity.cfg

$(VTS_KERNELS_OBJS):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@mkdir -p ${OUTPUT_DIR}
	@$(eval KRNL=$(basename $(notdir $@)))
	@vivado -mode batch -source scripts/gen_${KRNL}_xo.tcl -tclargs $@ krnl_${KRNL}_stage_rtl hw ${VTS_PLATFORM}

$(VTS_OCL_KERNELS_OBJS):
	@echo -e "\n\n===> Generating [$@] OpenCL Kernel ..."
	@mkdir -p ${OUTPUT_DIR}
	@$(eval KRNL=$(basename $(notdir $@)))
	v++ -t hw --platform ${VTS_PLATFORM} --save-temps -c -k ${KRNL}  -I'src' -o'$@' 'src/${KRNL}.cl'

$(VTS_HLS_KERNELS_OBJS):
	@echo -e "\n\n===> Generating [$@] HLS Kernel ..."
	@mkdir -p ${OUTPUT_DIR}
	@$(eval KRNL=$(basename $(notdir $@)))
	v++ -t hw --platform ${VTS_PLATFORM} --save-temps -c -k ${KRNL}  -I'src' -o'$@' 'src/${KRNL}.cpp'

${DESIGN_OBJ}: $(VTS_HLS_KERNELS_OBJS) $(DRM_XO) $(VTS_KERNELS_OBJS)
	@echo -e "\n\n===> Generating ${DESIGN_OBJ} ..."
	@mkdir -p ${OUTPUT_DIR}
	v++ -l --config ${VTS_CFG_FILE} -s -o ${DESIGN_OBJ} -t hw --platform ${VTS_PLATFORM} $(DRM_XO) $(VTS_KERNELS_OBJS) $(VTS_HLS_KERNELS_OBJS)

clean:
	@rm -rf tmp* vivado* packaged_kernel *.log _x .Xil

clean_all: clean
	@rm -rf ${OUTPUT_DIR}

all: ${DESIGN_OBJ}

.PHONY: all clean clean_all

.DEFAULT_GOAL := all
