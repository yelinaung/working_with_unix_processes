import os
import signal
import time
import sys


# Define a signal handler for SIGTERM
def sigterm_handler(signal, frame):
    print(f"Received {signal}. Terminating gracefully.")
    sys.exit(0)


# Set the SIGTERM signal handler
signal.signal(signal.SIGTERM, sigterm_handler)

print("Running. Waiting for SIGTERM...")
while True:
    print(f"Running {time.time()} / {os.getpid()}")
    time.sleep(1)
