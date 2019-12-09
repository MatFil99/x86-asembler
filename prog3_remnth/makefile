CC = gcc
CFLAGS = -m32 -Wall

all: main.o fun.o
	$(CC) $(CFLAGS) main.o fun.o -o prog3

main.o: main.c
	$(CC) $(CFLAGS) -c main.c -o main.o

fun.o: fun.s
	nasm -f elf32 fun.s -o fun.o

clean:
	rm -f *.o