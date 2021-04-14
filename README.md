# Pine64-LoRa Progress Log (more later)
Playing with Pine64's LoRa board/modules (documenting/sharing along the way)

Disassembled the Gateway to find underlying A64 (Pine64) with added 16gb ram and related LoRa hardware on GPIO.

Proceeded to explore different A64 LTS (long term supply) images. This means standard A64 images will *not* boot and limits the available Linux distros greatly.

Settled on Armbian. A good solid Debian base.

Ran into issue using latest Armbian: a change in boot causing a failure to find root/boot.

Found earlier release of Armbian (Feb 2) flashes to sdcard and boots. :)

Compiled sx1302_hal.

To be continued...


