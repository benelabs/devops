---
title: 'DevOps: Day 4'
tags: [DevOps]

---

# DevOps: Day 4

### Virtual Machines in AWS and Azure

#### AWS

- For creation of virtual machine, on AWS, one has to make use of EC2. It has a console, as well as an api one can call directly to create a virtual machine and recieve a access login to the virtual machine.
- In using this API, your request should be valid i.e. following all the standards that the EC2 is expecting, then it should be authenticated: the user should have access to the aws, then finally authorized: that is have permission to create virtual machine.
- Once successfully executed, you will get an EC2 instance.
- This process can be automated using either the aws cli or the aws api (boto3 for python), aws cft (cloud formation template), there is also aws cdk (cloud development kits) and there is also a competitor called terraform.
- EC2 is an infrastructure.
- Terraform is more efficient when you are operating a hybrid cloud setup.

