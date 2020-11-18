#!/bin/sh
cd /tmp/drcom
kill -9 $(lsof -i:61440 | awk '{if($2~/[0-9]+/) print $2}')
kill -9 $(lsof -i:61441 | awk '{if($2~/[0-9]+/) print $2}')
kill -9 $(lsof -i:61442 | awk '{if($2~/[0-9]+/) print $2}')
kill -9 $(lsof -i:61443 | awk '{if($2~/[0-9]+/) print $2}')

screen_name_1="drcom-1"
screen_name_2="drcom-2"
screen_name_3="drcom-3"
screen_name_4="drcom-4"
restart_mwan="restart-mwan"

cmd="exit"

screen -x -S $screen_name_1 -p 0 -X quit

screen -x -S $screen_name_2 -p 0 -X quit

screen -x -S $screen_name_3 -p 0 -X quit

screen -x -S $screen_name_4 -p 0 -X quit

screen -x -S $restart_mwan -p 0 -X quit

