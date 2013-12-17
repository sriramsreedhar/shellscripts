#/bin/bash
{ echo -e "=====Users Logged in =====\n"; w; echo -e " =========Top Result=======\n"; sudo top -c -m -b  -n 1  | head -n 25;} > /var/log/memory/top.out.$(date +"%m-%d-%Y::%H::%M")
