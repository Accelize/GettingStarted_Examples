DESCRIPTION = "Accelize DRM Adder Demo related Packages"

inherit packagegroup

DRM_ADDER_DEMO_PACKAGES = " \
        kv260-drm-adder-demo-fpga \
        kv260-drm-adder-demo-app \
        "

RDEPENDS_${PN} = "${DRM_ADDER_DEMO_PACKAGES}"

COMPATIBLE_MACHINE = "^$"
COMPATIBLE_MACHINE_k26-kv = "${MACHINE}"
PACKAGE_ARCH = "${BOARDVARIANT_ARCH}"
