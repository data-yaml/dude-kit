#!/bin/sh

PROFILE=sales
REGION=us-west-2
AWS="aws --profile $PROFILE --region $REGION"
BUCKET=s3://nextflow-hackathon

# List bucket
$AWS s3 ls $BUCKET
