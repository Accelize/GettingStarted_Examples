# Accelize kernel_drm_controller.xo File Generation Makefile

kernel_drm_controller.xo: src/kernel_drm_controller* scripts/*.tcl ../rtl/core/*.vhdl ../rtl/syn/*.sv ../../common/vhdl/xilinx/*.vhdl
	@echo -e "Generating $@ ..."
	@vivado -mode batch -source scripts/gen_drmctrl_xo.tcl -tclargs $@

clean:
	@rm -rf src/controller src/common tmp* packaged_kernel *.log *.jou .Xil awsver.txt

cleanall: clean
	@rm -f *.xo

all: kernel_drm_controller.xo

.PHONY: all clean cleanall

.DEFAULT_GOAL := all
