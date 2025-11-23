---
title: 'DevOps: Day 22'
tags: [DevOps]

---

# DevOps: Day 22

* Practical Implementation of Jenkins

- Setup an EC2 instance, downloaded and setup jenkins which is serving as the Jenkins Master.
- It is advisable to run the scheduling on the Jenkins Master. While other jenkins which are called workers should be attached to the jenkins master.
- So One single Master Node as the Jenkins Master, and several Worker Nodes that are attached/connected directly to the master node.
- Another modern setup one can use is using Jenkins Master with docker agents. More like runing Jenkins on docker container. This is great interms of cost and efficiency.
- To set up jenkins agent using the Pipeline method, one will have to use the Groovy scripting, which breaks things into stages and steps, a step will always belong to a stage, that is to say inside of a stage, you can have a step or multiple steps depending on how complicated the stage is.