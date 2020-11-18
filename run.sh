#!/bin/sh
cd /tmp/drcom
screen_name_1="drcom-1"
screen_name_2="drcom-2"
screen_name_3="drcom-3"
screen_name_4="drcom-4"
#restart_mwan="restart-mwan"

screen -dmS $screen_name_1
#screen -dmS $screen_name_2
#screen -dmS $screen_name_3
screen -dmS $screen_name_4
#screen -dmS $restart_mwan

cmd_1="python latest-wired.py"
cmd_2="python latest-wired-zj.py"
cmd_3="python latest-wired-wg.py"
cmd_4="python latest-wired-lx.py"
#cmd_5="cd /tmp"

screen -x -S $screen_name_1 -p 0 -X stuff "$cmd_1"
screen -x -S $screen_name_1 -p 0 -X stuff '\n'

screen -x -S $screen_name_2 -p 0 -X stuff "$cmd_2"
screen -x -S $screen_name_2 -p 0 -X stuff '\n'

screen -x -S $screen_name_3 -p 0 -X stuff "$cmd_3"
screen -x -S $screen_name_3 -p 0 -X stuff '\n'

screen -x -S $screen_name_4 -p 0 -X stuff "$cmd_4"
screen -x -S $screen_name_4 -p 0 -X stuff '\n'

#screen -x -S $restart_mwan -p 0 -X stuff "$cmd_5"
#screen -x -S $restart_mwan -p 0 -X stuff '\n'

