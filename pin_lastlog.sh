#!/bin/bash
hostname;
for i in `grep pin /etc/passwd|cut -f1 -d:`; do lastlog -u $i|grep pin; done
