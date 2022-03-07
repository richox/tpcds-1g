#!/bin/bash

"$HADOOP_HOME/bin/hadoop" fs -rmr -f "hdfs:///ks_tpcds_1g"
"$HADOOP_HOME/bin/hadoop" fs -put "./ks_tpcds_1g" "hdfs:///ks_tpcds_1g"
