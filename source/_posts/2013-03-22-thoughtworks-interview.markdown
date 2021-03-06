---
layout: post
title: "thoughtworks 面试总结"
date: 2013-03-22 10:18
comments: true
categories: [review]
---

从 3 月 10 日给 thoughtworks 投简历开始，经过电面、笔试、写代码、pair、face to face 等几个流程，我想，昨天应该是最后的环节了吧。历时 12 天，不算短，但安排的很紧凑。公司的响应速度很快，总是比我估算的时间提前 4-5 个小时给结果。

体验性的面试，在增进相互了解的同时，也是自我反思的好机会。不管最终结果如何，通过面试更好的反思了自己，这也算是收获吧。

<!--more-->

**概括的说：**

1. 毕业后以具体需求为导向的学习，导致自己忽视基本功，忽视潜力。
2. 当 pair 的大牛把 java 等解释语言的经验用于 python 时，未敢坚持自己的观点。
3. face to face 高手面前，秀实力变成秀下限。年少轻狂时，能秀的都是浮云，一旦深入，空洞无物。

**以下几个错误，导致自己很可能悲剧：**

- 笔试坑爹，
- pair 时编码规范不被认同，
- face to face 选错了话题和方向，深入交流之后未能展现出技术干货。
- 放开了讨论技术时，不够谦逊，甚至反对过分强调设计模式。

**各环节具体总结如下：**

### 电面：曾经一直期待的面试内容突然到来，措手不及。

个人理解，我的电面都头到尾都在关注一个问题：
你是如何持续提升自己的，从大学到工作后。

虽然面试前有各种查攻略，但这个问题还是着实让我措手不及。
我准备的都是自己的工作经历/项目经验方面。
毕业以后不再追求刷读书量，而是如何更高效的获取所需的知识。
看书少了，也没有特定的方向和领域。
突然问到自己最近一年看的书，瞬间大脑空白，什么书都想不起来了。

### 笔试：对考试真的无法再爱了，自己的硬伤。

不知道为什么，自从上了大学，面对考试总是会莫名其妙的紧张、不自信。
最终的结果也会证明，不自信是对的，因为结果总是无法让人自信。

从最初为了证明自己而热衷考试，到后来因为不喜欢应试教育而对考试完全排斥，
再到现在，对考试真的无法再爱了，与考试的性质无关。

<!--高中的时候，老师就曾劝戒我：考高分也是一种能力，分高虽不代表他知识掌握的比你好，但如何用有限的知识在考试中获得更高的分数，这本身也是一种重要的能力。-->

### 代码与 pair: 专注技术往往可以表现出更好的技术实力

先用 3 天时间完成了一个代码任务，然后 pair 扩展自己的代码。

在 pair 过程中犯了一个最严重的错误：在技术问题上观点不一致时，坚持自己观点太少。
一方面，源自对自己的实力不自信；另一方面，场景与身份特殊，担心被判定为不愿接受别人的批评与建议。

_自己编码的 3 个严重的问题:_

1. over design。

    菜鸟的经典特点。一方面对需求理解不深刻，宁愿多写代码，也不愿被认为考虑太片面。另一方面，炫技。试图使用更多的设计模式证明自己懂的多。

2. unit test 无法精确定位 bug 位置。

    曾经在某一篇文章中看到，好的 unit test 本身就是最好的帮助文档和 API 文档。
极度赞同，并把这作为衡量自己用例好与坏的几条基本原则之一。

    由此产生一个问题，相似场景的多种输入参数怎么测。我的选择是把测试数据存为一个 dictionary，key 和 value 分别是输入和预期结果。这样测试代码只需循环依次调用 API 即可。其他人可以根据循环内的代码清晰理解接口的调用方法。这种做法直接导致，一旦出现 bug，只能定位到测试用例层面，无法定位导致 bug 的具体输入。

3. pep8 编码规范

    个人在编码的过程中发现，pep8 过于苛刻，有时为了增加很小的可读性，需要多敲击很多次键盘。我想，一个好的编码规范不应该严重影响编码效率。所以对代码进行 pep8 检查时，忽略了 2 条规范。

    正确的做法是：优化 vim 来解决多敲击键盘的问题，而不是忽略编码规范。优化原理很简单，在 vim 中定义一套缩写规则，在输入的过程中自动进行 pep8 修正。比如输入 "=" 时插入 " \<space\> = \<space\>"。或许，已经有这方面的插件了。

_被指为问题，但并不认同的地方：_

1. 全局变量的使用

    我在几个 module 中使用了全局变量，被认为是一个很不好的习惯。当时有提出反对意见：看了几个 python 的类库，都是这么实现的。但对方依旧不认同这种行为。

    昨晚有反思，也有回忆对方 pair 过程中的言论，突然有一种感觉，他可能把 java/c 等的编码习惯延续到了 python 中。而 java 的很多习惯，与 python 是有冲突的。比如全局变量，python 每一个文件是一个 module，只要加载 module 时用 import 而非 “from ... import ”，module 中全局变量只在 module 内生效，并不是真正意义上的全局变量。
所以，java/c 中使用全局变量的弊端，在 python 中并不会出现。

### face to face: 高手面前秀死自己

这个环节的核心在于，自己选一个技术话题做简要阐述，然后进行深入交流，展现自己的技术特色。我没有理解对方的这个需求，自我阐述时，选择了一个做出了小的成果，但对底层原理缺乏深入了解的话题。导致之后的 1 个多小时，一直没有精彩的表现。

我想，深入的钻研与成果之间总是存在冲突的。深入总是高投入低产出的过程，需要长期的积累。真正出成果的，往往是那些应用层面的，理解需求与用法，提供一套优质 API 即可。
面试的过程中，总是会难以克制的去秀自己。
年轻的时候，能力与经验有限，能拿出来秀的，往往都是一些相对肤浅、容易出成果的。
一旦碰到内行深究下去，就变成了秀下限。

如果再有这种场合，一定选择一个自己熟悉的、可以研究十年的话题，比如图论、图数据库、社交网络结构。
