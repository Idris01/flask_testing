#! /bin/bash

aws cloudformation create-stack \
	--stack-name "${1:-testing}" \
	--template-body "file://${2:-resource.yaml}" \
	--parameter "file://${3:-parameters.json}" \
	--profile default \
	--region us-east-1

