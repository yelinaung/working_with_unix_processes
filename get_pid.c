#include<stdio.h>
#include <sys/types.h>
#include <unistd.h>


int main() {
	pid_t pid = getpid();  // Get the process ID of the current process
	sleep(10); // Sleep for 10 seconds
	printf("Process ID: %d\n", pid);
    	return 0;
}
