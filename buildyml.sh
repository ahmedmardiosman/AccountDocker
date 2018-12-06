echo "version: '3'" > docker-compose.yml.built
echo services: >> docker-compose.yml.built
echo "  activemq:" >> docker-compose.yml.built
echo "    container_name: activemq" >> docker-compose.yml.built
echo "    image: bobcrutchley/activemq" >> docker-compose.yml.built
echo "  mongodb:" >> docker-compose.yml.built
echo "    container_name: mongodb" >> docker-compose.yml.built
echo "    image: mongo" >> docker-compose.yml.built
cat ymlconfig | while read line
do
if [ "${line:0:1}" != "%" ]
then
echo "  ${line,,}": >> docker-compose.yml.built
echo "    container_name: "$line >> docker-compose.yml.built
echo "    build:" >> docker-compose.yml.built
echo "      context: "$line >> docker-compose.yml.built
echo "      args:" >> docker-compose.yml.built
echo "      - artifact_id="$line >> docker-compose.yml.built
echo "      - version=0.0.1-SNAPSHOT" >> docker-compose.yml.built
else
echo "    ports:" >> docker-compose.yml.built

if [ "${line: -1}" == "F" ]
then
echo "      - \"${line:1: -1}":3000\" >> docker-compose.yml.built
else
echo "      - \"${line:1:5}":8080\" >> docker-compose.yml.built
fi

fi
done
