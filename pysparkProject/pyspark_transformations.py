#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2019/5/2 22:45
# @Author  : Marsm
# @Site    : 
# @File    : pyspark_transformations.py
# @Software: PyCharm

from pyspark import SparkContext

sc = SparkContext(appName="pyspark_transformations", master="local[2]")


def my_map():
    word = ['hadoop', 'hive', 'spark', 'storm', 'flume', 'python']
    words = sc.parallelize(word)
    words_map = words.map(lambda x: (x, 1))
    print(words_map.collect())


def my_filter():
    data = [1, 2, 3, 4, 5, 6]
    rdd1 = sc.parallelize(data)
    result = rdd1.filter(lambda x: x >= 4)
    print(result.collect())


def my_flatMap():
    data = ['hello spark', 'hello python', 'hello word']
    result = sc.parallelize(data).flatMap(lambda x: x.split(' '))
    print(result.collect())


def my_groupByKey():
    data = ['hello spark', 'hello python', 'hello word']
    mapRdd = sc.parallelize(data).flatMap(lambda x: x.split(' ')).map(lambda x: (x, 1))
    groupByKeyRdd = mapRdd.groupByKey()
    print(groupByKeyRdd.collect())
    print(groupByKeyRdd.map(lambda x: (x[0], list(x[1]).count(1))).collect())


def my_reduceByKey():
    data = ['hello spark', 'hello python', 'hello word']
    mapRdd = sc.parallelize(data).flatMap(lambda x: x.split(' ')).map(lambda x: (x, 1))
    reduceByKeyRdd = mapRdd.reduceByKey(lambda a, b: a + b)
    print(reduceByKeyRdd.collect())


def my_union():
    a = sc.parallelize([1, 2, 3])
    b = sc.parallelize([3, 4, 5])
    print(a.union(b).collect())


def my_distinct():
    a = sc.parallelize([1, 2, 3])
    b = sc.parallelize([3, 4, 5])
    print(a.union(b).distinct().collect())


def my_join():
    a = sc.parallelize([('A', 'a1'), ('C', 'c1'), ('D', 'd1'), ('F', 'f1'), ('F', 'f2')])
    b = sc.parallelize([('A', 'a2'), ('C', 'c2'), ('D', 'd3'), ('E', 'e1')])
    print(a.join(b).collect())  # inner join
    print(a.leftOuterJoin(b).collect())  # left join
    print(a.rightOuterJoin(b).collect())  # right join
    print(a.fullOuterJoin(b).collect())  # full outer join


# my_map()
# my_filter()
# my_flatMap()
# my_groupByKey()
# my_reduceByKey()
# my_union()
# my_distinct()
my_join()

sc.stop()
