# Delete all containers
docker rm $(docker ps -a -q)

# Delete all images
docker rmi $(docker images -q)

# Build
docker build --tag registry.qwe.ru:5000/some/asd:latest -f Dockerfile .
