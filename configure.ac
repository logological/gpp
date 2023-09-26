#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ(2.57)
AC_INIT([GPP], [2.28], [tristan@logological.org], [gpp])

AM_INIT_AUTOMAKE([])
AC_CONFIG_SRCDIR([src/gpp.c])
AC_CONFIG_HEADER([config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([stdlib.h string.h fnmatch.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_C_CONST
AC_C_INLINE
AC_TYPE_SIZE_T

# Checks for library functions.
AC_CHECK_FUNCS([strcasecmp strchr strdup strtol popen pclose])

AC_CONFIG_FILES([Makefile src/Makefile doc/Makefile])
AC_OUTPUT
