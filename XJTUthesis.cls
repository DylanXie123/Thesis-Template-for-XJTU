% A Temlapte for XJTU
% Based on book
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{XJTUthesis}
\LoadClass[openany,linespread=1.2]{ctexbook}

%% Option provided
\DeclareOption{bachelor}{\relax}
\DeclareOption{master}{\relax}
\DeclareOption{doctor}{\relax}
\ProcessOptions\relax

%% Package needed
\RequirePackage{lmodern} %arbitry font size
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{color}
\RequirePackage{setspace}
\RequirePackage{enumitem} %conflict with enumerate
\RequirePackage{fancyhdr}
\RequirePackage{booktabs} % 三线表
\RequirePackage{makecell}
\RequirePackage{mathtools,amsthm,amsfonts,amssymb,bm}
\RequirePackage{tikz}
\RequirePackage[titles]{tocloft} %required to generate content with dots
\RequirePackage{algorithmic}
\RequirePackage{algorithm}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{pdfpages}
\RequirePackage[backend=biber,bibstyle=gb7714-2015,citestyle=gb7714-2015]{biblatex}
\RequirePackage[colorlinks=true,pdfstartview=FitH,linkcolor=black,anchorcolor=violet,citecolor=black]{hyperref}

\usetikzlibrary{graphs}
\setenumerate[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setdescription{itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}

%% to be finished
\makeatletter
\newif\ifxjtu@bachelor
\newif\ifxjtu@master
\newif\ifxjtu@doctor
\newcommand{\degree}{}
\newcounter{theappendix}
\setcounter{theappendix}{1}
\newcounter{theacknowledgement}

\DeclareOption{bachelor}{\xjtu@bachelortrue}
\DeclareOption{master}{\xjtu@mastertrue}
\DeclareOption{doctor}{\xjtu@doctortrue}
\ProcessOptions\relax

\ifxjtu@bachelor
    \renewcommand{\degree}{本科}
\fi

\PassOptionsToPackage{no-math}{fontspec}

% font setting
\setCJKmainfont[BoldFont = FandolSong-Bold]{FandolSong}
\setCJKfamilyfont{song}[BoldFont =  FandolSong-Bold]{FandolSong}
\newcommand{\song}{\CJKfamily{song}}
\setCJKfamilyfont{hei}[BoldFont =  FandolHei-Bold]{FandolHei}
\newcommand{\hei}{\CJKfamily{hei}}
\setCJKfamilyfont{fang}[AutoFakeBold = 2]{FandolFang}
\newcommand{\fang}{\CJKfamily{fang}}
\setCJKfamilyfont{kai}[AutoFakeBold = 2]{FandolKai}
\newcommand{\kai}{\CJKfamily{kai}}
\setmainfont{Times New Roman}

% ctex setting
\ctexset{
    contentsname     = {\zihao{3} 目 \qquad 录},
    bibname          = {\zihao{3} 参考文献},
    chapter={
        pagestyle    = fancy,
        format       = \zihao{3} \centering,
        number       = \thechapter,
        name         = {},
        aftername    = \quad,
        afterindent  = true,
        beforeskip   = {3ex}, %default 50pt
        afterskip    = {2ex},
    },
    section={
        format       = \zihao{-3} \raggedright,
        number       = \thesection,
        name         = {},
        aftername    = \quad,
        afterindent  = true,
        beforeskip   = {1ex},
        afterskip    = {0.5ex},
    },
    subsection={
        format       = \zihao{4} \raggedright,
        format+      = \qquad,
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
\setlength{\headheight}{2cm} \setlength{\voffset}{-0.5in}
\setlength{\headsep}{1cm} \setlength{\footskip}{0.75cm}

%% change the code of picture and table
\renewcommand {\thetable}{\thechapter-\arabic{table}}
\renewcommand {\thefigure}{\thechapter-\arabic{figure}}
\renewcommand {\theequation}{\thechapter-\arabic{equation}}

%% head and foot
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CE]{\song \zihao{5} {西安交通大学毕业设
计(论文)}}
\fancyhead[CO]{\song \zihao{5} {
    \ifnum \value{page}=1 摘要
    \else \ifnum \value{theacknowledgement}>0 致谢
    \else \ifnum \value{theappendix}>1 附录
    \else {\leftmark} \fi \fi \fi}
    }
\fancyfoot{}
\fancyfoot[RO,LE]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}

% double line head
\newcommand{\makeheadrule}{%
\makebox[0pt][l]{\rule[0.5\baselineskip]{\headwidth}{0.5pt}}%
\rule[0.58\baselineskip]{\headwidth}{0.5pt}}
\renewcommand{\headrule}{%
{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi \makeheadrule}}

%% abstract && keywords
\newenvironment{abstract}{
	\begin{center} \song \zihao{3}{摘 \qquad 要} \\ \end{center}
	\par
    \zihao{-4}
}{\\}

\newcommand{\keywords}[1]{\\ \zihao{5} \textbf{关键词：} \zihao{5} #1}
% english version
\newenvironment{eabstract}{
	\begin{center} \zihao{3}{ABSTRACT} \\ \end{center}
	\par
    \zihao{-4}
    \setlength{\parskip}{0.5\baselineskip}
    \setlength{\parindent}{0em}
}{\\}

\newcommand{\ekeywords}[1]{ \noindent \zihao{5} \textbf{KEY WORDS:} \zihao{5} #1}

%% \firstpage
\newcommand{\@titlenamea}{}
\newcommand{\titlenamea}[1]{\renewcommand{\@titlenamea}{#1}}
\newcommand{\@titlenameb}{}
\newcommand{\titlenameb}[1]{\renewcommand{\@titlenameb}{#1}}
\newcommand{\@xueyuan}{}
\newcommand{\xueyuan}[1]{\renewcommand{\@xueyuan}{#1}}
\newcommand{\@zhuanye}{}
\newcommand{\zhuanye}[1]{\renewcommand{\@zhuanye}{#1}}
\newcommand{\@banji}{}
\newcommand{\banji}[1]{\renewcommand{\@banji}{#1}}
\newcommand{\@name}{}
\newcommand{\name}[1]{\renewcommand{\@name}{#1}}
\newcommand{\@xuehao}{}
\newcommand{\xuehao}[1]{\renewcommand{\@xuehao}{#1}}
\newcommand{\@teacher}{}
\newcommand{\teacher}[1]{\renewcommand{\@teacher}{#1}}
\newcommand{\@danwei}{}
\newcommand{\danwei}[1]{\renewcommand{\@danwei}{#1}}

\newcommand{\dlmu}[2]{\hskip 1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip 1pt}

\newcommand{\cover}{
    \bfseries
    \begin{titlepage}
        \begin{figure}
          \centering
          \includegraphics[width=0.4\textwidth]{figures//a2_1zwxm.png}
        \end{figure}

        \begin{center}
            {\color{red} \fang \zihao{-0} 毕业设计（论文）}
            \vskip 15ex

            \zihao{3} \song
            \begin{tabular}{ll}
              题 \quad 目 & \dlmu{11cm}{\@titlenamea} \\
               & \dlmu{11cm}{\@titlenameb} \\
            \end{tabular}
            \vskip 15ex

            \dlmu{3cm}{\@xueyuan} 学院  \dlmu{3cm}{\@zhuanye} 系（专业） \dlmu{3cm}{\@banji} 班\\
            \renewcommand\arraystretch{2.5}
            \begin{tabular}{cc}
              学生姓名 & \dlmu{11cm}{\@name} \\
              学 \qquad 号 & \dlmu{11cm}{\@xuehao} \\
              指导教师 & \dlmu{11cm}{\@teacher} \\
              设计所在单位 & \dlmu{11cm}{\@danwei} \\
            \end{tabular}
            \vskip 5ex
            \number \year 年 \number \month 月\\
            \setcounter{page}{0}
        \end{center}
    \end{titlepage}
    \mdseries
}


\lstset{
    numbers=left,
    numberstyle= \tiny,
    keywordstyle= \color{ blue!70},
    commentstyle= \color{red!50!green!50!blue!50},
    frame=shadowbox, % 阴影效果
    rulesepcolor= \color{ red!20!green!20!blue!20} ,
    escapeinside=``, % 英文分号中可写入中文
    xleftmargin=2em,xrightmargin=2em, aboveskip=1em,
    framexleftmargin=2em
}

%% reference setting
%\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}

%% appendix enviroment
\newenvironment{appendixs}{
    \chapter*{附录\arabic{theappendix}}
    \addtocounter{theappendix}{1}
    \addcontentsline{toc}{chapter}{附录\arabic{theappendix}}
}{}

%% acknowledgement enviroment
\newenvironment{acknowledgement}{
    \chapter*{致 \quad 谢}
    \addtocounter{theacknowledgement}{1}
    \addcontentsline{toc}{chapter}{致谢}
}{}
