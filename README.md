# QEMU based Cross Compilation toolchain for ARM
## Requirements on Hosts system
### Mac OS X with 
	- ports
	- brew
	-`brew install qemu`/`ports install qemu`
## Steps to build Virtual-PI using Raspbian-Jessy 
 Credits https://blog.agchapman.com/using-qemu-to-emulate-a-raspberry-pi/
1. Install QEMU (On mac using `brew install qemu`/`ports install qemu`; On Debian use `apt install qemu`)
1. `git clone https://github.com/subhrendu1987/ARMCrossCompileQEMU`
1. `cd ARMCrossCompileQEMU`
1. Download `Raspberry Pi OS (32-bit) Lite` (from https://www.raspberrypi.org/downloads/raspberry-pi-os/) and extract it to generate *.img* file.
	1. Convert *.img* to *.qcow* using `qemu-img convert -f raw -O qcow2 2020-08-20-raspios-buster-armhf-lite.img raspios-buster-armhf-lite.qcow`.
	1. Increase the image size `qemu-img resize raspios-buster-armhf-lite.qcow +6G`.
1. `git clone https://github.com/dhruvvyas90/qemu-rpi-kernel.git`.
1. `bash invokeVirtualPi.sh`; Rpi default login credentials `pi:raspberry`.
1. 