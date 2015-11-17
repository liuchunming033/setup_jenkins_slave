This project is about how to create a build slave for a Jenkins master in an easy way. 

# 1. Add the node on Jenkins master

Add a new Dumb Slave node in your Jenkins master,configure below settings:
Node name: you decide
Remote Root Directory: you decide
Launch Method: Launch slave agent via Java Web Start

# 2. Edit file in jenkins-slave.conf and hange below settings to your own

Remote root directory:
JENKINS_WORKDIR="/data/jenkins-slave"

Jenkins master:
JENKINS_URL="http://10.33.20.85:8080"

Dumb Slave node in your Jenkins master:
JENKINS_NODENAME="10.10.33.12_CentOS"

Conection secret:
JENKINS_SECRET="198e4eef9a83ce29c02c0373303223271f6583cd429c6ab98c0f39839d870496"

# 3. Install jenkins-slave service on slave node
cp jenkins-slave.conf /etc/sysconfig/jenkins-slave
cp jenkins-slave.init /etc/init.d/jenkins-slave
chmod 770 /etc/init.d/jenkins-slave
chkconfig --level 3 jenkins-slave on
service jenkins-slave restart
