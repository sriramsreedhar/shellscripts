#!/bin/bash
for i in `cat rorprod` 
do 
	ssh -t $i  "echo "=================Start============== " ; hostname;  sudo cat /etc/ssh/sshd_config |grep AllowGroups; echo "======"; sudo tail -14 /etc/sudoers; echo " ****end ***" "
done

