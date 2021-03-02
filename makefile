
CFLAGS= -g -Wall

all: class.o helpers.o
	$(CC) $(CFLAGS) class.o helpers.o -o zesh

class.o: class.c class.h
	$(CC) $(CFLAGS) -c class.c

helpers.o: helpers.c helpers.h
	$(CC) $(CFLAGS) -c helpers.c

.PHONY: clean
clean:
	rm -r class.o zesh helpers.o
