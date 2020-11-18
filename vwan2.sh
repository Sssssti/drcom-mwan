#!/bin/sh
cd /tmp/drcom
kill -9 $(lsof -i:61441 | awk '{if($2~/[0-9]+/) print $2}')
screen_name_2_stat="drcom-2"
#restart_mwan="restart-mwan"
date="$(date)"

screen -X -S $screen_name_2_stat quit
screen -dmS $screen_name_2_stat

cmd_2="python latest-wired-zj.py"
cmd_1="mwan3 ifup vwan2"

screen -x -S $screen_name_2_stat -p 0 -X stuff "$cmd_1"
screen -x -S $screen_name_2_stat -p 0 -X stuff '\n'
sleep 1
screen -x -S $screen_name_2_stat -p 0 -X stuff "$cmd_2"
screen -x -S $screen_name_2_stat -p 0 -X stuff '\n'

logger "At ($date) was restart nvwam2!"
