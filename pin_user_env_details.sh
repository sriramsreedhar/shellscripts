#!/bin/bash

cat /etc/passwd |grep -i pin |awk -F: '{print $1}' > /tmp/pin_users.txt

for i in `cat /tmp/pin_users.txt`

do
echo " Env details for $i"
echo "==================="
runuser -l $i -c ' env |grep -i vertex' |awk -F= '{print $2}'
echo " "
echo " "
echo " "
done
