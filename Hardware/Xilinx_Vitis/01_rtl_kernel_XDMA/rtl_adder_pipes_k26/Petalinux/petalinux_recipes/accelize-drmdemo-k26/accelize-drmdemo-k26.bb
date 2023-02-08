#
# This file is the accelize-drmdemo-k26_1.0 recipe.
#

SUMMARY = "accelize-drmdemo-k26_1.0"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

export STAGING_INCDIR
TARGET_CC_ARCH += "${LDFLAGS}"

DEPENDS += " \
        xrt \
        libaccelize-drm \
        "

RDEPENDS:${PN} += " accelize-drmdemo-k26-firmware"

SRC_URI = "file://Makefile \
           file://main.cpp \
           file://conf.json \
           "

S = "${WORKDIR}"

do_install() {
    install -d ${D}${bindir}
    install -d ${D}${sysconfdir}/xilinx_appstore
    install -d ${D}${sysconfdir}/xilinx_appstore/xlz-drmdemo-k26
    install -m 0755 ${S}/accelize-drmdemo-k26 ${D}${bindir}
    install -m 0644 ${S}/conf.json ${D}${sysconfdir}/xilinx_appstore/xlz-drmdemo-k26/
}

pkg_postinst:${PN} () {
    #!/bin/sh -e
    chmod a+rw $D${sysconfdir}/xilinx_appstore 
    chmod u+s  $D${bindir}/accelize-drmdemo-k26
}
