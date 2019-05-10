#!/usr/bin/env bash

设置spark日志持久化：
    设置history server
    在spark的conf目录下的spark-defaule.conf中配置
    spark.eventLog.enabled   true
    spark.eventLog.dir      hdfs://hadoop001:8020/spark_eventLog

    启动historyServer
    ./sbin/start-history-server.sh
    具体可参考官网


序列化：
把对象转换为字节序列的过程称为对象的序列化。
把字节序列恢复为对象的过程称为对象的反序列化。
序列化又称串行化，其目的是以某种存储形式使自定义对象持久化，或者将这种对象从一个地方传输到另一个地方。
    序列化的作用：
    把对象的字节序列永久地保存到硬盘上，通常存放在一个文件中
    在网络上传送对象的字节序列

在spark中，默认使用的是java的序列化Serializable
还可以使用Kryo序列化


内存管理：


广播变量：


数据本地性：



