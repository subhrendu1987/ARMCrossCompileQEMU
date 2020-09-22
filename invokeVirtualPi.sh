#! /bin/bash
KERNEL_PATH="qemu-rpi-kernel/kernel-qemu-4.4.34-jessie"
HDA_PATH="raspios-buster-armhf-lite.qcow"

##########################################
sudo qemu-system-arm \
-kernel ${KERNEL_PATH} \
-append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
-hda ${HDA_PATH} \
-cpu arm1176 -m 256 \
-M versatilepb \
-no-reboot \
-serial stdio \
-device e1000,netdev=net0 \
-netdev user,id=net0,hostfwd=tcp::5555-:22

#-netdev tap,id=mynet0,ifname=tap0,script=no,downscript=no \
#-device e1000,netdev=mynet0,mac=52:55:00:d1:55:01

#-net nic -net user \
#-net tap,ifname=utun0,script=no,downscript=no