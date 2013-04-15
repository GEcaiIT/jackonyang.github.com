---
layout: post
title: " 编写高质量的 markdown 源文件"
date: 2013-04-15 01:52
comments: true
categories: [markdown]
---

github 的 wiki, issue 等都是支持 markdown 语法的。

使用 markdown 已经半年多，结合多年的 latex 排版经验，
已经有了一个相对深入的认识，整理如下。

<!--more-->

markdown 设计理念 <a id="design"></a>
-----------------

markdown 首先是一个所想即所得的语言。  
精髓在于：源码可读性高，书写方便。

#### 高可读性导致逻辑和显示分离不彻底

即使是初学者写出的 markdown 源码，读起来也像阅读最终的页面一样方便。  
换一个角度思考就是，markdown 的源码与最终的显示样式还是有些关联的。  
latex 彻底分离显示与逻辑结构，书写时只需关心逻辑结构。  
一个典型的例子是：markdown 本没有标题的概念，只有字号。
latex 则是标题，下一级标题，下下一级标题——纯粹的逻辑结构

#### 首次书写方便，适合于快速迭代

markdown 的本质是书写语言，可以满足一般的书写任务。  
latex 则是排版语言，越追求完美的任务，latex 的优势越明显。  
对于需要反复修改的文章，markdown 就显得力不从心。
比如：各种交叉引用、序号，都需要手动维护。

语法的学习资料
--------------

[markdown 首页][mdhome] 提供了当不错的学习说明。  
一个高效的学习方法是：
看 markdown 首页的介绍和源码、在 [dingus][] 中测试一下效果。

markdown 版本众多，不同版本的语法存在一些区别。

#### github wiki 语法

[wiki 语法案例](https://github.com/JackonYang/book-repo/wiki/markdown-%E8%AF%AD%E6%B3%95-%E6%A1%88%E5%88%97)
该 wiki 页面包含了大部分常用的 markdown 语法

1. wiki 编辑时的工具栏。

    主要的功能是提示语法。如果能够记住语法，完全不需要工具栏。
    word的工具栏，则是直接把文字变成需要的样子。

2. 第一个标题之前必须有正文文字，否则标题不会正常显示。

#### octopress blog

<dev>
<pre><code>
{% img /images/pic_name.png %}
</code></pre>
</dev>

```
{% include_code [title] [lang:language] path/to/file %}
```

书写高质量的代码
----------------

语法是学习的开始，但不是最终的归宿。
最重要的还是如何更舒服的满足实际需求，这就是所谓的高质量代码。

关于高质量的 markdown 源码，个人理解如下：

1. 后续修改、维护方便。
2. 文章本身的逻辑结构更加专业。

具体做法如下：

1. 超链接多使用 reference 格式，后续维护链接的有效性时较为方便。

    即，正文中使用 `[显示文件][tag]`,后面维护 `[tag]: url`的有效性。
    正文显示时，tag若不填写，则取显示文件的内容作为 tag。

2. title 最多分 3 级。

    从 `#` 到 `######`，markdown 支持 6 层甚至更多的标题级别。
    但是，从写作实践来说，文章中标题的深度如果超过 3 层，通常是难以理解的。
    此时需要反思文章的内容结构是否合理。

3. 文章内的超链接

    比如，我在"设计理念"的标题处用 `<a id="design"></a>` 设置了一个 anchor，
    [点击这里](#design) 
    (语法`[点击这里](#desgin)` )
    可以直接跳到到那里。

[mdhome]: http://daringfireball.net/projects/markdown/
[dingus]: http://daringfireball.net/projects/markdown/dingus
