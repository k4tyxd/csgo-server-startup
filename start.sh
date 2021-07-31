#!/bin/sh
set -x

SCRIPT_DIR=$(cd $(dirname $0); pwd)
$SCRIPT_DIR/srcds_run -game csgo -console -usercon -tickrate 128 +port 27015 -maxplayers_override 16 +game_type 0 +game_mode 1 +map de_dust2 -autoupdate -steam_dir ~/steamcmd -steamcmd_script $SCRIPT_DIR/autoupdate.txt
