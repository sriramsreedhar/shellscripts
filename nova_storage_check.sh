#!/bin/bash
for i in `cat nova-hosts`;
 do ssh -t $i "hostname;cat /etc/nova/nova.conf |grep libvirt_images_type; vgs; echo "==end=="; 
done
