sudo yum install git -y
sudo yum install docker -y
sudo yum install docker-compose -y
sudo yum install maven -y

bash ./gitinit.sh
bash ./gitpullrecent.sh
bash ./deletetests.sh
bash ./copydockerfiles.sh
bash ./mvncleanpackall.sh
