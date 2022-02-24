#!/bin/bash
#
# simple command to generate valid/random new EUI
#
# prints out configuration file for you to edit
#
# righttoprivacy@tutanota.com
#

# DEFAULT OUI
oui='02BA07'
mid='FFFE'
end=$(xxd -u -l 3 -p /dev/urandom)

# CONFIGURATION FILE FOR EUI
localconf='/opt/ttn-gateway/packet_forwarder/lora_pkt_fwd/local_conf.json'

echo -e "GENERATING YOU A NEW EUI...\n" && sleep 1

newEUI="$oui$mid$end"
sleep .5

echo -e "NEW EUI IS $newEUI.\n"

echo -e "You can replace current in $localconf\n" && sleep .5
echo -e "Then restart gateway."
