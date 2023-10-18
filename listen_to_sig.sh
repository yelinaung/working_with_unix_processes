#!/bin/bash
#
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

trap 'sigterm_handler' SIGTERM

# do a `pgrep "listing_to_sig"` in another shell to get the pid
while true; 
    do fancy_echo "Running ... "; sleep 1
done
