#!/bin/bash
c=$(ps -ef | grep "java -jar slave.jar"|grep -v grep | wc -l)
if [ $c -eq 0 ]
then
  service jenkins-slave restart
fi

