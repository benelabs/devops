---
title: 'DevOps: Day 10'
tags: [DevOps]

---

# DevOps: Day 10

Write a script to report The usage of aws in your project.

- Organizations uses the cloud simply because of maintainability and cost. So tracking resource usage is very important.
- For example of EC2, S3, lambda & IAM.
- often times this kind of report is sent to the dashboard.
- We can also schedule this report using cronjobs so that this report will be published at a particular time Everyday.

- STEPS FOR CARRYING OUT THIS TASK
* ssh into your virtual machine.
* configure your local machine with aws authentication configuration  using aws configure.
* We will be tracking aws s3, aws EC2, aws lambda & IAM.
* aws s3 ls: list S3 buckets.
* aws ec2 describe-instances: List EC2 instances.
* aws lambda list-functions: list lamnda.
* aws iam list-users: list IAM users.

- we can always use the jq (json parser) there is also yq (yaml parser) to extract any piece of information from A json. That is it can extra a single field of information from a complete json.
- Finally, we are to integrate our script to a crontab.

## Assignment
- Write same script and integrate it with crontab