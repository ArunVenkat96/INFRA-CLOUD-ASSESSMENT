SETTING UP PRE-REQUISITE ON UBUNTU
1. sudo apt-get update
2. sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
3.  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
4. echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
5. sudo apt-get update
6.  sudo apt-get install docker-ce docker-ce-cli containerd.io




COMMANDS EXECUTED - PART1
1. docker pull infracloudio/csvserver:latest
2. docker run -idt --name infratest infracloudio/csvserver
3. docker container logs infratest
4. docker container prune
5. . gencsv.sh 10
6. docker run -idt --name infratest -v `pwd`/inputFile:/csvserver/inputdata infracloudio/csvserver
7. docker exec -it infratest /bin/bash
    a) insidecontainer --> netstat -ano
8. docker run -idt --name infratest -v `pwd`/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver


COMMAND EXECUTED - PART3
1. docker network create testing


prometheus_monitoring: http://localhost:9090
csvserver: http://localhost:9393
