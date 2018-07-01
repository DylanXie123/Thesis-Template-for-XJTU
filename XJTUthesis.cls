% A Temlapte for XJTU
% Based on book
\ProvidesClass{XJTUthesis}
\LoadClass[UTF8,12pt]{ctexbook}
%\RequirePackage{ctex}
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

\CJKfamily{zhkai}
\geometry{a4paper,top=3.0cm,bottom=2.5cm,left=2.6cm,right=2.6cm}
\ctexset {
    chapter/numbering = false,
    section/number = \arabic{section},
    subsection/number = \arabic{section}.\arabic{subsection},
    subsubsection/number = \arabic{section}.\arabic{subsection}.\arabic{subsubsection},
}

%% change the code of picture and table
\renewcommand {\thetable} {\arabic{section}-\arabic{table}}
\renewcommand {\thefigure} {\arabic{section}-\arabic{figure}}

%% \firstpage
\newcommand\dlmu[2]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}

\newcommand{\firstpage}[9]{
    \begin{titlepage}
        \begin{figure}
          \centering
          \includegraphics[width=0.4\textwidth]{figures//XJTU_name.eps}
        \end{figure}

        \begin{center}
            \color{red} \fangsong{\xiaochuhao{\textbf{毕业设计（论文）}}}
            \vskip 1.8cm

            \color{black} \songti
            \begin{spacing}{2}
                \sanhao
                \textbf{
                    \begin{tabular}{ll}
                      题 \quad 目 & \underline{#1} \\
                       & \underline{#2} \\
                    \end{tabular}
                    \vskip 1.5cm
                    \dlmu{3cm}{#3} 学院  \dlmu{3cm}{#4} 系（专业） \dlmu{3cm}{#5} 班\\
                    学生姓名 \dlmu{12cm}{#6}\\
                    学 \quad 号 \dlmu{12cm}{#7}\\
                    指导教师 \dlmu{12cm}{#8}\\
                    设计所在单位 \dlmu{12cm}{#9}\\
                    \number\year年\number\month月\\
                }
            \end{spacing}
            \setcounter{page}{0}
        \end{center}
    \end{titlepage}
    \linespread{1.2}
}

%% head and foot
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CE]{\songti \fontsize{10.5pt}{\baselineskip}{西安交通大学本科毕业设计(论文)}}
\fancyhead[CO]{\songti \fontsize{10.5pt}{\baselineskip}{\leftmark}}
\fancyfoot{}
\fancyfoot[RO,LE]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0.5pt}

%% modify the sytle of chapter and section
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\titleformat{\section}[block]{\centering\bfseries\sanhao}{\clearpage \arabic{section}}{2em}{\setcounter{table}{0}}
\titleformat{\subsection}[block]{\bfseries\xiaosanhao}{\arabic{section}.\arabic{subsection}}{0.5em}{\setcounter{figure}{0}}
\titleformat{\subsubsection}[block]{\large\bfseries}{\quad \arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{0em}{}

%% abstract && keywords
\newenvironment{abstract}{
	\begin{center}\songti\sanhao{摘\qquad要} \\ \end{center}
	\par
    \xiaosihao
}
{\\}

\newcommand{\keywords}[1]{\wuhao \textbf{关键词：} \wuhao #1}

%% change content
\renewcommand{\contentsname}{\bfseries\sanhao{目\qquad录}}
\titlecontents{section}[0em]{}{\contentslabel{1em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}%
\titlecontents{subsection}[2em]{}{\contentslabel{2em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}%
\titlecontents{subsubsection}[4em]{}{\contentslabel{3em}}{}{\titlerule*[0.5pc]{$\cdot$}\contentspage}%

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
