#!/bin/sh
cd /tmp/drcom
rm -f  /tmp/stat.txt
mwan3 interfaces > /tmp/stat.txt

grep -q 'interface vwan1 is online and tracking is active' /tmp/stat.txt && logger "vwan1 good" || sh /tmp/drcom/vwan1.sh
#grep -q 'interface vwan2 is online and tracking is active' /tmp/stat.txt && logger "vwan2 good" || sh /tmp/drcom/vwan2.sh
#grep -q 'interface vwan3 is online and tracking is active' /tmp/stat.txt && logger "vwan3 good" || sh /tmp/drcom/vwan3.sh
grep -q 'interface vwan4 is online and tracking is active' /tmp/stat.txt && logger "vwan4 good" || sh /tmp/drcom/vwan4.sh

logger "mwan check done!"
rm -f  /tmp/stat.txt
echo "mwan check done!"
