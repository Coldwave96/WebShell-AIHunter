# WebShell_Dection_System

### 基于文本的WebShell检测系统

    系统采用机器学习算法（朴素贝叶斯算法），利用词袋加IF-TDF模型对数据进行预处理及特征提取，实现了基于文本的WebShell检测系统，目前支持检测php，asp和jsp三种类型的WebShell文件。

### 调用方法

    首先是模型的训练，分别运行train_php，train_asp，train_jsp文件，将自动生成vocabulary_php.pickle，vocabulary_asp.pickle，vocabulary_jsp.pickle这3个字典文件以及GNB_php.pickle，GNB_asp.pickle，GNB_jsp.pickle这3个模型文件。
    检测只需运行check.py文件即可。
    
### 数据格式
    
    数据存放文件夹形式默认结构如下：
    >Data
        >check
        >normal
            >asp
            >jsp
            >php
        >WebShell
            >asp
            >jsp
            >php
     PS.WebShell文件夹存放3种格式的WebShell文件，normal文件夹存放3种格式的正常文件，check文件夹下存放待检测的文件。
        所有文件下可以有子文件，但是不支持压缩文件包。
