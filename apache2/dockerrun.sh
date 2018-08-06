sudo docker build -t myweb .
sudo docker run -d -p 5000:80 myweb
sudo docker ps