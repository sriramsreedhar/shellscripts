#/bin/bash
sudo top -c -m -b  -n 1  | head -n 25 > /var/log/memory/top.out.$(date +"%m-%d-%Y::%H::%M")
