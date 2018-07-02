% A Temlapte for XJTU
% Based on book
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{XJTUthesis}
\LoadClass[UTF8,openany, linespread=1.2]{ctexbook}

%% Option provided
\DeclareOption{bachelor}{\relax}
\DeclareOption{master}{\relax}
\DeclareOption{doctor}{\relax}
\ProcessOptions\relax

%% Package needed
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{booktabs} %三线表
\RequirePackage{makecell}
\RequirePackage{amsmath}
\RequirePackage{times}
\RequirePackage{indentfirst}
\RequirePackage[titles]{tocloft}

\newif\ifxjtu@bachelor
\newif\ifxjtu@master
\newif\ifxjtu@doctor
\newcommand{\degree}{}

\DeclareOption{bachelor}{\xjtu@bachelortrue}
\DeclareOption{master}{\xjtu@mastertrue}
\DeclareOption{doctor}{\xjtu@doctortrue}
\ProcessOptions\relax

\ifxjtu@bachelor
    \renewcommand{\degree}{本科}
\fi

\PassOptionsToPackage{no-math}{fontspec}

\ctexset{
    contentsname     = {\zihao{3} 目\qquad录},
    chapter={
        pagestyle    = fancy,
        format       = \zihao{3}\bfseries\centering,
        number       = \thechapter,
        name         = {},
        aftername    = \quad,
        afterindent  = true,
        beforeskip   = {3ex}, %default 50pt
        afterskip    = {2ex},
    },
    section={
        format       = \zihao{-3}\bfseries\centering,
        number       = \thesection,
        name         = {},
        aftername    = \quad,
        afterindent  = true,
        beforeskip   = {1ex},
        afterskip    = {0.5ex},
    },
    subsection={
        format       = \zihao{4}\bfseries\centering,
        number       = \thesubsection,
        name         = {},
        aftername    = \quad,
        afterindent  = true,
        beforeskip   = {0.5ex},
        afterskip    = {0ex},
    },
}

%% fill dot with content
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftdotsep}{1.5}
\setlength{\cftbeforechapskip}{10pt}

\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}}
\renewcommand{\cftchapdotsep}{\cftdotsep}
\makeatletter
\renewcommand{\numberline}[1]{%
\settowidth\@tempdimb{#1\hspace{0.5em}}%
\ifdim\@tempdima<\@tempdimb%
  \@tempdima=\@tempdimb%
\fi%
\hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}

%% margin setting
\geometry{a4paper,top=3.0cm,bottom=2.5cm,left=2.6cm,right=2.6cm}
\setlength{\headsep}{1cm}
\setlength{\footskip}{0.75cm}

%% change the code of picture and table
\renewcommand {\thetable} {\thechapter-\arabic{table}}
\renewcommand {\thefigure} {\thechapter-\arabic{figure}}

%% head and foot
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CE]{\songti \zihao{5} {西安交通大学毕业设计(论文)}}
\fancyhead[CO]{\songti \zihao{5} {\ifnum \value{page}=1 摘要 \else{\leftmark} \fi}}
\fancyfoot{}
\fancyfoot[RO,LE]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}
% double line head
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[0.5\baselineskip]{\headwidth}{0.5pt}}%
\rule[0.7\baselineskip]{\headwidth}{0.5pt}}
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
\makeheadrule}}

%% abstract && keywords
\newenvironment{abstract}{
	\begin{center}\songti\sanhao{摘\qquad要} \\ \end{center}
	\par
    \zihao{-4}
}{\\}

\newcommand{\keywords}[1]{\\ \zihao{5} \textbf{关键词：} \wuhao #1}
% english version
\newenvironment{eabstract}{
	\begin{center}\songti\sanhao{ABSTRACT} \\ \end{center}
	\par
    \zihao{-4}
    \setlength{\parskip}{0.5\baselineskip}
    \setlength{\parindent}{0em}
}{\\}

\newcommand{\ekeywords}[1]{ \noindent \wuhao \textbf{KEY WORDS:} \wuhao #1}

%% \firstpage
\newcommand\dlmu[2]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}

\newcommand{\firstpage}[9]{
    \begin{titlepage}
        \begin{figure}
          \centering
          \includegraphics[width=0.4\textwidth]{figures//a2_1zwxm.png}
        \end{figure}

        \begin{center}
            {\color{red} \fangsong \zihao{-0} \textbf{毕业设计（论文）}}
            \vskip 15ex

            \zihao{3} \songti \bfseries
            \begin{tabular}{ll}
              题 \quad 目 & \dlmu{11cm}{#1} \\
               & \dlmu{11cm}{#2} \\
            \end{tabular}
            \vskip 15ex

            \dlmu{3cm}{#3} 学院  \dlmu{4.5cm}{#4} 系（专业） \dlmu{3cm}{#5} 班\\
            \renewcommand\arraystretch{2.5}
            \begin{tabular}{cc}
              学生姓名 & \dlmu{12cm}{#6} \\
              学\qquad号 & \dlmu{12cm}{#7} \\
              指导教师 & \dlmu{12cm}{#8} \\
              设计所在单位 & \dlmu{12cm}{#9} \\
            \end{tabular}
            \vskip 5ex
            \number\year年\number\month月\\

            \setcounter{page}{0}
        \end{center}
    \end{titlepage}
}

%% fontsize
\newcommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}{\baselineskip}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}
\newcommand{\xiaoyihao}{\fontsize{24pt}{\baselineskip}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\newcommand{\xiaoerhao}{\fontsize{18pt}{\baselineskip}\selectfont}
\newcommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}{\baselineskip}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\newcommand{\xiaosihao}{\fontsize{12pt}{\baselineskip}\selectfont}
\newcommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaowuhao}{\fontsize{9pt}{\baselineskip}\selectfont}
\newcommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}
\newcommand{\xiaoliuhao}{\fontsize{6.5pt}{\baselineskip}\selectfont}
\newcommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}
\newcommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}
