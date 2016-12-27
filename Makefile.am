# Copyright (C) 2003-2016 Tristan Miller <tristan@logological.org>
#  
# This file is free software; the author gives unlimited permission to
# copy and/or distribute it, with or without modifications.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE.

AUTOMAKE_OPTIONS = dist-bzip2
SUBDIRS = src . doc

README: README.md
	cp $< $@

ChangeLog: FORCE
	gitlog-to-changelog >$@

FORCE:
