

## Pine64-Mesh Related (Image For PineDio Gateway Armbian/Debian With Chirpstack Preinstalled (Switch between TheThingsNetwork + Chirpstack LoRaWAN)

Please file an issue if you notice a problem.

---

### Ready to use PineDio (all in one) Gateway image (Use Either TheThingsNetwork / Chirpstack)

### ⭐ LATEST UPLOADED PINEDIO GATEWAY DOWNLOAD LINK/CREDENTIALS + CHECKSUMS:

(PineDio-RAK-Armbian_09-25-2022.img.xz) (Sept 25, 2022)

    SHA256: 487bbb45ac78a4ee24b80918760673e58222aec60c81251617e932a8265d35b7
    SHA512: f21ee4e8b8739f2e0efc269ab158224d6dfc55b3d542118fb67286b5337a2499cda52f3df1f05db6b1202553fe227c6b90509275ec4a411b3972f9aefacc5364

#### 📁 DOWNLOAD PINEDIO GATEWAY IMG:  

https://mega.nz/file/zB4gTLRZ#EUlJh2oYLgkfkphPBmQ8ufzQu9_b3nYFDGoXle4xyAk

---

#### Secure 2nd Location To Reference Checksums

Why? If github were compromised and checksums were replaced (unlikely as this possibility is), a more secure place to check is on the Gitea Onion:

**Gitea Onion (Anon Encrypted Git Service: Use Tor Browser):** 

http://gg6zxtreajiijztyy5g6bt5o6l3qu32nrg7eulyemlhxwwl6enk6ghad.onion/RightToPrivacy/PineDio-Mesh

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

    systemctl stop ttn-gateway

    systemctl disable ttn-gateway (disable
    
    systemctl restart ttn-gateway (restart packet forwarder/concentrator/GPS)
    
---

**CHANGING EUI:**

To change your gateway EUI, edit:

    /opt/ttn-gateway/packet_forwarder/lora_pkt_fwd/local_conf.json

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

https://www.buymeacoffee.com/politictech/posts 

(Some blog posts are mirrored at https://politictech.wordpress.com as a backup)

**Gitea Onion (Anonymous Git Service: Use Tor Browser Or Torify):** 

http://gg6zxtreajiijztyy5g6bt5o6l3qu32nrg7eulyemlhxwwl6enk6ghad.onion/RightToPrivacy/PineDio-Mesh

---

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
