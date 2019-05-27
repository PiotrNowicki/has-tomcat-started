#!/bin/bash

# Sample usage:
# screen -d -m $SCRIPT_DIR/has-tomcat-started.sh -o local && run-tomcat-command

alias run_tomcat=""

URL=localhost:80 # CHANGE IT TO WHATEVER URL YOUR TOMCAT IS EXPOSING
SCRIPT_DIR=$HOME/scripts	# CHANGE IT TO DIR WHERE THIS SCRIPT AND MP3 LIES
SLEEP_INTERVAL_SEC=5

RESULT=-1

while [ $RESULT -ne 0 ]
do
	echo "I will send a request to check if Tomcat is alive in $SLEEP_INTERVAL_SEC seconds"
	sleep $SLEEP_INTERVAL_SEC
  curl -sSf "$URL" > /dev/null 2>&1

	RESULT=$?

	echo 'Checked if Tomcat is alive. Result is: ' $RESULT
done

mpg123 -q "$SCRIPT_DIR/tomcat-started-eng.mp3"
