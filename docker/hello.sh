#!/bin/bash

fancy_echo () {
    # this just prints the message with a timestamp
    msg=$1
    echo "[$(date +'%d/%b/%Y:%H:%M:%S %z')] $msg"
}

sigterm_handler() {
    fancy_echo "SIGTERM received!"
    fancy_echo "Going to clean up some stuff. 🧹"
    sleep 3
    fancy_echo "Terminating gracefully. Bye Bye 👋"
    exit 1
}

sigint_handler() {
    fancy_echo "SIGINT received!"
    fancy_echo "You pressed Ctrl+C!"
    sleep 3
    fancy_echo "Terminating gracefully. Bye Bye 👋"
    exit 1
}

trap 'sigterm_handler' SIGTERM
trap 'sigint_handler' SIGINT

while true; 
    do fancy_echo "Hello from Docker! 👋";
    sleep 1;
done
