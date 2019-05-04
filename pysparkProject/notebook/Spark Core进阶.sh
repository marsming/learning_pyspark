#!/usr/bin/env bash

Spark核心概念
    Application:基于Spark的应用程序 = 1个driver + executors
    User program built on Spark. Consists of a driver program and executors on the cluster.
    用户程序建立在Spark上，由集群上的驱动程序和执行程序组成。

    Driver program:创建SparkContext
    The process running the main() function of the application and creating the SparkContext
    运行应用程序main()函数并创建SparkContext

    Cluster manager:集群管理器
    An external service for acquiring resources on the cluster (e.g. standalone manager, Mesos, YARN)
    获取集群资源的外部服务

    Deploy mode:部署模式
    Distinguishes where the driver process runs. 区分驱动程序运行位置。
    In "cluster" mode, the framework launches the driver inside of the cluster. 在集群模式下，在集群内部启动驱动程序。
    In "client" mode, the submitter launches the driver outside of the cluster. 在客户端模式下，在集群尾部启动驱动程序。

    Worker node:工作节点
    Any node that can run application code in the cluster
    在集群中运行应用程序的节点。

    Executor:应用程序执行器
    A process launched for an application on a worker node, that runs tasks and keeps data in memory or disk storage across them.
    启动工作节点上的应用程序，并将应用程序数据保存在内存或磁盘中。
    Each application has its own executors.
    每个应用程序都有自己的执行器

    Task:
    A unit of work that will be sent to one executor

    Job:
    A parallel computation consisting of multiple tasks that gets spawned in response to a Spark action (e.g. save, collect); you'll see this term used in the driver's logs.

    Stage:
    Each job gets divided into smaller sets of tasks called stages that depend on each other (similar to the map and reduce stages in MapReduce); you'll see this term used in the driver's logs.


Spark运行架构及注意事项


Spark和Hadoop重要概念区分
hadoop
1.一个MR程序=一个Job
2.一个Job = 1个或N个Task(Map/Reduce)
3.一个Task对应于一个进程
4.Task运行时开启进程，Task执行完毕后销毁进程。

Spark
1.Application = Driver(main方法中创建SparkContext) + Executors
2.一个Application = 0到多个Job
3.一个Job = 一个Action
4.一个Job = 1到N个Stage
5.一个Stage = 1到N个Task
6.一个Task对应一个线程，多个Task可以并行的运行在一个Executor进程中

Spark Cache详解

Spark Lineage详解

Spark Dependency详解

