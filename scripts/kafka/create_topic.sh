#!/bin/bash

docker exec kafka /bin/bash -c "kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 3 --topic first_example"
