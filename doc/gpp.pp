<#mode preservelf|off><#mode comment|"%%%" "\n">%%%
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% GPP documentation source file                            %%%%
%%%% (C) 2001 Denis Auroux                                    %%%%
%%%% (C) 2003-2023 Tristan Miller                             %%%%
%%%%                                                          %%%%
%%%% To get the man page, run:                                %%%%
%%%%    gpp -H -Dman gpp.pp -o gpp.1                          %%%%
%%%% To get the html page, run:                               %%%%
%%%%    gpp -H -Dhtml gpp.pp -o gpp.html                      %%%%
%%%% To get a latex version, run:                             %%%%
%%%%    gpp -H -Dlatex gpp.pp -o gpp.tex                      %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%%%%
<#mode user|"$" "$" "{" "}{" "}$" "{" "}" "@@@" "~">%%%
<#mode meta|"$" "$\w\n" "{" "}{" "}$\w\n" "{" "}">%%%
%%%%
%%%%%%%%%%% HTML page macro definitions %%%%%%%%%%%
$ifdef{html}$
$define{P}{<p>}$
$define{p}{<p>}$
$define{BR}{<br>}$
$define{I}{<i>@@@1</i>}$
$define{S}{<p><hr><h2>@@@1</h2>}$
$define{B}{<b>@@@1</b>}$
$define{Q}{<q>@@@1</q>}$
$define{l}{&lt;}$
$define{g}{&gt;}$
$define{d}{-}$
$define{dp}{-}$
$define{b}{\}$
$define{pre}{<pre>}$
$define{nopre}{</pre>}$
$define{list}{<ul>@@@1</ul>}$
$define{li}{<li>}$
$define{BI}{<b>@@@1</b>@@@2<br>}$
$define{bi}{<b>@@@1:</b>}$
$define{s}{"@@@1"}$
$define{pc}{%}$
$define{tilde}{~~}$
$define{and}{&}$
$define{dollar}{~$}$
$define{bra}{~{}$
$define{ket}{~}}$
$define{dz}{#}$
$define{bs}{/}$
$define{und}{_}$
$define{copy}{&copy;}$
$define{nbsp}{&nbsp;}$
$define{TeX}{TeX}$
$define{ldots}{&hellip;}$
$define{mdash}{&mdash;}$
$define{ndash}{&ndash;}$
$define{exp}{^}$
$define{dbq}{"}$
$define{pipe}{|}$
$define{nobreak}{@@@1}$
$else$
%%%%%%%%%%% man page macro definitions %%%%%%%%%%%%
$ifdef{man}$
$define{P}{
.P}$
$define{p}{}$
$define{BR}{
.P}$
$define{I}{\fI@@@1\fP}$
$define{S}{
.SH @@@1}$
$define{B}{.B @@@1}$
$define{Q}{"@@@1"}$
$define{l}{<}$
$define{g}{>}$
$define{d}{\-}$
$define{dp}{\-}$
$define{b}{\\}$
$define{pre}{
.in +.25i
.nf

}$
$define{nopre}{.in -.25i
.fi
}$
$define{list}{@@@1}$
$define{li}{.TP}$
$define{BI}{.BI "@@@1" "@@@2"}$
$define{bi}{.BI "@@@1" ""}$
$define{s}{""@@@1""}$
$define{pc}{%}$
$define{tilde}{~~}$
$define{and}{&}$
$define{dollar}{~$}$
$define{bra}{~{}$
$define{ket}{~}}$
$define{dz}{#}$
$define{bs}{/}$
$define{und}{_}$
$define{copy}{(C)}$
$define{nbsp}{\ }$
$define{TeX}{TeX}$
$define{ldots}{...}$
$define{mdash}{ -- }$
$define{ndash}{-}$
$define{exp}{^}$
$define{dbq}{"}$
$define{pipe}{|}$
$define{nobreak}{@@@1}$
$else$
%%%%%%%%%%% latex page macro definitions %%%%%%%%%%%
$ifdef{latex}$
$define{P}{
}$
$define{p}{
}$
$define{BR}{
}$
$define{I}{$isverb{@@@1}{{\it @@@1}}$}$
$define{S}{\subsection{@@@1}}$
$define{B}{{\bf @@@1}}$
$define{Q}{``@@@1''}$
$define{l}{$isverb{<}{$<$}$}$
$define{g}{$isverb{>}{$>$}$}$
$define{d}{-{}}$
$define{dp}{-}$
$define{b}{$isverb{\}{$\backslash$}$}$
$define{pre}{$define{inverb}$
\indent\begin{Verbatim}[xleftmargin=3ex]}$
$define{nopre}{\end{Verbatim}$undef{inverb}$
}$
$define{isverb}{$ifdef{inverb}$
@@@1$else$
@@@2$endif$
}$
$define{list}{\begin{itemize}@@@1\end{itemize}}$
$define{li}{\item}$
$define{BI}{{\bf @@@1} @@@2\\}$
$define{bi}{{\bf @@@1}: }$
$define{s}{``@@@1''}$
$define{pc}{$isverb{%}{\%}$}$
$define{tilde}{$isverb{~~}{$\sim$}$}$
$define{and}{$isverb{&}{\&}$}$
$define{dollar}{$isverb{~$}{\~$}$}$
$define{bra}{$isverb{~{}{\~{}$}$
$define{ket}{$isverb{~}}{\~}}$}$
$define{dz}{$isverb{#}{\#}$}$
$define{bs}{\slash }$
$define{TeX}{\TeX}$
$define{und}{$isverb{_}{\_}$}$
$define{copy}{\copyright}$
$define{nbsp}{~~}$
$define{ldots}{\ldots}$
$define{mdash}{---}$
$define{ndash}{--}$
$define{exp}{$isverb{^}{\^{}}$}$
$define{dbq}{$isverb{"}{\texttt"}$}$
$define{pipe}{$isverb{|}{$|$}$}$
$define{nobreak}{\mbox{@@@1}}$
$else$

This is the gpp help file.

 To get the man page, run:
    gpp -H -Dman gpp.pp -o gpp.1

 To get the HTML page, run:
    gpp -H -Dhtml gpp.pp -o gpp.html

 To get a LaTeX version, run:
    gpp -H -Dlatex gpp.pp -o gpp.tex
$mode{comment}{"!!!" "!!!"}$
!!!
$endif$
$endif$
$endif$
%%%%%%%%%%%%%%%%% some headers %%%%%%%%%%%%%%%%%%%
$define{version}{2.28}$
$define{SYNTAX}{
$pre$
gpp [$dp$$bra$o$pipe$O$ket$ $I{outfile}$] [$dp$I$I{/include/path}$ ...]
    [$dp$D$I{name=val}$ ...] [$dp$z$pipe$+z] [$dp$x] [$dp$m]
    [$dp$C$pipe$$dp$T$pipe$$dp$H$pipe$$dp$X$pipe$$dp$P$pipe$$dp$U ... [$dp$M ...]]
    [$dp$n$pipe$+n] [+c$I{$l$n$g$}$ $I{str1}$ $I{str2}$] [+s$I{$l$n$g$}$ $I{str1}$ $I{str2}$ $I{c}$]
    [$dp$c $I{str1}$] [$dp$$dp$nostdinc] [$dp$$dp$nocurinc]
    [$dp$$dp$curdirinclast] [$dp$$dp$warninglevel $I{n}$]
    [$dp$$dp$includemarker $I{str}$] [$dp$$dp$include $I{file}$]
    [$I{infile}$]

gpp $dp$$dp$help

gpp $dp$$dp$version
$nopre$
}$
$ifdef{html}$
<!DOCTYPE html>
<html lang="en"><head><title>GPP $version$ $mdash$ Generic Preprocessor</title>
<meta charset="utf-8" />
<meta name="author" content="Denis Auroux, Tristan Miller">
<style>
h1 { text-align: center; }

pre { margin-left: 2ex; }

li:not(:last-child) { margin-bottom: 2ex; }
</style>
</head><body>
<h1>GPP $version$ &mdash; Generic Preprocessor</h1>
<p>N.B. $mdash$ The latest version of GPP and this manual are available from the
<strong><a href="https://logological.org/gpp/">GPP home page</a></strong>.</p>
$else$
$ifdef{man}$
.TH GPP 1 \" -*- nroff -*-

.SH NAME
GPP \- Generic Preprocessor

.SH SYNOPSIS
$SYNTAX$%%%
$else$
\documentclass[12pt]{article}
\usepackage{fancyvrb}
\usepackage{parskip}
\usepackage[pdfusetitle]{hyperref}

\title{GPP$nbsp$$version$ $mdash$ Generic Preprocessor}
\author{Denis Auroux, Tristan Miller}
\date{}
\renewcommand{\thesubsection}{\arabic{subsection}}
\begin{document}
\maketitle

$endif$
$endif$
%%%%%%%%%%%%%% description section %%%%%%%%%%%%%%%%%%%%
$S{DESCRIPTION}$
$P$
GPP is a general-purpose preprocessor with customizable syntax,
suitable for a wide range of preprocessing tasks. Its independence from
any programming language makes it much more versatile than cpp,
while its syntax is lighter and more flexible than that of m4.
$P$
GPP is targeted at all common preprocessing tasks where cpp is not
suitable and where no very sophisticated features are needed. In order to be
able to process equally efficiently text files or source code in a variety
of languages, the syntax used by GPP is fully customizable. The
handling of comments and strings is especially advanced.
$P$
Initially, GPP only understands a minimal set of built-in macros,
called $I{meta-macros}$. These meta-macros allow the definition of
$I{user macros}$ as well as some basic operations forming the core of
the preprocessing system, including conditional tests, arithmetic
evaluation, wildcard matching (globbing), and syntax
specification. All user macro definitions are global$mdash$$I{i.e.}$,
they remain valid until explicitly removed; meta-macros cannot be
redefined. With each user macro definition GPP keeps track of the
corresponding syntax specification so that a macro can be safely
invoked regardless of any subsequent change in operating mode.
$P$
In addition to macros, GPP understands comments and strings, whose syntax
and behavior can be widely customized to fit any particular purpose.
Internally comments and strings are the same construction, so everything
that applies to comments applies to strings as well.
$ifndef{man}$
$S{SYNTAX}$
$SYNTAX$
$endif$
%%%%%%%%%%%%%%%% command-line options %%%%%%%%%%%%%%%%%%%%
$S{OPTIONS}$
$P$
GPP recognizes the following command-line switches and options.  Note that
the $nobreak{$d$nostdinc}$, $nobreak{$d$nocurinc}$,
$nobreak{$d$curdirinclast}$, $nobreak{$d$warninglevel}$, and
$nobreak{$d$includemarker}$ options from version 2.1 and earlier are
deprecated and should not be used.  Use the $Q{long option}$ variants
instead ($nobreak{$d$$d$nostdinc}$, $I{etc.}$).
$list{$li$
$BI{$d$h $d$$d$help}$
Print a short help message.
$li$
$BI{$d$$d$version}$
Print version information.
$li$
$BI{$d$o }{outfile}$
Specify a file to which all output should be sent (by default, everything
is sent to standard output).
$li$
$BI{$d$O }{outfile}$
Specify a file to which all output should be sent; output is simultaneously
sent to stdout.
$li$
$BI{$d$I}{/include/path}$
Specify a path where the $I{$dz$include}$ meta-macro will look for include
files if they are not present in the current directory. The default is
/usr/include if no $nobreak{$d$I}$ option is specified. Multiple
$nobreak{$d$I}$ options may be specified to look in several directories.
$li$
$BI{$d$D}{name=val}$
Define the user macro $I{name}$ as equal to $I{val}$. This is strictly
equivalent to using the $I{$dz$define}$ meta-macro, but makes it possible
to define macros from the command-line. If $I{val}$ makes references to
arguments or other macros, it should conform to the syntax of the mode
specified on the command-line. Starting with version 2.1, macro argument
naming is allowed on the command-line. The syntax is as follows:
$nobreak{$d$D$I{macro}$($I{arg1}$,$ldots$)=$I{definition}$}$. The arguments
are specified in C-style syntax, without any whitespace, but the definition
should still conform to the syntax of the mode specified on the command-line.
$li$
$BI{+z}$
Set text mode to Unix mode (LF terminator). Any CR character in the
input is systematically discarded. This is the default under Unix systems.
$li$
$BI{$d$z}$
Set text mode to DOS mode (CR$ndash$LF terminator). In this mode all CR
characters are removed from the input, and all output LF characters are
converted to CR$ndash$LF. This is the default if GPP is compiled with the
WIN$und$NT option.
$li$
$BI{$d$x}$
Enable the use of the $I{$dz$exec}$ meta-macro. Since $I{$dz$exec}$ includes
the output of an arbitrary shell command line, it may cause a potential
security threat, and is thus disabled unless this option is specified.
$li$
$BI{$d$m}$
Enable automatic mode switching to the cpp compatibility mode if the name
of an included file ends in `.h' or `.c'. This makes it possible to
include C header files with only minor modifications.
$li$
$BI{$d$n}$
Prevent newline or whitespace characters from being removed from the input
when they occur as the end of a macro call or of a comment. By default,
when a newline or whitespace character forms the end of a macro or a comment
it is parsed as part of the macro call or comment and therefore removed from
output. Use the $nobreak{$d$n}$ option to keep the last character in the input
stream if it was whitespace or a newline. This is activated in cpp and Prolog
modes.
$li$
$BI{+n}$
The opposite of $nobreak{$d$n}$. This is the default in all modes except cpp
and Prolog. Note that +n must be placed $I{after}$ $nobreak{$d$C}$ or
$nobreak{$d$P}$ in order to have any effect.
$li$
$BI{$d$U }{arg1 $ldots$ arg9}$
User-defined mode. The nine following command-line arguments are taken to
be respectively the macro start sequence, the macro end sequence for a call
without arguments, the argument start sequence, the argument separator,
the argument end sequence, the list of characters to stack for argument
balancing, the list of characters to unstack, the string to be used for
referring to an argument by number, and finally the quote character (if
there is none an empty string should be provided).
These settings apply both to user macros and to meta-macros, unless the
$nobreak{$d$M}$ option is used to define other settings for meta-macros. See
the section on syntax specification for more details.
$li$
$BI{$d$M }{arg1 $ldots$ arg7}$
User-defined mode specifications for meta-macros. This option can only be
used together with $nobreak{$d$U}$. The seven following command-line
arguments are taken to be respectively the macro start sequence, the macro
end sequence for a call without arguments, the argument start sequence,
the argument separator, the argument end sequence, the list of characters
to stack for argument balancing, and the list of characters to unstack.
See below for more details.
$li$
$BI{(default mode)}$
The default mode is a vaguely cpp-like mode, but it does not handle
comments, and presents various incompatibilities with cpp.
Typical meta-macros and user macros look like this: $pre$
$dz$define x y
macro(arg,...)
$nopre$
This mode is equivalent to $pre$
-U $dbq$$dbq$ $dbq$$dbq$ $dbq$($dbq$ $dbq$,$dbq$ $dbq$)$dbq$ $dbq$($dbq$ $dbq$)$dbq$ $dbq$$dz$$dbq$ $dbq$$b$$b$$dbq$
-M $dbq$$dz$$dbq$ $dbq$$b$n$dbq$ $dbq$ $dbq$ $dbq$ $dbq$ $dbq$$b$n$dbq$ $dbq$($dbq$ $dbq$)$dbq$
$nopre$
$li$
$BI{$d$C}$
cpp compatibility mode. This is the mode where GPP's behavior is the
closest to that of cpp. Unlike in the default mode, meta-macro expansion
occurs only at the beginning of lines, and C comments and strings are
understood. This mode is equivalent to $pre$
-n -U $dbq$$dbq$ $dbq$$dbq$ $dbq$($dbq$ $dbq$,$dbq$ $dbq$)$dbq$ $dbq$($dbq$ $dbq$)$dbq$ $dbq$$dz$$dbq$ $dbq$$dbq$
-M $dbq$$b$n$dz$$b$w$dbq$ $dbq$$b$n$dbq$ $dbq$ $dbq$ $dbq$ $dbq$ $dbq$$b$n$dbq$ $dbq$$dbq$ $dbq$$dbq$
+c $dbq$/*$dbq$ $dbq$*/$dbq$ +c $dbq$//$dbq$ $dbq$$b$n$dbq$ +c $dbq$$b$$b$$b$n$dbq$ $dbq$$dbq$
+s $dbq$$b$$dbq$$dbq$ $dbq$$b$$dbq$$dbq$ $dbq$$b$$b$$dbq$ +s $dbq$'$dbq$ $dbq$'$dbq$ $dbq$$b$$b$$dbq$
$nopre$
$li$
$BI{$d$T}$
$TeX$-like mode. In this mode, typical meta-macros and user macros look like
this: $pre$
$b$define$bra$x$ket$$bra$y$ket$
$b$macro$bra$arg$ket$$bra$...$ket$
$nopre$
No comments are understood. This mode is equivalent to $pre$
-U $dbq$$b$$b$$dbq$ $dbq$$dbq$ $dbq$$bra$$dbq$ $dbq$$ket$$bra$$dbq$ $dbq$$ket$$dbq$ $dbq$$bra$$dbq$ $dbq$$ket$$dbq$ $dbq$$dz$$dbq$ $dbq$@$dbq$
$nopre$
$li$
$BI{$d$H}$
HTML-like mode. In this mode, typical meta-macros and user macros look like
this: $pre$
$l$$dz$define x$pipe$y$g$
$l$$dz$macro arg$pipe$...$g$
$nopre$
No comments are understood. This mode is equivalent to $pre$
-U $dbq$$l$$dz$$dbq$ $dbq$$g$$dbq$ $dbq$$b$B$dbq$ $dbq$$pipe$$dbq$ $dbq$$g$$dbq$ $dbq$$l$$dbq$ $dbq$$g$$dbq$ $dbq$$dz$$dbq$ $dbq$$b$$b$$dbq$
$nopre$
$li$
$BI{$d$X}$
XHTML-like mode. In this mode, typical meta-macros and user macros look like
this: $pre$
$l$$dz$define x$pipe$y/$g$
$l$$dz$macro arg$pipe$.../$g$
$nopre$
No comments are understood. This mode is equivalent to $pre$
-U $dbq$$l$$dz$$dbq$ $dbq$/$g$$dbq$ $dbq$$b$B$dbq$ $dbq$$pipe$$dbq$ $dbq$/$g$$dbq$ $dbq$$l$$dbq$ $dbq$$g$$dbq$ $dbq$$dz$$dbq$ $dbq$$b$$b$$dbq$
$nopre$
$li$
$BI{$d$P}$
Prolog-compatible cpp-like mode. This mode differs from the cpp
compatibility mode by its handling of comments, and is equivalent to $pre$
-n -U $dbq$$dbq$ $dbq$$dbq$ $dbq$($dbq$ $dbq$,$dbq$ $dbq$)$dbq$ $dbq$($dbq$ $dbq$)$dbq$ $dbq$$dz$$dbq$ $dbq$$dbq$
-M $dbq$$b$n$dz$$b$w$dbq$ $dbq$$b$n$dbq$ $dbq$ $dbq$ $dbq$ $dbq$ $dbq$$b$n$dbq$ $dbq$$dbq$ $dbq$$dbq$
+ccss $dbq$$b$!o/*$dbq$ $dbq$*/$dbq$ +ccss $dbq$$pc$$dbq$ $dbq$$b$n$dbq$ +ccii $dbq$$b$$b$$b$n$dbq$ $dbq$$dbq$
+s $dbq$$b$$dbq$$dbq$ $dbq$$b$$dbq$$dbq$ $dbq$$dbq$ +s $dbq$$b$!$dz$'$dbq$ $dbq$'$dbq$ $dbq$$dbq$
$nopre$
$li$
$BI{+c}{$l$n$g$ str1 str2}$
Specify comments. Any unquoted occurrence of $I{str1}$ will be
interpreted as the beginning of a comment. All input up to the first
following occurrence of $I{str2}$ will be discarded. This
option may be used multiple times to specify different types of comment
delimiters. The optional parameter $I{$l$n$g$}$ can be specified to
alter the behavior of the comment and, $I{e.g.}$, turn it into a string or make
it ignored under certain circumstances, see below.
$li$
$BI{$d$c }{str1}$
Un-specify comments or strings. The comment$bs$string specification whose
start sequence is $I{str1}$ is removed. This is useful to alter the
built-in comment specifications of a standard mode$mdash$$I{e.g.}$, the cpp
compatibility mode.
$li$
$BI{+s}{$l$n$g$ str1 str2 c}$
Specify strings. Any unquoted occurrence of $I{str1}$ will be
interpreted as the beginning of a string. All input up to the first
following occurrence of $I{str2}$ will be output as is without any
evaluation. The delimiters themselves are output. If $I{c}$ is non-empty,
its first character is used as a $I{string-quote character}$$mdash$$I{i.e.}$, a
character whose presence immediately before an occurrence of $I{str2}$
prevents it from terminating the string.
The optional parameter $I{$l$n$g$}$ can be specified to
alter the behavior of the string and, $I{e.g.}$, turn it into a comment, enable
macro evaluation inside the string, or make the string specification
ignored under certain circumstances. See below.
$li$
$BI{$d$s }{str1}$
Un-specify comments or strings. Identical to $nobreak{$d$c}$.
$li$
$BI{$d$$d$include }{file}$
Process $I{file}$ before $I{infile}$
$li$
$BI{$d$$d$nostdinc}$
Do not look for include files in the standard directory /usr/include.
$li$
$BI{$d$$d$nocurinc}$
Do not look for include files in the current directory.
$li$
$BI{$d$$d$curdirinclast}$
Look for include files in the current directory $I{after}$ the directories
specified by $I{$d$I}$ rather than before them.
$li$
$BI{$d$$d$warninglevel }{n}$
Set warning level to $I{n}$ (0, 1 or 2). Default is 2 (most verbose).
$li$
$BI{$d$$d$includemarker }{str}$
keep track of $I{$dz$include}$ directives by inserting a marker in the
output stream. The format of the marker is determined by $I{str}$, which
must contain three occurrences of the character $I{$pc$}$ (or equivalently
$I{?}$). The first occurrence is replaced with the line number, the second
with the file name, and the third with 1, 2 or blank. When this option
is specified in default, cpp or Prolog mode, GPP does its best to
ensure that line numbers are the same in the output as in the input by
inserting blank lines in the place of definitions or comments.
$li$
$BI{infile}$
Specify an input file from which GPP reads its input. If no input
file is specified, input is read from standard input.
}$
%%%%%%%%%%%%%%%%% syntax specification %%%%%%%%%%%%%%%%%%%
$S{SYNTAX SPECIFICATION}$
$P$
The syntax of a macro call is as follows: it must start with a
sequence of characters matching the $I{macro start sequence}$ as specified
in the current mode, followed immediately by the name of the macro, which
must be a valid $I{identifier}$$mdash$$I{i.e.}$, a sequence of letters, digits,
or underscores ($Q{$und$}$). The macro name must be followed by a $I{short
macro end sequence}$ if the macro has no arguments, or by a sequence of
arguments initiated by an $I{argument start sequence}$. The various arguments
are then separated by an $I{argument separator}$, and the macro ends with
a $I{long macro end sequence}$.
$P$
In all cases, the parameters of the current context$mdash$$I{i.e.}$, the
arguments passed to the body being evaluated$mdash$can be referred to by using
an $I{argument reference sequence}$ followed by a digit between 1 and 9.
Alternatively, macro parameters may be named (see below). Furthermore, to
avoid interference between the GPP syntax and the contents of the input file,
a $I{quote character}$ is provided. The quote character can be used to
prevent the interpretation of a macro call, comment, or string as anything
but plain text. The quote character $Q{protects}$ the following character, and
always gets removed during evaluation. Two consecutive quote characters
evaluate as a single quote character.
$P$
Finally, to facilitate proper argument delimitation, certain characters can
be $Q{stacked}$ when they occur in a macro argument, so that the argument
separator or macro end sequence are not parsed if the argument body is not
balanced. This allows nesting macro calls without using quotes. If an
improperly balanced argument is needed, quote characters should be added in
front of some stacked characters to make it balanced.
$P$
The macro construction sequences described above can be different for
meta-macros and for user macros: this is the case in cpp mode, for example.
Note that, since meta-macros can only have up to two arguments, the
delimitation rules for the second argument are somewhat sloppier, and
unquoted argument separator sequences are allowed in the second argument
of a meta-macro.
$P$
Unless one of the standard operating modes is selected, the above syntax
sequences can be specified either on the command-line, using the
$nobreak{$d$M}$ and $nobreak{$d$U}$ options respectively for meta-macros and
user macros, or inside an input file via the $I{$dz$mode meta}$ and
$I{$dz$mode user}$ meta-macro calls. In both cases the mode description
consists of nine parameters for user macro specifications, namely the macro
start sequence, the short macro end sequence, the argument start sequence, the
argument separator, the long macro end sequence, the string listing characters
to stack, the string listing characters to unstack, the argument reference
sequence, and finally the quote character. As explained below, these sequences
should be supplied using the syntax of C strings; they must start with a
non-alphanumeric character, and in the first five strings special matching
sequences can be used (see below). If the argument corresponding to the quote
character is the empty string, that argument's functionality is disabled. For
meta-macro specifications there are only seven parameters, as the argument
reference sequence and quote character are shared with the user macro syntax.
$P$
The structure of a comment$bs$string is as follows: it must start with a
sequence of characters matching the given
$I{comment$bs$string start sequence}$, and always ends at the first occurrence
of the $I{comment$bs$string end sequence}$, unless it is preceded by an odd
number of occurrences of the $I{string-quote character}$ (if such a character
has been specified). In certain cases comment$bs$strings can be specified to
enable macro evaluation inside the comment$bs$string; in that case, if a quote
character has been defined for macros it can be used as well to prevent the
comment$bs$string from ending, with the difference that the macro quote
character is always removed from output whereas the string-quote character is
always output. Also note that under certain circumstances a comment$bs$string
specification can be $I{disabled}$, in which case the comment$bs$string start
sequence is simply ignored. Finally, it is possible to specify a $I{string
warning character}$ whose presence inside a comment$bs$string will cause GPP to
output a warning (this is useful to locate unterminated strings in cpp mode).
Note that input files are not allowed to contain unterminated
comments$bs$strings.
$P$
A comment$bs$string specification can be declared from within the input
file using the $I{$dz$mode comment}$ meta-macro call (or equivalently
$I{$dz$mode string}$), in which case the number of C strings to be given as
arguments to describe the comment$bs$string can be anywhere between two and four:
the first two arguments (mandatory) are the start sequence and the end
sequence, and can make use of the special matching sequences (see below).
They may not start with alphanumeric characters. The first
character of the third argument, if there is one, is used as the string-quote
character (use an empty string to disable the functionality), and the
first character of the fourth argument, if there is one, is used as the
string-warning character. A specification may also be given from the
command-line, in which case there must be two arguments if using the
+c option and three if using the +s option.
$P$
The behavior of a comment$bs$string is specified by a three-character
modifier string, which may be passed as an optional argument either
to the +c$bs$+s command-line options or to the $I{$dz$mode
comment}$$bs$$I{$dz$mode string}$ meta-macros. If no modifier string is
specified, the default value is $Q{ccc}$ for comments and $Q{sss}$ for strings.
The first character corresponds to the behavior inside meta-macro calls
(including user-macro definitions since these come inside a $I{$dz$define}$
meta-macro call), the second character corresponds to the behavior inside
user-macro parameters, and the third character corresponds to the behavior
outside of any macro call. Each of these characters can take the following
values:
$list{
$li$
$bi{i}$
disable the comment$bs$string specification.
$li$
$bi{c}$
comment (neither evaluated nor output).
$li$
$bi{s}$
string (the string and its delimiter sequences are output as-is).
$li$
$bi{q}$
quoted string (the string is output as-is, without the delimiter sequences).
$li$
$bi{C}$
evaluated comment (macros are evaluated, but output is discarded).
$li$
$bi{S}$
evaluated string (macros are evaluated, delimiters are output).
$li$
$bi{Q}$
evaluated quoted string (macros are evaluated, delimiters are not output).}$
$P$
Important note: any occurrence of a comment$bs$string start sequence inside
another comment$bs$string is always ignored, even if macro evaluation is
enabled. In other words, comments$bs$strings cannot be nested. In particular,
the `Q' modifier can be a convenient way of defining a syntax for
temporarily disabling all comment and string specifications.
$P$
Syntax specification strings should always be provided as C strings,
whether they are given as arguments to a $I{$dz$mode}$ meta-macro call or
on the command-line of a Unix shell. If command-line arguments are given
via another method than a standard Unix shell, then the shell behavior
must be emulated$mdash$$I{i.e.}$, the surrounding $dbq$$dbq$ quotes should be
removed, all occurrences of `$b$$b$' should be replaced by a single backslash,
and similarly `$b$$dbq$' should be replaced by `$dbq$'.
Sequences like `$b$n' are recognized by GPP and should be left as is.
$P$
Special sequences matching certain subsets of the character set can be
used. They are of the form `$b$$I{x}$', where $I{x}$ is one of:
$list{
$li$
$bi{b}$
matches any sequence of one or more spaces or tab characters (`$b$b' is
identical to `$nbsp$').
$li$
$bi{w}$
matches any sequence of zero or more spaces or tab characters.
$li$
$bi{B}$
matches any sequence of one or more spaces, tabs or newline characters.
$li$
$bi{W}$
matches any sequence of zero or more spaces, tabs or newline characters.
$li$
$bi{a}$
an alphabetic character (`a' to `z' and `A' to `Z').
$li$
$bi{A}$
an alphabetic character, or a space, tab or newline.
$li$
$bi{$dz$}$
a digit (`0' to `9').
$li$
$bi{i}$
an identifier character. The set of matched characters is customizable
using the $I{$dz$mode charset id}$ command. The default setting matches
alphanumeric characters and underscores (`a' to `z', `A' to `Z', `0' to `9'
and `$und$').
$li$
$bi{t}$
a tab character.
$li$
$bi{n}$
a newline character.
$li$
$bi{o}$
an operator character. The set of matched characters is customizable
using the $I{$dz$mode charset op}$ command. The default setting matches
all characters in $Q{+-*/$b$$exp$$l$$g$=`$tilde$:.?@$dz$$and$!$pc$$pipe$}$,
except in Prolog mode where `!', `$pc$' and `$pipe$' are not matched.
$li$
$bi{O}$
an operator character or a parenthesis character. The set of additional
matched characters in comparison with `$b$o' is customizable using the
$I{$dz$mode charset par}$ command. The default setting is to have the
characters in $Q{()[]$bra$$ket$}$ as parentheses.}$
$P$
Moreover, all of these matching subsets except `$b$w' and `$b$W' can be
negated by inserting a `!'$mdash$$I{i.e.}$, by writing `$b$!$I{x}$' instead of
`$b$$I{x}$'.
$P$
Note an important distinctive feature of $I{start sequences}$: when the
first character of a macro or comment$bs$string start sequence is `$nbsp$' or
one of the above special sequences, it is not taken to be part of the sequence
itself but is used instead as a context check: for example a start sequence
beginning with `$b$n' matches only at the beginning of a line, but the
matching newline character is not taken to be part of the sequence.
Similarly a start sequence beginning with `$nbsp$' matches only if some
whitespace is present, but the matching whitespace is not considered to
be part of the start sequence and is therefore sent to output. If a context
check is performed at the very beginning of a file (or more generally of
any body to be evaluated), the result is the same as matching with a newline
character (this makes it possible for a cpp-mode file to start with a
meta-macro call).
$P$
Two special syntax rules were added in version 2.1. First,
argument references ($dz$$I{n}$) are no longer evaluated when they are
outside of macro calls and definitions. However, they are no longer allowed
to appear (unless protected by quote characters) inside a call to a defined
user macro; the current behavior (backwards compatible) is to remove them
silently from the input if that happens.
$P$
Second, if the end sequence (either for macros or comments) consists of a
single newline character, and if delimitation rules lead
to evaluation in a context where the final newline character is absent,
GPP silently ignores the missing newline instead of producing an
error. The main consequence is that meta-macro calls can now be nested
in a simple way in standard, cpp and Prolog modes.

%%%%%%%%%%%%%%%%%% evaluation rules %%%%%%%%%%%%%%%%%%%%
$S{EVALUATION RULES}$
$P$
Input is read sequentially and interpreted according to the rules of the
current mode. All input text is first matched against the specified
comment$bs$string start sequences of the current mode (except those which
are disabled by the `i' modifier), unless the body being evaluated is
the contents of a comment$bs$string whose modifier enables macro evaluation.
The most recently defined comment$bs$string specifications are checked for
first. Important note: comments may not appear between the name of a macro
and its arguments (doing so results in undefined behavior).
$P$
Anything that is not a comment$bs$string is then matched against a possible
meta-macro call, and if that fails too, against a possible user-macro
call. All remaining text undergoes substitution of argument reference
sequences by the relevant argument text (empty unless the body being
evaluated is the definition of a user macro) and removal of the quote
character if there is one.
$P$
Note that meta-macro arguments are passed to the meta-macro prior to
any evaluation (although the meta-macro may choose to evaluate them,
see meta-macro descriptions below). In the case of the $I{$dz$mode}$
meta-macro, GPP temporarily adds a comment$bs$string specification to
enable recognition of C strings ($dbq$$ldots$$dbq$) and prevent any evaluation
inside them, so no interference of the characters being put in the C
string arguments to $I{$dz$mode}$ with the current syntax is to be feared.
$P$
On the other hand, the arguments to a user macro are systematically
evaluated, and then passed as context parameters to the macro definition
body, which gets evaluated with that environment. The only exception is
when the macro definition is empty, in which case its arguments are not
evaluated. Note that GPP temporarily switches back to the mode in which
the macro was defined in order to evaluate it, so it is perfectly safe
to change the operating mode between the time a macro is defined
and the time when it is called. Conversely, if a user macro wishes to
work with the current mode instead of the one that was used to define it
it needs to start with a $I{$dz$mode restore}$ call and end with a
$I{$dz$mode save}$ call.
$P$
A user macro may be defined with named arguments (see $I{$dz$define}$
description below). In that case, when the macro definition is being
evaluated, each named parameter causes a temporary virtual user-macro
definition to be created; such a macro may be called only without arguments
and simply returns the text of the corresponding argument.
$P$
Note that, since macros are evaluated when they are called rather than
when they are defined, any attempt to call a recursive macro causes
undefined behavior except in the very specific case when the macro
uses $I{$dz$undef}$ to erase itself after finitely many loop iterations.
$P$
Finally, a special case occurs when a user macro whose definition does not
involve any arguments (neither named arguments nor the argument reference
sequence) is called in a mode where the short user-macro end sequence is
empty ($I{e.g.}$, cpp or $TeX$$nbsp$mode). In that case it is assumed to be an
$I{alias macro}$: its arguments are first evaluated in the current mode
as usual, but instead of being passed to the macro definition as parameters
(which would cause them to be discarded) they are actually appended to the
macro definition, using the syntax rules of the mode in which the macro was
defined, and the resulting text is evaluated again. It is therefore
important to note that, in the case of a macro alias, the arguments
actually get evaluated twice in two potentially different modes.
%%%
%%%%%%%%%%%%%%%%%%%%% meta-macro descriptions %%%%%%%%%%%%%%%%%%%%%%
$S{META-MACROS}$
$P$
These macros are always predefined. Their actual calling sequence depends
on the current mode; here we use cpp-like notation.
$list{
$li$
$BI{$dz$define }{x y}$
This defines the user macro $I{x}$ as $I{y}$. $I{y}$ can be any valid
GPP input, and may for example refer to other macros. $I{x}$ must
be an identifier ($I{i.e.}$, a sequence of alphanumeric characters and
`$und$'), unless named arguments are specified. If $I{x}$ is already defined,
the previous definition is overwritten. If no second argument is given,
$I{x}$ will be defined as a macro that outputs nothing. Neither $I{x}$
nor $I{y}$ are evaluated; the macro definition is only evaluated when
it is called, not when it is declared.
$p$
It is also possible to name the arguments in a macro definition: in
that case, the argument $I{x}$ should be a user-macro call whose arguments
are all identifiers. These identifiers become available as user-macros
inside the macro definition; these virtual macros must be called without
arguments, and evaluate to the corresponding macro parameter.
$li$
$BI{$dz$defeval }{x y}$
This acts in a similar way to $I{$dz$define}$, but the second argument $I{y}$
is evaluated immediately. Since user macro definitions are also evaluated
each time they are called, this means that the macro $I{y}$ will undergo
$I{two}$ successive evaluations. The usefulness of $I{$dz$defeval}$ is
considerable as it is the only way to evaluate something more than once,
which may be needed to force evaluation of the arguments of a
meta-macro that normally doesn't perform any evaluation. However since all
argument references evaluated at define-time are understood as the arguments
of the body in which the macro is being defined and not as the arguments of
the macro itself, usually one has to use the quote character to prevent
immediate evaluation of argument references.
$li$
$BI{$dz$undef }{x}$
This removes any existing definition of the user macro $I{x}$.
$li$
$BI{$dz$ifdef }{x}$
This begins a conditional block. Everything that follows is evaluated only
if the identifier $I{x}$ is defined, and until either a $I{$dz$else}$ or a
$I{$dz$endif}$ statement is reached. Note, however, that the commented text is
still scanned thoroughly, so its syntax must be valid. It is in particular
legal to have the $I{$dz$else}$ or $I{$dz$endif}$ statement ending the
conditional block appear only as the result of a user-macro expansion and not
explicitly in the input.
$li$
$BI{$dz$ifndef }{x}$
This begins a conditional block. Everything that follows is evaluated only
if the identifier $I{x}$ is not defined.
$li$
$BI{$dz$ifeq }{x y}$
This begins a conditional block. Everything that follows is evaluated
only if the results of the evaluations of $I{x}$ and $I{y}$ are identical
as character strings. Any leading or trailing whitespace is ignored for
the comparison. Note that in cpp-mode any unquoted whitespace character
is understood as the end of the first argument, so it is necessary to be
careful.
$li$
$BI{$dz$ifneq }{x y}$
This begins a conditional block. Everything that follows is evaluated only
if the results of the evaluations of $I{x}$ and $I{y}$ are not identical
(even up to leading or trailing whitespace).
$li$
$BI{$dz$else}$
This toggles the logical value of the current conditional block. What
follows is evaluated if and only if the preceding input was commented out.
$li$
$BI{$dz$endif}$
This ends a conditional block started by a $I{$dz$if$ldots$}$ meta-macro.
$li$
$BI{$dz$include }{file}$
This causes GPP to open the specified file and evaluate its contents,
inserting the resulting text in the current output. All defined user macros
are still available in the included file, and reciprocally all macros
defined in the included file will be available in everything that
follows. The include file is looked for first in the current directory,
and then, if not found, in one of the directories specified by the $I{$d$I}$
command-line option (or $I{/usr/include}$ if no directory was specified).
Note that, for compatibility reasons, it is possible to put the file name
between $dbq$$dbq$ or $l$$g$.
$p$
The order in which the various directories are searched for include files
is affected by the $I{$d$nostdinc}$, $I{$d$nocurinc}$ and $I{$d$curdirinclast}$
command-line options.
$p$
Upon including a file, GPP immediately saves a copy of the current operating
mode onto the mode stack, and restores the operating mode at the end of the
included file. The included file may override this behavior by starting with
a $I{$dz$mode restore}$ call and ending with a $I{$dz$mode push}$ call.
Additionally, when the $I{$d$m}$ command line option is specified, GPP will
automatically switch to the cpp compatibility mode upon including a file
whose name ends with either `.c' or `.h'.
$li$
$BI{$dz$sinclude }{file}$
This is a $Q{silent}$ version of the $I{$dz$include}$ meta-macro that does
not emit an error in the event that the specified file does not exist or
cannot be opened.
$li$
$BI{$dz$exec }{command}$
This causes GPP to execute the specified command line and include its standard
output in the current output. Note that, for security reasons, this meta-macro
is disabled unless the $I{$d$x}$ command line flag was specified.
If use of $I{$dz$exec}$ is not allowed, a warning message is printed
and the output is left blank. Note that the specified command line is
evaluated before being executed, thus allowing the use of macros in the
command-line. However, the output of the command is included verbatim and
not evaluated. If you need the output to be evaluated, you must use
$I{$dz$defeval}$ (see above) to cause a double evaluation.
$li$
$BI{$dz$eval }{expr}$
The $I{$dz$eval}$ meta-macro attempts to evaluate $I{expr}$ first by
expanding macros (normal GPP evaluation) and then by performing
arithmetic evaluation and$bs$or wildcard matching.  The syntax and
operator precedence for arithmetic expressions are the same as in C;
the only missing operators are $l$$l$, $g$$g$, ?:, and the assignment
operators.
$p$
POSIX-style wildcard matching (`globbing') is available only on POSIX
implementations and can be invoked with the =$tilde$ operator.  In
brief, a `?' matches any single character, a `*' matches any string
(including the empty string), and `[$ldots$]' matches any one of the
characters enclosed in brackets.  A `[$ldots$]' class is complemented
when the first character in the brackets is `!'.  The characters in a
`[$ldots$]' class can also be specified as a range using the `$d$'
character$mdash$$I{e.g.}$, `[F$d$N]' is equivalent to `[FGHIJKLMN]'.
$p$
If unable to assign a numerical value to the result, the
returned text is simply the result of macro expansion without any
arithmetic evaluation. The only exceptions to this rule are the
comparison operators ==, !=, $l$, $g$, $l$=, and $g$= which, if one of
the sides does not evaluate to a number, perform string comparison
instead (ignoring trailing and leading spaces).  Additionally, the
$I{length($ldots$)}$ arithmetic operator returns the length in
characters of its evaluated argument.
$p$
Inside arithmetic expressions, the $I{defined($ldots$)}$ special user macro
is also available: it takes only one argument, which is not evaluated, and
returns 1 if it is the name of a user macro and 0 otherwise.
$li$
$BI{$dz$if }{expr}$
This meta-macro invokes the arithmetic$bs$globbing evaluator in the same
manner as $I{$dz$eval}$ and compares the result of evaluation with the
string $dbq$0$dbq$ in order to begin a conditional block. In particular note
that the logical value of $I{expr}$ is always true when it cannot be
evaluated to a number.
$li$
$BI{$dz$elif }{expr}$
This meta-macro can be used to avoid nested $I{$dz$if}$ conditions.
$I{$dz$if}$ $ldots$ $I{$dz$elif}$ $ldots$ $I{$dz$endif}$ is equivalent
to $I{$dz$if}$ $ldots$ $I{$dz$else}$ $I{$dz$if}$ $ldots$
$I{$dz$endif}$ $I{$dz$endif}$.
$li$
$BI{$dz$mode }{keyword $ldots$}$
This meta-macro controls GPP's operating mode. See below for a list of
$I{$dz$mode}$ commands.
$li$
$BI{$dz$line}$
This meta-macro evaluates to the line number of the current input file.
$li$
$BI{$dz$file}$
This meta-macro evaluates to the filename of the current input file as
it appears on the command line or in the argument to $I{$dz$include}$.
If GPP is reading its input from stdin, then $I{$dz$file}$ evaluates
to `stdin'.
$li$
$BI{$dz$date }{fmt}$
This meta-macro evaluates to the current date and time as formatted by
the specified format string $I{fmt}$.  See the section $I{DATE AND
TIME CONVERSION SPECIFIERS}$ below.
$li$
$BI{$dz$error }{msg}$
This meta-macro causes an error message with the current filename and
line number, and with the text $I{msg}$, to be printed to the standard
error device.  Subsequent processing is then aborted.
$li$
$BI{$dz$warning }{msg}$
This meta-macro causes a warning message with the current filename and
line number, and with the text $I{msg}$, to be printed to the standard
error device.  Subsequent processing is then resumed.
}$
$P$
The key to GPP's flexibility is the $I{$dz$mode}$ meta-macro. Its first
argument is always one of a list of available keywords (see below);
its second argument is always a sequence of words separated by whitespace.
Apart from possibly the first of them, each of these words is always a
delimiter or syntax specifier, and should be provided as a C string
delimited by double quotes ($dbq$$nbsp$$dbq$). The various special matching
sequences  listed in the section on syntax specification are available. Any
$I{$dz$mode}$ command is parsed in a mode where $dbq$$ldots$$dbq$ is understood
to be a C-style string, so it is safe to put any character inside these
strings. Also note that the first argument of $I{$dz$mode}$ (the keyword) is
never evaluated, while the second argument is evaluated (except of course for
the contents of C strings), so that the syntax specification may be obtained
as the result of a macro evaluation.
$P$
The available $I{$dz$mode}$ commands are:
$list{
$li$
$BI{$dz$mode save / $dz$mode push}$
Push the current mode specification onto the mode stack.
$li$
$BI{$dz$mode restore / $dz$mode pop}$
Pop mode specification from the mode stack.
$li$
$BI{$dz$mode standard }{name}$
Select one of the standard modes. The only argument must be one of:
default (default mode); cpp, C (cpp mode); tex, TeX ($TeX$$nbsp$mode); html,
HTML (html mode); xhtml, XHTML (xhtml mode); prolog, Prolog (prolog
mode). The mode name must be given directly, not as a C string.
$li$
$BI{$dz$mode user }{$s{s1}$ $ldots$ $s{s9}$}$
Specify user macro syntax.
The 9 arguments, all of them C strings, are the mode specification for
user macros (see the $nobreak{$d$U}$ command-line option and the section on
syntax specification). The meta-macro specification is not affected.
$li$
$BI{$dz$mode meta }{$bra$user $pipe$ $s{s1}$ $ldots$ $s{s7}$$ket$}$
Specify meta-macro syntax.
Either the only argument is $I{user}$ (not as a string), and the user-macro
mode specifications are copied into the meta-macro mode specifications,
or there must be seven string arguments, whose significance is the same as
for the $nobreak{$d$M}$ command-line option (see section on syntax
specification).
$li$
$BI{$dz$mode quote }{[$s{c}$]}$
With no argument or $dbq$$dbq$ as argument, removes the quote character
specification and disables the quoting functionality. With one string
argument, the first character of the string is taken to be the new
quote character. The quote character can be neither alphanumeric nor `$und$',
nor can it be one of the special matching sequences.
$li$
$BI{$dz$mode comment }{[xxx] $s{start}$ $s{end}$ [$s{c}$ [$s{c}$]]}$
Add a comment specification. Optionally a first argument consisting of
three characters not enclosed in $dbq$$nbsp$$dbq$ can be used to specify a
comment$bs$string modifier (see the section on syntax specification). The
default modifier is $I{ccc}$. The first two string
arguments are used as comment start and end sequences respectively.
The third string argument is optional and can be used to specify a
string-quote character. (If it is $dbq$$dbq$, the functionality is disabled.)
The fourth string argument is optional and can be used to specify a
string delimitation warning character. (If it is $dbq$$dbq$, the functionality
is disabled.)
$li$
$BI{$dz$mode string }{[xxx] $s{start}$ $s{end}$ [$s{c}$ [$s{c}$]]}$
Add a string specification. Identical to $I{$dz$mode comment}$ except that
the default modifier is $I{sss}$.
$li$
$BI{$dz$mode nocomment / $dz$mode nostring }{[$s{start}$]}$
With no argument, remove all comment$bs$string specifications. With one
string argument, delete the comment$bs$string specification whose start
sequence is the argument.
$li$
$BI{$dz$mode preservelf }{$bra$ on $pipe$ off $pipe$ 1 $pipe$ 0 $ket$}$
Equivalent to the $I{-n}$ command-line switch. If the argument is $I{on}$
or $I{1}$, any newline or whitespace character terminating a macro call or
a comment$bs$string is left in the input stream for further processing. If the
argument is $I{off}$ or $I{0}$ this feature is disabled.
$li$
$BI{$dz$mode charset }{$bra$ id $pipe$ op $pipe$ par $ket$ $s{string}$}$
Specify the character sets to be used for matching the $b$o, $b$O and
$b$i special sequences. The first argument must be one of $I{id}$
(the set matched by $b$i), $I{op}$ (the set matched by $b$o) or $I{par}$
(the set matched by $b$O in addition to the one matched by $b$o).
$I{$dbq$string$dbq$}$ is a C string which lists all characters to put in the
set. It may contain only the special matching sequences $b$a, $b$A, $b$b, $b$B,
and $b$$dz$ (the other sequences and the negated sequences are not allowed).
When a `-' is found inbetween two non-special characters this adds all
characters inbetween (e.g. $dbq$A-Z$dbq$ corresponds to all uppercase
characters). To have `-' in the matched set, either put it in first or last
position or place it next to a $b$x sequence.
}$
$S{DATE AND TIME CONVERSION SPECIFIERS}$
Ordinary characters placed in the format string are copied without
conversion.  Conversion specifiers are introduced by a `$pc$'
character, and are replaced as follows:
$list{
$li$
$BI{$pc$a}$
The abbreviated weekday name according to the  current locale.
$li$
$BI{$pc$A}$
The  full  weekday  name  according  to the current
locale.
$li$
$BI{$pc$b}$
The abbreviated month name according to the current
locale.
$li$
$BI{$pc$B}$
The  full  month  name  according  to  the  current
locale.
$li$
$BI{$pc$c}$
The preferred date and time representation for  the
current locale.
$li$
$BI{$pc$d}$
The day of the month as a decimal number (range  01
to 31).
$li$
$BI{$pc$F}$
Equivalent to $pc$Y-$pc$m-$pc$d (the ISO 8601 date  format).
$li$
$BI{$pc$H}$
The  hour as a decimal number using a 24-hour clock
(range 00 to 23).
$li$
$BI{$pc$I}$
The hour as a decimal number using a 12-hour  clock
(range 01 to 12).
$li$
$BI{$pc$j}$
The  day of the year as a decimal number (range 001
to 366).
$li$
$BI{$pc$m}$
The month as a decimal number (range 01 to 12).
$li$
$BI{$pc$M}$
The minute as a decimal number (range 00 to 59).
$li$
$BI{$pc$p}$
Either `AM' or `PM' according  to  the  given  time
value, or the corresponding strings for the current
locale.  Noon is treated as `PM'  and  midnight  as
`AM'.
$li$
$BI{$pc$R}$
The  time  in  24-hour notation ($pc$H:$pc$M).
$li$
$BI{$pc$S}$
The second as a decimal number (range 00 to 61).
$li$
$BI{$pc$U}$
The week number of the current year  as  a  decimal
number,  range  00  to  53, starting with the first
Sunday as the first day of week 01.
$li$
$BI{$pc$w}$
The  day  of  the  week as a decimal, range 0 to 6,
Sunday being 0.
$li$
$BI{$pc$W}$
The week number of the current year  as  a  decimal
number,  range  00  to  53, starting with the first
Monday as the first day of week 01.
$li$
$BI{$pc$x}$
The preferred date representation for  the  current
locale without the time.
$li$
$BI{$pc$X}$
The  preferred  time representation for the current
locale without the date.
$li$
$BI{$pc$y}$
The year as a  decimal  number  without  a  century
(range 00 to 99).
$li$
$BI{$pc$Y}$
The year as a decimal number including the century.
$li$
$BI{$pc$Z}$
The time zone or name or abbreviation.
$li$
$BI{$pc$$pc$}$
A literal `$pc$' character.
}$
$P$
Depending on the C compiler and library used to compile GPP, there
may be more conversion specifiers available.  Consult your compiler's
documentation for the $I{strftime()}$ function.  Note, however, that
any conversion specifiers not listed above may not be portable
across installations of GPP.
$S{EXAMPLES}$
Here is a basic self-explanatory example in standard or cpp mode:
$pre$
$dz$define FOO This is
$dz$define BAR a message.
$dz$define concat $dz$1 $dz$2
concat(FOO,BAR)
$dz$ifeq (concat(foo,bar)) (foo bar)
This is output.
$dz$else
This is not output.
$dz$endif
$nopre$
Using argument naming, the $I{concat}$ macro could alternatively be defined
as
$pre$
$dz$define concat(x,y) x y
$nopre$
In $TeX$$nbsp$mode and using argument naming, the same example becomes:
$pre$
$b$define$bra$FOO$ket$$bra$This is$ket$
$b$define$bra$BAR$ket$$bra$a message.$ket$
$b$define$bra$$b$concat$bra$x$ket$$bra$y$ket$$ket$$bra$$b$x $b$y$ket$
$b$concat$bra$$b$FOO$ket$$bra$$b$BAR$ket$
$b$ifeq$bra$$b$concat$bra$foo$ket$$bra$bar$ket$$ket$$bra$foo bar$ket$
This is output.
$b$else
This is not output.
$b$endif
$nopre$
In HTML mode and without argument naming, one gets similarly:
$pre$
$l$$dz$define FOO$pipe$This is$g$
$l$$dz$define BAR$pipe$a message.$g$
$l$$dz$define concat$pipe$$dz$1 $dz$2$g$
$l$$dz$concat $l$$dz$FOO$g$$pipe$$l$$dz$BAR$g$$g$
$l$$dz$ifeq $l$$dz$concat foo$pipe$bar$g$$pipe$foo bar$g$
This is output.
$l$$dz$else$g$
This is not output.
$l$$dz$endif$g$
$nopre$
The following example (in standard mode) illustrates the use of
the quote character:
$pre$
$dz$define FOO This is $b$
   a multiline definition.
$dz$define BLAH(x) My argument is x
BLAH(urf)
$b$BLAH(urf)
$nopre$
Note that the multiline definition is also valid in cpp and Prolog
modes despite the absence of quote character, because `$b$' followed
by a newline is then interpreted as a comment and discarded.
$P$
In cpp mode, C strings and comments are understood as such, as illustrated
by the following example:
$pre$
$dz$define BLAH foo
BLAH $dbq$BLAH$dbq$ /* BLAH */
`It$b$'s a /*string*/ !'
$nopre$
The main difference between Prolog mode and cpp mode is the handling of
strings and comments: in Prolog, a `$ldots$' string may not begin
immediately after a digit, and a /*$ldots$*/ comment may not begin immediately
after an operator character. Furthermore, comments are not removed from
the output unless they occur in a $dz$command.
$P$
The differences between cpp mode and default mode are deeper: in default
mode $dz$commands may start anywhere, while in cpp mode they must be at the
beginning of a line; the default mode has no knowledge of comments and
strings, but has a quote character (`$b$'), while cpp mode has extensive
comment$bs$string specifications but no quote character. Moreover, the
arguments to meta-macros need to be correctly parenthesized in default
mode, while no such checking is performed in cpp mode.
$P$
This makes it easier to nest meta-macro calls in default mode than in
cpp mode. For example, consider the following HTML mode input, which
tests for the availability of the $I{$dz$exec}$ command:
$pre$
$l$$dz$ifeq $l$$dz$exec echo blah$g$$pipe$blah
$g$ $dz$exec allowed $l$$dz$else$g$ $dz$exec not allowed $l$$dz$endif$g$
$nopre$
There is no cpp mode equivalent, while in default mode it can be easily
translated as
$pre$
$dz$ifeq ($dz$exec echo blah
) (blah
)
$b$$dz$exec allowed
$dz$else
$b$$dz$exec not allowed
$dz$endif
$nopre$
In order to nest meta-macro calls in cpp mode it is necessary to modify
the mode description, either by changing the meta-macro call syntax, or
more elegantly by defining a silent string and using the fact that the
context at the beginning of an evaluated string is a newline character:
$pre$
$dz$mode string QQQ $dbq$$dollar$$dbq$ $dbq$$dollar$$dbq$
$dz$ifeq $dollar$$dz$exec echo blah
$dollar$ $dollar$blah
$dollar$
$b$$dz$exec allowed
$dz$else
$b$$dz$exec not allowed
$dz$endif
$nopre$
Note, however, that comments$bs$strings cannot be nested ($dbq$$ldots$$dbq$
inside $dollar$$ldots$$dollar$ would go undetected), so one needs to be careful
about what to include inside such a silent evaluated string. In this example,
the loose meta-macro nesting introduced in version 2.1 makes it possible to use
the following simpler version:
$pre$
$dz$ifeq blah #exec echo -n blah
$b$$dz$exec allowed
$dz$else
$b$$dz$exec not allowed
$dz$endif
$nopre$
Remember that macros without arguments are actually understood to be
aliases when they are called with arguments, as illustrated by the
following example (default or cpp mode):
$pre$
$dz$define DUP(x) x x
$dz$define FOO and I said: DUP
FOO(blah)
$nopre$
The usefulness of the $I{$dz$defeval}$ meta-macro is shown by the following
example in HTML mode:
$pre$
$l$$dz$define APPLY$pipe$$l$$dz$defeval TEMP$pipe$$l$$b$$dz$$dz$1 $b$$dz$1$g$$g$$l$$dz$TEMP $dz$2$g$$g$
$l$$dz$define $l$$dz$foo x$g$$pipe$$l$$dz$x$g$ and $l$$dz$x$g$$g$
$l$$dz$APPLY foo$pipe$BLAH$g$
$nopre$
The reason why $I{$dz$defeval}$ is needed is that, since everything is
evaluated in a single pass, the input that will result in the desired macro
call needs to be generated by a first evaluation of the arguments passed to
APPLY before being evaluated a second time.
$P$
To translate this example in default mode, one needs to resort to
parenthesizing in order to nest the $dz$defeval call inside the definition
of APPLY, but need to do so without outputting the parentheses. The
easiest solution is
$pre$
$dz$define BALANCE(x) x
$dz$define APPLY(f,v) BALANCE($dz$defeval TEMP f
TEMP(v))
$dz$define foo(x) x and x
APPLY($b$foo,BLAH)
$nopre$
As explained above the simplest version in cpp mode relies on defining
a silent evaluated string to play the role of the BALANCE macro.
$P$
The following example (default or cpp mode) demonstrates arithmetic
evaluation:
$pre$
$dz$define x 4
The answer is:
$dz$eval x*x + 2*(16-x) + 1998$pc$x

$dz$if defined(x)$and$$and$!(3*x+5$g$17)
This should be output.
$dz$endif
$nopre$
To finish, here are some examples involving mode switching.
The following example is self-explanatory (starting in default mode):
$pre$
$dz$mode push
$dz$define f(x) x x
$dz$mode standard tex
$b$f$bra$blah$ket$
$b$mode$bra$string$ket$$bra$$dbq$$dollar$$dbq$ $dbq$$dollar$$dbq$$ket$
$b$mode$bra$comment$ket$$bra$$dbq$/*$dbq$ $dbq$*/$dbq$$ket$
$dollar$$b$f$bra$urf$ket$$dollar$ /* blah */
$b$define$bra$FOO$ket$$bra$bar/* and some more */$ket$
$b$mode$bra$pop$ket$
f($dollar$FOO$dollar$)
$nopre$
A good example where a user-defined mode becomes useful is the GPP
source of this document (available with GPP's source code distribution).
$P$
Another interesting application is selectively forcing evaluation of macros
in C strings when in cpp mode. For example, consider the following input:
$pre$
$dz$define blah(x) $dbq$and he said: x$dbq$
blah(foo)
$nopre$
Obviously one would want the parameter $I{x}$ to be expanded inside the
string. There are several ways around this problem:
$pre$
$dz$mode push
$dz$mode nostring $dbq$$b$$dbq$$dbq$
$dz$define blah(x) $dbq$and he said: x$dbq$
$dz$mode pop

$dz$mode quote $dbq$`$dbq$
$dz$define blah(x) `$dbq$and he said: x`$dbq$

$dz$mode string QQQ $dbq$$dollar$$dollar$$dbq$ $dbq$$dollar$$dollar$$dbq$
$dz$define blah(x) $dollar$$dollar$$dbq$and he said: x$dbq$$dollar$$dollar$
$nopre$
The first method is very natural, but has the inconvenience of being lengthy
and neutralizing string semantics, so that having an unevaluated instance
of `x' in the string, or an occurrence of `/*', would be impossible without
resorting to further contortions. $P$
The second method is slightly more efficient because the local presence of a
quote character makes it easier to control what is evaluated and what isn't,
but has the drawback that it is sometimes impossible to find a reasonable
quote character without having to either significantly alter the source file
or enclose it inside a $I{$dz$mode push/pop}$ construct. For example, any
occurrence of `/*' in the string would have to be quoted.$P$
The last method demonstrates the efficiency of evaluated strings in the
context of selective evaluation: since comments$bs$strings cannot be nested,
any occurrence of `$dbq$' or `/*' inside the `$dollar$$dollar$' gets output as
plain text, as expected inside a string, and only macro evaluation is enabled.
Also note that there is much more freedom in the choice of a string delimiter
than in the choice of a quote character.
$P$
Starting with version 2.1, meta-macro calls can be nested more efficiently
in default, cpp and Prolog modes. This makes it easy to make a user
version of a meta-macro, or to increment a counter:
$pre$
$dz$define myeval $dz$eval $dz$1

$dz$define x 1
$dz$defeval x $dz$eval x+1
$nopre$
%%%
%%%%%%%%%%%%%%%%%%%%%% advanced examples %%%%%%%%%%%%%%%%%%%%%%%%%%%%
$S{ADVANCED EXAMPLES}$
$P$
Here are some examples of advanced constructions using GPP. They tend to
be pretty awkward and should be considered as evidence of GPP's limitations.
$P$
The first example is a recursive macro. The main problem is that (since GPP
evaluates everything) a recursive macro must be very careful about the way
in which recursion is terminated in order to avoid undefined behavior (most
of the time GPP will simply crash). In particular, relying on a
$I{$dz$if/$dz$else/$dz$endif}$ construct to end recursion is not possible and
results in an infinite loop, because GPP scans user macro calls even in the
unevaluated branch of the conditional block. A safe way to proceed is for
example as follows (we give the example in $TeX$$nbsp$mode):
$pre$
$b$define$bra$countdown$ket$$bra$
  $b$if$bra$$dz$1$ket$
  $dz$1...
  $b$define$bra$loop$ket$$bra$$b$countdown$ket$
  $b$else
  Done.
  $b$define$bra$loop$ket$$bra$$ket$
  $b$endif
  $b$loop$bra$$b$eval$bra$$dz$1-1$ket$$ket$
$ket$
$b$countdown$bra$10$ket$
$nopre$$P$
Another example, in cpp mode:
$pre$
$dz$mode string QQQ $dbq$$dollar$$dbq$ $dbq$$dollar$$dbq$
$dz$define triangle(x,y) y $b$
 $dollar$$dz$if length(y)$l$x$dollar$ $dollar$$dz$define iter triangle$dollar$ $dollar$$dz$else$dollar$ $b$
 $dollar$$dz$define iter$dollar$ $dollar$$dz$endif
$dollar$ iter(x,*y)
triangle(20)
$nopre$$P$
The following is an (unfortunately very weak) attempt at implementing
functional abstraction in GPP (in standard mode). Understanding this
example and why it can't be made much simpler is an exercise left to the
curious reader.
$pre$
$dz$mode string $dbq$`$dbq$ $dbq$`$dbq$ $dbq$$b$$b$$dbq$
$dz$define ASIS(x) x
$dz$define SILENT(x) ASIS()
$dz$define EVAL(x,f,v) SILENT(
  $dz$mode string QQQ $dbq$`$dbq$ $dbq$`$dbq$ $dbq$$b$$b$$dbq$
  $dz$defeval TEMP0 x
  $dz$defeval TEMP1 (
    $b$$dz$define $b$TEMP2(TEMP0) f
  )
  TEMP1
  )TEMP2(v)
$dz$define LAMBDA(x,f,v) SILENT(
  $dz$ifneq (v) ()
  $dz$define TEMP3(a,b,c) EVAL(a,b,c)
  $dz$else
  $dz$define TEMP3(a,b,c) $b$LAMBDA(a,b)
  $dz$endif
  )TEMP3(x,f,v)
$dz$define EVALAMBDA(x,y) SILENT(
  $dz$defeval TEMP4 x
  $dz$defeval TEMP5 y
  )
$dz$define APPLY(f,v) SILENT(
  $dz$defeval TEMP6 ASIS($b$EVA)f
  TEMP6
  )EVAL(TEMP4,TEMP5,v)
$nopre$
This yields the following results:
$pre$
LAMBDA(z,z+z)
  =$g$ LAMBDA(z,z+z)

LAMBDA(z,z+z,2)
  =$g$ 2+2

$dz$define f LAMBDA(y,y*y)
f
  =$g$ LAMBDA(y,y*y)

APPLY(f,blah)
  =$g$ blah*blah

APPLY(LAMBDA(t,t t),(t t))
  =$g$ (t t) (t t)

LAMBDA(x,APPLY(f,(x+x)),urf)
  =$g$ (urf+urf)*(urf+urf)

APPLY(APPLY(LAMBDA(x,LAMBDA(y,x*y)),foo),bar)
  =$g$ foo*bar

$dz$define test LAMBDA(y,`$dz$ifeq y urf
y is urf$dz$else
y is not urf$dz$endif
`)
APPLY(test,urf)
  =$g$ urf is urf

APPLY(test,foo)
  =$g$ foo is not urf
$nopre$
%%%%%%%%%%%%%%%%%%%%%% misc stuff at the end %%%%%%%%%%%%%%%%%%%%%%%%
$ifdef{man}$
$S{SEE ALSO}$
strftime(3), glob(7), m4(1V), cpp(1)$P$
GPP home page: https://logological.org/gpp/
$endif$
$S{AUTHOR}$
GPP was written by Denis Auroux $l$auroux@math.mit.edu$g$.
Since version 2.12 it has been maintained by Tristan Miller
$l$tristan@logological.org$g$.
$S{COPYRIGHT}$
Copyright $copy$$nbsp$1996$ndash$2001 Denis Auroux.$BR$
Copyright $copy$$nbsp$2003$ndash$2023 Tristan Miller.$P$
Permission is granted to anyone to make or distribute verbatim copies
of this document as received, in any medium, provided that the
copyright notice and this permission notice are preserved, thus giving
the recipient permission to redistribute in turn.$P$
Permission is granted to distribute modified versions of this
document, or of portions of it, under the above conditions, provided
also that they carry prominent notices stating who last changed them.
$ifdef{html}$
</body></html>
$endif$
$ifdef{latex}$
\end{document}
$endif$
%%% !!!
