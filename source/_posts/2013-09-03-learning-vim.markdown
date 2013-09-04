---
layout: post
title: "vim 入门"
date: 2013-09-03 09:17
comments: true
categories: [vim,vivian]
---

vim 是一款高效的编辑器，可以快速完成各种复杂的编辑任务。
尤其适合于写代码。证据如下图:

<!--more-->

{% img /images/coding_with_vim.gif %}

mode
----

#### 为什么要有 mode

vim 速度快的根本原因在于，
键盘输入的不仅仅是纯文本，还可以是一个命令。
比如:

- `G` 可以快速移动到文件末尾。
- `yy` 可以复制当前行。
- `dw`删除光标所在的单词。

由此产生一个问题，如何判断用户要输入文件内容还是执行命令。
比如：用户按下 `G` 的时候，要输入字母 G 还是快速移动到文件末尾。

解决这个问题的关键是： mode(模式)。

#### mode 种类

vim 有很多 mode，新手只需要记住 2 个: 

- insert mode: 键盘输入的所有东西都会插入到文本内容中。
- command mode: 输入的是命令。

#### mode 间切换

打开 vim 时，默认是 command mode，进入 insert mode 的方法很多。
最简单最常用的是 `i`，在当前光标所在的位置开始插入内容。
也可以用`a`，在当前光标的后面插入内容。

insert mode 回到 command mode 的方法很单一，键盘左上角的 `Esc`。
`Esc` 恰如 iphone 的 home 键，不管你遇到了什么，
按一下 `Esc` 世界瞬间清净了--回到了 command mode.

如果在 command mode 下按 `Esc`，
那么之前没输入完的命令全部清空，可以从头另输入。恰如输入密码时的重置功能。

常用的基本命令
--------------

严格说来，输入命令的模式可以细分为 command-mode 和 commandline-mode。  
在 command-mode 下输入 `:` 进入 commandline-mode

同一个命令，在不同模式下，功能不同。
command-mode 下 w 是向右移动一个单词，commandline-mode 是保存。

#### commandline-mode 命令

最基本的命令有 2 个

- w -- 保存
- q -- 退出

`wq` 可以连起来使用，先保存，后退出。注意，顺序不能颠倒。

#### command-line

1. h/j/k/l 移动神器，分别是 左/下/上/右。其中，j/k 使用最多。
2. o 下一行插入内容，同时会插入一个空行。
3. i/a 当前光标的前/后插入内容
4. I/A 大写。行首/行尾插入内容
5. w 向右移动一个单词
6. y 复制。 yy 复制当前行，yny 复制n行，yw 复制当前单词。
7. d 剪切。 同 y
