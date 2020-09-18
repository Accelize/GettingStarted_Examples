#
# Accelize DRM Reference Design Makefile
#
#
VTS_PLATFORM=/home/centos/src/project_data/aws-fpga/Vitis/aws_platform/xilinx_aws-vu9p-f1_shell-v04261818_201920_2/xilinx_aws-vu9p-f1_shell-v04261818_201920_2.xpfm
OUTPUT_DIR=xclbin
DRM_XO=${OUTPUT_DIR}/drm.xo
DESIGN_OBJ=${OUTPUT_DIR}/rtl_adder_pipes_vitis_2019.2_xilinx_aws-vu9p-f1_shell-v04261818_201920_2.xclbin
VTS_KERNELS = adder input output
VTS_KERNELS_OBJS = $(VTS_KERNELS:%=${OUTPUT_DIR}/%.xo)
KERNEL_FREQ_MHZ = 100
VTS_CFG_FILE=connectivity.cfg

$(DRM_XO):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@make -C src/drm_hdk/controller/sdaccel
	@mkdir -p ${OUTPUT_DIR}
	@cp -f src/drm_hdk/controller/sdaccel/kernel_drm_controller.xo ${DRM_XO}

$(VTS_KERNELS_OBJS):
	@echo -e "\n\n===> Generating [$@] Kernel ..."
	@mkdir -p ${OUTPUT_DIR}
	@$(eval KRNL=$(basename $(notdir $@)))
	@vivado -mode batch -source scripts/gen_${KRNL}_xo.tcl -tclargs $@ krnl_${KRNL}_stage_rtl hw ${VTS_PLATFORM}

${DESIGN_OBJ}: $(DRM_XO) $(VTS_KERNELS_OBJS)
	@echo -e "\n\n===> Generating ${DESIGN_OBJ} ..."
	@mkdir -p ${OUTPUT_DIR}
	@v++ -l --config ${VTS_CFG_FILE} -s -o ${DESIGN_OBJ} ${VTS_INTERKERNELS_STREAMS} -t hw --platform ${VTS_PLATFORM} --kernel_frequency ${KERNEL_FREQ_MHZ} $(DRM_XO) $(VTS_KERNELS_OBJS)

clean:
	@rm -rf tmp* vivado* packaged_kernel *.log _x .Xil *.out
	@make -C src/drm_hdk/controller/sdaccel clean

clean_all: clean
	@rm -rf ${OUTPUT_DIR}
	@make -C src/drm_hdk/controller/sdaccel cleanall

all: ${DESIGN_OBJ}

.PHONY: all clean clean_all

.DEFAULT_GOAL := all
