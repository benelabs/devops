---
title: 'DevOps: Day 19'
tags: [DevOps]

---

# DevOps: Day 19

* Infrastructure as Code (IaC)
- most companies these days operates on hybrid cloud, that is to say using upto two or more cloud solutions (e.g. aws and azure etc. maybe use storage services on aws and use devops services on azure).
- to solve the problem of having to configure your infranstructure or platform for every single cloud provider, as each have their own setup, terraform comes in the picture.
- Terraform is API as code. It is a tool developed by Hashicorp, they help devops engineers that instead of learning over 100 of tools, one will just learn to learn one, and apply in several situations.
- API as Code (AaC) is a concept with which one can automate any cloud provider using api. So in this case, we just need to make use of terraform to make request to the desired cloud provider.
- API => Application Programming Interface. APIs are being used to programmatically talk to applications.
- so mostly we can talk to an application using the user interface or programatically using the programming interface.
- Terraform also uses the same concept of talking to these cloud providers programmatically. It actively access these apis on these cloud providers. You just need to write terraform files which will inturn take your input and convert it into api calls, which after it gets the results, it sends it back to you. This is the concept of terraform and how it makes of AaC (API as Code).
- 