load(configure)
qtCompileTest(wayland)
qtCompileTest(xkbcommon)
qtCompileTest(wayland_scanner)
qtCompileTest(wayland_egl)
qtCompileTest(egl)
qtCompileTest(brcm_egl)
qtCompileTest(glx)
qtCompileTest(xcomposite)

load(qt_parts)

!config_wayland {
    error(QtWayland requires Wayland 1.0.0 or higher)
}

!config_xkbcommon {
    error(QtWayland requires xkbcommon 0.2.0 or higher)
}

!config_wayland_scanner {
    error(QtWayland requires wayland-scanner)
}

!config_wayland_egl {
    message("no wayland-egl support detected, cross-toolkit compatibility disabled");
}
