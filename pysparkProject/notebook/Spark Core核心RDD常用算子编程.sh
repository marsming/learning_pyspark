#!/usr/bin/env bash
RDD常用操作：
	Transformations:从已经存在的数据集创建一个新的数据集

	Actions:经过计算将结果返回Driver端

Transformation算子：
map:
	map(func):将func函数作用到数据集的每一个元素上，生成一个新的分布式数据集并返回

filter:
	filter(func):选出所有func返回值为True的元素，生成一个新的分布式数据集并返回

flatMap:
	flatMap(func):输入的item能够被map到0或多个items输出，返回值是一个Sequence

groupByKey:把相同的key的数据分发到一起

reduceByKey：把相同的key的数据分发到一起并进行相应的计算
	mapRdd.reduceByKey(lambda a,b:a+b)

union:

join:
	inner join
	outer join:left/right/full

Action算子:

collect:
take:
reduce:
foreach:
saveAsTextFile:

