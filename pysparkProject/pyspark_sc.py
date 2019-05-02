#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/5/2 22:40
# @Author  : Marsm
# @Site    : 
# @File    : pyspark_sc.py
# @Software: PyCharm

from pyspark import SparkContext

sc = SparkContext(appName='pyspark-demo',master='local[2]')
