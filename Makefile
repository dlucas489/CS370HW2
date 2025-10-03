# Makefile for HW2
# Builds 4 executables: Generator, OddEven, PerfectSquare, Factorial

CC = gcc
CFLAGS = -Wall -g -std=c99
LDLIBS = -lm

TARGETS = Generator OddEven PerfectSquare Factorial

all: $(TARGETS)

Generator: Generator.c
	$(CC) $(CFLAGS) Generator.c -o Generator

OddEven: OddEven.c
	$(CC) $(CFLAGS) OddEven.c -o OddEven

PerfectSquare: PerfectSquare.c
	$(CC) $(CFLAGS) PerfectSquare.c -o PerfectSquare $(LDLIBS)

Factorial: Factorial.c
	$(CC) $(CFLAGS) Factorial.c -o Factorial

clean:
	rm -f $(TARGETS) *.o

zip:
	zip FirstName-LastName-HW2.zip *.c Makefile
