#!/bin/bash
PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:~/bin
export PATH
c=$(ps -ef | grep "java -jar slave.jar"|grep -v grep | wc -l)
if [ $c -eq 0 ];then
  service jenkins-slave restart
fi
