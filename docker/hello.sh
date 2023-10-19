#!/bin/bash

fancy_echo () {
    # this just prints the message with a timestamp
    msg=$1
    echo "[$(date +'%d/%b/%Y:%H:%M:%S %z')] $msg"
}


while true; 
    do fancy_echo "Hello from Docker! 👋";
    sleep 1;
done
