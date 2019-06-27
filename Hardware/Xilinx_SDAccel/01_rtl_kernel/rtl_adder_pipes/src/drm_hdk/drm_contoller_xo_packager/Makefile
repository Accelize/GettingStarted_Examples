#
# Accelize DRM.xo File Generation Makefile
#
#

drm.xo:
	@echo -e "Generating $@ ..."
	@cp -rf ../controller src/.
	@cp -rf ../common src/.
	@vivado -mode batch -source scripts/gen_drm_xo.tcl -tclargs $@ krnl_drm_stage_rtl 

clean:
	@rm -rf src/controller src/common tmp* packaged_kernel *.log *.jou .Xil

clean_all: clean
	@rm -f *.xo

all: drm.xo

.PHONY: all clean clean_all

.DEFAULT_GOAL := all
