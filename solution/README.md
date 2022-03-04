COMMANDS EXECUTED - PART1
1. docker pull infracloudio/csvserver:latest
2. docker run -idt --name infratest infracloudio/csvserver
3. docker container logs infratest
4. docker container prune
5. . gencsv.sh 10
6. docker run -idt --name infratest -v `pwd`/inputFile:/csvserver/inputdata infracloudio/csvserver
7. docker exec -it infratest /bin/bash
    a) insidecontainer --> netstat -ano
7. docker run -idt --name infratest -v `pwd`/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver
