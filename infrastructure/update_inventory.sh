#! /bin/bash

echo "[web]" > inventory.txt

aws ec2 describe-instances \
	--query 'Reservations[*].Instances[*].PublicIpAddress' \
	--output text >> inventory.txt
