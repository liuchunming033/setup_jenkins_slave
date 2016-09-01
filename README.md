This project is about how to create a build slave for a Jenkins master in an easy way.Monitor jenkins slave and restart slave when it is down

### 1. Add the node on Jenkins master
Add a new Dumb Slave node in your Jenkins master,configure below settings:\<br /\>  
Node name: you decide\<br /\>  
Remote Root Directory: you decide\<br /\>  
Launch Method: Launch slave agent via Java Web Start\<br /\>  

### 2. Edit file in jenkins-slave.conf and hange below settings to your own

Remote root directory:\<br /\>  
JENKINS_WORKDIR="/data/jenkins-slave"\<br /\>  
Jenkins master:\<br /\>  
JENKINS_URL="http://jenkins-master-ip:8080"\<br /\>  
Dumb Slave node in your Jenkins master:\<br /\>  
JENKINS_NODENAME="jenkins-slave-node-name"\<br /\>  
Conection secret:\<br /\>  
JENKINS_SECRET="198e4eef9a83ce29c02c0373303223271f6583cd429c6ab98c0f39839d870496"\<br /\>  

### 3. Install jenkins-slave service on slave node
sudo sh setup.sh
