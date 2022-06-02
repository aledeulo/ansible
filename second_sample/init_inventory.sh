#! /bin/bash

echo "[all]" > inventory

# Get the public IP addresses of ec2 instances in an aws account
aws ec2 describe-instances \
   --query 'Reservations[*].Instances[*].PublicIpAddress' \
   --output text >> inventory