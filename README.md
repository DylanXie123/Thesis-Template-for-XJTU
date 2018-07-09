# 西安交大毕业设计模板

## 效果展示
<div align="center">
    <img src="./figures/coverpage.png" height=300>
    <img src="./figures/equation.png" height=300>
</div>

## 使用方法

### 编译顺序

```
xelatex -> biber -> xelatex -> xelatex
```

### 注意事项
* 三级标题分别为`chapter`，`section`，`subsection`


### 提供的命令

#### 封面页生成

```
% 设置封面页的各项参数
\titlenamea{西安交通大学}
\titlenameb{\LaTeX 毕业设计模板}
\xueyuan{电气学院}
\zhuanye{电气工程}
\banji{电气613}
\name{谢晋安}
\xuehao{0000000000}
\teacher{\LaTeX \quad GitHub}
\danwei{西安交通大学}

%生成封面页
\cover 
```

#### 摘要和关键字
```
%中文摘要和关键字
\begin{abstract}
中文摘要。
\end{abstract}
\keywords{\LaTeX；XJTU}

%英文摘要和关键字
\begin{eabstract}
English abstract.
\end{eabstract}
\ekeywords{\LaTeX;XJTU}
```

#### 附录
```
\begin{appendixs}
在这里添加附录文件
\end{appendixs}
```

#### 致谢
```
\begin{acknowledgement}
致谢
\end{acknowledgement}
```

Contact me:
[E-Mail](mailto:dylanxie123@outlook.com)