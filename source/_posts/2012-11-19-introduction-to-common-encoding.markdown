---
layout: post
title: "introduction to common encoding"
date: 2012-11-19 09:59
comments: true
categories: [encoding]
---

Problems about encoding are usually caused by confusion.
A good understanding of encoding can avoid most of it.

Here are some common and basic concept about encoding:
ASCII, Unicode, UTF-8, GBK, GB2312, GB18030, charset, encoding

<!--more-->

Charset and encoding
--------------------

- charset(字符集): a set of characters
- encoding(字符编码): a map between charset and speaking language

ASCII, unicode, gbk, gb18030, gb2312
------------------------------------

- ASCII: 取值范围是0~127，可以用7个bit表示
- Extended ASCII: 一般机器一字节 8 位，取值范围是 0-255，
	因此各厂商制定了很多种 ASCII 码的扩展规范。
- Latin-1: 又名 ISO-8859-1。图形界面中广泛使用的 扩展 ASCII 码。
- Unicode: 后来，为了统一表示各国语言，18位二进制书表示。
- GB系: 中国的国家标准。按推出时间的先后顺序：GB2312->GBK->GB18030

字符编码与字符集对应关系
------------------------

- ASCII字符编码: ASCII字符集的编码方式。
- UTF-8: Unicode字符集的实现方式之一。

#### standard ASCII

{% img /images/std_ascii.png %}

#### IBM expanded ASCII

{% img /images/ibm_ascii.png %}

#### Latin-1

编号为128~159的是一些控制字符，表中没有列出。
{% img /images/latin1.png %}

