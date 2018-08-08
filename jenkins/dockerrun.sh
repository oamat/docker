sudo docker build -t jenkins .
sudo docker run -d -p 5000:8080 jenkins
sudo docker ps