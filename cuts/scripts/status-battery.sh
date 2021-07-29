#!/bin/bash
while true; do
	porcentage=`cat /sys/class/power_supply/BAT0/capacity`
	if [[ "30" < $porcentage ]]; then
		 notify-send --urgency=critical --app-name=Bateria --icon=battery-low "Bateria Baja" "Conectá tu dispositivo, $porcentage % de Batería"
	elif [[ "100" = $porcentage ]]; then
		echo $porcentage
		notify-send --urgency=low --app-name=Bateria --icon=battery "Batería Completa" "$porcentage % de Batería"
	fi
	sleep 2m
done
