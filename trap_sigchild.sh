#!/bin/bash
fancy_echo () {
	msg=$1
	echo "[$(date +'%d/%b/%Y:%H:%M:%S %z')] $msg"
}

# Signal handler for SIGCHLD
sigchld_handler() {
    fancy_echo "SIGCHLD received: Child process terminated."
}

# Set the SIGCHLD signal handler
trap 'sigchld_handler' SIGCHLD

# Fork a child process
fancy_echo "Forking a child process..."
( sleep 5 ) &

fancy_echo "Parent process sleeping for 10 seconds..."
sleep 10

fancy_echo "Parent process exiting."
