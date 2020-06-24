#! /bin/bash

docker run -it --rm \
	--env=LOCAL_USER_ID="$(id -u)" \
	--env=HISTFILE="/home/user/docker/.docker_bash_history" \
	-v ~/dev/Firmware:/home/user/dev/Firmware/:rw \
	-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
	-v ~/docker:/home/user/docker \
	-e DISPLAY=:0 \
	-p 14570:14570/udp \
	-w /home/user/dev/Firmware \
	--name=gazebo \
	px4io/px4-dev-simulation-focal:latest \
	/bin/bash
