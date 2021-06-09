#
# This file is the kv260-drm-adder-demo-app recipe.
#

SUMMARY = "kv260-drm-adder-demo-app"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

RDEPENDS_${PN} += "libstdc++"
RDEPENDS_${PN} += "glibc"
RDEPENDS_${PN} += "gcc"
RDEPENDS_${PN} += "opencl-headers opencl-clhpp zocl"
RDEPENDS_${PN} += "libgcc xrt libcurl"

SRC_URI = "file://app \
           file://conf.json \
           file://cred.json \
           file://libaccelize_drm.so.2.5.2 \
           file://libjsoncpp.so.1.9.4 \
           "
           
S = "${WORKDIR}"

do_install() {
        install -d ${D}${bindir}
        install -d ${D}${libdir}
        install -m 0755 ${S}/app ${D}${bindir}
        install -m 0755 ${S}/conf.json ${D}${bindir}
        install -m 0755 ${S}/cred.json ${D}${bindir}
        install -m 0755 ${S}/libaccelize_drm.so.2.5.2 ${D}${libdir}
        install -m 0755 ${S}/libjsoncpp.so.1.9.4 ${D}${libdir}
        ln -rs ${D}${libdir}/libaccelize_drm.so.2.5.2 ${D}${libdir}/libaccelize_drm.so.2
        ln -rs ${D}${libdir}/libaccelize_drm.so.2 ${D}${libdir}/libaccelize_drm.so        
        ln -rs ${D}${libdir}/libjsoncpp.so.1.9.4 ${D}${libdir}/libjsoncpp.so.24 
        ln -rs ${D}${libdir}/libjsoncpp.so.24 ${D}${libdir}/libjsoncpp.so 
}

FILES_${PN} += "${libdir}/*"
FILES_${PN} += "${bindir}/*"
