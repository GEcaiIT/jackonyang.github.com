---
layout: post
title: "javascript primer"
date: 2013-05-25 10:19
comments: true
categories: [javascript,primer]
---

看了一个星期的 javascript，主要做了以下几件事情：

- 刷了 4 本书：js精粹，疯狂js讲义，js高级程序设计。ajax 基础教程。
- 2段代码：宽搜做拓扑图的树形图，输入框自动补全。
- 尝试了几个工具：通过 jslint 了解了编码规范，试用了 qunit 单元测试框架。

<!--more-->

对 javascript 初步认识
----------------------

总体感觉，javascript 不适合于做大型项目，
变量命名空间问题导致难以实现很好的封装。
我们总不能寄希望于写代码的人恰好知道如何非常好的封装变量，
更不能寄希望于代码实现了计划中的封装功能。
代码量大了以后，变得难以维护。

-- 2013.6.5 日补充。javascript 可以很好的封装变量命名空间。
一般的编程语言中，包含 modules/class/function 等很多概念，
Javascript 中只有 function，通过 function 实现了上述所有功能。

直接操纵 HTML，可以很好的控制显示的样式和内容。无需涉及太深的技术细节。
只要搞清显示的内容、用户操作等之间的关系即可。
可以理解为一种快速 GUI 的方式，跨平台。
js 主要用于处理显示、交互式相关的内容，不做复杂的业务逻辑处理。

作为js的基本语法，
运行环境的作用域对象、函数即对象、字面量、原型与原型链是非常具有学习价值的。
其中，函数是核心。

javascript 语言本身并无太大的优势和竞争力。
关键在于与其他技术结合。关键点包括：dom，bom，ajax。

事件是另一个核心内容。具体的归属问题，暂不确定。

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

    还没看，看目录还不错。

[js_abc]: http://book.douban.com/subject/10759600/
[js_practise]: http://book.douban.com/subject/4881987/
[js_good]: http://book.douban.com/subject/3590768/
[js_advance]: http://book.douban.com/subject/10546125/
[js_better]: http://book.douban.com/subject/21792530/
