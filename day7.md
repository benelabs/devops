---
title: 'DevOps: Day 7'
tags: [DevOps]

---

# DevOps: Day 7

- Shell scripting In Linux is the process of automating Your day to day activity On your Linux computer, whether your local linux os or cloud based linux.
- ls -ltr: files and directories created with information like when they were created (timestamp), groups, permissions etc.
- Surffix any Command with man e.g. (man ls) to open the manual for that command.
- Distros like Ubuntu symlink Dash to sh, hence executing sh leads to dash.
- The chmod command which is Being used to set permission for file. We have the: chmod <num> <num> <num> Which represents <owner/user> <group> <others> which could carry a value of 4 for read permission, 2 for write permission and 1 for execute permission. These numbers can be added to gain access to two or more permissions. (4 + 2 + 1) = 7 (read + write + execute) etc.
- history: shows the commands that were used/executed for a while.
- Difference between touch and vim is that both can create file, but vim can't be used in a shell script.
- wq!: to save and exit file While using vi/vim.
- x!: to save and exit file while using vi/vim.
- mkdir: make directory.
- pwd: print working directory.
- The purpose of shell scripting in devops
    
    
As a DevOps we:
    - maintain infrastructure of organizations.
    - maintain All code of organisation using git repository (sometimes they have to interact with git)
    - Configuration management (ansible). 
- nproc: is for CPU information & usage.
- free: is for RAM information &  usage.
- top: command used for Checking all processes currently running. Also instead of using nproc for CPU and free for RAM, we can make use of `top`for both CPU and RAM. 
- what is used to check the health of a node is the CPU and RAM.