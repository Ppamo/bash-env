#!/bin/bash

DOCKER_MACHINE="/cygdrive/c/Program Files/Docker Toolbox/docker-machine"
STATUS=$("$DOCKER_MACHINE" status)

if [ ! "$STATUS" == "Running" ]
then
	echo "Loading docker..."
	bash "/cygdrive/c/Archivos de programa/Docker Toolbox/start.sh" exit 0
fi

if [ -z "$DOCKER_HOST" ]
then
	eval $("/cygdrive/c/Archivos de programa/Docker Toolbox/docker-machine.exe" env --shell bash)
fi
