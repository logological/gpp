# $Id: Makefile,v 1.3 2003-11-22 19:22:12 psy Exp $

BINDIR=/usr/local/bin
MANDIR=/usr/local/man/man1

all: gpp gpp.1 gpp.html

gpp: gpp.c
	gcc -O2 -Wall -pedantic gpp.c -o gpp

gpp.1: gpp gpphelp.pp
	./gpp -H -Dman gpphelp.pp -o gpp.1

gpp.html: gpp gpphelp.pp
	./gpp -H -Dhtml gpphelp.pp -o gpp.html

install: gpp gpp.1
	strip gpp
	mv gpp $(BINDIR)
	cp gpp.1 $(MANDIR)

clean:
	rm gpp gpp.1 gpp.html
