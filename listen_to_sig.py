import os
import signal
import time
import sys


# Define a signal handler for SIGTERM
def sigterm_handler(signal, frame):
    print(f"Received signal {signal}.")
    print("Going to clean up some stuff. 🧹")
    time.sleep(3)
    print("Terminating gracefully. Bye Bye 👋")
    sys.exit(0)


# Set the SIGTERM signal handler
signal.signal(signal.SIGTERM, sigterm_handler)

print("Running. Waiting for SIGTERM...")
while True:
    # this prints every 1 second
    print(f"Running {int(time.time())} / PID - {os.getpid()}")
    time.sleep(1)

# Now, from the another terminal, do "kill PID"
