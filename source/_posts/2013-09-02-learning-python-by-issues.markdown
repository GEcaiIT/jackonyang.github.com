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

#### 搭建开发环境 -- python2.7 + editor/IDE + pip

开发环境主要包括：

- 运行环境: python2.7
- 编辑器: windows 下使用自带的 IDLE，linux 下使用 vim.
- 类库管理工具: pip

#### 打印中文"你好" -- 理解字符编码

代码中涉及中文时，需要了解一点基础的[字符编码][intro-encoding]知识

python 代码文件的第一行声明使用 utf-8 编码，即可处理中文。

{% include_code deal with non_ASCII characters lang:python hello_world_cn.py%}

[intro-encoding]: /blog/2012/11/19/introduction-to-common-encoding/

#### 简单的单词数统计 -- 流程控制与常用数据结构

- 流程控制

    - if 判断
    - for 循环：习惯使用 python 的 for ... in 句式
- 基本数据类型

    - str
    - number
- 数据结构，主要包括：

    - list: 与 c 语言的数组相似。可以动态改变大小。
    - set: 集合。类似 list， 但元素不能重复，无序。
    - dict: key-value 对的集合，key 不能重复

{% include_code calculate word frequency lang:python word_freq.py%}

#### scope, namespace and package
