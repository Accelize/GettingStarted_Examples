#
# Accelize DRM Reference Design Makefile
#
#
#SDX_PLATFORM=/tools/xilinx/vivado_2018.3/platforms/xilinx_u200_xdma_201830_1/xilinx_u200_xdma_201830_1.xpfm
SDX_PLATFORM=/tools/xilinx/vivado_2019.1/platforms/xilinx_u200_xdma_201830_2/xilinx_u200_xdma_201830_2.xpfm
OUTPUT_DIR=xclbin
DRM_XO=${OUTPUT_DIR}/drm.xo
DESIGN_OBJ=${OUTPUT_DIR}/rtl_adder_pipes_drm.xclbin
SDX_KERNELS = adder input output
SDX_KERNELS_OBJS = $(SDX_KERNELS:%=${OUTPUT_DIR}/%.xo)
KERNEL_FREQ_MHZ = 100

SDX_INTERKERNELS_STREAMS += --nk krnl_input_stage_rtl:1:k1
SDX_INTERKERNELS_STREAMS += --nk krnl_output_stage_rtl:1:k3
SDX_INTERKERNELS_STREAMS += --nk drm_controller_kernel:1:k4
SDX_INTERKERNELS_STREAMS += --nk krnl_adder_stage_rtl:1:k2
SDX_INTERKERNELS_STREAMS += --sc k1.p0:k2.p0
SDX_INTERKERNELS_STREAMS += --sc k2.p1:k3.p1
SDX_INTERKERNELS_STREAMS += --sc k4.drm_to_uip0:k2.drm_to_uip
SDX_INTERKERNELS_STREAMS += --sc k2.uip_to_drm:k4.uip0_to_drm

$(DRM_XO):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@make -C src/drm_hdk/controller/sdaccel
	@mkdir -p ${OUTPUT_DIR}
	@cp -f src/drm_hdk/controller/sdaccel/drm_controller_kernel.xo ${DRM_XO}

$(SDX_KERNELS_OBJS):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@mkdir -p ${OUTPUT_DIR}
	@$(eval KRNL=$(basename $(notdir $@)))
	@vivado -mode batch -source scripts/gen_${KRNL}_xo.tcl -tclargs $@ krnl_${KRNL}_stage_rtl hw ${SDX_PLATFORM}

${DESIGN_OBJ}: $(DRM_XO) $(SDX_KERNELS_OBJS)
	@echo -e "\n\n===> Generating ${DESIGN_OBJ} ..."
	@mkdir -p ${OUTPUT_DIR}
	@xocc -l ${XP_PARAMS} -s -o ${DESIGN_OBJ} ${SDX_INTERKERNELS_STREAMS} -t hw --platform ${SDX_PLATFORM} --kernel_frequency ${KERNEL_FREQ_MHZ} $(DRM_XO) $(SDX_KERNELS_OBJS)

clean:
	@rm -rf tmp* vivado* packaged_kernel *.log _x .Xil *.out
	@make -C src/drm_hdk/controller/sdaccel clean

clean_all: clean
	@rm -rf ${OUTPUT_DIR}
	@make -C src/drm_hdk/controller/sdaccel cleanall

all: ${DESIGN_OBJ}

.PHONY: all clean clean_all

.DEFAULT_GOAL := all
