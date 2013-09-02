---
layout: post
title: "python basic"
date: 2013-09-02 09:16
comments: true
categories: [python,vivian]
---

python 入门系列文章整理，假定已经掌握如下内容：

- 简单的 c 语言基础（二级 c）
- 知道 c++ 或 JAVA 中 class 的概念

#### 开发环境

开发环境主要包括：

- 运行环境: python2.7
- 编辑器: windows 下使用自带的 IDLE，linux 下使用 vim.
- 类库管理工具: pip

#### 打印中文"你好"

代码中涉及中文时，需要了解一点基础的[字符编码][intro-encoding]知识

python 代码文件的第一行声明使用 utf-8 编码，即可处理中文。

{% include_code deal with non_ASCII characters lang:python hello_world_cn.py%}

[intro-encoding]: /blog/2012/11/19/introduction-to-common-encoding/

#### python 中的 for 与 if

#### scope, namespace and package
