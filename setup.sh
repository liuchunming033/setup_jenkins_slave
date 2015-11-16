#!/bin/sh
#
cp jenkins-slave /etc/sysconfig/jenkins-slave
cp jenkins-slave.init /etc/init.d/jenkins-slave
chmod 770 /etc/init.d/jenkins-slave
chkconfig --level 3 jenkins-slave on
service jenkins-slave restart