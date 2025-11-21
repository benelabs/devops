---
title: 'DevOps: Day 17'
tags: [DevOps]

---

# DevOps: Day 17

Note on Configuration Management

- Configuration management is how the DevOps engineer manages the configuration of the server or infrastructure.
- Aims to solve the problem of managing the configuration of multiple servers.
- There are some popular tools in configuration management:
   - Puppet
   - Chef
   - Ansible: has the most number of users/DevOps Engineers. They found this much better than the other configuration management tools.
   - Salt
- Majority of people makes use of ansible. 
- Ansible is more of push model and uses the agentless architecture, while puppet is more of pull model and uses the slave architecture. Push model is simply writing. Ansible is agentless.
- Ansible is pretty easy both with windows and Linux.
- Ansible makes use of yaml file. It allows developers write it in the yaml manifest. Whereas with puppet you will need to learn a completely different language. 
- Some issues with ansible is they need to improve these: better support for windows, better debugging messages and improve performance.
- Ansible support modules. Hence one can write ansible modules for doing a particular task, which can then be reused. These modules can be shared on ansible galaxy.
- Ansible makes use of yaml. Ansible also supports python.
- Ansible supports both Linux and Windows. For Linux it uses: ssh while for windows it uses: win rm.
- We use yaml manifest to write the ansible playbook. 