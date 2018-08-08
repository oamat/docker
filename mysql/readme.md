## mysql docker with Volume HOST guide step by step

0. change path of volume in "docker ru ... -v " command 
1. execute "sh dockerrun.sh". (docker read dockerfile and create image & container)
2. execute "docker ps". you can see the container 
3. docker inspect my-dbl (give me the IPAddress service)
4. Enter mysql console with "mysql -u root -h [IP_Address] -padmin" (or user/password : docker-usr/docker-psw)
5. Enter in mysql console "show databases" and you can see "docker-db"
6. you can see in HOST data folder the logs and data of mysql Container
    
7. docker stop [container_id]  (for stop container)
