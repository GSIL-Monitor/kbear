#!/bin/bash

cd /opt/ctrip/app2/kafka-jmx-exporter
if [ "$1" = "daemon" ]
then
    java -jar jmx_exporter.jar 5556 kafka.yml > kafka-jmx_exporter.out &
else
    java -jar jmx_exporter.jar 5556 kafka.yml > kafka-jmx_exporter.out
fi
