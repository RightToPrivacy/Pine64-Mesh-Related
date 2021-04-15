***ARMBIAN FAILED BOOT PATCHING***

April 15th 2021 release and earlier

Patch to correct Armbian boot failure on upgrades for Pine64 LTS + new LoRa board + SOPINE in latest Armbian DTS
[For anyone who needs it with Pine64/SOPINE/LoRA board]


Original thread here: https://forum.armbian.com/topic/17333-unable-to-boot-focal-or-buster-images-on-sopine-clusterboard
* couple minor typos/directory issues on original above post corrected in this file *

[ thanks user dippywood on Armbian forum for providing the fix file ] :)

(Tor access only based git server hidden .onion service):
clone http://gg6zxtreajiijztyy5g6bt5o6l3qu32nrg7eulyemlhxwwl6enk6ghad.onion/RightToPrivacy/Patch-Pine64-DTS.git

INSTRUCTIONS: 

1.) Extract this README/.dts file
2.) Place Armbian image to be patched in this directory for issuing following commands.
3.) Run the following commands in order:

sudo mkdir /tmp/image


sudo mount -v -o offset=4194304 -t ext4 Armbian_21.02.3_Pine64so_focal_current_5.10.21.img /tmp/image 
(replace above Armbian image name with yours)

sudo dtc -O dtb -o /tmp/image/boot/dtb/allwinner/sun50i-a64-sopine-baseboard.dtb -b 0 sun50i-a64-sopine-baseboard.dts


umount /tmp/image


4.) Upgrade: apt update && apt full-upgrade -y
5.) reboot without issue

Verified everything to work properly and reboot without fail after upgrade. :)

[ SOURCE: User "dippywood" provided original .dts file on forum.armbian.com). ]
