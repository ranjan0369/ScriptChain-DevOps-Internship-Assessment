#!/bin/bash

aws lambda create-function \
    --function-name test-lambda-function \
    --runtime python3.10 \
    --handler app.lambda_handler \
    --zip-file fileb://lambda.zip \
    --role arn:aws:iam::992382837099:role/lambdaExecRole