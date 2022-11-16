ROOT               ?= $(PWD)
PROJECT_NAME       ?= xilinx-k26-starterkit-drmdemo
PROJECT_PATH       = $(ROOT)/$(PROJECT_NAME)
META_PATH          = $(PROJECT_PATH)/components/ext_sources
K26_BSP_PATH       ?= $(HOME)/xilinx-kv260-starterkit-v2022.1-05140151.bsp
PATH_TO_KV260_PRJ  ?= $(HOME)/GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_KV260_2022.1/Petalinux
VERSION            ?= 1.1
RELEASE            ?= 2
DIST               ?= pl2022_1

PR = $(RELEASE).$(DIST)

clean: check
	@petalinux-build -p $(PROJECT_PATH) -x mrproper

clean_all:
	@rm -rf $(PROJECT_PATH)

all: petalinux-create petalinux-metalayers petalinux-config petalinux-fix-conf petalinux-add-apps petalinux-fix-xrt petalinux-build petalinux-package petalinux-rpms

check:
ifndef PETALINUX_VER
	$(error You have to source Petalinux settings)
endif
ifneq ($(PETALINUX_VER),2022.1)
	$(error This makefile only support Petalinux 2022.1)
endif

petalinux-create: check
	@# create project
	@cd $(ROOT) && petalinux-create -t project -s $(K26_BSP_PATH) --name $(PROJECT_NAME)
	@sed -i 's/900/700/g' $(PROJECT_PATH)/project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi

petalinux-metalayers:
	@# Add provenrun and accelize meta-layers
	@mkdir -p $(META_PATH)
	@git clone https://github.com/Accelize/meta-accelize.git -b honister --depth 1 $(META_PATH)/meta-accelize
	@git clone https://github.com/ProvenRun/meta-provenrun.git -b xilinx-drm-honister --depth 1 $(META_PATH)/meta-provenrun
	@sed -i /CONFIG_USER_LAYER/d $(PROJECT_PATH)/project-spec/configs/config
	@echo 'CONFIG_USER_LAYER_0="$${PROOT}/components/ext_sources/meta-provenrun"' >> $(PROJECT_PATH)/project-spec/configs/config
	@echo 'CONFIG_USER_LAYER_1="$${PROOT}/components/ext_sources/meta-accelize"' >> $(PROJECT_PATH)/project-spec/configs/config
	@echo 'CONFIG_USER_LAYER_2=""' >> $(PROJECT_PATH)/project-spec/configs/config
	@echo 'MACHINE_FEATURES:append = " provencore accelize fpga-overlay"' >> $(PROJECT_PATH)/project-spec/meta-user/conf/petalinuxbsp.conf

petalinux-config: check
	@yes | petalinux-config -p $(PROJECT_PATH) --silentconfig

petalinux-fix-conf: check
	@sed -i 's/uppercase/provenrun-uppercase/g' $(PROJECT_PATH)/components/yocto/layers/meta-petalinux/dynamic-layers/provenrun/recipes-core/images/petalinux-image-common-provencore.inc
	@sed -i 's/drmselftest/accelize-drmselftest/g' $(PROJECT_PATH)/components/yocto/layers/meta-petalinux/dynamic-layers/accelize/recipes-core/images/petalinux-image-common-accelize.inc

petalinux-add-apps: check
	@# ============= Add FPGA Bitstream =============
	@petalinux-create -p $(PROJECT_PATH) --force -t apps --template fpgamanager -n accelize-kv260-drmdemo-firmware --enable --srcuri " \
			$(PATH_TO_KV260_PRJ)/petalinux_recipes/accelize-kv260-drmdemo-firmware/kv260-aibox-reid.dtsi \
			$(PATH_TO_KV260_PRJ)/petalinux_recipes/accelize-kv260-drmdemo-firmware/shell.json  \
			$(PATH_TO_KV260_PRJ)/_x/link/int/system.bit  \
			$(PATH_TO_KV260_PRJ)/xclbin/rtl_adder_pipes_xilinx_kv260.xclbin"
	@mv ${PROJECT_PATH}/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-firmware/accelize-kv260-drmdemo-firmware.bb ${PROJECT_PATH}/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-firmware/accelize-kv260-drmdemo-firmware_${VERSION}.bb
	@echo 'PKGR = "$(PR)"' >> $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-firmware/accelize-kv260-drmdemo-firmware_$(VERSION).bb
	@# ============= Add FPGA App =============
	@petalinux-create -p $(PROJECT_PATH) --force -t apps -n accelize-kv260-drmdemo-app --enable --srcuri "\
			$(PATH_TO_KV260_PRJ)/app/Makefile \
			$(PATH_TO_KV260_PRJ)/app/main.cpp \
			$(PATH_TO_KV260_PRJ)/app/conf.json"
	@cp $(PATH_TO_KV260_PRJ)/petalinux_recipes/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app.bb $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app.bb
	@mv $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app.bb $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_${VERSION}.bb
	@echo 'PKGR = "$(PR)"' >> $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_$(VERSION).bb

petalinux-fix-xrt: check
	@echo 'RDEPENDS:$${PN} += " zocl (=202210.2.13.479)"' >> $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_1.1.bb
	@echo 'RDEPENDS:$${PN} += " xrt  (=202210.2.13.479)"' >> $(PROJECT_PATH)/project-spec/meta-user/recipes-apps/accelize-kv260-drmdemo-app/accelize-kv260-drmdemo-app_1.1.bb

petalinux-build: check
	@petalinux-build -p $(PROJECT_PATH)

petalinux-package: check
	@cd $(PROJECT_PATH) && petalinux-package --wic --images-dir images/linux/ --bootfiles "ramdisk.cpio.gz.u-boot,boot.scr,Image,system.dtb,system-zynqmp-sck-kv-g-revB.dtb" --disk-name "mmcblk1"
	@cd $(PROJECT_PATH) && gzip images/linux/petalinux-sdimage.wic

petalinux-rpms: check
	@rm -rf /tmp/kv260-rpms /tmp/kv260-rpms.tar.gz
	@mkdir /tmp/kv260-rpms
	@find $(PROJECT_PATH) -name "*.rpm" | grep "accelize" | xargs -P 0 -I {} cp {} /tmp/kv260-rpms/.
	@find $(PROJECT_PATH) -name "*.rpm" | grep "libjsoncpp" | xargs -P 0 -I {} cp {} /tmp/kv260-rpms/.
	@find $(PROJECT_PATH) -name "*.rpm" | grep "provencore" | xargs -P 0 -I {} cp {} /tmp/kv260-rpms/.
	@find $(PROJECT_PATH) -name "*.rpm" | grep "pnc" | xargs -P 0 -I {} cp {} /tmp/kv260-rpms/.
	@rm -rf /tmp/kv260-rpms/accelize-repo*
	@tar czf /tmp/kv260-rpms-$(VERSION)-$(PR).tar.gz /tmp/kv260-rpms
	@echo "RPM Archive is available here: /tmp/kv260-rpms-$(VERSION)-$(PR).tar.gz"

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

.PHONY: all petalinux-create petalinux-config petalinux-add-apps petalinux-build petalinux-package prerequisites clean clean_all check petalinux-rpms

