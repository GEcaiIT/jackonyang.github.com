---
layout: post
title: "vim settings and plugins for programming"
date: 2013-03-19 01:22
comments: true
categories: vim
---

vim plugin 与配置文件，本质上是同一个概念。
具体解释见：[Vim Plugin 与个性化设置的原理](http://jackonyang.github.com/blog/2013/03/18/personalizing-vim/)

#### 配置 vim 的根本目的

这本不应该是一个问题，但是，杂乱的 vim 配置攻略和plugin，
很容易让我们盲目配置 vim，做大量没有意义的工作，甚至引起 plugin 冲突。

使用 vim 本身就是为了高效处理文本文档，从最早的纯粹编辑演化到现在的编辑、编译。
我所理解的高效的本质是：更快、更方便。

由此出现一个新的问题：那些操作需要提速，那些操作需要更简单。
我想，为了个别很少使用的功能，花费大量的时间进行设置，不是一个好事情。

_加速与简化的本质:_
1. 用最方便的按键序列完成最常见的操作，
2. 把重复的操作序列抽象为固定的命令。

面对这两个需求，图形界面的局限性就显而易见。
所以，命令行操作比图形界面具备更大的优化空间。

#### 优化类型

1. move fast

	Most time is spent reading, checking for errors and looking for the right place to work on, rather than inserting new text or changing it. Navigating through the text is done very often, thus you should learn how to do that quickly.

	- 行列/位置移动。到第n行，移动n行，到文件/屏幕开头结尾。
	- 语义移动。移动n个单词/句子/段落
	- 查找性移动。移动到当前单词出现的下一个位置
	- 代码中的移动。变量/函数/类 定位/引用的位置。代码块移动，跨文件移动。

	其中，代码中的移动需要插件 ctags/cscope

	为了获得更多的实时位置信息，使用 taglist

2. easy writing: more convient. less input, more output

	- 模板导入 Templates
	- 缩写输入/错误纠正 Abbreviations
	- 代码自动补全 Auto-Completion
	- 快捷键定义

3. readable: layout, more beautiful

	- highlighting syntax on
	- more infomative statusline
	- modifying tabs

4. multi-files:

	- winmanager
	- BufExplorer
	- lookup file
