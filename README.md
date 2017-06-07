# GPP

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

Documentation
-------------

For installation and usage instructions, please visit the
[GPP home page](https://logological.org/gpp).

Development
-----------

## Doxygen
To view the doxygen generated documentation, run these commands:

```
rm -rf ./doc/html/
doxygen Doxyfile
```

Alternatively if you are in ubuntu, just run `./Doxyopen`. 
It auto check that you got the minimum required doxygen packages then
 generates the doxygen documentations. Before opening up the html documentation.


Contributing
------------

Contributions are welcome.  Please post bug reports and feature
requests on the
[issue tracker](https://github.com/logological/gpp/issues).  Feel free
to fork the project and send
[pull requests](https://help.github.com/articles/using-pull-requests/)
for integration into the main distribution.
