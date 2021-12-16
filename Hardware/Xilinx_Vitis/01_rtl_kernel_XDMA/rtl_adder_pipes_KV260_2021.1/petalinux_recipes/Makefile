ROOT               ?= $(PWD)
PROJECT_NAME       ?= xilinx-k26-starterkit-drmdemo
PROJECT_PATH       = $(ROOT)/$(PROJECT_NAME)
K26_BSP_PATH       ?= $(HOME)/xilinx-k26-starterkit-v2021.1-final.bsp
PATH_TO_KV260_PRJ  ?= $(HOME)/GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_KV260_2021.1

clean: check
	@petalinux-build -p $(PROJECT_PATH) -x mrproper

clean_all:
	@rm -rf $(PROJECT_PATH)

all: petalinux-create petalinux-config petalinux-add-apps petalinux-build petalinux-package

check:
ifndef PETALINUX_VER
	$(error You have to source Petalinux settings)
endif
ifneq ($(PETALINUX_VER),2021.1)
	$(error This makefile only support Petalinux 2021.1)
endif

petalinux-create: check
	@# create project
	@cd $(ROOT) && petalinux-create -t project -s $(K26_BSP_PATH) --name $(PROJECT_NAME)

petalinux-config: check
	@echo 'BOARD_VARIANT = "kv"' >>  $(PROJECT_PATH)/project-spec/meta-user/conf/petalinuxbsp.conf
	@petalinux-config -p $(PROJECT_PATH) -c rootfs --silentconfig
	@petalinux-build -p $(PROJECT_PATH) -s

petalinux-add-apps: check
	@# ============= Add Accelize DRMLib =============
	@petalinux-create -p $(PROJECT_PATH) --force -t apps -n libaccelize-drm_1.0 --enable 
	@cp $(PATH_TO_KV260_PRJ)/petalinux_recipes/libaccelize-drm/libaccelize-drm_1.0.bb \
			$(PROJECT_PATH)/project-spec/meta-user/recipes-apps/libaccelize-drm_1.0/libaccelize-drm_1.0.bb
	@# ============= Add FPGA Bitstream =============
	@petalinux-create -p $(PROJECT_PATH) --force -t apps --template fpgamanager -n accelize-kv260-drmdemo-fpga_1.0 --enable --srcuri " \
			$(PATH_TO_KV260_PRJ)/petalinux_recipes/accelize-kv260-drmdemo-fpga/kv260-aibox-reid.dtsi \
			$(PATH_TO_KV260_PRJ)/petalinux_recipes/accelize-kv260-drmdemo-fpga/shell.json  \
			$(PATH_TO_KV260_PRJ)/_x/link/int/system.bit  \
			$(PATH_TO_KV260_PRJ)/xclbin/rtl_adder_pipes_xilinx_kv260.xclbin"
	@echo 'PR = "1.pl2021_1"' >> $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-fpga_1.0/accelize-kv260-drmdemo-fpga_1.0.bb
	@# ============= Add FPGA App =============
	@petalinux-create -p $(PROJECT_PATH) --force -t apps -n accelize-kv260-drmdemo-app_1.0 --enable --srcuri "\
			$(PATH_TO_KV260_PRJ)/app/Makefile \
			$(PATH_TO_KV260_PRJ)/app/main.cpp \
			$(PATH_TO_KV260_PRJ)/app/conf.json"
	@cp $(PATH_TO_KV260_PRJ)/petalinux_recipes/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_1.0.bb $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app_1.0/accelize-kv260-drmdemo-app_1.0.bb
	@# ============= Add PetaLinux Packagegroup =============
	@mkdir -p $(PROJECT_PATH)/project-spec/meta-user/recipes-core/packagegroups
	@cp -f $(PATH_TO_KV260_PRJ)/petalinux_recipes/packagegroups/accelize-packagegroup-kv260-drmdemo_1.0.bb $(PROJECT_PATH)/project-spec/meta-user/recipes-core/packagegroups/.
	@echo 'IMAGE_INSTALL_append = " accelize-packagegroup-kv260-drmdemo"' >> $(PROJECT_PATH)/project-spec/meta-user/conf/petalinuxbsp.conf

petalinux-build: check
	@petalinux-build -p $(PROJECT_PATH)

petalinux-package: check
	@cd $(PROJECT_PATH) && petalinux-package --wic --bootfiles "ramdisk.cpio.gz.u-boot boot.scr Image system.dtb"
	@cd $(PROJECT_PATH) && gzip images/linux/petalinux-sdimage.wic

petalinux-jtag: check
        @cd $(PROJECT_PATH) && petalinux-package --prebuilt --force --fpga project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-fpga_1.0/files/rtl_adder_pipes_xilinx_kv260.xclbin
        @cd $(PROJECT_PATH) && petalinux-boot --jtag --prebuilt 3 --tcl jtag_boot.tcl
        @rm -rf /tmp/jtag-pkg* && mkdir /tmp/jtag-pkg
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/bl31.elf /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/boot.scr /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/Image /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/pmufw.elf /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/project-spec/hw-description/psu_init.tcl /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/rootfs.cpio.gz.u-boot /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/system.dtb /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/test.tcl /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/u-boot.elf /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/zynqmp_fsbl.elf /tmp/jtag-pkg/.
        @cp -f $(PROJECT_PATH)/pre-built/linux/images/ramdisk.cpio.gz /tmp/jtag-pkg/.
        @tar czf /tmp/jtag-pkg.tar.gz /tmp/jtag-pkg

.PHONY: all petalinux-create petalinux-config petalinux-add-apps petalinux-build petalinux-package clean clean_all check
