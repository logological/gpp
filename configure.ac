#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
#
# $Id: configure.ac,v 1.9 2004-07-11 16:15:19 psy Exp $

AC_PREREQ(2.57)
AC_INIT(GPP, 2.22, psychonaut@nothingisreal.com, gpp)
AM_INIT_AUTOMAKE
AC_CONFIG_SRCDIR([src/gpp.c])
AC_CONFIG_HEADER([config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.
AM_GNU_GETTEXT([external])
AM_GNU_GETTEXT_VERSION(0.12.1)

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([stdlib.h string.h fnmatch.h])
AM_ICONV

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_C_INLINE
AC_TYPE_SIZE_T

# Checks for library functions.
AC_CHECK_FUNCS([strcasecmp strchr strdup strtol])

AC_CONFIG_FILES([Makefile po/Makefile.in src/Makefile m4/Makefile po/Makefile.in m4/Makefile ])
AC_OUTPUT
