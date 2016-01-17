#!/bin/bash

#PI auto deploy your project.
#Set Vars

#Source directory or file
PIAD_SOURCE=""

#Target directory or file
PIAD_TARGET=""

#User account on raspberrypi
PIAD_USER=""

#Raspberrypi host name
PIAD_HOST=""

#PiAutoDeploy install location
PIAD_FILE=""

if [ "$1" = "clean" ]
then
    "$PIAD_FILE" "$PIAD_SOURCE" "$PIAD_TARGET" "$PIAD_USER" "$PIAD_HOST" clean
else
	"$PIAD_FILE" "$PIAD_SOURCE" "$PIAD_TARGET" "$PIAD_USER" "$PIAD_HOST"
fi