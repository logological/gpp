#!/usr/bin/make -f

all:
	autopoint
	( cd m4 && echo "EXTRA_DIST = `echo *.m4`" > Makefile.am )
	autoreconf -i
	./configure --prefix=/usr

test: all
	make
	rm -Rf /tmp/gpp
	make install DESTDIR=/tmp/gpp

clean:
	-$(MAKE) maintainer-clean
	rm -Rf m4/
	rm -f ABOUT-NLS Makefile.in aclocal.m4 config.guess config.h.in \
		config.rpath config.sub configure missing mkinstalldirs \
		depcomp install-sh src/Makefile.in po/Makefile.in.in po/Rules-quot \
		po/boldquot.sed po/en@boldquot.header po/en@quot.header \
		po/insert-header.sin po/quot.sed po/remove-potcdate.sin \
		po/Makevars.template po/en@boldquot.po po/en@quot.po po/gpp.pot
	find -name '*~' -exec rm {} \;

.PHONY: all clean
