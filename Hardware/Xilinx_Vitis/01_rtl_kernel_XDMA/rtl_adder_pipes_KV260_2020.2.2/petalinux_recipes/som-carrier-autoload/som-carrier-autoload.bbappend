do_install () {
    install -d ${D}${sysconfdir}/init.d/
    install -m 0755 ${WORKDIR}/som-carrier-autoload.sh ${D}${sysconfdir}/init.d/

    if [ "${INITRAMFS_IMAGE}" = "petalinux-initramfs-image" ]; then
	install -d ${D}/exec.d/
	install -m 0755 ${WORKDIR}/som-carrier-autoload.sh ${D}/exec.d/
    fi
}
