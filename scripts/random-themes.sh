#!/bin/bash
# ---- random themes -----
themes=('blocks' 'colorblocks' 'cuts' 'docky' 'forest' 'grayblocks' 'hack' 'material' 'panels' 'shades' 'shapes')

rndm=$((0 + $RANDOM % 10))
bash ~/.config/polybar/launch.sh --${themes[$rndm]}
notify-send --urgency=low --app-name=Polybar "Polybar Theme" "Polybar ${themes[$rndm]} launching..."

