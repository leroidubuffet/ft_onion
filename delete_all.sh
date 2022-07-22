docker kill $(docker ps -q) 2> .error
docker rm $(docker ps -a -q) 2> .error
docker rmi $(docker images -q) 2> .error
rm -f .error%