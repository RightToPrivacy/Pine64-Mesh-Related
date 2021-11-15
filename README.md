# Pine64-Mesh Related 

## Deleted the earlier info to keep this relevant/clear.

# UPDATE: Sharing a ready to use PineDio (all in one) Gateway image [11.15.2021] (w/RAKWireless Chirpstack/TTN preinstalled) can be found for download here:

https://www.buymeacoffee.com/politictech/pinedio-image-new-download (Blog Post)

https://politictech.wordpress.com/2021/11/09/new-pinedio-image-automatic-grow-to-disk/ (Backup Blog)

(Next See: https://lupyuen.github.io/articles/gateway?5#install-pinedio-gateway great tutorial for this with pictures!)

### HARDWARE (PineDio Gateway)

https://www.pine64.org (community)

https://www.pine64.com (Pine64 Store to carry the PineDio Gateway)


# Info For the above image download:

## On Boot:

* Armbian 5.10.34 (latest as of this posting)

* Devices/hardware setup

* Starts GPS (be sure to have reliable/proper antenna outside or at a window)

* Starts up the Concentrator

* Starts up ready to login Chirpstack (web interface: http://IPaddress:8080)


## SSH access:


login: pinedio

password: SoPinePass!!!



## CHIRPSTACK GATEWAY/NETWORK MANAGEMENT (web interface):


http://IPaddressOnLAN:8080


login: admin

password admin


*Make sure to change default passwords*


## Useful Commands:


gateway-config (configures gateway options including:

- channel (specific to your area)
 
- concentrator/GPS specific: packet forwarder config (defaults set for pine64 Pinedio),

- switch between Chirpstack local and TTN

journalctl | grep -i eui (grab gateway eui)

systemctl status ttn-gateway (check your gateway service status)

systemctl stop ttn-gateway

systemctl disable ttn-gateway (disable


## Software (for above prepared image):

Armbian OS: https://www.armbian.com/download

Gateway Software Fork installed for Pinedio Gateway: https://github.com/RightToPrivacy/rak_co...or_gateway (fork edit of https://github.com/RAKWireless/rak_common_for_gateway [for raspberry pi's]) 

---

Other updates have been deleted to keep this space cleaner.

UPDATE (May): I forked Rakwireless' rak_common_for_gateway and have been editing the rak2287 SPI for Pine64 Gateway. You can find that here with instructions 
I added for those interested (check the edited README.md):
https://github.com/RightToPrivacy/rak_common_for_gateway

If you follow the instructions there you should be able to get the concentrator to start. I also have the GPS working properly and registering correct coordinates based on those instructions (be sure to run your GPS antenna near a window if indoors).


I have done an update video to cover steps and status over the first month: https://youtu.be/ex6ocr5TKB4
