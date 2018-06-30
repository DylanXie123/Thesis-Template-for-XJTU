% A Temlapte for XJTU
% Based on article
\ProvidesClass{XJTUthesis}
\LoadClass[UTF8,12pt]{article}
\RequirePackage{ctex}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{color}

\CJKfamily{zhfs}
\geometry{a4paper,top=3.0cm,bottom=2.5cm,left=2.6cm,right=2.6cm}

\newcommand{\firstpage}{%
    \newpage
    \begin{figure}
      \centering
      \includegraphics[width=0.5\textwidth]{figures//XJTU_name.eps}
    \end{figure}

    \centering \color{red} \fontsize{36pt}{\baselineskip} \fangsong \textbf{毕业设计（论文）}
}
