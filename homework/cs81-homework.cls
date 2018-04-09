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

% table cell newlines within
\RequirePackage{makecell}

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
\newcommand{\abr}[1]{\left\langle #1 \right\rangle}
\renewcommand{\abs}[1]{\left\lvert #1 \right\rvert}

% math breaking
\RequirePackage{breqn}

% operator stacking
\RequirePackage{stackrel}

% titling commands
\RequirePackage{titling}

% better typesetting
\RequirePackage{microtype}

% font and input encoding
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

% better fonts
\RequirePackage{lmodern}

% natural deduction proofs
\RequirePackage{logicproof}

% algorithms/pseudocode
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}

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

% code input
\RequirePackage{listings}
\lstset{
  basicstyle=\ttfamily,
  frame=single,
  numbers=left,
  breaklines=true,
  columns=flexible,
  keepspaces=true,
  numbersep=1em,
  numberstyle=\footnotesize,
  commentstyle=\color{gray},
  keywordstyle=\bfseries,
  stringstyle=\itshape,
}

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

\newcommand{\eqe}{\({=}\elim\)}
\newcommand{\eqi}{\({=}\intro\)}

\newcommand{\replace}[2]{\([#1/#2]\)}
\newcommand{\sub}{\replace}

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
  
  \paragraph{Notice:}
  When you submit this assignment, you are certifying therewith that you
  understand and accept the following policy, which applies to all
  assignments.

  \paragraph{Collaboration Policy:}
  \textbf{The writeup that you submit must be your own work.}  You are
  encouraged to get help from the professor and grutors.  You may discuss the
  problems with classmates, but if you do so, it should be in groups of no more
  than three.  You are not allowed to copy or transcribe solutions from other
  sources, including the work of other students, the internet, previous solution
  sets, and images photographed from a whiteboard or blackboard. There is to be
  no ``partnering'' where two or more students submit the same writeup.  If you
  get help on a problem, you should say who provided the help on a per-problem
  basis.  Blanket statements such as ``worked with John and Mary'' are not
  allowed.  Detected infractions may impact your academic career.

  \paragraph{Formatting Policy}
  All work must be typeset in electronic media and submitted as a \textbf{single
    pdf file}, one problem on each page as shown in the following pages.  Retain
  this header page.  \textbf{Handwritten and photographed or scanned work is not
    allowed.}  Do not use inverse video (light typography on dark background).
  Do not rotate images.  \textbf{You will not get credit for difficult-to-read
    submissions.}

  Once your document is complete, make a pdf and submit to \textbf{Gradescope}.
}

% solution boxes
\newenvironment{solution*}{\hrulefill}{}
\newenvironment{solution}{\begin{solution*}}{\end{solution*}\newpage}

% problem item command
\newcommand{\problem}[1]{\item \points{#1}}
% \newcommand{\points}[1]{\marginnote{[#1 points]}}
\newcommand{\points}[1]{[#1 points]\quad\ignorespaces}
\reversemarginpar

% textbook-style problems; suspect we might never use this
%\newenvironment{problem}[2]{\section*{Chapter #1: Problem #2}}{\par\hrulefill}

% ====================
% page layout/metadata
% ====================

% page headers/footers
\fancypagestyle{cs81-titlepage}{
  \fancyhf{}
  \chead{\textbf{\thetitle} \\ \textbf{Due \thedate}}
  \lhead{\textbf{\thecourse}}
  \rhead{\textbf{Name} \quad\underline{\theauthor} \\}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\thispagestyle{cs81-titlepage}

\fancypagestyle{cs81}{
  \fancyhf{}
  \cfoot{\thepage\ of \pageref{LastPage}}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
}
\pagestyle{cs81}


