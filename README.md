## Pine64-Mesh Related (Download Image For PineDio Gateway Armbian/Debian Based Image With Chirpstack Preinstalled/Running By Default, TTN ready (optional)

#### Deleted the earlier info to keep this relevant/clear.

### UPDATE: Sharing ready to use PineDio (all in one) Gateway image [UPDATED: 01.04.2022] 

### Download Post + checksums/credentials:

    SHA1: 2386916d8d71122b4b7d0c8de1a07af120b07b2c

    SHA256: 03f37a745d088139682d55fb4befb9a5348c1b6513b679dd03ba069576d2b86f

#### DOWNLOAD LOCATION:  https://mega.nz/file/vJxAABJZ#FpH4gzpy9QEqh3sJAYTz7tIP7aCE8XaC8kBvX2t4ZKc

##### On the first boot rootfs will grow root to meet size of your disk, and generate set of fresh ssh, unique for each flashed copy.

*** Interested in The Things Network? (After flashing, recommended guide start to finish: https://lupyuen.github.io/articles/gateway?5#install-pinedio-gateway great tutorial for further configuration with pictures!) Thank You Lup Yuen Lee! 


## Info For the above PineDio gateway image download:

### On Boot:

* Armbian (Debian)

* Devices/hardware setup (Concentrator/GPS RAK2287)

* Starts up the Concentrator/GPS (use reliable/proper antenna outside or at window)

* Chirpstack (web interface: http://IPaddress:8080) running - name/config gateway/LoRaWAN inside

* TTN setup available in gateway-config command channel setup (not enabled by default - Chirpstack is running)

* On your first boot the filesystem grows to meet the disk size (service expands on boot then disables itself)

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

- channel (specific to your area)
 
- concentrator/GPS specific: packet forwarder config (defaults set for pine64 Pinedio),

- switch between Chirpstack local and TTN

journalctl | grep -i eui (grab gateway eui)

systemctl status ttn-gateway (check your gateway service status)

systemctl stop ttn-gateway

systemctl disable ttn-gateway (disable


## Software (running inside above prepared image):

Armbian OS: https://www.armbian.com/download

Gateway Software Fork installed for Pinedio Gateway: https://github.com/RightToPrivacy/rak_common_for_gateway (fork edit of https://github.com/RAKWireless/rak_common_for_gateway [originally for raspberry pi's]) 

---

### EARLY UPDATES

Other updates have been deleted to keep this space cleaner.

#### (May): I forked Rakwireless' rak_common_for_gateway and have been editing the rak2287 SPI for Pine64 Gateway. You can find that here with instructions 
I added for those interested (check the edited README.md):
https://github.com/RightToPrivacy/rak_common_for_gateway

