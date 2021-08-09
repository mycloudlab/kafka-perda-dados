#!/bin/bash

/opt/kafka/bin/kafka-producer-perf-test.sh \
--topic testeperda \
--throughput 1 \
--num-records 3000 \
--record-size 128 \
--producer-props acks=all \
bootstrap.servers=kafka1:9092,kafka2:9092,kafka3:9092 


