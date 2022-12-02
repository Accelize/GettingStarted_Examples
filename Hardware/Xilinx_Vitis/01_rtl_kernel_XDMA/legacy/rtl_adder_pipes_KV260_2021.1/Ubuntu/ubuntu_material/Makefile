ROOT               ?= $(PWD)
PATH_TO_KV260_PRJ  ?= $(HOME)/GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_KV260_2021.1/Ubuntu
PROJECT_NAME       ?= xilinx-k26-starterkit-drmdemo
APP_NAME           ?= accelize-getting-started-demo
APP_VERSION        ?= 1.2-2+focal
APP_ARCH           ?= arm64
DEB_NAME           ?= $(APP_NAME)_$(APP_VERSION)_$(APP_ARCH)
PROJECT_PATH       ?= $(ROOT)/$(PROJECT_NAME)
PAC_FOLDER_PATH    ?= $(PROJECT_PATH)
PAC_APP_PATH       ?= $(PROJECT_PATH)/hwconfig/$(APP_NAME)
BOOT_ASSETS_PATH   ?= $(PAC_APP_PATH)/kv260
PAC_INSTALL_DIR    ?=/usr/local/share/xlnx-config/

all: pac_folder package

clean:
	@rm -rf $(PROJECT_PATH) ${APP_NAME} ${DEB_NAME}.deb $(PROJECT_PATH).tar.gz

prerequisites:
	@sudo snap install xlnx-config --classic
	@mkdir -p $(PROJECT_PATH)

check:
ifndef XILINX_VITIS
	$(error You must source VITIS toolchain init script before)
endif


$(BOOT_ASSETS_PATH)/$(APP_NAME).bit.bin: check
	@mkdir -p $(BOOT_ASSETS_PATH)
	# Build <Accelerated app name>.bit.bin
	@cp $(PATH_TO_KV260_PRJ)/_x/link/int/system.bit $(PROJECT_PATH)/$(APP_NAME).bit
	@cp $(PATH_TO_KV260_PRJ)/ubuntu_material/$(APP_NAME).bif $(PROJECT_PATH)/.
	@cd $(PROJECT_PATH) && bootgen -arch zynqmp -process_bitstream bin -image $(APP_NAME).bif
	@mv $(PROJECT_PATH)/$(APP_NAME).bit.bin $(BOOT_ASSETS_PATH)/$(APP_NAME).bit.bin
	@rm -f $(PROJECT_PATH)/$(APP_NAME).bit $(PROJECT_PATH)/$(APP_NAME).bif

$(BOOT_ASSETS_PATH)/$(APP_NAME).dtbo: check
	@mkdir -p $(BOOT_ASSETS_PATH)
	# Build <Accelerated app name>.dtbo
	@dtc -q -@ -O dtb -o $(BOOT_ASSETS_PATH)/$(APP_NAME).dtbo $(PATH_TO_KV260_PRJ)/ubuntu_material/$(APP_NAME).dtsi

$(BOOT_ASSETS_PATH)/$(APP_NAME).xclbin:
	@mkdir -p $(BOOT_ASSETS_PATH)
	# Copy <Accelerated app name>.xclbin
	@cp  $(PATH_TO_KV260_PRJ)/xclbin/*.xclbin $(BOOT_ASSETS_PATH)/$(APP_NAME).xclbin

$(BOOT_ASSETS_PATH)/shell.json:
	# Copy shell.json
	@cp $(PATH_TO_KV260_PRJ)/ubuntu_material/shell.json $(BOOT_ASSETS_PATH)/.

pac_folder: $(BOOT_ASSETS_PATH)/$(APP_NAME).bit.bin $(BOOT_ASSETS_PATH)/$(APP_NAME).dtbo $(BOOT_ASSETS_PATH)/$(APP_NAME).xclbin $(BOOT_ASSETS_PATH)/shell.json
	@cp $(PATH_TO_KV260_PRJ)/ubuntu_material/manifest.yaml $(PAC_APP_PATH)/.
	@tar czf $(PROJECT_NAME).tar.gz $(PROJECT_NAME)

package:
	# Build DEBIAN Package
	@rm -rf /tmp/${DEB_NAME}
	@mkdir -p /tmp/${DEB_NAME}/DEBIAN
	@mkdir -p /tmp/${DEB_NAME}/${PAC_INSTALL_DIR}
	@mkdir -p /tmp/${DEB_NAME}/usr/bin
	@mkdir -p /tmp/${DEB_NAME}/tmp/${APP_NAME}
	@cp -r ${PAC_FOLDER_PATH} /tmp/${DEB_NAME}/${PAC_INSTALL_DIR}
	@cp -f ubuntu_material/app/* /tmp/${DEB_NAME}/tmp/${APP_NAME}/.
	@cp ubuntu_material/app/conf.json /tmp/${DEB_NAME}/usr/bin
	@cp ubuntu_material/DEBIAN/* /tmp/${DEB_NAME}/DEBIAN/.
	@chmod 555 /tmp/${DEB_NAME}/DEBIAN/postinst
	@chmod 555 /tmp/${DEB_NAME}/DEBIAN/prerm
	@cd /tmp/${DEB_NAME} && find ./usr/ ./tmp/ -type f -exec md5sum "{}" + > ./DEBIAN/md5sums
	@cd /tmp && dpkg-deb --build --root-owner-group ${DEB_NAME}
	@mv /tmp/${DEB_NAME}.deb .
	@rm -rf /tmp/${DEB_NAME}

.PHONY: all prerequisites clean pac_folder package

