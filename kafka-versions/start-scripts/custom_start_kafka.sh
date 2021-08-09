#!/bin/bash

export ZOOKEEPER_SERVERS=$1
echo $2

cp /opt/kafka/config/server.properties /opt/server.properties

sed -r -i "s/(zookeeper.connect)=(.*)/zookeeper.connect=${ZOOKEEPER_SERVERS}/g" /opt/server.properties
sed -r -i "s/(broker.id)=(.*)/broker.id=$2/g" /opt/server.properties

echo "advertised.listeners=PLAINTEXT://$(hostname -i):9092" >>/opt/server.properties


#yum install nc -y

scripts/wait-for-zookeeper.sh $3

/opt/kafka/bin/kafka_exporter --kafka.server=kafka2:9092 --kafka.version=2.5.0  &
/opt/kafka/bin/kafka-server-start.sh /opt/server.properties

