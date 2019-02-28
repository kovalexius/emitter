IMAGE=mqtt-emitter
HUB=go-lang

docker build -t $IMAGE .

docker tag $IMAGE $HUB/$IMAGE
#docker push $HUB/$IMAGE
