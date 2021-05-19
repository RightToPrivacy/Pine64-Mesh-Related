# Pine64-Mesh Related Progress Log (more later)
Playing with Pine64's board/and modules related to Semtech's LoRa and other Mesh related topics (documenting/sharing along the way)

Disassembled the Gateway to find (info added later after announced by Pine64 official)

Proceeded to explore different  images. Standard A64 images will *not* boot and limits the available Linux distros greatly.

Settled on Armbian. A good solid Debian base.

Ran into issue using latest Armbian: a change in boot causing a failure to find root/boot.

Found earlier release of Armbian (Feb 2) flashes to sdcard and boots. :)

Compiled sx1302_hal and have been working on setting up rak-gateway as a testing environment.

Reset pin: 71 GPS: /dev/ttyS2 SPI Concentrator: /dev/spidev0.0 more to add later as I get time to write out.

Example log from rak-gateway (still working on testing things out will update):

Apr 22 16:57:19 rak-gateway ttn-gateway[6400]: CoreCell reset through GPIO71...
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: *** Packet Forwarder ***
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: Version: 2.0.1
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: *** SX1302 HAL library version info ***
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: Version: 2.0.1;
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: ***
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Little endian host
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: found configuration file global_conf.json, parsing
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: global_conf.json does contain a JSON object named SX130x_conf, parsing SX1302 parameters
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: com_type SPI, com_path /dev/spidev0.0, lorawan_public 1, clksrc 0, full_duplex 0
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: antenna_gain 0 dBi
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Configuring legacy timestamp
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: no configuration for SX1261
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Configuring Tx Gain LUT for rf_chain 0 with 16 indexes for sx1250
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: radio 0 enabled (type SX1250), center frequency 904300000, RSSI offset -215.399994, tx enabled 1, single input mode 0
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: radio 1 enabled (type SX1250), center frequency 905000000, RSSI offset -215.399994, tx enabled 0, single input mode 0
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora multi-SF channel 0>  radio 0, IF -400000 Hz, 125 kHz bw, SF 5 to 12
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora multi-SF channel 1>  radio 0, IF -200000 Hz, 125 kHz bw, SF 5 to 12
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora multi-SF channel 2>  radio 0, IF 0 Hz, 125 kHz bw, SF 5 to 12
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora multi-SF channel 3>  radio 0, IF 200000 Hz, 125 kHz bw, SF 5 to 12
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora multi-SF channel 4>  radio 1, IF -300000 Hz, 125 kHz bw, SF 5 to 12
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora multi-SF channel 5>  radio 1, IF -100000 Hz, 125 kHz bw, SF 5 to 12
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora multi-SF channel 6>  radio 1, IF 100000 Hz, 125 kHz bw, SF 5 to 12
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora multi-SF channel 7>  radio 1, IF 300000 Hz, 125 kHz bw, SF 5 to 12
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: Lora std channel> radio 0, IF 300000 Hz, 500000 Hz bw, SF 8, Explicit header
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: FSK channel 8 disabled
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: global_conf.json does contain a JSON object named gateway_conf, parsing gateway parameters
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: gateway MAC address is configured to AA545322343235 (mac masked)
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: server hostname or IP address is configured to "router.us.thethings.network"
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: upstream port is configured to "1700"
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: downstream port is configured to "1700"
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: downstream keep-alive interval is configured to 10 seconds
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: statistics display interval is configured to 30 seconds
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: upstream PUSH_DATA time-out is configured to 100 ms
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: packets received with a valid CRC will be forwarded
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: packets received with a CRC error will NOT be forwarded
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: packets received with no CRC will NOT be forwarded
Apr 22 16:57:23 rak-gateway ttn-gateway[6400]: INFO: GPS serial port path is configured to "/dev/ttyS2"
....
Apr 23 03:17:37 rak-gateway ttn-gateway[17110]: # PUSH_DATA datagrams sent: 1 (124 bytes)
Apr 23 03:17:37 rak-gateway ttn-gateway[17110]: # PUSH_DATA acknowledged: 100.00%

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

Documentation/packaging/setup online is all for Raspberry pi so the process continues...

UPDATE 5/2/2021: I forked Rakwireless' rak_common_for_gateway and have been editing the rak2287 SPI for Pine64 Gateway. You can find that here with instructions 
I added for those interested (check the edited README.md):
https://github.com/RightToPrivacy/rak_common_for_gateway

If you follow the instructions there you should be able to get the concentrator to start. I also have the GPS working properly and registering correct coordinates based on those instructions (be sure to run your GPS antenna near a window if indoors).


I have done an update video to cover steps and status over the first month: https://youtu.be/ex6ocr5TKB4
