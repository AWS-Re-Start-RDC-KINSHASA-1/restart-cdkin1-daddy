#!/bin/bash

#script to zip directories and uoload it to Amazo Simpe Storage Service (S3)
# Define the directories to backup
dir1="/home/to/Dir1"
dir2="/home/to/Dir2"
dir3="/home/to/Dir3"
dir4="/home/to/Dir4"

# Create tar packages for each directory
tar -czf /tmp/backup1.tar.gz -C "$dir1" .
tar -czf /tmp/backup2.tar.gz -C "$dir2" .
tar -czf /tmp/backup3.tar.gz -C "$dir3" .
tar -czf /tmp/backup4.tar.gz -C "$dir4" .

# Upload tar packages to S3 bucket
aws s3 cp /tmp/backup1.tar.gz s3://Bucket-name/
aws s3 cp /tmp/backup2.tar.gz s3://Bucket-name/
aws s3 cp /tmp/backup3.tar.gz s3://Bucket-name//
aws s3 cp /tmp/backup4.tar.gz s3://Bucket-name//

# Clean up temporary files
rm /tmp/backup1.tar.gz
rm /tmp/backup2.tar.gz
rm /tmp/backup3.tar.gz
rm /tmp/backup4.tar.gz
