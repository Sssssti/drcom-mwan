#!/bin/sh
screen_name="drcom"
screen -dmS $screen_name
cmd="cd /root/drcom"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
cmd="python run.sh"
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff '\n'