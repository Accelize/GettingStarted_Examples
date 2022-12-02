ROOT               ?= $(PWD)
PATH_TO_K26_PRJ    ?= $(HOME)/GettingStarted_Examples/Hardware/Xilinx_Vitis/01_rtl_kernel_XDMA/rtl_adder_pipes_k26/Ubuntu
APP_NAME           ?= accelize-k26-drmdemo
PROJECT_PATH	   ?= $(ROOT)/$(APP_NAME)
APP_PL_NAME        ?= $(APP_NAME)-firmware
APP_VERSION        ?= 1.2-2+jammy
APP_ARCH           ?= arm64
DEB_NAME           ?= $(APP_NAME)_$(APP_VERSION)_$(APP_ARCH)
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
	# Build DEBIAN Package
	@rm -rf /tmp/$(DEB_NAME)
	@mkdir -p /tmp/$(DEB_NAME)/DEBIAN
	@mkdir -p /tmp/$(DEB_NAME)/$(ASSETS_INSTALL_DIR)
	@mkdir -p /tmp/$(DEB_NAME)/usr/bin
	@mkdir -p /tmp/$(DEB_NAME)/tmp/$(APP_NAME)
	@mkdir -p /tmp/$(DEB_NAME)/etc/xilinx_appstore/xlz-k26-drmdemo
	@cp -r $(ASSETS_FOLDER_PATH) /tmp/$(DEB_NAME)/$(ASSETS_INSTALL_DIR)/.
	@cp -f $(PATH_TO_K26_PRJ)/app/* /tmp/$(DEB_NAME)/tmp/$(APP_NAME)/.
	@cp $(PATH_TO_K26_PRJ)/app/conf.json /tmp/$(DEB_NAME)/usr/bin
	@cp ubuntu_material/DEBIAN/* /tmp/$(DEB_NAME)/DEBIAN/.
	@chmod 555 /tmp/$(DEB_NAME)/DEBIAN/postinst
	@chmod 555 /tmp/$(DEB_NAME)/DEBIAN/prerm
	@cd /tmp/$(DEB_NAME) && find ./usr/ ./tmp/ -type f -exec md5sum "{}" + > ./DEBIAN/md5sums
#	@cd /tmp && dpkg-deb --build --root-owner-group $(DEB_NAME)
	@cd /tmp && dpkg-deb --build $(DEB_NAME)
	@mv /tmp/$(DEB_NAME).deb $(PROJECT_PATH)/.
	@rm -rf /tmp/$(DEB_NAME)

.PHONY: all clean assets_folder package

