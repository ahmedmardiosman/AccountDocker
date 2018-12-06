#Get the tools
sudo yum install docker -y
sudo yum install docker-compose -y
sudo yum install maven -y

#Pull, configure and pack
bash ./gitinit.sh
bash ./gitpullrecent.sh
bash ./deletetests.sh
bash ./copydockerfiles.sh
bash ./adjustappprop.sh
bash ./mvncleanpackall.sh

service docker restart
