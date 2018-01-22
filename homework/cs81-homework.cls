\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{math171-pset}[2018/1/18 CS81 homework document class]

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

% arrays and other table features
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage{tabularx}

% =====
% hacks
% =====

% for referencing labeled equations w/ number in parens
\let\oldref\ref
\renewcommand{\ref}[1]{(\oldref{#1})}

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
\newcommand{\Derives}{\Turnstile}

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


% -----------------
% metadata commands
% -----------------

\newcommand{\thecourse}{CS 81 (Spring 2018)}

% --------------------------
% pset-specific environments
% --------------------------

% solution boxes
\newenvironment{solution}{\begin{mdframed}}{\end{mdframed}}

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


