# passgen: Password generator

CC=gcc
CFLAGS=-Wall -Wextra -Wpedantic -std=c99 -O2 -lsodium
DESTDIR=/usr/local

all: passgen

install: all
	mkdir -p $(DESTDIR)/bin
	cp -f passgen $(DESTDIR)/bin
	chmod 755 $(DESTDIR)/bin/passgen

uninstall:
	rm -f $(DESTDIR)/bin/passgen

passgen: passgen.o
	$(CC) -o passgen passgen.o $(CFLAGS)

passgen.o: passgen.c
	$(CC) -c passgen.c $(CFLAGS)

clean:
	rm -f *.o

.PHONY: all install uninstall clean
