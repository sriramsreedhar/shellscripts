#!/bin/bash
cat jdk-7u45-linux-i586.tar.gz | ssh $1 " cd /usr/java; tar xvf -"
