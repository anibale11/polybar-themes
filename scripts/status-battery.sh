#!/bin/bash

while true; do
	porcentage=`cat /sys/class/power_supply/BAT0/capacity`
	if (( $porcentage < 20 )); then
		 notify-send --urgency=critical --app-name=Bateria --icon=battery-low "Bateria Baja" "Conectá tu dispositivo, $porcentage % de Batería"
	elif [[ "100" = $porcentage ]]; then
		echo $porcentage
		notify-send --urgency=low --app-name=Bateria --icon=battery "Batería Completa" "Batería Completa, $porcentage % de Batería"
	fi
	sleep 4m
done
