#!/bin/bash

######################################
# Author: Bolusani Akhil
# Date: 25/4/2026

# This scripts output the node health

# Version: v1
# ####################################
set -x #debug mode

set -e # exit the error when there is an error

set -o pipefail

#We can also use below command instead of above 3 commands But the below one is not recommended
#set -exo pipefail

awsdfed | echo "Hi"

df -h

free -g

nproc
ps -ef | grep amazon | awk -F" " '{print $2}'
ps -ef | grep amazon | awk -F" " '{print $2}'
