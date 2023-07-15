
# dokcer buildx create --name mybuilder --driver docker-container --bootstrap

docker buildx build \
--platform linux/amd64, linux/arm64 \
-t jasbel/small:1.0 --push .

FROM --platform=$BUILDER

