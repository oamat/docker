echo Creating Image http alpine :
sudo docker build -t myhttpd
echo
echo View networks :
sudo docker network ls
echo
echo Creating Bridge Network :
docker network create docker-bridge-network
echo
echo Creating Container in docker-bridge-network :
sudo docker run --network docker-bridge-network -d -p 5000:80 myhttpd
echo
echo Creating Defined Network :
docker network create -d bridge --subnet 172.24.10.1/16 --gateway 172.24.10.1 docker-defined-network
echo
echo Creating Container in docker-defined-network  :
sudo docker run --network docker-defined-network -d -p 5001:80 myhttpd
echo
echo Creating Container in host network  :
sudo docker run --network host -d myhttpd
echo
echo Creating Container in none network  :
sudo docker run --network none -d myhttpd
sudo docker ps
echo
echo Remove all containers
docker ps -q | xargs docker rm -f
echo
echo View NEW networks :
sudo docker network ls
echo
echo Remove NEW networks :
docker network rm docker-bridge-network
docker network rm docker-defined-network