USERNAME=$1
PASSWORD=$2
DOCKERHUB=go-lang

docker stop mqtt-emitter
docker rm mqtt-emitter

if [[ -n ${USERNAME} ]]; then
    docker login -u $USERNAME -p $PASSWORD $DOCKERHUB
fi

docker pull $DOCKERHUB/mqtt-emitter:latest
docker run -d -p 4000:4000 -p 8080:8080 -p 8443:8443  --name mqtt-emitter $DOCKERHUB/mqtt-emitter:latest

#docker run -p 8001:8001 -it --name crypto-server $DOCKERHUB/crypto-server:latest

