# Pine64-Mesh Related Progress Log (more later)
Playing with Pine64's board/and modules related to Semtech's LoRa and other Mesh related topics (documenting/sharing along the way)

Disassembled the Gateway to find (info added later after announced by Pine64 official)

Proceeded to explore different  images. Standard A64 images will *not* boot and limits the available Linux distros greatly.

Settled on Armbian. A good solid Debian base.

Ran into issue using latest Armbian: a change in boot causing a failure to find root/boot.

Found earlier release of Armbian (Feb 2) flashes to sdcard and boots. :)

Compiled some stuff (more info after Pine64 gets chance to announce)

--------------------------------------

Fixed the boot problem in newer images using a patch I found on a post on Armbian forum.

EDIT: I just uploaded patched image for anyone who wants to skip the patching process (for SoPine/LTS Pine64 based boards (including Gateway)
You can download that patched Armbian image for SoPine/LTS/Gateway (Pine64) link is here: 
https://mega.nz/file/Wd5CGRhB#spBqSQrhLm_gIPtRexV9OOC8T3YoVk9VuHopFs4Ho9o

-----------------------------------------------------------------------

For those who want to implement the patch on their own follow below:


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

Working on looking at drivers. Have compiled a bit. Documentation/packaging/setup online is all for Raspberry pi so the process continues...


To be continued...


