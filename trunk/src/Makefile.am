# $Id: Makefile.am,v 1.2 2004-07-11 14:00:22 psy Exp $
#
# Copyright (C) 2003 Tristan Miller <psychonaut@nothingisreal.com>
#  
# This file is free software; the author gives unlimited permission to
# copy and/or distribute it, with or without modifications.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE.

bin_PROGRAMS = gpp
gpp_SOURCES = gpp.c gettext.h
localedir = $(datadir)/locale
DEFS = -DLOCALEDIR=\"$(localedir)\" @DEFS@
LIBS = @LIBINTL@ @LIBS@
