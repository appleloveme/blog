---
title: Neovim:吾与mouse孰美
date: 2020-06-07T10:22:00+08:00
lastmod: 2020-06-07T10:22:00+08:00
author: alm
cover: https://tva1.sinaimg.cn/large/007S8ZIlly1gfjncmve2ej30rs0ijdhd.jpg
categories: ["drop your mouse"]
tags: ["nvim", "ranger", "iTerm2"]
---

为什么我会选择Neovim（nvim）

<!--more-->

<div align="center">
<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width="100%" height=86 src="//music.163.com/outchain/player?type=2&id=1449678180&auto=0&height=66"></iframe>
</div>

> 前边介绍的Ranger是为了作为一道开胃菜，只有Ranger是无法发挥它的真正作用的，这篇文章将会介绍Ranger的小伙伴nvim。

> 关于Ranger的操作可以移步[《Ranger 让你脱离鼠标找文件》](https://appleloveme.github.io/posts/ranger-%E8%AE%A9%E4%BD%A0%E8%84%B1%E7%A6%BB%E9%BC%A0%E6%A0%87%E6%89%BE%E6%96%87%E4%BB%B6/)

### PEACE


## 为什么是Neovim？

这里以写博客的场景为例，为了写一篇文章然后发布到自己的博客，我们通常需要打开终端，进入到博客目录，然后创建新的md文件，再使用markdown编辑器（例如typera、vscode等）书写文章，书写完毕需要打开终端生成网站并上传到github。

整个过程伴随着频繁的工具切换，我们的双手需要不断的在键盘和鼠标之间来回切换，这对于追求工作和书写体验的我来说是无法忍受的，所以以前的我不会创建自己的博客，就因为这“三分钟的书写，十分钟的后勤”，直到前两天我看到了一个[视频](https://www.bilibili.com/video/BV164411P7tw?t=378)（没错，还是TheCW大神的）

<div align="center">
<iframe width="100%" src="//player.bilibili.com/player.html?aid=55498503&bvid=BV164411P7tw&cid=97032762&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>
</div>

就是这个视频打开了我在终端搬砖的新世界，边看边打开了自己的终端，开始:beer:，输入

```
brew install neovim
```

然后就是根据自己的习惯来配置nvim的快捷键和安装一些强大的插件，这里我将自己的nvim配置已经上传到了我的github，关于如何使用这套配置，后边会提到。

```
git clone https://github.com/appleloveme/nvim ~/.config/nvim
```

安装好配置，终端输入nvim就可以自动安装插件，安装完毕后重新启动nvim，就会出现

<div align="center">
<img src="https://tva1.sinaimg.cn/large/007S8ZIlly1gfivb1uil1j31cj0u0adq.jpg" width="100%" height="100%" alt="我的nvim欢迎界面"/>
</div>

代表已经成功安装nvim

> 一些必要的依赖请移步百度，一般会需要python3、python2、pip3等等，这些依赖的安装都很简单

安装成功后就可以愉快的使用nvim了，这里我做了一个[视频](https://www.bilibili.com/video/BV1wa4y1Y78m)来展示我是如何使用nvim来写博客的

<div align="center">
<iframe width="100%" src="//player.bilibili.com/player.html?aid=668496515&bvid=BV1wa4y1Y78m&cid=199492972&page=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>
</div>

> 第一次做视频没有加上背景音乐，建议各位带上自己的网易云音乐进行观看；开头有1：10的黑屏，我也不知道咋出来的:joy:

感受一下使用nvim+ranger编写markdown的快乐

## nvim的快捷键那么多，学习成本太大了

亲身经历，两天的时间足够将自己的nvim水平提升到使用ide搬砖的水平，当然如果要熟练使用的话，还是需要一定时间来养成肌肉记忆，到那时nvim会让你写代码时摆脱掉鼠标的折磨。

初学nvim可以将快捷键改成自己方便记忆的组合，然后通过写代码不断加深记忆。就比如我在写代码时频繁的需要打开文件目录进行切换，那么我就可以设置`t`（代表tree）打开文件树；在ide搬砖时切换tab页也是经常遇到的，那么我就可以设置`bv`（`b`代表`tab`，`v`在键盘上位于`b`的前边，所以是打开上一个`tab`）为打开上一个`tab`，`bn`代开下一个`tab`（与`bv`同理）；快速的选中""、[]、()、<>等符号之间的内容可以使用`vi`+符号，例如`vi`+"、`vi`+(等等，`v`代表visual模式，`i`代表inside。所以快捷键的设置都是有规律的，掌握着规律其实不用专门去记忆。

下面是我的配置中经常用到的快捷键

> 秉承编辑模式只负责输入文本，其他操作尽量都放在正常模式下进行

| 快捷键            | 功能                                                 | 模式           |
| :-:               | :-:                                                  | :-:            |
| q                 | 保存并退出                                           | normal         |
| Q                 | 不保存退出                                           | normal         |
| s                 | 保存                                                 | normal         |
| t                 | 打开文件树                                           | normal         |
| /                 | 搜索                                                 | normal         |
| n                 | 搜索下一个                                           | normal         |
| N                 | 搜索上一个                                           | normal         |
| jk                | 退出编辑模式                                         | insert         |
| u                 | 撤回修改                                             | normal         |
| <Ctrl>+r          | 取消撤回                                             | normal         |
| ;fn               | 打开浮动终端                                         | normal         |
| ;fh               | 隐藏浮动终端                                         | normal         |
| ;fk               | 关闭浮动终端                                         | normal         |
| [l                | 跳到行首                                             | normal         |
| ]l                | 跳到行尾                                             | normal         |
| ;cc               | 注释所在行                                           | normal         |
| ;cu               | 取消注释                                             | normal         |
| h                 | 在光标后边的字符插入                                 | normal         |
| G                 | 移动到文件底部                                       | normal         |
| gg                | 移动到文件顶部                                       | normal         |
| ;sa               | 全选                                                 | normal         |
| >                 | 增加缩进                                             | normal         |
| <                 | 减少缩进                                             | normal         |
| Shift+上下方向键  | 快速翻页                                             | normal、insert |
| <ctrl>+v          | 进入块选择模式（选中后可进行删除、替换、插入等操作） | normal         |
| <ctrl>+F5         | 运行python代码                                       | normal、insert |
| <ctrl>+上下方向键 | 进入块选择模式（可以在指定行的头部统一加字符）       | normal         |
| vi+括号类符号     | 选中符号内内容                                       | normal         |
| yi+括号类符号     | 复制符号内内容                                       | normal         |
| di+括号类符号     | 删除符号内内容                                       | normal         |
| 数字加方向键      | 向该方向移动n个次                                    | normal、visual |
| ;rs               | 开始录制脚本                                         | normal         |
| ;re               | 停止录制脚本                                         | normal         |
| ;R                | 回放脚本                                             | normal         |

以上并不代表全部的快捷键，只是列出了我已经学会用的一小部分，有特殊需要的可以自己开发。

ok，这一期的分享就先到这里，欢迎留言讨论，互相促进:sparkles:
