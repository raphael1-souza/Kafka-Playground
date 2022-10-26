#!/bin/bash

echo "Sending messages to topic dynamodb_topic"
seq -f '{"payload":{"id":"id_teste%g","body":{"key_a":"teste","key_b":3}}}' 10| docker exec -i schema-registry kafka-json-schema-console-producer --broker-list kafka:9092 --property schema.registry.url=http://schema-registry:8081 --topic first_example --property value.schema='{"$schema":"http://json-schema.org/draft-04/schema#","type":"object","properties":{"payload":{"type":"object","properties":{"id":{"type":"string"},"body":{"type":"object","properties":{"key_a":{"type":"string"},"key_b":{"type":"integer"}},"required":["key_a","key_b"]}},"required":["id","body"]}},"required":["payload"]}'
