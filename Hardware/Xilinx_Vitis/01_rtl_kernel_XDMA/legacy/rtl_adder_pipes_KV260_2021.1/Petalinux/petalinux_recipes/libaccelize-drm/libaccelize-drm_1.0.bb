#
# This file is the accelizedrm recipe.
#

SUMMARY = "Simple accelizedrm application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "gitsm://github.com/Accelize/drm.git;protocol=https"
SRCREV = "${AUTOREV}"

DEPENDS += " \
    curl \
    jsoncpp \
"

S = "${WORKDIR}/git"
PR = "1.pl2021_1"

inherit pkgconfig cmake

FILES_${PN} += "${libdir}/*"
