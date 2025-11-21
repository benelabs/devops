---
title: 'DevOps: Day 21'
tags: [DevOps]

---

# DevOps: Day 21

## CI/CD

- it is basically two steps: Continuous Integration and Continuous Delivery.
- Continuous Integration is a process where you integrate set of tools/processes before delivering your application to your customers.
- Continuous Delivery is the process where you deploy your application on a specific platform for your customers.
- These processes may include:
    - unit testing
    - static code analysis
    - code quality/vulnerability
    - automation
    - reports
    - deployment

- We can make use of jenkins for watching for changes in our git repository and it will act as ochestrator/pipe which will automate lots of tools e.g. for Java application, building can be done using Maven and junit for unit test, sonar for code quality, code testing, and ALM for reporting etc. So whenever code is committed to the repository, jenkin can trigger all of these.
- Jenkins is an orchestrator that will facilitate all these tools that is integrated in the Continuous Integration.
- Jenkins can also take care of deploying applications to multiple staging e.g. dev, stage and production environment.
- Jenkins is a binary that you install on one host e.g. your computer or an EC2 instance and then keep adding machines to it. So you install Jenkins on the master EC2 instance and keep connecting the rest of the EC2 instance on Jenkins.
- Compute is RAM, CPU and Hardware.
- One github action can be created and use for multiple teams or projects or repositories in an organization.
- Most open source projects makes use of github actions, which is also an alternative to jenkins, there are also others too that are used for CI/CD.
- By default github actions are event driven for CI/CD, but jenkins are not by default, but can be configured to listen and react to events.
- There is also gitlab actions which is very similar to github actions for CI/CD.