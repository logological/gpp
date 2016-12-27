Summary: Generic Preprocessor
Name: gpp
Version: 2.25
Release: 0
License: LGPL-3.0+
Group: Development/Languages/Other
URL: https://logological.org/gpp/
Source0: https://files.nothingisreal.com/%{name}/%{name}-%{version}.tar.bz2
BuildRoot: %{_tmppath}/%{name}-%{version}-%{release}-root
BuildRequires: gcc

%description 
GPP is a general-purpose preprocessor with customizable syntax,
suitable for a wide range of preprocessing tasks. Its independence
from any one programming language makes it much more versatile than
the C preprocessor (cpp), while its syntax is lighter and more
flexible than that of GNU m4. There are built-in macros for use with
C/C++, LaTeX, HTML, XHTML, and Prolog files.

%prep
%setup -q

%build
%{_configure} --prefix=%{_prefix} --docdir=%{_docdir}/%{name}
%{__make}

%install
[ "%{buildroot}" != "/" ] && %{__rm} -rf %{buildroot}
%{make_install}

%clean
[ "%{buildroot}" != "/" ] && %{__rm} -rf %{buildroot}


%files
%defattr(-,root,root,-)
%{_bindir}/gpp
%{_docdir}/%{name}
%doc %{_mandir}/man1/gpp.1.gz


%changelog
* Tue Dec 27 2016 Tristan Miller <psychonaut@nothingisreal.com> - 
- Initial build.
