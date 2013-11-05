#!/bin/bash
for i in `cat nagios_hosts`; do  ssh-copy-id -i ~/.ssh/id_rsa.pub  $i ; done
