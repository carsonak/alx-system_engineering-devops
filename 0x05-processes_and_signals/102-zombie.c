#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int make_zombies(void);
int infinite_while(void);

/**
 * main - entry point of the program
 *
 * Return: 0 on success, 1 on failure
 */
int main(void)
{
	if (make_zombies())
		return (EXIT_FAILURE);

	return (infinite_while());
}

/**
 * make_zombies - makes 5 zombie processes
 *
 * Return: 0 on success, 1 on failure
 */
int make_zombies(void)
{
	int i = 0;
	pid_t cpid = 0, ppid = getpid();

	for (i = 0; i < 5; i++)
	{
		if (ppid == getpid())
			cpid = fork();

		if (cpid <= 0)
			return (1);
		else if (cpid > 0)
			printf("Zombie process created, PID: %d\n", cpid);
	}

	fflush(stdout);
	return (0);
}

/**
 * infinite_while - infinite loop
 *
 * Return: always 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}
