\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}
\ProcessOptions\relax
\LoadClass[a4paper]{ctexrep}

\RequirePackage{fix-cm}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{lmodern}
\RequirePackage{tikz}
\RequirePackage[dvipsnames]{xcolor}

\usepackage[a4paper]{geometry}
\geometry{
    inner  = 25mm,
    outer  = 25mm,
    top    = 35mm,
    bottom = 35mm
}

\newcommand{\pierule}{
    \paragraph*{$N$手交换规则}

    此规则为可选规则，建议当玩家都已熟悉游戏后再采用。此规则可以削弱先手优势，增加游戏的公平性。

    一名玩家先走前$N$步（$N$一般取$1$或$3$），然后另一名玩家决定自己下哪个颜色的棋。决定完毕之后，双方再按照正常规则下棋。
}

\newcounter{boardi}
\newcounter{boardj}

\newcommand{\goLikeBoard}[2]{
    \path [fill=Dandelion] (-.5, -.5) rectangle (#1 - .5, #2 - .5);
    \setcounter{boardi}{0}
    \loop
        \draw (\theboardi, 0) -- (\theboardi, #2 - 1);
        \stepcounter{boardi}
    \ifnum\value{boardi}<#1\repeat
    \setcounter{boardi}{0}
    \loop
        \draw (0, \theboardi) -- (#1 - 1, \theboardi);
        \stepcounter{boardi}
    \ifnum\value{boardi}<#2\repeat
}
\newcommand{\goLikeStar}[2]{
    \path [fill=black] (#1, #2) circle [radius=.2];
}
\newcommand{\goLikeStone}[3]{
    \draw [fill=#3] (#1, #2) circle [radius=.48];
}
\newcommand{\goLikeBlackStone}[2]{
    \goLikeStone{#1}{#2}{black}
}
\newcommand{\goLikeWhiteStone}[2]{
    \goLikeStone{#1}{#2}{white}
}

\newcommand{\gomokuBoard}{
    \goLikeBoard{15}{15}
    \goLikeStar{3}{3}
    \goLikeStar{3}{11}
    \goLikeStar{7}{7}
    \goLikeStar{11}{3}
    \goLikeStar{11}{11}
}