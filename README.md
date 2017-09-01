GPP
===

**[GPP](https://logological.org/gpp)** is a general-purpose
preprocessor with customizable syntax, suitable for a wide range of
preprocessing tasks. Its independence from any one programming
language makes it much more versatile than the C preprocessor (cpp),
while its syntax is lighter and more flexible than that of
[GNU m4](https://www.gnu.org/software/m4/). There are built-in macros
for use with C/C++, LaTeX, HTML, XHTML, and Prolog files.

GPP is [Free Software](https://www.gnu.org/philosophy/free-sw.html). It
is distributed under the terms of the [GNU Lesser General Public
Licence](https://www.gnu.org/copyleft/lgpl.html).


Obtaining GPP
-------------

You can download portable source packages for the current and previous
releases on [GitHub](https://github.com/logological/gpp/releases)
or [nothingisreal.com](https://files.nothingisreal.com/software/gpp/).
You can
also
[browse, download, or clone the development version on GitHub](https://github.com/logological/gpp/).


Installation
------------

To configure, build, and install from the portable source packages,
see the included `INSTALL` file.  (In brief, `./configure && make &&
make install` should work in most cases.)

For other systems, including Microsoft Windows, you may be able to
follow the `INSTALL` instructions with the help of a Unix-like
environment such as [Cygwin](http://cygwin.com/)
or [MSYS](http://www.mingw.org/wiki/msys).  Failing that, copy the
file `config.h.in` to `src/config.h`.  Open the file and follow the
instructions inside to modify it based on your system's capabilities.
Then use a C compiler to compile the `gpp.c` file in the `src`
subdirectory with the macro `HAVE_CONFIG_H` defined.  On Microsoft
Windows systems, you may need to also define the macro `WIN_NT` if
your compiler does not already define it by default.

Links to binary packages are available on
the [GPP home page](https://logological.org/gpp).


Documentation
-------------

Documentation is included in the source package.  It is also available
online on the [GPP home page](https://logological.org/gpp).


Contributing
------------

Contributions are welcome.  Please post bug reports and feature
requests on the
[issue tracker](https://github.com/logological/gpp/issues).  Feel free
to fork the project and send
[pull requests](https://help.github.com/articles/using-pull-requests/)
for integration into the main distribution.
