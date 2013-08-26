---
layout: post
title: "vim plugin 管理"
date: 2013-08-27 03:10
comments: true
categories: vim
---

使用 bundle 管理 vim 插件，只需维护 vimrc 文件即可。

<!--more-->

bundle 的优势主要在于可以自动安装/卸载。

vim 的每一个插件相互独立，类似 github submodule 的概念。
但是，插件之间无法直接实现目录分离，导致无法直接使用 submodule 管理 vim 插件。
bundle 很好的解决了这个问题。

每个插件一个独立目录，方便管理又能直接在 vim 中生效。
同时不需要手动维护插件的安装/卸载。

曾经一度认为，vim 的插件配置好以后基本不需要改动。
实际上，这是一个非常单纯的想法。
没有什么可以一成不变的东西，也不可能一次把一个东西做到最好。
一次把一件事情做到最好，往往也是效率非常低的一种做法。
所以，改动是很频繁的。

[https://github.com/gmarik/vundle](https://github.com/gmarik/vundle) 介绍了基本用法。

`let g:vundle_default_git_proto = 'git'` 
makes Vundle use `git` instead default `https` when building absolute repo URIs
