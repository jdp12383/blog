$ sudo su -
# wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
# echo "deb http://pkg.jenkins-ci.org/debian-stablee binary/" | tee -a /etc/apt/sources.list
# apt-get update && apt-get upgrade -y
# apt-get install openjdk-8-jdk
# apt-get -y install jenkins
# cat /var/lib/jenkins/secrets/initialAdminPassword
// copy the password
// open browser and go to http://localhost:8080
// enter copied password
// select auto-selected plugins
// create user
