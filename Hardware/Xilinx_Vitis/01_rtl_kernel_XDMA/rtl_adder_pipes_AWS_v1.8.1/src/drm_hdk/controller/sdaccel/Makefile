#
# Accelize drm_controller_kernel.xo File Generation Makefile
#
#

drm_controller_kernel.xo: src/drm_controller_kernel* scripts/*.tcl ../rtl/core/*.vhdl ../rtl/syn/*.sv ../../common/vhdl/xilinx/*.vhdl
	@echo -e "Generating $@ ..."
	@vivado -mode batch -source scripts/gen_drmctrl_xo.tcl -tclargs $@

clean:
	@rm -rf src/controller src/common tmp* packaged_kernel *.log *.jou .Xil awsver.txt

cleanall: clean
	@rm -f *.xo

all: drm_controller_kernel.xo

.PHONY: all clean cleanall

.DEFAULT_GOAL := all
