---
title: 'DevOps: Day 16'
tags: [DevOps]

---

# DevOps: Day 16

AWS Services for DevOps

- aws is a cloud provider (IaaS (Infrastructure as a Service)  and PaaS (Platform as a Service)) which provides upto 200 services. They also provide SaaS (Software as a Service).
- One of the key roles of a DevOps is automation to improve efficiency.

* AWS Services for DevOps Engineers
   - EC2
   - VPC (Virtual Private Cloud): Secures the EC2 instance (aws resources). Here there are security rules, CIDR (subnet ranges), inbound and outbound traffic rules.
   - EBS (Volume(s)): Volumes/Storage related services. e.g. EBS, EFS etc. This volume can be mounted, unmounted, snapshotted etc. 
   - S3 (storage): Storage related services. Cheap and extensible. Currently whatever is being stored in this S3 is encrypted by default.
   - IAM (Identity and Access Management): This is a critical and key component and every tool/application used is first to be configured permission wise. Read, Write access. 
   - Cloud Watch (monitoring): monitoring and observability. Important for highly reliable and sustainable application. Have access to every action carried out on aws. Another thing is you can trigger an action based on any event or action carried out. More like a security guard. Checks against misuse and compliance.
   - LAMDA: Executing an action like Sending mail notification. A serverless compute. Used for executing a short action/functionality that can be executed automatically.
   - Cloud Build Services: This provides a kind of CI/CD and some of them are: aws code pipeline, aws code build, aws code deploy. Code pipeline is like Jenkins pipeline (what is the node, what is the action you want to perform, what are the naming actions etc.). Code build service is a fully manage build service takes care of: Compiling of code, running of tests and provides software packages). Code deploy takes care of deploying the applications onto a server like the EC2 instance.
   - AWS configuration: Handles all configurations created on aws. Remedy or code related actions can be done/carried out here.
   - Billing and costing: information on how much is being spent on any of the services.
   - AWS KMS (Key Management Service): Keep your data secured always. Secrets, certificates,  configuration files etc.
   - Cloud trail and cloud watch: Cloud trail is used to enable operational risk reading. Information about what had happened in time past, it records API activities and stores the logs for a given period of time. 
   - AWS EKS (Elastic Kubernetes Service): learn about this 100%. It is a managed Kubernetes provided by aws.
   - Fargate, ECS (Elastic Container Service): the difference between EKS and ECS tho both being container services, EKS is a managed Kubernetes while ECS is a aws proprietory service. 
   - ELK (Elastic Search): Retrieves information on microservices that are being run. 