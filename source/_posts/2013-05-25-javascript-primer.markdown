---
layout: post
title: "javascript 概述"
date: 2013-05-25 10:19
comments: true
categories: [javascript,primer]
---

JAVAScript 可以分成 3 部分来看，分别是：core(EMCAScript), DOM, BOM.

- core 是通常所说的原生 javascript，提供核心语言功能。建议使用符合 EMCAScript 标准的语法。
- DOM 即文档对象模型，访问和操作网页内容的方法和接口。事件操作归属于 DOM。
- BOM 浏览器对象模型，提供与浏览器交互的方法和接口。AJAX/cookies 归属于 BOM。

<!--more-->

{% img /images/JAVAScriptOverview.png 'JAVAScript overview' %}

key ideas
---------

Douglas Crockford 在下面的 2 部视频中非常精髓的讲解了 JAVAScript 的核心概念:

- [The JavaScript Programming Language][jslanguage]
- [Advanced JavaScript][jsadvanced]

[jslanguage]: http://v.youku.com/v_show/id_XMzMzNzQ0MzY4.html
[jsadvanced]: http://v.youku.com/v_show/id_XMzMzNzgxNzA4.html

个人整理如下：

1. Prototype 继承: 用 Crockford 的话说，这是 javascript 完成 JAVA 想做但没做成的事情的主要原因。
2. lambda 闭包: 函数式编程。
3. Object container: 使用 Object 作为存储容器。对象/Array/function 等都使用这种结构存储。
4. linkage: 对象之间的访问连接，这是糟粕，导致的了很多问题。不得不理解，尽量规避。

函数
----

在 JAVAScript 中，函数即对象。
但是，与 python 的一切皆对象的理念略有不同，JAVAScript 中，函数是第一位的。

一般的编程语言中，包含 modules/class/function 等很多概念，
Javascript 中只有 function，通过 function 实现了上述所有功能。
通过 function 可以封装变量的命名空间，
通过 function 可以创建对象，即 class 的实例，
通过 Prototype 方式可以从一个对象继承出一个新的对象，不需要显式定义 class。

DOM 与 BOM
----------

与浏览器配合，是 JAVAScript 的一大竞争力。

可以直接访问操纵 HTML，方便的控制显示的样式和内容。无需涉及太深的技术细节。
只要搞清显示的内容、用户操作等之间的关系即可。
可以理解为一种快速 GUI 的方式，跨平台。

事件监听让交互成为可能，极其方便的互动。

AJAX 动态获取数据，大大丰富了网页的行为。

学习曲线与书籍
--------------

1. [JavaScript语言精粹][js_good] 很关键。

    js 与其他语言不同，没有在实验室中经过长时间的打磨，
    其中很多不好的特性没有被修复。
    不管是学习还是写代码的过程中，都需要有所侧重点。
    学习 js 之前先读一下第一章，熟悉一下基本的概念和名词。
    对js 有了一定理解以后，再回来认真的再读这本书，或许是不错的选择。

2. [疯狂HTML 5/CSS 3/JavaScript讲义][js_abc] 入门效率高。

    首先，这书写的真不咋地，
    一没什么思想性，二没多少优秀的实践，还比较不严禁！
    但是，条例性还不错，非常适合入门，一天翻完了解概貌的那种！

3. [JavaScript高级程序设计（第3版）][js_advance] 系统学习js的好书。

    对 js 的语法介绍的很细，分析的很透彻。来龙去脉很清晰。

4. [编写高质量代码 : Web前端开发修炼之道][js_practise] 学习编码规范。

    这书读起来速度快，不耽误时间。

    从最烂的代码一点一点优化到最佳规范，触动很大，也加深的对规范的理解。

5. [编写可维护的JavaScript][js_better] 关于如何写出高质量的代码。

    内容很赞，讲解了规范的来龙去脉和影响。


[js_abc]: http://book.douban.com/subject/10759600/
[js_practise]: http://book.douban.com/subject/4881987/
[js_good]: http://book.douban.com/subject/3590768/
[js_advance]: http://book.douban.com/subject/10546125/
[js_better]: http://book.douban.com/subject/21792530/
