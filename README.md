# Pine64-LoRa Progress Log (more later)
Playing with Pine64's LoRa board/modules (documenting/sharing along the way)

Disassembled the Gateway to find underlying A64 (Pine64) with added 16gb ram and related LoRa hardware on GPIO.

Proceeded to explore different A64 LTS (long term supply) images. This means standard A64 images will *not* boot and limits the available Linux distros greatly.

Settled on Armbian. A good solid Debian base.

Ran into issue using latest Armbian: a change in boot causing a failure to find root/boot.

Found earlier release of Armbian (Feb 2) flashes to sdcard and boots. :)

Compiled sx1302_hal.

--------------------------------------

Fixed the boot problem in newer images using a patch I found on a post on Armbian forum.

PATCHING: INSTRUCTIONS: 

1.) Extract this README/.dts file (found in this directory)
2.) Place Armbian image to be patched in this directory for issuing following commands.
3.) Run the following commands in order:

sudo mkdir /tmp/image


sudo mount -v -o offset=4194304 -t ext4 Armbian_21.02.3_Pine64so_focal_current_5.10.21.img /tmp/image 
(replace above Armbian image name with yours)

sudo dtc -O dtb -o /tmp/image/boot/dtb/allwinner/sun50i-a64-sopine-baseboard.dtb -b 0 sun50i-a64-sopine-baseboard.dts


umount /tmp/image

Nou your Armbian .img file should be ready to flash. As long as no errors/all went well, upgrading should be no issue (I tested it).


--------------------------------------------------




To be continued...


