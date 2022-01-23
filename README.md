## Pine64-Mesh Related (Image For PineDio Gateway Armbian/Debian With Chirpstack Preinstalled (The Things Network TTN/Chirpstack both options)

#### Deleted the earlier info to keep this relevant/clear.

### UPDATE: ready to use PineDio (all in one) Gateway image [UPDATED: 01.16.2022] 

### LATEST PINEDIO GATEWAY DOWNLOAD LINK/CREDENTIALS + CHECKSUMS:
(PineDio_RAK_Armbian_01-16-2022.img.xz)

    SHA1: f42b362e48777dd7614275089426300a7650fee4

    SHA256: 9c51b26709453e5f43ed1343e501293d3e3665010645bb40555de85cd032fc19

#### DOWNLOAD LOCATION:  https://mega.nz/file/jUYjCYqD#QMXDHNRv5RL3UT6nOgLCx-tEGhkFst7VTWnbVoC3Kz0

*** Interested in The Things Network? (After flashing, recommended guide start to finish: https://lupyuen.github.io/articles/gateway?5#install-pinedio-gateway great tutorial for further configuration with pictures!) Thank You Lup Yuen Lee! 


## Info For the above PineDio gateway image download:

### On Boot:

* Armbian (Debian)

* Devices/hardware setup (Concentrator/GPS RAK2287)

* Starts up the Concentrator/GPS (use reliable/proper antenna outside or at window)

* Chirpstack (web interface: http://IPaddress:8080) easy enable inside gateway-config command

* TTN setup available in gateway-config command channel setup

* filesystem grows to meet the disk size (service expands on boot then disables itself)

* PineDio ascii art welcome message on your ssh/terminal logins 

* Unique SSH keys generated on each flashed disk (generated during first boot) 


### SSH access:


    login: pinedio
    password: SoPinePass!!!


### CHIRPSTACK GATEWAY/NETWORK MANAGEMENT (web interface):


http://IPaddressOnLAN:8080


    login: admin
    password admin


*Make sure to change default passwords*


### Useful Commands:


    gateway-config (configures gateway options including):
    
- switch between private Chirpstack LoRaWAN and (optional) TheThingsNetwork (TTN)

- channel/freq (specific to your area)
 
- concentrator/GPS specific: edit packet forwarder config (defaults set for pine64 Pinedio),

    journalctl | grep -i eui (grab gateway eui)

    systemctl status ttn-gateway (check your gateway service status)

    systemctl stop ttn-gateway

    systemctl disable ttn-gateway (disable

#### Important/Big updates covered on video channels and/or Blog: https://www.buymeacoffee.com/politictech/posts (completely public - don't mind domain name)

#### Most blog posts mirrored at https://politictech.wordpress.com (not all total posts, but all PineDio image related posts will also be here)

## Software (What's running inside above prepared image):

Armbian OS: https://www.armbian.com/download

Gateway Software Fork changed for the A64 LTS (Pinedio Gateway + RAK2287 hat): https://github.com/RightToPrivacy/rak_common_for_gateway (edit of https://github.com/RAKWireless/rak_common_for_gateway [originally for raspberry pi's]) 

---

### EARLY UPDATES

Older updates have been deleted to keep this space cleaner.

#### (May): forked Rakwireless' rak_common_for_gateway and edited for the A64 LTS + rak2287 SPI (PineDio Gateway). You can find that here:
https://github.com/RightToPrivacy/rak_common_for_gateway

