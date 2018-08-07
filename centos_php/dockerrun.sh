sudo docker build -t centosphp .
sudo docker run -d -p 5000:80 centosphp
sudo docker ps