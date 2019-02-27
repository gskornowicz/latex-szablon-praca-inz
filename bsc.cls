\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{bsc}
\DeclareOption{pdflatex}{\pdflatextrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

%zmien argument z 'oneside' na 'twoside' jeżeli chcesz format pracy dwustronny
\ProcessOptions\LoadClass[a4paper,oneside,openright]{report}

%\RequirePackage[showframe]{geometry}
\RequirePackage{geometry}
\geometry{verbose, a4paper, %
  tmargin=3.0cm, headsep=1.5em, headheight=14pt, %
  bmargin=2.5cm, footskip=2.5em, %
  lmargin=2.0cm, rmargin=2.0cm, %
  bindingoffset=1.0cm, nomarginpar 
}

\RequirePackage{emptypage}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LO,RE]{\small\nouppercase{\leftmark}}
%\fancyhead[RO,LE]{\small\nouppercase{\rightmark}}
\fancyfoot[LE,RO]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\chaptermark}[1]{\markboth{\thechapter.\space#1}{}} 

\fancypagestyle{plain}{%
  \fancyhf{} % clear all header and footer fields
  \fancyfoot[LE,RO]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

\RequirePackage{caption}
\captionsetup{font=small,format=plain,labelsep=period,figurename=Rysunek,tablename=Tabela}

\RequirePackage{listings}
\lstset{
  frame=top,
  basicstyle=\small\normalfont\sffamily,    % the size of the fonts that are used for the code
  stepnumber=1,                           % the step between two line-numbers. If it is 1 each line will be numbered
  numbersep=10pt,                         % how far the line-numbers are from the code
  tabsize=2,                              % tab size in blank spaces
  extendedchars=true,                     %
  breaklines=true,                        % sets automatic line breaking
  captionpos=t,                           % sets the caption-position to top
  mathescape=true,
  stringstyle=\color{white}\ttfamily, 
  showspaces=false,
  showtabs=false,
  xleftmargin=17pt,
  framexleftmargin=17pt,
  framexrightmargin=17pt,
  framexbottommargin=5pt,
  framextopmargin=5pt,
  showstringspaces=false
 }
\renewcommand{\lstlistingname}{Tabela}

\RequirePackage{enumitem}
\setlist{nolistsep}

\RequirePackage{titlesec}
\titleformat{\chapter}{\normalfont\LARGE\bfseries}{\thechapter.}{1em}{}[\vspace{2pt}{\titlerule[.8pt]}]
%\titleformat{\chapter}{\normalfont\LARGE\bfseries{\titlerule[.8pt]}\vspace{4pt}}{\thechapter.}{1em}{}[\vspace{4pt}{\titlerule[.8pt]}]
%\titleformat{\chapter}{\normalfont\LARGE\bfseries}{\thechapter.}{1em}{}
\titleformat{\subsubsection}{\normalfont\bfseries\itshape}{\thechapter.}{1em}{}[]
\titlespacing\chapter{0pt}{-2em}{2em}
\titlespacing\section{0pt}{\baselineskip}{8pt}
\titlespacing\subsection{\parindent}{8pt}{4pt}
\titlespacing\subsubsection{\parindent}{8pt}{4pt}

\RequirePackage{setspace}
\onehalfspacing

\newcommand\updatepdfmeta{
  \ifpdf
    \pdfcompresslevel=9
    \hypersetup{pdfauthor={\@author},pdftitle={\@title}}
  \fi
} 
\AtBeginDocument{\updatepdfmeta}

\frenchspacing

\renewcommand{\partname}{}
\renewcommand{\thepart}{}

% custom commands
\newcommand{\dotline}[2]{\changefont{10}\makebox[#1][#2]{\dotfill}}
\newcommand{\changefont}[1]{\fontsize{#1}{#1}\selectfont}

