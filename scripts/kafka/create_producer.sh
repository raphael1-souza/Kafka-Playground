#!/bin/bash

docker exec kafka /bin/bash -c "kafka-console-producer --broker-list localhost:9092 --topic first_example --property "parse.key=true" --property "key.separator=:"" $1
