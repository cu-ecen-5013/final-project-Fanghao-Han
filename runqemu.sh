#!/bin/bash
#Script to run QEMU for buildroot as the default configuration qemu_aarch64_virt_defconfig
#Host forwarding: Host Port 10022 ->> QEMU Port 22 
#Author: Siddhant Jajoo.

# Modified by Fanghao Han
# Date: Feb 21, 2021
# Forward host port 9000 to your qemu instance port 9000. 
# Also to pass through virtual machine port 10022 to port 22 on your qemu instance.

# reference: https://wiki.qemu.org/Documentation/Networking

# Network devices:
# name "e1000", bus PCI, alias "e1000-82540em", desc "Intel Gigabit Ethernet"
# name "e1000-82544gc", bus PCI, desc "Intel Gigabit Ethernet"
# name "e1000-82545em", bus PCI, desc "Intel Gigabit Ethernet"
# name "e1000e", bus PCI, desc "Intel 82574L GbE Controller"
# name "i82550", bus PCI, desc "Intel i82550 Ethernet"
# name "i82551", bus PCI, desc "Intel i82551 Ethernet"
# name "i82557a", bus PCI, desc "Intel i82557A Ethernet"
# name "i82557b", bus PCI, desc "Intel i82557B Ethernet"
# name "i82557c", bus PCI, desc "Intel i82557C Ethernet"
# name "i82558a", bus PCI, desc "Intel i82558A Ethernet"
# name "i82558b", bus PCI, desc "Intel i82558B Ethernet"
# name "i82559a", bus PCI, desc "Intel i82559A Ethernet"
# name "i82559b", bus PCI, desc "Intel i82559B Ethernet"
# name "i82559c", bus PCI, desc "Intel i82559C Ethernet"
# name "i82559er", bus PCI, desc "Intel i82559ER Ethernet"
# name "i82562", bus PCI, desc "Intel i82562 Ethernet"
# name "i82801", bus PCI, desc "Intel i82801 Ethernet"
# name "ne2k_pci", bus PCI
# name "pcnet", bus PCI
# name "rocker", bus PCI, desc "Rocker Switch"
# name "rtl8139", bus PCI
# name "usb-bt-dongle", bus usb-bus
# name "usb-net", bus usb-bus
# name "virtio-net-device", bus virtio-bus
# name "virtio-net-pci", bus PCI, alias "virtio-net"


#qemu-system-aarch64 -M virt -cpu cortex-a53 -nographic -smp 1 -kernel buildroot/output/images/Image -append "rootwait root=/dev/vda console=ttyAMA0" -netdev user,id=eth0,hostfwd=tcp::10022-:22 -device virtio-net-device,netdev=eth0 -drive file=buildroot/output/images/rootfs.ext4,if=none,format=raw,id=hd0 -device virtio-blk-device,drive=hd0 -device virtio-rng-pci

##-netdev user,id=eth0,hostfwd=tcp::10022-:22 \

qemu-system-aarch64 -M virt -cpu cortex-a53 -nographic -smp 1 \
-kernel buildroot/output/images/Image \
-append "rootwait root=/dev/vda console=ttyAMA0"  \
-netdev user,id=eth0,hostfwd=tcp::9000-:9000,hostfwd=tcp::10022-:22 \
-device virtio-net-device,netdev=eth0 \
-drive file=buildroot/output/images/rootfs.ext4,if=none,format=raw,id=hd0 \
-device virtio-blk-device,drive=hd0 \
-device virtio-rng-pci
