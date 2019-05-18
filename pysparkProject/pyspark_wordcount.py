#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/5/2 21:01
# @Author  : Marsm
# @Site    : 
# @File    : pyspark_wordcount.py
# @Software: PyCharm
from pyspark import SparkContext

sc = SparkContext()
# 读取文件
file = sc.textFile('./data/word.txt')
# 获取每行数据并将每个单词打个标签1
word = file.flatMap(lambda x: x.split(',')).map(lambda a: (a, 1))
# 对每个单词计数，并按单词出现的次数降序排序
words = word.reduceByKey(lambda a, b: a + b).sortBy(lambda x: x[1], ascending=False)
for k, v in words.collect():
    print('{0}:{1}'.format(k, v))

sc.stop()
