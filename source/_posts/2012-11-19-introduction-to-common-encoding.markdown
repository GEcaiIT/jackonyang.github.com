---
layout: post
title: "字符编码简介"
date: 2012-11-19 09:59
comments: true
categories: [encoding,vivian]
---

涉及中文的编程时，经常遇到字符编码的问题。
这些问题，大多源自于概念之间的混淆。
理顺字符编码概念之间的关系，即可避免大多数问题。

经常提到的几个概念如下：

- ASCII
- Unicode
- UTF-8
- GBK
- GB2312
- GB18030
- charset
- encoding

<!--more-->

Charset and encoding
--------------------

- charset(字符集): set 字符的集合。
- encoding(字符编码): map 2 个字符集合之间的映射关系。  
    主要用于字符集合之间的相互转换。

charset 字符集合
----------------

- ASCII: 主要用于表示英语等单字节的语言。

    - standard ASCII: 取值范围是0~127，可以用7个bit表示。
    - Extended ASCII: 一般机器一字节 8 位，取值范围是 0-255。  
        因此各厂商制定了很多种 ASCII 码的扩展规范。  
        Latin-1 是图形界面中广泛使用的 扩展 ASCII 码。
- GB系: 主要用于表示汉字，中国的国家标准。双字节编码。  
    按推出时间的先后顺序：GB2312 -> GBK -> GB18030
- Unicode: 为了统一表示各国语言，18位二进制数表示。

encoding 字符集之间的映射关系
-----------------------------

字符编码与字符集的名字通常是一样的，unicode 例外。  
unicode 存在多种实现方式，所以，字符编码名字较多，如 utf8/utf16/utf32 等。

编程中，建议主要使用如下 2 种编码。

- ASCII 字符编码: 纯英文时使用。ASCII 字符集的编码方式。
- UTF-8: 涉及汉字等非英文字符时使用。Unicode 字符集的实现方式之一。

#### standard ASCII

{% img /images/std_ascii.png %}

#### IBM expanded ASCII

{% img /images/ibm_ascii.png %}

#### Latin-1

编号为128~159的是一些控制字符，表中没有列出。
{% img /images/latin1.png %}
