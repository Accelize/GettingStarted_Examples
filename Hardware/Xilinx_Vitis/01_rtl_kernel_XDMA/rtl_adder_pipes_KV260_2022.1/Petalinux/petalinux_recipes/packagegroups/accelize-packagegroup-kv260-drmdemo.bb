DESCRIPTION = "Accelize DRM Adder Demo related Packages"

inherit packagegroup

DRM_ADDER_DEMO_PACKAGES = " \
        accelize-kv260-drmdemo-fpga \
        accelize-kv260-drmdemo-app \
        "

RDEPENDS:${PN}:append = "${DRM_ADDER_DEMO_PACKAGES}"

COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE:k26-kv = "${MACHINE}"
PACKAGE_ARCH = "${MACHINE_ARCH}"
