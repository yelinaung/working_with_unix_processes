#!/bin/bash

fancy_echo () {
	msg=$1
	echo "[$(date +"%d/%b/%Y:%H:%M:%S %z")] $msg"
}

pipe=$(mktemp -u)  # Create a unique named pipe
mkfifo "$pipe"     # Create the named pipe

# Writing process (left side)
{
    fancy_echo "Writing data to the pipe..."
    for i in {1..1000}; do
        fancy_echo "Data $i" >> "$pipe"
    done
    fancy_echo "Writing completed."
} &

# Reading process (right side)
{
    fancy_echo "Reading data from the pipe..."
    while read -r line; do
        fancy_echo "Read: $line"
        sleep 3
    done < "$pipe"
    fancy_echo "Reading completed."
} &

# Wait for the processes to finish
wait

rm "$pipe"  # Remove the named pipe
