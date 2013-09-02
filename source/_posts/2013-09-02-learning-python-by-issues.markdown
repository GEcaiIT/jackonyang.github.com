---
layout: post
title: "python 入门的小任务"
date: 2013-09-02 09:16
comments: true
categories: [python,vivian]
---

python 入门系列文章整理，假定已经掌握如下内容：

- 简单的 c 语言基础（二级 c）
- 知道 c++ 或 JAVA 中 class 的概念

个人比较习惯任务式的学习。
所以，本文按顺序列举学习任务和目的，并做简要介绍。

<!--more-->

#### 搭建开发环境 python2.7 + pip

[详细步骤](/blog/2013/09/02/python-dev-env/)

#### 打印中文"你好" -- 理解字符编码

代码中涉及中文时，需要了解一点基础的[字符编码][intro-encoding]知识

python 代码文件的第一行声明使用 utf-8 编码，即可处理中文。

{% include_code deal with non_ASCII characters lang:python hello_world_cn.py%}

#### 简单的单词数统计 -- 流程控制与常用数据结构

给定一段英文文本，包含逗号(',')分割的多个短句，统计各英文单词的出现频率

相关 [python 语法简要介绍][python-gramma]，代码如下：

{% include_code calculate word frequency lang:python word_freq.py%}

#### scope, namespace and package

[intro-encoding]: /blog/2012/11/19/introduction-to-common-encoding/
[python-gramma]: /blog/2013/03/02/python-tutorial-basic-grammar/
