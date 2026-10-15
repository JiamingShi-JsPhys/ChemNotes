\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{chemistry}[2026/10/15 General Chemistry lecture notes class]
\LoadClass{article}
\RequirePackage{geometry}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage[dvipsnames,svgnames]{xcolor}
\RequirePackage[strict]{changepage}
\RequirePackage{framed}
\RequirePackage{hyperref}
\RequirePackage{etoolbox}
\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{chemfig}
\RequirePackage{tikz}
\usetikzlibrary{positioning,calc}
\RequirePackage{booktabs} 
\RequirePackage{pgfplots}      
\RequirePackage{siunitx}       
\pgfplotsset{compat=1.17}
\RequirePackage{pgffor}
\RequirePackage{makecell}

\IfFontExistsTF{Times New Roman}{%
  \setmainfont{Times New Roman}%
}{%
  \setmainfont{TeX Gyre Termes}%
}
\IfFontExistsTF{Arial}{%
  \setsansfont{Arial}%
}{%
  \setsansfont{TeX Gyre Heros}%
}

\IfFontExistsTF{texgyretermes-math.otf}{\setmathfont{texgyretermes-math.otf}}{}
\geometry{a4paper,centering,scale=0.8}
\definecolor{defshade}{rgb}{1.0, 0.95, 0.85}   
\definecolor{defborder}{rgb}{0.9, 0.5, 0.1}     
\definecolor{propshade}{rgb}{0.85, 0.95, 1.0}   
\definecolor{propborder}{rgb}{0.1, 0.5, 0.9}    
\definecolor{exmpshade}{rgb}{0.9, 1.0, 0.9}    
\definecolor{exmpborder}{rgb}{0.2, 0.7, 0.2}   
\definecolor{sepline}{rgb}{0.6, 0.2, 0.8}       
\hypersetup{
    colorlinks=true,
    linkcolor=sepline,
    urlcolor=blue,
    citecolor=green,
    bookmarksnumbered=true
}

\renewcommand{\thesubsection}{\Alph{subsection}}
\newcommand{\defFrameStyle}{%
  \def\FrameCommand{%
    \hspace{1pt}%
    {\color{defborder}\vrule width 2pt}%
    {\color{defshade}\vrule width 4pt}%
    \colorbox{defshade}%
  }%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  \noindent\hspace{-4.55pt}%
  \begin{adjustwidth}{}{7pt}%
  \vspace{2pt}%
}

\newcommand{\propFrameStyle}{%
  \def\FrameCommand{%
    \hspace{1pt}%
    {\color{propborder}\vrule width 2pt}%
    {\color{propshade}\vrule width 4pt}%
    \colorbox{propshade}%
  }%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  \noindent\hspace{-4.55pt}%
  \begin{adjustwidth}{}{7pt}%
  \vspace{2pt}%
}

\newcommand{\exampleFrameStyle}{% 
  \def\FrameCommand{%
    \hspace{1pt}%
    {\color{exmpborder}\vrule width 2pt}% 
    {\color{exmpshade}\vrule width 4pt}% 
    \colorbox{exmpshade}%              
  }%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  \noindent\hspace{-4.55pt}%
  \begin{adjustwidth}{}{7pt}%
  \vspace{2pt}%
}

\newcounter{defncount}[subsection]
\newcounter{propcount}[subsection]
\newcounter{exmpcount}[subsection]

\renewcommand{\thedefncount}{\thesection\thesubsection.\arabic{defncount}}
\renewcommand{\thepropcount}{\thesection\thesubsection.\arabic{propcount}}
\renewcommand{\theexmpcount}{\thesection\thesubsection.\arabic{exmpcount}}

\newenvironment{definition}[1][]{%
  \stepcounter{defncount}%
  \defFrameStyle
  \textbf{Definition \thedefncount: \ifstrempty{#1}{}{#1}}
  \vspace{4pt}%
  \color{sepline}\hrule height 0.5pt width \linewidth
  \vspace{6pt}%
}{%
  \vspace{2pt}%
  \end{adjustwidth}\endMakeFramed%
}

\newenvironment{proposition}[1][]{%
  \stepcounter{propcount}%
  \propFrameStyle
  \textbf{Proposition \thepropcount: \ifstrempty{#1}{}{#1}}
  \vspace{4pt}%
  \color{sepline}\hrule height 0.5pt width \linewidth
  \vspace{6pt}%
}{%
  \vspace{2pt}%
  \end{adjustwidth}\endMakeFramed%
}

\newenvironment{example}[1][]{%
  \stepcounter{exmpcount}%
  \exampleFrameStyle
  \textbf{Example \theexmpcount: \ifstrempty{#1}{}{#1}}
  \vspace{4pt}%
  \color{sepline}\hrule height 0.5pt width \linewidth
  \vspace{6pt}%
}{%
  \vspace{2pt}%
  \end{adjustwidth}\endMakeFramed%
}



\endinput
