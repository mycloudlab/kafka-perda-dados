#!/bin/bash



/opt/kafka/bin/kafka-consumer-perf-test.sh \
--topic testeperda \
--broker-list kafka1:9092,kafka2:9092,kafka3:9092 \
--messages 3000 
