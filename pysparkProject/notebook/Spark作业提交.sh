#!/usr/bin/env bash

spark on yarn:
spark作为客户端，他需要做的事情就是提交作业到yarn上去执行

yarn vs standalone:
    yarn:只需要一个节点，然后提交作业即可，不需要spark集群（不需要启动master和worker）
    standalone:spark集群上每个街道都需要部署spark,需要启动spark集群（需要启动master和worker）

提交作业到yarn上：
spark-submit /
--master yarn /
--name pyspark-yarn /
/home/hadoop/script/pyspark-wordcount.py /
/home/hadoop/data/word.txt /
/home/hadoop/wc


yarn支持client和cluster模式：driver运行在哪里
    client:提交作业的进程是不能停止的，否则作业就挂了
    cluster:提交完作业，那么提交作业端就可以断开了，因为driver运行在Application master 中的

如何查看已经运行完的yarn的日志信息：yarn logs -applicationId <applicationId>