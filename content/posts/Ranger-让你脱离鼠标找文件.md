---
title: Ranger 让你脱离鼠标找文件
date: 2020-06-06T17:04:05+08:00
lastmod: 2020-06-06T17:04:05+08:00
author: alm
cover: https://tva1.sinaimg.cn/large/007S8ZIlly1gfitxqxh28j30rs0ku3zn.jpg
categories: ["Drop your mouse"]
tags: ["ranger", "iterm2","文件管理"]
# showcase: true
draft: false
---

我是怎么被终端操作圈粉的

<!--more-->


<div align="center">
<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=330 height=86 src="//music.163.com/outchain/player?type=2&id=31356283&auto=1&height=66"></iframe>
</div>


## 为什么我需要[Ranger](https://ranger.github.io/)？


> “比如我，写博客需要先到博客目录下运行hugo命令来新建一个markdown文件，然后才能打开相关软件去写博客，这非常不方便”

>> “在终端运行命令时常需要频繁的切换目录，这对于我来说也是很难受的”

在拥有Ranger前，其实我对命令行操作还是很抵触的，不理解为什么有这么好的图形界面还要去使用丑陋的命令行，简单的换个目录都需要不断的cd操作，cd到崩溃。可是直到前两天看到这个视频.....

<div align="center">
<iframe width="700" height="600" src="//player.bilibili.com/player.html?aid=64990176&bvid=BV1b4411R7ck&cid=112804027&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>
</div>

看完第一遍，诶？:eyes:好像还不错哦。

看完第二遍，果断[brew](https://brew.sh/)起来:beers:

```
brew install ranger
```

> 命令仅适用于MAC，如果是WIN用户，需要先买一台MAC然后:dog:.....

装完Ranger，为了达到视频中up主的效果，又到up主的github上clone了Ranger的配置文件

```
git clone https://github.com/theniceboy/.config/tree/master/ranger ~/.config/ranger
```

到此，我就也能实现快捷跳转了

> 简单的跳转

<div align="left">
<img src="https://media.giphy.com/media/m9uUDUB0cWDRyhyPq5/source.gif" width="600" height="400" alt="跳转"/>
</div>


> 创建文件夹，再创建文件，最后删除，从未如此顺滑

<div align="left">
<img src="https://media.giphy.com/media/UtuHqIFKl4PQoukBer/source.gif" width="600" height="400" alt="文件操作"/>
</div>

> 先暂时忽略我这吓人的背景，我还没找到合适的高清背景图:sob:

当然这些只是一些入门级操作，Ranger提供的自定义快捷键使得它能够和vim一样实现许多不可思议的操作，我根据[盼欲](http://www.huangpan.net/posts/ji-ke/2019-08-21-ranger.html)的博客（这是我见过的对Ranger配置总结最好的一个）魔改了自己的配置，现已放在github上。

> https://github.com/appleloveme/ranger 将这个克隆到自己的```~/.config/ranger```目录下就ok了

下面的表格是我自己设置的最常用的快捷键映射，对于一些其他特殊的需求可以根据刚才分享的博客来定制

## 我可以利用Ranger完成什么操作？

|              功能              | 快捷键                |
|              ----              | ----                  |
|          彻底删除文件          | dD                    |
|            复制文件            | yy                    |
|            粘贴文件            | pp                    |
|             重命名             | a                     |
|            回到桌面            | gD（Go file Desktop） |
|      打开我的博客文章目录      | gfb（Go file blog）   |
|     跳转到Ranger的配置目录     | gfr（Go file ranger） |
|      打开我的vim配置目录       | gfn（Go file nvim）   |
|    跳转当前目录的第一个文件    | gg                    |
|   跳转当前目录的最后一个文件   | G                     |
|         显示隐藏文件夹         | zh                    |
|     向上或向下移动n个文件      | 【数字】+ 上下方向键  |
|            选中文件            | 空格键                |
|              反选              | v                     |
| 操作当前目录的父级目录向上移动 | [                     |
| 操作当前目录的父级目录向下移动 | ]                     |

ok，我觉得这些快捷键已经可以满足日常生活了，操作速度应该是要比鼠标快的，当然要是配上[iTerm2](https://www.iterm2.com/)的话，那简直是飞一般的速度，你可以将iTerm2配置成连按两次```commend```键召唤出终端

<div align="center">
<img src="https://tva1.sinaimg.cn/large/007S8ZIlly1gfiqsh19l8j31ff0u0wsb.jpg" width="600" height="400" alt="设置iTerm2"/>
</div>

这样就可以实现在终端进行一顿操作之后，再按两次```commend```键回到原来的工作空间，整个过程无痕衔接，太舒服了

## 还可以更快吗？

可以配置终端快捷键

```
alias r=ranger
```

设置```r```快速启动Ranger，到这里，就可以尽情享受Ranger带来的便利了。


好了，这一期的分享到这里就结束了，如果你有更快的操作欢迎留言讨论，互相促进:blush:







