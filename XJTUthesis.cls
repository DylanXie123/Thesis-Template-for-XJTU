% A Temlapte for XJTU
% Based on article
\ProvidesClass{XJTUthesis}
\LoadClass[UTF8,12pt]{article}
\RequirePackage{ctex}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{setspace}

\CJKfamily{zhkai}
\geometry{a4paper,top=3.0cm,bottom=2.5cm,left=2.6cm,right=2.6cm}

\newcommand\dlmu[2]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}

\newcommand{\firstpage}[9]{%
    \newpage
    \begin{figure}
      \centering
      \includegraphics[width=0.4\textwidth]{figures//XJTU_name.eps}
    \end{figure}

    \centering
    \color{red}{\fangsong{\fontsize{36pt}{\baselineskip}{\textbf{毕业设计（论文）}}}}
    \vskip 2.0cm

    \begin{spacing}{2.2}
        \songti \color{black}
        \fontsize{15.75pt}{\baselineskip}
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
}
