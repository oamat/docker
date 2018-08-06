sudo docker build -t apache .
sudo docker run -d -p 5000:80 apache
sudo docker ps