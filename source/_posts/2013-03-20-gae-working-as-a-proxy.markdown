---
layout: post
title: "goagent 翻墙的核心配置流程"
date: 2013-03-20 19:11
comments: true
categories: [etc]
---

用 goagent 做代理，应该是当前最稳定的选择之一，而且免费。

目前已经有很多配置攻略，各种复杂、高端的感觉，看的很晕。
本文试图阐述其中的核心流程，保证参考其他有详细截图的攻略时不会被绕晕。
同时，为了提高配置效率，分步配置，每一步给出验证方法，检查该步配置是否正确。

<!--more-->

访问 google 旗下的网站时，建议全部使用 https 协议。
否则被 GFW 封掉的概率很高。

### goagent proxy 配置过程: 3 个必选，1 个可选

1. 获取一个 google 帐号，在 appengine 中 create application,
2. 上传 goagent server 至 application,
3. 本机运行 goagent local/proxy.py,
4. [可选] 安装浏览器插件。让 proxy 更智能，只对被 GFW 墙掉的网站使用代理。

##### google account 2-step verification

通常 create application 时需要把 google 帐号的安全机制升级为 2-step verification。
即: 绑定手机，每次登录都会收到验证码短信，正确输入才可登录成功。

大部分应用(手机/桌面)都无法获取验证码，所以不支持 2-step 验证。为了使用这些应用，google 提供了 application-specific password 来替代帐号密码。

[点击这里](https://accounts.google.com/IssuedAuthSubTokens?hide_authsub=1) 创建 application-specific password 供 application 使用，替代正常密码，无需短信验证，每个密码仅能使用一次，可以创建很多个密码供不同 app 使用。

[点击这里](https://accounts.google.com/SmsAuthConfig) 配置 2-step 验证方式

### google appengine application 

点击 [https://appengine.google.com/](https://appengine.google.com/)  create application

每一个 application 有一个唯一的标识( Application Identifier) 即 appid，其他 application 信息都可以随便填写。

### 上传 goagent server

推荐使用 appengine 而非 goagent 自带的 uploader。
[download Google App Engine SDK for Python](https://code.google.com/appengine/downloads.html) 这个页面打开速度各自慢，喝杯茶的功夫。

{path-to-goagent}/server/python/app.yaml 中修改 appid. 然后用 `python google_appengine/appcfg.py update goagent/server/python/` 命令上传

上传过程中要求输入 email/password, password 要用 application-specific password。
上传成功后，在 [google appengine](https://appengine.google.com/) 可以看到自己的 application，status 是 running

### 本地运行 local/proxy.py

修改 local/proxy.ini, appid 是刚刚上传的 appid。
因为目前 `google_cn` 已经不稳定，所以 profile 需要换一个稳定的，比如 `google_hk`

切换到 local 目录下执行 `python proxy.py` 否则启动 proxy 不会报错，但访问页面失败。

检查 proxy 启动是否成功的最简单方法是：
proxy 启动后会在命令行打印一串信息，其中一个是 listen address. 默认 `Listen Address: 127.0.0.1:8087`
在浏览器中输入这个地址，如果不是错误信息页面，则表示启动成功。

### 安装并配置浏览器插件 AutoProxy

1. 代理服务器: 添加新代理作为默认代理服务器，ip/port 与 `Listen Address: 127.0.0.1:8087` 一致。
2. 订阅代理规则：用于自动代理，即只对被墙的网站用代理。此处的代理规则是 gfwlist, 该文件是一个被 GFW 墙掉的网站列表，自动更新。 
3. 可能还需要手动导入证书。

插件配置成功以后，可以正常访问被墙的网站。
