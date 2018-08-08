sudo docker build -t tomcat .
sudo docker run -d -p 5000:8080 tomcat
sudo docker ps