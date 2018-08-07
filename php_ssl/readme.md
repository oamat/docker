## PHP SSL in Centos docker guide step by step

0. Created certificate: openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout docker.key -out docker.crt  (with common name: localhost)
1. execute "sh dockerrun.sh". (docker read dockerfile and create image & container)
2. execute "docker ps". you can see the container 
3. go to:
    * https://localhost/index.php  (you can see phpinfo)
    
4. docker stop [container_id]  (for stop container)
