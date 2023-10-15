#!/bin/sh

# set username to first argument or default to 'nextflow-hackathon'

USERNAME=${1:-nextflow-hackathon}

# Set AWS profile and region

AWS_PROFILE=hackathon
AWS_REGION=us-west-2
AWS="aws --profile $AWS_PROFILE --region $AWS_REGION"
BUCKET=s3://nextflow-hackathon

# ARNs

BUCKET_POLCY=arn:aws:iam::850787717197:policy/NF-Hackathon-Bucket-Access
GROUP_NAME=Hackathon_Users
GROUP_ARN=arn:aws:iam::850787717197:group/$GROUP_NAME
ROLE_ARN=arn:aws:iam::850787717197:role/Hackathon-Access

# List bucket
$AWS s3 ls $BUCKET

# Create user in group and print credentials

$AWS iam create-user --user-name $USERNAME
$AWS iam add-user-to-group --user-name $USERNAME --group-name $GROUP_NAME
$AWS iam create-access-key --user-name $USERNAME
