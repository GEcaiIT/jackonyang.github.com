---
layout: post
title: "加速工作效率的 vim 最佳配置策略"
date: 2013-03-19 01:22
comments: true
categories: vim
---

vim plugin 与配置文件，本质上是同一个概念。
具体解释见：[Vim Plugin 与个性化设置的原理](http://jackonyang.github.com/blog/2013/03/18/personalizing-vim/)

### 配置 vim 的根本目的

这本不应该是一个问题，但是，杂乱的 vim 配置攻略和 plugin，
很容易让我们盲目配置 vim，做大量没有意义的工作，甚至引起 plugin 冲突。

使用 vim 本身就是为了高效处理文本文档，从最早的纯粹编辑演化到现在的编辑、编译等。
配置 vim 的根本目的，自然是更高效的处理文档、加速日常工作。

##### 更高效的本质

好的文章和代码是改出来的，大部分时间都是在 _阅读_、_定位错误_、_修改错误_.
所以，更高效意味着：

1. motion: moving faster,
2. writing: less input, more output. more convient
3. reading: more readable
4. extention: using it everywhere, compiler/web browser/pdf viewer

至于衡量配置好与坏的标准，我想，只要足够加速我们日常工作即可，无需追求全面。

##### 加速与简化的本质:

1. 用最方便的按键序列完成最常见的操作，
2. 把重复的操作序列提取为更短的命令。

面对这两个需求，图形界面的局限性就显而易见。
所以，命令行操作具备更大的优化空间。

### 插件选择

从 2008 年开始使用 vim 至今，已经 6 年有余。
现在是第三次深入研究 vim。
目前的理解如下：

1. 插件的选择，仅由个人使用需求决定。
2. 在实践中找出自己需要加速的操作，然后找出可以实现需求的的最少插件。
3. 先读 [a byte of vim](https://github.com/JackonYang/book-repo/tree/master/Swaroop%20C%20H/A%20Byte%20of%20Vim%20%284%29)，了解设计原理与核心功能。否则不知道自己什么地方可以加速。


### 主要的加速需求与解决方案

每个需求对应的链接给出了解决方案的详细说明，最新的配置都在
[personalizing ubuntu](https://github.com/JackonYang/personalizing-ubuntu)

##### move fast

- 行列/位置移动。到第n行，移动n行，到文件/屏幕开头结尾。
- 语义移动。移动n个单词/句子/段落
- 查找性移动。移动到当前单词出现的下一个位置
- 代码中的移动。变量/函数/类 定位/引用的位置。代码块移动，跨文件移动。

其中，代码中的移动需要插件 ctags/cscope

为了获得更多的实时位置信息，使用 taglist

###### easy writing

- Auto-Completion: [tab 一键自动补全](http://jackonyang.github.com/blog/2013/03/19/vim-auto-complete/)
- 模板导入 Templates
- 缩写输入/错误纠正 Abbreviations
- 快捷键定义

##### more readable: 

- highlighting syntax on
- more infomative statusline
- modifying tabs

##### multi-files:

- winmanager
- BufExplorer
- lookup file
