---
title: 'DevOps: Day 18'
tags: [DevOps]

---

# DevOps: Day 18

- to set up ansible, it is recommended to run it on a linux machine/instance.
- next, you will want to run `sudo apt update` before installing ansible with `sudo apt install ansible`.
- set up two different servers, and then configured passwordless connection between them using keypair (private and public) generated using `ssh-keygen`.
- after doing this, to access one on another it's just simply `ssh <private-ip-of-server>`.
- this passwordless authentication is also one of the requirements of ansible.
- download and install ansible and setup a passwordless authentication.
- ansible playbook is the name of ansible files. So simply put, ansible files are called ansible playbooks.
- ansible commands can be run directly from the terminal too, so not always will one have to write an ansible playbook. these commands that can run directly are called `ansible adhoc commands`.
- before running the ansible adhoc commands, make sure you have the inventory file in the same location you're running the ansible adhoc commands.
- this inventory file is simply just a file that you will put the ip address (private ip address) of all of your host computers that you are working with.
- in the same location where the inventory file is located, the first command I run is the `ansible -i inventory all -m "shell" -a "touch devopsclass"`
    - in the above command, -m stands for module, -a stands for argument.
- it is advisable to use the ansible adhoc commands when you want to run just a single command. While use the ansible playbook if you want to run a series of ansible commands.
- simply put, ansible adhoc commands for one or two tasks, while ansible playbook for multiple commands.
- in a situation where one has different servers for different things, let's say webservers and dbservers, then one can create a distiction between these two or more division of servers using the square bracket.
    ```vim
    [dbservers]
    172.31.62.28
    [webservers]
    172.31.62.111
    ```
    so for executing an ansible adhoc command for just the webservers, one just needs to make use of: `ansible -i inventory webservers -m "shell" -a "df"` as against using `all` in same command `ansible -i inventory all -m "shell" -a "df"`.
- Task: we want to install and restart nginx, hence since we are executing multiple tasks, we will need to write an ansible playbook. An ansible playbook is written in yaml/yml file.
    - in this yaml file, the first line should have three dash lines (---) which shows it is a yaml file. next comes the name: what the playbook does, then the hosts: all/grouped server(s), become: the user it is executing as e.g. root etc.
    - next, we start writing tasks. name: Install nginx, shell: apt install nginx or apt: name: nginx, state: present. Or shell: apt install nginx
- it is always advisable to go with the package manager installation in the ansible playbook whenever it is available.
- to execute an ansible playbook, we make use of the command: `ansible-playbook`, while for the ansible adhoc command, we make use of `ansible`.
- running ansible-playbook command with the `-vvv` enables debug mode making it verbose.
- one can create services using Ansible, but the idle tool for that is the `Terraform`. `Ansible` is more idle for configuration. Terraform is an IaC (Infrastructure as Code) tool. Thus, anything that has to do with creating infrastructure, the best tool for the job is `Terraform`.
- Ansible roles is efficient way of writing ansible playbooks that will only enable one's efficiency of writing complex playbooks. This solves the issue that involves writing many tasks (e.g. 50 - 60 tasks) in a single ansible playbook.
- to start using ansible roles:
    - `ansible-galaxy role init kubernetes`
    - a directory kubernetes will be created with a README.md file and the following sub-directories: templates, files, handlers, defaults, vars, meta, tests and tasks.
    - inside the tasks, we write all the tasks.
    - meta is used to write meta data information and also the licensing information.
    - var folder can be used to set variables.
    - tests folder is used to add tests, unit test
    - handlers is used to take care of exception.
    - files contains like certificate, index.html etc.