#!/bin/bash


function environment(){
    if [ -d /usr/local/bin/aws ]
    then 
    echo "Directory exists"
    aws --version
    fi
    if [ -f /usr/local/bin/terraform ]
    then 
    echo "Files Exists/n"
    terraform --version
    fi
}

function aws_credentials(){
    SOURCE=/Users/navaneethreddy/Downloads/credentials
    DESTINATION=~/.aws/credentials
    if [[ -f /Users/navaneethreddy/Downloads/credentials ]]
    then
    mv $SOURCE $DESTINATION
    echo $?
    echo "Moved the Credentials"
    fi
}

function aws_inventory(){
    echo "Listing all the available Buckets"
    aws iam list-roles --output table
    aws ec2 describe-instances --query 'Reservations[].Instances[].[Tags[?Key==`Name`].Value[] | [0], Placement.AvailabilityZone,InstanceType,State.Name]' --output table
    aws s3 ls --output table
}
environment
aws_credentials
aws_inventory