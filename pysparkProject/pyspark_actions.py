#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/5/2 23:53
# @Author  : Marsm
# @Site    : 
# @File    : pyspark_actions.py
# @Software: PyCharm
from pyspark import SparkContext

sc = SparkContext(appName="pyspark_transformations", master="local[2]")

def my_action():
    data = [1,2,3,4,5,6]
    rdd1 = sc.parallelize(data)
    print(rdd1.collect())
    print(rdd1.reduce(lambda a, b: a + b))
    print(rdd1.take(2))
    rdd1.foreach(lambda x:print(x))


my_action()


sc.stop()