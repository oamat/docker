sudo docker build -t my-mongo .
sudo docker run -d --name my-mongo -p 27017:27017  my-mongo
sudo docker ps
sudo docker logs -f my-mongo