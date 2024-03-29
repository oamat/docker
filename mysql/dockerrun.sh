sudo rm -rf  data
sudo mkdir data
sudo docker build -t my-dbl .
sudo docker run -d -p 3306:3306 --name my-dbl -e "MYSQL_ROOT_PASSWORD=admin" -e "MYSQL_DATABASE=docker-db" -e "MYSQL_USER=docker-usr" -e "MYSQL_PASSWORD=docker-psw"  -v /home/oriol/docker/mysql/data/:/var/lib/mysql my-dbl
sudo docker ps
sudo docker logs -f my-dbl