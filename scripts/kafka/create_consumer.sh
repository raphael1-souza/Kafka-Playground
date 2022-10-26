#!/bin/bash

docker exec kafka /bin/bash -c "kafka-console-consumer --bootstrap-server localhost:9092 --topic first_example --from-beginning"
