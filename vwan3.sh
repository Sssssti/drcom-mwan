#!/bin/sh
cd /tmp/drcom
kill -9 $(lsof -i:61442 | awk '{if($2~/[0-9]+/) print $2}')
screen_name_3_stat="drcom-3"
#restart_mwan="restart-mwan"
date="$(date)"

screen -X -S $screen_name_3_stat quit
screen -dmS $screen_name_3_stat

cmd_2="python latest-wired-wg.py"
cmd_1="mwan3 ifup vwan3"

screen -x -S $screen_name_3_stat -p 0 -X stuff "$cmd_1"
screen -x -S $screen_name_3_stat -p 0 -X stuff '\n'
sleep 1
screen -x -S $screen_name_3_stat -p 0 -X stuff "$cmd_2"
screen -x -S $screen_name_3_stat -p 0 -X stuff '\n'

logger "At ($date) was restart nvwam3!"
