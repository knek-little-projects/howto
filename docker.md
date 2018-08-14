# Installing on KALI
apt-get update
apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
apt-get update
echo 'deb https://download.docker.com/linux/debian stretch stable' > /etc/apt/sources.list.d/docker.list
apt-get install docker-ce

# Delete all containers
docker rm $(docker ps -a -q)

# Delete all images
docker rmi $(docker images -q)

# Build
docker build --tag registry.qwe.ru:5000/some/asd:latest -f Dockerfile .
