# Macros

CC = gcc
CFLAGS = -g -Wall -Wextra -Werror -std=c99
EXE.NAME = huff
FILES.O = io.o letra.o btree.o comprimir.o descomprimir.o

all: $(FILES.O)
		$(CC) -o $(EXE.NAME) $(FILES.O) main.c

.PHONY: all clean tests

tests:
	$(CC) -o tests $(FILES.O) tests.c

io.o: io.c
		$(CC) $(CFLAGS) -c io.c

letra.o: letra.c
		$(CC) $(CFLAGS) -c letra.c

btree.o: btree.c
		$(CC) $(CFLAGS) -c btree.c

comprimir.o: comprimir.c
		$(CC) $(CFLAGS) -c comprimir.c

descomprimir.o: descomprimir.c
		$(CC) $(CFLAGS) -c descomprimir.c


clean:
		rm -f huff
		rm -f *.o
