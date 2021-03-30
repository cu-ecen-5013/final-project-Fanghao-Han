#!/bin/sh
# Shared definitions for buildroot scripts

# The defconfig from the buildroot directory we use for qemu builds
PI3_DEFCONFIG=configs/raspberrypi3_defconfig
# The place we store customizations to the qemu configuration
MODIFIED_PI3_DEFCONFIG=base_external/configs/aesd_raspberrypi3_defconfig
# The defconfig from the buildroot directory we use for the project
AESD_DEFAULT_DEFCONFIG=${PI3_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG=${MODIFIED_PI3_DEFCONFIG}
AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${AESD_MODIFIED_DEFCONFIG}
