#!/bin/bash
#
# simple command to generate valid/random new EUI
#
# prints out configuration file for optional editing + restart instructions
#
# righttoprivacy@tutanota.com
#

# TEXT COLORS
export BLUE='\033[1;94m'
export GREEN='\033[1;92m'
export RED='\033[1;91m'
export ENDCOLOR='\033[1;00m'

# DEFAULT OUI
oui='02BA07'
mid='FFFE'
end=$(xxd -u -l 3 -p /dev/urandom)

# CONFIGURATION FILE FOR EUI
localconf='/opt/ttn-gateway/packet_forwarder/lora_pkt_fwd/local_conf.json'

echo -e "\n${BLUE}GENERATING YOU A NEW EUI...${ENDCOLOR}\n" && sleep 1

newEUI="$oui$mid$end"
sleep .5

echo -e "${BLUE}EUI GENERATED:${ENDCOLOR} ${RED}$newEUI${ENDCOLOR}\n"

echo -e "${BLUE}You can replace current in:${ENDCOLOR} ${GREEN}$localconf${ENDCOLOR}\n" && sleep .5
echo -e "${BLUE}Then restart gateway by issuing:${ENDCOLOR} ${RED}sudo systemctl restart ttn-gateway${ENDCOLOR}\n"
