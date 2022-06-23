docker rm --force $(docker ps -a -q)
docker image rm $(docker image ls -q)
docker volume rm $(docker volume ls -q)
docker stop $(docker ps -a -q)
docker kill $(docker ps -a -q)


docker_networkIP() { \nNAME=$1;\ndocker ps | grep $NAME | awk '{print $1}'| docker inspect | grep "IPAddress";\n}
