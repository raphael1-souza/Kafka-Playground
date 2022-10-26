#!/bin/bash

echo "Creating iam role"
aws iam create-role --role-name lambda-ex  --endpoint-url http://localhost:4566 --assume-role-policy-document '{"Version": "2022-02-03","Statement": [{"Action": ["logs:CreateLogGroup","logs:CreateLogStream","logs:PutLogEvents"],"Effect": "Allow","Resource": "arn:aws:logs:*:*:*"}]}'

echo "Creating Lambda function"
aws lambda create-function --function-name my-function \
--zip-file fileb://function.zip --endpoint-url http://localhost:4566 \
--region us-east-1 --runtime python3.9 --role arn:aws:iam::000000000000:role/lambda-ex