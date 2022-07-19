#!/bin/bash
TARGET=172.27.1.94
SA="https://api.telegram.org/bot/>
LOG=/bsa/vpn_Aetra_prod_ping.txt
NOW=$(date +"%Y-%m-%d"+"%T")

ping -c 13 $TARGET > /dev/null

if [ $? != 1 ]

then
  echo "VPN Down  '$NOW'" >> $LOG
#ipsec restart
  echo "VPN  Down dan udah direstart '$NOW'" >> $LOG
  curl $SA
  #mail -s "VPN!" email@.com < $LOG

else
  echo "VPN baik-baik saja '$NOW'" >> $LOG

fi
