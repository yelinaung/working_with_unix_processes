import os

p1 = os.fork()
p2 = os.fork()

print(f"os.getpid(): {os.getpid()}")
print("p1: {0}, p2: {1}".format(p1, p2))
