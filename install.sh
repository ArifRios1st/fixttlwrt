#!/bin/ash
# Installation script by ARYO.

BIN=/usr/bin
CON=/usr/lib/lua/luci/controller/fixttl
VIEW=/usr/lib/lua/luci/view/fixttl
URL=https://raw.githubusercontent.com/ArifRios1st/fixttlwrt/main
CONF=/etc/config/fixttl

finish(){
    clear
    echo ""
    echo "INSTALL FIX SUCCESSFULLY ;)"
    echo ""
    echo "=========== FIX TTL65 - ARYO  ==========="
    echo "fixttl -u : Update Fix TTL service"
    echo "fixttl -un : Uninstall Fix TTL service"
    echo ""
    sleep 3
    echo "Youtube : ARYO BROKOLLY"
    echo ""
    sleep 5
    echo ""
}

download_files() {
    clear
    opkg update
    clear
    echo ""
    echo ""
    echo "Install Fix TTL.."
    sleep 5
    clear
    mkdir -p $CON
    sleep 1
    wget -O $CON/ttl.lua $URL/ttl.lua && chmod 755 $CON/ttl.lua
    clear
    sleep 1
    mkdir -p $VIEW
    sleep 1
    wget -O $VIEW/page.htm $URL/page.htm
    sleep 1
    wget -O $BIN/fixttl $URL/fixttl.sh && chmod 755 $BIN/fixttl
    clear
    sleep 1
    wget -O $CONF $URL/fixttl.conf && chmod 755 $CONF
    clear
    
    finish
}


echo ""
echo "Install Script code from repo aryo."

while true; do
    read -p "This will download the files. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) download_files; break;;
        [Nn]* ) echo "Installation canceled. Ensure you have a stable internet connection before retrying."; exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done
