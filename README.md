This project is about how to create a build slave for a Jenkins master in an easy way. 

# 1. Add the node on Jenkins master
Add a new Dumb Slave node in your Jenkins master,configure below settings:<br/>
Node name: you decide<br/>
Remote Root Directory: you decide<br/>
Launch Method: Launch slave agent via Java Web Start<br/><br/>

# 2. Edit file in jenkins-slave.conf and hange below settings to your own

Remote root directory:<br/>
JENKINS_WORKDIR="/data/jenkins-slave"<br/>
Jenkins master:<br/>
JENKINS_URL="http://10.33.20.85:8080"<br/>
Dumb Slave node in your Jenkins master:<br/>
JENKINS_NODENAME="10.10.33.12_CentOS"<br/>
Conection secret:<br/>
JENKINS_SECRET="198e4eef9a83ce29c02c0373303223271f6583cd429c6ab98c0f39839d870496"<br/>

# 3. Install jenkins-slave service on slave node
cp jenkins-slave.conf /etc/sysconfig/jenkins-slave<br/>
cp jenkins-slave.init /etc/init.d/jenkins-slave<br/>
chmod 770 /etc/init.d/jenkins-slave<br/>
chkconfig --level 3 jenkins-slave on<br/>
service jenkins-slave restart<br/>
