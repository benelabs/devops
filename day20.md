---
title: 'DevOps: Day 20'
tags: [DevOps]

---

# DevOps: Day 20

* Everything about Terraform

- As a user, you talk to the terraform provider which then inturn talk to the target api (e.g., azure, aws, gcp etc.). So terraform will convert your configuration files into a form that aws, azure or any other cloud provider will understand.
- With terraform you can:
    - Manage any infrastructure
    - Track your infrastructure
    - Automate changes
    - Stadardize configurations
    - Collaborate

- Terraform lifecycle:
    1. write a terraform configuration file.
    2. Plan/dry run: see what is going to happen when you execute, that is the next step after writing terraform configuration file.
    3. Then the terraform Apply.


- Once terraform is installed, one needs to understand that terraform runs basically on these commands:
    - terraform init: Initializes terraform.
    - terraform plan: Dry Run
    - terraform apply
    - terraform destroy

- To write a terraform configuration, we first of all have a terraform block:
    - first a terraform block: terraform { ... }
        - inside the terraform block, we first have the required_providers block: required_providers { ... }
            - inside the required_providers { ... }, we have the cloud provider, in this case the aws. aws { ... } which contains the source and version.

- Terraform converts terraform configuration files into APIs that the cloud provider you are using (aws, azure etc.) will understand.
- apart from writing your terraform configuration in main.tf, you can also use the variable.tf to write out your variables and also output.tf to write any information that anyone other than you can have access to be able to run the terraform configuration without actually giving the person your cloud provider, basically giving him information of the resources that was created. (aws, azure, gcp etc.) secrets.
- after running the terraform apply, a terraform state file is being created, which is the file that terraform uses to track the infrastructure. Everything it creates, it writes it to this state file. terraform uses the state file to track changes made to the terraform configuration at any point in time.
- Never store the state file in your local machine, neither should you store it in your git repository, instead always store them in remote backend. Also, do not manipute the state file manually, that is on your local machine.
- Terraform files after written should be stored on github repository. Then the state file should be stored on amazon s3 bucket if you are using aws, if you are using azure, use the azure storage container, not on github.
- By storing the file in a central location, if anybody makes any changes running the terraform configuration, it will be automatically updated irrespective of the person running it, hence everyone utilizing the terraform configuration will be in sync, and thus, there won't be any issue.
- So a dynamo db will be attached to this central location, and what this dynamo db will do is that in the case where two devops engineer are trying to apply or make changes to the terraform configuration that will cause a change of in state of the terraform state file, it will lock the state file, allowing only changes from one person at a time.
- Remote backend are your remote storage services like the amazon s3 bucket or azure storage container or something.
- So the terraform configuration files goes to github or anyother version control, while the terraform state file goes to a remote backend/remote storage solution and integrate them with proper locking solution which could be dynamo db in either azure or aws. This locking will prevent parallel execution of terraform scripts. This is the way to configure terraform in ones' work flow. this is the ideal terraform setup in production.
- Some of the problems with terraform is that:
    - state file is the single source of truth.
    - manual changes to the cloud provider cannot be identified and auto-corrected.
    - not a gitops friendly tool. Don't play well with flux or argo cd.
    - can become very complex and difficult to manage.
    - trying to position as a configuration management tool as well.
- 