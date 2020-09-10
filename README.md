# WebShell AIHunter - 机器学习算法检测Webhell

<p align="center">
    <a><img src="https://raw.githubusercontent.com/Coldwave96/WebShell-AIHunter/master/logo.png"/></a>
</p>

<p align="center">
    <a><img src="https://img.shields.io/badge/Python-3-blue"></a>
    <a><img src="https://img.shields.io/github/v/release/coldwave96/WebShell-AIHunter"></a>
    <a><img src="https://img.shields.io/github/issues/coldwave96/WebShell-AIHunter"></a>
    <a><img src="https://img.shields.io/badge/Platform-Linux%20%7C%20Windows-orange"></a>
    <a><img src="https://img.shields.io/github/license/coldwave96/WebShell-AIHunter"></a>
    <a><img src="https://img.shields.io/github/forks/Coldwave96/WebShell-AIHunter"></a>
    <a><img src="https://img.shields.io/github/stars/Coldwave96/WebShell-AIHunter"></a>
    <a><img src="https://img.shields.io/github/contributors/Coldwave96/WebShell-AIHunter"></a>
</p>

<p align="center">
    <a href="https://coldwave96.github.io/">Welcome to my personal blog（＾◇＾）</a>
</p>

<hr>

## 工具介绍

- [⇥] 机器学习NB算法（朴素贝叶斯算法）

- [⇥] 词袋加IF-TDF模型对数据进行预处理及特征提取

- [⇥] 基于文本的WebShell检测

- [⇥] 支持检测php，asp和jsp三种类型的Webshell

## 数据格式

⚠️⚠️ Data文件夹形式默认结构如下：

* Data
    * check
    * normal
        * asp
        * jsp
        * php
    * WebShell
        * asp
        * jsp
        * php

> 💎 Tips:
>
> 1.训练时需自行填充Data文件夹下对应目录的文件
>
> 2.WebShell文件夹存放3种格式的WebShell文件，normal文件夹存放3种格式的正常文件，check文件夹下存放待检测的文件
>
> 3.待检测文件无需分类别存放
>
> 4.所有文件下可以有子文件，但是不支持压缩文件包。
>
> 5.训练和检测时只会打开对应格式的文件，错误格式文件会自动跳过
>
> 6.Release只会发布训练好的模型和检测脚本

## 使用方法

### 检测

* 只需要下载Release的版本，将待检测文件放入Data/check文件夹下，执行`python check.py`命令即可

### 训练

* 下载整个项目的源代码

* 按照[数据格式](#webshell-aihunter---webhell)部分分别填充黑白样本文件

* 依次执行`python train_php.py`、`python train_asp.py`、`python train_jsp.py`命令即可训练模型

## 下一步计划

* 代码优化 + 算法更新 + 添加更多的Webshell静态检验（动态污点追踪暂时想不了==）

* 更多类型检测 + 自主指定文件夹

* 考虑建立黑样本模型，类似黑名单机制（理论上白样本模型应该更好可是不切实际）

* 另外求更多更好的黑样本 🙏🙏
