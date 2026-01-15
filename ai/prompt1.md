以下是一份描述五子棋的LaTeX代码，请将其改为【棋类游戏名称】的规则和基本策略。保持代码结构和文字风格不变。用Markdown的代码语法输出LaTeX代码，语言为latex。

```latex
\documentclass[../../main.tex]{subfiles}
\graphicspath{{img/}}
\begin{document}

\section{五子棋}

\begin{minipage}[t]{.7\textwidth}

    \paragraph*{游戏人数} $2$人

    \paragraph*{游戏道具} $15\times15$的棋盘(也可以用$19\times19$等尺寸代替)和棋子

    \paragraph*{游戏目标} 抢先将自己的棋子形成五连

    \paragraph*{游戏过程}

    \begin{enumerate}
        \item $2$名玩家中，一名玩家下黑棋，另一名玩家下白棋。
        \item 从下黑棋的玩家开始，双方轮流落子。落子必须落在棋盘的交叉点上。除此之外，棋子的落点没有任何限制。
        \item 玩家落子完毕之后，如果自己的棋子形成了五连（五枚自己颜色的棋子在一条直线或斜线上相邻成一排），则这名玩家立即获胜。
        \item 若棋盘下满后仍然没有玩家形成五连，那么游戏为平局。
    \end{enumerate}

    \paragraph*{基本策略}

    \begin{itemize}
        \item 当对手形成冲四（下一步就能形成五连的四枚棋子）之后，为了防止对手形成五连，必须堵住对手的冲四（除非自己可以直接形成五连）。
        \item 当一名玩家形成活四（四枚自己颜色的棋子在一条直线或斜线上相邻成一排，且两端没有对手的棋子阻挡）之后，无论对手堵在那一边，都可以下在另一边形成五连。所以活四是下一步必胜的棋形。
        \item 当对手形成活三（下一步就能形成活四的三枚棋子）时，需要立刻堵上，防止对手形成活四。因此活三的进攻能力和冲四相近。
        \item 当一名玩家同时形成两个活三或冲四之后，无论对手堵哪条线，都可以把另一条线变为活四。所以双活三、双冲四、活三+冲四都是下两步必胜的棋形。
    \end{itemize}
\end{minipage}
\begin{minipage}[t]{.3\textwidth}
    \begin{figure}[H]
        \centering
        \begin{tikzpicture}[scale=0.2]
            \gomokuBoard
        \end{tikzpicture}
        \caption{标准的五子棋棋盘}
    \end{figure}
    \begin{figure}[H]
        \centering
        \begin{tikzpicture}[scale=0.2]
            \gomokuBoard

            \goLikeBlackStone{2}{11}
            \goLikeBlackStone{3}{11}
            \goLikeBlackStone{4}{11}
            \goLikeBlackStone{5}{11}
            \goLikeBlackStone{6}{11}

            \goLikeWhiteStone{11}{9}
            \goLikeWhiteStone{11}{10}
            \goLikeWhiteStone{11}{11}
            \goLikeWhiteStone{11}{12}
            \goLikeWhiteStone{11}{13}

            \goLikeWhiteStone{2}{2}
            \goLikeWhiteStone{3}{3}
            \goLikeWhiteStone{4}{4}
            \goLikeWhiteStone{5}{5}
            \goLikeWhiteStone{6}{6}

            \goLikeBlackStone{9}{5}
            \goLikeBlackStone{10}{4}
            \goLikeBlackStone{11}{3}
            \goLikeBlackStone{12}{2}
            \goLikeBlackStone{13}{1}
        \end{tikzpicture}
        \caption{五连的例子}
    \end{figure}
    \begin{figure}[H]
        \centering
        \begin{tikzpicture}[scale=0.2]
            \gomokuBoard

            \goLikeBlackStone{2}{11}
            \goLikeBlackStone{3}{11}
            \goLikeBlackStone{4}{11}
            \goLikeBlackStone{5}{11}

            \goLikeWhiteStone{11}{10}
            \goLikeWhiteStone{11}{11}
            \goLikeWhiteStone{11}{12}
            \goLikeWhiteStone{11}{13}

            \goLikeWhiteStone{3}{3}
            \goLikeWhiteStone{4}{4}
            \goLikeWhiteStone{5}{5}
            \goLikeWhiteStone{6}{6}

            \goLikeBlackStone{10}{4}
            \goLikeBlackStone{11}{3}
            \goLikeBlackStone{12}{2}
            \goLikeBlackStone{13}{1}
        \end{tikzpicture}
        \caption{活四的例子}
    \end{figure}
    \begin{figure}[H]
        \centering
        \begin{tikzpicture}[scale=0.2]
            \gomokuBoard

            \goLikeBlackStone{2}{11}
            \goLikeBlackStone{3}{11}
            \goLikeBlackStone{4}{11}

            \goLikeWhiteStone{11}{10}
            \goLikeWhiteStone{11}{12}
            \goLikeWhiteStone{11}{13}

            \goLikeWhiteStone{3}{3}
            \goLikeWhiteStone{4}{4}
            \goLikeWhiteStone{5}{5}

            \goLikeBlackStone{10}{4}
            \goLikeBlackStone{11}{3}
            \goLikeBlackStone{13}{1}
        \end{tikzpicture}
        \caption{活三的例子}
    \end{figure}
\end{minipage}

\end{document}
```