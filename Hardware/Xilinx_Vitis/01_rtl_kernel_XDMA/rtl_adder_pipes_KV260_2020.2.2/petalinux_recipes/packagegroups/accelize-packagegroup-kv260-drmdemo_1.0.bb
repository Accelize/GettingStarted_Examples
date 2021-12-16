DESCRIPTION = "Accelize DRM Adder Demo related Packages"

inherit packagegroup

DRM_ADDER_DEMO_PACKAGES = " \
        accelize-kv260-drmdemo-fpga \
        accelize-kv260-drmdemo-app \
        "

RDEPENDS_${PN} = "${DRM_ADDER_DEMO_PACKAGES}"

PR = "1.pl2020_2_2"
COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE_k26-kv = "${MACHINE}"
PACKAGE_ARCH = "${BOARDVARIANT_ARCH}"
