\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cs81-homework}[2018/1/18 CS81 homework document class]

\LoadClass[10pt]{article}

% pass options to parent class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% ========
% packages
% ========

\RequirePackage[
left=1in,
right=1in,
top=.5in,
bottom=.5in,
includeheadfoot
]{geometry}

% math
\RequirePackage{amsmath, amssymb, amsthm}
\RequirePackage{mathtools, thmtools}

% diagrams and graphics
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{graphicx}

% page headers and footers
\RequirePackage{fancyhdr}

% urls
\RequirePackage[hyphens]{url}

% references
\RequirePackage{hyperref}
\RequirePackage{fancyref}

% enumerate environment customization
\RequirePackage{enumitem}

% for boxed environments
\RequirePackage{mdframed}
\mdfsetup{skipabove=1em, skipbelow=1em}

% multi-column environments
\RequirePackage{multicol}

% reference page count
\RequirePackage{lastpage}

% paragraph line-skips instead of indents
\RequirePackage{parskip}

% math standards/conventions
\RequirePackage{isomath}
\let\oldvec\vec
\renewcommand{\vec}{\vectorsym}
\newcommand{\uvec}[1]{\hat{\vec{#1}}}
\newcommand{\mat}{\matrixsym}

% convenient math tools
\RequirePackage{commath}

% titling commands
\RequirePackage{titling}

% better typesetting
\RequirePackage{microtype}

% font and input encoding
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

% natural deduction proofs
\RequirePackage{logicproof}

% proof trees/tableaux
\RequirePackage{prooftrees}
\forestset{just refs right}

% other proof trees for deduction rules
\RequirePackage{prftree}

% arrays and other table features
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{tabularx}

% margin notes
\RequirePackage{marginnote}

% ========
% commands
% ========

% --------------
% math shortcuts
% --------------

% common sets
\newcommand\CC{{\mathbb C}}
\newcommand\RR{{\mathbb R}}
\newcommand\QQ{{\mathbb Q}}
\newcommand\ZZ{{\mathbb Z}}
\newcommand\NN{{\mathbb N}}

% text shortcuts
\newcommand{\st}{\text{ s. t. }}

% roman real and imaginary part functions
\let\Re\relax
\let\Im\relax
\DeclareMathOperator{\Re}{Re}
\DeclareMathOperator{\Im}{Im}

% boolean logic turnstile
\newcommand{\turnstile}{\vdash}
\newcommand{\derives}{\turnstile}
\newcommand{\Turnstile}{\vDash}
\newcommand{\entails}{\Turnstile}

% logic proof shortcuts
\newcommand{\elim}[1][]{\mathrm{E_{#1}}}
\newcommand{\intro}[1][]{\mathrm{I_{#1}}}

\newcommand{\ande}[1][]{\(\land \elim[#1]\)}
\newcommand{\andi}{\(\land \intro\)}

\newcommand{\ore}{\(\lor \elim\)}
\newcommand{\ori}[1][]{\(\lor \intro[#1]\)}

\newcommand{\impe}{\({\to} \elim\)}
\newcommand{\impi}{\({\to} \intro\)}

\newcommand{\bote}{\(\bot \elim\)}
\newcommand{\boti}{\(\bot \intro\)}

\newcommand{\tope}{\(\top \elim\)}
\newcommand{\topi}{\(\top \intro\)}

\newcommand{\nege}{\(\neg \elim\)}
\newcommand{\negi}{\(\neg \intro\)}

\newcommand{\note}{\nege}
\newcommand{\noti}{\negi}

\newcommand{\exe}{\(\exists \elim\)}
\newcommand{\exi}{\(\exists \intro\)}

\newcommand{\fae}{\(\forall \elim\)}
\newcommand{\fai}{\(\forall \intro\)}

% -----------------
% metadata commands
% -----------------

\newcommand{\thecourse}{CS 81 (Spring 2018) \\ Computability and Logic}

% --------------------------
% pset-specific environments
% --------------------------

% prelude box
\newenvironment{introduction}{}{\newpage}
\newcommand{\theintroduction}{
  \paragraph{Notice}
  When you submit this assignment, you are certifying therewith that you
  understand and accept the following policy, which applies to all
  assignments.

  \paragraph{Collaboration Policy}
  The writeup that you submit must be your own work. You are encouraged to get
  help from the professor and grutors. You may discuss the problems with
  classmates, but if you do so, it should be in groups of no more than
  three. You are not allowed to copy or transcribe solutions from other
  sources, including the work of other students, the internet, previous
  solution sets, and images photographed from a whiteboard or
  blackboard. There is to be no “partnering” where two or more students submit
  the same writeup. If you get help on a problem, you should say who provided
  the help on a per-problem basis. Blanket statements such as “worked with
  John and Mary” are not allowed. Detected infractions may impact your
  academic career.

  \paragraph{Formatting Policy}
  All work must be typeset in electronic media and submitted as a single pdf
  file, one problem on each page as shown in the following pages. Retain this
  header page. Handwritten and photographed or scanned work is not allowed.
  Do not use inverse video (light typography on dark background). Do not
  rotate images.  You will not get credit for difficult-to-read submissions.

  For JAPE proofs take a screenshot of your proof and paste it into the
  document. For written out proofs, just type into a copy of the Google doc
  master (not the pdf), or use some other method such as \LaTeX\ if you
  must. You may scrape formulas and symbols directly from the doc master, or
  from my page full of symbols that I use throughout the course. Once your
  document is complete, make a pdf and submit to Gradescope.
}

% solution boxes
\newenvironment{solution}{\begin{mdframed}}{\end{mdframed}\newpage}
\newenvironment{solution*}{\begin{mdframed}}{\end{mdframed}}

% problem item command
\newcommand{\problem}[1]{\item \points{#1}}
\newcommand{\points}[1]{\marginnote{[#1 points]}}
\reversemarginpar

% textbook-style problems; suspect we might never use this
%\newenvironment{problem}[2]{\section*{Chapter #1: Problem #2}}{\par\hrulefill}

% ====================
% page layout/metadata
% ====================

% page headers/footers
\fancypagestyle{cs81}{
  \fancyhf{}
  \lhead{Name: \theauthor}
  \chead{\thetitle}
  \rhead{\thecourse}
  \lfoot{Due \thedate}
  \rfoot{\thepage\ of \pageref{LastPage}}
}
\pagestyle{cs81}


