#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/5/1 20:56
# @Author  : Marsm
# @Site    : 
# @File    : pyspark_demo.py
# @Software: PyCharm
from pyspark import SparkContext

sc = SparkContext()

rdd = sc.parallelize([1, 2, 3, 4, 5, 6])

print(rdd.collect())


sc.stop()
