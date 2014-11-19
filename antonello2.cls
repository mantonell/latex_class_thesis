% MASTER'S THESIS TEMPLATE
% by Michele Antonello
% May 2014

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{antonello2}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\LoadClass{report}

%% Packages
\usepackage{fancyhdr}
\usepackage{amsthm}


%% Chapter
%\renewcommand{\thechapter}{\Roman{chapter}} % Numerazione romana capitoli

\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
\def\@makechapterhead#1{%
  \reset@font
  \vspace*{10\p@}%
  {\parindent \z@ 
    \begin{flushleft}
      \reset@font \scshape \bfseries \Huge \thechapter \par
    \end{flushleft}
    \hrule
    \begin{flushleft}
      \reset@font \LARGE \strut #1\strut \par
    \end{flushleft}
    \vskip 100\p@
  }}
\def\@makeschapterhead#1{%
  \reset@font
  \vspace*{10\p@}%
  {\parindent \z@ 
    \begin{flushleft}
      \reset@font \scshape \bfseries \Huge \vphantom{\thechapter} \par
    \end{flushleft}
    \hrule
    \begin{flushleft}
      \reset@font \LARGE \strut #1\strut \par
    \end{flushleft}
    \vskip 100\p@
  }}

%% Section
\renewcommand{\section}{\@startsection{section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}
                                  
%% Subsection
%\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
%                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
%                                     {1.5ex \@plus .2ex}%
%                                     {\normalfont\large\bfseries}}
%\renewcommand{\thesubsection}{\thesection.\alph{subsection}} % Numerazione alph sottosezioni  

% Fancyhdr settings
\fancyhead{} % cancella tutti i campi dell'intestazione
\fancyhead[RO,LE]{\bfseries\thepage}
\fancyhead[LO]{\nouppercase{\bfseries\rightmark}}
\fancyhead[RE]{\nouppercase{\bfseries\leftmark}}
\fancyfoot{} % cancella tutti i campi a pié di pagina
\renewcommand{\headrulewidth}{0.7pt}

% Theorem Styles
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}

% Definition Styles
\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem{example}{Example}[section]
\theoremstyle{remark}
\newtheorem{remark}{Remark}
\newtheorem{assumption}{Assumption}



\setlength{\headheight}{15pt}

\endinput