#
# This file is the accelize-kv260-drm-adder-demo-app_1.0 recipe.
#

SUMMARY = "accelize-kv260-drmdemo-app_1.0"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

export STAGING_INCDIR
TARGET_CC_ARCH += "${LDFLAGS}"

DEPENDS += " \
        xrt \
        libaccelize-drm \
        "

RDEPENDS:${PN} += " accelize-kv260-drmdemo-firmware"

SRC_URI = "file://Makefile \
           file://main.cpp \
           file://conf.json \
           "

S = "${WORKDIR}"

do_install() {
    install -d ${D}${bindir}
    install -d -m 0777 ${D}${sysconfdir}/xilinx_appstore
    install -d ${D}${sysconfdir}/xilinx_appstore/xlz-kv260-drmdemo
    install -m 0755 ${S}/app ${D}${bindir}
    install -m 0644 ${S}/conf.json ${D}${sysconfdir}/xilinx_appstore/xlz-kv260-drmdemo/
}

pkg_postinst:${PN} () {
    #!/bin/sh -e
    chmod a+rw $D${sysconfdir}/xilinx_appstore 
    chmod u+s  $D${bindir}/app
}
