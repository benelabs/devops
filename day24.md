---
title: 'DevOps: Day 24'
tags: [DevOps]

---

# DevOps: Day 24

* GitHub Actions using Self-Hosted Runners

- Runner is a place where your job gets done. In jenkins, it's called an agent.
- GitHub Actions can either be run on Self Hosted Runners or GitHub Hosted Runners.
- For the GitHub hosted runners, you don't have any ownership of the runner.
- Self hosted runner is simply same as what we are doing with Jenkins.
    - There are certain reasons that makes self hosted runner the best option, and some of them are:
        - When the project you are working on is a private project.
        - When the runners provided by github are not good enough for your project. Probably because of dependencies and other things.
        - Another thing is security wise, prolly for banking application, using self-hosted in this case is the best and not github hosted runner.

- To setup the self hosted runner for github actions, I created an EC2 instance on aws, and then set both the inbound and outbound rules, adding http and https for ipv4.
- I setup and ran a self-hosted github runner and it wasn't as hard as I thought.
- In working with github actions, secrets and other sensitive information can be put in the repository settings in the Secrets and variables.
- To write a ci/cd yaml file for github actions, I use the .github/workflows/ directory, and wrote/created all the yaml files inside the workflow directory.