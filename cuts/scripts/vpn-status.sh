#!/bin/bash

# All "custom" vpns, are prefixed with "vpn-" as the tunnel name
VPN_NAME=$(nmcli -t -f NAME,TYPE,STATE con | awk -F: '$2=="tun" {print $1}')

if [[ "${VPN_NAME}" == "" ]];
then
  echo "%{F#ff5c57}" "%{F-}"
  #echo "%{F#5af78e}""%{F-}"
# If "tun0" which is workvpn then make sure to warn me
elif [[ "${VPN_NAME}" =~ "tun" ]];
then
  #echo "%{F#5af78e}" "%{F-} vpn"
  echo "%{F#5af78e}" "%{F-}"
else
  #echo "%{F#5af78e}""%{F-}"
  echo "other""%{F-}"
fi
