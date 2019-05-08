IMAGE_NAME=xampp
CONTAINER_NAME=xampp-docker
PUBLIC_WWW_DIR='~/web_pages'

echo "==========================================================================================="
echo "= First execution : create a container named  '$CONTAINER_NAME' with X11 display on host"
echo "= Subequent executions : start the container named : '$CONTAINER_NAME'"
echo "==========================================================================================="

docker start $CONTAINER_NAME > /dev/null 2> /dev/null && echo "Starting container" || {
	echo "Creating new container named : '$CONTAINER_NAME' ...From image named : '$IMAGE_NAME' "
	docker run \
	       --detach \
	       --tty \
	       -e DISPLAY=$DISPLAY \
            -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
	       -p 8086:80 \
	       -p 3386:3306 \
	       --name $CONTAINER_NAME \
	       --mount "source=$CONTAINER_NAME-vol,destination=/opt/lampp/var/mysql/" \
			$IMAGE_NAME
}

if [ "$#" -eq  "0" ]; then
	docker exec  --interactive --tty $CONTAINER_NAME bash
elif [ "$1" = "stop" ]; then
	docker stop $CONTAINER_NAME
else
	docker exec $CONTAINER_NAME $@
fi
