# Pine64-Mesh Related (Download Image For PineDio Gateway Armbian/Debian Based Image With Chirpstack Preinstalled/Running By Default, TTN ready (optional)

#### Deleted the earlier info to keep this relevant/clear.

## UPDATE: Sharing ready to use PineDio (all in one) Gateway image [11.30.2021] 

### Download Post + checksums/credentials:

SHA1: 12cc3064f8e47c54e2ad783e16f879277f757052

SHA256: 5f5572f408e1be306fb5c8286a4d1cb6d56e3801d46b28364de19b9fffdac61e

#### DOWNLOAD LOCATION 1: https://politictech.wordpress.com/2021/11/30/pinedio-mesh-net-gateway-new-improved-download-lora/ (Blog post)

#### DOWNLOAD LOCATION 2: https://www.buymeacoffee.com/politictech/pinedio-image-new-download (other blog with posts organized by category)

##### On the first boot rootfs will grow root to meet size of your disk, and generate set of fresh ssh, unique for each flashed copy.

(After flashing, recommended to read: https://lupyuen.github.io/articles/gateway?5#install-pinedio-gateway great tutorial for further configuration with pictures!)


## Info For the above PineDio gateway image download:

### On Boot:

* Armbian 5.10.34 (latest as of this posting)

* Devices/hardware setup

* Starts GPS (be sure to have reliable/proper antenna outside or at a window)

* Starts up the Concentrator

* Starts up ready to login Chirpstack (web interface: http://IPaddress:8080)

* Chirpstack updated (NEW 11.30.2021)

* On your first boot the filesystem grows to meet the disk size (NEW 11.30.2021)

* PineDio ascii art welcome message on your ssh/terminal logins (NEW 11.30.2021)

* Unique SSH keys generated on each flashed disk (generated during first boot) (NEW 11.30.2021)


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

- channel (specific to your area)
 
- concentrator/GPS specific: packet forwarder config (defaults set for pine64 Pinedio),

- switch between Chirpstack local and TTN

journalctl | grep -i eui (grab gateway eui)

systemctl status ttn-gateway (check your gateway service status)

systemctl stop ttn-gateway

systemctl disable ttn-gateway (disable


## Software (for above prepared image):

Armbian OS: https://www.armbian.com/download

Gateway Software Fork installed for Pinedio Gateway: https://github.com/RightToPrivacy/rak_common_for_gateway (fork edit of https://github.com/RAKWireless/rak_common_for_gateway [originally for raspberry pi's]) 

---

### EARLY UPDATES

Other updates have been deleted to keep this space cleaner.

#### (May): I forked Rakwireless' rak_common_for_gateway and have been editing the rak2287 SPI for Pine64 Gateway. You can find that here with instructions 
I added for those interested (check the edited README.md):
https://github.com/RightToPrivacy/rak_common_for_gateway

