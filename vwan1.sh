#!/bin/sh
cd /tmp/drcom
kill -9 $(lsof -i:61440 | awk '{if($2~/[0-9]+/) print $2}')
screen_name_1_stat="drcom-1"
#restart_mwan="restart-mwan"
date="$(date)"

screen -X -S $screen_name_1_stat quit
screen -dmS $screen_name_1_stat

cmd_2="python latest-wired.py"
cmd_1="mwan3 ifup vwan1"

screen -x -S $screen_name_1_stat -p 0 -X stuff "$cmd_1"
screen -x -S $screen_name_1_stat -p 0 -X stuff '\n'
sleep 1
screen -x -S $screen_name_1_stat -p 0 -X stuff "$cmd_2"
screen -x -S $screen_name_1_stat -p 0 -X stuff '\n'

logger "At ($date) was restart nvwam1!"
