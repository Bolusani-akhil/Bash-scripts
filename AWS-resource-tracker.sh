#!/bin/bash


#########################
# Author : Akhil
# Date : 26th April
#
# Version : V1
#
# This script will report the AWS resource usage
########################


# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM Users

set -x

# list s3 buckets
echo "list of s3 buckets"
aws s3 ls > resourceTracker

#list ec2 commands
echo "list of ec2 instances"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda functions
echo "list of lambda functions"
aws lambda list-functions >> resourceTracker

#list IAM users
echo "list of IAM users"
aws iam list-users
