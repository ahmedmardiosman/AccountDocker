sed -i 's/localhost:61616/activemq:61616/g' RealAccountApi/src/main/resources/application.properties
sed -i 's/8081/8080/g' RealAccountApi/src/main/resources/application.properties
sed -i 's/localhost:8082/RealAccountNumGenApi:8080/g' RealAccountApi/src/main/resources/application.properties
sed -i 's/localhost:8083/RealAccountPrizeApi:8080/g' RealAccountApi/src/main/resources/application.properties

sed -i 's/8082/8080/g' RealAccountNumGenApi/src/main/resources/application.properties
sed -i 's/8083/8080/g' RealAccountPrizeApi/src/main/resources/application.properties


echo Enter external IP address of VM
read input
ip="$input"
sed -i 's/localhost:8081/$ip/g' AccountFront/src/constants.js

sed -i 's/localhost:61616/activemq:61616/g' RealAccountConsumer/src/main/resources/application.properties
sed -i 's/localhost/mongodb/g' RealAccountConsumer/src/main/resources/application.properties

