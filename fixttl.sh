#!/bin/bash
# by Aryo Brokolly (youtube)
# 1.1 - Dengan Logging

NFT=/etc/nftables.d/ttl65.nft
FIX=/usr/bin/fixttl
CON=/usr/lib/lua/luci/controller/fixttl
VIEW=/usr/lib/lua/luci/view/fixttl
CONF=/etc/config/fixttl
URL=https://raw.githubusercontent.com/ArifRios1st/fixttlwrt/main

function update(){
clear
    echo "Updating Fixttlwrt..."
    sleep 3
    clear
    wget -O $CON/ttl.lua $URL/ttl.lua && chmod 755 $CON/ttl.lua
    sleep 1
    clear
    wget -O $VIEW/page.htm $URL/page.htm
    sleep 1
    clear
    echo " Update Fixttl succesfully..."
    sleep 4
}

function uninstall()
{		

	echo "deleting file fixttl..."
    	clear
	echo "Remove Folder n File"
        rm -rf $CON
        rm -rf $VIEW
        rm -f $FIX
        rm -f $NFT
        rm -f $CONF
	sleep 1
 	echo "Firewall Restart"
        fw4 reload
	sleep 5
	clear
  	echo " Uninstall Fixttl succesfully..."
  	sleep 5
  exit
}

case "${1}" in
  -u)
    update
    ;;
  -un)
    uninstall
    ;;
  *)
    usage
    ;;
esac
