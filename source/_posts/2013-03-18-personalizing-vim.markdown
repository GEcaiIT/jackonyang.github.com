---
layout: post
title: "vim plugin 与个性化设置的原理"
date: 2013-03-18 15:33
comments: true
categories: vim
---

#### vim `plugin` 类型及其相互关系

vim 设置与功能扩展均通过 `script` 来实现，这种 `script` 又叫 `plugin`。
常见 `plugin` 类型： 
vimrc, global plugin, filetype plugin, syntax plugin, compiler plugin
通常提到的 `vimrc` 也是一种 plugin. 或者说，所有的 plugin 都在配置 vim 的行为。

vimrc 是 `main` 插件(类似 `main` 函数)，所有的配置都可以在这一个文件中完成。
所有其他配置都直接或间接由该文件调用以生效。

与其他编程语言一样，为了提高源文件的可读性，增加代码的可重用性等，
衍生出了 global/filetype/syntax/compile 等4中主要的 plugin。
通过 `runtime`, `source` 等命令加载其他 `plugin`

<!--more-->

#### vim plugin 搜索路径

vim 通过路径区分 plugin 类型。
由`runtimepath`控制路径搜索顺序，一旦找到 plugin 停止搜索。

```vim default search path of vim
:set runtimepath?
runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/
vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
```

默认，vim 首先搜索 `$HOME/.vim`,其次是`$VIMRUNTIME`。
系统默认 plugin 都在 `$VIMRUNTIME` 中，
建议个人的所有设置全部放在 `$HOME/.vim` 中，与版本隔离，方便备份。
vim 中执行 `:echo $variable` 查看变量取值.


#### global plugin

global plugin 对全局生效，所以默认自动加载。

所在路径： `plugin` (`$VIMRUNTIME/plugin/, $HOME/.vim/plugin/`)

#### filetype plugin

filetype plugin 只对特定类型的文件生效，所以需要根据文件类型动态决定行为，
通过事件监听(autocmd)实现。基本原理如下：

``` vim sample of filetype plugin
" open filetype and filetype plugin
filetype plugin on
" define behavior when filetype change to `echo`
" here, the behavior is set to execute `echo "hello"`
autocmd FileType echo echo "hello"
" execute cmd below to watch the behavior
:set filetype=echo
```

如果没有显式声明 `set filetype=a` 的行为，则加载 `ftplugin` 目录下的 `a.vim`
``` vim sample of default filetype action.
:set filetype=c
"expt: load c.vim and change highlight in c syntax
"required: c.vim in ftplugin, it is in $VIMRUNTIME/ftplugin by default
```

注意：使用 ftplugin 时，需要 `filetype` 和 `filetype plugin` on
``` vim watch status of filetype
:filetype
filetype detection:ON  plugin:ON  indent:ON
```

#### 深入 filetype plugin

``` vim using filetype plugin
autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim
```

同样是事件监听机制，只是监听的事件变成: 创建或打开 .xml文件(BufNewFile,BufRead),
执行的行为是: 加载 `ftplugin/xml.vim`

#### syntax plugin

原理与 ftplugin 类似，监听 syntax 事件，加载 syntax 目录下的插件。
``` vim sample of syntax
syntax on
:set syntax=c
```

触发 filetype 事件的同时，也会触发对应的 syntax 事件。

#### compile plugin

同样是事件监听。

首先点击下载插件[compiler/python.vim](http://www.vim.org/scripts/script.php?script_id=1439)保存到 `~/.vim/compiler/`
该插件默认使用 `python2.x` 编译

``` vim sample of compiler plugin
" add below to vimrc
autocmd BufNewFile,BufRead *.py compiler python`
" open a file ending with .py and run
:make
" expt: errors printed
```

#### 更多的一些细节

1. nocompatible

	据说 vim 的很多特性依赖于 noncompatible.把 `set noncompaible`放在配置文件开始处即可。

	ubuntu 12.04 默认的 vimrc 先加载 ubuntu.vim， 其中设置了该选项。

2. vim feature-list

	vim 自身有很多 feature, plugin 大多依赖于相应的 feature.
	为了使 vimrc 通用，使用 plugin 前先用`has()` 检测feature 是否存在。
	`:version` 查看 feature-list

```vim vimrc check if feature exists
if has("syntax")
	syntax on
endif
```

{% include_code feature list lang:vim feature_list_vim.txt%}
