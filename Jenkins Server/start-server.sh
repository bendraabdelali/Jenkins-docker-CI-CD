#!/bin/bash

docker-compose up -d
ConatinerName=jenkins
#check if the container is running 
checkhealth="docker inspect -f "{{.State.Running}}" $ConatinerName"

while [  $checkhealth != true ]; do
   echo "********waiting for the container to strtat******"
done

#curl the  docker installer 
cmd1="curl https://get.docker.com/ >  dockerinsatll && chmod 777 dockerinsatll"
aff1="echo '***start installing docker please wait a momment'"

#run docker installer 
cmd2="./dockerinsatll"
aff2="echo '*** end seccus'"

#add jenkins to docker groups 
cmd3="usermod -aG docker jenkins"

#give jenkins permission to excute docker command
cmd4="chown -R jenkins:docker /var/run/docker.sock"

docker exec -u 0 $ConatinerName bash -c "$cmd1&&$aff1&&$cmd2&&$aff2&&$cmd3&&$cmd4"


