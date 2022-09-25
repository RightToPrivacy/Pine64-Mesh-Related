## Pine64-Mesh Related (Image For PineDio Gateway Armbian/Debian With Chirpstack Preinstalled (Switch between TheThingsNetwork + Chirpstack LoRaWAN)

Please file an issue if you notice a problem.

---

### Ready to use PineDio (all in one) Gateway image (Use Either TheThingsNetwork / Chirpstack)

### LATEST UPLOADED PINEDIO GATEWAY DOWNLOAD LINK/CREDENTIALS + CHECKSUMS:
(PineDio-RAK-Armbian_05-01-2022.img.xz) (May 1st, 2022)

    SHA256: 9a58939f999168606800b8a2b2a94c9673cd4a48962361e007e6f7e41262707c
    SHA512: a02414f44a2f6caf7f769f3dcd0ba5a2d68e1f8adf9e30bbe5b5d59eff7e41ee94603a71c80b26ad1d6e264d95b6391a414d7d1d2012bb156f113b3aa4f8bf33

#### DOWNLOAD LOCATION:  https://mega.nz/file/vcQk1abb#16Twq3m3CX3nWI491FyfTzWzP7kPx9sBRqhU3d_bRW4

---

*** Interested in The Things Network? (After flashing, recommended guide start to finish:
 https://lupyuen.github.io/articles/gateway?5#install-pinedio-gateway great tutorial for further configuration with pictures!) 
Thank You Lup Yuen Lee! 

---

## Info For the above PineDio gateway image download:

### On Boot:

* Armbian (Debian)

* Devices/hardware setup (Concentrator/GPS RAK2287)

* Starts up the Concentrator/GPS (use reliable/proper antenna outside or at window)

* Chirpstack (web interface: http://IPaddress:8080) easy enable inside gateway-config command - select Channel

* TTN setup available in gateway-config command channel setup

* filesystem grows to meet the disk size (service expands on boot then disables itself)

* PineDio ascii art welcome message on your ssh/terminal logins 

* Unique SSH keys generated on each flashed disk (generated during first boot) 

---

### SSH access:


    login: pinedio
    password: SoPinePass!!!

---

### CHIRPSTACK GATEWAY/NETWORK MANAGEMENT (web interface - make sure enabled inside gateway-config command):


http://IPaddressOnLAN:8080


    login: admin
    password admin


*Make sure to change default passwords*

---

### Useful Commands:


    gateway-config (configures gateway options including):
    
- switch between Chirpstack (private LoRaWAN) and (optional) TheThingsNetwork (TTN)

      Inside the 'gateway-config' command, you can switch between Chirpstack (your own LoRaWAN) and TTN (TheThingsNetwork), simply select:
      "Setup RAK Gateway Channel Plan" -> "Server Is Other Server" (<- For Chirpstack LoRaWAN), or for using TTN, select "Server Is TTN".
      Select Channel/Frequency (specific to your area)
 
- Concentrator + GPS specific: edit packet forwarder config (defaults set for pine64 Pinedio),

    gateway-config (set network, frequency/channel, edit packet forwarder, restart pkt forward)

    gateway-version (show Gateway ID/EUI)
    
    gen-eui (generate/display randomly generated EUI option - simply add to displayed file to use it)

    systemctl status ttn-gateway (check your gateway service status)

    systemctl stop ttn-gateway

    systemctl disable ttn-gateway (disable
    
    systemctl restart ttn-gateway (restart packet forwarder/concentrator/GPS)
    
---
    
#### CHIRPSTACK INFORMATION / COMMANDS

*Configuration File:*
 
    /etc/chirpstack-application-server/chirpstack-application-server.toml
    

**Check Chirpstack Logs:**

    sudo journalctl -f -n 100 -u chirpstack-application-server

---

#### Visit My Linux / FOSS Tutorials + More: https://www.buymeacoffee.com/politictech/posts 

(Most above linked blog posts also mirrored at https://politictech.wordpress.com (whichever page you prefer))

## HARDWARE: 

Pine64: https://www.pine64.org (Pine64 community - main manufacture - completed gateway package + other PineDio offers)
Pine64 Store: https://www.pine64.com (PineDio hardware)
RAK2287: Designers/makers of the RAKwireless RAK2287 + GPS concentrator

## SOFTWARE:

Armbian OS: https://www.armbian.com 

Gateway Software Fork changed for the A64 LTS (Pinedio Gateway + RAK2287 hat): https://github.com/RightToPrivacy/rak_common_for_gateway (edit of https://github.com/RAKWireless/rak_common_for_gateway [originally for raspberry pi's]) 

---

### EARLIER RELATED UPDATES

Older updates have been deleted to keep this space cleaner.

#### (May): forked Rakwireless' rak_common_for_gateway. Edited for the A64 LTS + rak2287 SPI (PineDio Gateway). You can find that fork here:
https://github.com/RightToPrivacy/rak_common_for_gateway

