#!/bin/bash

# Define the first signal handler
handler1() {
  echo "This is the first signal handler"
}

# Assign the first signal handler to SIGINT
trap handler1 SIGINT

# Define the second signal handler and exit the script
handler2() {
  echo "This is the second handler"
  exit
}

# Override the previous trap with a new one calling the old handler and the second handler
trap 'handler1; handler2' SIGINT

echo "Running. Waiting for SIGINT..."
sleep 5 # so that we have time to send it a signal
