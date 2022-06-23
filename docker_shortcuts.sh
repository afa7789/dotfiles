docker rm --force $(docker ps -a -q)
docker image rm $(docker image ls -q)

docker_networkIP() { \nNAME=$1;\ndocker ps | grep $NAME | awk '{print $1}'| docker inspect | grep "IPAddress";\n}
