---
layout: post
title: "latex encoding and Chinese support"
date: 2013-03-05 02:49
comments: true
categories: [latex,encoding]
---

windows 下， 默认字符编码为 gbk，latex 的源文件通常也是 gbk 编码。
在 latex 中，通常加载 `CJK` 宏包
并通过 `\begin{CJK}{GBK}{song}` 声明使用的编码方式。

ubuntu 下，默认字符编码为 UTF8，个人认为，较为简单的处理方式是：
加载 `CJKutf8` 宏包
并通过 `\begin{CJK}{UTF8}{gbsn}` 声明使用的编码方式。

<!--more-->


注意：字符编码和使用的字体有变化。

{% include_code latex Chinese with utf8 lang:latex test.tex%}

