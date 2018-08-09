echo Starting Services
docker-compose -f docker-compose-nginx-simple.yml up -d
docker-compose -f docker-compose-nginx-net.yml up -d
docker-compose -f docker-compose-nginx-vol-host.yml up -d
docker-compose -f docker-compose-nginx-vol.yml up -d
echo 
echo Containers active
docker ps
echo 
echo Stoping Services
docker-compose -f docker-compose-nginx-simple.yml down
docker-compose -f docker-compose-nginx-net.yml down
docker-compose -f docker-compose-nginx-vol-host.yml down
docker-compose -f docker-compose-nginx-vol.yml down