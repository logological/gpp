# Copyright (C) 2016 Tristan Miller <psychonaut@nothingisreal.com>
#  
# This file is free software; the author gives unlimited permission to
# copy and/or distribute it, with or without modifications.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE.

man_MANS = gpp.1
dist_doc_DATA = gpp.html gpp.pp $(man_MANS)

gpp.html: gpp.pp
	../src/gpp -H -Dhtml $< -o $@

gpp.1:	gpp.pp
	../src/gpp -H -Dman $< -o $@

CLEANFILES = gpp.html gpp.1
