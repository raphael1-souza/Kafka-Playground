#!/bin/bash

curl -X POST -H "Content-Type: application/json" --data '{
     "name": "company-update-logs-connector",
     "config": {
         "connector.class": "com.nordstrom.kafka.connect.lambda.LambdaSinkConnector",
         "tasks.max": "1",
         "topics": "management.company.cmd.updatewithdata.0",
         "value.converter": "org.apache.kafka.connect.storage.StringConverter",
         "aws.region": "us-east-1",
         "aws.lambda.function.arn":"arn:aws:lambda:us-east-1:000000000000:function:my-function",
         "http.proxy.host": "http://localstack:4566"
     }
 }' http://localhost:8083/connectors/


# "aws.lambda.proxy.url": "http://localstack:4566",
#          "aws.lambda.function.name": "my-function",
#          "aws.lambda.invocation.mode": "sync",
#          "aws.lambda.batch.size": "10",
#          "aws.region": "us-east-1",
#          "behavior.on.error": "fail",
#          "reporter.bootstrap.servers":"kafka:9092",
#          "reporter.result.topic.replication.factor": "1",
#          "reporter.error.topic.replication.factor": "1",
#          "confluent.topic.bootstrap.servers": "kafka:9092",
#          "confluent.topic.replication.factor": "1"