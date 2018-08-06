sudo docker build -t nginx .
sudo docker run -d -p 5000:80 nginx
sudo docker ps