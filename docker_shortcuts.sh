docker rm --force $(docker ps -a -q)
docker image rm $(docker image ls -q)
docker volume rm $(docker volume ls -q)
docker stop $(docker ps -a -q)
docker kill $(docker ps -a -q)


docker_networkIP() { \nNAME=$1;\ndocker ps | grep $NAME | awk '{print $1}'| docker inspect | grep "IPAddress";\n}

// docker exec first one in a line
taskid=$(docker service ps -q ${servicename} |head -1)
containerid=$(docker inspect -f '{{.Status.ContainerStatus.ContainerID}}' ${taskid})
docker exec -it ${containerid} "$*"
