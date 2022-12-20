ROOT               ?= $(PWD)
PATH_TO_K26_PRJ    ?= $(HOME)/GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_k26/Ubuntu
APP_NAME           ?= accelize-k26-drmdemo
PROJECT_PATH	   ?= $(ROOT)/$(APP_NAME)
APP_PL_NAME        ?= $(APP_NAME)-firmware
APP_VERSION        ?= 1.2-2+jammy
APP_ARCH           ?= arm64
DEB_NAME           ?= $(APP_NAME)_$(APP_VERSION)_$(APP_ARCH)
DEB_NAME_FIRMWARE  ?= $(APP_NAME)-firmware_$(APP_VERSION)_$(APP_ARCH)
ASSETS_FOLDER_PATH ?= $(PROJECT_PATH)/$(APP_PL_NAME)
ASSETS_INSTALL_DIR ?=/lib/firmware/xilinx

all: assets_folder package

clean:
	@rm -rf $(PROJECT_PATH) 

check:
ifndef XILINX_VITIS
	$(error You must source VITIS toolchain init script before)
endif


$(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).bit.bin: check
	@mkdir -p $(ASSETS_FOLDER_PATH)
	# Build <Accelerated app name>.bit.bin
	@cp $(PATH_TO_K26_PRJ)/_x/link/int/system.bit $(PROJECT_PATH)/$(APP_PL_NAME).bit
	@cp $(PATH_TO_K26_PRJ)/ubuntu_material/$(APP_PL_NAME).bif $(PROJECT_PATH)/.
	@cd $(PROJECT_PATH) && bootgen -arch zynqmp -process_bitstream bin -image $(APP_PL_NAME).bif
	@mv $(PROJECT_PATH)/$(APP_PL_NAME).bit.bin $(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).bit.bin
	@rm -f $(PROJECT_PATH)/$(APP_PL_NAME).bit $(PROJECT_PATH)/$(APP_PL_NAME).bif

$(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).dtbo: check
	@mkdir -p $(ASSETS_FOLDER_PATH)
	# Build <Accelerated app name>.dtbo
	@dtc -q -@ -O dtb -o $(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).dtbo $(PATH_TO_K26_PRJ)/ubuntu_material/$(APP_PL_NAME).dtsi

$(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).xclbin:
	@mkdir -p $(ASSETS_FOLDER_PATH)
	# Copy <Accelerated app name>.xclbin
	@cp  $(PATH_TO_K26_PRJ)/xclbin/*.xclbin $(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).xclbin

$(ASSETS_FOLDER_PATH)/shell.json:
	# Copy shell.json
	@cp $(PATH_TO_K26_PRJ)/ubuntu_material/shell.json $(ASSETS_FOLDER_PATH)/.

assets_folder: $(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).bit.bin $(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).dtbo $(ASSETS_FOLDER_PATH)/$(APP_PL_NAME).xclbin $(ASSETS_FOLDER_PATH)/shell.json
	@tar czf $(PROJECT_PATH)/$(APP_PL_NAME).tar.gz $(ASSETS_FOLDER_PATH)

package:
	# Build firmware DEBIAN Package
	@rm -rf /tmp/$(DEB_NAME_FIRMWARE)
	@mkdir -p /tmp/$(DEB_NAME_FIRMWARE)/DEBIAN
	@mkdir -p /tmp/$(DEB_NAME_FIRMWARE)/$(ASSETS_INSTALL_DIR)
	@cp -r $(ASSETS_FOLDER_PATH) /tmp/$(DEB_NAME_FIRMWARE)/$(ASSETS_INSTALL_DIR)/.
	@cp ubuntu_material/DEBIAN/firmware/* /tmp/$(DEB_NAME_FIRMWARE)/DEBIAN/.
	@chmod 555 /tmp/$(DEB_NAME_FIRMWARE)/DEBIAN/prerm
	@cd /tmp/$(DEB_NAME_FIRMWARE) && find ./lib/ -type f -exec md5sum "{}" + > ./DEBIAN/md5sums
	# Build firmware DEBIAN Package
	@rm -rf /tmp/$(DEB_NAME)
	@mkdir -p /tmp/$(DEB_NAME)/DEBIAN
	@mkdir -p /tmp/$(DEB_NAME)/usr/bin
	@mkdir -p /tmp/$(DEB_NAME)/tmp/$(APP_NAME)
	@mkdir -p /tmp/$(DEB_NAME)/etc/xilinx_appstore/xlz-k26-drmdemo
	@cp -f $(PATH_TO_K26_PRJ)/app/* /tmp/$(DEB_NAME)/tmp/$(APP_NAME)/.
	@cp $(PATH_TO_K26_PRJ)/app/conf.json /tmp/$(DEB_NAME)/usr/bin
	@cp ubuntu_material/DEBIAN/software/* /tmp/$(DEB_NAME)/DEBIAN/.
	@chmod 555 /tmp/$(DEB_NAME)/DEBIAN/postinst
	@chmod 555 /tmp/$(DEB_NAME)/DEBIAN/prerm
	@cd /tmp/$(DEB_NAME) && find ./usr/ ./tmp/ ./etc/ -type f -exec md5sum "{}" + > ./DEBIAN/md5sums
	# Get generated Packages
	@cd /tmp && dpkg-deb --build --root-owner-group $(DEB_NAME_FIRMWARE)
	@cd /tmp && dpkg-deb --build --root-owner-group $(DEB_NAME)
	@mv /tmp/$(DEB_NAME).deb $(PROJECT_PATH)/.
	@mv /tmp/$(DEB_NAME_FIRMWARE).deb $(PROJECT_PATH)/.
	@rm -rf /tmp/$(DEB_NAME_FIRMWARE)
	@rm -rf /tmp/$(DEB_NAME)

.PHONY: all clean assets_folder package

