#!/bin/bash

STACK_NAME=uy_arlan
REGION=us-east-1
CLI_PROFILE=uy_arlan

EC2_INSTANCE_TYPE=t2.micro

echo -e "\n\n=========== Deploying main.yml ==========="

aws cloudformation deploy \
	--region $REGION \
  --profile $CLI_PROFILE \
  --stack-name $STACK_NAME \
  --template-file main.yml \
  --no-fail-on-empty-changeset \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides \ 
    EC2InstanceType=$EC2_INSTANCE_TYPE