#
# Accelize DRM Reference Design Makefile
#
#
SDX_PLATFORM=/tools/xilinx/vivado_2018.3/platforms/xilinx_u200_xdma_201830_1/xilinx_u200_xdma_201830_1.xpfm
OUTPUT_DIR=xclbin
DRM_XO=${OUTPUT_DIR}/drm.xo
DESIGN_OBJ=${OUTPUT_DIR}/rtl_adder_pipes_dual_clock_drm.xclbin
XP_PARAMS=--xp "param:compiler.preserveHlsOutput=1" --xp "param:compiler.generateExtraRunData=true"
SDX_KERNELS = adder input output
SDX_KERNELS_OBJS = $(SDX_KERNELS:%=${OUTPUT_DIR}/%.xo)
KERNEL_FREQ_MHZ = "0:100|1:200"

$(DRM_XO):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@make -C src/drm_hdk/drm_contoller_xo_packager
	@mkdir -p ${OUTPUT_DIR}
	@cp -f src/drm_hdk/drm_contoller_xo_packager/drm.xo ${DRM_XO}

$(SDX_KERNELS_OBJS):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@mkdir -p ${OUTPUT_DIR}
	@$(eval KRNL=$(basename $(notdir $@)))
	@vivado -mode batch -source scripts/gen_${KRNL}_xo.tcl -tclargs $@ krnl_${KRNL}_stage_rtl hw ${SDX_PLATFORM}

${DESIGN_OBJ}: $(DRM_XO) $(SDX_KERNELS_OBJS)
	@echo -e "\n\n===> Generating ${DESIGN_OBJ} ..."
	@mkdir -p ${OUTPUT_DIR}
	@xocc -l ${XP_PARAMS} -s -o ${DESIGN_OBJ} -t hw --platform ${SDX_PLATFORM} --kernel_frequency ${KERNEL_FREQ_MHZ} $(DRM_XO) $(SDX_KERNELS_OBJS)

clean:
	@rm -rf tmp* vivado* packaged_kernel *.log _x .Xil
	@make -C src/drm_hdk/drm_contoller_xo_packager clean

clean_all: clean
	@rm -rf ${OUTPUT_DIR}
	@make -C src/drm_hdk/drm_contoller_xo_packager clean_all

all: ${DESIGN_OBJ}

.PHONY: all clean clean_all

.DEFAULT_GOAL := all
