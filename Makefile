up:
	@docker-compose up

down:
	@docker-compose down

create-lambda:
	@sh ./scripts/create_lambda.sh

create-dynamo-table:
	@sh ./scripts/create_table_name.sh

start-lambda-sink:
	@sh ./scripts/connectors/lambda_sink.sh

create-topic:
	@sh ./scripts/kafka/create_topic.sh

write-message:
	@sh ./scripts/kafka/producer_json_message.sh

create-producer:
	@sh ./scripts/kafka/create_producer.sh

create-consumer:
	@sh ./scripts/kafka/create_consumer.sh

start-setup: create_lambda start-lambda-sink
