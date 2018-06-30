% A Temlapte for XJTU
% Based on book
\ProvidesClass{XJTUthesis}
\LoadClass[UTF8,12pt]{book}
\RequirePackage{ctex}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}

\CJKfamily{zhkai}
\geometry{a4paper,top=3.0cm,bottom=2.5cm,left=2.6cm,right=2.6cm}

%% \firstpage
\newcommand\dlmu[2]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}

\newcommand{\firstpage}[9]{%
    \newpage
    \thispagestyle{empty}
    \begin{figure}
      \centering
      \includegraphics[width=0.4\textwidth]{figures//XJTU_name.eps}
    \end{figure}

    \begin{center}
        \color{red} \fangsong{\xiaochuhao{\textbf{毕业设计（论文）}}}
        \vskip 2.0cm

        \color{black} \songti
        \begin{spacing}{2.2}
            \sanhao
            \textbf{
                \begin{tabular}{cc}
                  题 \quad 目 & \underline{#1} \\
                   & \underline{#2} \\
                \end{tabular}
                \vskip 2.0cm
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
\titleformat{\section}[block]{\centering\bfseries\sanhao}{\newpage \arabic{section}}{2em}{}
\titleformat{\subsection}[block]{\bfseries\xiaosanhao}{\arabic{section}.\arabic{subsection}}{0.5em}{}
\titleformat{\subsubsection}[block]{\large\bfseries}{\quad \arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{0em}{}



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
