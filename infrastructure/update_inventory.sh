#! /bin/bash


aws ec2 describe-instances \
	--query 'Reservations[*].Instances[*].PublicIpAddress' \
	--profile default --region us-east-1 \
	--output text > inventory.txt

export WEB="$(cat inventory.txt)"
