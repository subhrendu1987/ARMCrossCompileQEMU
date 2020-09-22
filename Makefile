download-prerequisite:
	git clone https://github.com/dhruvvyas90/qemu-rpi-kernel.git
	curl https://downloads.raspberrypi.org/raspios_lite_armhf_latest
init-build-environment:
	qemu-img convert -f raw -O qcow2 2020-08-20-raspios-buster-armhf-lite.img raspios-buster-armhf-lite.qcow
	qemu-img resize raspios-buster-armhf-lite.qcow +6G