docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi -f $(docker images -qa)
docker volume ls -q -f 'dangling=true' | xargs docker volume rm
