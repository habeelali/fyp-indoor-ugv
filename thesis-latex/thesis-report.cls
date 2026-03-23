% thesis-report.cls
% Thesis report class: 12pt, Times New Roman–like, chapters on odd pages.
% Document standard: justified text, 1.5 line spacing, par spacing before 0pt, after 6pt.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis-report}[2025/03/13 Thesis report, 12pt, openright]

\LoadClass[12pt,a4paper,openright]{report}

\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}  % Times New Roman–like
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{geometry}
\RequirePackage{xurl}
\urlstyle{rm}
\RequirePackage{hyperref}
\RequirePackage[nottoc,notlof,notlot]{tocbibind}
\RequirePackage{caption}
\RequirePackage{float}
\RequirePackage{placeins}
\RequirePackage{titlesec}
\RequirePackage{setspace}

% Line spacing: single (1.5) as per document standard
\onehalfspacing

% Paragraph spacing: before 0pt, after 6pt
\setlength{\parskip}{6pt}
\setlength{\parindent}{0pt}

% Justified alignment: report class default is justified; do not use \centering without a group.

% All headings 12pt (normalsize), not larger
\titleformat{\chapter}[display]{\normalsize\normalfont\bfseries}{\chaptertitlename\ \thechapter}{1em}{\normalsize}
\titleformat{\section}{\normalsize\normalfont\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\normalsize\normalfont\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\normalsize\normalfont\bfseries}{\thesubsubsection}{1em}{}

% Compact space around headings (minimal gap before text)
\titlespacing*{\chapter}{0pt}{0pt}{8pt}
\titlespacing*{\section}{0pt}{6pt}{4pt}
\titlespacing*{\subsection}{0pt}{4pt}{2pt}
\titlespacing*{\subsubsection}{0pt}{3pt}{1pt}

% Blank page before new chapter: show "Page intentionally left blank" (chapters start on odd/right)
% Use a group so \centering does not leak and center body text on following pages
\let\origcleardoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{%
  \clearpage
  \ifodd\value{page}\else
    \thispagestyle{empty}%
    \null\vfill
    {\centering Page intentionally left blank.\par}%
    \vfill\newpage
  \fi
}

\geometry{top=1in,bottom=1in,left=1.25in,right=1.25in}

% Float pages: place figures/tables at top of page instead of vertically centred
\makeatletter
\setlength{\@fptop}{0pt}
\setlength{\@fpbot}{0pt \@plus 1fil}
\makeatother

\hypersetup{colorlinks=true,linkcolor=black,urlcolor=black,citecolor=black}

\renewcommand{\contentsname}{Table of Contents}

\endinput
