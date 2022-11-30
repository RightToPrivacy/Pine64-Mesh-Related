

## Pine64-Mesh Related (Image For PineDio Gateway Armbian/Debian With Chirpstack Preinstalled (Switch between TheThingsNetwork + Chirpstack LoRaWAN)

Please file an issue if you notice a problem.

---

### Ready to use PineDio (all in one) Gateway image (Use Either TheThingsNetwork / Chirpstack)

### ⭐ LATEST UPLOADED PINEDIO GATEWAY DOWNLOAD LINK/CREDENTIALS + CHECKSUMS:



(PineDio-RAK-Armbian_11-30-2022.img.xz [Linux Kernel 5.15.74-sunxi64]) (Nov 30, 2022) 

    SHA256: b3cbb7d135e814c9de231fa8bb3fa5c770b26235c8173b5381239ed3dfe2824b
    SHA512: a133d020c9590bc731039f294bd497921e7cd24918153fead46c35aa457e37700ec6576e24c726809c5a7ebe9929ae4962c04631fed318efe136b9a833214b03

#### 📁 DOWNLOAD PINEDIO GATEWAY IMG:  

https://mega.nz/file/1GVi0TaK#Y8J2CybSPB4tDKtkkydRI3LBFtDZ-WXWqSB1dMiAthc

---

*** Interested in The Things Network (After flashing, recommended guide start to finish:
 https://lupyuen.github.io/articles/gateway?5#install-pinedio-gateway great tutorial for further configuration with pictures!) 
Thank You Lup Yuen Lee!  (he has other great documentation as well including Chirpstack [CS is included on image])

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
    
**Switch Between Chirpstack (private LoRaWAN) & (optional) TheThingsNetwork (TTN):**

      Inside the 'gateway-config' command, you can switch between Chirpstack (your own LoRaWAN) and TTN (TheThingsNetwork), simply select:
      "Setup RAK Gateway Channel Plan" -> "Server Is Other Server" (<- For Chirpstack LoRaWAN), or for using TTN, select "Server Is TTN".
      Select Channel/Frequency (specific to your area)
 
 **Concentrator / GPS Devices: edit packet forwarder config in gateway-config (defaults set for pine64 Pinedio)**

    gateway-config (set network, frequency/channel, edit packet forwarder, restart pkt forward)

    gateway-version (show Gateway ID/EUI)
    
    gen-eui (generate/display randomly generated EUI option - simply add to displayed file to use it)

    systemctl status ttn-gateway (check your gateway service status)

    systemctl stop ttn-gateway (stop packet forwarder / concentrator services)

    systemctl disable ttn-gateway (disable concentrator / packet forwarder from starting at boot)
    
    systemctl restart ttn-gateway (restart packet forwarder/concentrator/GPS)
    
---

**CHANGING EUI:**

To change your gateway EUI, edit:

    /opt/ttn-gateway/packet_forwarder/lora_pkt_fwd/local_conf.json

Generate Random OUI Example:

    gen-eui

---
    
#### CHIRPSTACK INFORMATION / COMMANDS

*Configuration File:*
 
    /etc/chirpstack-application-server/chirpstack-application-server.toml
    

**Check Chirpstack Logs:**

    sudo journalctl -f -n 100 -u chirpstack-application-server


**Create Tor Hidden Service:**

To add security enhancements including automated encryption setup (end to end encryption between tor clients), run the command:

    sudo chirpstack-onion

This allows you to (optionally) block out access outside your new .onion address, and protects login / admin traffic from MiTM attacks by adding encryption and routing allowing you the option to keep server location private

---

### 📝 Linux / FOSS / Security / Privacy Tutorials / Blog

https://www.buymeacoffee.com/politictech/posts  (main blog/site)

(Some blog posts are mirrored at https://politictech.wordpress.com as a backup)

**🧅 Gitea Onion (Anonymous Human Rights Supporting Git Service: Use Tor Browser / Torify):** 

http://gg6zxtreajiijztyy5g6bt5o6l3qu32nrg7eulyemlhxwwl6enk6ghad.onion/RightToPrivacy/PineDio-Mesh

---

## 💻 HARDWARE: 

Pine64: https://www.pine64.org (Pine64 community - main manufacture - completed gateway package + other PineDio offers)

Pine64 Store: https://pine64.com/product-category/internet-of-things/ (PineDio Gateway hardware)

RAKwireless: https://www.rakwireless.com/en-us (Designers/makers of the RAKwireless RAK2287 + GPS concentrator)

## SOFTWARE:

Armbian OS: https://www.armbian.com 

Gateway Software Fork changed for the A64 LTS (Pinedio Gateway + RAK2287 hat): https://github.com/RightToPrivacy/rak_common_for_gateway (edit of https://github.com/RAKWireless/rak_common_for_gateway [originally for raspberry pi's]) 

--- 

### EARLIER RELATED UPDATES

Older updates have been deleted to keep this space cleaner.

#### (May): forked Rakwireless' rak_common_for_gateway. Edited for the A64 LTS + rak2287 SPI (PineDio Gateway). You can find that fork here:
https://github.com/RightToPrivacy/rak_common_for_gateway
