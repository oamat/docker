## mysql docker guide step by step

1. execute "sh dockerrun.sh". (docker read dockerfile and create image & container)
2. execute "docker ps". you can see the container 
3. docker inspect my-dbl (give me the IPAddress service)
4. Enter mysql console with "mysql -u root -h [IP_Address] -padmin" (or user/password : docker-usr/docker-psw)
5. Ener in mysql console "show databases" and you can see "docker-db"
    
6. docker stop [container_id]  (for stop container)
